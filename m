Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B01158EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 07:25:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=63aijP3RqhjmyEcwvGFamnMYD6M5feFG/DE3ReGg/50=; b=UQDK+EUIyYBTgb
	d83HrjoE9pfHil53Gihrc0xJVP021DzK/0Y5fEBwJHouaLRVR6fjsNBoeB1Jw3+C//MA1hWHce8dm
	TBn2eywBxgGvwerBh2Zy5XLhrgNsKlZ0Bz9qjs8thAyLUbLH3fcna2eDo9X7927SUKLdk0tMhKuEe
	tKE3Ld3Ht74AmSjDtfBF5/BnDhJ0SToZv4w/r0R/vRpetpLQYUrV2AG8WtN0oYzHdE/QPRGBpwp3y
	N0bJXSQFcLTlPAeFqDY6apHKhSF0OO1Kd7UYDjGAQAEM5Zr/hXMBaLehWQ663DF+yAbKaK3aDPHcv
	msrRRfkOTTE3XdW5JE1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNsbI-00056h-8Y; Tue, 07 May 2019 05:25:12 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNsb9-0004VP-Le
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 05:25:05 +0000
Received: by mail-qt1-x843.google.com with SMTP id t1so634926qtc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 22:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0hFqmwNLrgOZ2d4LHKnw2c1GsxJZR0XMM1CJizfkss0=;
 b=oTNWEoWULY5My61dxjSyob+ke4AB8mRsMSGQA39QxxGStJqKwc6brL3ScY9Pf6MlNV
 cHlwWL4HZ2LL18qYr53Bt8gCq0vAEVs49chuSjny1Td+/Havv9W25UPJAwR7YrDl8KVP
 gd5O+H3z2FdeEtB4nJ1685Y+V8/0Vt3jWOwxA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0hFqmwNLrgOZ2d4LHKnw2c1GsxJZR0XMM1CJizfkss0=;
 b=OfAgEXoTc6jjIib/hjPXOpt6EStTxF+xYR7+AU/MbULBmlHGAgeKfNmBt5EmjeQLPV
 yk5owsVE14k9agkuTtwI5LshFtge4vjGYYCyT4dofYWnvpdmCzXnuZp5esM4o20PZtE6
 29ewzc84vp020NOZvF870mdiBq3KI73/9WRa9uujd40kWwa9Pc5rzTWTgBv8baCM7fsh
 cUBhFusANN5XXN7ee2y8OxbPNPHRcd/qC4AASu06W3V5k8aPWl8BDu5xmrJOUWCe91tM
 SE0z2XvEOHgZlQbKjBWAIcWQfA6HV548O/8WBN3WEDGRwauX1lLkI0ihinmwWCJU3q38
 ai7Q==
X-Gm-Message-State: APjAAAUPFmtgqpEObXSrWMg0NB+AiMvhrda9N/KAOu8RTx0BjUOu/dOS
 2hXQziXinjAGDzaUuVIRnsrBLIHPrMiAfPv5p1tU8w==
X-Google-Smtp-Source: APXvYqw2tJU/Bf+A/JCr79IIzV4N6cX86Z0Gi/0NwYK3aYJCyNc6+UuOalKy+yiSTLrBH1vrjl87uP7dCzAESuSwzsc=
X-Received: by 2002:ac8:1ae2:: with SMTP id h31mr7545363qtk.75.1557206702363; 
 Mon, 06 May 2019 22:25:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190503093117.54830-1-hsin-hsiung.wang@mediatek.com>
 <20190503093117.54830-5-hsin-hsiung.wang@mediatek.com>
In-Reply-To: <20190503093117.54830-5-hsin-hsiung.wang@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 7 May 2019 14:24:51 +0900
Message-ID: <CANMq1KCiK69kXkpagccqd1=pKOs7qOOVuJUaCe5JfoGVmPt7mg@mail.gmail.com>
Subject: Re: [PATCH v3 04/10] dt-bindings: mfd: Add compatible for the
 MediaTek MT6358 PMIC
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_222503_729165_8CC594B9 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, devicetree@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Eddie Huang <eddie.huang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 3, 2019 at 6:34 PM Hsin-Hsiung Wang
<hsin-hsiung.wang@mediatek.com> wrote:
>
> This adds compatible for the MediaTek MT6358 PMIC.
>
> Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> ---
>  Documentation/devicetree/bindings/mfd/mt6397.txt | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mfd/mt6397.txt b/Documentation/devicetree/bindings/mfd/mt6397.txt
> index 0ebd08af777d..62f1c17c7738 100644
> --- a/Documentation/devicetree/bindings/mfd/mt6397.txt
> +++ b/Documentation/devicetree/bindings/mfd/mt6397.txt
> @@ -17,22 +17,27 @@ Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
>  This document describes the binding for MFD device and its sub module.
>
>  Required properties:
> -compatible: "mediatek,mt6397" or "mediatek,mt6323"
> +compatible:
> +       "mediatek,mt6323" for PMIC MT6323
> +       "mediatek,mt6358" for PMIC MT6358
> +       "mediatek,mt6397" for PMIC MT6397
>
>  Optional subnodes:
>
>  - rtc
>         Required properties:
> -               - compatible: "mediatek,mt6397-rtc"
> +               - compatible: "mediatek,mt6397-rtc" or "mediatek,mt6358-rtc"
>  - regulators
>         Required properties:
>                 - compatible: "mediatek,mt6397-regulator"
>         see Documentation/devicetree/bindings/regulator/mt6397-regulator.txt
> +               - compatible: "mediatek,mt6358-regulator"
> +       see Documentation/devicetree/bindings/regulator/mt6358-regulator.txt
>                 - compatible: "mediatek,mt6323-regulator"
>         see Documentation/devicetree/bindings/regulator/mt6323-regulator.txt
>  - codec
>         Required properties:
> -               - compatible: "mediatek,mt6397-codec"
> +               - compatible: "mediatek,mt6397-codec" or "mediatek,mt6358-sound"

Sean had a question about this
(https://patchwork.kernel.org/patch/10846669/#22524299):
"why didn't we use a more consistent naming as mt6358-codec?"

>  - clk
>         Required properties:
>                 - compatible: "mediatek,mt6397-clk"
> --
> 2.18.0
>
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
