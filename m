Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F241D7ACB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 16:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSpYN+JCbxUu0WjCYqvLfTW4sI2l/qiiF2+YBSJ6iJM=; b=fHR8MtJ+sqVdLW
	oHBMVfvlWv2uFVFIBkFERdGAWiLDnk9R6CLLYE+euhRdiY4/JKmqI/eICkEbVHyKPdQle5p88ABGH
	Jy9OZDcmWyqNfFoBB6kshM1IBi93ZJRWuKmQFl34WGs+72n6FE6RHNZh0jjDR2qwWklsl9JnEdSOr
	ObJOjU6EID5uy8eAsbx0hpU15HIsORz0tcyfN2wGmb3seqiF7+CfKMXgXScHo3/2ZKfPmnVVZBsx6
	Q2/7Fd6uXO9XLwvnF1+hWUtD7be5j0j+TXslgN5bWUInwIHa6NFTdKiAaNjxKDhgrBfescG+yVbG6
	cL0PHjLXXBRNZUhRnCAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jagVk-0003Js-VB; Mon, 18 May 2020 14:12:56 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jagVW-0003IP-LT
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 14:12:49 +0000
Received: by mail-ej1-x62d.google.com with SMTP id z5so8948207ejb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 07:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EOqD4aL6wgxE/26j8f+FbycNWDDRoPpe8vcK7EunO4g=;
 b=Trzgw0WUAhFHQ2PwkPVg1lg3ZEy4Auicl4vZkQda/lJq7cE2GAPUdYk7oor8fdGER6
 3vQq9ZLD4v6xhSuJfufMqMbdB4vMSsXwGRnEjD6jrOPmkhIOkG6h9p1mBEYh64EbJHow
 mzm/O7XfIUlxFfMAOPjMW/nVBQUghtBlFwA8A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EOqD4aL6wgxE/26j8f+FbycNWDDRoPpe8vcK7EunO4g=;
 b=U8YcA8RAbDbGF3yqw7L/JXA21BAp6GaNmVwcT5UHveQver6fSsJfOqt/D3bSu2s44S
 3Jz2dIw2HG0rwqjeKgZ0g5TlXaxNQp/iMoZzjnlUS8Ldw2iMdd/w7X4giCfzz3HPORRS
 e2+EQn64rbHXR5N2voG3EaDck3Z2Dg1zWWYZltn/FsLOBmI393p8ZmA5SbL41bYfl2Im
 UCvU53K0p6pkFF1j2QCdfITm491yI/9q+jICJTIDrFwNeRNma+ZOwMXMW5U+n/53VO9K
 zDvMfY/y5kWm3Pdoyih6kOKBzkYMtcWerAowBrWwD4RJwTBGrNQfHYW9qBWOCHDZ8e20
 vzIg==
X-Gm-Message-State: AOAM5333FplbB/PbchsHVI0EMYDYvoFcSkNiXHcOP4RcpNTU55d2oHm6
 38/nsmGEoFkEO+AL2NP6WpDL0ncY6g8=
X-Google-Smtp-Source: ABdhPJx+zWc1Chs29U5wyqYIgdsXtpj7KjKMhiOHuRfcA297EGSLZQYn8VedgpMyPXvKfshK30uhMg==
X-Received: by 2002:a17:906:eda3:: with SMTP id
 sa3mr14624282ejb.253.1589811160470; 
 Mon, 18 May 2020 07:12:40 -0700 (PDT)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com.
 [209.85.128.53])
 by smtp.gmail.com with ESMTPSA id b14sm1045700edx.93.2020.05.18.07.12.39
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 May 2020 07:12:39 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id n5so10650301wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 07:12:39 -0700 (PDT)
X-Received: by 2002:a1c:56c1:: with SMTP id k184mr4680947wmb.183.1589811158595; 
 Mon, 18 May 2020 07:12:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200518132731.20855-1-dongchun.zhu@mediatek.com>
 <20200518132731.20855-2-dongchun.zhu@mediatek.com>
In-Reply-To: <20200518132731.20855-2-dongchun.zhu@mediatek.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 18 May 2020 16:12:28 +0200
X-Gmail-Original-Message-ID: <CAAFQd5Byvc8Fb0f3_81xSKsuyvsQJm-8g8y1Kx2aUcC=PwpS7w@mail.gmail.com>
Message-ID: <CAAFQd5Byvc8Fb0f3_81xSKsuyvsQJm-8g8y1Kx2aUcC=PwpS7w@mail.gmail.com>
Subject: Re: [V6, 1/2] media: dt-bindings: media: i2c: Document DW9768 bindings
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_071247_406901_4EE4B325 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:62d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Nicolas Boichat <drinkcat@chromium.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 =?UTF-8?B?U2hlbmduYW4gV2FuZyAo546L5Zyj55S3KQ==?= <shengnan.wang@mediatek.com>,
 Louis Kuo <louis.kuo@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Mon, May 18, 2020 at 3:29 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> Add DeviceTree binding documentation for Dongwoon Anatech DW9768 voice
> coil actuator.

Thanks for the patch. Please see my comments below.

>
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

This version includes significant changes, so the reviewed-by tag
shouldn't have been carried out.

> ---
>  .../bindings/media/i2c/dongwoon,dw9768.yaml        | 105 +++++++++++++++++++++
>  MAINTAINERS                                        |   7 ++
>  2 files changed, 112 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
>
> diff --git a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> new file mode 100644
> index 0000000..b909e83
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> @@ -0,0 +1,105 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright (c) 2020 MediaTek Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/dongwoon,dw9768.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Dongwoon Anatech DW9768 Voice Coil Motor (VCM) Lens Device Tree Bindings
> +
> +maintainers:
> +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> +
> +description: |-
> +  The Dongwoon DW9768 is a single 10-bit digital-to-analog (DAC) converter
> +  with 100 mA output current sink capability. VCM current is controlled with
> +  a linear mode driver. The DAC is controlled via a 2-wire (I2C-compatible)
> +  serial interface that operates at clock rates up to 1MHz. This chip
> +  integrates Advanced Actuator Control (AAC) technology and is intended for
> +  driving voice coil lenses in camera modules.
> +
> +properties:
> +  compatible:
> +    enum:
> +      # for DW9768 VCM
> +      - dongwoon,dw9768
> +      # for GT9769 VCM
> +      - giantec,gt9769
> +
> +  reg:
> +    maxItems: 1
> +
> +  vin-supply:
> +    description:
> +      Definition of the regulator used as I2C I/O interface power supply.
> +
> +  vdd-supply:
> +    description:
> +      Definition of the regulator used as VCM chip power supply.
> +
> +  dongwoon,aac-mode:
> +    description:
> +      Indication of AAC mode select.
> +    allOf:
> +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> +      - enum:
> +          - 0    #  Direct (default)
> +          - 1    #  AAC2 (operation time# 0.48 x Tvib)
> +          - 2    #  AAC3 (operation time# 0.70 x Tvib)
> +          - 3    #  AAC4 (operation time# 0.75 x Tvib)
> +          - 4    #  Reserved
> +          - 5    #  AAC8 (operation time# 1.13 x Tvib)
> +          - 6    #  Reserved
> +          - 7    #  Reserved

I'll ultimately leave it to DT maintainers, but is there any reason to
define the reserved values?

> +
> +  dongwoon,aac-timing:
> +    description:
> +      Indication of AAC Timing count, unit of 0.1 milliseconds.
> +      Valid values vary from 0 to 63 (default 32).
> +    allOf:
> +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> +
> +  dongwoon,clock-dividing-rate:
> +    description:
> +      Indication of VCM internal clock dividing rate select, as one multiple
> +      factor to calculate VCM ring periodic time Tvib.
> +    allOf:
> +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> +      - enum:
> +          - 0    #  Dividing Rate -  2
> +          - 1    #  Dividing Rate -  1 (default)
> +          - 2    #  Dividing Rate -  1/2
> +          - 3    #  Dividing Rate -  1/4
> +          - 4    #  Dividing Rate -  8
> +          - 5    #  Dividing Rate -  4
> +          - 6    #  Dividing Rate -  Reserved
> +          - 7    #  Dividing Rate -  Reserved

Ditto.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
