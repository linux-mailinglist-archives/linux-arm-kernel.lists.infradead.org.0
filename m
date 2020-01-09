Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AA5135E57
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:33:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hqAFNiaJwievbr6LYCKQHjlEOqSSkhywhah8mxFIB7Q=; b=MBzwvBTYk815yrHyjMPSxBlEr
	ihqDIqZvMtVE4Os7DrJy/gnEP0tjJ75+loO29I0DFPkUGpuYixkeaFFKJCbM9TuQD4isknYmmBPZZ
	e8f9d4I3n5wvRFx3qqXysB8k8+RjMR04fa5ya/lHSh9Xrl2Bw6n28LU/Bw52RGc8+HpaCAobjOUhL
	k6vvaeHXrbJVi6w4fLfhNS37b4fDsUhZ+yuKvmVdm73QxrB85TadPN3G44yuAdecOJZ17WsA91BBz
	MsBvQGy78Zx6QMbAMRTUAK1p2PFqt2epGInl/o/2IRqgrBfxlozFLMYR4S96VHzg6/mbH/vu7qN7d
	iHerPiIIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipakR-0008GA-QC; Thu, 09 Jan 2020 16:33:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipakG-0008Fm-9C
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:33:17 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 77D4B2067D;
 Thu,  9 Jan 2020 16:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578587596;
 bh=4WvK/Vwr0t6fsucuKLCWVDS1adVfhfWQioHJ5iOeZRY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ydf7n9Fblw0iNZ7Arj3yiZSJiFz2NDxehhoAbru69iCdNO66RvhNsnfvoS8WDSNqs
 rAqX4tcjxr+8u8wFi1CgBA48Tic44A4o6BODfLxU6I/XNwcXLTCa3dfZVt+CUXJWCc
 RZeqKAIzAI5Hf5CruQW2y4qEvlZ7FUwa0ZqORn1Y=
Date: Thu, 9 Jan 2020 17:33:13 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v2 0/4] arm64: allwinner: a64: Enable DVFS on A64
Message-ID: <20200109163313.wrotyymf5hgiazki@gilmour.lan>
References: <20200108042018.571251-1-anarsoul@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200108042018.571251-1-anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_083316_347430_9C1BBB5B 
X-CRM114-Status: GOOD (  10.17  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1598049057469384955=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1598049057469384955==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="63v3ohpo2ubteem4"
Content-Disposition: inline


--63v3ohpo2ubteem4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 07, 2020 at 08:20:14PM -0800, Vasily Khoruzhick wrote:
> This series introduces new DTSI with operating points for A64,
> adds cooling maps and thermal tripping points and enables DVFS
> on all the supported A64-based boards
>
> v2: - drop two commits that were merged
>     - mention where tripping points and OPP were taken from
>     - add new line after each node in OPP table
>     - split adding CPU clock and OPP into separate commits
>     - put operating points into their own dtsi

Applied, thanks!
Maxime

--63v3ohpo2ubteem4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhdVyQAKCRDj7w1vZxhR
xYoLAQDaU8aVVWmJIe8ePJZeGdrN601c8Zsful46WQo20L/sTQEA9e+OUlu72vXf
e/JDVRzPVUXp3lH5nVT6lcbUGhiErAU=
=0Q1E
-----END PGP SIGNATURE-----

--63v3ohpo2ubteem4--


--===============1598049057469384955==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1598049057469384955==--

