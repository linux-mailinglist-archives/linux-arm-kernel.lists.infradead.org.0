Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DD31A0D15
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 13:54:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GFDXZA2odiRP1XEPgxqJuTpOHFsdD8Pkqpve4ZmiTqs=; b=Yg0Gse5Qj12biX
	V0k9MHDzUQotseilKxkJWuce9UfVN5cJ8uLffLIAsPzt/GX5ociKbIY/3qL2QlE25mYKdteU3t35n
	ddJiwDfVb6LmHfzbf7JzcVJYaGBXbCtZyQgz4AZigs9tDDff0X+FPGCYw9KjFhgmSS8ve0l9pGcen
	gBjSvYDYu0dMQnT/WaZ2XsnB6M9Gdo0vS9w/YBVfOh/Lv9ECoZWLOsGwg2wu3BRGXQvHID9cYJuqw
	9TZj05NvBUZcJ3MVsY4lLsIrn7sl1CGFwcePwcj3dk6YGPH3PCCyIyBHIbLtFfl+1LBakIWdv99hb
	PsjpjyJrBHmWqb4vIhcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLmns-0002b5-Ed; Tue, 07 Apr 2020 11:54:04 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLmnm-0002aa-Ar
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 11:53:59 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id DD9D759E;
 Tue,  7 Apr 2020 13:53:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586260429;
 bh=Tpiom0/9HXYeqjAE4DHHDRRZxBkeLOXqxIpsYWIHF6g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ebfedmCea0DfNA0f42wlzHUJ2BLM0TWCtj0eEBAhriSjwzr+qKv8H2+0Lx01A4caG
 4OkfkWpzk03YQcri6vBUkj8jqfzHs4PRp3P2krRIerPxxioqldAa6fk2Y8ZlF2dKf1
 aeddqev8gIsaNCw8Z5vfBkNMMp++zEf/oT8a8Gcg=
Date: Tue, 7 Apr 2020 14:53:38 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Max Krummenacher <max.oss.09@gmail.com>
Subject: Re: [PATCH 1/4] arm64: defconfig: DRM_DUMB_VGA_DAC: follow changed
 config symbol name
Message-ID: <20200407115338.GB4751@pendragon.ideasonboard.com>
References: <20200407103537.4138-1-max.krummenacher@toradex.com>
 <20200407103537.4138-2-max.krummenacher@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407103537.4138-2-max.krummenacher@toradex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_045358_517284_ED6959B9 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anson Huang <Anson.Huang@nxp.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Will Deacon <will@kernel.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Max,

Thank you for the patch.

On Tue, Apr 07, 2020 at 12:35:34PM +0200, Max Krummenacher wrote:
> This occurrence wasn't changed in the original rename commit.
> 
> Fixes commit 0411374bdf2b3 ("drm/bridge: dumb-vga-dac: Rename driver to
> simple-bridge").
> 
> Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>

My bad, sorry about the trouble.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> 
> ---
> 
>  arch/arm64/configs/defconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 24e534d850454..ae908c3f43c76 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -610,7 +610,7 @@ CONFIG_DRM_MSM=m
>  CONFIG_DRM_TEGRA=m
>  CONFIG_DRM_PANEL_LVDS=m
>  CONFIG_DRM_PANEL_SIMPLE=m
> -CONFIG_DRM_DUMB_VGA_DAC=m
> +CONFIG_DRM_SIMPLE_BRIDGE=m
>  CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
>  CONFIG_DRM_SII902X=m
>  CONFIG_DRM_THINE_THC63LVD1024=m

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
