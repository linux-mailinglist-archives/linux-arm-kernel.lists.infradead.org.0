Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7017B19FBBF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 19:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tw3ifpHeMh809Ze2agj3JXrCY8PEsg3ZIAI6cTC488=; b=iCbGDf6Ir0JZQl
	FcN+r6riCZrl5fq2IUtXrVM9qtb+Qz9HAiGBXHkPYOBJRZS/28SXh6OYm8bDWCQdr2fAvT+XOHl9d
	R9W8r3tRAO17X7HFSO5YVJC9lnWjAKHayh2HZGUQiyGetcYrktj6erk4j/B682qNa5QRiQH9e0DuF
	QhBcgJF84zwbA7Oos+vFupt5Eo85B119G3GpOD2b3RAy71NZUstZ2MJz0Tnowy+RfyVop+cwQOg3F
	yF2mf+fOuL7UI2b/73TRUn2sRX7Ew/S2lZmxJYJdrOUuqgpfCbfSQsNsIwWbVeDwsKhkABVJnWDIl
	Wfg0hSsdUNJAQFJO0sYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVgA-0005Ox-2h; Mon, 06 Apr 2020 17:36:58 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLVg1-0005OS-7h
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 17:36:51 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 597171031;
 Mon,  6 Apr 2020 19:36:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586194607;
 bh=YPNE2hB3+Kd4JYl1p59Zx6o1xWVLnWL1+Y6boeKyKUw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OQ+6N8+n1zJZ0/2gH5NJj0mdJcoSxgpgo9vwr7oiQm0EgXP/WfcG1R7OCF1Q7Q7gs
 sgnuJLn7jlHyoU6HR+MOZFZWLVzUPGO41cT1LkEnU7D77nDcDwb/sNPR8xYKzBCcbT
 3DLZ9KNu12/OA/QQpUw55JkMIcnoBYMMZ4JIgb+w=
Date: Mon, 6 Apr 2020 20:36:37 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v5 4/5] ARM: dts: imx6qdl-wandboard: Drop clock-frequency
 property from ov5645 node
Message-ID: <20200406173637.GG16885@pendragon.ideasonboard.com>
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586191361-16598-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_103650_121030_DDFB0008 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 linux-kernel@vger.kernel.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

Thank you for the patch.

On Mon, Apr 06, 2020 at 05:42:40PM +0100, Lad Prabhakar wrote:
> clock-frequency property has been deprecated in ov5645 binding. This patch
> makes sure it matches the bindings by dropping clock-frequency property
> from ov5645 node.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

This looks good to me, but could you also address imx6qdl-pico.dtsi ?
With that,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  arch/arm/boot/dts/imx6qdl-wandboard.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-wandboard.dtsi b/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
> index c070893c509e..fa01cad65335 100644
> --- a/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
> @@ -126,7 +126,6 @@
>  		reg = <0x3c>;
>  		clocks = <&clks IMX6QDL_CLK_CKO2>;
>  		clock-names = "xclk";
> -		clock-frequency = <24000000>;
>  		vdddo-supply = <&reg_1p8v>;
>  		vdda-supply = <&reg_2p8v>;
>  		vddd-supply = <&reg_1p5v>;

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
