Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B15B2DB08
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:49:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rYMYTM/yu0+b7eqnjd63Q8pkx2JWfdHY2ZQFwIyCWhM=; b=IJeONVAloArr/R
	EkTeQMiRHSr2NcRD5wjJOqWBx7h3RjZkAIih4B0cYQthQis5uiSWIo3VLzbM/jgsKXXdjKIVsiRBc
	AVDu7yT8cd2SWb13zomIzdul5nbAKu+c59m0iqn472oQKr5ZSajkavoxr5RNdZQFfNUIZr+iFq3Oe
	dOMuDJ1GdxG0nRn77EXBfMWRS55hzv0Ton9eqgDWTdCQ28Z5eW2zlFrDWSApElXg9QDkFjnbR3dSs
	Va4IerXskeyrR+KAhnnWqDp2qKtp6pRk42clQxoMhQ9AzOBeQLB1eo/bXwOYiJ3PGrei/i2EgoKc6
	O/AvFKjdpDa+JvaaFqYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVw8y-0001Xx-5Q; Wed, 29 May 2019 10:49:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVw8b-0001D9-Kr; Wed, 29 May 2019 10:48:59 +0000
X-UUID: 935f5b927ff54ec6af1126778e6ca0da-20190529
X-UUID: 935f5b927ff54ec6af1126778e6ca0da-20190529
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 828213650; Wed, 29 May 2019 02:48:45 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 May 2019 03:48:44 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs01n1.mediatek.inc
 (172.21.101.68) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 29 May 2019 18:48:41 +0800
Received: from [10.16.6.141] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 29 May 2019 18:48:39 +0800
Message-ID: <1559126919.12097.6.camel@mszsdaap41>
Subject: Re: [PATCH v2] gpu/drm: mediatek: call mtk_dsi_stop() after
 mtk_drm_crtc_atomic_disable()
From: Jitao Shi <jitao.shi@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 29 May 2019 18:48:39 +0800
In-Reply-To: <CAJMQK-g3JZ3Eg5U9OmYP9UU3k22VXGWOvZSBrFtAFFHw0Uq0cA@mail.gmail.com>
References: <20190320071825.20268-1-hsinyi@chromium.org>
 <1553131722.18216.10.camel@mtksdaap41>
 <1553132815.18216.18.camel@mtksdaap41>
 <CAJMQK-j9af8_L7DsWzgUy3=0Mr65FFeU71owan+acQgRuAnE7w@mail.gmail.com>
 <1553217695.25217.5.camel@mtksdaap41>
 <CAJMQK-g3JZ3Eg5U9OmYP9UU3k22VXGWOvZSBrFtAFFHw0Uq0cA@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_034853_926169_E720E334 
X-CRM114-Status: GOOD (  30.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 CK Hu =?UTF-8?Q?=28=E8=83=A1=E4=BF=8A=E5=85=89=29?= <ck.hu@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-03-22 at 13:05 +0800, Hsin-Yi Wang wrote:
> On Fri, Mar 22, 2019 at 9:21 AM CK Hu <ck.hu@mediatek.com> wrote:
> >
> > Hi, Hsin-yi:
> >
> > On Thu, 2019-03-21 at 22:09 +0800, Hsin-Yi Wang wrote:
> > > On Thu, Mar 21, 2019 at 9:46 AM CK Hu <ck.hu@mediatek.com> wrote:
> > > >
> > > > Hi, Hsin-yi:
> > > >
> > > > On Thu, 2019-03-21 at 09:28 +0800, CK Hu wrote:
> > > > > Hi, Hsin-yi:
> > > > >
> > > > > On Wed, 2019-03-20 at 15:18 +0800, Hsin-Yi Wang wrote:
> > > > > > mtk_dsi_stop() should be called after mtk_drm_crtc_atomic_disable(), which needs
> > > > > > ovl irq for drm_crtc_wait_one_vblank(), since after mtk_dsi_stop() is called,
> > > > > > ovl irq will be disabled. If drm_crtc_wait_one_vblank() is called after last
> > > > > > irq, it will timeout with this message: "vblank wait timed out on crtc 0". This
> > > > > > happens sometimes when turning off the screen.
> > > > > >
> > > > > > In drm_atomic_helper.c#disable_outputs(),
> > > > > > the calling sequence when turning off the screen is:
> > > > > >
> > > > > > 1. mtk_dsi_encoder_disable()
> > > > > >      --> mtk_output_dsi_disable()
> > > > > >        --> mtk_dsi_stop();  // sometimes make vblank timeout in atomic_disable
> > > > > >        --> mtk_dsi_poweroff();
> > > > > > 2. mtk_drm_crtc_atomic_disable()
> > > > > >      --> drm_crtc_wait_one_vblank();
> > > > > >      ...
> > > > > >        --> mtk_dsi_ddp_stop()
> > > > > >          --> mtk_dsi_poweroff();
> > > > > >
> > > > > > mtk_dsi_poweroff() has reference count design, change to make mtk_dsi_stop()
> > > > > > called in mtk_dsi_poweroff() when refcount is 0.
> > > > > >
> > > > > > Fixes: 0707632b5bac ("drm/mediatek: update DSI sub driver flow for sending commands to panel")
> > > > > > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > > > > > ---
> > > > > > change log:
> > > > > > v1->v2:
> > > > > >  * update commit message.
> > > > > >  * call mtk_dsi_stop() in mtk_dsi_poweroff() when refcount is 0.
> > > > > > ---
> > > > > >  drivers/gpu/drm/mediatek/mtk_dsi.c | 5 ++++-
> > > > > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> > > > > > index b00eb2d2e086..e152f37af57d 100644
> > > > > > --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> > > > > > +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> > > > > > @@ -630,6 +630,8 @@ static void mtk_dsi_poweroff(struct mtk_dsi *dsi)
> > > > > >     if (--dsi->refcount != 0)
> > > > > >             return;
> > > > > >
> > > > > > +   mtk_dsi_stop(dsi);
> > > > > > +
> > > > > >     if (!mtk_dsi_switch_to_cmd_mode(dsi, VM_DONE_INT_FLAG, 500)) {
> > > > > >             if (dsi->panel) {
> > > > > >                     if (drm_panel_unprepare(dsi->panel)) {
> > > > >
> > > > > I think you just move mtk_dsi_stop() into mtk_dsi_poweroff() would works
> > > > > fine, but I would rather like calling mtk_dsi_start() and mtk_dsi_stop()
> > > > > in a symmetric manner. That means you may also move below functions into
> > > > > mtk_dsi_poweron():
> > > > >
> > > > > mtk_dsi_set_mode(dsi);
> > > > > mtk_dsi_clk_hs_mode(dsi, 1);
> > > > > mtk_dsi_start(dsi);
> > >
> > > For MT8183 with bridge panel, calling mtk_dsi_start() in
> > > mtk_dsi_poweron() when refcount is 0->1, like the following order,
> > > will results in no irq, not sure why though. I think this might be the
> > > timing issue you mentioned in patch v1. (MT8183 without bridge panel
> > > doesn't have this issue.)
> > >
> > > atomic_enable
> > >   --> mtk_crtc_ddp_hw_init
> > >     --> mtk_dsi_ddp_start
> > >       --> mtk_dsi_poweron (ref 0->1)
> > >         --> drm_panel_prepare
> > >         --> *mtk_dsi_start  // results in no irq for MT8183 with bridge
> > >   --> drm_crtc_vblank_on
> > >
> > > mtk_output_dsi_enable
> > >   --> mtk_dsi_poweron (ref 1->2, ignored)
> > >   --> mtk_dsi_start //original position
> > >
> > > For mtk_dsi_stop() both with or without bridge is fine.
> Add cc Jitao.
> 
> Hi Jitao,
> Do you know if this is a known hardware behavior?
> 
> Thanks

mtk_dsi_start must after dsi full setting.

If you put it in mtk_dsi_ddp_start, mtk_dsi_set_mode won't work. DSI
will keep cmd mode. So you see no irq.

I think we show keep the mtk_dsi_start in mtk_output_dsi_enable 

Best Regards
Jitao

> >
> > I'm not familiar with dsi hardware, so I could not answer why this
> > problem happen. Jitao is familiar with dsi hardware, you may ask him for
> > help. If this is hardware behavior, I could accept asymmetric flow, but
> > please be sure this is hardware behavior not software bug.
> >
> > Regards,
> > CK
> >
> > >
> > > > >
> > > > >
> > > > > > @@ -696,7 +698,6 @@ static void mtk_output_dsi_disable(struct mtk_dsi *dsi)
> > > > > >             }
> > > > > >     }
> > > > > >
> > > > > > -   mtk_dsi_stop(dsi);
> > > > > >     mtk_dsi_poweroff(dsi);
> > > > > >
> > > > > >     dsi->enabled = false;
> > > > > > @@ -1178,6 +1179,8 @@ static int mtk_dsi_remove(struct platform_device *pdev)
> > > > > >     struct mtk_dsi *dsi = platform_get_drvdata(pdev);
> > > > > >
> > > > > >     mtk_output_dsi_disable(dsi);
> > > > > > +   mtk_dsi_stop(dsi);
> > > > > > +   mtk_dsi_poweroff(dsi);
> > > > >
> > > > > I think mtk_output_dsi_disable() would call mtk_dsi_poweroff(), and
> > > > > mtk_dsi_poweroff() would call mtk_dsi_stop(), so these two line are
> > > > > redundant. And I think you should remove mtk_dsi_stop() in
> > > > > mtk_output_dsi_disable(), why not in this patch?
> > > >
> > > > You've removed mtk_dsi_stop() in mtk_output_dsi_disable(), I just miss
> > > > it, sorry for this.
> > > >
> > > > Regards,
> > > > CK
> > > >
> > > > >
> > > > > Regards,
> > > > > CK
> > > > >
> > > > > >     component_del(&pdev->dev, &mtk_dsi_component_ops);
> > > > > >
> > > > > >     return 0;
> > > > >
> > > >
> > > >
> >
> >



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
