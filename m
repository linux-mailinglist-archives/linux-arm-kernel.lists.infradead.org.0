Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A351174EB7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 15:01:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FYoT3vEDeyLkIgltdp0b9mxhBh8LNn23Q1KWBWxjkBo=; b=WhO
	KkBxWn8CP4ndNhxDPaT+7VLyCuJXIcsWt4hvySWNP/B/vT3MjvIn6E9AGUHMJ3drjfzlXwZkdobxK
	bCIZ6g0ZkfS+WP30gTpwM/flr9vCXaUA4FPoqAzhmvrWHBXTcXfshw9LKbmvtYP1lQ0OzhN4Rr5Fp
	usbdu2TbFGZ8GQMZzKT1rOpZ73wS7DwJhzkLCs5bZcsZV4WJqk5jkomwgbRuHpxzSvgReQzk5aDs9
	zI6nObLT5HC9VKrtqhmoeZ5WKPjuGTu/17Dy06KFQMWOUF1cAPzi5SB1Kb+uOB4PlMxKivFM8/gM3
	frFoXKlrCYRPMY5vgLIlq9z094LOJyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdNE-0006re-Ll; Thu, 25 Jul 2019 13:01:32 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdN0-0006qN-Gr
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 13:01:20 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 35D59C0009;
 Thu, 25 Jul 2019 13:01:13 +0000 (UTC)
Date: Thu, 25 Jul 2019 15:01:12 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: alsa-devel@alsa-project.org
Subject: Best representation for TDM devices
Message-ID: <20190725130112.3j2vi4dyngyr6yh3@flea>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_060118_713366_178D516F 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5392625376563764073=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5392625376563764073==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rddslzkshiyxhiyb"
Content-Disposition: inline


--rddslzkshiyxhiyb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

I'm currently working on a device that has two Analog's ADAU7002
connected to an I2S/TDM Controller (sound/soc/sunxi/sun4i-i2s.c, with
some modifications), over the slots 1/2 and 3/4.

The capture itself is working fine, however I'm not quite sure about
the way to expose those streams to the userspace.

Since I have two codecs, I have two links (described through
simple-card) and thus two subdevices. However, the microphones
connected are really separate streams, so ideally (I guess?) we should
have 1 subdevice per microphone.

An alternative would be that we capture the whole 4 channels and use
dsnoop to demux them, but trying to use the device directly (using
arecord -D hw:0) results in the ioctl to change the number of channels
being rejected, I'm assuming because each codec only has 2 channels?

So I'm a bit lost at this point about how I should go and expose
this. I couldn't really find any similar setup either in the
kernel. Any preferred way of doing this?

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--rddslzkshiyxhiyb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXTmoGAAKCRDj7w1vZxhR
xTKUAPwPcJzEqkkoUcUYtmz9PUBumusjyVSRBmCPSBM/U/pQ2AD/UQWf6Jlc3JJN
BX8LFvZSo3fF7enhh05KgQsqvLuhIQo=
=hz2z
-----END PGP SIGNATURE-----

--rddslzkshiyxhiyb--


--===============5392625376563764073==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5392625376563764073==--

