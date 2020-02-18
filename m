Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 154051621AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 08:47:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RtRfJKaz0u4GxbpO3Dt/KSGnIkYq9Wqo8Dcnr7zLs4c=; b=Rcdp5CCXiC5Bng
	V3VkueDQfFpNb/DSQLaPXSTAGuJj7BTVfXsovX3PGkU82D2TJnXHfxE086FNsFcVkZuV94sBoJhza
	I5W2XoqCkZx7Ocv59T2wha+q1bf1kdLRf4Kv7wxDc9ZQ+2LA0AKq/5njwsf4+59wabiJ4hTILe8Ol
	evqJ3VHbaVVoQ95VpQai4yzAnCNfBedAwwl+hTsXo7ZT8q46Qs+rj67BsAfbAKFXVoovV7CZPtbuD
	PeWoqEkGI4P7Fegjo5Hhx3l3Lw1WdUXDWRPTMHH6BJV97Oeon6T+Vf/RxdOu31NbNKSkCaUutV0lR
	4mp1tRcpuWcJXXqKaTDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3xar-0001Xf-Cj; Tue, 18 Feb 2020 07:46:57 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3xac-0001XD-G6; Tue, 18 Feb 2020 07:46:47 +0000
X-UUID: 7a6e10c522a6428ca028a7d600ad6149-20200217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=g5TmMK5xtaVwCyccKk6B3PT0J4POGsB8eAQQZd7hA8o=; 
 b=HD7TFrvS6QC6Drlf77grZ51MNyFDbKjPzyk/JZWI7CRHiSbSg7oCO6b/oSx4fJoCbx0bk/AlUNiQyynHV+uoluE2iLBPc3LQp6P/N53YrOxpoGQ1dAAIy1Gb4munRdwCCMWiubHm07o1ARpMbctJt76bjdpObTDYTjfxy8IP++I=;
X-UUID: 7a6e10c522a6428ca028a7d600ad6149-20200217
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1905686676; Mon, 17 Feb 2020 23:46:40 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 23:47:00 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 18 Feb 2020 15:45:47 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 18 Feb 2020 15:46:14 +0800
Message-ID: <1582011997.15399.1.camel@mtksdaap41>
Subject: Re: [PATCH 2/2] drm/mediatek: add fb swap in async_update
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Tue, 18 Feb 2020 15:46:37 +0800
In-Reply-To: <1581566763.12071.1.camel@mtksdaap41>
References: <20200213012353.26815-1-bibby.hsieh@mediatek.com>
 <20200213012353.26815-2-bibby.hsieh@mediatek.com>
 <1581566763.12071.1.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_234646_363838_96664F17 
X-CRM114-Status: GOOD (  12.50  )
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

On Thu, 2020-02-13 at 12:06 +0800, CK Hu wrote:
> Hi, Bibby:
> 
> On Thu, 2020-02-13 at 09:23 +0800, Bibby Hsieh wrote:
> > Besides x, y position, width and height,
> > fb also need updating in async update.
> > 
> 
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> 

Applied to mediatek-drm-fixes-5.6 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-fixes-5.6

Regards,
CK

> > Fixes: 920fffcc8912 ("drm/mediatek: update cursors by using async atomic update")
> > 
> > Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_drm_plane.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> > index d32b494ff1de..e084c36fdd8a 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> > @@ -122,6 +122,7 @@ static void mtk_plane_atomic_async_update(struct drm_plane *plane,
> >  	plane->state->src_y = new_state->src_y;
> >  	plane->state->src_h = new_state->src_h;
> >  	plane->state->src_w = new_state->src_w;
> > +	swap(plane->state->fb, new_state->fb);
> >  	state->pending.async_dirty = true;
> >  
> >  	mtk_drm_crtc_async_update(new_state->crtc, plane, new_state);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
