Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6149712074D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 14:38:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JM8XKb/UID/wPyqQ6Ft2XcLAR2fMV43jJ5L/JMb9BsA=; b=ZOdkLtm9yZzxQQ/m2goc8G5bK
	YVglZeQZZZzS6KR2bb1AUkNb/x6dE/avhp/Mxrn/agUqqZs2vSuLc7qoEQtEwSFwpEdPxJYLJvknh
	tilIYGulxtYd8qACcoBcp6nF1SOOa9RG1/VwCfeya8j6+cnfldEHmpNlyNBG1Yn3v5VifrwvT2K1V
	7H4sfpp7JAC0HXT1PVEiqHmB2Z90oZdFXDIvC/RWUdzJIf5tozT2BmKVYdpdASGIXooLFwSWzTa3A
	OEbOQaHoEVygS7DyyR+JbNohC6kzGX1sEVku4M0V0VxGFr2egFx+jxGIdWvsr43UoIzfPKE9oCrb5
	PuW34UP5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igqZs-00064U-Fl; Mon, 16 Dec 2019 13:38:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igqZk-00064A-Is
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 13:38:17 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CBB5A206A5;
 Mon, 16 Dec 2019 13:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576503496;
 bh=Iu98Oy5TZm+H1asM/smrTrfPFvEBzeFkzFr8AMmXZXk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qLoRzPiAgHrMoOeQlq47u2JMMsF+kaN6ulynlbG1cRyJ7s2WQ+gZ9zfgmw3qdh7sv
 myCIG83Rfn3FSh1WmEl5AH2BfMtLbkWPKDglHU66akHYiVDCTmO2Ep7X01WYXQ8I12
 04mRGGadq8HC3/+ky2NASgJcq/3lws8PZ0xtYJTs=
Date: Mon, 16 Dec 2019 14:38:14 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 05/14] media: sun4i-csi: Deal with DRAM offset
Message-ID: <20191216133814.hozcgdrnqe6tim36@gilmour.lan>
References: <20191215165924.28314-1-wens@kernel.org>
 <20191215165924.28314-6-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20191215165924.28314-6-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_053816_661682_A7A766FE 
X-CRM114-Status: GOOD (  18.43  )
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
Content-Type: multipart/mixed; boundary="===============0067697346759713897=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0067697346759713897==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="f4vwh4csed7tzwjp"
Content-Disposition: inline


--f4vwh4csed7tzwjp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 16, 2019 at 12:59:15AM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> On Allwinner SoCs, some high memory bandwidth devices do DMA directly
> over the memory bus (called MBUS), instead of the system bus. These
> devices include the CSI camera sensor interface, video (codec) engine,
> display subsystem, etc.. The memory bus has a different addressing
> scheme without the DRAM starting offset.
>
> Deal with this using the "interconnects" property from the device tree,
> or if that is not available, set dev->dma_pfn_offset to PHYS_PFN_OFFSET.
>
> Fixes: 577bbf23b758 ("media: sunxi: Add A10 CSI driver")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Acked-by: Maxime Ripard <mripard@kernel.org>

> ---
>  .../platform/sunxi/sun4i-csi/sun4i_csi.c      | 22 +++++++++++++++++++
>  1 file changed, 22 insertions(+)
>
> diff --git a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c
> index f36dc6258900..b8b07c1de2a8 100644
> --- a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c
> +++ b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c
> @@ -11,6 +11,7 @@
>  #include <linux/module.h>
>  #include <linux/mutex.h>
>  #include <linux/of.h>
> +#include <linux/of_device.h>
>  #include <linux/of_graph.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
> @@ -155,6 +156,27 @@ static int sun4i_csi_probe(struct platform_device *pdev)
>  	subdev = &csi->subdev;
>  	vdev = &csi->vdev;
>
> +	/*
> +	 * On Allwinner SoCs, some high memory bandwidth devices do DMA
> +	 * directly over the memory bus (called MBUS), instead of the
> +	 * system bus. The memory bus has a different addressing scheme
> +	 * without the DRAM starting offset.
> +	 *
> +	 * In some cases this can be described by an interconnect in
> +	 * the device tree. In other cases where the hardware is not
> +	 * fully understood and the interconnect is left out of the
> +	 * device tree, fall back to a default offset.
> +	 */

Though we should probably mention the DT-backward-compatibility case
here too.

Maxime

--f4vwh4csed7tzwjp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfeIxgAKCRDj7w1vZxhR
xSYlAP4uGoz1Ce+9iej57ZZmMWf4/Tv6JmIocroCOLYz9/kGmgEAlLfgpLkvr3sQ
xO02B/RijIIY2oIzaS23VHo7I+iAtgs=
=/CRW
-----END PGP SIGNATURE-----

--f4vwh4csed7tzwjp--


--===============0067697346759713897==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0067697346759713897==--

