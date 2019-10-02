Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836AAC4B90
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 12:37:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cPzwqXnjl5UkqIti4MyptiwYTZ5ILdi7tR4Qtbu4p5o=; b=fyq0pNzOvWOFIRLDIjubcRXe4
	C6a7pwGhm/mySP/CqL0V6rtxGe6hfDXxRkNZZ236kiwffedrxL5LlgDXD5U/JJvdIXjPAlFSFBj9Y
	Oh7zWCBGa7IAWDtQ8JqurJgohHaxKP2iQbPviCne8UV6br/8D1YsuXbZ/qvOeWQrAe/0cI/ET6F8I
	idQHFcL0O+tjEfT0dOC7rCchGZJf5yvNHruFD6EFtx15sij600bo6V4LFb9+Euvc2TwLr78gzB7ED
	Cf3ejcTICZpRhj/ORv1ECirK+Pa7WFEVSTRDnALvXCINlSI3fnFwbLsWfG/H7anFNd9xTyNBkQYF+
	s6EWOOaDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFc04-0002gK-HQ; Wed, 02 Oct 2019 10:36:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFbzx-0002fT-EF
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 10:36:46 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DBAC218DE;
 Wed,  2 Oct 2019 10:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570012605;
 bh=OTtxUEjlO9HcUPpiugCSBkopkvyXz2JCDw8OEY6QwX8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dop77VND9yEdv1ixP06TuVIV/36nU/gRS6iesokjS2CL7ZPgJdrbgDpvt2Aoxzgu2
 d5u137d5vOTMdKWAjM2hICqZFYPs7zzfRGPDLEKyrpW0K9Z2k28AGKCwWGyw0Bwo42
 t1VdFm3KNA9hZoIoMuUDxnLyR/+3oztIWtrtXmsE=
Date: Wed, 2 Oct 2019 12:36:42 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH 0/3] drm/sun4i: dsi: misc timing fixes
Message-ID: <20191002103642.jlbs44v4kwnxhrge@gilmour>
References: <20191001080253.6135-1-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20191001080253.6135-1-icenowy@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_033645_500748_7CF95E8A 
X-CRM114-Status: GOOD (  14.61  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5834003978528876527=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5834003978528876527==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6keczcenlhnwont6"
Content-Disposition: inline


--6keczcenlhnwont6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Oct 01, 2019 at 04:02:50PM +0800, Icenowy Zheng wrote:
> This patchset fixes some portion of timing calculation in sun6i_mipi_dsi
> driver according to the BSP driver.
>
> Two of the patches are reverting, one is fixing some misread of the BSP
> source code, another is fixing a wrong refactor that actually breaks the
> formula.
>
> The other non-reverting patch is fixing a porch error which is usually
> seen in the original driver commit. Most of porch errors are then fixed,
> but this one gets ignored.
>
> By applying these patches, several DSI panels are tested to be driven
> properly by the timing provided by the vendor, including the LCD panel
> of PinePhone "Don't Be Evil" DevKit, the final PinePhone panel and the
> panel on PineTab. Without these patches they need dirty timing hacks to
> work.

Thanks for going after that issue. Can you provide references to the
BSP on the various patches?

Ideally, having the panel drivers, and the panel datasheet would help.

Thanks!
Maxime

PS: where can we get one of those devices?

--6keczcenlhnwont6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZR9ugAKCRDj7w1vZxhR
xY0/AQC5eQr1MF2JwZuR7J6/60HoAsW6kKoOVaBBWurj6iMNTAD+JwOOdlDSQqrT
fievw3+uVVe3O0xnWQxGHYInw9LB6g4=
=q4a2
-----END PGP SIGNATURE-----

--6keczcenlhnwont6--


--===============5834003978528876527==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5834003978528876527==--

