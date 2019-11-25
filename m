Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F0A108899
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 07:00:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YjXGp+o7+qZ2LkgGFvThGOhctiQ8LN6YgRewrcirTDQ=; b=IHtHhBTv7wYmOJ
	JZSS4iDeY9eVmx8HAOo9X+2mAvaHO4kv3BTPRz8RJbAvHzilGUXUOa2Xd19NgdAm8UUs2AucnIiOU
	lL+qBzViI0NQ0lXcpXaEOcKsNmSXE60z3Lc/+Nolqv0wzVlmZWgHvQz4qmKrFVs83lLWKSFpvHF6Q
	QK0BGru7n82oZmBSeM7H4w290y1/38AOtCWHg+o+Ez9/VJpzfZj8Uqmlkz7B2JRzWYyl3zaXW23Tn
	/jrxab6t57wtBISq45Dn0jNI5T/uVawVh2jF5GflhupmaORlayumuq2Y1OlqjeIUDKMz834c6UE0O
	MZnTw1XP1KlZM28eGIfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ7Q1-0005dx-EM; Mon, 25 Nov 2019 06:00:17 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ7Pn-00052d-7Y; Mon, 25 Nov 2019 06:00:05 +0000
Received: by mail-oi1-x241.google.com with SMTP id x21so4936429oic.0;
 Sun, 24 Nov 2019 22:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eQSarq49DnVw0rcWLXiTYEIu9cTGbAYlx/j0JgRqweY=;
 b=lMUCkUkIx6zDyfj+LRSdHcnBrXHmd7LOs8TV5s0ik4lMR4GRqIkkYCaFkWYk3ja8GJ
 3wr8spZ5sBsgMXOvP/8mpXW9+7YVjYx9JmcqZTSIqB1aukvWhftunZtOPHw/qGuFYDrl
 ByqXNKjKAuPdLrFiBvylCvZOFtgyUPU7lMiLBp3frRuaS0yKw41e8QQK1FcFA98Z9XOz
 xNrDXG4FfSULpnyUvHcRjCpceu2V/YR/erqUQk3jpvBxxdlQngO8fJrt/pPGm3e+X8GC
 089+fj5kQGO70Uxx6wtmMXcZuUsIA0MppdL2FTgg9jqeRm/dbId+usuJXQHfwJ9T3+z3
 bAJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=eQSarq49DnVw0rcWLXiTYEIu9cTGbAYlx/j0JgRqweY=;
 b=nSS+rhkHmGMfopvSxkHaE18Amq04k4VaSEbK5I4VZlAzEjd7F8F5r35DDAH8G+2Vwo
 deRDNgF+9TasHklRkkwVvpXn0dNn1xSeK6KCFSmCWo/ERHFmEQYdUhWs0HWqf17KhrOV
 3g9MnzpuzkSAKrA8J5vrju+uRLG9qYVlz+LMbLZ/xLtE1YLJbby1JX7tI/YoBRUCdN+Y
 KdSZ6eyBoXtX5DbUrDfR08Ej8jLhM1tER19AkyjHJHDKGRVG7w0wZxqWqzkcvrDXRmlS
 dqffSxdG0NUzM2Qe78y3A85uS23nMMJq7lzm1dQhzrFV2Qa/Rf8rKfzYYmVEJL0kzZuh
 hRqQ==
X-Gm-Message-State: APjAAAXPjmmOAuEdogia7U6ytrXavlxlEGG3+/n9PE1m/aQzDq2eJ/+C
 yqOH5D3A9JMzKau4dW/Fexo=
X-Google-Smtp-Source: APXvYqwCt0pUp/5ulJPVJkFBTwEMCdOrZj32Tq6wBeqxy3b7qSTAS+1dBmRCxNXy1JlJOaeQ7a/AFQ==
X-Received: by 2002:a05:6808:4c3:: with SMTP id
 a3mr22503775oie.40.1574661601984; 
 Sun, 24 Nov 2019 22:00:01 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id c1sm2101171otn.44.2019.11.24.22.00.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 24 Nov 2019 22:00:01 -0800 (PST)
Date: Sun, 24 Nov 2019 21:59:59 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mediatek: mt8183: Add #reset-cells
Message-ID: <20191125055959.GB5636@roeck-us.net>
References: <1574651030-29519-1-git-send-email-jiaxin.yu@mediatek.com>
 <1574651030-29519-2-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574651030-29519-2-git-send-email-jiaxin.yu@mediatek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_220003_302348_936C203D 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, alsa-devel@alsa-project.org, yong.liang@mediatek.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, perex@perex.cz, tzungbi@google.com,
 broonie@kernel.org, linux-mediatek@lists.infradead.org, p.zabel@pengutronix.de,
 eason.yen@mediatek.com, yingjoe.chen@mediatek.com, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 11:03:49AM +0800, Jiaxin Yu wrote:
> From: "yong.liang" <yong.liang@mediatek.com>
> 
> Add #reset-cells property and update example
> 
> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> Signed-off-by: jiaxin.yu <jiaxin.yu@mediatek.com>
> Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>

I keep wondering why your series does not show up in the watchdog patchwork.
Turns out that is not surprising, since you don't copy the watchdog mailing
list. That all but guarantees that it gets lost from my workflow. That is
kind of interesting - there are lots of lists in Cc:, but the two lists
that matter because maintainers need to review it (watchdog and devicetree)
are missing.

Anyway, comment and question below.

> ---
>  .../devicetree/bindings/watchdog/mtk-wdt.txt  | 10 ++++++---
>  .../reset-controller/mt2712-resets.h          | 22 +++++++++++++++++++
>  .../reset-controller/mt8183-resets.h          | 15 +++++++++++++
>  3 files changed, 44 insertions(+), 3 deletions(-)
>  create mode 100644 include/dt-bindings/reset-controller/mt2712-resets.h
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> index 3ee625d0812f..4dd36bd3f1ad 100644
> --- a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> +++ b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> @@ -4,6 +4,7 @@ Required properties:
>  
>  - compatible should contain:
>  	"mediatek,mt2701-wdt", "mediatek,mt6589-wdt": for MT2701
> +	"mediatek,mt2712-wdt", "mediatek,mt6589-wdt": for MT2712

Is that (still) correct ? After all, behavior is different for those two now.
Just wondering.

Guenter

>  	"mediatek,mt6589-wdt": for MT6589
>  	"mediatek,mt6797-wdt", "mediatek,mt6589-wdt": for MT6797
>  	"mediatek,mt7622-wdt", "mediatek,mt6589-wdt": for MT7622
> @@ -16,11 +17,14 @@ Required properties:
>  
>  Optional properties:
>  - timeout-sec: contains the watchdog timeout in seconds.
> +- #reset-cells: Should be 1.
>  
>  Example:
>  
> -wdt: watchdog@10000000 {
> -	compatible = "mediatek,mt6589-wdt";
> -	reg = <0x10000000 0x18>;
> +watchdog: watchdog@10007000 {
> +	compatible = "mediatek,mt8183-wdt",
> +		     "mediatek,mt6589-wdt";
> +	reg = <0 0x10007000 0 0x100>;
>  	timeout-sec = <10>;
> +	#reset-cells = <1>;
>  };
> diff --git a/include/dt-bindings/reset-controller/mt2712-resets.h b/include/dt-bindings/reset-controller/mt2712-resets.h
> new file mode 100644
> index 000000000000..e81c8bb311b7
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
> +#define MT2712_TOPRGU_INFRA_SW_RST				0
> +#define MT2712_TOPRGU_MM_SW_RST					1
> +#define MT2712_TOPRGU_MFG_SW_RST				2
> +#define MT2712_TOPRGU_VENC_SW_RST				3
> +#define MT2712_TOPRGU_VDEC_SW_RST				4
> +#define MT2712_TOPRGU_IMG_SW_RST				5
> +#define MT2712_TOPRGU_INFRA_AO_SW_RST				8
> +#define MT2712_TOPRGU_USB_SW_RST				9
> +#define MT2712_TOPRGU_APMIXED_SW_RST				10
> +
> +#define MT2712_TOPRGU_SW_RST_NUM				10
> +
> +#endif  /* _DT_BINDINGS_RESET_CONTROLLER_MT2712 */
> diff --git a/include/dt-bindings/reset-controller/mt8183-resets.h b/include/dt-bindings/reset-controller/mt8183-resets.h
> index 8804e34ebdd4..d582da6bedae 100644
> --- a/include/dt-bindings/reset-controller/mt8183-resets.h
> +++ b/include/dt-bindings/reset-controller/mt8183-resets.h
> @@ -78,4 +78,19 @@
>  #define MT8183_INFRACFG_AO_I2C7_SW_RST				126
>  #define MT8183_INFRACFG_AO_I2C8_SW_RST				127
>  
> +#define MT8183_TOPRGU_MM_SW_RST					1
> +#define MT8183_TOPRGU_MFG_SW_RST				2
> +#define MT8183_TOPRGU_VENC_SW_RST				3
> +#define MT8183_TOPRGU_VDEC_SW_RST				4
> +#define MT8183_TOPRGU_IMG_SW_RST				5
> +#define MT8183_TOPRGU_MD_SW_RST					7
> +#define MT8183_TOPRGU_CONN_SW_RST				9
> +#define MT8183_TOPRGU_CONN_MCU_SW_RST				12
> +#define MT8183_TOPRGU_IPU0_SW_RST				14
> +#define MT8183_TOPRGU_IPU1_SW_RST				15
> +#define MT8183_TOPRGU_AUDIO_SW_RST				17
> +#define MT8183_TOPRGU_CAMSYS_SW_RST				18
> +
> +#define MT8183_TOPRGU_SW_RST_NUM				18
> +
>  #endif  /* _DT_BINDINGS_RESET_CONTROLLER_MT8183 */
> -- 
> 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
