Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D520D3285E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 08:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fgZfddlhspWmpCNxnDqhziArX7+us++/OHroPRvDr08=; b=tLRQsy4vwQZfIW
	JctL5ggCbeTBBCgGS1cC2/W6wcCZNJAZI951b3NuLHEdWo5FipPOc2DtOGIt3j9byzJ/eUqd+dEkk
	GH2T/MR1EnbIMk1h4k8xUKbMc3Ygvuo2YlS8PDaBH77tdxwZA2rlTd841gVb3/DaaVL9NiHzVZdN+
	WEw7JGk1mMCnF5D1bJ0qC2H+QmuLdE+LJ6yKQm4Gs3KUdRp4f9gC+P8QaPIRCBvIbPjsqRxop/Aha
	Nnvgfv5Vi0QXA3Tkan+9+wp2t9oENq96iTobgq5qv+Wnyu1jHERXHRFYHjv5f3d3aE/zpzwKr176V
	KAYvQv767S5wuJRgibvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXgDQ-0000uN-7T; Mon, 03 Jun 2019 06:13:04 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXgDJ-0000tQ-Qh
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 06:12:59 +0000
Received: by mail-qk1-x744.google.com with SMTP id m14so10306887qka.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Jun 2019 23:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rQKMvlElkXzkTnW65282CmCjdowsYOxbvU0co6H2Omc=;
 b=fuxr8hy1ndYkPliVijP3ig5I+ip9VWE0P2yh80Jq/MvQG6c9DoiS6lr2FunG35GbPp
 Ndqy5vBKyLtaR3WnnumoaQ/hATDNwRh4VhWFKf29gGr4JSmvjErcNiFS62LTDxLrAwP/
 4gouhbfiCjvi/19vu9jcISzQHvv3SlbTnrJ4o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rQKMvlElkXzkTnW65282CmCjdowsYOxbvU0co6H2Omc=;
 b=GKdbsuxsFA8mzPNwvXar9wx1yxb7hCNRsta4OOWI+PRmIIk6ulUIzDxf9nAliuSN+m
 0RWhN6Lu/6cJnYosJvmxBB3iJTMgIZiXF2C7+gwpwFBEQ7RPoc8ZOMyjqfg5DNMyFIOR
 3rBGrSAVCbbA9RGFOlYmELvEFHkb7wX8OP+f9O18bsMwlD9PsKkg+1k2msZ/pl2nQmvz
 q3lyfAgYjTSfYDIwZhDsNt6Z5a75U9O6DMT2Mb0a6ve7UUfOqxvNhGq0MDoHvjMhsuBQ
 i3IdHJPxaDbBQ8rZ6qYpJ4eM33f721ZdZJhnRf2SkQr+Bb4fYUInLOqe7+Xx3Gjv2dKm
 ewMA==
X-Gm-Message-State: APjAAAXLECMGWwKtW74s6FPlgbUdo2mxoUmDGmvIfkU5rv+3bcAMBhWe
 D8zThNQBiqC7dKtZDT+PAxBsS7Qyuw1CzJhWoH2tag==
X-Google-Smtp-Source: APXvYqyYa6aK4qpb4pHRxq5EdOva3L9eBw4p4afxZAlRUL377+FbepH6pzSX2TDOULWOglfbvTtKnNCF8b4lPScN6ns=
X-Received: by 2002:a05:620a:1425:: with SMTP id
 k5mr20130384qkj.146.1559542376042; 
 Sun, 02 Jun 2019 23:12:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190601092615.67917-1-jitao.shi@mediatek.com>
 <20190601092615.67917-2-jitao.shi@mediatek.com>
In-Reply-To: <20190601092615.67917-2-jitao.shi@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 3 Jun 2019 14:12:30 +0800
Message-ID: <CAJMQK-iW2SfHL0Dgc6p8AmrwjL=XHP4SeyxaZz=R-5x0qLZtFw@mail.gmail.com>
Subject: Re: [v4 1/7] drm/mediatek: move mipi_dsi_host_register to probe
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_231257_895292_9EE848C1 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, CK Hu <ck.hu@mediatek.com>,
 yingjoe.chen@mediatek.com, Thierry Reding <treding@nvidia.com>,
 Sean Paul <seanpaul@chromium.org>, linux-pwm@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki Dae <inki.dae@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Matthias Brugger <matthias.bgg@gmail.com>, eddie.huang@mediatek.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Rahul Sharma <rahul.sharma@samsung.com>, srv_heupstream@mediatek.com,
 lkml <linux-kernel@vger.kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 1, 2019 at 9:26 AM Jitao Shi <jitao.shi@mediatek.com> wrote:

> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -1045,12 +1045,6 @@ static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
>                 return ret;
>         }
>
> -       ret = mipi_dsi_host_register(&dsi->host);
> -       if (ret < 0) {
> -               dev_err(dev, "failed to register DSI host: %d\n", ret);
> -               goto err_ddp_comp_unregister;
> -       }
> -

> @@ -1097,31 +1089,37 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>
>         dsi->host.ops = &mtk_dsi_ops;
>         dsi->host.dev = dev;
> +       dsi->dev = dev;
> +       ret = mipi_dsi_host_register(&dsi->host);
> +       if (ret < 0) {
> +               dev_err(dev, "failed to register DSI host: %d\n", ret);
> +               return ret;
> +       }

(It's commented on v3, in case it's missed, sent this again.)
Since mipi_dsi_host_register() is moved from .bind to .probe,
mipi_dsi_host_unregister() should also be moved from .unbind to
.remove?

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
