Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A34EB0500
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 22:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=46VS4rxBckjbbsnHG9859mONEcoBe0RO5QirFopVsJs=; b=MPh5GXm2h+E7Brqa5Bhv5qqdH
	f+dKnKUDiAiM7mP2rX05IMD3YB/ZACG2CNxDzDDWdRHGpMiaaZtq8PMSXnXZXp+eZt21u/mM/FX0g
	LszVTPM962bdCxvoZKm1/3JNM85P5XGux/cm2sYz5A2Ky89/zvj0tktxyeaGYJcqey/ii80WoOubw
	87m4iTx+c6I197/B5p3Y6/FNQxJPviTo3yEL+WLvbflvW8MsRoIODm+bwRt8ivf/A6VqArpmbs3ro
	N69DSXQNbGvo09/UeWqmvuDmKBO9mr1g7o3aUiWPhWl0dvniCvZcvf9WEyCkVQZN7VS44WsnUPXKd
	el3selHdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i89Y5-0005zu-72; Wed, 11 Sep 2019 20:49:09 +0000
Received: from anholt.net ([50.246.234.109])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i89Xo-0005zZ-Fn
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 20:48:54 +0000
Received: from localhost (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id B20CF10A37A2;
 Wed, 11 Sep 2019 13:48:46 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
 by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id QFhPKD3VB0id; Wed, 11 Sep 2019 13:48:45 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 70C5D10A379E;
 Wed, 11 Sep 2019 13:48:45 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
 id A112E2FE2E27; Wed, 11 Sep 2019 13:48:46 -0700 (PDT)
From: Eric Anholt <eric@anholt.net>
To: Stefan Wahren <wahrenst@gmx.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>, boris.brezillon@bootlin.com
Subject: Re: [PATCH] Revert "ARM: bcm283x: Switch V3D over to using the PM
 driver instead of firmware."
In-Reply-To: <1567957493-4567-1-git-send-email-wahrenst@gmx.net>
References: <1567957493-4567-1-git-send-email-wahrenst@gmx.net>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1
 (x86_64-pc-linux-gnu)
Date: Wed, 11 Sep 2019 13:48:46 -0700
Message-ID: <87ftl2lftd.fsf@anholt.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_134852_564728_280B5BCF 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [50.246.234.109 listed in list.dnswl.org]
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
Cc: stable@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: multipart/mixed; boundary="===============2297618593606822930=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2297618593606822930==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Stefan Wahren <wahrenst@gmx.net> writes:

> Since release of the new BCM2835 PM driver there has been several reports
> of V3D probing issues. This is caused by timeouts during powering-up the
> GRAFX PM domain:
>
>   bcm2835-power: Timeout waiting for grafx power OK
>
> I was able to reproduce this reliable on my Raspberry Pi 3B+ after setting
> force_turbo=1 in the firmware configuration. Since there are no issues
> using the firmware PM driver with the same setup, there must be an issue
> in the BCM2835 PM driver.
>
> Unfortunately there hasn't been much progress in identifying the root cause
> since June (mostly in the lack of documentation), so i decided to switch
> back until the issue in the BCM2835 PM driver is fixed.
>
> Link: https://github.com/raspberrypi/linux/issues/3046
> Fixes: e1dc2b2e1bef (" ARM: bcm283x: Switch V3D over to using the PM driver instead of firmware.")
> Cc: stable@vger.kernel.org
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Acked-by: Eric Anholt <eric@anholt.net>

I wish someone with firmware source had the time to look into why using
open source drivers to drive this hardware was failing, but I don't have
that time or code any more.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAl15Xa4ACgkQtdYpNtH8
nui29hAAghQUxmPKCpEEJiONuOiuIC7ozMT9p5wZ2f3fdWyJdDFBBLGldPea7SgA
mjNWZ2dk4yUEY2BFKVjoeMCCs3KMdiuqzi+6kkAaK21zflRA1A65Vw65/tfyvzdw
iKL24+/dAH9A0k+UcZZ5ujptijaOCdnxif1lc4+hyADe1Oxw5E8Be8d9GvadZwaU
mOG+16Sf0U3OcbGOvfPndIrHeKHgDpVN+U0MNUlEx1HMh7yfXT0QtK7iSwabjWZF
FJ27WGqPaEo3+LMGCOSj5TEA72B08oEvl0nbl562dFWT6mau3R9DiCEZcWNODMhZ
YAZ+fxJR3MeHsr8KdxH1p6Z9eDNCxaa9LOz6+Tmn5SEUlaMdiNFi84FjMgct9JoK
3O1h8tzijpjvifSvwa1r4jVNMi3y+8vIZ+RTyGCTB9yoye0Hs+zJgtSu3vbjs6Nz
Scd3TjCslZBPlm7TpSAFCyIowuMOGmWASq0eoOxRBMGTQYPLorqR+llenYOCbtEC
l9Vx3WdoPgH2Zd+Hof9Jn7ZDwDrtyFXkOsFwSmoRkVzPTH9u108rTX8+AkyxDybt
CvhnFGxUg2cOTTTIUoDYFpxQN7bTzjIqq7iu5iVQlXzq9js5/TovcdA6jO9u5B4N
2fVQGEGrfJeWZM0ICoVDaILnEHdASZYD/s3nbIq4/Jkrmu40MMc=
=vNM5
-----END PGP SIGNATURE-----
--=-=-=--


--===============2297618593606822930==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2297618593606822930==--

