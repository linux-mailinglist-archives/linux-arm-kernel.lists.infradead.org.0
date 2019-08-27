Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE96C9E4FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 11:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6Yjm70y7efi8GdlPGe6i9/dpj9JgqfIJopXbeQvmTuA=; b=b3Xk3DFnkazk+zxVh/Om868wg
	UqY+QfSFiQWH0ihQySxmMB/H5jTycmdvrzfHFkQHwwH7sFo5l3One9JO21E2BnmiTVa0G7bMkk4jD
	YNNfe56XXNI8/4kTM6IDCIgRx+Gufx+jxZlhmH1vpB4gPGcRzMTaeKuQawl6u33c7lfKe+USF3Mhm
	83M7XmHSzbtDPl1yiUMxfRlGGgQdiEy0/6cVzsIlAySgJV5TBCKj+T5qBuL7i05supzZCDgDizknP
	DnRaQvrtlF5+U9n4LPGPfPL7RE4gM3eOUKO4o4o7CZQHly7ck3KgJgUfjdAfxwHOyDzfKm9pwyNFU
	Pa1VzpNEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2YCw-0000DN-Ek; Tue, 27 Aug 2019 09:56:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2YCj-0000D1-Es
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 09:55:59 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 84CED206BA;
 Tue, 27 Aug 2019 09:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566899757;
 bh=atL+c09nTJMiaNPgzBud/uYn355sWv8brUYuoy1/Mo4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ij1ba8VIqrOZDYUqLFOLUwXkabk9imXGwVmxdSmwN5cZGiTsUxO1aA/95qLigQa/L
 8FSW5wKFkg2kk4bRYb3jVTNbxyMP3df0h7kajb2lXGFq57f9BTBjzR0sfwXVhqCua7
 DwmnG/1Z5xYHmybKdt3fxnGvMgFuAetc1sgOOlfk=
Date: Tue, 27 Aug 2019 11:55:54 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>, lgirdwood@gmail.com, broonie@kernel.org
Subject: Re: [PATCH 2/2] ASoC: sun4i: Revert A83t description
Message-ID: <20190827095554.33tipdzz4p44zyzr@flea>
References: <20190827093206.17919-1-mripard@kernel.org>
 <20190827093206.17919-2-mripard@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20190827093206.17919-2-mripard@kernel.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_025557_699571_B86BCB2C 
X-CRM114-Status: GOOD (  20.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: codekipper@gmail.com, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0149725358095582837=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0149725358095582837==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ofq54esimqpykuym"
Content-Disposition: inline


--ofq54esimqpykuym
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 27, 2019 at 11:32:06AM +0200, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The last set of reworks included some fixes to change the A83t behaviour
> and "fix" it.
>
> It turns out that the controller described in the datasheet and the one
> supported here are not the same, yet the A83t has the two of them, and the
> one supported in the driver wasn't the one described in the datasheet.
>
> Fix this by reintroducing the proper quirks.
>
> Fixes: 69e450e50ca6 ("ASoC: sun4i-i2s: Fix the LRCK period on A83t")
> Fixes: bf943d527987 ("ASoC: sun4i-i2s: Fix MCLK Enable bit offset on A83t")
> Fixes: 2e04fc4dbf50 ("ASoC: sun4i-i2s: Fix WSS and SR fields for the A83t")
> Fixes: 515fcfbc7736 ("ASoC: sun4i-i2s: Fix LRCK and BCLK polarity offsets on newer SoCs")
> Fixes: c1d3a921d72b ("ASoC: sun4i-i2s: Fix the MCLK and BCLK dividers on newer SoCs")
> Fixes: fb19739d7f68 ("ASoC: sun4i-i2s: Use module clock as BCLK parent on newer SoCs")
> Fixes: 71137bcd0a9a ("ASoC: sun4i-i2s: Move the format configuration to a callback")
> Fixes: d70be625f25a ("ASoC: sun4i-i2s: Move the channel configuration to a callback")
> Reported-by: Chen-Yu Tsai <wens@csie.org>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index a6a3f772fdf0..498ceebd9135 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -1106,18 +1106,18 @@ static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
>  	.has_reset		= true,
>  	.reg_offset_txdata	= SUN8I_I2S_FIFO_TX_REG,
>  	.sun4i_i2s_regmap	= &sun4i_i2s_regmap_config,
> -	.field_clkdiv_mclk_en	= REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 8, 8),
> -	.field_fmt_wss		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 2),
> -	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 6),
> -	.bclk_dividers		= sun8i_i2s_clk_div,
> -	.num_bclk_dividers	= ARRAY_SIZE(sun8i_i2s_clk_div),
> -	.mclk_dividers		= sun8i_i2s_clk_div,
> -	.num_mclk_dividers	= ARRAY_SIZE(sun8i_i2s_clk_div),
> -	.get_bclk_parent_rate	= sun8i_i2s_get_bclk_parent_rate,
> -	.get_sr			= sun8i_i2s_get_sr_wss,
> -	.get_wss		= sun8i_i2s_get_sr_wss,
> -	.set_chan_cfg		= sun8i_i2s_set_chan_cfg,
> -	.set_fmt		= sun8i_i2s_set_soc_fmt,
> +	.field_clkdiv_mclk_en	= REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 7, 7),
> +	.field_fmt_wss		= REG_FIELD(SUN4I_I2S_FMT0_REG, 2, 3),
> +	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 5),
> +	.bclk_dividers		= sun4i_i2s_bclk_div,
> +	.num_bclk_dividers	= ARRAY_SIZE(sun4i_i2s_bclk_div),
> +	.mclk_dividers		= sun4i_i2s_mclk_div,
> +	.num_mclk_dividers	= ARRAY_SIZE(sun4i_i2s_mclk_div),
> +	.get_bclk_parent_rate	= sun4i_i2s_get_bclk_parent_rate,
> +	.get_sr			= sun4i_i2s_get_sr_wss,

This should be sun4i_i2s_get_sr

> +	.get_wss		= sun4i_i2s_get_sr_wss,

This should be sun4i_i2s_get_wss

Sorry for that.

Maxime
--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ofq54esimqpykuym
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXWT+KgAKCRDj7w1vZxhR
xcK8APoCqQ3/O2zmdGt1Jbk4nJNFD9ugntBZ5RBtIauNpnmlWQD+KGnyPy5+HWfq
E4inmGjbivNP3KzSX7HHh1Rr+fblBQc=
=QDn9
-----END PGP SIGNATURE-----

--ofq54esimqpykuym--


--===============0149725358095582837==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0149725358095582837==--

