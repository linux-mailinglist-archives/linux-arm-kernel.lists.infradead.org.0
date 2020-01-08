Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8BC134450
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 14:53:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hZ4oZu2zVTm+Ry7pikV68NRdGXZDiIOVOFfydkNwqiU=; b=F68k1i3VqKFGtJseS55U7xh6Q
	ZTTSW99B03s9d3B4tXe6+1DZTe47vNbh1YLOQjBXoNkmApsRf9HwkxslgyBMO/sW8jTiRKg7Ue/JA
	rOGkTgZXGWtVrYGK4q8WJcayGxI5Ip8Cgy71IJ2OJ/qfujaoVGNg8vTCll/V2jNytgrA1xFgbcbky
	QPTxcewObzYxGEa+aghzJmcmLuErrz1dSDWgiSlmSoxez6kALhzD+jF6Am0VilT/zGLAjs9PhIm5j
	UdNT/aV/tE9+t2G8PD2PPyKZKxKlc/JIP+7qnnmlOzxJMzP19/atWCPXVr/4/SZgbdyXxGbshlCaS
	bnIB61Ocg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipBmC-0002RY-PK; Wed, 08 Jan 2020 13:53:36 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipBm3-0002Qp-Su; Wed, 08 Jan 2020 13:53:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1B211ACA5;
 Wed,  8 Jan 2020 13:53:24 +0000 (UTC)
Message-ID: <5a9d1f01a8b7c8f42ef0819a40d364e7e1c07f2f.camel@suse.de>
Subject: Re: [RFC] ARM: add bcm2711_defconfig
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, Stefan Wahren <wahrenst@gmx.net>
Date: Wed, 08 Jan 2020 14:53:22 +0100
In-Reply-To: <5db5ed47-adab-8d31-c3f7-4d7f63258e22@gmail.com>
References: <20200107172459.28444-1-nsaenzjulienne@suse.de>
 <3688a55b-e929-6cef-66c6-affed97d938b@gmx.net>
 <65e976494676a7081b154961ba51048892c2a779.camel@suse.de>
 <5db5ed47-adab-8d31-c3f7-4d7f63258e22@gmail.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_055328_223657_7847DDB3 
X-CRM114-Status: GOOD (  24.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mbrugger@suse.com, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, hch@lst.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6072148649993598787=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6072148649993598787==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Pz74x58BEFpsl0iTPxtD"


--=-Pz74x58BEFpsl0iTPxtD
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-01-07 at 10:28 -0800, Florian Fainelli wrote:
> On 1/7/20 10:11 AM, Nicolas Saenz Julienne wrote:
> > On Tue, 2020-01-07 at 19:06 +0100, Stefan Wahren wrote:
> > > Hi Nicolas,
> > >=20
> > > Am 07.01.20 um 18:24 schrieb Nicolas Saenz Julienne:
> > > > The Raspberry Pi 4 depends on LPAE in order to use its PCIe port, w=
hich
> > > > is essential, as it ultimately provides USB2/3 connectivity. As thi=
s
> > > > setup doesn't fit any generic purpose configuration this adds
> > > > bcm2711_defconfig which is based on the current Raspberry Pi founda=
tion
> > > > config file[1] with as little changes as possible
> > >=20
> > > i really dislike the Foundation config file, because it contains so m=
any
> > > unnecessary features. Bisecting with such a kernel config is horrible=
.
> > >=20
> > > How about finding a compromise between bcm2835_defconfig and
> > > multi_v7_defconfig + LPAE?
> >=20
> > If there is a consensus this is the right approach (creating a new conf=
ig
> > file), I'll be happy to try that out.
> >=20
> > Now that I think of it, maybe we shouldn't add bcm2711_thermal into
> > multi_v7_defconfig.
>=20
> It there a mechanism that can be used such that bcm2711_defconfig would
> be simply a fragment that enables CONFIG_ARM_LPAE=3Dy (and other relevant
> 2711 only options) and that you could easily run/test with, something lik=
e:
>=20
> ARCH=3Darm make bcm2835_defconfig+bcm2711_defconfig
>=20
> or something along those lines?

Well I found out about: 'scripts/kconfig/merge_config.sh' which more or les=
s
does that. I think we could use it to build bcm2711_defconfig based off
bcm2835_defconfig. Or even better, create a multi_v7_lpae_defconfig. See:

Author: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Date:   Wed Jan 8 14:30:56 2020 +0100

    ARM: Add multi_v7_lpae_defconfig

    The only missing configuration option preventing us from using
    multi_v7_defconfig with the RPi4 is ARM_LPAE. It's needed as the PCIe
    controller found on the SoC depends on 64bit addressing, yet can't be
    included as not all v7 boards support LPAE.

    Introduce multi_v7_lpae_defconfig, built off multi_v7_defconfig, which =
will
    avoid us having to duplicate and maintain multiple similar configuratio=
ns.

    Note that merge_into_defconfig was taken from arch/powerpc/Makefile.

    Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 16d41efea7f2..bf6379c718ee 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -359,6 +359,20 @@ archclean:
 # My testing targets (bypasses dependencies)
 bp:;   $(Q)$(MAKE) $(build)=3D$(boot) MACHINE=3D$(MACHINE) $(boot)/bootpIm=
age

+# Used to create 'merged defconfigs'
+# To use it $(call) it with the first argument as the base defconfig
+# and the second argument as a space separated list of .config files to me=
rge,
+# without the .config suffix.
+define merge_into_defconfig
+       $(Q)$(CONFIG_SHELL) $(srctree)/scripts/kconfig/merge_config.sh \
+               -m -O $(objtree) $(srctree)/arch/$(ARCH)/configs/$(1) \
+               $(foreach
config,$(2),$(srctree)/arch/$(ARCH)/configs/$(config).config)
+       +$(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig
+endef
+
+PHONY +=3D multi_v7_lpae_defconfig
+multi_v7_lpae_defconfig:
+       $(call merge_into_defconfig,multi_v7_defconfig,lpae)

 define archhelp
   echo  '* zImage        - Compressed kernel image (arch/$(ARCH)/boot/zIma=
ge)'
diff --git a/arch/arm/configs/lpae.config b/arch/arm/configs/lpae.config
new file mode 100644
index 000000000000..19bab134e014
--- /dev/null
+++ b/arch/arm/configs/lpae.config
@@ -0,0 +1 @@
+CONFIG_ARM_LPAE=3Dy


Any thoughts? Is this a little bit too much?

Regards,
Nicolas


--=-Pz74x58BEFpsl0iTPxtD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4V3tIACgkQlfZmHno8
x/6jOAgAoN/mmLCXKOcKRSuMKnXFz/4jBSMipiV1UortOTl1lB8UVJ7xubzhwh7j
MGyxoWxFnVUlXRDv/4FURdBOf/rHSFiVLvuGYENqokIN6oGdu5NY/podtMvLz9pC
7c4O1EzWihHucr26UFOSKvkUQUzNgOdDYK2lPxX3WKqnv3UM2SI9HA6CnsbTQ8pF
Ap/4ecMaSHuILeLfbssj8UnAtktFRpuIVEDnacB+lYbXzEQ28VT7G0jA437Riu3u
b78kqT8w/x+MRCprCEWlgAyM/LU2WgJ1zirWueCLNqvnJ+UiQ4B/jriAnuU2J0Zw
6VMX87VErdcu9AFkBvd0gxyw2Hh8Og==
=8vjh
-----END PGP SIGNATURE-----

--=-Pz74x58BEFpsl0iTPxtD--



--===============6072148649993598787==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6072148649993598787==--


