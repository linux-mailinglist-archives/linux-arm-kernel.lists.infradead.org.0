Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 260EA2D603
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:13:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nCnaOat8/AeyqAQ+mHSMM6GEhkOfiJ+290XUkKzUK9E=; b=BGRADKZAWQy6dI
	sFiY/EgG0vOkO4TmeY9yCPA43drv9W7rRpYDhHgaZ5J+VUl/4H+O2ZqtMp4PtQB2O0fXxfYOWoreo
	hNviNgiu2XAjUufP9thpdBDSn9ZdzMS/jfTG9mSiBStXyNOIOzH64fk1Wb9Bps1sr9XbV4Fp5cl5H
	a4+foX7r5mmNuSEJ0eQix97915bro/PBDLu8yUv7AizBiCTOZljVF6lYOX8nG+22dFiIvkb/pPlv/
	G3xO0wgHGj3cMMIwyWTxgj7jeIPMnAb3Av5mhz0rGl6OhE7XyXd8vfHR8AyswMErFZah/IEUceoIQ
	UG2m0OfdQwPoBF7ys9jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVslg-0000kC-DY; Wed, 29 May 2019 07:13:00 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVslY-0000iv-Dd; Wed, 29 May 2019 07:12:54 +0000
X-UUID: e38dba6e695f42b89a7861883f15d81b-20190528
X-UUID: e38dba6e695f42b89a7861883f15d81b-20190528
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2023928018; Tue, 28 May 2019 23:12:38 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 May 2019 00:12:37 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 May 2019 15:12:35 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 29 May 2019 15:12:35 +0800
Message-ID: <1559113955.4226.1.camel@mtksdaap41>
Subject: Re: [PATCH 2/3] drm: mediatek: remove clk_unprepare() in
 mtk_drm_crtc_destroy()
From: CK Hu <ck.hu@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 29 May 2019 15:12:35 +0800
In-Reply-To: <CAJMQK-gQ_j4ma_EjGbFJOz6WGXy3UZA0F9JZYnFHPZ0F08rXog@mail.gmail.com>
References: <20190527045054.113259-1-hsinyi@chromium.org>
 <20190527045054.113259-3-hsinyi@chromium.org>
 <1559109490.15592.6.camel@mtksdaap41>
 <CAJMQK-gQ_j4ma_EjGbFJOz6WGXy3UZA0F9JZYnFHPZ0F08rXog@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_001252_464978_6D44B080 
X-CRM114-Status: GOOD (  14.25  )
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
 lkml <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Hsin-Yi:

On Wed, 2019-05-29 at 14:08 +0800, Hsin-Yi Wang wrote:
> On Wed, May 29, 2019 at 1:58 PM CK Hu <ck.hu@mediatek.com> wrote:
> >
> > Hi, Hsin-Yi:
> >
> > On Mon, 2019-05-27 at 12:50 +0800, Hsin-Yi Wang wrote:
> > > There is no clk_prepare() called in mtk_drm_crtc_reset(), when unbinding
> > > drm device, mtk_drm_crtc_destroy() will be triggered, and the clocks will
> > > be disabled and unprepared in mtk_crtc_ddp_clk_disable. If clk_unprepare()
> > > is called here, we'll get warnings[1], so remove clk_unprepare() here.
> >
> > In original code, clk_prepare() is called in mtk_drm_crtc_create() and
> > clk_unprepare() is called in mtk_drm_crtc_destroy(). This looks correct.
> 
> clk_prepare() is removed in https://patchwork.kernel.org/patch/10872777/.
> 

I think this patch is a fix of that patch, and I've already applied that
patch, so I merge this patch with that patch in my tree [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commit/937f861def1a1d49abb92e041efaa5c259281fbf

Regards,
CK

> > I don't know why we should do any thing about clock in
> > mtk_drm_crtc_reset(). To debug this, the first step is to print message
> > when mediatek drm call clk_prepare() and clk_unprepare(). If these two
> > interface is called in pair, I think we should not modify mediatek drm
> > driver, the bug maybe in clock driver.
> >



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
