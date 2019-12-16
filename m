Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A6512073F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 14:36:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nRlpOydRgAiKS5oD/Kh5SASVHlBaSraMQbR0Gy7qbAk=; b=kbXTJHaGdbqXE9sLGXeBb2mWS
	wqGIydDcbkbOuM8pOnr3t8pODopX5qnTQLppw53SlXPfDAm/CO6q7FFSJmEYjwkbDfbPNwqlPheIG
	nbjzJQFd4pEcdGttz/Df3MpvvfeQc1RFboS/mmZKTOwtC1lHDZd+OPBzPWPDaVXfiQJ3YrSFFAMvv
	JeqrUA5NlEYQzR66AH12vBHUyJ+I7VUsDQajm06bU/F22yORQv0XNuZYJ+jUEVf8Yn9/A6qICMk86
	CLjvd7zKxRTdMNSbSRRd0pxJgPRL9WAaiMipg1NWePOsWlS/A5963U1mwNiGuFDFX4gEPPRYfpt1Y
	FRs6WQbBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igqXn-0005B9-Fn; Mon, 16 Dec 2019 13:36:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igqXf-0005A0-F2
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 13:36:08 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41866206CB;
 Mon, 16 Dec 2019 13:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576503366;
 bh=hNHO7qhuEn1+H5H1TDdAFoLepebeVApFqZHiSXCaSeg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A6y4BII/Y9MV3DxdIIQ7EWpX9KGs5x36m7xIL3euGRGccXYzlnaCJl7X8nRYSzjq/
 yG+bIbehrGRUTHr/vYq65XJfC40UM3n0XCN4zaPNVmrbfnAGJXcqLbYzNoH+1InrFV
 7OHJK3jpcjsuXMcyiOjUK63zjGFCj+1GaGKiKjyw=
Date: Mon, 16 Dec 2019 14:36:03 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 03/14] media: sun4i-csi: Fix data sampling polarity
 handling
Message-ID: <20191216133603.gbr2iaikch5lfv6v@gilmour.lan>
References: <20191215165924.28314-1-wens@kernel.org>
 <20191215165924.28314-4-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20191215165924.28314-4-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_053607_523326_60BFB5C5 
X-CRM114-Status: GOOD (  11.57  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3496038778633622475=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3496038778633622475==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pxaf47l7hgrm57u2"
Content-Disposition: inline


--pxaf47l7hgrm57u2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 16, 2019 at 12:59:13AM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> The CLK_POL field specifies whether data is sampled on the falling or
> rising edge of PCLK, not whether the data lines are active high or low.
> Evidence of this can be found in the timing diagram labeled "horizontal
> size setting and pixel clock timing".
>
> Fix the setting by checking the correct flag, V4L2_MBUS_PCLK_SAMPLE_RISING.
> While at it, reorder the three polarity flag checks so HSYNC and VSYNC
> are grouped together.
>
> Fixes: 577bbf23b758 ("media: sunxi: Add A10 CSI driver")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--pxaf47l7hgrm57u2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfeIQwAKCRDj7w1vZxhR
xVxhAP9flbDGwjgJDkotx80gPBlJVBaAWNlKf5+rVukqwTZs9AEA/EU/dnK5KzU0
QEqJQQjjDUSZ+fxuByQBiPtKJqftfQ0=
=LpuS
-----END PGP SIGNATURE-----

--pxaf47l7hgrm57u2--


--===============3496038778633622475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3496038778633622475==--

