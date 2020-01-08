Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C92B9133E3D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 10:23:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2q+wTELZqJnPTddlgHS/B4y/I4mnmpU+0KfL3Txu/A=; b=u344ODCxRiQpzD
	mbHq10JQehAnyGR0IPU9GIydzXN7CvzdI64WvUu6jnOe4RKSLIooGFxAFM//Mv02E9M92M5VBbkIY
	WMrVdNZc7NGo5vG61jZS1tLJeheDNeMH6jG5yh7gHF2msjh9kmc7t9ct0fBp/gAn5c9CVm59+FPyd
	IvBwP2oK3gnHtPjOTic6+st9YH/VZ5nHtF8ADeFySNJpTaB0IBLG+8N164TyfCaJ4QvGkVCObyaba
	UhYgiPqBgB8CBxKanBLFvrg6/iDBq9e40dfNdnr/Ub8nZa5c2NuANUG9NiWKuy6c0npvjERq2qYI5
	r09qFIuL1oViBJU4G2Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip7ZE-000323-2r; Wed, 08 Jan 2020 09:23:56 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip7Z4-00030Q-TV
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 09:23:48 +0000
Received: by mail-qk1-x741.google.com with SMTP id a203so2029835qkc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 01:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9dvmLFRNf8+MHZpd2KwDUGsjP9seJu3x0QfwV/busyw=;
 b=MmhgDzpkb3QF+Fx2mfbonhzmTOXYwPOM2REqoidoQz6LZAt7G7Ay1D8WBd0mZmksqC
 Rof5oKMwOHnpbdQeMCW8L+9nP+ZhffuGVq6Dfvcr0PDISyMVL52kKOBHyl6jt/XD4xKO
 OZ6DNx4eETnFloWf4905hXGH+RVD0Pc95Lm9U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9dvmLFRNf8+MHZpd2KwDUGsjP9seJu3x0QfwV/busyw=;
 b=cZFdZCfHbZxiR5m7YY6BklE2zEMaQSkeN5g4LdyHW9awE/j3LaxnNN1mfhIfLdKAdD
 o1ejpNCebBftpqc2quqmN0utri0Mg1QizKYqXPFrlcMIxidDCe8Y+KsVF4vvYHxcd6Jh
 dpWp0abESAW9NjbZKER5wHNePUsAb299P/h+UjY3arVohaCSrUoaEoCgXR/VDgfoJ2Vl
 5vVH9GFo2J9C/aTjagAQk/MzzSdaThw6hG0rwN10VaMZzSnxwwga34wAsftMQJ3KbWe2
 EBXVuNOUyd4Zr4wX3BnbwHc2Oc6ri8ozzWaWw1VDUxjKVbnX6HdjvxYtqGqgiP0I1h9Y
 njVA==
X-Gm-Message-State: APjAAAUr79hOSpTz3ZwthVAqtLIaZUREEu7GgzVeK/oztye6+CfgFZ2z
 Kyww5D+Fo/Fw+BUkCpuodiCQ3YIgcSQ6pCB0nYSU1w==
X-Google-Smtp-Source: APXvYqwWV6FSAKUDlqYUh8WnnbcO3wfHfUcUiiCVl4DG3IsL8LYVYSB1P9HskH2Zm2P9Z19FZbHbYqQp7dcB68MOHlo=
X-Received: by 2002:ae9:f003:: with SMTP id l3mr3352513qkg.457.1578475425523; 
 Wed, 08 Jan 2020 01:23:45 -0800 (PST)
MIME-Version: 1.0
References: <1578280296-18946-1-git-send-email-jiaxin.yu@mediatek.com>
 <1578280296-18946-2-git-send-email-jiaxin.yu@mediatek.com>
In-Reply-To: <1578280296-18946-2-git-send-email-jiaxin.yu@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 8 Jan 2020 17:23:34 +0800
Message-ID: <CANMq1KCrDX+svufQEeqHYgAFmFaBS0paEz0EBBte73ehA5PiGw@mail.gmail.com>
Subject: Re: [PATCH v10 1/2] dt-bindings: mediatek: mt8183: Add #reset-cells
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_012346_949584_C0A50CA1 
X-CRM114-Status: GOOD (  18.04  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Jan 6, 2020 at 11:11 AM Jiaxin Yu <jiaxin.yu@mediatek.com> wrote:
>
> Add #reset-cells property and update example
>
> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  .../devicetree/bindings/watchdog/mtk-wdt.txt  | 10 ++++++---
>  .../reset-controller/mt2712-resets.h          | 22 +++++++++++++++++++
>  .../reset-controller/mt8183-resets.h          | 17 ++++++++++++++
>  3 files changed, 46 insertions(+), 3 deletions(-)
>  create mode 100644 include/dt-bindings/reset-controller/mt2712-resets.h
>
> diff --git a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> index 92181b648f52..5a76ac262f8d 100644
> --- a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> +++ b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> @@ -4,6 +4,7 @@ Required properties:
>
>  - compatible should contain:
>         "mediatek,mt2701-wdt", "mediatek,mt6589-wdt": for MT2701
> +       "mediatek,mt2712-wdt", "mediatek,mt6589-wdt": for MT2712

Doesn't look related?

>         "mediatek,mt6589-wdt": for MT6589
>         "mediatek,mt6797-wdt", "mediatek,mt6589-wdt": for MT6797
>         "mediatek,mt7622-wdt", "mediatek,mt6589-wdt": for MT7622
> @@ -14,11 +15,14 @@ Required properties:
>
>  Optional properties:
>  - timeout-sec: contains the watchdog timeout in seconds.
> +- #reset-cells: Should be 1.
>
>  Example:
>
> -wdt: watchdog@10000000 {
> -       compatible = "mediatek,mt6589-wdt";
> -       reg = <0x10000000 0x18>;
> +watchdog: watchdog@10007000 {
> +       compatible = "mediatek,mt8183-wdt",

Well mt8183-wdt compatible is not yet upstream, do you want to work
with Yong Liang to send both these bindings in the same series? (you
can add mt2712 in the same patch as mt8183 binding maybe?)

> +                    "mediatek,mt6589-wdt";
> +       reg = <0 0x10007000 0 0x100>;
>         timeout-sec = <10>;
> +       #reset-cells = <1>;
>  };
> diff --git a/include/dt-bindings/reset-controller/mt2712-resets.h b/include/dt-bindings/reset-controller/mt2712-resets.h
> new file mode 100644
> index 000000000000..9e7ee762f076
> --- /dev/null
> +++ b/include/dt-bindings/reset-controller/mt2712-resets.h
> @@ -0,0 +1,22 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> + * Author: Yong Liang <yong.liang@mediatek.com>
> + */
> +
> +#ifndef _DT_BINDINGS_RESET_CONTROLLER_MT2712
> +#define _DT_BINDINGS_RESET_CONTROLLER_MT2712
> +
> +#define MT2712_TOPRGU_INFRA_SW_RST                             0
> +#define MT2712_TOPRGU_MM_SW_RST                                        1
> +#define MT2712_TOPRGU_MFG_SW_RST                               2
> +#define MT2712_TOPRGU_VENC_SW_RST                              3
> +#define MT2712_TOPRGU_VDEC_SW_RST                              4
> +#define MT2712_TOPRGU_IMG_SW_RST                               5
> +#define MT2712_TOPRGU_INFRA_AO_SW_RST                          8
> +#define MT2712_TOPRGU_USB_SW_RST                               9
> +#define MT2712_TOPRGU_APMIXED_SW_RST                           10
> +
> +#define MT2712_TOPRGU_SW_RST_NUM                               11
> +
> +#endif  /* _DT_BINDINGS_RESET_CONTROLLER_MT2712 */
> diff --git a/include/dt-bindings/reset-controller/mt8183-resets.h b/include/dt-bindings/reset-controller/mt8183-resets.h
> index 8804e34ebdd4..a1bbd41e0d12 100644
> --- a/include/dt-bindings/reset-controller/mt8183-resets.h
> +++ b/include/dt-bindings/reset-controller/mt8183-resets.h
> @@ -78,4 +78,21 @@
>  #define MT8183_INFRACFG_AO_I2C7_SW_RST                         126
>  #define MT8183_INFRACFG_AO_I2C8_SW_RST                         127
>
> +#define MT8183_INFRACFG_SW_RST_NUM                             128
> +
> +#define MT8183_TOPRGU_MM_SW_RST                                        1
> +#define MT8183_TOPRGU_MFG_SW_RST                               2
> +#define MT8183_TOPRGU_VENC_SW_RST                              3
> +#define MT8183_TOPRGU_VDEC_SW_RST                              4
> +#define MT8183_TOPRGU_IMG_SW_RST                               5
> +#define MT8183_TOPRGU_MD_SW_RST                                        7
> +#define MT8183_TOPRGU_CONN_SW_RST                              9
> +#define MT8183_TOPRGU_CONN_MCU_SW_RST                          12
> +#define MT8183_TOPRGU_IPU0_SW_RST                              14
> +#define MT8183_TOPRGU_IPU1_SW_RST                              15
> +#define MT8183_TOPRGU_AUDIO_SW_RST                             17
> +#define MT8183_TOPRGU_CAMSYS_SW_RST                            18
> +
> +#define MT8183_TOPRGU_SW_RST_NUM                               19
> +
>  #endif  /* _DT_BINDINGS_RESET_CONTROLLER_MT8183 */
> --
> 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
