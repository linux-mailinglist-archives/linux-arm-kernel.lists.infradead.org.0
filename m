Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 658561621A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 08:46:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Gqh9D1oKamSRi97dxs+zFUfbF7WN+mnTZT9gLP7n4A=; b=Ny/r9hxqHcFBYB
	QLbIxFwg70G8AK9mIWXbV6j2zbwK+ylnVLavmaR+Qs9IJgB0EX0FaTYEhKWtAxtppwKFNCf01ZDxi
	oFuarTvfSjiv5QoaAnNDbV+foK8vQLlQrfQpkynEHA53IK7b0q3rsHoCJd6RBEBxXOLiDLSmhHxTZ
	gx7sZmux2rqC9WfBD5fC1vvqA9YKFkY02QfObwECYPfA4wOnHFeZHx13u68RBt1FoFS24MgNvA5Ia
	QpCwx//7OC2HKgOWnXLs6FUzwBQa9jGNS3tCIY4rwdfI0JeWsgdwTxR4G07u0D2pb/6CjlfJymmMT
	FEZmQwSexGvTLXJd6H5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3xa6-0001FC-JR; Tue, 18 Feb 2020 07:46:10 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3xZv-0001Ef-OK; Tue, 18 Feb 2020 07:46:01 +0000
X-UUID: 8bd6f3e3b6bc473180ee207c18f1ab2b-20200217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=gXxsoIz5rNgYDJa/BekJBxJDDBHJBtuzwIcBZe8U+9w=; 
 b=FmX6aLHYDs7Nl8uGTBxV8IdSnL78tk1vdeim1IE3sKkhAKqRpEjvBl8oYkpjj8Jk+CbfsCHpU9ZMDzFNWUnfbrwXwVC59j/d4Dcty8v7HMP66DPRLCvYYeMfA37v0VYEkHfDVrAyS6D+twUJZRdzvmYtQKwIHwM5iktRBwuYpk0=;
X-UUID: 8bd6f3e3b6bc473180ee207c18f1ab2b-20200217
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 807655989; Mon, 17 Feb 2020 23:45:55 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 23:46:15 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 18 Feb 2020 15:45:07 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 18 Feb 2020 15:45:28 +0800
Message-ID: <1582011952.15399.0.camel@mtksdaap41>
Subject: Re: [PATCH 1/2] drm/mediatek: add plane check in async_check function
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Tue, 18 Feb 2020 15:45:52 +0800
In-Reply-To: <1581566078.12071.0.camel@mtksdaap41>
References: <20200213012353.26815-1-bibby.hsieh@mediatek.com>
 <1581566078.12071.0.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_234559_798291_A51C3652 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Thu, 2020-02-13 at 11:54 +0800, CK Hu wrote:
> Hi, Bibby:
> 
> On Thu, 2020-02-13 at 09:23 +0800, Bibby Hsieh wrote:
> > MTK do rotation checking and transferring in layer check function,
> > but we do not check that in atomic_check,
> > so add back in atomic_check function.
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
> >  drivers/gpu/drm/mediatek/mtk_drm_plane.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> > index 189744d34f53..d32b494ff1de 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> > @@ -81,6 +81,7 @@ static int mtk_plane_atomic_async_check(struct drm_plane *plane,
> >  					struct drm_plane_state *state)
> >  {
> >  	struct drm_crtc_state *crtc_state;
> > +	int ret;
> >  
> >  	if (plane != state->crtc->cursor)
> >  		return -EINVAL;
> > @@ -91,6 +92,11 @@ static int mtk_plane_atomic_async_check(struct drm_plane *plane,
> >  	if (!plane->state->fb)
> >  		return -EINVAL;
> >  
> > +	ret = mtk_drm_crtc_plane_check(state->crtc, plane,
> > +				       to_mtk_plane_state(state));
> > +	if (ret)
> > +		return ret;
> > +
> >  	if (state->state)
> >  		crtc_state = drm_atomic_get_existing_crtc_state(state->state,
> >  								state->crtc);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
