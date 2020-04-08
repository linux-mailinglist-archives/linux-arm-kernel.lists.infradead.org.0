Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE3B1A263E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 17:49:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aqgNnCQTunfXm7FfuPiQmwT+abFBabz/72C0tT0zrIE=; b=pRBP+g6/Hz1qWk
	l6KF3SzkDf6tsF0Pw8nJ4duqA/wNU3VnOxsaBpseS+g/fvh64LhKOmvprsxZ82cJCrmYzvKJVzbEE
	U1tR6yb3HDsNuewMkx2iAHceXK1lxrgssIo3gP+C9FeFh1S+9Us3fzB7cdtOQ2fatNjRVgQ+ScQ68
	R19WhdBrcMT8nHSlvDy4+48iMm2k1zoiLOksGkrc4+9soMdqqbJXPBvs+TkhLShj2R8GawnjoTVw8
	X2AelgM6dDzHwsxSt6A8JYFaiXTfT4GgyEPEwyXr7IYK91RIySP4mGRvKIztLBJrmidx6oVw6ITvY
	o9K4jiXxRJ4rM+vUQuiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMCwi-0008Vf-JV; Wed, 08 Apr 2020 15:48:56 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMCwZ-0008Sy-73
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 15:48:50 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2D4EC522;
 Wed,  8 Apr 2020 17:48:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586360919;
 bh=/JgXmN/0WyKx0OrE+QYBVoprM4aMOvGu9pmddBBOTck=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rmLITQ6k1FTf27YU2enzczolQS74XPSGlFhJ/EQQXSIXI1XzLyqq5RoGVNMucXZPG
 SVY4hg6v413eemiT/yEG6hyHsjdzKF2HpRnG4MZTMN8JK+mNVsgXuH6nBgN1O7qS9M
 hsypevpJn75bHjg5BVE1q1AujS4QIYgPCk64QV3A=
Date: Wed, 8 Apr 2020 18:48:29 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Max Krummenacher <max.oss.09@gmail.com>
Subject: Re: [PATCH v2 2/5] arm64: defconfig: add DRM_DISPLAY_CONNECTOR
Message-ID: <20200408154829.GI4881@pendragon.ideasonboard.com>
References: <20200408143040.57458-1-max.krummenacher@toradex.com>
 <20200408143040.57458-3-max.krummenacher@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408143040.57458-3-max.krummenacher@toradex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_084847_422528_D542B0D7 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Anson Huang <Anson.Huang@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Max,

Thank you for the patch.

On Wed, Apr 08, 2020 at 04:30:37PM +0200, Max Krummenacher wrote:
> Add DRM_DISPLAY_CONNECTOR. This got introduced with the bridge rework
> Which renamed among others DRM_DUMB_VGA_DAC.
> 
> Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> 
> ---
> 
> Changes in v2:
> - additional patch adding DRM_DISPLAY_CONNECTOR as recommended by Geert and Laurent
> 
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index ae908c3f43c76..d765a920a20b9 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -612,6 +612,7 @@ CONFIG_DRM_PANEL_LVDS=m
>  CONFIG_DRM_PANEL_SIMPLE=m
>  CONFIG_DRM_SIMPLE_BRIDGE=m
>  CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
> +CONFIG_DRM_DISPLAY_CONNECTOR=m
>  CONFIG_DRM_SII902X=m
>  CONFIG_DRM_THINE_THC63LVD1024=m
>  CONFIG_DRM_TI_SN65DSI86=m

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
