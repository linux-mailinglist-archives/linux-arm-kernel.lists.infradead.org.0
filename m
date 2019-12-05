Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24938113CD2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 09:09:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKGVynJGmR2v4ZuGYAYkg0moxc+0H6H5oU1o4HecCrw=; b=sCgGjfURgWK0ib
	cJVHmUPImWzQlx8hoNGow552GcAPSQSlZ3LWCCXHtVHiEftk7Rj5+b6HfMyIuAJ3MqCP3QAoD4rK1
	ErSyZU9BKeZvCrQ8dAOabYHeizRWI59HPzKUh7gmN9Vj0DmjJHmW9aFP51J9uIQpAf8Z9RspGF44y
	Cj2Tp1tBRf1LIr+k5yVavPhIUj1EgZQ2nC3QIKd1ic4bZzH6vTaiTfFax5y4QmFxm0vjytJjrXYPw
	LRANLjY5V9ykmoKduJgUHSPucY8fgxl0GQDbA7o4tkOQbvW7wJsZvW/fZwL8alMTmmQ01XdoZOTlY
	b13neBs2OudB8EKVvWGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icmC6-00067W-Sa; Thu, 05 Dec 2019 08:09:02 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icmBz-00066p-JO; Thu, 05 Dec 2019 08:08:56 +0000
X-UUID: d771b070edb7431d91d19cb4157e1316-20191205
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=fYO5uWzyAp5Mepj7WHcXlxm3oDWpfSRVYpybAKDaNFk=; 
 b=gDrWFihCU0ORREEkqXp74G5l2/VplD0KdYEuHwJ0q4d1R9I7zgpMoGiEU943orNUrYHoy1WM2oeXme7rm6/La2TDYX2JeDk45oe9SdWSSiJyOMeSzL3eBVbOttAZs3ukAfr9BGFyZ+bKlWK/uO75xB8GqvwfQitJVjdlTQuKbbw=;
X-UUID: d771b070edb7431d91d19cb4157e1316-20191205
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1660406374; Thu, 05 Dec 2019 00:08:52 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Dec 2019 00:09:38 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Dec 2019 16:08:37 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Dec 2019 16:08:12 +0800
Message-ID: <1575533323.11236.5.camel@mtksdaap41>
Subject: Re: [PATCH v2] drm/mediatek: add ctm property support
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Thu, 5 Dec 2019 16:08:43 +0800
In-Reply-To: <1575277423-31182-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1575277423-31182-1-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: AE4A3690827D802DD0F66D5D9CC38B9F4D54BDD034A40FED4BC1007954A2A5DE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_000855_643267_6DCC33C7 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Yongqiang:

On Mon, 2019-12-02 at 17:03 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> add ctm property support
> 
> Change-Id: I8111da7b309b1809c6302e7748dd9fd06dc97bde
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 15 ++++++-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 61 ++++++++++++++++++++++++++++-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h | 11 ++++++
>  3 files changed, 84 insertions(+), 3 deletions(-)
> 

[snip]


> @@ -870,6 +875,12 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  		}
>  
>  		mtk_crtc->ddp_comp[i] = comp;
> +
> +		if (comp_id == DDP_COMPONENT_CCORR)
> +			has_ctm = true;
> +
> +		if (comp_id == DDP_COMPONENT_GAMMA)

Not only DDP_COMPONENT_GAMMA has gamma function, but also
DDP_COMPONENT_AAL0 and DDP_COMPONENT_AAL1. I think it's no good to use
comp_id to decide what function of this component has. The easy way is
just to check weather the function point exist.

Regards,
CK

> +			gamma_lut_size = MTK_LUT_SIZE;
>  	}
>  
>  	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
> @@ -891,7 +902,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  	if (ret < 0)
>  		return ret;
>  	drm_mode_crtc_set_gamma_size(&mtk_crtc->base, MTK_LUT_SIZE);
> -	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, false, MTK_LUT_SIZE);
> +	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, has_ctm, gamma_lut_size);
>  	priv->num_pipes++;
>  #ifdef CONFIG_MTK_CMDQ
>  	mtk_crtc->cmdq_client =

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
