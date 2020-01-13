Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED86138BC5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 07:21:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gVErMy4M15kvVg57vaOsOmdQ/zhbP7F20kWKeFlLfsk=; b=OjcXFWGqaxY9jZ
	0COlFvXne+QZoo360E4685mnB0Lh/Nj8prg9Z2lQsggH5ndFli2Q1lHPKLARTUNqqKL2VJWAVlcY0
	bKk3tL5V0niLlJZcpTW944hL181Vb6MXCUXglPtYgK5lFrXpXepLBH/H/q4LOLmcIDLr5UmeQw2hZ
	J7vQEJzZyfF4nP39RyHQc6MvrbkwQbpNg4HFCa0zvl+GsbT5UMX3zfqdADKPOzgNKGytpQODT0VU0
	/1D2/zmppb0bbq5/VPy+FN71sfILHXvGP4lSbxtr/H3oooSbSdeipeEufV5s+Z9I3UPhKKcGsKQC/
	/3YIHqmVnNB7WeQqeSsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqt5q-00050L-Ds; Mon, 13 Jan 2020 06:20:54 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqt5e-0004yE-Jw
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 06:20:43 +0000
Received: by mail-qk1-x741.google.com with SMTP id z76so7557769qka.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 22:20:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rbidIxb647dakpGFJlRyQ3/ihwOOmZc8NjZm9uAOe7Y=;
 b=WxS0Vug8xhyLR97I/t2SZL6RKMcPSykb1/Bq9crc1+OYZoBfukLaCJ9Tc9EkP/uu4X
 Z/um91CPIbStVhvRelpbdaq1iHMzd7+XSjtZ8VepD8xsTX0rMGUdOyTvMt7hl6oHtKMp
 1B6kNdZiMwE4Ii6DDhLJyCHRDlv0pDydLfxB8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rbidIxb647dakpGFJlRyQ3/ihwOOmZc8NjZm9uAOe7Y=;
 b=D0CTBesUwoNG57vBZTX/idtGFjv0+PNkJ5cfmQeKRCw1Fxu7Rk871nyf1hJ0GeHay4
 tfKCeZfblAi9slc4iQynU1yu8/NmTiwgAkSI0fh6FIA2Y/yDYB9Zuy3Bge4QUTd7gsL0
 PCFWyfIdBgCzxQ1fskhlY1EHR8y3OHMSkApDuf+HwKDUaT2ODuf22x7QSVWOsi3R6iti
 UHZyfLyRBYCUjborF3FgIvHpQq0/YAY4mowZpBRC/eEA7y6A9+5yP9tFEvmXS0L32qXP
 FIcbeXsK+BnDUXJrnN6Jp1c/pV1Iy5H2+hxzlKrmdzZMAddy+1usZ3XlA+gZs4Db3bcQ
 WvQw==
X-Gm-Message-State: APjAAAW8ClhGd3GmVknrTBFaPE8iAXGAkP4fy4MjYnaLqS9ahpLQQkiF
 Zzyeq5n6pTfbzoQ68i3B8LR9NVdI/Yh30WJ1D8qPJQ==
X-Google-Smtp-Source: APXvYqyg+DfzeIRu42KEs7ygYGGHEH4ohvCGoNjEgPqdFrdCkhfaR1L7mh+JsDSUmfVNYFE5Ptt8z7b4B+RTP5IqduA=
X-Received: by 2002:a05:620a:6d7:: with SMTP id
 23mr14062530qky.299.1578896440489; 
 Sun, 12 Jan 2020 22:20:40 -0800 (PST)
MIME-Version: 1.0
References: <1578639862-14480-1-git-send-email-jiaxin.yu@mediatek.com>
 <1578639862-14480-4-git-send-email-jiaxin.yu@mediatek.com>
In-Reply-To: <1578639862-14480-4-git-send-email-jiaxin.yu@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 13 Jan 2020 14:20:29 +0800
Message-ID: <CANMq1KBxL55A8vDwNsqNpDmdNUxkpJ+JPByDaTEFwxnPQM8ESw@mail.gmail.com>
Subject: Re: [PATCH v11 3/3] watchdog: mtk_wdt: mt2712: Add reset controller
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_222042_653254_7533CFC9 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Devicetree List <devicetree@vger.kernel.org>,
 Yong Liang <yong.liang@mediatek.com>, freddy.hsin@mediatek.com,
 linux-watchdog@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, chang-an.chen@mediatek.com,
 wim@linux-watchdog.org, linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 3:04 PM Jiaxin Yu <jiaxin.yu@mediatek.com> wrote:
>
> Add reset controller for 2712.
> Besides watchdog, MTK toprgu module alsa provide sub-system (eg, audio,
> camera, codec and connectivity) software reset functionality.
>
> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

This is somewhat ok I guess, as Philipp review the same code before
you split it into 2 patches.

> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Guenter Roeck <groeck7@gmail.com>

Those 2 need to be dropped.

> ---
>  drivers/watchdog/mtk_wdt.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
> index e88aacb0404d..d6a6393f609d 100644
> --- a/drivers/watchdog/mtk_wdt.c
> +++ b/drivers/watchdog/mtk_wdt.c
> @@ -9,6 +9,7 @@
>   * Based on sunxi_wdt.c
>   */
>
> +#include <dt-bindings/reset-controller/mt2712-resets.h>
>  #include <dt-bindings/reset-controller/mt8183-resets.h>
>  #include <linux/delay.h>
>  #include <linux/err.h>
> @@ -67,6 +68,10 @@ struct mtk_wdt_data {
>         int toprgu_sw_rst_num;
>  };
>
> +static const struct mtk_wdt_data mt2712_data = {
> +       .toprgu_sw_rst_num = MT2712_TOPRGU_SW_RST_NUM,
> +};
> +
>  static const struct mtk_wdt_data mt8183_data = {
>         .toprgu_sw_rst_num = MT8183_TOPRGU_SW_RST_NUM,
>  };
> @@ -314,6 +319,7 @@ static int mtk_wdt_resume(struct device *dev)
>  #endif
>
>  static const struct of_device_id mtk_wdt_dt_ids[] = {
> +       { .compatible = "mediatek,mt2712-wdt", .data = &mt2712_data },
>         { .compatible = "mediatek,mt6589-wdt" },
>         { .compatible = "mediatek,mt8183-wdt", .data = &mt8183_data },
>         { /* sentinel */ }
> --
> 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
