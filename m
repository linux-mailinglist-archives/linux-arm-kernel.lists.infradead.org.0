Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94161127AC9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 13:12:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bwN5iI5nKi4YABJs1AEDf7vh1A5VpnsoJggh+S52gNo=; b=rDIjU6q2LF1GUTYgavNgN4nRw
	D1t2U8Npef96eUr9E1gOE/vHnllnBsRz0j0JmQvcmvcYGIyFNh1VLC4OL9HRWTPEj9d67eah/rJz7
	0tGSHoebVOzf41nVBilZpUUtbFQPttkfAwtxEasOIx5lUEfRl8jeN9MX2h7JYMbqL61rp0c1tL/6h
	/swPvGZjWfL+/3uT6dR6rmL6NxNnOs/Di54ku/ag278rYnxCREMTNV0Ab/91rTZvWgfe2BuyC4PEO
	BTcIyUJOOek/hbMZYQq2eHKgYV/mwYfP7Icdf8PtFddG4KFOTo/zFtGTrLf0G9JTC5/oRvCwn8ETQ
	r6P1Mirzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiH8b-00032w-2c; Fri, 20 Dec 2019 12:12:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiH8P-00031V-3w
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 12:12:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA40830E;
 Fri, 20 Dec 2019 04:11:54 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 683BC3F719;
 Fri, 20 Dec 2019 04:11:54 -0800 (PST)
Date: Fri, 20 Dec 2019 12:11:52 +0000
From: Mark Brown <broonie@kernel.org>
To: Jeff Chang <richtek.jeff.chang@gmail.com>
Subject: Re: [PATCH] ASoC: Add MediaTek MT6660 Speaker Amp Driver
Message-ID: <20191220121152.GC4790@sirena.org.uk>
References: <1576836934-5370-1-git-send-email-richtek.jeff.chang@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1576836934-5370-1-git-send-email-richtek.jeff.chang@gmail.com>
X-Cookie: I think we're in trouble.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_041157_241884_0D8A1A5F 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, tiwai@suse.com,
 lgirdwood@gmail.com, jeff_chang@richtek.com, matthias.bgg@gmail.com,
 perex@perex.cz, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5739087664045095893=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5739087664045095893==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Y5rl02BVI9TCfPar"
Content-Disposition: inline


--Y5rl02BVI9TCfPar
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Dec 20, 2019 at 06:15:34PM +0800, Jeff Chang wrote:

> +++ b/sound/soc/codecs/mt6660.c
> @@ -0,0 +1,653 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> + */

Please make the entire comment a C++ one so things look more
intentional.

> +	{ MT6660_REG_DEVID, 2},
> +	{ MT6660_REG_TDM_CFG3, 2},
> +	{ MT6660_REG_HCLIP_CTRL, 2},
> +	{ MT6660_REG_DA_GAIN, 2},

Missing space before the } (the same thing happens in some of the
other tables).

> +static int mt6660_component_get_volsw(struct snd_kcontrol *kcontrol,
> +				  struct snd_ctl_elem_value *ucontrol)
> +{
> +	struct snd_soc_component *component =
> +		snd_soc_kcontrol_component(kcontrol);
> +	struct mt6660_chip *chip = (struct mt6660_chip *)
> +		snd_soc_component_get_drvdata(component);
> +	int ret = -EINVAL;
> +
> +	if (!strcmp(kcontrol->id.name, "Chip_Rev")) {

Why would this be used on a different control?

> +	SOC_SINGLE_EXT("BoostMode", MT6660_REG_BST_CTRL, 0, 3, 0,
> +		       snd_soc_get_volsw, snd_soc_put_volsw),

Boost Mode.  You've also got a lot of these controls that are _EXT but
you then just use standard operations so it's not clear why you're using
_EXT.

> +	SOC_SINGLE_EXT("audio input selection", MT6660_REG_DATAO_SEL, 6, 3, 0,
> +		       snd_soc_get_volsw, snd_soc_put_volsw),

Audio Input Selection, but this looks like it should be a DAPM control
if it's controlling audio routing.  A simple numerical setting
definitely doesn't seem like the right thing.

> +	SOC_SINGLE_EXT("AUD LOOP BACK Switch", MT6660_REG_PATH_BYPASS, 4, 1, 0,
> +		       snd_soc_get_volsw, snd_soc_put_volsw),

This sounds like it should be a DAPM thing too.

> +static int mt6660_component_probe(struct snd_soc_component *component)
> +{
> +	struct mt6660_chip *chip = snd_soc_component_get_drvdata(component);
> +	int ret = 0;
> +
> +	dev_info(component->dev, "%s\n", __func__);

dev_dbg() at most but probably better to remove this and the other
similar dev_info()s.

> +static inline int _mt6660_chip_id_check(struct mt6660_chip *chip)
> +{
> +	u8 id[2] = {0};
> +	int ret = 0;
> +
> +	ret = i2c_smbus_read_i2c_block_data(chip->i2c, MT6660_REG_DEVID, 2, id);
> +	if (ret < 0)
> +		return ret;
> +	ret = (id[0] << 8) + id[1];
> +	ret &= 0x0ff0;
> +	if (ret != 0x00e0 && ret != 0x01e0)
> +		return -ENODEV;

It'd be better to print an error message saying we don't recognize the
device to help people doing debugging.

> +	if (of_property_read_u32(np, "rt,init_setting_num", &val)) {
> +		dev_info(dev, "no init setting\n");
> +		chip->plat_data.init_setting_num = 0;

You should be adding a DT binding document for any new DT bindings.

--Y5rl02BVI9TCfPar
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl38uogACgkQJNaLcl1U
h9B+kQf6AzhZSat7mqBSwJVubwAXZcJ6ApJ29GlB2ypbTdOhUOTKKR8ytA2kMg6l
Ifw88ajLzpL4jAIHwwS3NOMonMD/9KgNLfQVgMxzuzsYyRYBmj7p9lXsYICNIvoe
nSn2nPJfw5g5PlMZ+qwxyNNMTOkui6qKCFoFS77TJq0hsbTh+x6azMfn8VVRwrL+
VRXPN2C9mAdyrVPw/XPjkTyCrXw8P6brXK6qW23Y14FRQ8dXke0rhMumWytquybM
ebURG75CUEXyykGbNGHoJa4ycypd5AA/LYR86mzRbs7Mxiqlmw3co8/C44n4XKM0
QungC3A3a98p1kNSIiBM9g2Ie+cgBw==
=pOxx
-----END PGP SIGNATURE-----

--Y5rl02BVI9TCfPar--


--===============5739087664045095893==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5739087664045095893==--

