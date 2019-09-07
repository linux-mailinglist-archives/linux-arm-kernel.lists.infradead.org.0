Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A563BAC530
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 09:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kVX72A38mbKIJ0hcPUdZr8WZDmfIpbvpDvEgrMv/kRk=; b=BR3SBlbeSRbeV2
	fVqiZN6HV5LLstv4u2DJfV6k/R/bFOc7wGiIn0rkl79g9eLFW665deGFVXZmRx22m5L1QwSl2y/Dl
	NW9w4HBcFgb9xPjptts0YNwKmiIf6HRZbfAYaOmGffJRuKN8W5v1kJq6CjdyDcR/qz3pys6owwEvW
	+HtS3eimhWUCzN+6DEjHes6WhTXdoF3opquYCbzS/5r6PJEVIzb2QHYjLYzPq8jzFm1onr5+q8CEk
	FhfINZaYpLkxt7gb7wkN4Bp967K0DCbiuOtSTbD+L1LnwCsI0Z8JUTzXwVGnZos/CK9rR0AM2aDrt
	gWzRWYK3qJGuce5FaAZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6VIV-00064d-9k; Sat, 07 Sep 2019 07:38:15 +0000
Received: from mo6-p03-ob.smtp.rzone.de ([2a01:238:20a:202:5303::8])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6VI5-00064J-9d
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 07:37:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1567841867;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=imBjKFWPpnQiffBQgBcoYSj19gYJyxmbsr48fIp/sx0=;
 b=IquUcmh3dyQLPkXyzxusvTPVEgGQwAKcvkyO6y4BF8MHxwf/hKw/EfoxjKk7b4duPb
 9dVqjshFYztU1t66alWAHEjJAwcxPGt7+LrDKguTvQ72M5ebGKNqXib4iq1Y7TzG+fTn
 MJbIl8IJsa4oSxqb5fyHHzWpwUeoOaOFOx4fQXiWL/FGOdJ68+HFiBl+SIEnVNGBSIsP
 vEW4p9QhCaGb5d3CL6cDQApyMb9JQf2POkT8dBzpwRaK7RWqGMmQNP67j0XQP7o4n/1L
 21cZAWFOmz7gU5uBWUBhMm01sZQgJL1c9Mt59Wr26hy5ArweGiBZTUNXLa1lq13gGtlw
 30xw==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj5Qpw97WFDVCaXAwLbA=="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 44.27.0 DYNA|AUTH)
 with ESMTPSA id u036f9v877bZqbZ
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Sat, 7 Sep 2019 09:37:35 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH 1/4] cpufreq: ti-cpufreq: add support for omap34xx and
 omap36xx
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <0eb7129f6148faac0150d6299ac97347484c7125.1567839375.git.hns@goldelico.com>
Date: Sat, 7 Sep 2019 09:37:35 +0200
Message-Id: <F12B47AA-DED2-4BD9-B144-2463A2AE6094@goldelico.com>
References: <cover.1567839375.git.hns@goldelico.com>
 <0eb7129f6148faac0150d6299ac97347484c7125.1567839375.git.hns@goldelico.com>
To: =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
 Adam Ford <aford173@gmail.com>,
 =?utf-8?Q?Andr=C3=A9_Roth?= <neolynx@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Enric Balletbo i Serra <eballetbo@gmail.com>,
 Javier Martinez Canillas <javier@dowhile0.org>,
 Roger Quadros <rogerq@ti.com>, Teresa Remmet <t.remmet@phytec.de>,
 Nikolaus Schaller <hns@goldelico.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_003749_932051_06727BED 
X-CRM114-Status: GOOD (  25.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5303:0:0:8 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-OMAP <linux-omap@vger.kernel.org>, linux-pm@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 kernel@pyra-handheld.com,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Am 07.09.2019 um 08:56 schrieb H. Nikolaus Schaller <hns@goldelico.com>:
> 
> This adds code and tables to read the silicon revision and
> eFuse (speed binned / 720 MHz grade) bits for selecting
> opp-v2 table entries.
> 
> Since these bits are not always part of the syscon register
> range (like for am33xx, am43, dra7), we add code to directly
> read the register values using ioremap() if syscon access fails.
> 
> The format of the opp-supported-hw entries is that it has
> two 32 bit bitfields. E.g.:
> 
> 	opp-supported-hw = <0xffffffff 3>
> 
> The first value is matched against the bit position of the
> silicon revision which is (see TRM)
> 
> omap34xx:
> BIT(0)	ES1.0
> BIT(1)	ES2.0
> BIT(2)	ES2.1
> BIT(3)	ES3.0
> BIT(4)	ES3.1
> BIT(7)	ES3.1.2
> 
> omap36xx:
> BIT(0)	ES1.0
> BIT(1)	ES1.1
> BIT(2)	ES1.2
> 
> The second value is matched against the speed grade eFuse:
> 
> BIT(0)	no high speed OPP
> BIT(1)	high speed OPP
> 
> This means for the example above that it is always enabled
> while e.g.
> 
> 	opp-supported-hw = <0x1 2>
> 
> enables the OPP only for ES1.0 BIT(0) and if the high speed
> eFuse is set BIT(1).
> 
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> ---
> drivers/cpufreq/ti-cpufreq.c | 91 +++++++++++++++++++++++++++++++++++-
> 1 file changed, 89 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/cpufreq/ti-cpufreq.c b/drivers/cpufreq/ti-cpufreq.c
> index 2ad1ae17932d..f2f58d689320 100644
> --- a/drivers/cpufreq/ti-cpufreq.c
> +++ b/drivers/cpufreq/ti-cpufreq.c
> @@ -31,6 +31,11 @@
> #define DRA7_EFUSE_OD_MPU_OPP			BIT(1)
> #define DRA7_EFUSE_HIGH_MPU_OPP			BIT(2)
> 
> +#define OMAP3_CONTROL_DEVICE_STATUS		0x4800244C
> +#define OMAP3_CONTROL_IDCODE			0x4830A204
> +#define OMAP34xx_ProdID_SKUID			0x4830A20C
> +#define OMAP3_SYSCON_BASE	(0x48000000 + 0x2000 + 0x270)
> +
> #define VERSION_COUNT				2
> 
> struct ti_cpufreq_data;
> @@ -84,6 +89,13 @@ static unsigned long dra7_efuse_xlate(struct ti_cpufreq_data *opp_data,
> 	return calculated_efuse;
> }
> 
> +static unsigned long omap3_efuse_xlate(struct ti_cpufreq_data *opp_data,
> +				      unsigned long efuse)
> +{
> +	/* OPP enable bit ("Speed Binned") */
> +	return BIT(efuse);
> +}
> +
> static struct ti_cpufreq_soc_data am3x_soc_data = {
> 	.efuse_xlate = amx3_efuse_xlate,
> 	.efuse_fallback = AM33XX_800M_ARM_MPU_MAX_FREQ,
> @@ -111,6 +123,56 @@ static struct ti_cpufreq_soc_data dra7_soc_data = {
> 	.multi_regulator = true,
> };
> 
> +/*
> + * OMAP35x TRM (SPRUF98K):
> + *  CONTROL_IDCODE (0x4830 A204) describes Silicon revisions.
> + *  Control OMAP Status Register 15:0 (Address 0x4800 244C)
> + *    to separate between omap3503, omap3515, omap3525, omap3530
> + *    and feature presence.
> + *    There are encodings for versions limited to 400/266MHz
> + *    but we ignore.
> + *    Not clear if this also holds for omap34xx.
> + *  some eFuse values e.g. CONTROL_FUSE_OPP1_VDD1
> + *    are stored in the SYSCON register range
> + *  Register 0x4830A20C [ProdID.SKUID] [0:3]
> + *    0x0 for normal 600/430MHz device.
> + *    0x8 for 720/520MHz device.
> + *    Not clear what omap34xx value is.
> + */
> +
> +static struct ti_cpufreq_soc_data omap34xx_soc_data = {
> +	.efuse_xlate = omap3_efuse_xlate,
> +	.efuse_offset = OMAP34xx_ProdID_SKUID - OMAP3_SYSCON_BASE,
> +	.efuse_shift = 3,
> +	.efuse_mask = BIT(3),
> +	.rev_offset = OMAP3_CONTROL_IDCODE - OMAP3_SYSCON_BASE,
> +	.multi_regulator = false,
> +};
> +
> +/*
> + * AM/DM37x TRM (SPRUGN4M)
> + *  CONTROL_IDCODE (0x4830 A204) describes Silicon revisions.
> + *  Control Device Status Register 15:0 (Address 0x4800 244C)
> + *    to separate between am3703, am3715, dm3725, dm3730
> + *    and feature presence.
> + *   Speed Binned = Bit 9
> + *     0 800/600 MHz
> + *     1 1000/800 MHz
> + *  some eFuse values e.g. CONTROL_FUSE_OPP 1G_VDD1
> + *    are stored in the SYSCON register range.
> + *  There is no 0x4830A20C [ProdID.SKUID] register (exists but
> + *    seems to always read as 0).
> + */
> +
> +static struct ti_cpufreq_soc_data omap36xx_soc_data = {
> +	.efuse_xlate = omap3_efuse_xlate,
> +	.efuse_offset = OMAP3_CONTROL_DEVICE_STATUS - OMAP3_SYSCON_BASE,
> +	.efuse_shift = 9,
> +	.efuse_mask = BIT(9),
> +	.rev_offset = OMAP3_CONTROL_IDCODE - OMAP3_SYSCON_BASE,
> +	.multi_regulator = false,
> +};
> +
> /**
>  * ti_cpufreq_get_efuse() - Parse and return efuse value present on SoC
>  * @opp_data: pointer to ti_cpufreq_data context
> @@ -127,7 +189,17 @@ static int ti_cpufreq_get_efuse(struct ti_cpufreq_data *opp_data,
> 
> 	ret = regmap_read(opp_data->syscon, opp_data->soc_data->efuse_offset,
> 			  &efuse);
> -	if (ret) {
> +	if (ret == -EIO) {
> +		/* not a syscon register! */
> +		void __iomem *regs = ioremap(OMAP3_SYSCON_BASE +
> +				opp_data->soc_data->efuse_offset, 4);
> +
> +		if (!regs)
> +			return -ENOMEM;
> +		efuse = readl(regs);
> +		iounmap(regs);
> +		}
> +	else if (ret) {
> 		dev_err(dev,
> 			"Failed to read the efuse value from syscon: %d\n",
> 			ret);
> @@ -158,7 +230,17 @@ static int ti_cpufreq_get_rev(struct ti_cpufreq_data *opp_data,
> 
> 	ret = regmap_read(opp_data->syscon, opp_data->soc_data->rev_offset,
> 			  &revision);
> -	if (ret) {
> +	if (ret == -EIO) {
> +		/* not a syscon register! */
> +		void __iomem *regs = ioremap(OMAP3_SYSCON_BASE +
> +				opp_data->soc_data->rev_offset, 4);
> +
> +		if (!regs)
> +			return -ENOMEM;
> +		revision = readl(regs);
> +		iounmap(regs);
> +		}
> +	else if (ret) {
> 		dev_err(dev,
> 			"Failed to read the revision number from syscon: %d\n",
> 			ret);
> @@ -190,6 +272,11 @@ static const struct of_device_id ti_cpufreq_of_match[] = {
> 	{ .compatible = "ti,am33xx", .data = &am3x_soc_data, },
> 	{ .compatible = "ti,am43", .data = &am4x_soc_data, },
> 	{ .compatible = "ti,dra7", .data = &dra7_soc_data },
> +	{ .compatible = "ti,omap34xx", .data = &omap34xx_soc_data, },
> +	{ .compatible = "ti,omap36xx", .data = &omap36xx_soc_data, },
> +	/* legacy */
> +	{ .compatible = "ti,omap3430", .data = &omap34xx_soc_data, },
> +	{ .compatible = "ti,omap3630", .data = &omap36xx_soc_data, },

Well, I just realized that with the latest DTS changes,

ti,omap34xx and ti,omap36xx are legacy and
ti,omap3430 and ti,omap3630 are now official.

> 	{},
> };
> 
> -- 
> 2.19.1
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
