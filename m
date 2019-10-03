Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA6BC9782
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 06:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rsOq5SXhu1EqzR/ob49u4DYOoJA+MGB2u89pRs3M2c=; b=Fps1n2N8wK79en
	1PkPP7355qwCIb1sAUBuB+FAzXZorGY6a9738CBWcidFVgl7JFYBx0QVaxFdKmjMWrByhWzf1gN1C
	Nuc5ZR8wgMXVz0pqXhPpz8YsCBd16p+u9OaRbbql3/nOy8Odw6wBAnObhAg24TGyMALpA7jMC9eN7
	NBH2EoBqb6eqUIyOmpC7ZuylVAVUFYqVpUas58NnbpayP+zKgYYImsYjibwPTszXXLv+nV/mzgcrI
	EUj8WEDfLgOsXMTYgSzSyTFmOxBmV9dlODz35ZjeBUEvJwagW99rOz4pwVcCFdCk4ZsSKRZGsxO+t
	h5ZunPrI5JVhai4qPOIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFsru-0002qp-HT; Thu, 03 Oct 2019 04:37:34 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFsro-0002pw-5N
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 04:37:30 +0000
Received: by mail-io1-xd42.google.com with SMTP id b136so2511012iof.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 21:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MlekqaDeWFJgEd5A1fBRjx/7k1tl63XnhZuTSyHIz4o=;
 b=N2K/o9viZlp1wU82nZeoxpgVml0anhGjTES+V5f7ZmBrN6KXsn0+yIR9qkonlHBcoT
 QTHH63dWxWdeC69Z26P8Len8fBpb+sf26Th2APGZEmm/zT4fcBOA9pShLkEbLizr1o/a
 j6JdKtQ/qw8Yu2WVUJFzygEFLvK0EOs3C2ihQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MlekqaDeWFJgEd5A1fBRjx/7k1tl63XnhZuTSyHIz4o=;
 b=B9Lw9zxar2X7f4YvY3N+13RavoewIyTSQKP4Oc5gIFqImTlTgrHYyilABgozydLNrY
 +Ija1sYMrFfFNmMVSkNS3NRwiUBMeKbJIMq7zOT1eYn+DTYoCGzmEQGdu0S/mnhymC7z
 VmMNj5j0p9r6RiaNcRW2X/XLKSXtI5+yelnvYfmBEX6UkQO8J5/hF2TUeQqlXzFwOdCo
 5cE7QckiWrkdMHWSBxXYX8UfJq9PXjMKW8tF1Oe1NhIgglBO99GNdMJFBp/+414wwjQE
 uxzlIAsw/QkaValYUUlRNoL2BkvHLD6svMvs07Kslx3st5uLoniGu3AfqChg2lOHdUXa
 rQZQ==
X-Gm-Message-State: APjAAAUn1t1F9q0cMJN5cFxlycOQfWlJF8TbXWsDnJnw5jTWZL0ff7GX
 /kfT50YDVKyE2d5Ilnf69N95j+vI5nGgLsABHO2kNbLdt38=
X-Google-Smtp-Source: APXvYqwIWNbnxgMtuGs8BYHnctnPvSODa9WWOtei664E5I8ipwXWBsAKeY9LVmjih5hknlLYsQ8lj89ZirBa1m/Sfzg=
X-Received: by 2002:a92:c74d:: with SMTP id y13mr8131989ilp.77.1570077444611; 
 Wed, 02 Oct 2019 21:37:24 -0700 (PDT)
MIME-Version: 1.0
References: <20191001080253.6135-1-icenowy@aosc.io>
 <20191001080253.6135-3-icenowy@aosc.io>
In-Reply-To: <20191001080253.6135-3-icenowy@aosc.io>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 3 Oct 2019 10:07:13 +0530
Message-ID: <CAMty3ZC-5czGhOwtk7pE+JGbMRKxo7GrpUgnX3dpY8Jt5j_Afg@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 2/3] drm/sun4i: dsi: fix DRQ calculation
To: Icenowy Zheng <icenowy@aosc.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_213728_629550_B3B39287 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Oct 1, 2019 at 1:34 PM Icenowy Zheng <icenowy@aosc.io> wrote:
>
> According to the BSP source code, when calculating the magic DRQ value
> outside burst mode, a formula of "lcd_ht - lcd_x - lcd_hbp", which is
> interpreted as right margin (HFP value). However, currently the
> sun6i_mipi_dsi driver code calculates it wrongly as HFP + sync length,
> which lead to timing error.
>
> Fix the DRQ calculation by change it to use HFP.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
>  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> index c86e11631ebc..2d3e822a7739 100644
> --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> @@ -436,9 +436,9 @@ static void sun6i_dsi_setup_burst(struct sun6i_dsi *dsi,
>                              SUN6I_DSI_BURST_LINE_SYNC_POINT(SUN6I_DSI_SYNC_POINT));
>
>                 val = SUN6I_DSI_TCON_DRQ_ENABLE_MODE;
> -       } else if ((mode->hsync_end - mode->hdisplay) > 20) {
> +       } else if ((mode->hsync_start - mode->hdisplay) > 20) {
>                 /* Maaaaaagic */
> -               u16 drq = (mode->hsync_end - mode->hdisplay) - 20;
> +               u16 drq = (mode->hsync_start - mode->hdisplay) - 20;

I have similar patch in the ML, which required commit details
commented by Chen-Yu [1]. So, I'm trying to send it accordingly, let
me know if you have issues.

[1] https://patchwork.freedesktop.org/patch/305920/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
