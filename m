Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE952D476
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 06:13:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHb4tgsVNlR4egIS4mr8yISJf/ppXzjYX7UTNGhcXH4=; b=VJ2bbGeSzVplPf
	uXXWtlECaCOhLBUhnw0cCCw7xN4fyzA/jXaQ1aSsPtkJkrElUtI7Q/stMwMfI8x68KjktAGqpI5CX
	jv17meJU+z4oeYUlQ6Liov59oYy3A9RoZogW5c9XsL8202cOLBcIT7RURmS6ZpP9bsQdVie/smGLZ
	I2OCeraRBTj8AhpPgFEcDHz1BrysuaZI3BfdJJeFV1W+MsWShgd66IbzSElxG/K0MXDLJfSGgs2Cg
	OmaHhHjkWsMX3zcn584pjRZ9Ho5vnJIuqr0b7n3WRKk8UI+PT4blD2kN/WZpcnGg1Z4IXoD1nv4zo
	m4WOp3vrvfnTK9RBvvFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVpyJ-0000CY-GI; Wed, 29 May 2019 04:13:51 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVpyB-0000B2-7s
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 04:13:45 +0000
Received: by mail-qk1-x744.google.com with SMTP id m18so574063qki.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 21:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ngVfzcL9ABAFEihNZh2xSqucsIOjuLs9bDYJ3YGjY9Q=;
 b=YIwTisss8OGpAsO5/2Od/ZAsztSaHuFNoETgc+pwz5tlfdo1jugcfhz8IblnQtmI4K
 bMfWMEZDSdCnRcJNDWns/FCcqv28+CGtNH13ERpno/IQKcFibz0nqdG40SbqJgLeEcSt
 UnAzXk7cJ1mcSKZetxESeze5pwTk2yKMtRoqM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ngVfzcL9ABAFEihNZh2xSqucsIOjuLs9bDYJ3YGjY9Q=;
 b=TigFZo8Kg8aEiYs2QGSbJa/BDGBeJOnBBofCciml+pqjX7nvf3jadHPGgJtntoE1c4
 i3l5+QrnvfOwNUCKOzvQLaU/lWyfEmCQkbI+GKnI9+M4Gw0VWkoKtBqtt3NIslLINopr
 xQzybql6NVH4g2anrBIL64s3f9/zYkoDkaU7Qf17KzhXhLAuHf6G1l+1e3tqNSsrwgIC
 ZDokXGMDmEpVx2D6CrEBTmdirwM9powUHwv9pWvPB3warOP2I6k6UCI0SZ5wdV+UwcjB
 bAgr4iCkyJAv5ksAqFqkTyqqjGBWoAEueqJF8XJPubpZyvFJabexrq8sIkGeSppOs8xu
 u6XQ==
X-Gm-Message-State: APjAAAXSI4bzUEJkUco2dwv++ZL2zTeP0CIMItpz4BBE7AdMFpa+Wp0v
 AAVs4a5gnVaso7RGMkg5ClNIzLsbtVRW327TBQfriw==
X-Google-Smtp-Source: APXvYqy+xrLrIWh1ypuhtM0OsRgSvv3LdNaJhdhBYvPVYPrtXMmWXw7cZ7Uw7Ssw4uPucZd11u4DhP+e2EgkxFrE2Dk=
X-Received: by 2002:ae9:ec10:: with SMTP id h16mr57494649qkg.215.1559103218155; 
 Tue, 28 May 2019 21:13:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190527045054.113259-1-hsinyi@chromium.org>
 <20190527045054.113259-2-hsinyi@chromium.org>
 <1559093711.11380.6.camel@mtksdaap41>
In-Reply-To: <1559093711.11380.6.camel@mtksdaap41>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 29 May 2019 12:13:12 +0800
Message-ID: <CAJMQK-inLLC+ePfgBJuGYro3z87hvQ8rLQJX-uiEDn_8svnQ1w@mail.gmail.com>
Subject: Re: [PATCH 1/3] drm: mediatek: fix unbind functions
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_211343_339585_0537E0D6 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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

On Wed, May 29, 2019 at 9:35 AM CK Hu <ck.hu@mediatek.com> wrote:
>
> Hi, Hsin-yi:
>
> On Mon, 2019-05-27 at 12:50 +0800, Hsin-Yi Wang wrote:
> > move mipi_dsi_host_unregister() to .remove since mipi_dsi_host_register()
> > is called in .probe.
>
> In the latest kernel [1], mipi_dsi_host_register() is called in
> mtk_dsi_bind(), I think we don't need this part.
>
> [1]
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/mediatek/mtk_dsi.c?h=v5.2-rc2

This patch https://patchwork.kernel.org/patch/10949305/ moves
mipi_dsi_host_register() from .bind to .probe. I'll reply there to ask
the owner to do this.

>
> >
> > detatch panel in mtk_dsi_destroy_conn_enc(), since .bind will try to
> > attach it again.
> >
> > Fixes: 2e54c14e310f ("drm/mediatek: Add DSI sub driver")
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_dsi.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> > index b00eb2d2e086..c9b6d3a68c8b 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> > @@ -844,6 +844,8 @@ static void mtk_dsi_destroy_conn_enc(struct mtk_dsi *dsi)
> >       /* Skip connector cleanup if creation was delegated to the bridge */
> >       if (dsi->conn.dev)
> >               drm_connector_cleanup(&dsi->conn);
> > +     if (dsi->panel)
> > +             drm_panel_detach(dsi->panel);
>
> I think mtk_dsi_destroy_conn_enc() has much thing to do and I would like
> you to do more. You could refer to [2] for complete implementation.
>
> [2]
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/exynos/exynos_drm_dsi.c?h=v5.2-rc2#n1575

Will update in next version.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
