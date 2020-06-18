Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 579081FEE9D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 11:28:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Ac0IkU1+NtHrp/pF9+FJC3HWMkevkHCyf8HmCRLYrU=; b=XF0bDDU6cDb/0c
	3mmzRTLS7V4BrmAnWNUz3vmlxhIzxXCvQkX08tHO4Qt+WQLh5J9zEj9Ox7YKYS7vRu1hpm59Xc4xL
	0anFZq7GCiAe7o98uEI3ESvvp5bntfa4m0BcUEiYJE47ikG9bvsB33TYZrxhABO9Myvb4cZvE24MN
	8MUGZGu70UXscjbhLpgy4itpa2btzGij0T+l5p3kInzZPAJEF2oAS8TO0FGi+qihUXdNyf8jD54yh
	uhdDJBSwskFS248UB5M+xvbOMwY6zlh5TGD3dLb+4mXvhOjLhMkyrzhg9zM+krL3YcGvXcEvkzZFg
	z93pKoT2ltgKY9Z9P/fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlqqQ-0004nR-7J; Thu, 18 Jun 2020 09:28:26 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqqG-0004my-82; Thu, 18 Jun 2020 09:28:16 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id A822D307A66;
 Thu, 18 Jun 2020 11:28:14 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 96F692059AC5C; Thu, 18 Jun 2020 11:28:14 +0200 (CEST)
Date: Thu, 18 Jun 2020 11:28:14 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: fix a hyperv W^X violation and remove vmalloc_exec
Message-ID: <20200618092814.GG576905@hirez.programming.kicks-ass.net>
References: <20200618064307.32739-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618064307.32739-1-hch@lst.de>
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
Cc: linux-hyperv@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 x86@kernel.org, Dexuan Cui <decui@microsoft.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Jessica Yu <jeyu@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 08:43:04AM +0200, Christoph Hellwig wrote:
> Hi all,
> 
> Dexuan reported a W^X violation due to the fact that the hyper hypercall
> page due switching it to be allocated using vmalloc_exec.  The problem
> is that PAGE_KERNEL_EXEC as used by vmalloc_exec actually sets writable
> permissions in the pte.  This series fixes the issue by switching to the
> low-level __vmalloc_node_range interface that allows specifing more
> detailed permissions instead.  It then also open codes the other two
> callers and removes the somewhat confusing vmalloc_exec interface.

Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>

> Peter noted that the hyper hypercall page allocation also has another
> long standing issue in that it shouldn't use the full vmalloc but just
> the module space.  This issue is so far theoretical as the allocation is
> done early in the boot process.  I plan to fix it with another bigger
> series for 5.9.

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
