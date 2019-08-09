Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B42D87980
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 14:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ma+x9cDymQ8Pt4hPpmJI4Ns+YckGFfPU80ySGF4PYSQ=; b=qg2Jj6j54ctTzN
	BZSkQ7nL8UwnH6xHogfWNsACOD2oWnXO5fycBF26/tP6TKEyOwwpz4X6f+VxhSJ8nloVZ/1PeM+Th
	uwiC9HUHrmVE8d2xfAH7IBqitUn04EG83SESmI3AAMwtrJ9FIY5nTSKoxpdpE4q15JnCQXCu4/F9U
	jA2s9QjvaVQOqMEf9Hi4206YaGF2tpnYGV+6GIRPZwe12M1dPdtBSKeeCmzsnEDdICexJ4TRtk5te
	PfP2J7PfTlpymXaLnuMyYp5C2ZnxWRypZe+6AasbBitXzvJjSXmGrhhEuta915Y5h1Gmi7Ct+1jiU
	3VwHv9acV8S8NRZ7copQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw3lY-0008W3-RQ; Fri, 09 Aug 2019 12:13:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw3lN-0008Vj-Vq
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 12:12:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B9D4A1596;
 Fri,  9 Aug 2019 05:12:52 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 EB6683F706; Fri,  9 Aug 2019 05:12:50 -0700 (PDT)
Subject: Re: [PATCH 05/19] irqchip/mmp: do not use of_address_to_resource() to
 get mux regs
To: Lubomir Rintel <lkundrak@v3.sk>, Olof Johansson <olof@lixom.net>
References: <20190809093158.7969-1-lkundrak@v3.sk>
 <20190809093158.7969-6-lkundrak@v3.sk>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <16d77ca3-7ad1-3af2-650e-722cf6a931ed@kernel.org>
Date: Fri, 9 Aug 2019 13:12:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190809093158.7969-6-lkundrak@v3.sk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_051254_072242_9D56C65D 
X-CRM114-Status: GOOD (  23.41  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/08/2019 10:31, Lubomir Rintel wrote:
> The "regs" property of the "mrvl,mmp2-mux-intc" devices are silly. They
> are offsets from intc's base, not addresses on the parent bus. At this
> point it probably can't be fixed.
> 
> On an OLPC XO-1.75 machine, the muxes are children of the intc, not the
> axi bus, and thus of_address_to_resource() won't work. We should treat
> the values as mere integers as opposed to bus addresses.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> Acked-by: Pavel Machek <pavel@ucw.cz>
> 
> ---
>  drivers/irqchip/irq-mmp.c | 20 +++++++++++---------
>  1 file changed, 11 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-mmp.c b/drivers/irqchip/irq-mmp.c
> index 14618dc0bd396..af9cba4a51c2e 100644
> --- a/drivers/irqchip/irq-mmp.c
> +++ b/drivers/irqchip/irq-mmp.c
> @@ -424,9 +424,9 @@ IRQCHIP_DECLARE(mmp2_intc, "mrvl,mmp2-intc", mmp2_of_init);
>  static int __init mmp2_mux_of_init(struct device_node *node,
>  				   struct device_node *parent)
>  {
> -	struct resource res;
>  	int i, ret, irq, j = 0;
>  	u32 nr_irqs, mfp_irq;
> +	u32 reg[4];
>  
>  	if (!parent)
>  		return -ENODEV;
> @@ -438,18 +438,20 @@ static int __init mmp2_mux_of_init(struct device_node *node,
>  		pr_err("Not found mrvl,intc-nr-irqs property\n");
>  		return -EINVAL;
>  	}
> -	ret = of_address_to_resource(node, 0, &res);
> +
> +	/*
> +	 * For historical reasonsm, the "regs" property of the
> +	 * mrvl,mmp2-mux-intc is not a regular * "regs" property containing
> +	 * addresses on the parent bus, but offsets from the intc's base.
> +	 * That is why we can't use of_address_to_resource() here.
> +	 */
> +	ret = of_property_read_u32_array(node, "reg", reg, ARRAY_SIZE(reg));

This will return 0 even if you've read less than your expected 4 u32s.
You may want to try of_property_read_variable_u32_array instead.

>  	if (ret < 0) {
>  		pr_err("Not found reg property\n");
>  		return -EINVAL;
>  	}
> -	icu_data[i].reg_status = mmp_icu_base + res.start;
> -	ret = of_address_to_resource(node, 1, &res);
> -	if (ret < 0) {
> -		pr_err("Not found reg property\n");
> -		return -EINVAL;
> -	}
> -	icu_data[i].reg_mask = mmp_icu_base + res.start;
> +	icu_data[i].reg_status = mmp_icu_base + reg[0];
> +	icu_data[i].reg_mask = mmp_icu_base + reg[2];
>  	icu_data[i].cascade_irq = irq_of_parse_and_map(node, 0);
>  	if (!icu_data[i].cascade_irq)
>  		return -EINVAL;
> 

Thanks,

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
