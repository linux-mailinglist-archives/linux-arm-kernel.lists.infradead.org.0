Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 983031122D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 07:25:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZdkFseghYxVtLt9wDlwW26k0dCK85HLmnctdYvyNnc=; b=cOS1cJL4JvisqO
	MIhZMx7vhbvcZudkGsuqkox7nHcIft6Lac1cT0EH+athVSsmgsSFi4Qi1vm7/FE0QemlIOM5zlBEI
	wTfMmF0aEpiyG8GXjmHMMmJ/4dLSgqYGwOrAILHaQ0W1JtIcWWgQONAjYUR4bBCdPrLL9bA57xYPD
	yaaKEyEAAzVLL7BSdKGSeiMvc5vV+36ubAVtvqLQFGuIsx5P3a8LzZeFbJ/FDKp0Gfw6MMSqaYOwU
	ggglmg0pqRB+5ORJiSRIkbkqAbod3MmBwLSp5v8T/CRRCKXfc8CTl4UrogiBEDvl7UCXXZEKFAvAQ
	OOA5QuVPqMybuUABpxiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icO5n-00030s-9o; Wed, 04 Dec 2019 06:24:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icO5g-0002zd-BG; Wed, 04 Dec 2019 06:24:49 +0000
X-UUID: af174dfab5b54224a424c25b7954033c-20191203
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=onmReCYD7W/Vup2pHh/rp8OuhOnAHM7QSGZUnYNplWU=; 
 b=SSiHqlRMM5/wJhvJIrH0KzvUl4ot25xcvYXU4Mvpw4bv/Nb4o34dPP4JdmrnoCrDZDd8NeWymEQXxgvfnS80DkzMrEYD5Fp/WiSa/WmbbTXT7qwlZ7opkrwDH20cpt5u3oop71JLU26vP5gDKbsduJdeEzb1P2PdH/KzGDtoTFs=;
X-UUID: af174dfab5b54224a424c25b7954033c-20191203
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 325462996; Tue, 03 Dec 2019 22:24:33 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Dec 2019 22:24:43 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Dec 2019 14:24:25 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 4 Dec 2019 14:23:36 +0800
Message-ID: <1575440670.29074.0.camel@mtksdaap41>
Subject: Re: [PATCH v2 4/6] drm/mediatek: remove unused external function
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Wed, 4 Dec 2019 14:24:30 +0800
In-Reply-To: <20191203071036.14158-5-bibby.hsieh@mediatek.com>
References: <20191203071036.14158-1-bibby.hsieh@mediatek.com>
 <20191203071036.14158-5-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_222448_391506_732B04D7 
X-CRM114-Status: GOOD (  12.44  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: drinkcat@chromium.org, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 tfiga@chromium.org, YT Shen <yt.shen@mediatek.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Bibby:

On Tue, 2019-12-03 at 15:10 +0800, Bibby Hsieh wrote:
> layer_on and layer_off both are unused external function,
> remove them from mtk_ddp_comp_funcs structure.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c     |  2 --
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h | 16 ----------------
>  2 files changed, 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index 722a5adb79dc..8a32248671c3 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -314,8 +314,6 @@ static const struct mtk_ddp_comp_funcs mtk_disp_ovl_funcs = {
>  	.disable_vblank = mtk_ovl_disable_vblank,
>  	.supported_rotations = mtk_ovl_supported_rotations,
>  	.layer_nr = mtk_ovl_layer_nr,
> -	.layer_on = mtk_ovl_layer_on,
> -	.layer_off = mtk_ovl_layer_off,
>  	.layer_check = mtk_ovl_layer_check,
>  	.layer_config = mtk_ovl_layer_config,
>  	.bgclr_in_on = mtk_ovl_bgclr_in_on,
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> index ec55c7488cc3..653ef1cb3748 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> @@ -79,8 +79,6 @@ struct mtk_ddp_comp_funcs {
>  	void (*disable_vblank)(struct mtk_ddp_comp *comp);
>  	unsigned int (*supported_rotations)(struct mtk_ddp_comp *comp);
>  	unsigned int (*layer_nr)(struct mtk_ddp_comp *comp);
> -	void (*layer_on)(struct mtk_ddp_comp *comp, unsigned int idx);
> -	void (*layer_off)(struct mtk_ddp_comp *comp, unsigned int idx);
>  	int (*layer_check)(struct mtk_ddp_comp *comp,
>  			   unsigned int idx,
>  			   struct mtk_plane_state *state);
> @@ -151,20 +149,6 @@ static inline unsigned int mtk_ddp_comp_layer_nr(struct mtk_ddp_comp *comp)
>  	return 0;
>  }
>  
> -static inline void mtk_ddp_comp_layer_on(struct mtk_ddp_comp *comp,
> -					 unsigned int idx)
> -{
> -	if (comp->funcs && comp->funcs->layer_on)
> -		comp->funcs->layer_on(comp, idx);
> -}
> -
> -static inline void mtk_ddp_comp_layer_off(struct mtk_ddp_comp *comp,
> -					  unsigned int idx)
> -{
> -	if (comp->funcs && comp->funcs->layer_off)
> -		comp->funcs->layer_off(comp, idx);
> -}
> -
>  static inline int mtk_ddp_comp_layer_check(struct mtk_ddp_comp *comp,
>  					   unsigned int idx,
>  					   struct mtk_plane_state *state)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
