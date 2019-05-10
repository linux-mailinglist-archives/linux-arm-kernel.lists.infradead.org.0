Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E6A1A48E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 23:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LqiGO/qaeJRfkhSWBv8jdhS8SY56gVKtc88o1ASze+4=; b=P5WiRCdyNjC64p
	c9BPusDbBd2NJSGaSutliVYVvhSGCaE6eQgHuatIl38/eLqfW1eqjTxQ2aJQv+iU4pnZGnZ9U+PG4
	JJLfsnRfzSzCV/JqswTjhSViOT4ZdJcinj49rgkKVW2ixpl4VOQfy/XYKmRWf9uXA/d2pI/zX8KCN
	azFUhjHLXm5NGEZ6IlPri10lHoBV/5z1rtVYFlh+q3iuOd19VjHlXMdZLbmoudRGLdm09eB+n5LVl
	fh04EX5NGA+yMrC3OaiGzfT+7JLQRhjw6PS0fek5Pc3v+SHhyKgFmoRJA4FOGkfAyNlcU/7ydFm75
	LcHvF2dhg9BhSXNsJwew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPD8T-0007y3-W6; Fri, 10 May 2019 21:32:57 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPD8N-0007x0-9g
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 21:32:53 +0000
Received: from localhost (lfbn-1-3034-80.w90-66.abo.wanadoo.fr [90.66.53.80])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id E99AE20000B;
 Fri, 10 May 2019 21:32:42 +0000 (UTC)
Date: Fri, 10 May 2019 23:32:42 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH v3 2/4] clk: at91: sckc: add support to specify registers
 bit offsets
Message-ID: <20190510213242.GE7622@piout.net>
References: <1557487388-32098-1-git-send-email-claudiu.beznea@microchip.com>
 <1557487388-32098-3-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557487388-32098-3-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_143251_491952_BE363562 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 mturquette@baylibre.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/05/2019 11:23:31+0000, Claudiu.Beznea@microchip.com wrote:
> From: Claudiu Beznea <claudiu.beznea@microchip.com>
> 
> Different IPs uses different bit offsets in registers for the same
> functionality, thus adapt the driver to support this.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  drivers/clk/at91/sckc.c | 100 ++++++++++++++++++++++++++++++++----------------
>  1 file changed, 67 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
> index 6c55a7a86f79..2a4ac548de80 100644
> --- a/drivers/clk/at91/sckc.c
> +++ b/drivers/clk/at91/sckc.c
> @@ -22,15 +22,23 @@
>  #define SLOWCK_SW_TIME_USEC	((SLOWCK_SW_CYCLES * USEC_PER_SEC) / \
>  				 SLOW_CLOCK_FREQ)
>  
> -#define	AT91_SCKC_CR			0x00
> -#define		AT91_SCKC_RCEN		(1 << 0)
> -#define		AT91_SCKC_OSC32EN	(1 << 1)
> -#define		AT91_SCKC_OSC32BYP	(1 << 2)
> -#define		AT91_SCKC_OSCSEL	(1 << 3)
> +#define	AT91_SCKC_CR		0x00
> +#define		AT91_SCKC_RCEN(off)	((off)->cr_rcen)
> +#define		AT91_SCKC_OSC32EN(off)	((off)->cr_osc32en)
> +#define		AT91_SCKC_OSC32BYP(off)	((off)->cr_osc32byp)
> +#define		AT91_SCKC_OSCSEL(off)	((off)->cr_oscsel)
> +
> +struct clk_slow_bits {
> +	u32 cr_rcen;

This bit is only used on sam9x5 so I wouldn't bother having it in the
structure, especially since its use will always be quite separate from
the other ones as it is controlling a separate clock.

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
> @@ -39,6 +47,7 @@ struct clk_slow_osc {
>  struct clk_sama5d4_slow_osc {
>  	struct clk_hw hw;
>  	void __iomem *sckcr;
> +	const struct clk_slow_bits *bits;
>  	unsigned long startup_usec;
>  	bool prepared;
>  };
> @@ -48,6 +57,7 @@ struct clk_sama5d4_slow_osc {
>  struct clk_slow_rc_osc {
>  	struct clk_hw hw;
>  	void __iomem *sckcr;
> +	const struct clk_slow_bits *bits;
>  	unsigned long frequency;
>  	unsigned long accuracy;
>  	unsigned long startup_usec;
> @@ -58,6 +68,7 @@ struct clk_slow_rc_osc {
>  struct clk_sam9x5_slow {
>  	struct clk_hw hw;
>  	void __iomem *sckcr;
> +	const struct clk_slow_bits *bits;
>  	u8 parent;
>  };
>  
> @@ -69,10 +80,11 @@ static int clk_slow_osc_prepare(struct clk_hw *hw)
>  	void __iomem *sckcr = osc->sckcr;
>  	u32 tmp = readl(sckcr);
>  
> -	if (tmp & (AT91_SCKC_OSC32BYP | AT91_SCKC_OSC32EN))
> +	if (tmp & (AT91_SCKC_OSC32BYP(osc->bits) |
> +		   AT91_SCKC_OSC32EN(osc->bits)))

I still find that:

	if (tmp & (osc->bits->cr_osc32byp | osc->bits->cr_osc32en))

would be shorter and easier to read and still fits on one line.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
