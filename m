Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC3AF15CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 13:08:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tLc0oOrENh0fF+dm/aEuFzRBRyzLopRWDDoCgbbhCUw=; b=J3HX3qoh3y7b97yeWu9ZuXWQF
	MB45iADBpI4XetJ9vkoWAnRRJ+LBNx5xuFhN0gjJEtx8I3mkVMMDmSb+gK8fwB4f1ZDxbZ1HE2Bbo
	q12VR5pLAZs6z3gBEBhCfgqLg77Xh/xUKB0uajbvUTHX7lYdy/WS5/Z69BG5OABWPcrmKAME/L41x
	YeWQqatrEU6StCuVbKAiJddNHUuwb55wd9TBuuM60+zNNGXaQSJZXM+7YgcuW8I8Pz0GK96FsLwF1
	Ft83Ni17gyRQGhQyLemozGeRyzBGwv76Q1Vn43b3yF4CkeBsVmzvgfeFebSusvT6N7BiZqZWT5AVr
	efkc3dcEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSK6W-0006CN-Oh; Wed, 06 Nov 2019 12:08:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSK6P-0006Bb-CM
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 12:07:58 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 67977214D8;
 Wed,  6 Nov 2019 12:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573042076;
 bh=QfG9VKYVm3uABcMyvzBKS82KRq/p1UCgZOMJNvPhTBQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zhbAxfhYabDD5iG+dB1Qv3ho2CIj/DA04G8cxDeLXbMOpYWoLhu0kmtOTPiSQ/4VO
 B7ikXumsyENd7y/58YKxM4jb3OzD2EouNeBgA/BuyjJhCJFFjZDM+LRRinQ8NS05ab
 dfwWcS4Wu92ZJLH/+OATvrn4schgV1p+A91k6flw=
Date: Wed, 6 Nov 2019 13:07:54 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Re-add PMU node
Message-ID: <20191106120754.GC8617@gilmour.lan>
References: <20191105110651.217513-1-andre.przywara@arm.com>
MIME-Version: 1.0
In-Reply-To: <20191105110651.217513-1-andre.przywara@arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_040757_441688_B3CB4673 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Emmanuel Vadot <manu@freebsd.org>, devicetree@vger.kernel.org,
 "Jared D . McNeill" <jmcneill@netbsd.org>, linux-sunxi@googlegroups.com,
 Chen-Yu Tsai <wens@csie.org>,
 =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 Harald Geyer <harald@ccbib.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7095772493669215044=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7095772493669215044==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="aT9PWwzfKXlsBJM1"
Content-Disposition: inline


--aT9PWwzfKXlsBJM1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Nov 05, 2019 at 11:06:51AM +0000, Andre Przywara wrote:
> As it was found recently, the Performance Monitoring Unit (PMU) on the
> Allwinner A64 SoC was not generating (the right) interrupts. With the
> SPI numbers from the manual the kernel did not receive any overflow
> interrupts, so perf was not happy at all.
> It turns out that the numbers were just off by 4, so the PMU interrupts
> are from 148 to 151, not from 152 to 155 as the manual describes.
>
> This was found by playing around with U-Boot, which typically does not
> use interrupts, so the GIC is fully available for experimentation:
> With *every* PPI and SPI enabled, an overflowing PMU cycle counter was
> found to set a bit in one of the GICD_ISPENDR registers, with careful
> counting this was determined to be number 148.
>
> Tested with perf record and perf top on a Pine64-LTS. Also tested with
> tasksetting to every core to confirm the assignment between IRQs and
> cores.
>
> This somewhat "revert-fixes" commit ed3e9406bcbc ("arm64: dts: allwinner:
> a64: Drop PMU node").
>
> Fixes: 34a97fcc71c2 ("arm64: dts: allwinner: a64: Add PMU node")
> Fixes: ed3e9406bcbc ("arm64: dts: allwinner: a64: Drop PMU node")
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Applied, thanks for figuring this out!
Maxime

--aT9PWwzfKXlsBJM1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcK3mgAKCRDj7w1vZxhR
xTd+APwKpOxpqefT67CJjNitd13UiHVtbg6+p06GY1iJTZ3LZQEA2lSDhu1e8qmi
bprwmvdut5IsfcdKSQ48CGx5Y/ba9gc=
=Ify8
-----END PGP SIGNATURE-----

--aT9PWwzfKXlsBJM1--


--===============7095772493669215044==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7095772493669215044==--

