Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF176F6D5E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 04:37:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0+DiQvo1ZqRD60LBnHPlJ6E2KyulU+qkW91h69yWZQ=; b=TSfDl6iT3dnVDv
	SL5N+oFUZsWm7C85ziHqSRAbA5BXlPO+f6QU3w5lmWcSUMYvI+pXcc5A9CdWXN9pT5lx14yuwMgqD
	wWkpHTyRsmWvUMgn5r5hme3dd8U75AdMpxlU6R503tNMUAx/RVrLeou23TFxGNbYhXOUDqRdOZZUo
	/tJghP9JvP4ienwiBP/NKBJvN3xzS6WyKgX+M1z7fKiIwyWqAZXkZ01XU/yXyt9gu8b/w5eKV7UQB
	EhepjWFJV1lcIlb7AfKHKD3ECuqOEQjFtLCNsC1hYvOJQuDRinNmgSwn7qe4q8AQgE1+1FfRKWLzN
	wYtSn5tyasrG4WZkCTww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU0Vk-0007um-Dm; Mon, 11 Nov 2019 03:37:04 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU0Vb-0007uK-H3
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 03:36:57 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAB3abTv129761;
 Sun, 10 Nov 2019 21:36:37 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573443397;
 bh=NGl+cjCsJiM7+yT+llqpQfLL+t0dbhH4tKRXyQlZxFw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=eRv4wHEjc1UMBodvQhvEME/+xNSPrDEWxqUQk+Bx3eHbzo5anuwt9WKRN1TQ8ibgN
 dzR9rhp5ePYMHT1zSfPrAE0RY10ZAsCps22mcIlPlkOptnQY7Y1FYnCPz3io3PVV83
 B6XEc7zL0ArYYiQU0v6CuqNPPIEKMoXCIj7rXx6U=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAB3aaYP114012
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 10 Nov 2019 21:36:36 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Sun, 10
 Nov 2019 21:36:19 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Sun, 10 Nov 2019 21:36:19 -0600
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAB3aXhA043092;
 Sun, 10 Nov 2019 21:36:33 -0600
Subject: Re: [PATCH] irqchip/ti-sci-inta: Use ERR_CAST inlined function
 instead of ERR_PTR(PTR_ERR(...))
To: Markus Elfring <Markus.Elfring@web.de>,
 <linux-arm-kernel@lists.infradead.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Nishanth Menon <nm@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Thomas Gleixner <tglx@linutronix.de>
References: <776b7135-26af-df7d-c3a9-4339f7bf1f15@web.de>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <670cd9a2-2083-bb5e-7bfc-58d5c90ec756@ti.com>
Date: Mon, 11 Nov 2019 09:05:39 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <776b7135-26af-df7d-c3a9-4339f7bf1f15@web.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_193655_694979_3CA8D44C 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/11/19 5:00 PM, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Tue, 5 Nov 2019 12:19:39 +0100
> 
> A coccicheck run provided information like the following.
> 
> drivers/irqchip/irq-ti-sci-inta.c:250:9-16: WARNING: ERR_CAST can be used
> with vint_desc.
> 
> Generated by: scripts/coccinelle/api/err_cast.cocci
> 
> Thus adjust the exception handling in one if branch.
> 
> Fixes: 9f1463b86c13277d0bd88d5ee359577ef40f4da7 ("irqchip/ti-sci-inta: Add support for Interrupt Aggregator driver")

Fixes: 9f1463b86c13 ("irqchip/ti-sci-inta: Add support for Interrupt Aggregator
driver")

With this:

Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>

Thanks and regards,
Lokesh


> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> ---
>  drivers/irqchip/irq-ti-sci-inta.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-ti-sci-inta.c b/drivers/irqchip/irq-ti-sci-inta.c
> index ef4d625d2d80..8f6e6b08eadf 100644
> --- a/drivers/irqchip/irq-ti-sci-inta.c
> +++ b/drivers/irqchip/irq-ti-sci-inta.c
> @@ -246,8 +246,8 @@ static struct ti_sci_inta_event_desc *ti_sci_inta_alloc_irq(struct irq_domain *d
>  	/* No free bits available. Allocate a new vint */
>  	vint_desc = ti_sci_inta_alloc_parent_irq(domain);
>  	if (IS_ERR(vint_desc)) {
> -		mutex_unlock(&inta->vint_mutex);
> -		return ERR_PTR(PTR_ERR(vint_desc));
> +		event_desc = ERR_CAST(vint_desc);
> +		goto unlock;
>  	}
> 
>  	free_bit = find_first_zero_bit(vint_desc->event_map,
> @@ -259,6 +259,7 @@ static struct ti_sci_inta_event_desc *ti_sci_inta_alloc_irq(struct irq_domain *d
>  	if (IS_ERR(event_desc))
>  		clear_bit(free_bit, vint_desc->event_map);
> 
> +unlock:
>  	mutex_unlock(&inta->vint_mutex);
>  	return event_desc;
>  }
> --
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
