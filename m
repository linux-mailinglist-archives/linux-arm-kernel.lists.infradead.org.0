Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B10201BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 10:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MbaP5BCALbpD6BLJTmLbUziyoJ1MMob/uvD9zTspwvo=; b=HHoBfqQsjqnWZsnmzyXjQ8xF+
	Dg8yB5D1RkeJU0agFIw5vrMI+mAYfB5tPlPipv1M+rZkf9E1sPcrpOlIQ0yevWwYITmgjFVSogSHT
	RxV9MC7yWAVF0vkO+rsPIQQAB97Xj+14tNm82Dej3dgq2iY7K0ZbCMNPHx+11FY6CmSZi4X6E71kK
	MdsB0CDqAhEsVeHH7L+3RnJiQG5I7ngJ+URJ0L3ui2kqSBOJqZ2PP5kOiVFL3BPYofFgFOCXJIirI
	Py8JYr42YrNSNQtlgfBIKpYrX4pScWCJZ9xvK+zKqMFUsBid2cioCw0Gs7zXHi/Uz0Ln7x8DGEouK
	lmqJ6m8fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRC8q-0000qg-S5; Thu, 16 May 2019 08:53:32 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRC8W-0000ec-RB
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 08:53:14 +0000
X-Originating-IP: 80.215.246.107
Received: from localhost (unknown [80.215.246.107])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 377AD4000E;
 Thu, 16 May 2019 08:52:57 +0000 (UTC)
Date: Thu, 16 May 2019 10:52:57 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: orangepi-win: Add wifi
 and bluetooth nodes
Message-ID: <20190516085257.tbli227f7mm3daac@flea>
References: <20190514205445.11591-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20190514205445.11591-1-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_015313_026504_4C340E22 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1714225561191276434=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1714225561191276434==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5iqdhuknfkakdubp"
Content-Disposition: inline


--5iqdhuknfkakdubp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 14, 2019 at 10:54:45PM +0200, Jernej Skrabec wrote:
> The AP6212 is based on the Broadcom BCM43430 or BCM43438. The WiFi side
> identifies as BCM43430, while the Bluetooth side identifies as BCM43438.
>
> WiFi is connected to mmc1 and the Bluetooth side is connected to UART1
> in a 4 wire configuration. Same as the WiFi side, due to being the same
> chip and package, DLDO2 provides overall power via VBAT, and DLDO4
> provides I/O power via VDDIO. The RTC clock output provides the LPO low
> power clock at 32.768 kHz.
>
> This patch enables WiFi and Bluetooth on OrangePi Win boards and adds
> missing LPO clock on the WiFi side. PCM connection also exists for
> Bluetooth audio, but it's not used here.
>
> Bluetooth UART speed is set to 1.5 MBaud in order to be able transmit
> audio. While module supports even higher speeds, currently sunxi clock
> driver doesn't support higher speed.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Queued for 5.3, thanks

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--5iqdhuknfkakdubp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXN0k6QAKCRDj7w1vZxhR
xcpbAP94oL8fh1mlEB3a33RqRRsd7gvpgLccANADmt8VCZXoqwD/e406SIQCBsZn
wQUuZCMJTyAcG0gQw7aYdlXTEqtpaAg=
=3MUP
-----END PGP SIGNATURE-----

--5iqdhuknfkakdubp--


--===============1714225561191276434==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1714225561191276434==--

