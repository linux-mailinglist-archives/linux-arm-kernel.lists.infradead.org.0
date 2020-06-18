Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 501991FEBAD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 08:43:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dtMEi7L9IDDqOQy5ViZa9rDyBid3KkXW75fQvdPszIQ=; b=RK+WdcjwYFfhJZ
	nmsG1mQIRDHPbvSimFkAkTHKLLn8uzmQ1TwseMWG4x+HG2dDhulYUlK/4kgdIl3Ttj2d/hesLlnYh
	5drpUhAtzFea8SkMNQrMt7Qz0duUTCZ9/JkxfX0pKJ0whXhoSAZSEfL8lFB8dG0X4tX1DIt+KiT73
	ge6aggYs9/F0LqHpDH3ahBe9tZiCzDeFwIC3MRossZMrIzjFdopZx+hrvlq3Ig/JjaQwmyZJPOiSA
	tad3OOAj1kDfWOmIYcZ3utnetN4Ei5oYB6Pep8GbrHTlX37ubTaRfBT/0zg9rP8o3aP8Rh47jgOzt
	QySy4jhP+UXMpIdUXxEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jloH2-00083J-GH; Thu, 18 Jun 2020 06:43:44 +0000
Received: from 195-192-102-148.dyn.cablelink.at ([195.192.102.148]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jloGU-0007vK-Cb; Thu, 18 Jun 2020 06:43:10 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: fix a hyperv W^X violation and remove vmalloc_exec
Date: Thu, 18 Jun 2020 08:43:04 +0200
Message-Id: <20200618064307.32739-1-hch@lst.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-hyperv@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 Dexuan Cui <decui@microsoft.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Jessica Yu <jeyu@kernel.org>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Dexuan reported a W^X violation due to the fact that the hyper hypercall
page due switching it to be allocated using vmalloc_exec.  The problem
is that PAGE_KERNEL_EXEC as used by vmalloc_exec actually sets writable
permissions in the pte.  This series fixes the issue by switching to the
low-level __vmalloc_node_range interface that allows specifing more
detailed permissions instead.  It then also open codes the other two
callers and removes the somewhat confusing vmalloc_exec interface.

Peter noted that the hyper hypercall page allocation also has another
long standing issue in that it shouldn't use the full vmalloc but just
the module space.  This issue is so far theoretical as the allocation is
done early in the boot process.  I plan to fix it with another bigger
series for 5.9.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
