Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F3D1EE40E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 14:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=12iwzW2FQ4/0lQ7vISC6AZ+R2U7wSBq0mkaLm1lVbkk=; b=mDXRufD5F/W6I0kB6f16ool6r
	A+kvYcpSy3R5yOBQdayftPOcMi3aH0Ak3CPFxUcvRhxJ0ewYOtdGmldsgStM+mPDA7lN+ekv5ajia
	PwHQdeDlovJj4fTOSseEja9Wy4r2VNM4DZ57ith7uYR3/SApcoDwYvKhK7ZNXK5blifFbrp+4M9qy
	twtUuRjxeBdGxug6BjSxuu3xOtIKsreXYmBT/ZfijUmS//iR2Kqjb1kptePnracpqt0hTIPLBalxw
	gm/JWq4xgs76uZDVZEUnV8RRqT3DYeqOHSQXxa4Scw9hu5dHhCuVeysDmCtbLSff54DkI/wlLa62S
	c7KrCt6sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgodu-0004zE-Fq; Thu, 04 Jun 2020 12:06:42 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgodm-0004wg-8S; Thu, 04 Jun 2020 12:06:36 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 7EB4D1C0BD2; Thu,  4 Jun 2020 14:06:21 +0200 (CEST)
Date: Thu, 4 Jun 2020 14:06:21 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH] leds: mt6360: Add LED driver for MT6360
Message-ID: <20200604120621.GA3560@duo.ucw.cz>
References: <1591252004-12681-1-git-send-email-gene.chen.richtek@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1591252004-12681-1-git-send-email-gene.chen.richtek@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_050634_450233_CB20160F 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org, cy_huang@richtek.com,
 benjamin.chao@mediatek.com, linux-mediatek@lists.infradead.org,
 jacek.anaszewski@gmail.com, linux-leds@vger.kernel.org, matthias.bgg@gmail.com,
 shufan_lee@richtek.com, Wilma.Wu@mediatek.com,
 linux-arm-kernel@lists.infradead.org, dmurphy@ti.com
Content-Type: multipart/mixed; boundary="===============6122328698931078732=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6122328698931078732==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="uAKRQypu60I7Lcqm"
Content-Disposition: inline


--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> Add MT6360 LED driver include 2-channel Flash LED with torch/strobe mode,
> and 3-channel RGB LED support Register/Flash/Breath Mode
>=20
> Signed-off-by: Gene Chen <gene_chen@richtek.com>
> base-commit: 098c4adf249c198519a4abebe482b1e6b8c50e47

Does this need device tree binding, too?

> +++ b/drivers/leds/leds-mt6360.c
> @@ -0,0 +1,1061 @@
> +// SPDX-License-Identifier: GPL-2.0

Could we get GPL 2.0 or later?

Thanks,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--uAKRQypu60I7Lcqm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXtjjvQAKCRAw5/Bqldv6
8uu2AJ94mDQBXm5GCB+DGTjiC5seurSDSgCaA35bqtIrtU4tkebxxxG9yKvSs5E=
=/E8n
-----END PGP SIGNATURE-----

--uAKRQypu60I7Lcqm--


--===============6122328698931078732==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6122328698931078732==--

