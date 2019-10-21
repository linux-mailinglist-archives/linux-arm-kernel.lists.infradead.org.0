Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 591D4DEA6B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:08:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HhogCUv2uX7UzHRJ2IS3TzSCabXXR0v2wQc3rBYCR1k=; b=sfZeY19LmZKmOOiUoon+zhhmi
	gk0VQISn9IE6xwRSyMmDFCd5wuWTq516uQv/w5zkEQWacuGkRN76HxtfHojSQEQR7Sq6aWYSuEShO
	3VDObVsxtQWvDtVV6UFgnXU4x0dw6pXncuE2+5dI0LTex7cZL2e6kIlN8+stZu4U/RVjyrlymY9jL
	Tyd7MUJd+WmoFHwpREG73Pe7bqAlXLgvDHe+iavKuQEkXkrxzaLUAZswU9FiSkNPjzDrHwXrkFvIR
	KWrreOtfoKIgEf28u76x8p64c3tv62fxiKS+POaNr74duc7JRaEwj3xa4TvnxdflWv4EpyoGFINoe
	E22sOZJpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVYK-0006EN-EX; Mon, 21 Oct 2019 11:08:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVY9-0006Dh-Hz
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:08:34 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7BEF206C2;
 Mon, 21 Oct 2019 11:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571656113;
 bh=tBYGme/3FWzm/ih6xspHcVw+dNmojtv6QL8gPcuU85U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=noXYuhgt63hGzvfq+0yDhuJIIJuOJGuJCtc1uk6QM3wFsLHmp6Hzb7cuu47Mlkx1S
 R1Ki2UTzEUlaHXqCO9R+VpFc/ZT0DR1QVqRh1KZLTLguIqySKkkF3PbOvW/OfglIep
 1qtIvZNMbkvvBNOZxxdXbzJDWuJtcJshi9w/oXB8=
Date: Mon, 21 Oct 2019 13:08:30 +0200
From: Maxime Ripard <mripard@kernel.org>
To: megous@megous.com
Subject: Re: [PATCH 2/4] phy: allwinner: add phy driver for USB3 PHY on
 Allwinner H6 SoC
Message-ID: <20191021110830.74m4ys7mvztb4nqs@gilmour>
References: <20191020134229.1216351-1-megous@megous.com>
 <20191020134229.1216351-3-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20191020134229.1216351-3-megous@megous.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_040833_611132_47EF9326 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chen-Yu Tsai <wens@csie.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-kernel@vger.kernel.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============8228728683842093665=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8228728683842093665==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wkap5bf7ph4ddhpj"
Content-Disposition: inline


--wkap5bf7ph4ddhpj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Oct 20, 2019 at 03:42:27PM +0200, megous@megous.com wrote:
> From: Icenowy Zheng <icenowy@aosc.io>
>
> Allwinner H6 SoC contains a USB3 PHY (with USB2 DP/DM lines also
> controlled).
>
> Add a driver for it.
>
> The register operations in this driver is mainly extracted from the BSP
> USB3 driver.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Reviewed-by: Chen-Yu Tsai <wens@csie.org>

Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--wkap5bf7ph4ddhpj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXa2RrgAKCRDj7w1vZxhR
xUVEAP0UwD5i2m60iQ3FP1B5X7mKnqw6PlzwMDnX4NC+gEbFrQD9Fbgi5TtiREt4
HRfbtIC6fTm7SkAMo6JU0iYU/DEpTQw=
=SIZy
-----END PGP SIGNATURE-----

--wkap5bf7ph4ddhpj--


--===============8228728683842093665==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8228728683842093665==--

