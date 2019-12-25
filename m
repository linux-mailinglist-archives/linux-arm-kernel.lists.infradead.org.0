Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2130712A593
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 03:26:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dnKMu2y+rHmxI2V+r/7mmOD2dP9307ZhOwo8kbEvzIQ=; b=jVolRQaROjuPX8
	P8wCbPSHp23jXL4oTLO1zpMU7avpaAI4n0kGLZLUBDchgzHfnUEpCgjBa8/ckOfdq380EpEEPstm7
	KytoPcFBq0Mb1xxRtdrbcnEmIa8EGAooynHvAhzl6R4JV7re648P7uydRdpFvgv9SkvT7Wyi0QQOd
	HozqXnOwo1KJnmkDdBEhbsdfSEaR9rPs4J46M4pePPUavc0w0Re3E5FzIpW4DEUTA/ylhu7hUuugF
	qm7gR1PATfJ7izrP8Kr3SjtTvDPG8kfiptQVKcivP7jRqHm8Urqs0p2/IBEAACVvE6FQxtEHfcN3d
	hUetvvOvLa4IBJn92m8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijwN8-0000aN-Js; Wed, 25 Dec 2019 02:26:02 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijwMt-0000Yt-9s; Wed, 25 Dec 2019 02:25:49 +0000
X-UUID: e2de97014b0e416ebca677a4c5c6337b-20191224
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=DLVZeoCaU5m6aKOaiGtvgtJR1KbLi2bWm0K2n0iyqrI=; 
 b=iR4s97vlZmbFxLNvMGYlt1oVJ/o/fTz0Rq7Vis7q3HUrCEAIiAv6tXKz8bx0u6A6duonBBEMKH8yyEgeC3hHSMBsTBZhuNpkOjDnnGJnKO+Ofg7O00eU66WzCwMKI4dtxzLrkT47xwHZvfsMocFATmzEPXqEY9vVfKZMdD3UXQE=;
X-UUID: e2de97014b0e416ebca677a4c5c6337b-20191224
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1177192986; Tue, 24 Dec 2019 18:25:39 -0800
Received: from mtkexhb02.mediatek.inc (172.21.101.103) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 24 Dec 2019 18:26:01 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkexhb02.mediatek.inc (172.21.101.103) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Dec 2019 10:25:19 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 25 Dec 2019 10:25:38 +0800
Message-ID: <1577240723.3440.1.camel@mtksdaap41>
Subject: Re: [PATCH 1/2] Return from mtk_ovl_layer_config after
 mtk_ovl_layer_off
From: CK Hu <ck.hu@mediatek.com>
To: Mark Yacoub <markyacoub@google.com>
Date: Wed, 25 Dec 2019 10:25:23 +0800
In-Reply-To: <20191211154901.176256-1-markyacoub@google.com>
References: <20191211154901.176256-1-markyacoub@google.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_182547_351882_2EE00347 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
> drm/mediatek: return if plane pending state is disabled.
> 
> If the plane pending state is disabled, call mtk_ovl_layer_off then
> return.
> This guarantees that that the state is valid for all operations when the
> pending state is enabled.

For this series, applied to mediatek-drm-next-5.6 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.6

Regards,
CK

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
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index 4a55bb6e2213..526b595eeff9 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -260,8 +260,10 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
>  	unsigned int src_size = (pending->height << 16) | pending->width;
>  	unsigned int con;
>  
> -	if (!pending->enable)
> +	if (!pending->enable) {
>  		mtk_ovl_layer_off(comp, idx);
> +		return;
> +	}
>  
>  	con = ovl_fmt_convert(ovl, fmt);
>  	if (idx != 0)
> @@ -283,8 +285,7 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
>  	writel_relaxed(offset, comp->regs + DISP_REG_OVL_OFFSET(idx));
>  	writel_relaxed(addr, comp->regs + DISP_REG_OVL_ADDR(ovl, idx));
>  
> -	if (pending->enable)
> -		mtk_ovl_layer_on(comp, idx);
> +	mtk_ovl_layer_on(comp, idx);
>  }
>  
>  static void mtk_ovl_bgclr_in_on(struct mtk_ddp_comp *comp)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
