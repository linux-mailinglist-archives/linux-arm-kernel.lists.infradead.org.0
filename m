Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA688195634
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 12:22:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9dg+vD8NHlDETHHHia6fXLYOVKPYmeSfkcxbIMXgp4o=; b=EsI8mSF36Pqq0GaZrfiNZ/Z8v
	stP4Eg57vNaGwkl4BCa6Cu28UgvgfRmzOONYy4NNdg1Zk3GLxH2XMpU3hHpHIp7yy68IbUahWuv/9
	5RPYrRKjEyo1YEMIXt2TwS7/x4xlaJNc7SAHuJH4Mr7bA3/BcYIPRft1/sgg4u03zmNO4M3mhC+Wh
	0uwvs5Efr2OWdkWFmIukqVfTOeJ4xiDchX2n+KW2v/mOdscO13ZY7tcRS4BG0GE40zwO0WtsXQ/SB
	Q8ehrl5Xm+V4oy11qBMu5ztMW4vCeRWnUC78lm50zAXrO61hp7u6BB9O3Oed0E+MJFJ6ZVtARFtlS
	pd+Me8O7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHn3w-0001Iv-AL; Fri, 27 Mar 2020 11:22:08 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHn3j-0001HO-Vv; Fri, 27 Mar 2020 11:21:57 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A486FADF1;
 Fri, 27 Mar 2020 11:21:54 +0000 (UTC)
Message-ID: <a4c38810b7cb10dcfadd2844320d1c9e5b6bc6f6.camel@suse.de>
Subject: Re: [PATCH v2 10/11] ARM: dts: bcm2711: Update expgpio's GPIO labels
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: adrian.hunter@intel.com, linux-kernel@vger.kernel.org, Rob Herring
 <robh+dt@kernel.org>
Date: Fri, 27 Mar 2020 12:21:53 +0100
In-Reply-To: <20200306174413.20634-11-nsaenzjulienne@suse.de>
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
 <20200306174413.20634-11-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_042156_168885_17A937BE 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: stefan.wahren@i2se.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 linux-mmc@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, phil@raspberrypi.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2150762826769031902=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2150762826769031902==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-6dBBE0GB6iAO/vrk1/4W"


--=-6dBBE0GB6iAO/vrk1/4W
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-03-06 at 18:44 +0100, Nicolas Saenz Julienne wrote:
> The 6th line of the GPIO expander is used to power the board's SD card.
>=20
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---

Applied for-next.

Regards,
Nicolas


--=-6dBBE0GB6iAO/vrk1/4W
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl594dEACgkQlfZmHno8
x/6u+wgAoZAyf4EZVgmQpaGO9pvDTSICjk4v7Buc27vRC/dI7eee8lpEKtHySjxS
ZFUZvrVtkH+1nI31qTADGEUvfLfGeZuhsl3PopdYT1L4Ajl8Wl/TgB2/jBwArPmT
FYjuPGIYtBXg4m9qzo/hWE1gPXZOTESW5dnu6zC2KkIadq4FtZl06U7PZTbQAggH
9REu3TOdgTvUwKmnOpTYRbfE2f5ei0Sjdem42mzLBDW5hy6i/I2zqL7qr+MT/v99
WaE0jbqdcRsAP7HwZRF2JGP63WiFWjkfNSpGd2/AE+ETi3BK+m3iufCX8FJBrgrt
Y+wvAAMZXkhGdHtI+fh9suxi1j+VKA==
=5tFi
-----END PGP SIGNATURE-----

--=-6dBBE0GB6iAO/vrk1/4W--



--===============2150762826769031902==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2150762826769031902==--


