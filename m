Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF7614391D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:08:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=40y9/tWwGCnGFo9iGoR3bPHNXaThpr3C9oCu7tFG4WY=; b=acShPuwVSKxa/3HTD+NBivPxG
	LsrQioKcTofBtvzrAWo7uiFfb4irm0dRojH/Jvf80KA0DCulfOaGDGFFx/AduVlyzxMG1WpPFCiE4
	kLvgRBtdVWu1khgHVb6tAKqb9SYCZVGaRPTCT02+89zh/sGSa00cjMGOuQySq0mBX1Roy32OB7HKs
	gSAfNDzShKz5pONTqmyCrrhGSXf0PrsbjJWNbjlk/eap+Nue8U4vYHX72bdagpBJ6+NC7mVGyLRvC
	VcxAz9w1Xo0E+49LwxpWzWx3dQ6R36fQfYgBusdZTOlDU+fVuFt65r18C8+8/7FQKfBMyBTR0T6yK
	3OwbXVW3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itpWB-0005OR-GG; Tue, 21 Jan 2020 09:08:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itpVv-0005Mx-Oz
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 09:08:08 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06BAD20882;
 Tue, 21 Jan 2020 09:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579597679;
 bh=bgtnhmiV1JtWs2a+bSPsKzSbUBFjzhxvFmeI/dg9mF0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZWRBXJArnV7LihpPa2j0CoOBerWiwDml+skQ+vQ6BQSDzol3mUkdGIzTQfgC1P66G
 VeKEcX3kknNxYsqbeHh4X7cKTXasfBEPkzfPvHVefqpHUHzzeZnVmU+jNQLjR2py8k
 XhXqBKbJnzi+a2hqKkyF0Ft6Plz3bfr9mjZMFiTI=
Date: Tue, 21 Jan 2020 10:07:57 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH 8/9] arm64: dts: allwinner: pinebook: Fix backlight
 regulator
Message-ID: <20200121090757.y4du3fg2jdwz6itc@gilmour.lan>
References: <20200119163104.13274-1-samuel@sholland.org>
 <20200119163104.13274-8-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200119163104.13274-8-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_010759_835632_DE9A869F 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0042122787390273499=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0042122787390273499==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lqx7ih2sgpkglldi"
Content-Disposition: inline


--lqx7ih2sgpkglldi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jan 19, 2020 at 10:31:03AM -0600, Samuel Holland wrote:
> The output from the backlight regulator is labeled as "VBKLT" in the
> schematic. Using the equation and resistor values from the schematic,
> the output is approximately 18V, not 3.3V. Since the regulator in use
> (SS6640STR) is a boost regulator powered by PS (battery or AC input),
> which are both >3.3V, the output could not be 3.3V anyway.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Applied, thanks!
Maxime

--lqx7ih2sgpkglldi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXia/bQAKCRDj7w1vZxhR
xZCRAQD4o2+VihgD9ezDkitpsVkWEhvTpmqISioxCFC8JHhG2wEAi2Vm6h91eY4r
Ic1x8Kqc1qdxiURvYFFfOv/51z5z/gU=
=XXUo
-----END PGP SIGNATURE-----

--lqx7ih2sgpkglldi--


--===============0042122787390273499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0042122787390273499==--

