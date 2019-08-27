Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7E39DE54
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 09:01:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FEm9YuELlRTnnRZWUwFEZ+rVvjtxdXBvyvsM7P0F7I4=; b=jOf6/7YN04cmrnQ6BCodROneH
	NiNpwQxnhtkJ3OleNFIYL9lJ534+l1UFHAAccvv8v0KZV/2+vc5YK+4honMsQhqUsh3CphRXwgVSj
	jm7aSN7x+gFfFJSuXdRuzaaYcMbO60+ah9buN1n8FuhHSG70JzeZUxOf4W+K6XslHmNOp3SWSsyAI
	X6gVuAzm2cTBBtYEK51jY8RAkgPL6P9HyQXKE5OC562xg775GeMtf5OHCrFR78WUX2BLoYXYBXMEi
	zmkXTFa3nFdVAwUqj1XgTjn9migNsArAsknMtZoiPAck+nAJ0+NKot1d0xhkcyusswX++b3/jw8Yf
	Fm3Crln8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2VTw-00063j-Tm; Tue, 27 Aug 2019 07:01:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2VTW-000634-E5
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 07:01:08 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C88C1206BF;
 Tue, 27 Aug 2019 07:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566889264;
 bh=Biq9mF8dTT+XjGplKumTdtUTNHz0ImKVfvD7CkyAwj0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hgQhsTQ0uGStkRN08ze0pp7gYCNZAgjNr980p+jcVF5VXiEywouzHu1X/QaioYG7h
 pCwT9TmFUF4jd97IjGFMlF+qXHiYfnmwMA/XS1uzU8+t2GJf5VfqFsV2wMcd3tXQ08
 RHKJsMf0efsZ6ws16aWkFS5lZ0ADFggxZxhDxI0I=
Date: Tue, 27 Aug 2019 09:01:01 +0200
From: Maxime Ripard <mripard@kernel.org>
To: codekipper@gmail.com
Subject: Re: [PATCH v6 3/3] ASoC: sun4i-i2s: Adjust LRCLK width
Message-ID: <20190827070101.tastgcqvzrgv3kc5@flea>
References: <20190826180734.15801-1-codekipper@gmail.com>
 <20190826180734.15801-4-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190826180734.15801-4-codekipper@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_000106_774721_2F460CB1 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, be17068@iperbole.bo.it,
 wens@csie.org, broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7447450928998448507=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7447450928998448507==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="aewobl2wvpczcoyt"
Content-Disposition: inline


--aewobl2wvpczcoyt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 26, 2019 at 08:07:34PM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>
> Some codecs such as i2s based HDMI audio and the Pine64 DAC require
> a different amount of bit clocks per frame than what is calculated
> by the sample width. Use the values obtained by the tdm slot bindings
> to adjust the LRCLK width accordingly.
>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index 056a299c03fb..0965a97c96e5 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -455,7 +455,10 @@ static int sun8i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
>  		break;
>
>  	case SND_SOC_DAIFMT_I2S:
> -		lrck_period = params_physical_width(params);
> +		if (i2s->slot_width)
> +			lrck_period = i2s->slot_width;
> +		else
> +			lrck_period = params_physical_width(params);
>  		break;

That would be the case with the DSP formats too, right?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--aewobl2wvpczcoyt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXWTVLQAKCRDj7w1vZxhR
xSAlAQCvR8zoBbzxDhfl4BOVHlf7M+d/VwTWUWIndBN6/bMNDAD+KSWSTL9rCbyM
5aTcKxbY8Hi2H/ljbFggOIAykqgEnQI=
=88rE
-----END PGP SIGNATURE-----

--aewobl2wvpczcoyt--


--===============7447450928998448507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7447450928998448507==--

