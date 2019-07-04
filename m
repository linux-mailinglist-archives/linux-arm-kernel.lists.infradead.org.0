Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C58A5F350
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 09:14:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFfwUVf9Yb+Q3AYe0xJ9dwFFBKPr4xr4583cJAUIjIw=; b=croBW0/DRzJyIM
	2A07CS5xgZBX/6uNFi6MNyDV2RKMDhSXoHbQZ3jk7I4i3vjc6kSjNuoWDJ9Yc9Gp/cD7naGoxZTJ8
	5ngG6QOyWFqcjvfShfhFM/CtsRWP4Pz5I5VFSJt13UeC72ztffyTWQvGE4tNwbqxP8KqMoIqUFs9S
	xFwL9Xjb+mObNId6nS7Ih6TS0OeTeR00gfHWsEJN8qpyFeLbhpBfzif+4+MmoIQsubqSZPGyKTYpb
	Z+jt4aYOsuHUyNvvbgOkOJ7Ov8fWqO2nS1vH/IseFgFWTSayG2T3Ytc4ZnO83aPM629/7sIfra8n9
	qgGbgKDId8wtgQHMS8Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hivwj-00015g-Vw; Thu, 04 Jul 2019 07:14:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hivwJ-00015L-Mg
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 07:13:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 419DE344;
 Thu,  4 Jul 2019 00:13:54 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B5063F703;
 Thu,  4 Jul 2019 00:15:46 -0700 (PDT)
Subject: Re: [PATCH] genirq: update irq stats from NMI handlers
To: Shijith Thotton <sthotton@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <1562214115-14022-1-git-send-email-sthotton@marvell.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <6adfb296-50f1-9efb-0840-cc8732b8ebf9@arm.com>
Date: Thu, 4 Jul 2019 08:13:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1562214115-14022-1-git-send-email-sthotton@marvell.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_001355_788254_357A10AA 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jan Glauber <jglauber@marvell.com>,
 Will Deacon <will.deacon@arm.com>, Robert Richter <rrichter@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shijith,

On 04/07/2019 05:22, Shijith Thotton wrote:
> The NMI handlers handle_percpu_devid_fasteoi_nmi() and
> handle_fasteoi_nmi() added by commit 2dcf1fbcad35 ("genirq: Provide NMI
> handlers") do not update the interrupt counts. Due to that the NMI
> interrupt count does not show up correctly in /proc/interrupts.
> 
> Update the functions to fix this. With this change, we can see stats of
> the perf NMI interrupts on arm64.
> 
> Fixes: 2dcf1fbcad35 ("genirq: Provide NMI handlers")
> 
> Signed-off-by: Shijith Thotton <sthotton@marvell.com>
> ---
>  kernel/irq/chip.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/kernel/irq/chip.c b/kernel/irq/chip.c
> index 29d6c7d070b4..88d1e054c6ea 100644
> --- a/kernel/irq/chip.c
> +++ b/kernel/irq/chip.c
> @@ -748,6 +748,8 @@ void handle_fasteoi_nmi(struct irq_desc *desc)
>  	unsigned int irq = irq_desc_get_irq(desc);
>  	irqreturn_t res;
>  
> +	kstat_incr_irqs_this_cpu(desc);
> +

This needs to be called with the desc lock taken, otherwise we're likely
to corrupt desc->tot_count.
But taking the desc lock is something we can't do in NMI context (
*spin_lock_irq*() won't prevent an NMI from happening).

>  	trace_irq_handler_entry(irq, action);
>  	/*
>  	 * NMIs cannot be shared, there is only one action.
> @@ -962,6 +964,8 @@ void handle_percpu_devid_fasteoi_nmi(struct irq_desc *desc)
>  	unsigned int irq = irq_desc_get_irq(desc);
>  	irqreturn_t res;
>  
> +	__kstat_incr_irqs_this_cpu(desc);
> +

Looking at handle_percpu_irq(), I think this might be acceptable. But
does it make sense to only have kstats for percpu NMIs?

Cheers,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
