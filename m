Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 363B5131B4A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 23:25:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zM08bSbnymLhxf78ttOzl1J9Iz8+6QR2C0sJJwzxtcU=; b=diDtVMzUaJm4JUCP5w8xci0c8
	xMm8i05etCqmQdTBktyxdmrys3Oz2yT1LhXQKKyS7FJkqgjhd17b2LtFB5j9vCsun91iqEaEr4uNV
	l7+5ABxMd5QcRLpn1UGEVj7o/cQd9lfIFEAuHpXj24D1bO8fzf2uknY2d5+M1zN2Sr4PDFjrXwOHP
	YQ5hlTbONUfqymTlhoLODMh5R0Bw958jRfTMYfhn7jU//OZ//cdqgcO7VsR4HCfIJRuJTP+vJMFhW
	A5rgHEF5QQqg6iqR5a0GWxggG3RIVHkx42TNfJ18JJvSDXeXcfHcWz2uzJ7/pg31F0E1ZAe/sjqGp
	YXtd/2zJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioaok-0001Rm-KP; Mon, 06 Jan 2020 22:25:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioaoe-0001RH-Ge
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 22:25:41 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF9682072C;
 Mon,  6 Jan 2020 22:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578349539;
 bh=ZX86unXxx4sv5UExd0owvQGCi15svcqElrg7fVU5Sn0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QbsbchjVg1goNGiazbKdQTinY5NHAmDR83tXuYIjUM4vtoaTJ7F/PVcF0PCNaFiCP
 +veB/Ng+Kd28D8qu/JHgTCeoWetfvLkxZ715raUy3pfS5kCi5FGDnDn11zUJz1Fiv/
 eMeIT41hKZnl6HRRy+TBWps2Csft52XZrEMYVgZc=
Date: Mon, 6 Jan 2020 23:25:36 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH] FIXUP! ARM: dts: sun8i: R40: Add SPI controllers nodes
 and pinmuxes
Message-ID: <20200106222536.lq6br4lzgl7ctnrt@gilmour.lan>
References: <20200106140149.231960-1-andre.przywara@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200106140149.231960-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_142540_578643_04A5D692 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5134548036929076938=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5134548036929076938==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nhdxonr6vpa6sbtk"
Content-Disposition: inline


--nhdxonr6vpa6sbtk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 06, 2020 at 02:01:49PM +0000, Andre Przywara wrote:
> The DMA controller is not in the mainline DT, so remove the broken
> reference from the SPI controller to that node.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Reported-by: Chen-Yu Tsai <wens@csie.org>

Applied, thanks!
Maxime

--nhdxonr6vpa6sbtk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHQEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhOz4AAKCRDj7w1vZxhR
xfEKAQDMq+V8a3tM8gLUwgHS2y5nkMmHoul+iOjjgG4cvQVy4AD2IUN49ENV+v0D
yQNwQ8mdFxqFN70aj06Rgp+kiusGBQ==
=9V/J
-----END PGP SIGNATURE-----

--nhdxonr6vpa6sbtk--


--===============5134548036929076938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5134548036929076938==--

