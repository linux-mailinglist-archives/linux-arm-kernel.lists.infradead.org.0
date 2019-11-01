Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB50EC0B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 10:40:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RRJiz8zEx7vEQMeFeb7/LyGBQh3k615gBY9l/tNi9uw=; b=Se4+4O5HsiLWZuSM/wNQveD13
	hjRMyub9xVxrmJt5FDA0cwF//BHvWZotZDMPvEBw89mlU4elx6b0VOaPU/ow28NtYCr4LkOIYUObh
	NjxK0WL19mZNNNyH10RjQwZpiF/GXdtFv0NGx0TKnleJtrRbQ4awpPbOCi7S9ZGHt6iQTivALTGq3
	nGg7fo5SI57Sm6/Ij/s8/c3j9+kPJRUQcDzDr9YSHj60h4MnaVHbvyQpwSsAVLhXWLbiQw7dcL4Fr
	ZA6DjOz8LhwRj6/DcpB4jTm/z5LAOczSjAFoOA+0/jTI13khIwzv6HQdAOzhifWR0fttWD0D43aUE
	V8u6YweWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQTQ1-0007cj-ED; Fri, 01 Nov 2019 09:40:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQTPu-0007c9-Jo
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 09:40:28 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C45721734;
 Fri,  1 Nov 2019 09:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572601226;
 bh=FGHcwE+KAHKomXUaoUwKYu+vAkGOtW4dwmT/9C9fgpo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Vp0H3p2HmIWcVodPtCyEKBCLAUp4ExhTOIAZGZ9yfkVruUg5T0QW9xFH207NQSNQz
 Z3SeiIh2bzgkW/895Hd9bCSF94pUME9ti06DXe6MmcfuO0Fg4GXCwhnyPsmYQmjcFK
 Kbr3CspGt+0M4E660ZeVOdSBRuTQtnfh2VnH4Kjw=
Date: Fri, 1 Nov 2019 10:04:12 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Priit Laes <plaes@plaes.org>
Subject: Re: [PATCH] ARM: sunxi_defconfig: Enable MICREL_PHY
Message-ID: <20191101090412.4o7ag52vo47p6iz4@hendrix>
References: <20191101075712.3058-1-plaes@plaes.org>
MIME-Version: 1.0
In-Reply-To: <20191101075712.3058-1-plaes@plaes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_024026_673134_58EA6394 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, igor.pecovnik@gmail.com, usunov@olimex.com,
 priit.laes@paf.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6643271565763806699=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6643271565763806699==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tva27k5kibkpot7t"
Content-Disposition: inline


--tva27k5kibkpot7t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 01, 2019 at 09:57:09AM +0200, Priit Laes wrote:
> Include support for Micrel KSZ9031 PHY driver in sunxi_defconfig,
> which fixes issues of link not coming up at boot time with
> certain link partners.
>
> Micrel KSZ9031 PHY chip is used on Olimex A20-OLinuXino-LIME2
> boards.
>
> The errata fix itself has been implemented in commit
> "3aed3e2a143c96: net: phy: micrel: add Asym Pause workaround"
>
> Signed-off-by: Priit Laes <plaes@plaes.org>

Applied, thanks!
Maxime

--tva27k5kibkpot7t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbv1DAAKCRDj7w1vZxhR
xYceAP9uQCFhQnWocEKMbYYXac3F5BtZ8loVj7pqpCdJGm4yWQD/RNry4bXHUW88
RxPVJXtDLH6TSj5Sy0IdqfmXuzw9nw0=
=GDa3
-----END PGP SIGNATURE-----

--tva27k5kibkpot7t--


--===============6643271565763806699==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6643271565763806699==--

