Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF7E12E477
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 10:32:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uj/5YW6FV3rokd9VWbeVb1ZMDg8PlHdPU3CCzDFM6Ak=; b=hxQZBB6TPG5PP3j2cZL0E6qxt
	miD6+qX8ScS9QwZKGLp1XGMV7EvlUvMDRv9b1PhMr44bzQc/x24YJk7/CzX67xyEcxjKVE1GxSFpo
	8NOANRxLFsHc5BvPK42JrkpHHXMflZDmmahSSypSU54z4HC12JgnP4iKbtuk1mZXjfux/zHmBzJ3i
	2R12Hv+Ht0aokHOdlq97MWMjASsHXWlDk2EatdxsSAhMYg0WXs/NiFy5spr7IVZdCGMXSXQRjNuE6
	Zc0tykg1utvYh44/ps5+hXl7AiEszV8ANCwYco4QNScHqc2XOBcVaJjlMBQoxelsSWhmVRKUwNpss
	FAeeBKaGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imwq9-0006n2-Cu; Thu, 02 Jan 2020 09:32:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imwpx-0006l2-Pj
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 09:32:15 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A110217F4;
 Thu,  2 Jan 2020 09:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577957533;
 bh=EfkiR40ecIKtIaHQGSgzrVNTtjwUChSeOvmRTEf0NeM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HY9ns/JRiSI20ujcRIjz049nfsi+nGX20z/SLvMYK98tBMEh+6dKrYBV8/sdCexJv
 QRB7WT9E35kPwPZv3Ar+bzFJoys0dNyha0HF0uFNgi/CtWaz0gjHOwJMsxnnA6g4xn
 zrs+DZzAbg8pWKePnvTqX5uE9phS80yW1SHsNmhU=
Date: Thu, 2 Jan 2020 10:32:11 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 2/3] ARM: dts: sun8i: R40: Add PMU node
Message-ID: <20200102093211.a5hl7hxfqpkvdg6g@gilmour.lan>
References: <20200102012657.9278-1-andre.przywara@arm.com>
 <20200102012657.9278-3-andre.przywara@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200102012657.9278-3-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_013213_857148_FA4467E7 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============2584523757659770612=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2584523757659770612==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="khktdkfc5ltuwnt7"
Content-Disposition: inline


--khktdkfc5ltuwnt7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 02, 2020 at 01:26:56AM +0000, Andre Przywara wrote:
> The ARM Cortex-A7 cores used in the Allwinner R40 SoC have their usual
> Performance Monitoring Unit (PMU), which allows perf to use hardware
> events.
> The SoC integrator just needs to connect each per-core interrupt line
> to the GIC. The R40 manual does not really mention those IRQ lines, but
> experimentation in U-Boot shows that interrupts 152-155 are connected to
> the four cores (similar to the A20).
>
> Tested on a Bananapi M2 Berry, with perf and taskset to confirm the
> association between cores and interrupts.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Applied, thanks!
Maxime

--khktdkfc5ltuwnt7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXg24mwAKCRDj7w1vZxhR
xRyVAQDskdeVCrnBIz+PwfM7pnDyrbP6Vfz5kuMGp2f0HtsgTAEAhwv93dTAojGe
94XhPjpzKTIrq1CbJAo0V+RhqKohFQg=
=Fa3V
-----END PGP SIGNATURE-----

--khktdkfc5ltuwnt7--


--===============2584523757659770612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2584523757659770612==--

