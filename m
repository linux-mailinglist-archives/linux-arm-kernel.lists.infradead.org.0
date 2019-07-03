Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C815D5E4CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 15:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRzbh3zLnh5f2DUkrhKysijboHylX68lUK/g0AkAWUg=; b=Sgct1cIFxDNcOl
	6Ks+oAXq4IGPTKJBVPExhhOsWMJPjl4LQych5ouhR96b40WF2m9w7MASHnb3hvF1lgjglnCMEyuve
	U6O+1hMdoOhNqfNoWMXc2is001XLHHcQ9PSDUROx5e8BrkpS+LNsFvCpXw09S9higAh9AF+oAI6nV
	FPXwHtuoQXP3i9gZZkQgNNkh5CfxIo5mPfJ15ew+FT+qee7pAbfcea+y8LFOyqqb5IIz2k5l9pXc9
	bc+d1DZOup+jouBvK69GE0GEZAiRI8RVQR6yk+IFUnRcOJCVTFQTMoAfDNv8V9KGYJsS62Fc/tPq9
	EMrjuwf3VewmhV5NQNTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiex5-000102-HR; Wed, 03 Jul 2019 13:05:35 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiewn-0000yP-2V
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 13:05:18 +0000
Received: by mail-wm1-x341.google.com with SMTP id 207so2147656wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 06:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KH2eG+x8Tg1+duN/dfrI01o6FXkBJqUeFiUf1jFkgyQ=;
 b=BW4JmIPUbKk7pMK8MtLDqli/03LRWL5o69F3Wk9hHVgusTFgWEBelYIOFPgnEiAkxx
 a6W5stinsnu55yOj+pCd1uysnend14STiaeWzHm/hxhwTbKs1f1ZuT/8KR1kwtyRDcs9
 7CyuwDUtEYdkVK1nbw9oTz/Vgtn7X3vNJNvfw0yYFhXhqUzUTg7xI+FrMJQYFvxKrXgj
 Cxj7CtML5rZ+lzAZZnLmz3GcFG4kgcd0EpaFLigTJUhXPmlWAQoNwA768Cih2l9y0HSX
 T30VJPWGBPaiNV2MBOyN2nT8QfBxLhWYorSLR82bYDT6cvpwp/ditZ9MkQWK/QbdK+IV
 YzZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KH2eG+x8Tg1+duN/dfrI01o6FXkBJqUeFiUf1jFkgyQ=;
 b=I8Gg5DxNDAEc1S9KmiPJIJQlEWneZa9tNNls54qmvtTeASbFUMuuQLUYZcojGnKJXz
 XDXU8l2h/UYdgLT1Nmat8ICcKlrBWFGDAPlJNJPN3hRMraypY50OETZD5I3YpPf1QgOe
 jHYKRByDUWIUGCpxcGCYsbGvtzKbAIZp8kOQGWG8kIulHIbWh0BHFsvdqgdhTetl8WWa
 tkvIXswS2KnE3m5VCu4n8BwThCbT2w0/mGfrR8HsHpQot+0OudVcGpXQ55kZdbjvgMzT
 aIS+PXY+mGtuTzb7iVfYff02ecF8w6TY4bZOd5cAIwVeeFrb3WQ0vXfH4x+WLWzPrhbw
 vFVw==
X-Gm-Message-State: APjAAAXv+xyGNM+XoKm4x6TykJb6veNa/CtU5XXgxmZiMr46Yg9zkxuT
 uTsRJoPtBrzQUacuPiIWg2RMAL1T8PJ9BCQJWGs=
X-Google-Smtp-Source: APXvYqxY84Zmx8oWuSwwzgbMqQpDMtrsx3Me5sgTMeJ67amW0WnvPJVfwdFa1XFxQ2eCxwvf6j5mMN+1RkBNosgAdG0=
X-Received: by 2002:a05:600c:206:: with SMTP id 6mr7668361wmi.73.1562159114636; 
 Wed, 03 Jul 2019 06:05:14 -0700 (PDT)
MIME-Version: 1.0
References: <1562155702-29809-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1562155702-29809-1-git-send-email-abel.vesa@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 3 Jul 2019 16:05:02 +0300
Message-ID: <CAEnQRZAje+i1i0Nj2-SgAkdpdEq3-NyOLOt4mxfC_ayd2aD=Bg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: imx8mm: Init rates and parents configs for
 clocks
To: Abel Vesa <abel.vesa@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_060517_146020_FD4ABEF8 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Jacky Bai <ping.bai@nxp.com>, Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 3, 2019 at 3:10 PM Abel Vesa <abel.vesa@nxp.com> wrote:
>
> Add the initial configuration for clocks that need default parent and rate
> setting. This is based on the vendor tree clock provider parents and rates
> configuration except this is doing the setup in dts rather than using clock
> consumer API in a clock provider driver.
>
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>

Thanks Abel, this helps audio.  For audio clk:

Acked-by: Daniel Baluta <daniel.baluta@nxp.com>

> ---
>
> Changes since v1:
>  - removed the PCIE, CSI and DISP clocks parent setting since
>    that should be done from their driver.
>
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 232a741..ba2034d 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -451,6 +451,17 @@
>                                          <&clk_ext3>, <&clk_ext4>;
>                                 clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
>                                               "clk_ext3", "clk_ext4";
> +                               assigned-clocks = <&clk IMX8MM_CLK_NOC>,
> +                                               <&clk IMX8MM_CLK_AUDIO_AHB>,
> +                                               <&clk IMX8MM_CLK_IPG_AUDIO_ROOT>,
> +                                               <&clk IMX8MM_SYS_PLL3>,
> +                                               <&clk IMX8MM_VIDEO_PLL1>;
> +                               assigned-clock-parents = <&clk IMX8MM_SYS_PLL3_OUT>,
> +                                                        <&clk IMX8MM_SYS_PLL1_800M>;
> +                               assigned-clock-rates = <0>,
> +                                                       <400000000>,
> +                                                       <750000000>,
> +                                                       <594000000>;
>                         };
>
>                         src: reset-controller@30390000 {
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
