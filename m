Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37096F7D03
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 19:52:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6sTM1owXHXzRcQd77Z/8Qff8vmNTRHRbsvoZmO7wQbU=; b=AkT+GF9bBB5LpY/25e8yKNmtw
	jJpLTp79OKjJcRlR7l04kTHCSkVYhmLZ3UHb04/FVUqX/UZyXarbx4SblBjkidS+D7DmrqQawVQiU
	7SnZkkjyT6uAsBkjSpYwPlhfwxSzbX4RPr/vqJgaf6Xng1AtWKG1PLCw+oyXQUrWsVuNDRN60cxKW
	3g9gJNLJ7UpBkFUuVBZ7CVSuA0NDyGkMPYqLfQyhlQYy8o7d1r2GCgaBWXtg1Lw1GCc/z1k/J+ObG
	w83jFYbCvZtHVWBzAC5AElpYmCn46rtF9zMKIExc97CbNs284xQjH74w4+DqiR4k5njME9Cq662IT
	64pTPL1qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUEnv-0000np-08; Mon, 11 Nov 2019 18:52:47 +0000
Received: from cyberdimension.org ([2001:910:1314:ffff::1]
 helo=gnutoo.cyberdimension.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUEnn-0000n2-J1
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 18:52:41 +0000
Received: from gnutoo.cyberdimension.org (localhost [127.0.0.1])
 by cyberdimension.org (OpenSMTPD) with ESMTP id 800aa348;
 Mon, 11 Nov 2019 18:51:08 +0000 (UTC)
Received: from primarylaptop.localdomain (localhost.localdomain [IPv6:::1])
 by gnutoo.cyberdimension.org (OpenSMTPD) with ESMTP id f44591f4;
 Mon, 11 Nov 2019 18:51:08 +0000 (UTC)
Date: Mon, 11 Nov 2019 19:52:19 +0100
From: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] ARM: dts: add touchkey nodes for midas
Message-ID: <20191111195219.768cee6d@primarylaptop.localdomain>
In-Reply-To: <CAJKOXPcuPQa-jVtFMfiseuXq3P=mxc6DecCCj_j-y2NauMqTdA@mail.gmail.com>
References: <20190806165749.29468-1-GNUtoo@cyberdimension.org>
 <CAJKOXPcuPQa-jVtFMfiseuXq3P=mxc6DecCCj_j-y2NauMqTdA@mail.gmail.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_105239_929047_1BAA6028 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Simon Shields <simon@lineageos.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3819196420217787900=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============3819196420217787900==
Content-Type: multipart/signed; boundary="Sig_/VwUj5Uxs2/.bNW2wrYwyjZ/";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/VwUj5Uxs2/.bNW2wrYwyjZ/
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed, 7 Aug 2019 10:13:04 +0200
Krzysztof Kozlowski <krzk@kernel.org> wrote:

Sorry for the delay.

I had to find and buy N710x to get faster turnarounds for testing as
before I had to borrow an N7100 from a friend to do the testing there
as well.

I've addressed most of the comments and I'll send a v2 soon.

> > diff --git a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
> > b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi index
> > ce87d2ff27aa..e71f103ab940 100644 ---
> > a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi +++
> > b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi @@ -166,5 +166,9 @@
> >  &s5c73m3 {
> >         standby-gpios =3D <&gpm0 1 GPIO_ACTIVE_LOW>;   /* ISP_STANDBY
> > */ vdda-supply =3D <&ldo17_reg>;
> > +};
> > +
> > +&touchkey_reg {
> > +       gpio =3D <&gpm0 0 GPIO_ACTIVE_HIGH>;
>=20
> You break existing code...
I didn't understand this comment.

> Let's keep the name as in schematics - "LED_VDD_3.3V"... which brings
> us to the question is it really needed for touch keys? or for display
> panel?
On I9300, I9305 and n7105 without the touchkey_reg node, the keys still
work but the keys backlight doesn't.

Denis.

--Sig_/VwUj5Uxs2/.bNW2wrYwyjZ/
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEeC+d2+Nrp/PU3kkGX138wUF34mMFAl3JreMACgkQX138wUF3
4mOrIQ//UCDhhDrGuROq6jA977hgpo3Z9eXY6Od7/ZhEeWm9dS7oogxe+iPs3ELM
8AcIOT787kc3iImwjIG1GBQ9y0u/YyVsayOV84qzcuYCSHo6AFDbvRTXZA9NbSVs
ymLS1ysXc2Dq4nWORRBghMK0t49nFH3C9TM3j0m9xKiULaDEgIQRAVlzcStpRbrl
HS/WniEooXlt3k5/GyHyyF32lK76RDTaiunB3eXzDYYS50I2uSq2bvt8nQEK8bz8
WOvHRn8FviehIpZbpLl2UC8sGA4JPmjNMlaAFyuvQP+Q0l3JNiDC/pBzVggtmlCB
ZDSc04xwLPXNoJ6eBrZ5ZA5ZV2t4TC74svSdwp6FHGfmft/Djj52Zfn6stSPVxz9
5dqTfWg3T1Xl5CbsiMOCaI/L6CD6e09pNrVodXdJHMfME6SpCjXj2hdqNKAAFD3+
c0QW3h5EnbYwnOVk9XjwmyJyXYMT4AKaXyO36z20Nf6jU4+MxPM7qi+luk0baKCc
fsuELIQtOB9mtgBl7y3W4eoqHe35HDVXz/XDIFyT4Lj4gST+8nVopdI9nza7WhU4
qlgV9RHcd5782r0oARLzWqGjt3XM+I07DBOm3madxuuaduqFL114DRa38EiAuvxB
QLrlLRCa4qhfEHEFbltZ+VBuf2vp5AlCUuc0/cOzbxqHlzeiPk0=
=soj+
-----END PGP SIGNATURE-----

--Sig_/VwUj5Uxs2/.bNW2wrYwyjZ/--


--===============3819196420217787900==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3819196420217787900==--

