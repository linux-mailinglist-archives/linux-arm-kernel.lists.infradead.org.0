Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB22E11C4FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 05:46:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11hO+IDeOKFE72yHUk7hq3KNGbPkDfm16yhkW9/04GQ=; b=UstM4pP3ZhopK5
	ZH9Jpt+5fVThodTmNljeSZ5Fcy0p5h5KRx+4WJc5pp+0Jlj+ZH4VtbDhZ2AE/H3GRmKoHRjtxiU22
	umoHDrNIUmBfgL78xTQgdA1XM6sPeQ3GXiOgfHklYRD5BBOpDPsmxlovzwdavUIZ8NZ0Y6dUqJgEv
	HG1Qvbp35GbgRFDLll7z6dr9J15RPT0oXfTU/9XZriDnBl/6uZJQaKSbHKmqYL+f0vdmggeQL/eLt
	vpLBZGJXoml++aiC+uHq/kBPG8CjcH3W3dSJfhTXKGlJ+Pfdsrj0wlJ6iksbG1W+tEtXKsJTKY6o7
	9GXG7XYT1HV1FS5bQneQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifGMW-00036x-Jm; Thu, 12 Dec 2019 04:46:04 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifGMM-00035Y-I2; Thu, 12 Dec 2019 04:45:56 +0000
X-UUID: cd177f14b5d14234ac8c7c7b708cedf1-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=v9ZqsgXk9NozG0fT4n7QDFC2xDWiIZjiiZ5zEyF6I8c=; 
 b=b6SBIvR0JKBoKsN1OOfx4W6wTthZbZ9A46X7KGYwcRJfKQ3NkjjOJSA1TjSr+2dlPC1VJCh/LOQiHDPOIPiXGPZi0jvGQUyeHtb0uDQU5h00ux84nN0TZjQ6GK809SMXFLqlgJ6AZASx5wj6RIhszB+f9gLK1jCgaL6gH0hmXIc=;
X-UUID: cd177f14b5d14234ac8c7c7b708cedf1-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 388898350; Wed, 11 Dec 2019 20:45:44 -0800
Received: from mtkexhb01.mediatek.inc (172.21.101.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 20:46:43 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by mtkexhb01.mediatek.inc
 (172.21.101.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 12 Dec 2019 12:45:44 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 12:45:23 +0800
Message-ID: <1576125928.29693.1.camel@mtksdaap41>
Subject: Re: [PATCH 2/2] Turn off Alpha bit when plane format has no alpha
From: CK Hu <ck.hu@mediatek.com>
To: Mark Yacoub <markyacoub@google.com>
Date: Thu, 12 Dec 2019 12:45:28 +0800
In-Reply-To: <20191211154901.176256-2-markyacoub@google.com>
References: <20191211154901.176256-1-markyacoub@google.com>
 <20191211154901.176256-2-markyacoub@google.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_204554_605283_4AE9A5D2 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniele Castagna <dcastagna@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Mark:

On Wed, 2019-12-11 at 10:49 -0500, Mark Yacoub wrote:
> drm/mediatek: Add OVL_CON_ALPHA only when the plane format has_alpha.
> 
> This change enables XR24 format to be displayed as an overlay on top of
> the primary plane.

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Suggested-by: Sean Paul <seanpaul@chromium.org>
> To: CK Hu <ck.hu@mediatek.com>
> To: dri-devel@lists.freedesktop.org
> Cc: Daniele Castagna <dcastagna@chromium.org>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-mediatek@lists.infradead.org
> Signed-off-by: Mark Yacoub <markyacoub@google.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index 526b595eeff9..a7851756dddf 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -266,7 +266,7 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
>  	}
>  
>  	con = ovl_fmt_convert(ovl, fmt);
> -	if (idx != 0)
> +	if (state->base.fb->format->has_alpha)
>  		con |= OVL_CON_AEN | OVL_CON_ALPHA;
>  
>  	if (pending->rotation & DRM_MODE_REFLECT_Y) {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
