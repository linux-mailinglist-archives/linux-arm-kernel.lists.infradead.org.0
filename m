Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB9B130F2A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 10:04:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8lUwUdoahkmW58TCs6YEpgG7Wd4nSQLQfcI3D+QjRl8=; b=dwkB2oLKwKkaSoGTAENxVzeaW
	h/Yfg96+IKSVbKxkcN/syEuswClm140fS4gxXOGpAUV/AFk1iQatvDLwUwshiFN01pqc7WRNpOYH2
	bmfK21Q8rZhK0bTbDvxq7k/1m9g/o6UZHzko1oTEEaIZtng9cyXXM2ZLmu4cE4LaogObjpe/NGwWK
	pIHrfKXvpragApBMi7kPpwNSdBepfDDrSs+dO3ExinPGVKI52OiITpdqTYJQO35VQpuXTepCjj8V+
	8PfDFFgoaqyl1qg//HVPOnMPvoQ6Hm/Gf8gX27Uxvl/rXpAsoDVdpHtDRMne0MEDx6ymcXxQpSuuP
	SI+HnEniQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOJa-00052a-IV; Mon, 06 Jan 2020 09:04:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOJS-000525-Gn
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 09:04:39 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE63420848;
 Mon,  6 Jan 2020 09:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578301478;
 bh=R3lW9glk35yqVg/VMUPlgtgKJaOq6vpMeSYGhqpP9W4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RwJnsuwNw5lvNc/hFugCS7jH+AyWz2EosczmYU1b8bPv1vbkOR4XE2DCDW3aAClCw
 aXWledUZ14t5ahd869zvO3QR59ypBL0kpmWBIeeO86x93qf+tzi96P+OmpwjCZDIdI
 SFh4KFbMsLJBSkt6GcPjGzpaekhawhtF/FIYXQAg=
Date: Mon, 6 Jan 2020 10:04:36 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] arm64: dts: allwinner: sun50i-a64: Use macros for newly
 exported clocks
Message-ID: <20200106090436.lz7kndaozhjwwpux@gilmour.lan>
References: <20200106090030.9165-1-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200106090030.9165-1-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_010438_571442_CD9A1A75 
X-CRM114-Status: GOOD (  11.48  )
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8224506926174199886=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8224506926174199886==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="z7uhvbuxo4svguyf"
Content-Disposition: inline


--z7uhvbuxo4svguyf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 06, 2020 at 05:00:30PM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> A few clocks from the CCU were exported later, and references to them in
> the device tree were using raw numbers.
>
> Now that the DT binding header changes are in as well, switch to the
> macros for more clarity.
>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Applied, thanks!
Maxime

--z7uhvbuxo4svguyf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhL4IwAKCRDj7w1vZxhR
xWXbAP9Ors18Np2z+FcY5vnpLSAVawSLtt6//SNXrjCIJVWkyAD/Zm/E8yIG+xZN
5azAfdesLHweGYLYYFn1bz6nco+2vQM=
=tHnk
-----END PGP SIGNATURE-----

--z7uhvbuxo4svguyf--


--===============8224506926174199886==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8224506926174199886==--

