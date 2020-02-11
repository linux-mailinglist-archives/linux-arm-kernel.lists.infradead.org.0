Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AF91587DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 02:20:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9jx4vs/bsEivDAU4D8AF75wNPqYUnumc4MSBO1eCrDQ=; b=UmXLutgV/qJb+I
	EQJa2j3F8DdGSdJmdgCU5AyroBOMmtSLCEYo6atnZHWlDGjHDpucctEFz/KBDGjromMZ6HXVgKMPA
	rme82mRtrpGc8IiB7EUffPtLlMv8NkEDbO0z1yf3jvyT61zyHeLkIT5nkAqLZ57WGAoAyXwrxe4JI
	JU9d+bV2ru7TQH6idEtgWWHIM0bn76o/KqL7Dy0VtiQBiKdWCm3pR6dm3kX0Bb85Oiv+3k4F8I+Uf
	9vjrc+tyXmsn33SnWH4GqdhTWbT2jMn/M9qn5GGNSd65v/p6IBr6D2TEfP+zZ4xJSbNVawX9uCGgX
	1Zi99nwYkCauGw48XUWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1KDS-00076n-Ok; Tue, 11 Feb 2020 01:19:54 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1KDH-000756-Gy; Tue, 11 Feb 2020 01:19:45 +0000
X-UUID: 2bd2d24f8b8d4ed6aacb6406d9c7b159-20200210
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=mxKXHpMsJ5tja8hbUWbIbhD1W2Y9D1qbD+njzeGZeLo=; 
 b=Tktp5Ttsa726dao3RTS7GoXNd3YZYVkBSmBNjTBUHKgRcmtOlWHLtbpvTeZ0H+EMYjJVOfPSXOkbwQX8qcIzttInXfMIfiR9XW6jUSLcpkveZBE6B7qJcZXuFuhFpsrbnepqeSobKjpdZefnXWfoCuKQ1OBPbbkV4FsBfRWGU3s=;
X-UUID: 2bd2d24f8b8d4ed6aacb6406d9c7b159-20200210
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 637836253; Mon, 10 Feb 2020 17:19:37 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Feb 2020 17:19:42 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Feb 2020 09:18:52 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Feb 2020 09:20:00 +0800
Message-ID: <1581383974.3194.1.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: Find the cursor plane instead of hard
 coding it
From: CK Hu <ck.hu@mediatek.com>
To: Sean Paul <sean@poorly.run>
Date: Tue, 11 Feb 2020 09:19:34 +0800
In-Reply-To: <CAMavQKLqr=a=WZKFfC2sEBcskjX+k-82a3V3XVk7LQLzpAMaBg@mail.gmail.com>
References: <20200206140140.GA18465@art_vandelay>
 <20200207152348.1.Ie0633018fc787dda6e869cae23df76ae30f2a686@changeid>
 <1581064499.590.0.camel@mtksdaap41> <1581303187.951.2.camel@mtksdaap41>
 <CAMavQKLqr=a=WZKFfC2sEBcskjX+k-82a3V3XVk7LQLzpAMaBg@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_171943_579355_B5A50621 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Evan Benn <evanbenn@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-02-10 at 09:10 -0500, Sean Paul wrote:
> On Sun, Feb 9, 2020 at 9:53 PM CK Hu <ck.hu@mediatek.com> wrote:
> >
> > Hi, Evan:
> >
> > On Fri, 2020-02-07 at 16:34 +0800, CK Hu wrote:
> > > Hi, Evan:
> > >
> > > On Fri, 2020-02-07 at 15:23 +1100, Evan Benn wrote:
> > > > The cursor and primary planes were hard coded.
> > > > Now search for them for passing to drm_crtc_init_with_planes
> > > >
> > >
> > > Reviewed-by: CK Hu <ck.hu@mediatek.com>
> >
> > Applied to mediatek-drm-fixes-5.6 [1], thanks.
> >
> 
> Hi CK,
> Thanks for picking this up. Before you send the pull, could you please
> reverse the order of these 2 patches? Evan's should come before mine
> to prevent a regression.
> 
> Sean
> 

Hi, Sean:

Thanks for your notice. I've reversed the order.

Regards,
CK

> > [1]
> > https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-fixes-5.6
> >
> > Regards,
> > CK
> >
> > >
> > > > Signed-off-by: Evan Benn <evanbenn@chromium.org>
> > > > ---
> > > >
> > > >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 18 ++++++++++++------
> > > >  1 file changed, 12 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > > > index 7b392d6c71cc..935652990afa 100644
> > > > --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > > > +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > > > @@ -658,10 +658,18 @@ static const struct drm_crtc_helper_funcs mtk_crtc_helper_funcs = {
> > > >
> > > >  static int mtk_drm_crtc_init(struct drm_device *drm,
> > > >                          struct mtk_drm_crtc *mtk_crtc,
> > > > -                        struct drm_plane *primary,
> > > > -                        struct drm_plane *cursor, unsigned int pipe)
> > > > +                        unsigned int pipe)
> > > >  {
> > > > -   int ret;
> > > > +   struct drm_plane *primary = NULL;
> > > > +   struct drm_plane *cursor = NULL;
> > > > +   int i, ret;
> > > > +
> > > > +   for (i = 0; i < mtk_crtc->layer_nr; i++) {
> > > > +           if (mtk_crtc->planes[i].type == DRM_PLANE_TYPE_PRIMARY)
> > > > +                   primary = &mtk_crtc->planes[i];
> > > > +           else if (mtk_crtc->planes[i].type == DRM_PLANE_TYPE_CURSOR)
> > > > +                   cursor = &mtk_crtc->planes[i];
> > > > +   }
> > > >
> > > >     ret = drm_crtc_init_with_planes(drm, &mtk_crtc->base, primary, cursor,
> > > >                                     &mtk_crtc_funcs, NULL);
> > > > @@ -830,9 +838,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
> > > >                     return ret;
> > > >     }
> > > >
> > > > -   ret = mtk_drm_crtc_init(drm_dev, mtk_crtc, &mtk_crtc->planes[0],
> > > > -                           mtk_crtc->layer_nr > 1 ? &mtk_crtc->planes[1] :
> > > > -                           NULL, pipe);
> > > > +   ret = mtk_drm_crtc_init(drm_dev, mtk_crtc, pipe);
> > > >     if (ret < 0)
> > > >             return ret;
> > > >
> > >
> >
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
