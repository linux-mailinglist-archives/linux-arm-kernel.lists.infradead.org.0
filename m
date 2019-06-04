Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5B834068
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:37:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3SUjFU2ry8iC3aSdEtCUTAJ3YjSBNVRGDucbsWsvcCc=; b=leVNLGT6C2NFMzYwVG6vW49Rl
	Y46S6f1po9uig2/LvDA6JZo3SRSV4SCfUxZnVeLZHRLRGWpbtzfY51YQAt1D2AmdZAGF9oqBDYDpa
	NO9TwqGqXnCo10c67h80oU/YCx9Fjvx9vJ9NWnp9tnQXwdOpWWIwd2mnkJWD67/x/1SzGJMJiNcM1
	R1tygXtGBSJDP0nZ1/bOpAatgpd/p5Xelus310NTWTP9zIatRN48iY70DVvQUuHde44mnTrChY8qT
	pIjs7d75Pu+u+KHfFO6Gid1FNXfuSZ0DLwiI3sjpjxnUF9NodMPy8pv2GxJZHEgRbPNBhzXRIjkAX
	VU0FTmcpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY40n-0006ck-KN; Tue, 04 Jun 2019 07:37:37 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY40h-0006cS-TA
 for linux-arm-kernel@bombadil.infradead.org; Tue, 04 Jun 2019 07:37:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eM/eAttt+PEr5TuNqr/hgqkZQFOHxz45i5w6jUfnXcc=; b=pSBTA1UAauUtPZihSbKFtfY5E
 bFvi10t74hG55zCSScSbIujq0F+Eds7eIalZkqb14t0Bl39/zGCB+ZSNsQj44Aa8fU/bVX+U7V7E6
 5vepIYHHiuKm0CQMQfujrP+uLNRVnUbhMDuFGHxgnwTTBGMz78PiByL/02YnhguE6u0t5gay0CxAm
 0Zd84YnVl+j8cmrGtoD5uEPpd1wP3UieaTqaijpqzwsw910YuufKgfuOOmmA4UzWDl4wOBK+2ISOT
 6g2bMugmZF9I0NquNtUNFqqvZiP3H99kHu0TYn0SbebHUS8JQgBtP06VyOGT90oHlSUZ7r94dfIFe
 Jz2sg5KQA==;
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY40e-00083O-FR
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 07:37:30 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id D5E191BF212;
 Tue,  4 Jun 2019 07:36:51 +0000 (UTC)
Date: Tue, 4 Jun 2019 09:36:51 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: codekipper@gmail.com
Subject: Re: [PATCH v4 2/9] ASoC: sun4i-i2s: Add offset to RX channel select
Message-ID: <20190604073651.gst57ki7ohzxcrqz@flea>
References: <20190603174735.21002-1-codekipper@gmail.com>
 <20190603174735.21002-3-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190603174735.21002-3-codekipper@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_083728_574115_BCFEE408 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, be17068@iperbole.bo.it,
 wens@csie.org, broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5249391785278062348=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5249391785278062348==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="azthyenqniabzk6h"
Content-Disposition: inline


--azthyenqniabzk6h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 03, 2019 at 07:47:28PM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>
> Whilst testing the capture functionality of the i2s on the newer
> SoCs it was noticed that the recording was somewhat distorted.
> This was due to the offset not being set correctly on the receiver
> side.
>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--azthyenqniabzk6h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPYfkwAKCRDj7w1vZxhR
xZFqAP9C7z4TKS6sO/uThXEHeSEOFsVxLA+hFezA6ZHPPwE+owD/YRL3Nd9adWWD
EG4ONA4mwLOBAc5utHFMpqL3ASmaTAA=
=3Iua
-----END PGP SIGNATURE-----

--azthyenqniabzk6h--


--===============5249391785278062348==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5249391785278062348==--

