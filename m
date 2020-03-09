Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E4717E053
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 13:33:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l2vzI6tlXoNdNkQlBhbrWXelwiDWjfyq3IOsvqjIs2M=; b=mgwe6igpkoM6/9NZvAmxy5Mef
	YMgxsZHzMleKeAFK+KWVa7DX5bwekCQsLWOh4mBvBgHDUxJhw14kVxrf9ww4avq5J5toOP87vnfxV
	nPZdvO5iuB2xQ1rH67hui9PFzSyVDf+pUR1VR8CB2RxWCOF3yya3LQkoh5I8yNYAbfSd0msVyYVMQ
	Sv/eRdxLXYnhAmnrroFF3v0S4d0/c79YDl+wyUhdtBl7/dOykrI//KWMIFkl6a8OMSbzpTPlOMtEW
	0Gt/X1qawmhRcZB0fUQgo3G4759qBbE6mWhDiknpO01Aok9hdKar1/2b3YQMkQ5qSMQb044nI5/Us
	FwpHqN0oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBHau-00018F-Q7; Mon, 09 Mar 2020 12:33:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBHan-00017P-Qe
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 12:33:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1F3AB30E;
 Mon,  9 Mar 2020 05:33:09 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 972473F6CF;
 Mon,  9 Mar 2020 05:33:08 -0700 (PDT)
Date: Mon, 9 Mar 2020 12:33:07 +0000
From: Mark Brown <broonie@kernel.org>
To: Kevin Li <kevin-ke.li@broadcom.com>
Subject: Re: [PATCH] ASoC: brcm:  Add DSL/PON SoC audio driver
Message-ID: <20200309123307.GE4101@sirena.org.uk>
References: <20200306222705.13309-1-kevin-ke.li@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <20200306222705.13309-1-kevin-ke.li@broadcom.com>
X-Cookie: Above all things, reverence yourself.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_053309_957364_C488748D 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Scott Branden <sbranden@broadcom.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, bcm-kernel-feedback-list@broadcom.com,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3007638609570257118=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3007638609570257118==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VdOwlNaOFKGAtAAV"
Content-Disposition: inline


--VdOwlNaOFKGAtAAV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 06, 2020 at 02:27:04PM -0800, Kevin Li wrote:
> This patch adds Broadcom DSL/PON SoC audio driver
> with Whistler I2S block. The SoC supported by this
> patch are BCM63158B0,BCM63178 and BCM47622/6755.

Please number patches within a series when you send it -
submitting-patches.rst should cover this.

> +++ b/sound/soc/bcm/bcm63xx-i2s-whistler.c
> @@ -0,0 +1,328 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * linux/sound/bcm/bcm63xx-i2s-whistler.c
> + * BCM63xx whistler i2s driver

Please make the entire comment a C++ one so things look more
intentional.

> +static int bcm63xx_i2s_set_fmt(struct snd_soc_dai *cpu_dai, unsigned int fmt)
> +{
> +	return 0;
> +}

Remove empty functions, if the framework prevents removing the function
entirely that's a sign that you need to do something.

> +static int bcm63xx_i2s_startup(struct snd_pcm_substream *substream,
> +			       struct snd_soc_dai *dai)
> +{
> +	unsigned int slaveMode;

Please use the kernel coding style.

> +	struct bcm_i2s_priv *i2s_priv = snd_soc_dai_get_drvdata(dai);
> +	struct regmap *regmap_i2s = i2s_priv->regmap_i2s;
> +
> +	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
> +		regmap_update_bits(regmap_i2s, I2S_TX_CFG,
> +				   I2S_TX_OUT_R | I2S_TX_DATA_ALIGNMENT |
> +				   I2S_TX_DATA_ENABLE | I2S_TX_CLOCK_ENABLE,
> +				   I2S_TX_OUT_R | I2S_TX_DATA_ALIGNMENT |
> +				   I2S_TX_DATA_ENABLE | I2S_TX_CLOCK_ENABLE);
> +		regmap_write(regmap_i2s, I2S_TX_IRQ_CTL, 0);
> +		regmap_write(regmap_i2s, I2S_TX_IRQ_IFF_THLD, 0);
> +		regmap_write(regmap_i2s, I2S_TX_IRQ_OFF_THLD, 1);
> +
> +		regmap_read(regmap_i2s, I2S_RX_CFG_2, &slaveMode);
> +		if (slaveMode & I2S_RX_SLAVE_MODE_MASK)
> +			regmap_update_bits(regmap_i2s, I2S_TX_CFG_2,
> +					   I2S_TX_SLAVE_MODE_MASK,
> +					   I2S_TX_MASTER_MODE);
> +		else
> +			regmap_update_bits(regmap_i2s, I2S_TX_CFG_2,
> +					   I2S_TX_SLAVE_MODE_MASK,
> +					   I2S_TX_SLAVE_MODE);

Setting master or slave mode should be done with a set_fmt() operation
but your set_fmt() operation was empty.  How would this be configured?

--VdOwlNaOFKGAtAAV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5mN4IACgkQJNaLcl1U
h9CHFQf+MmfeIV26USY3oRJZbEj/rIkPnEVV5ZaGZbjZh+03KnAh8C+1n+hNYPGH
NGZTWQ3N5t2hDecM/JWR8bgmyrjW5HM0N4ICJBfNMVhJmwI49xJszkJrjQaDB9Gt
ep2UXzYoDAWUV+mvs5jqIC6PtmyXVXdtoULsgCy9jRNuHyqqBu+anpawMyw8MaOo
q3mLQiAG2mxopXXwV/OxeeXtfutAN8LDCVvLAfQr4ElkJuEUQDGS1YN7Q2g1Fbpi
nODU5PmoACBdMrzDxnbHXDAD1IjKDNuCiMaCqavsHgmuh9jXb0LG9wh747l07BL+
02ZAt8hazsrXGztdvVNOtyWo7v3wFw==
=6Y1J
-----END PGP SIGNATURE-----

--VdOwlNaOFKGAtAAV--


--===============3007638609570257118==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3007638609570257118==--

