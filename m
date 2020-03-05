Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 649A917A355
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 11:44:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BM+khvBlkPUM9RPw8Q5ixqz8zeMukOcuUczSyMKBUTw=; b=AMi1Akdi+XfQANcK8E1JECYG2
	Y5UeOweQhkQOclhLZm0XolWCMpOmtpjgijA8PUDx+GZXX5RYUDVUMEjHvxoYIp+pagSbReTr+1IcE
	40nbSDaIwwNoWQFPvNK7tj+hiQfCWELymByBEMsITH4Y6NZdGsoHLETayA1IhR7L6uT4w0TY9+yhN
	Sc+qYvh2h82WWyU4QtZXS+MvvODEE8REUa5DTS2TcQj58JYYJGUo8wPyV4TQWaWtCGQUxJGgIKDur
	zkacXVlnE8Wx91817o6M+j3DIguVF+R8NS1rHBcJ9YqDnABbJ+6DHkivNGxwBQxK8TfEn0jEtrqKU
	1xOiWC4Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9nzf-00034D-46; Thu, 05 Mar 2020 10:44:43 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9nzV-00033F-Vm; Thu, 05 Mar 2020 10:44:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id BEF25B239;
 Thu,  5 Mar 2020 10:44:26 +0000 (UTC)
Message-ID: <f2ec22160ac86aec8d252ade7d6eb8789777cc42.camel@suse.de>
Subject: Re: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Rob Herring
 <robh+dt@kernel.org>,  Mark Rutland <mark.rutland@arm.com>, Florian
 Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,  Scott
 Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 Eric Anholt <eric@anholt.net>
Date: Thu, 05 Mar 2020 11:44:23 +0100
In-Reply-To: <d3d40174-9c08-f42f-e088-08e23c2dc029@i2se.com>
References: <20200303173217.3987-1-nsaenzjulienne@suse.de>
 <736f0c59-352b-03b2-f77f-bfc22171b3fb@i2se.com>
 <03fcb1e2bc7f3ff389b6dfbf3964e159a93ae835.camel@suse.de>
 <d3d40174-9c08-f42f-e088-08e23c2dc029@i2se.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_024434_311818_E10B8030 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, wahrenst@gmx.net,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3517167788059717643=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3517167788059717643==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-1e/ycMxHHlpwCahVXF7n"


--=-1e/ycMxHHlpwCahVXF7n
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stefan,

On Tue, 2020-03-03 at 20:24 +0100, Stefan Wahren wrote:
> > > > Note: I tested this on RPi3b, RPi3a+ and RPi2b.
> > > as i already wrote this prevent X to start on current Raspbian on my
> > > Raspberry Pi 3A+ (multi_v7_defconfig, no u-boot). We must be careful =
here.
> > >=20
> > > I will take a look at the debug UART. Maybe there are more helpful
> > > information.
> > It seems we're seeing different things, I tested this on raspbian
> > (multi_v7_defconfig) and on arm64. I'll try again from scratch tomorrow=
.
>=20
> My modifications to the Raspbian image (from 13.2.2020) are little:
>=20
> - specify devicetree to config.txt
> - change console to ttyS1 and remove "silent" in cmdline.txt
> - rename all original kernel7*.img
> - copy dtb and kernel7.img to boot partition
> - copy kernel modules to root partition

Would you mind retesting with the latest linux-next? I validated an image b=
ased
on 5.6.0-rc4-next-20200305-00001-g285a7a64cd56 and a fresh raspbian downloa=
d on
RPi3a+ without X issues.

> The debug UART works fine, maybe the dmesg gives us a hint:

[...]

> [    8.451520] vc4_hdmi 3f902000.hdmi: vc4-hdmi-hifi <-> 3f902000.hdmi
> mapping ok
> [    8.451541] vc4_hdmi 3f902000.hdmi: ASoC: no DMI vendor name!
> [    8.465617] vc4-drm soc:gpu: bound 3f902000.hdmi (ops vc4_hdmi_ops
> [vc4])
> [    8.466033] vc4-drm soc:gpu: bound 3f806000.vec (ops vc4_vec_ops [vc4]=
)
> [    8.466159] vc4-drm soc:gpu: bound 3f004000.txp (ops vc4_txp_ops [vc4]=
)
> [    8.466292] vc4-drm soc:gpu: bound 3f400000.hvs (ops vc4_hvs_ops [vc4]=
)
> [    8.466649] vc4-drm soc:gpu: bound 3f206000.pixelvalve (ops
> vc4_crtc_ops [vc4])
> [    8.466889] vc4-drm soc:gpu: bound 3f207000.pixelvalve (ops
> vc4_crtc_ops [vc4])
> [    8.467154] vc4-drm soc:gpu: bound 3f807000.pixelvalve (ops
> vc4_crtc_ops [vc4])
> [    8.467262] vc4-drm soc:gpu: bound 3fc00000.v3d (ops vc4_v3d_ops [vc4]=
)
> [    8.467272] checking generic (1e330000 8ca000) vs hw (0 ffffffff)
> [    8.467278] fb0: switching to vc4drmfb from simple
> [    8.473639] Console: switching to colour dummy device 80x30
> [    8.473714] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013)=
.
> [    8.473718] [drm] Driver supports precise vblank timestamp query.
> [    8.476777] [drm] Initialized vc4 0.0.0 20140616 for soc:gpu on minor =
0
> [    8.534359] Console: switching to colour frame buffer device 90x30
> [    8.550245] vc4-drm soc:gpu: fb0: vc4drmfb frame buffer device

I get the exact same results as you here.

Regards,
Nicolas


--=-1e/ycMxHHlpwCahVXF7n
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5g2AcACgkQlfZmHno8
x/4IlQgApYGk9IyBIGZXZU7cjQ4U0IGcYwkZZIy8r4vLrNLOKHCg8uEZpLk8Kvim
wux9hWhjqbuYV1Q7/MEgioV+IUv4mkKOZxZodXy8/cf8Zq8mPV3FgY6hX2IlVXdt
CkSlN4cth5Kq35oQm+W6NNWAdOQTabix30MRbfZ4sL8JAoL12DBdt1DQpMkEN2az
zsxwZDV5LBe655F75XcBBCnWnrSQWeAZySsBtwsJidSqfepsdiVSAlYonoD+4tiW
a05qYn+C51jrnxQqMtkfuFxfz8q5Kjd+zS8Mb9lhAqtS7mVPM1XMlJd401+fYdq4
RMUXbtQ0juTl/b7yJowqjUiacvGwWg==
=Rxs/
-----END PGP SIGNATURE-----

--=-1e/ycMxHHlpwCahVXF7n--



--===============3517167788059717643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3517167788059717643==--


