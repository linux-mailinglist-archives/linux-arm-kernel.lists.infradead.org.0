Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 091B813676D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 07:30:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ubkhwFOISi47zN5xwo6NnnYnoTJY7CIILrXyXL1AJ0=; b=QXl06wza1WdWyF
	Ire+rogLUf4SNfMD3OQu5/xrqjyNbgCJUTEytYxTcPcZas+REvJf8t+aw83MyGuQPS6IUwDKP85vi
	3yVAUlx7O5ZxJVizK9kyz3JLbY+7aFqsBKvuwV+gs9LIXudyOd2khdBdBSIhEfj5Ld0bAWF6fyCua
	pkmwO/eK+dx6Q5RfE17ASojta7wNFjosODnYoj+6Z2nLjn49xclZahjrRtyrp9pGEJz2XtKngeSBM
	wP+SdRcaE0W6eHXFV8fwobt2zGZzysCwE+51rdi3x1NxfMJbbeO5Ia7kSEXWabA/XOorIALfmmuuB
	bOPzw1B4Ha6h+u9WiI9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipnoD-00069v-Nx; Fri, 10 Jan 2020 06:30:13 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipno2-0005M0-MZ; Fri, 10 Jan 2020 06:30:04 +0000
X-UUID: 3a709631d0df46f19b826d746124cbce-20200109
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=2hX33a9oKQvAaZtJ3NQ0cW54cICk0Docx++JIfjlN54=; 
 b=C1L+sKksrUCaSk1L4aeeOVIVRwEj1HUrt9aleg63TRWpo7VBpUS81ERuh3PNSUunD9Xu1wprIqEyvlTGUgv9u46+P+pc5ZtS6J/CrC9/cU+QCMQc5rn+h0O25Y2pUfHBO53nYFXa68rXi9isephJKUdMzm32vi13QPLKNVRvKQI=;
X-UUID: 3a709631d0df46f19b826d746124cbce-20200109
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1538986212; Thu, 09 Jan 2020 22:29:49 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 9 Jan 2020 22:20:25 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 Jan 2020 14:18:47 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 10 Jan 2020 14:20:24 +0800
Message-ID: <1578637185.29400.3.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: check for comp->funcs
From: CK Hu <ck.hu@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 10 Jan 2020 14:19:45 +0800
In-Reply-To: <20200109072900.17988-1-hsinyi@chromium.org>
References: <20200109072900.17988-1-hsinyi@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_223002_754966_A17C232D 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Hsin-yi:

On Thu, 2020-01-09 at 15:29 +0800, Hsin-Yi Wang wrote:
> There might be some comp that doesn't have funcs, eg. hdmi-connector.
> Check for comp->funcs otherwise there will be NULL pointer dereference
> crash.
> 
> Fixes: bd3de8cd782b ("drm/mediatek: Add gamma property according to hardware capability")
> Fixes: 7395eab077f9 ("drm/mediatek: Add ctm property support")

Because the fixed patches are still in my tree, so I merge this patch
with the fixed patches in mediatek-drm-next-5.6 [1].

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.6

Regards,
CK

> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> This patch is based on mediatek's drm branch:
> https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.6
> 
> After
> https://patchwork.freedesktop.org/patch/344477/?series=63328&rev=59,
> there will also be funcs for hdmi-connector.
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index fb142fcfc353..7b392d6c71cc 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -808,11 +808,13 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  
>  		mtk_crtc->ddp_comp[i] = comp;
>  
> -		if (comp->funcs->ctm_set)
> -			has_ctm = true;
> +		if (comp->funcs) {
> +			if (comp->funcs->ctm_set)
> +				has_ctm = true;
>  
> -		if (comp->funcs->gamma_set)
> -			gamma_lut_size = MTK_LUT_SIZE;
> +			if (comp->funcs->gamma_set)
> +				gamma_lut_size = MTK_LUT_SIZE;
> +		}
>  	}
>  
>  	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
