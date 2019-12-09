Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0197116615
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 06:13:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1sG5SfKDkRPWpY44ndlhTCe0I6wjzkc3JP3oic3tnU=; b=qgHPXI3Bz8/9Km
	55BH1pZipolYBI5MRz2L1dB2DgLnlSgew06/TvKHAdlLwzOY8NtqpvqLmge9JcKi4QxlCd3qnHb3r
	k0HT1hOqWjRndTL8nOtsvoUo8Did+kYQh6ljJ0pag3EKu2q/7ISpSLdrNzqVhdGLwcXDd+4v/gWOD
	Zvp8wuZtphhAvm077Pg+qAZ+eaH3K9MrI6qVedor7UjlBQqCKp2xqsB4bi8Qe917XAL+tKhnTU1+u
	iTkQdEWT91LO1VDH6WQeMbCrEj4U9AMwUtJINf9AoZed6YH8OmqSRmCzsIOrki0dbyG2z2VVn3V0a
	8z+JlWKIJzns/+Gd/KBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieBMC-0005zp-MI; Mon, 09 Dec 2019 05:13:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieBM2-0005yj-Df; Mon, 09 Dec 2019 05:13:08 +0000
X-UUID: 6ea8f57f1cc343c7b12761e419234a4a-20191208
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=ButzdGv9wS4vEWD4n7bWNCvee+jF/m3iYcDfT63Gb/M=; 
 b=K+xbjE4zxHlsimO89ardVwvWMdR/92+p/ZkgGAM1A89rtS6hWOhjVHROk99RMBrzso3vDBkSEuo/nzrhxIREb4A0GnazQcCZDgLOpAYwQJ2Gw2ItgxVyFCF6GjYt1C5l6JnKtHdw9fVAAMCfO313R5bzAFn39cjN6fxNjO9tBjk=;
X-UUID: 6ea8f57f1cc343c7b12761e419234a4a-20191208
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1554719527; Sun, 08 Dec 2019 21:13:02 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Dec 2019 21:13:55 -0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 9 Dec 2019 13:12:23 +0800
Message-ID: <1575868373.7013.4.camel@mtksdaap41>
Subject: Re: [resend PATCH v6 01/12] dt-bindings: display: mediatek: Add
 mmsys binding description
From: CK Hu <ck.hu@mediatek.com>
To: <matthias.bgg@kernel.org>
Date: Mon, 9 Dec 2019 13:12:53 +0800
In-Reply-To: <20191207224740.24536-2-matthias.bgg@kernel.org>
References: <20191207224740.24536-1-matthias.bgg@kernel.org>
 <20191207224740.24536-2-matthias.bgg@kernel.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_211306_469313_ACC28091 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, rdunlap@infradead.org, airlied@linux.ie,
 mturquette@baylibre.com, dri-devel@lists.freedesktop.org,
 laurent.pinchart@ideasonboard.com, ulrich.hecht+renesas@gmail.com,
 linux-clk@vger.kernel.org, drinkcat@chromium.org, wens@csie.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, sean.wang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 linux-arm-kernel@lists.infradead.org, mbrugger@suse.com, sboyd@kernel.org,
 sean.wang@kernel.org, linux-kernel@vger.kernel.org, p.zabel@pengutronix.de,
 enric.balletbo@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Matthias:

On Sat, 2019-12-07 at 23:47 +0100, matthias.bgg@kernel.org wrote:
> From: Matthias Brugger <mbrugger@suse.com>
> 
> The MediaTek DRM has a block called mmsys, which sets
> the routing and enalbes the different blocks.
> This patch adds one line for the mmsys bindings description.
> 
> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> ---
>  .../display/mediatek/mediatek,disp.txt        | 28 ++++++++++---------
>  1 file changed, 15 insertions(+), 13 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> index 8469de510001..c71c8a4b73ff 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> @@ -27,20 +27,22 @@ Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt.
>  
>  Required properties (all function blocks):
>  - compatible: "mediatek,<chip>-disp-<function>", one of
> -	"mediatek,<chip>-disp-ovl"   - overlay (4 layers, blending, csc)
> -	"mediatek,<chip>-disp-rdma"  - read DMA / line buffer
> -	"mediatek,<chip>-disp-wdma"  - write DMA
> -	"mediatek,<chip>-disp-color" - color processor
> -	"mediatek,<chip>-disp-aal"   - adaptive ambient light controller
> -	"mediatek,<chip>-disp-gamma" - gamma correction
> -	"mediatek,<chip>-disp-merge" - merge streams from two RDMA sources
> -	"mediatek,<chip>-disp-split" - split stream to two encoders
> -	"mediatek,<chip>-disp-ufoe"  - data compression engine
> -	"mediatek,<chip>-dsi"        - DSI controller, see mediatek,dsi.txt
> -	"mediatek,<chip>-dpi"        - DPI controller, see mediatek,dpi.txt
> -	"mediatek,<chip>-disp-mutex" - display mutex
> -	"mediatek,<chip>-disp-od"    - overdrive
> +	"mediatek,<chip>-disp-ovl"		- overlay (4 layers, blending, csc)

This patch conflicts with 5.5-rc, please resend this patch base on
5.5-rc1.

> +	"mediatek,<chip>-disp-rdma"		- read DMA / line buffer
> +	"mediatek,<chip>-disp-wdma"		- write DMA
> +	"mediatek,<chip>-disp-color"		- color processor
> +	"mediatek,<chip>-disp-aal"		- adaptive ambient light controller
> +	"mediatek,<chip>-disp-gamma"		- gamma correction
> +	"mediatek,<chip>-disp-merge"		- merge streams from two RDMA sources
> +	"mediatek,<chip>-disp-split"		- split stream to two encoders
> +	"mediatek,<chip>-disp-ufoe"		- data compression engine
> +	"mediatek,<chip>-dsi"			- DSI controller, see mediatek,dsi.txt
> +	"mediatek,<chip>-dpi"			- DPI controller, see mediatek,dpi.txt
> +	"mediatek,<chip>-disp-mutex"		- display mutex
> +	"mediatek,<chip>-disp-od"		- overdrive
> +	"mediatek,<chip>-mmsys", "syscon"	- provide clocks and components management
>    the supported chips are mt2701, mt2712 and mt8173.

The original binding document for mmsys is in [1], I think we should not
define it in duplicate. Maybe you could remove the original document.

[1]
https://www.kernel.org/doc/Documentation/devicetree/bindings/arm/mediatek/mediatek%2Cmmsys.txt

Regards,
CK

> +
>  - reg: Physical base address and length of the function block register space
>  - interrupts: The interrupt signal from the function block (required, except for
>    merge and split function blocks).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
