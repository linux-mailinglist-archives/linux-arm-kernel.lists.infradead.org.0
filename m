Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8EB186FF1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 17:23:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tYpMdotYDdCRmH5xZpYIRpvgmUsV4t2dxhBxAVn/ZI4=; b=MDaURvHbxdS9Dz
	wseRyiXIwafcrtFcobt04dvQQzrzZKoR9J5lJk9Mqh9FWzX2NSbd/RSh2fzlL34TbtI4X80MQtZOV
	wngPNNPeINUrZY5KwJbs+RC4lk6lWbmGbzdOiduYJ38zwavcwXEvYy7QNVk9LcrcgJJjXhG840DM0
	Af4lORylD2AP+z2IuiQZWseFBqwWxkk0RjYGHkO8Dpa9Rkgi7945DqxEumY/erJVvEIKoh+T8dsz0
	iJxEAN0DROvewaaiZepmWyz1asHvmk5/hb9J9Tem1g/NoD7/Jj2uEkVICJa9yl/DVic7Y5lVnX/g4
	xrh4ailZG0A8164pIRSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDsWl-000199-Fn; Mon, 16 Mar 2020 16:23:43 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDsWX-00016C-N3
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 16:23:31 +0000
Received: by mail-pg1-x541.google.com with SMTP id b22so4034362pgb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 09:23:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=ys4/S0tvAwTvTJf5RJkfy3c1yIHeW683iadOwgFcprg=;
 b=qG8PxbkWIbuy+9Qc3nMWdGGFXM1kqFsA1skjDvOKTMf7Up6HmyD9CPoLqXI2V5kpGy
 I3/5lAZuyWRnwHN+FhV5f5pIjwjRtEQu9DsII6msx1ddPDIDv9X0cKWTe9aJLO3mNoEQ
 Lp6vlkuNNWB34rdnv0HyMxwNgoAiDQ6c8379u6fb02bIYFNIZULMiWV6XpiyHOLKYFJ9
 vwIb4GVU28gTAhiuFIkXkFpODnnGuGFJvf9+cJ2D5Q8ZHYlpkhI7qXD8UA3N5+OZ1WME
 akPHRRVPOdQPPuqm1eOiYZfaR/KWrASRxj6StEwYQXgUOEAAJ0olraavqiILAmFiGikz
 iHoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=ys4/S0tvAwTvTJf5RJkfy3c1yIHeW683iadOwgFcprg=;
 b=fTHDvPvZyzoFDK4C+3xVq2VefGAt5bs1VpY4R+bnfdVEcD5FK4q85fJnOOUQnWE61E
 DFpuldnMAyUbRtLnH6UXkN6qbBuVyReJXQeloKCC3rAf3wHk8fMqv0orQqyU7IvWg1RQ
 /qZNhYkrVewjxPFH2kv6fIE5XkdJBsC9zPcMFNZy0foXDcXs8uK6Q6cBEtxUBftRnVVN
 5F2GhxCJyvqJgvpxhSGinApb4LaSxuiQ+kEusSSGE++SpmupjfFcPINnd9JPGLHfcsvd
 T0/Go9zBg/L1HPZ2bEXsQiF1Wr2qPau2KWh6KAg9wuPmPoT9BVPN1259Yf9btRg5MlGU
 ciqw==
X-Gm-Message-State: ANhLgQ1oPb9PcqTJhXFwqemmubWve7wY3byq+qWxD5iHPDea+jtLi2RB
 5ePGbc5uWIXozI+JcvYeKNxEVQ==
X-Google-Smtp-Source: ADFU+vvIkI5Q4X0j5d7XavYPHjHZylGz9Mto6CG3F5sDaCzyi5q3jYipZTJ9iAg6VhbrUPWCeuQi7w==
X-Received: by 2002:a63:67c5:: with SMTP id b188mr605662pgc.111.1584375808216; 
 Mon, 16 Mar 2020 09:23:28 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:dcc4:2a10:1b38:3edc])
 by smtp.gmail.com with ESMTPSA id q91sm313466pjb.11.2020.03.16.09.23.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 16 Mar 2020 09:23:27 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Hanjie Lin <hanjie.lin@amlogic.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Rob Herring <robh@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v9 3/3] arm64: dts: meson: a1: Enable USB2 PHY and DWC3
 controller
In-Reply-To: <1581990859-135234-4-git-send-email-hanjie.lin@amlogic.com>
References: <1581990859-135234-1-git-send-email-hanjie.lin@amlogic.com>
 <1581990859-135234-4-git-send-email-hanjie.lin@amlogic.com>
Date: Mon, 16 Mar 2020 09:23:26 -0700
Message-ID: <7hd09cw9oh.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_092329_782676_13B3AD45 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>, Victor
 Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-usb@vger.kernel.org, Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Liang Yang <liang.yang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jian Hu <jian.hu@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hanjie,

Hanjie Lin <hanjie.lin@amlogic.com> writes:

> Enable USB2 PHY and DWC3 controller for Meson A1 SoC.
>
> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 43 +++++++++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> index 6fdc0dd..3b7ca50 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> @@ -6,6 +6,9 @@
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/power/meson-a1-power.h>
> +#include <dt-bindings/reset/amlogic,meson-a1-reset.h>
> +#include <dt-bindings/clock/a1-pll-clkc.h>
> +#include <dt-bindings/clock/a1-clkc.h>

The driver is now merged, but the DT cannot be merged because it has
dependencies on the A1 clock series which is still under review.

When that is merged, please resend this patch.

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
