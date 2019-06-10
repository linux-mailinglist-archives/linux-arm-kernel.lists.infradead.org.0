Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8AC3B5EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4tWWEQQteGFaD9CE4/wvB26p42Veknv/yYT7bnfk4A=; b=jKhhwM7BQa1F8J
	ts9GAkQLMeZaLiEi/UQT0sRrBl7gKcCSA8Ne02YNFzwIAjngfEKxUafBPpZfDTN8ujLSMdN5m8OsO
	nOjK81tLj8eCoSayy3/ezUQktiV+mSYkBTZM/MSLC0URnDJwvvjAebk/mGt6tgCtbbEep7kJmfjDu
	Amn5w+d95x7VRAXwLAnodHo2uw84RnfaQCujc5o7+jHQJ7Bdjai9bRS4Z9v1knvyTA8Ca82PaFMlX
	ll89faz1FevHL8ZvSAbN1bgm0MhQfMZPdMjzlXYS4lotK+PUDXNqt7flGY8J7M3h2ifWhdwAzQbjx
	1ExQQXpH/vHFWJfy7ECg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haKHj-0002Yy-TL; Mon, 10 Jun 2019 13:24:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haKHY-0002YV-IT
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 13:24:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0CBFB344;
 Mon, 10 Jun 2019 06:24:16 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 1A9243F557; Mon, 10 Jun 2019 06:24:12 -0700 (PDT)
Subject: Re: [RFC 1/2] irqchip: irq-imx-gpcv2: Add workaround for i.MX8MQ
 ERR11171
To: Abel Vesa <abelvesa@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Lucas Stach <l.stach@pengutronix.de>, Bai Ping <ping.bai@nxp.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
 <20190610121346.15779-2-abel.vesa@nxp.com>
From: Marc Zyngier <marc.zyngier@arm.com>
Openpgp: preference=signencrypt
Autocrypt: addr=marc.zyngier@arm.com; prefer-encrypt=mutual; keydata=
 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
 Z46HaNmN2hZS/oJ69c1DI5Rcww==
Organization: ARM Ltd
Message-ID: <7d8a537d-7883-196a-bcb3-7ee36117074a@arm.com>
Date: Mon, 10 Jun 2019 14:24:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610121346.15779-2-abel.vesa@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_062416_703644_DD947EE3 
X-CRM114-Status: GOOD (  33.77  )
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
Cc: devicetree@vger.kernel.org, Carlo Caione <ccaione@baylibre.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Abel,

On 10/06/2019 13:13, Abel Vesa wrote:
> i.MX8MQ is missing the wake_request signals from GIC to GPCv2. This indirectly
> breaks cpuidle support due to inability to wake target cores on IPIs.
> 
> Here is the link to the errata (see e11171):
> 
> https://www.nxp.com/docs/en/errata/IMX8MDQLQ_0N14W.pdf
> 
> Now, in order to fix this, we can trigger IRQ 32 (hwirq 0) to all the cores by
> setting 12th bit in IOMUX_GPR1 register. In order to control the target cores
> only, that is, not waking up all the cores every time, we can unmask/mask the
> IRQ 32 in the first GPC IMR register. So basically we can leave the IOMUX_GPR1
> 12th bit always set and just play with the masking and unmasking the IRO 32 for
> each independent core.
> 
> Since EL3 is the one that deals with powering down/up the cores, and since the
> cores wake up in EL3, EL3 should be the one to control the IMRs in this case.
> This implies we need to get into EL3 on every IPI to do the unmasking, leaving
> the masking to be done on the power-up sequence by the core itself.
> 
> In order to be able to get into EL3 on each IPI, we 'hijack' the registered smp
> cross call handler, in this case the gic_raise_softirq which is registered by
> the irq-gic-v3 driver and register our own handler instead. This new handler is
> basically a wrapper over the hijacked handler plus the call into EL3.
> 
> To get into EL3, we use a custom vendor SIP id added just for this purpose.
> 
> All of this is conditional for i.MX8MQ only.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>  drivers/irqchip/irq-imx-gpcv2.c | 42 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/drivers/irqchip/irq-imx-gpcv2.c b/drivers/irqchip/irq-imx-gpcv2.c
> index 66501ea..b921105 100644
> --- a/drivers/irqchip/irq-imx-gpcv2.c
> +++ b/drivers/irqchip/irq-imx-gpcv2.c
> @@ -6,11 +6,19 @@
>   * published by the Free Software Foundation.
>   */
>  
> +#include <linux/arm-smccc.h>
> +#include <linux/mfd/syscon/imx6q-iomuxc-gpr.h>
> +#include <linux/mfd/syscon.h>
>  #include <linux/of_address.h>
>  #include <linux/of_irq.h>
> +#include <linux/regmap.h>
>  #include <linux/slab.h>
>  #include <linux/irqchip.h>
>  #include <linux/syscore_ops.h>
> +#include <linux/smp.h>
> +
> +#define IMX_SIP_GPC		0xC2000004
> +#define IMX_SIP_GPC_CORE_WAKE	0x00
>  
>  #define IMR_NUM			4
>  #define GPC_MAX_IRQS            (IMR_NUM * 32)
> @@ -73,6 +81,37 @@ static struct syscore_ops imx_gpcv2_syscore_ops = {
>  	.resume		= gpcv2_wakeup_source_restore,
>  };
>  
> +static void (*__gic_v3_smp_cross_call)(const struct cpumask *, unsigned int);
> +
> +static void imx_gpcv2_raise_softirq(const struct cpumask *mask,
> +					  unsigned int irq)
> +{
> +	struct arm_smccc_res res;
> +
> +	/* call the hijacked smp cross call handler */
> +	__gic_v3_smp_cross_call(mask, irq);

I'm feeling a bit sick... :-(

> +
> +	/* now call into EL3 and take care of the wakeup */
> +	arm_smccc_smc(IMX_SIP_GPC, IMX_SIP_GPC_CORE_WAKE,
> +			*cpumask_bits(mask), 0, 0, 0, 0, 0, &res);

There is a number of things that look wrong here:

- What guarantees that this SMC call actually exists? The DT itself just
says that this is broken, and not much about EL3.

- What guarantees that the cpumask matches the physical layout? I could
have booted via kexec, and logical CPU0 is now physical CPU3.

- What if you have more than 64 CPUs? Probably not a big deal for this
particular instance, but I fully expect people to get it wrong again on
the next iteration if we "fix" it for them.

- How does it work on a 32bit kernel, when firmware advertises a SMC64 call?

And also:

- IMX_SIP_GMC doesn't strike me as a very distinctive name. It certainly
doesn't say *which* SiP is responsible for this wonderful thing. I
understand that they would like to stay anonymous, but still...

- It isn't clear what you gain from relying on the kernel to send the
SGI, while you could do the whole thing at EL3.

> +}
> +
> +static void imx_gpcv2_wake_request_fixup(void)
> +{
> +	struct regmap *iomux_gpr;
> +
> +	/* hijack the already registered smp cross call handler */
> +	__gic_v3_smp_cross_call = __smp_cross_call;
> +
> +	/* register our workaround handler for smp cross call */
> +	set_smp_cross_call(imx_gpcv2_raise_softirq);
> +
> +	iomux_gpr = syscon_regmap_lookup_by_compatible("fsl,imx6q-iomuxc-gpr");
> +	if (!IS_ERR(iomux_gpr))
> +		regmap_update_bits(iomux_gpr, IOMUXC_GPR1, IMX6Q_GPR1_GINT,
> +					IMX6Q_GPR1_GINT);
> +}
> +
>  static int imx_gpcv2_irq_set_wake(struct irq_data *d, unsigned int on)
>  {
>  	struct gpcv2_irqchip_data *cd = d->chip_data;
> @@ -269,6 +308,9 @@ static int __init imx_gpcv2_irqchip_init(struct device_node *node,
>  		cd->wakeup_sources[i] = ~0;
>  	}
>  
> +	if (of_property_read_bool(node, "broken-wake-request-signals"))
> +		imx_gpcv2_wake_request_fixup();
> +
>  	/* Let CORE0 as the default CPU to wake up by GPC */
>  	cd->cpu2wakeup = GPC_IMR1_CORE0;
>  
> 

Overall, I find this horrible, and pretty pointless:

- Supporting this in mainline is likely to be a loosing battle (let's
get real here, nobody will get the updated firmware)

- It doesn't solve some other problems such as the lack of LPI and PPI
wakeup, as it was outlined in the previous iteration of such workaround.

Given this, I'm drawing the same conclusion as last time: this isn't fit
for mainline. The real mainline fix is to prevent the use of cpuidle.
This workaround is best kept in a vendor-specific tree.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
