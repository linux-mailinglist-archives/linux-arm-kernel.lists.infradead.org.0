Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 852AEF5F38
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 13:57:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ItrcD88urUjXu72yTxdJiz+SW5NgXQDOw2LotXhyuXE=; b=QeXLH/uMZtBlWuTBhD8E8Rzpw
	lISZMpJiB+4nC0O/MmuPh8z0jJfP8AOKv2EfHyLC2Z9ywt3tpAeBuqhxWN3/fuqSbMMw0KY0r+qFi
	mTwfSzb2VWopGixgikjv3dbENIgKEx13CD9RltNA+t+DOtzvvGfZhUvNxZpGqYFQK6ZXthDZ/IN8M
	fDNCFSw5+B1d37sTmTQ0p6+Kp7Ddfjf1Ctkg2Wg3yXEvplokedIkv5Md4Er6MFMicSRSGxBlNHkHP
	gtA9S0w4KKlnMhmx0eCeLjOlmGmdckOKnPxCo/stieq3wG8vZ2cdNIoSMJghM5o5mCf6lBYr62Fy9
	6WdJopcbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTQIp-0003Xn-IT; Sat, 09 Nov 2019 12:57:19 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTQIf-0003Wt-9x
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 12:57:11 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 72DDFFF806;
 Sat,  9 Nov 2019 12:56:57 +0000 (UTC)
Date: Sat, 9 Nov 2019 13:56:57 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Stefan Monnier <monnier@iro.umontreal.ca>
Subject: Re: [linux-sunxi] Re: [PATCH 1/3] media: cedrus: Properly signal
 size in mode register
Message-ID: <20191109125657.GB845368@aptenodytes>
References: <20191026074959.1073512-1-jernej.skrabec@siol.net>
 <20191026074959.1073512-2-jernej.skrabec@siol.net>
 <20191104100228.GD502900@aptenodytes>
 <7309638.L6IRxaGt1L@jernej-laptop>
 <20191105081034.GC584930@aptenodytes>
 <jwv1ruj7on7.fsf-monnier+gmane.comp.hardware.netbook.arm.sunxi@gnu.org>
MIME-Version: 1.0
In-Reply-To: <jwv1ruj7on7.fsf-monnier+gmane.comp.hardware.netbook.arm.sunxi@gnu.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_045709_482515_EE34F989 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7849508677161923813=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7849508677161923813==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gatW/ieO32f1wygP"
Content-Disposition: inline


--gatW/ieO32f1wygP
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Stefan,

On Thu 07 Nov 19, 09:24, Stefan Monnier wrote:
> > Do you know if we have a way to report some estimation of the maximum s=
upported
> > fps to userspace? It would be useful to let userspace decide whether it=
's a
> > better fit than software decoding.
>=20
> Even if the fps ends up too low for the player's taste, I can't imagine
> why software decoding would be preferable: it seems it could be only
> even (substantially) slower.  Or are there speed-up options in software
> decoding not available in hardware decoding (such as playing only every
> N'th frame, maybe?).

This may be true for the Allwinner case as we know it today but not true in
general. It could happen that the CPU is perfectly able to decode as fast a=
s or
faster than the hardware implementation, but userspace would still try to u=
se
hardware video decoding when it can provide good enough performance so that=
 the
CPU can do other things in the meantime.

Having a good idea of the expected performance is important for userspace to
make this kind of policy decision.

This is kind of a common misconception that hardware offloading always impl=
ies
a performance improvment. In our cases where the CPU is a bottleneck, it is
more often true than not, but this is by far not true in general.

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--gatW/ieO32f1wygP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl3Gt5gACgkQ3cLmz3+f
v9G+SQf/VkRK362zU+fWkU5EBkELTY0Sc9p6L4QbI9EJuQxHG4d6HimlPe7D2d8N
QVMKBoyL5Sy1bH02gwOwdqiCDWLdJRhLVqT0utO102Hl0kTA4///BZPXhPg+9eLX
Uw/gQA7tXTMH2qeT+VcP8DjcB9GKpFw4o5gpwDG1d/UE+hPBfKvqtI4zhh/GFz/l
FfXxD/SrAlDzjJQiHjxVGWSuqXn7GI/zoxV9r/A13WT1axiLgXt96RtiMZuIXg+4
FIS3K0LKB92gNA/eQYbwPCQjtrumoTA6r32t/zNzPDIRNE5J+fN53iSpcpB4pJfP
41eUPKEtTNQyum2cmUj3e50dl3+wWQ==
=/o/m
-----END PGP SIGNATURE-----

--gatW/ieO32f1wygP--


--===============7849508677161923813==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7849508677161923813==--

