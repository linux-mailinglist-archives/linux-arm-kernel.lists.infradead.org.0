Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7975712E474
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 10:32:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iQUnmpSzamOlA1gEh8cI30lQ3/J9qyDRCyxR2aRzkyQ=; b=fME84Mj3yhIH9UhTqKt2UkYpH
	vdS9pxlt5LBoXwnwg2R1B2QsjHM7Ifz8AnlE2V51brBC6owieICLyGj6Q6lr8lWn9wR4Xnlhqmv1U
	3hH/5W7fFwA0DCtMp0fnn38HCoFDjkM7CmFB6TpwK2Y2B20odURhp9RG4A3dhvo0XERypuJVBiSXv
	aZQPZS6dlYKu35Frf6f0w7aWbm+PCynJt1pAkshyLPAaafd+l4bINCjB0bJFOWRUxuZHTZbMLODqG
	vmyT1kAiheqL5lWkv2C5LCGnJFTMyidBZ6CmKw7uON3jyQzy9ezCkLz1o6hnigN+hxdaaJhJ3KQVe
	YEK1PBuvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imwpq-0006Xz-V4; Thu, 02 Jan 2020 09:32:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imwpj-0006XL-Ey
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 09:32:00 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ADE36217F4;
 Thu,  2 Jan 2020 09:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577957519;
 bh=z7XbupEIA871TaOOa9+yiI0sdqgjfYz8rikslwugDPc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ubsJsZ17xJUrhg1PKhxQTkfB5sALfgzZl8fOri0JDQjveIQDoWt3nI2j5l7jMjldx
 v47TqhJihiPYqmgocaKNrG/HqR4EFN5/N6Fwbh6oGjztirkdCNJAOT/dIfsvo+zCSi
 Bi1bjxYxiwUsa2sSd3AMa6fzz57A8Ct77ack0AcI=
Date: Thu, 2 Jan 2020 10:31:56 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 1/3] ARM: dts: sun8i: R40: Upgrade GICC reg size to 8K
Message-ID: <20200102093156.wrcuqxwbfs2vmwof@gilmour.lan>
References: <20200102012657.9278-1-andre.przywara@arm.com>
 <20200102012657.9278-2-andre.przywara@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200102012657.9278-2-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_013159_519328_E7CC818B 
X-CRM114-Status: GOOD (  10.98  )
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
Content-Type: multipart/mixed; boundary="===============6240859699109046222=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6240859699109046222==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2mnyeiclhklvtj5r"
Content-Disposition: inline


--2mnyeiclhklvtj5r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 02, 2020 at 01:26:55AM +0000, Andre Przywara wrote:
> The GIC used in the R40 SoC is an ARM GIC-400 with virtualization support,
> so let's advertise the full 8K region of the GICC MMIO frame to enable
> KVM's usage of the GIC (as we do already for all other SoCs).
>
> Tested by running KVM on a Bananapi M2 Berry.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Applied, thanks!
Maxime

--2mnyeiclhklvtj5r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXg24jAAKCRDj7w1vZxhR
xUQbAQClk/beo71p82R7czCIU5RsEyXUGoVfxFTJLmi4mlFOtgD9EYpUhFz6weme
ZRkbXJRgAgmcJQqGp60CsXc/CLTcrg8=
=whv3
-----END PGP SIGNATURE-----

--2mnyeiclhklvtj5r--


--===============6240859699109046222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6240859699109046222==--

