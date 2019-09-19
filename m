Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C3BB8234
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 22:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RemRDTJBuhVA+W/BxWQwSA2aYJihFaZC2fM4NupQEKE=; b=DFKjVwUi6tP0ev
	2SWWdkDnfKgHR6CI8NC9Cck7HXKkcQh49YrUefot6w1PlSUDrNSa/t/Z5A86/Dw3fTRRX7NBHA8vU
	CYPUmUSZ4yyLbfXVWlgInbMTezLPMzpQR8HKnIrA8EyNuCJDeN82qg95+0qak5jyWCVVmo4g2YHV/
	6HLfCdE2JaXDF/NX25WrM1meZHVv3aECfkuG5FprNXcdetVHoioTTLUGoEEfXwmMgpz8139BN4hBv
	llPqPL4NMs0CaTEXYglGcr38ff/oLa1KWYzsABAeB9c+IZ67z+mIQqdpsEnvGn+lW1u35N+uPCkVk
	FrvHujaROQQfpeTIkkPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2i7-0000Tl-IT; Thu, 19 Sep 2019 20:07:27 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2ht-0000Rw-9Z; Thu, 19 Sep 2019 20:07:14 +0000
Received: by mail-oi1-x244.google.com with SMTP id x3so3875653oig.2;
 Thu, 19 Sep 2019 13:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6SLgslheBeIIJex/gf/ZVhEBmirzOWHGUduUXl+JfS0=;
 b=f8nGhVnviG2KbGnxig/mqrpCztbeYB17qB2d4v8zgIMpIo21id++eyGrhRa7Hetlhu
 1uIaChRD0JXsIkhaEnLlOVilPn+4x4RCBwn4qftOj/Hn1jiDkcWSr9iSRfpGqYg8IPyg
 p6KZ5T0M5XXE7g4URtoFpVBwAr8qDD1kwXGZhmKQ5TN4D/ZBt9h1HabeDijheKoZ1Hq6
 Am7QREthxBCAoFRWZlZc9Dn8FvVmj/Ct4TgYQLr4ctdbmmcuJtv86n7ETES+bEZxL1mQ
 EVg7zzKRiWTN263W8ohXIHHzWdDRk8eIf0Lm/Lzn+chRgIy7X91h9B9AXapeP4UZEFK4
 1Pqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6SLgslheBeIIJex/gf/ZVhEBmirzOWHGUduUXl+JfS0=;
 b=AcyYme7yJ1Law1KbndDhz2QavFWpT+HJVp4zxtL+aSzGHdNA1XNWrgbGpEcCrtSJ47
 p7VMH/RYeY5LgU33Rj4nqs3gNGSbA4Azms0c+h7wTSOVbE1raO0rsgVwqRJ3EGM6fj/e
 hxHWhcPMr84dCjjroW4+eWtHlQiaFTCs/JZ9dijgsUplB8O4s5gsnpSX7CWEGPPzNhJH
 IWIXtnw3NdSOWT/hE+7CDKbKqx1pIH6iiDQXHC1Xdvp42ts4ilxkWvdQgk07kqbrsf7b
 Go4v3Hox49rHEQ5yksLmjvgQs9wscFIqrqU9ol9ox4R2SUsfxx0sVlIyIvk6sbU1Mghh
 xJcw==
X-Gm-Message-State: APjAAAXXU6NROptocjgVNxICbVETZnLe7p9TRzvxYjDwZdlffFf4xUJR
 0jcCMgQeaRwHgL6SHA7CHnKQSjeIGJ6d8MeZTEE=
X-Google-Smtp-Source: APXvYqxs8KaOnta4oS+qOBnum0sYdK4kwfRs3AjdmxE14hPdeI3PYvm+RSVJQcA/eiB1hLB6FfwDBOgY14u/8HhKXfM=
X-Received: by 2002:aca:3ad6:: with SMTP id h205mr3915280oia.129.1568923630403; 
 Thu, 19 Sep 2019 13:07:10 -0700 (PDT)
MIME-Version: 1.0
References: <1568895064-4116-1-git-send-email-jianxin.pan@amlogic.com>
 <1568895064-4116-2-git-send-email-jianxin.pan@amlogic.com>
In-Reply-To: <1568895064-4116-2-git-send-email-jianxin.pan@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 19 Sep 2019 22:06:59 +0200
Message-ID: <CAFBinCCxeYgso3WQWqNgWUwwCM835uo_6FftVv0YwYTFJV2Ovw@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: power: add Amlogic secure power domains
 bindings
To: Jianxin Pan <jianxin.pan@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_130713_337560_B68C096C 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Zhiqiang Liang <zhiqiang.liang@amlogic.com>,
 Rob Herring <robh+dt@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jianxin,

On Thu, Sep 19, 2019 at 2:11 PM Jianxin Pan <jianxin.pan@amlogic.com> wrote:
>
> Add the bindings for the Amlogic Secure power domains, controlling the
> secure power domains.
>
> The bindings targets the Amlogic A1 and C1 compatible SoCs, in which the
> power domain registers are in secure world.
>
> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
> Signed-off-by: Zhiqiang Liang <zhiqiang.liang@amlogic.com>
> ---
>  .../bindings/power/amlogic,meson-sec-pwrc.yaml     | 32 ++++++++++++++++++++++
>  include/dt-bindings/power/meson-a1-power.h         | 32 ++++++++++++++++++++++
>  2 files changed, 64 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
>  create mode 100644 include/dt-bindings/power/meson-a1-power.h
>
> diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
> new file mode 100644
> index 00000000..327e0d9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
> @@ -0,0 +1,32 @@
> +# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +# Copyright (c) 2019 Amlogic, Inc
> +# Author: Jianxin Pan <jianxin.pan@amlogic.com>
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/power/amlogic,meson-sec-pwrc.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic Meson Secure Power Domains
> +
> +maintainers:
> +  - Jianxin Pan <jianxin.pan@amlogic.com>
> +
> +description: |+
> +  A1/C1 series The Secure Power Domains node should be the child of a syscon
> +  node with the required property.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - amlogic,meson-a1-pwrc
> +
> +required:
> +  - compatible
> +
> +examples:
> +  - |
> +    pwrc: power-controller {
> +          compatible = "amlogic,meson-a1-pwrc";
> +    };
not a comment about this binding but about the secure monitor in general:
there's a recent discussion about the secure monitor in the nvmem bindings: [0]


Martin


[0] https://www.spinics.net/lists/arm-kernel/msg750010.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
