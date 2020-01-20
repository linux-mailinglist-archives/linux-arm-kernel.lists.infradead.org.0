Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEF41428C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 12:04:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7H9kXZw/TJR0//gB4IREMYKaXdvDfgQh9EkuPDAE2Vo=; b=jlJhXMZvRrIjVn1YBCe2hSx/R
	ACahzX/dsz1cfmqYms2smyuNv//GBPLTi9Je50oKN4hkQol0E9l1r8vPOA4jQwZdsD+xYdCvOursp
	cOyzqucBsRS/XR6TjnSljNP5rizgLSqnGeoWbG1mBgo/QtyLz+rj9eLShqQIzmwm5ScqCctQLSoj8
	JOZqTsY9mSkE0+x+GMFiHoyEqMuralSUdzMehdGcYSYslJMFHRp37LnvOdBFNfbN14QZOoaWB7NI4
	/a4yV9N7c6pECUz+7FPzgLBwM2OXJTYuQ3xgID+CHqcZcj4+MzykTfIIzlEuZmm5vdELerp3sE93y
	DtKRtsIyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itUqr-000276-37; Mon, 20 Jan 2020 11:04:13 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itUqg-00026H-J9; Mon, 20 Jan 2020 11:04:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5AAEEAB98;
 Mon, 20 Jan 2020 11:03:59 +0000 (UTC)
Message-ID: <936f10bbeca467ea8ebc669280a50c688730689d.camel@suse.de>
Subject: Re: [PATCH] ARM: dts: bcm2711: Use bcm2711 compatible for sdhci
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stephen Brennan <stephen@brennan.io>
Date: Mon, 20 Jan 2020 12:03:51 +0100
In-Reply-To: <20200120041740.193485-1-stephen@brennan.io>
References: <20200120041740.193485-1-stephen@brennan.io>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_030402_773148_C50B85DE 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3365374820170287490=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3365374820170287490==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-1hEev43/tJ9sBH/p5ozK"


--=-1hEev43/tJ9sBH/p5ozK
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stephen,

On Sun, 2020-01-19 at 20:17 -0800, Stephen Brennan wrote:
> When booting Raspberry Pi 4B using a micro SDHC UHS class 1 card, the SD
> card partitions never appear in /dev.  According to the device tree
> bindings for Broadcom IPROC SDHCI controller, we should use
> "brcm,bcm2711-emmc2" compatible string on BCM2711. Set this compatible
> string, which allows these cards to be mounted.
>=20
> Signed-off-by: Stephen Brennan <stephen@brennan.io>

Your UHS class 1 card should work out of the box using the current kernel
version. Note that the device node is defined here:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arc=
h/arm/boot/dts/bcm2711.dtsi?h=3Dv5.5-rc7#n255

and enabled here:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arc=
h/arm/boot/dts/bcm2711-rpi-4-b.dts?h=3Dv5.5-rc7#n98

Regards,
Nicolas


--=-1hEev43/tJ9sBH/p5ozK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4liRcACgkQlfZmHno8
x/4HgAf+NZ4dXRnz4viAUpt3yt45XQkO90pfw8tprx62Kg/wpWACbrlLmpQFPAN1
J+TyaIUKBbYtLbEnpt2uXERW80/KfLJYTdoRf5cxFA9GUzGgMNQwr8Oy+L9VPXRm
sdYrsAZYC9DsSyHdUsxiDlOAGTDoWGvoogcpXML1xj9M/SDrNM2zUGLM2tIBJNGf
YN3/iq25yumk1zFVJ9Jp3zWEjGxUIUGenWgzVw/2G2GGyYByHM99lNa/M9dDPnrW
l8O8RaDq/S+qBeEPdRsInN4ZKIv/adIASRHbuM4ExTpJ+ecvOmVotfdNBZCBLE4K
fdGlhkO0iOwNtO0KiYA6IUdBjGNzMQ==
=Inmb
-----END PGP SIGNATURE-----

--=-1hEev43/tJ9sBH/p5ozK--



--===============3365374820170287490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3365374820170287490==--


