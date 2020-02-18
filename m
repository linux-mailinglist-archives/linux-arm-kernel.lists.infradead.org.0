Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F334A162229
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 09:23:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wifzJ/fBz5RE5Lct+IYpaoUWKAjaLDBGR21qgE0myi4=; b=d66LOl32sCCwi9
	LMpyxo7jaLrHou619XmG79/Sv0bAzv1oObxnn4uV9DakWagn/iBmxLW4WIpEACCFs/X6Iao7dR488
	J6p7U3rBIKr8BeSOjKVmY+6ZobVdDuwEwhKdUZJNyVFl/RmP3bZGP91RSiX5IVfdTiiRbVGQ/n4fg
	Z+gV4lzptrn2QuLMMIeyxQYcWsAro9iYBhXQn1RnvV6bgoZBMwNSaCCkh5oWxLZelrH67yOVADDhL
	jVdKRTqUmX5No2SOCd+0WTtxR6yEJ7f6MhX7RedJg3c/wgUFm2UcNSIVQKsq/DVc23FKxcUuJcSiv
	tRMnMX1hE2AJ/mjnTM+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3y9i-0006Tf-3d; Tue, 18 Feb 2020 08:22:58 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3y9Z-0006T4-6Y; Tue, 18 Feb 2020 08:22:50 +0000
X-UUID: 32f66428ddab4b8c8274d972f209aaf7-20200218
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=SfaeYyzD1vskIHsIX3CHP6DvU8UKTsX3PGwgpB+tsvc=; 
 b=mVf66q9caClDpvIVT7XpzG1PZLpTugIeklyrENikbbWCe88V8ZUSqYDnJ/FM65a8FTiEeBSkR4or2kQYIVUXA+Prp5pf4UZPj7CbYIdGy8MadR+o1djiyBN+N9gIAQDtxnqjhBb3VHIf4ziOQuT7HbYR114CQcRJ+LxH/ntw9y8=;
X-UUID: 32f66428ddab4b8c8274d972f209aaf7-20200218
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 634183460; Tue, 18 Feb 2020 00:22:45 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 18 Feb 2020 00:22:42 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 18 Feb 2020 16:22:07 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 18 Feb 2020 16:22:24 +0800
Message-ID: <1582014162.20566.2.camel@mtksdaap41>
Subject: Re: [PATCH 2/3] drm/mediatek: make sure previous message done or be
 aborted before send
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Tue, 18 Feb 2020 16:22:42 +0800
In-Reply-To: <1581662912.17949.4.camel@mtksdaap41>
References: <20200214044954.16923-1-bibby.hsieh@mediatek.com>
 <20200214044954.16923-2-bibby.hsieh@mediatek.com>
 <1581662912.17949.4.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 971137264DABD4948DC8DF38BF36DD743309BA80C941579AAD6973CA1A1390162000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_002249_249372_D5F56B34 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Fri, 2020-02-14 at 14:48 +0800, CK Hu wrote:
> Hi, Bibby:
> 
> On Fri, 2020-02-14 at 12:49 +0800, Bibby Hsieh wrote:
> > Mediatek CMDQ driver removed atomic parameter and implementation
> > related to atomic. DRM driver need to make sure previous message
> > done or be aborted before we send next message.
> > 
> > If previous message is still waiting for event, it means the
> > setting hasn't been updated into display hardware register,
> > we can abort the message and send next message to update the
> > newest setting into display hardware.
> > If previous message already started, we have to wait it until
> > transmission has been completed.
> > 
> > So we flush mbox client before we send new message to controller
> > driver.
> > 
> 
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> 
> > This patch depends on ptach:
> > [0/3] Remove atomic_exec
> > https://patchwork.kernel.org/cover/11381677/
> > 

This patch does not depend on any patch, so applied to
mediatek-drm-fixes-5.6 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-fixes-5.6

Regards,
CK

> > Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > index 3c53ea22208c..e35b66c5ba0f 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > @@ -491,6 +491,7 @@ static void mtk_drm_crtc_hw_config(struct mtk_drm_crtc *mtk_crtc)
> >  	}
> >  #if IS_ENABLED(CONFIG_MTK_CMDQ)
> >  	if (mtk_crtc->cmdq_client) {
> > +		mbox_flush(mtk_crtc->cmdq_client->chan, 2000);
> >  		cmdq_handle = cmdq_pkt_create(mtk_crtc->cmdq_client, PAGE_SIZE);
> >  		cmdq_pkt_clear_event(cmdq_handle, mtk_crtc->cmdq_event);
> >  		cmdq_pkt_wfe(cmdq_handle, mtk_crtc->cmdq_event);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
