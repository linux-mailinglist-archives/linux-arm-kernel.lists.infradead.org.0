Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 699F224D2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:49:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8rd/J9GRu5YR3DvSED+ZR5eDlEruHsS2C0Ut99KJrRE=; b=Ev9o0jnlW/x3Vc
	dV6BAsGG+FK5mlHCiz+icfPTUx8vI5wigF0Bkw1GRpQzzl560kNkR5EoT1iGVy5GCuFl90kCFLveA
	kCkb47zbM/BuAVNJPUhuEFMdCab144ousfYYgX3iFUBPwDUodFUIApslkIRa0PPWcbVZ8XCWY3XY/
	1z1HsfMaw0/6j+GySKV4Q8Z6DSkl75EXT6YrKyOCMSKaVT3JgHg+AlO9QBkT9nDYs2t/5J/kMDGRz
	vWLzmxTU9oQMD0ubN1WKZPud9tDJIeFLM4vvQPX7qPZd3oVLI4SE+5f+Q1dMf1aTN6XMeMa3s8LGD
	wqpgLoMMtZsmfFcPLCZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2Ko-00073q-41; Tue, 21 May 2019 10:49:30 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2Kf-00073M-Si
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:49:24 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 30C70C0005;
 Tue, 21 May 2019 10:49:06 +0000 (UTC)
Date: Tue, 21 May 2019 12:49:06 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH v4 2/4] clk: at91: sckc: add support to specify registers
 bit offsets
Message-ID: <20190521104906.GF3274@piout.net>
References: <1558433454-27971-1-git-send-email-claudiu.beznea@microchip.com>
 <1558433454-27971-3-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558433454-27971-3-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_034922_232561_DA76F702 
X-CRM114-Status: GOOD (  20.10  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/05/2019 10:11:26+0000, Claudiu.Beznea@microchip.com wrote:
> From: Claudiu Beznea <claudiu.beznea@microchip.com>
> 
> Different IPs uses different bit offsets in registers for the same
> functionality, thus adapt the driver to support this.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  drivers/clk/at91/sckc.c | 93 ++++++++++++++++++++++++++++++++-----------------
>  1 file changed, 61 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
> index 6c55a7a86f79..ab18b1da269f 100644
> --- a/drivers/clk/at91/sckc.c
> +++ b/drivers/clk/at91/sckc.c
> @@ -23,14 +23,18 @@
>  				 SLOW_CLOCK_FREQ)
>  
>  #define	AT91_SCKC_CR			0x00
> -#define		AT91_SCKC_RCEN		(1 << 0)
> -#define		AT91_SCKC_OSC32EN	(1 << 1)
> -#define		AT91_SCKC_OSC32BYP	(1 << 2)
> -#define		AT91_SCKC_OSCSEL	(1 << 3)
> +
> +struct clk_slow_bits {
> +	u32 cr_rcen;
> +	u32 cr_osc32en;
> +	u32 cr_osc32byp;
> +	u32 cr_oscsel;
> +};
>  
>  struct clk_slow_osc {
>  	struct clk_hw hw;
>  	void __iomem *sckcr;
> +	const struct clk_slow_bits *bits;
>  	unsigned long startup_usec;
>  };
>  
> @@ -39,6 +43,7 @@ struct clk_slow_osc {
>  struct clk_sama5d4_slow_osc {
>  	struct clk_hw hw;
>  	void __iomem *sckcr;
> +	const struct clk_slow_bits *bits;
>  	unsigned long startup_usec;
>  	bool prepared;
>  };
> @@ -48,6 +53,7 @@ struct clk_sama5d4_slow_osc {
>  struct clk_slow_rc_osc {
>  	struct clk_hw hw;
>  	void __iomem *sckcr;
> +	const struct clk_slow_bits *bits;
>  	unsigned long frequency;
>  	unsigned long accuracy;
>  	unsigned long startup_usec;
> @@ -58,6 +64,7 @@ struct clk_slow_rc_osc {
>  struct clk_sam9x5_slow {
>  	struct clk_hw hw;
>  	void __iomem *sckcr;
> +	const struct clk_slow_bits *bits;
>  	u8 parent;
>  };
>  
> @@ -69,10 +76,10 @@ static int clk_slow_osc_prepare(struct clk_hw *hw)
>  	void __iomem *sckcr = osc->sckcr;
>  	u32 tmp = readl(sckcr);
>  
> -	if (tmp & (AT91_SCKC_OSC32BYP | AT91_SCKC_OSC32EN))
> +	if (tmp & (osc->bits->cr_osc32byp | osc->bits->cr_osc32en))
>  		return 0;
>  
> -	writel(tmp | AT91_SCKC_OSC32EN, sckcr);
> +	writel(tmp | osc->bits->cr_osc32en, sckcr);
>  
>  	usleep_range(osc->startup_usec, osc->startup_usec + 1);
>  
> @@ -85,10 +92,10 @@ static void clk_slow_osc_unprepare(struct clk_hw *hw)
>  	void __iomem *sckcr = osc->sckcr;
>  	u32 tmp = readl(sckcr);
>  
> -	if (tmp & AT91_SCKC_OSC32BYP)
> +	if (tmp & osc->bits->cr_osc32byp)
>  		return;
>  
> -	writel(tmp & ~AT91_SCKC_OSC32EN, sckcr);
> +	writel(tmp & ~osc->bits->cr_osc32en, sckcr);
>  }
>  
>  static int clk_slow_osc_is_prepared(struct clk_hw *hw)
> @@ -97,10 +104,10 @@ static int clk_slow_osc_is_prepared(struct clk_hw *hw)
>  	void __iomem *sckcr = osc->sckcr;
>  	u32 tmp = readl(sckcr);
>  
> -	if (tmp & AT91_SCKC_OSC32BYP)
> +	if (tmp & osc->bits->cr_osc32byp)
>  		return 1;
>  
> -	return !!(tmp & AT91_SCKC_OSC32EN);
> +	return !!(tmp & osc->bits->cr_osc32en);
>  }
>  
>  static const struct clk_ops slow_osc_ops = {
> @@ -114,7 +121,8 @@ at91_clk_register_slow_osc(void __iomem *sckcr,
>  			   const char *name,
>  			   const char *parent_name,
>  			   unsigned long startup,
> -			   bool bypass)
> +			   bool bypass,
> +			   const struct clk_slow_bits *bits)
>  {
>  	struct clk_slow_osc *osc;
>  	struct clk_hw *hw;
> @@ -137,10 +145,11 @@ at91_clk_register_slow_osc(void __iomem *sckcr,
>  	osc->hw.init = &init;
>  	osc->sckcr = sckcr;
>  	osc->startup_usec = startup;
> +	osc->bits = bits;
>  
>  	if (bypass)
> -		writel((readl(sckcr) & ~AT91_SCKC_OSC32EN) | AT91_SCKC_OSC32BYP,
> -		       sckcr);
> +		writel((readl(sckcr) & ~osc->bits->cr_osc32en) |
> +					osc->bits->cr_osc32byp, sckcr);
>  
>  	hw = &osc->hw;
>  	ret = clk_hw_register(NULL, &osc->hw);
> @@ -173,7 +182,7 @@ static int clk_slow_rc_osc_prepare(struct clk_hw *hw)
>  	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(hw);
>  	void __iomem *sckcr = osc->sckcr;
>  
> -	writel(readl(sckcr) | AT91_SCKC_RCEN, sckcr);
> +	writel(readl(sckcr) | osc->bits->cr_rcen, sckcr);
>  
>  	usleep_range(osc->startup_usec, osc->startup_usec + 1);
>  
> @@ -185,14 +194,14 @@ static void clk_slow_rc_osc_unprepare(struct clk_hw *hw)
>  	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(hw);
>  	void __iomem *sckcr = osc->sckcr;
>  
> -	writel(readl(sckcr) & ~AT91_SCKC_RCEN, sckcr);
> +	writel(readl(sckcr) & ~osc->bits->cr_rcen, sckcr);
>  }
>  
>  static int clk_slow_rc_osc_is_prepared(struct clk_hw *hw)
>  {
>  	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(hw);
>  
> -	return !!(readl(osc->sckcr) & AT91_SCKC_RCEN);
> +	return !!(readl(osc->sckcr) & osc->bits->cr_rcen);
>  }
>  
>  static const struct clk_ops slow_rc_osc_ops = {
> @@ -208,7 +217,8 @@ at91_clk_register_slow_rc_osc(void __iomem *sckcr,
>  			      const char *name,
>  			      unsigned long frequency,
>  			      unsigned long accuracy,
> -			      unsigned long startup)
> +			      unsigned long startup,
> +			      const struct clk_slow_bits *bits)
>  {
>  	struct clk_slow_rc_osc *osc;
>  	struct clk_hw *hw;
> @@ -230,6 +240,7 @@ at91_clk_register_slow_rc_osc(void __iomem *sckcr,
>  
>  	osc->hw.init = &init;
>  	osc->sckcr = sckcr;
> +	osc->bits = bits;
>  	osc->frequency = frequency;
>  	osc->accuracy = accuracy;
>  	osc->startup_usec = startup;
> @@ -255,14 +266,14 @@ static int clk_sam9x5_slow_set_parent(struct clk_hw *hw, u8 index)
>  
>  	tmp = readl(sckcr);
>  
> -	if ((!index && !(tmp & AT91_SCKC_OSCSEL)) ||
> -	    (index && (tmp & AT91_SCKC_OSCSEL)))
> +	if ((!index && !(tmp & slowck->bits->cr_oscsel)) ||
> +	    (index && (tmp & slowck->bits->cr_oscsel)))
>  		return 0;
>  
>  	if (index)
> -		tmp |= AT91_SCKC_OSCSEL;
> +		tmp |= slowck->bits->cr_oscsel;
>  	else
> -		tmp &= ~AT91_SCKC_OSCSEL;
> +		tmp &= ~slowck->bits->cr_oscsel;
>  
>  	writel(tmp, sckcr);
>  
> @@ -275,7 +286,7 @@ static u8 clk_sam9x5_slow_get_parent(struct clk_hw *hw)
>  {
>  	struct clk_sam9x5_slow *slowck = to_clk_sam9x5_slow(hw);
>  
> -	return !!(readl(slowck->sckcr) & AT91_SCKC_OSCSEL);
> +	return !!(readl(slowck->sckcr) & slowck->bits->cr_oscsel);
>  }
>  
>  static const struct clk_ops sam9x5_slow_ops = {
> @@ -287,7 +298,8 @@ static struct clk_hw * __init
>  at91_clk_register_sam9x5_slow(void __iomem *sckcr,
>  			      const char *name,
>  			      const char **parent_names,
> -			      int num_parents)
> +			      int num_parents,
> +			      const struct clk_slow_bits *bits)
>  {
>  	struct clk_sam9x5_slow *slowck;
>  	struct clk_hw *hw;
> @@ -309,7 +321,8 @@ at91_clk_register_sam9x5_slow(void __iomem *sckcr,
>  
>  	slowck->hw.init = &init;
>  	slowck->sckcr = sckcr;
> -	slowck->parent = !!(readl(sckcr) & AT91_SCKC_OSCSEL);
> +	slowck->bits = bits;
> +	slowck->parent = !!(readl(sckcr) & slowck->bits->cr_oscsel);
>  
>  	hw = &slowck->hw;
>  	ret = clk_hw_register(NULL, &slowck->hw);
> @@ -322,7 +335,8 @@ at91_clk_register_sam9x5_slow(void __iomem *sckcr,
>  }
>  
>  static void __init at91sam9x5_sckc_register(struct device_node *np,
> -					    unsigned int rc_osc_startup_us)
> +					    unsigned int rc_osc_startup_us,
> +					    const struct clk_slow_bits *bits)
>  {
>  	const char *parent_names[2] = { "slow_rc_osc", "slow_osc" };
>  	void __iomem *regbase = of_iomap(np, 0);
> @@ -335,7 +349,8 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
>  		return;
>  
>  	hw = at91_clk_register_slow_rc_osc(regbase, parent_names[0], 32768,
> -					   50000000, rc_osc_startup_us);
> +					   50000000, rc_osc_startup_us,
> +					   bits);
>  	if (IS_ERR(hw))
>  		return;
>  
> @@ -358,11 +373,12 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
>  		return;
>  
>  	hw = at91_clk_register_slow_osc(regbase, parent_names[1], xtal_name,
> -					1200000, bypass);
> +					1200000, bypass, bits);
>  	if (IS_ERR(hw))
>  		return;
>  
> -	hw = at91_clk_register_sam9x5_slow(regbase, "slowck", parent_names, 2);
> +	hw = at91_clk_register_sam9x5_slow(regbase, "slowck", parent_names, 2,
> +					   bits);
>  	if (IS_ERR(hw))
>  		return;
>  
> @@ -373,16 +389,23 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
>  		of_clk_add_hw_provider(child, of_clk_hw_simple_get, hw);
>  }
>  
> +static const struct clk_slow_bits at91sam9x5_bits = {
> +	.cr_rcen = BIT(0),
> +	.cr_osc32en = BIT(1),
> +	.cr_osc32byp = BIT(2),
> +	.cr_oscsel = BIT(3),
> +};
> +
>  static void __init of_at91sam9x5_sckc_setup(struct device_node *np)
>  {
> -	at91sam9x5_sckc_register(np, 75);
> +	at91sam9x5_sckc_register(np, 75, &at91sam9x5_bits);
>  }
>  CLK_OF_DECLARE(at91sam9x5_clk_sckc, "atmel,at91sam9x5-sckc",
>  	       of_at91sam9x5_sckc_setup);
>  
>  static void __init of_sama5d3_sckc_setup(struct device_node *np)
>  {
> -	at91sam9x5_sckc_register(np, 500);
> +	at91sam9x5_sckc_register(np, 500, &at91sam9x5_bits);
>  }
>  CLK_OF_DECLARE(sama5d3_clk_sckc, "atmel,sama5d3-sckc",
>  	       of_sama5d3_sckc_setup);
> @@ -398,7 +421,7 @@ static int clk_sama5d4_slow_osc_prepare(struct clk_hw *hw)
>  	 * Assume that if it has already been selected (for example by the
>  	 * bootloader), enough time has aready passed.
>  	 */
> -	if ((readl(osc->sckcr) & AT91_SCKC_OSCSEL)) {
> +	if ((readl(osc->sckcr) & osc->bits->cr_oscsel)) {
>  		osc->prepared = true;
>  		return 0;
>  	}
> @@ -421,6 +444,10 @@ static const struct clk_ops sama5d4_slow_osc_ops = {
>  	.is_prepared = clk_sama5d4_slow_osc_is_prepared,
>  };
>  
> +static const struct clk_slow_bits at91sama5d4_bits = {
> +	.cr_oscsel = BIT(3),
> +};
> +
>  static void __init of_sama5d4_sckc_setup(struct device_node *np)
>  {
>  	void __iomem *regbase = of_iomap(np, 0);
> @@ -455,6 +482,7 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
>  	osc->hw.init = &init;
>  	osc->sckcr = regbase;
>  	osc->startup_usec = 1200000;
> +	osc->bits = &at91sama5d4_bits;
>  
>  	hw = &osc->hw;
>  	ret = clk_hw_register(NULL, &osc->hw);
> @@ -463,7 +491,8 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
>  		return;
>  	}
>  
> -	hw = at91_clk_register_sam9x5_slow(regbase, "slowck", parent_names, 2);
> +	hw = at91_clk_register_sam9x5_slow(regbase, "slowck", parent_names, 2,
> +					   &at91sama5d4_bits);
>  	if (IS_ERR(hw))
>  		return;
>  
> -- 
> 2.7.4
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
