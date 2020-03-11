Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F197181B94
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 15:43:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yl4jNQI20WjU1PVGbs9eBX8UXZLp2OFvWK5gciEIoZ0=; b=CXy/al+B0NE4m9
	UQIuobVmpJr1TfLgZSiAZ9eoOsTZazCpnkjmoYX7Y56oyznvkPrVWaBBzmmHYknhMpU5NywLT6Uzp
	oiVElNNbAntVuEp46dI9TeTV7lHSuaZ5sl3TUei5I9bC8cyNapDnfcrV2N50OpwpXo4tkF96UG8oV
	oVGD8nsr95VcajPBUmvL/AJ7fZJfsP/xz2in0HjgoIBHk3awtPad5wGHQIJpvLTVJ5aTd+YT1eHes
	E4gFdoA/O0iGwDL1ulo2c+qzzR7jFZA/4zhZoL5nHNLrFXuiX+9HMMRsvAJkvQUlrT4V8f3I+kypW
	CSAcy4UnBkbhF16Yzvfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC2Zh-0004Vc-0Z; Wed, 11 Mar 2020 14:43:09 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2ZU-0004Up-K3
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 14:42:58 +0000
Received: by mail-ed1-f67.google.com with SMTP id a24so3160256edy.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 07:42:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gKDUe9P2YUubturUxI0TRyVNid6URk2e+Ed9FtxvxKk=;
 b=rWxuU9LYmLd+IrgWBHeTYeD7T5DutvJLS+hyrMozFNUrHQlMAwh5CResb8KCKOmbih
 hcr4qhX8PtX8TBYB6VPJeu8VQUqa5FHg/V+jXmNA2MnzsEePg1SeoaasPlg0ektRq0dX
 OJbnehqFB6Rw+tl3bSLORRfhT0t+muz7BJmrRhjk8T8CYChSZZoJGyt/4CX5EYn8a/d6
 PthdXg8G3Th0KaCYI4OtERszzfb4BaWieYWgU5JuSZ9h08aSMIwwZmtsDAAmWRpf0wrZ
 ZXORkXTglXmrO9FHXonAJzNqmd5gV9o9YkmsAwap4miWskl2AF23VabDKIvGeHSUxON0
 WY2A==
X-Gm-Message-State: ANhLgQ2BEwPqLktep2YX8AVBvNhGpGHw4vA1xMzJkvHsupgl6xuinqbD
 4LfmAKLhQ//AnNrnv9B90FqDovvE
X-Google-Smtp-Source: ADFU+vuaPy05McHUkVwSVh+g/+/nj6uRC/r0ZhsuPI7+uwkM3c7CJcwerQSzNIOD7sx8YKwslv43/w==
X-Received: by 2002:aa7:d45a:: with SMTP id q26mr3263099edr.350.1583937774579; 
 Wed, 11 Mar 2020 07:42:54 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id p4sm607572eju.57.2020.03.11.07.42.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Mar 2020 07:42:51 -0700 (PDT)
Date: Wed, 11 Mar 2020 15:42:48 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCHv3 5/5] clk: samsung: exynos542x: Move FSYS subsystem
 clocks to its sub-CMU
Message-ID: <20200311144248.GA4455@kozik-lap>
References: <20200310194854.831-1-linux.amoon@gmail.com>
 <20200310194854.831-6-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310194854.831-6-linux.amoon@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_074256_663229_5A94B01D 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, Felipe Balbi <balbi@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 07:48:54PM +0000, Anand Moon wrote:
> FSYS power domain support usbdrd3, pdma and usb2 power gaiting,
> hence move FSYS clk setting to sub-CMU block to support power domain
> on/off sequences for device nodes.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> New patch in the series
> ---
>  drivers/clk/samsung/clk-exynos5420.c | 45 +++++++++++++++++++++-------
>  1 file changed, 34 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
> index c9e5a1fb6653..6c4c47dfcdce 100644
> --- a/drivers/clk/samsung/clk-exynos5420.c
> +++ b/drivers/clk/samsung/clk-exynos5420.c
> @@ -859,12 +859,6 @@ static const struct samsung_div_clock exynos5x_div_clks[] __initconst = {
>  	DIV(0, "dout_maudio0", "mout_maudio0", DIV_MAU, 20, 4),
>  	DIV(0, "dout_maupcm0", "dout_maudio0", DIV_MAU, 24, 8),
>  
> -	/* USB3.0 */
> -	DIV(0, "dout_usbphy301", "mout_usbd301", DIV_FSYS0, 12, 4),
> -	DIV(0, "dout_usbphy300", "mout_usbd300", DIV_FSYS0, 16, 4),
> -	DIV(0, "dout_usbd301", "mout_usbd301", DIV_FSYS0, 20, 4),
> -	DIV(0, "dout_usbd300", "mout_usbd300", DIV_FSYS0, 24, 4),

According to clock diagram these are still in CMU TOP, not FSYS.

> -
>  	/* MMC */
>  	DIV(0, "dout_mmc0", "mout_mmc0", DIV_FSYS1, 0, 10),
>  	DIV(0, "dout_mmc1", "mout_mmc1", DIV_FSYS1, 10, 10),
> @@ -1031,8 +1025,6 @@ static const struct samsung_gate_clock exynos5x_gate_clks[] __initconst = {
/>  
>  	/* FSYS Block */
>  	GATE(CLK_TSI, "tsi", "aclk200_fsys", GATE_BUS_FSYS0, 0, 0, 0),
> -	GATE(CLK_PDMA0, "pdma0", "aclk200_fsys", GATE_BUS_FSYS0, 1, 0, 0),
> -	GATE(CLK_PDMA1, "pdma1", "aclk200_fsys", GATE_BUS_FSYS0, 2, 0, 0),
>  	GATE(CLK_UFS, "ufs", "aclk200_fsys2", GATE_BUS_FSYS0, 3, 0, 0),
>  	GATE(CLK_RTIC, "rtic", "aclk200_fsys", GATE_IP_FSYS, 9, 0, 0),
>  	GATE(CLK_MMC0, "mmc0", "aclk200_fsys2", GATE_IP_FSYS, 12, 0, 0),
> @@ -1040,9 +1032,6 @@ static const struct samsung_gate_clock exynos5x_gate_clks[] __initconst = {
>  	GATE(CLK_MMC2, "mmc2", "aclk200_fsys2", GATE_IP_FSYS, 14, 0, 0),
>  	GATE(CLK_SROMC, "sromc", "aclk200_fsys2",
>  			GATE_IP_FSYS, 17, CLK_IGNORE_UNUSED, 0),
> -	GATE(CLK_USBH20, "usbh20", "aclk200_fsys", GATE_IP_FSYS, 18, 0, 0),
> -	GATE(CLK_USBD300, "usbd300", "aclk200_fsys", GATE_IP_FSYS, 19, 0, 0),
> -	GATE(CLK_USBD301, "usbd301", "aclk200_fsys", GATE_IP_FSYS, 20, 0, 0),
>  	GATE(CLK_SCLK_UNIPRO, "sclk_unipro", "dout_unipro",
>  			SRC_MASK_FSYS, 24, CLK_SET_RATE_PARENT, 0),
>  
> @@ -1258,6 +1247,28 @@ static struct exynos5_subcmu_reg_dump exynos5x_gsc_suspend_regs[] = {
>  	{ DIV2_RATIO0, 0, 0x30 },	/* DIV dout_gscl_blk_300 */
>  };
>  
> +/* USB3.0 */
> +static const struct samsung_div_clock exynos5x_fsys_div_clks[] __initconst = {
> +	DIV(0, "dout_usbphy301", "mout_usbd301", DIV_FSYS0, 12, 4),
> +	DIV(0, "dout_usbphy300", "mout_usbd300", DIV_FSYS0, 16, 4),
> +	DIV(0, "dout_usbd301", "mout_usbd301", DIV_FSYS0, 20, 4),
> +	DIV(0, "dout_usbd300", "mout_usbd300", DIV_FSYS0, 24, 4),
> +};
> +
> +static const struct samsung_gate_clock exynos5x_fsys_gate_clks[] __initconst = {
> +	GATE(CLK_PDMA0, "pdma0", "aclk200_fsys", GATE_BUS_FSYS0, 1, 0, 0),
> +	GATE(CLK_PDMA1, "pdma1", "aclk200_fsys", GATE_BUS_FSYS0, 2, 0, 0),
> +	GATE(CLK_USBH20, "usbh20", "aclk200_fsys", GATE_IP_FSYS, 18, 0, 0),
> +	GATE(CLK_USBD300, "usbd300", "aclk200_fsys", GATE_IP_FSYS, 19, 0, 0),
> +	GATE(CLK_USBD301, "usbd301", "aclk200_fsys", GATE_IP_FSYS, 20, 0, 0),
> +};
> +
> +static struct exynos5_subcmu_reg_dump exynos5x_fsys_suspend_regs[] = {
> +	{ GATE_IP_FSYS, 0xffffffff, 0xffffffff }, /* FSYS gates */

This looks wrong. GATE_IP_FSYS has fields also for FSYS2 clocks which
you are not suspending. They do not belong to this CMU.

Don't you need to save also parts of GATE_BUS_FSYS0?

> +	{ SRC_TOP3, 0, BIT(24) },                 /* SW_MUX_PCLK_200_FSYS_SEL */
> +	{ SRC_TOP3, 0, BIT(28) },                 /* SW_MUX_ACLK_200_FSYS_SEL */

Name of clocks from the driver please, not from datasheet. Look at other
examples.

Best regards,
Krzysztof


> +};
> +
>  static const struct samsung_gate_clock exynos5x_g3d_gate_clks[] __initconst = {
>  	GATE(CLK_G3D, "g3d", "mout_user_aclk_g3d", GATE_IP_G3D, 9,
>  	     CLK_SET_RATE_PARENT, 0),
> @@ -1376,12 +1387,23 @@ static const struct exynos5_subcmu_info exynos5800_mau_subcmu = {
>  	.pd_name	= "MAU",
>  };
>  
> +static const struct exynos5_subcmu_info exynos5x_fsys_subcmu = {
> +	.div_clks       = exynos5x_fsys_div_clks,
> +	.nr_div_clks    = ARRAY_SIZE(exynos5x_fsys_div_clks),
> +	.gate_clks	= exynos5x_fsys_gate_clks,
> +	.nr_gate_clks	= ARRAY_SIZE(exynos5x_fsys_gate_clks),
> +	.suspend_regs	= exynos5x_fsys_suspend_regs,
> +	.nr_suspend_regs = ARRAY_SIZE(exynos5x_fsys_suspend_regs),
> +	.pd_name	= "FSYS",
> +};
> +
>  static const struct exynos5_subcmu_info *exynos5x_subcmus[] = {
>  	&exynos5x_disp_subcmu,
>  	&exynos5x_gsc_subcmu,
>  	&exynos5x_g3d_subcmu,
>  	&exynos5x_mfc_subcmu,
>  	&exynos5x_mscl_subcmu,
> +	&exynos5x_fsys_subcmu,
>  };
>  
>  static const struct exynos5_subcmu_info *exynos5800_subcmus[] = {
> @@ -1391,6 +1413,7 @@ static const struct exynos5_subcmu_info *exynos5800_subcmus[] = {
>  	&exynos5x_mfc_subcmu,
>  	&exynos5x_mscl_subcmu,
>  	&exynos5800_mau_subcmu,
> +	&exynos5x_fsys_subcmu,
>  };
>  
>  static const struct samsung_pll_rate_table exynos5420_pll2550x_24mhz_tbl[] __initconst = {
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
