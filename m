Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 035B91A7C0C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:14:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/roRXVnJCs8kKentNfF6m1eIqFLlSLrwiHqfZO8Y5a0=; b=RIh1xODWyMIVB5
	L3hU2T17OhFJapTWlFtYupH7iG/53oXMZaREOo5x3dvwcoetNRtXhA92pk19xJwVT9FH7Vd6d8fe1
	xqFgyZ1bOstD547ebXB83ePXBtuNKIpjlm5Rq9wTdmiUxyWtpBMNnVkTFc8Uc/ynKou57tZbnAfPM
	E0q0BZbu56pJvn7NyleWgZuhEwDmr060aG7haDu3e7zdEqpL9ZY26Qh6Famitq6R5OyEdFSDCsT5l
	ZlWkwmyPvVWh4f28byP5g2PoLwXc9w3NtWxVmVuNzFtq4jlmdsobpC4ResuzpogJs5eDaVb+y2Gcc
	Ok2yVXIOMQmWQUkx0+Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLO9-0006Fp-2a; Tue, 14 Apr 2020 13:14:05 +0000
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLNu-0006Fe-Le; Tue, 14 Apr 2020 13:13:54 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 x86@kernel.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Minchan Kim <minchan@kernel.org>, Nitin Gupta <ngupta@vflare.org>
Subject: decruft the vmalloc API v2
Date: Tue, 14 Apr 2020 15:13:19 +0200
Message-Id: <20200414131348.444715-1-hch@lst.de>
X-Mailer: git-send-email 2.25.1
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linux-arch@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-s390@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, bpf@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Peter noticed that with some dumb luck you can toast the kernel address
space with exported vmalloc symbols.

I used this as an opportunity to decruft the vmalloc.c API and make it
much more systematic.  This also removes any chance to create vmalloc
mappings outside the designated areas or using executable permissions
from modules.  Besides that it removes more than 300 lines of code.

A git tree is also available here:

    git://git.infradead.org/users/hch/misc.git sanitize-vmalloc-api.2

Gitweb:

    http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/sanitize-vmalloc-api.2

Changes since v1:
 - implement pgprot_nx for arm64 (Mark Rutland)
 - fix a patch description
 - properly pass pgprot to vmap in ion
 - add a new patch to fix vmap() API misuse
 - fix a vmap argument in x86
 - two more vmalloc cleanups
 - cleanup use of the unmap_kernel_range API
 - rename ioremap_pbh to ioremap_phb

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
