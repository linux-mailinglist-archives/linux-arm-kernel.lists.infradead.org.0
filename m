Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 723822D55B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 08:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ABwLpFMnY/aBKPYxvXiwLI+XsriWqWQ++HY4ZFg6udM=; b=tzdSxuyCZPu6r8
	S/3de70DQKVByeH+StWrad5jXXmE/AJOijpvHX3voqNT5tzT5S+m00Jk8J/21t/wAq0bfKvma25lm
	rf0orkYOxvMhd7xnSjVnEh6wFzRcTJ0xuPKwTwnTGCB9uk6whXGB6W3TN4YV45yCgGPZ5e8xm79M/
	V9HF2nQFhuX/Ouv97NHoXlU5AzGH+++V/3hbSa3ucerfX6+lUZ7IYAkH+2YyU+Fip7LDOkQ8onZB7
	a1CFuSQsWmJo+vQraux/wdimaExKLsMYoVQSfn/F6eZ6UJarn7S89+RRtl+1stk6MzftizOg/zgsH
	QOHGu4XGUA4q4pEciFKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVrld-0004kA-Di; Wed, 29 May 2019 06:08:53 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVrlV-0004jD-1V
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 06:08:46 +0000
Received: by mail-qt1-x842.google.com with SMTP id y57so1198755qtk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 23:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9m6XmpcV32pBGRaKWaAZOu/nkbXf9RLY5czIdmVMIiE=;
 b=Vk/pDafXgg2bzDpfTFeKjsIp8WdKd3TNKbs23N/It+yi/CVfzyhiySQJ8J4jtLszAi
 LFiveV8PEpd6y+Dsh/gNPfB9fYQ5zv+RrOkISmmXalE+GzteLeypk6R36MTVSR1m/T6a
 wfTXpmePwdYxnvW4o3FzOIubaWyRpDgNwMyP8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9m6XmpcV32pBGRaKWaAZOu/nkbXf9RLY5czIdmVMIiE=;
 b=aXgemX1H96cAUGCfKyQuo2u2wC9qbfd1ZnxWG8CHPV2+Cg2uKL+K6VF/4QkOyTGw2G
 t/lx2aKsJhf5wrP6PlLkgPCdG+l37aVuTL9u1uAvSC+yk393jYTk/i6UxJ5EEZ3PQGvu
 3J+kMbmfnckIWV0JhkNvOXyeiH+4X31k/zn/Lb6QIeyK/gGJ2OIlfBXMBHmUApGj1jf/
 LgTPVkrG9HR086Vcfu/kB0tFDASD2AGx+Z7LfEE4ElEzIf8K7//0LGrG1VmrUxaekQAd
 UnyMaX/8qHLY/C+D0HtdMW/ofn9Rc2M1+2PE5XpeerVBOY1hlse/AgF5D0UA0P7lgDb8
 77vA==
X-Gm-Message-State: APjAAAUOLTbxFYIklY09BPsNIda28BBoADs9nOwNBm+BtteYAAwSNPDJ
 bUTbfQToSbqd/BvyghKFPLwtSFRiityvAqKgXNnQkQ==
X-Google-Smtp-Source: APXvYqy1lIVHOTaLcihvMF7zGLF3pmNL3AVewtEF/CAwLER2Lc1MzHGPozPVQVC8HRo0kHV7SIzbmTEe6U0L3SD3dn4=
X-Received: by 2002:a0c:b621:: with SMTP id f33mr68502313qve.199.1559110123624; 
 Tue, 28 May 2019 23:08:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190527045054.113259-1-hsinyi@chromium.org>
 <20190527045054.113259-3-hsinyi@chromium.org>
 <1559109490.15592.6.camel@mtksdaap41>
In-Reply-To: <1559109490.15592.6.camel@mtksdaap41>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 29 May 2019 14:08:17 +0800
Message-ID: <CAJMQK-gQ_j4ma_EjGbFJOz6WGXy3UZA0F9JZYnFHPZ0F08rXog@mail.gmail.com>
Subject: Re: [PATCH 2/3] drm: mediatek: remove clk_unprepare() in
 mtk_drm_crtc_destroy()
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_230845_110702_23157061 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, May 29, 2019 at 1:58 PM CK Hu <ck.hu@mediatek.com> wrote:
>
> Hi, Hsin-Yi:
>
> On Mon, 2019-05-27 at 12:50 +0800, Hsin-Yi Wang wrote:
> > There is no clk_prepare() called in mtk_drm_crtc_reset(), when unbinding
> > drm device, mtk_drm_crtc_destroy() will be triggered, and the clocks will
> > be disabled and unprepared in mtk_crtc_ddp_clk_disable. If clk_unprepare()
> > is called here, we'll get warnings[1], so remove clk_unprepare() here.
>
> In original code, clk_prepare() is called in mtk_drm_crtc_create() and
> clk_unprepare() is called in mtk_drm_crtc_destroy(). This looks correct.

clk_prepare() is removed in https://patchwork.kernel.org/patch/10872777/.

> I don't know why we should do any thing about clock in
> mtk_drm_crtc_reset(). To debug this, the first step is to print message
> when mediatek drm call clk_prepare() and clk_unprepare(). If these two
> interface is called in pair, I think we should not modify mediatek drm
> driver, the bug maybe in clock driver.
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
