Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F829C9B69
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 12:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+NtnJCyxrh8wRG1hk4vcPa+3EGXUTFU+BWZRd0ayH4=; b=DpdtA/H4rRmVRi
	atbYNd9V06YxG/ClzUJnmITK92fkzbdMB1je1D2nfkLnm805tv4vECeDOiNNeWsm6hnckljNoboXZ
	NUK07r/cK2q9yZHHrbZ2o+iwzjMBOEP5zk0k9oKrKrGQokGvQo6j5rR0LTczfrN5r3B20mkoRwjFf
	ZXdv9mk5cQ/Fsx91cKJzU1oOH0IIbxGKOKCU486LqV1khF88kL/OR2SMJkTVmYYK77uk65TiG5X8Q
	PKmuo4yLM6gokkMmhmRzh3ho4ZxeBKoaXmhHFrFdmjcFPBeXuBp1gYooIQo8k8GR3nuek7r1a9OPd
	Fbj7/NdWZ2wQSQo1Wjgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFxvi-0004XY-I3; Thu, 03 Oct 2019 10:01:50 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFxvZ-0004WN-7H
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 10:01:42 +0000
Received: by mail-vs1-xe41.google.com with SMTP id p13so1306554vso.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 03:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6B+E5RivcC5owz7oFA9AYi1iwjoiCE7P7xcMi6UgLa0=;
 b=hq/EKDlVT66/mmZ8X58aU7DGkBtQoN38XbVyMTmedpHFhNBWSXRua2vJ8cs7mp0mXW
 TuFkXknq5YLy2qnKHYeEUDrqQg4f9De83VAASuIknveh1oV7kMa+kUGD6Pjh5Mf+l3ai
 0yG+gbXTjTu+xTj2AHaNQ54Ga5TBXI9v7l4CGR0xH23+KFgFwUzqN3EopiOH0ws4wrge
 lfigp/bs/NBuqwTWgcnwhrmB2VydJvzv9MXxC7OzhNL0JEdwf241/HE7pusy+9qgoWQP
 zOgNV8kWFOmDsqTzeSHfQkTbZ/B0NkUO/ywFMB0Lwoi3daYmW1bZGkXDEMJ3lm7jLZZ0
 vIpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6B+E5RivcC5owz7oFA9AYi1iwjoiCE7P7xcMi6UgLa0=;
 b=j2id8/MjAvLbsuptLCNQzKomCXY1blPqvqStqfAdpkESPfUoaWUxbPbArZJUHmujvp
 6OLjqhXmkIqsZ8COgj29PAv+4sl3G8wcNhnfwiAQUYmSaDwYrlIyE2pgn4NWfBEQAnyZ
 Wxdb/rdunuTcg0FxpLvFMAR0AiIDPobjr4Cg7Hz1yqzF6NyUsKgDNBBGIUf98W/MYanK
 wWAsEuIWU2toz5a8XZ9n3uZlJ3iqCZfx4GWGfFftFCfAj6Gwez4BxrIa9571KkB7LxH3
 cNVcDkUO7KpqFJhXLgWJDPUhKvMiU8gVAQomgGciL7WUH3kA3feQ8tPbSLZrLRfF6e/+
 robg==
X-Gm-Message-State: APjAAAW6yeJOLg3PyoyYHXU6Yxk7arfIe/wJ/L1QYvi3MGpp1EslLzMl
 CHr4Nmz0D2k7JT4uxXmsAjuHpUz3w6+mPw4LdAA6dg==
X-Google-Smtp-Source: APXvYqzlwi4amB7UdX5f2PKpwQatyFRQoBhnTFgxEQxEattFx/iQqKHcqAKAacBmYgLaUplhc/Bvnw0AfD5cC3bxSNI=
X-Received: by 2002:a67:eb84:: with SMTP id e4mr4472823vso.165.1570096899417; 
 Thu, 03 Oct 2019 03:01:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
 <20190916154546.24982-3-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190916154546.24982-3-manivannan.sadhasivam@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 3 Oct 2019 12:01:03 +0200
Message-ID: <CAPDyKFo3+uAYr-j_qmBMeqO9TsY8PFv2J0kzAi56LYWe+E-o9w@mail.gmail.com>
Subject: Re: [PATCH v4 2/7] dt-bindings: mmc: Add Actions Semi SD/MMC/SDIO
 controller binding
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_030141_266489_EB1FDA7E 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: DTML <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-actions@lists.infradead.org, Linus Walleij <linus.walleij@linaro.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 thomas.liau@actions-semi.com, linux-clk <linux-clk@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Sep 2019 at 17:46, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> Add devicetree YAML binding for Actions Semi Owl SoC's SD/MMC/SDIO
> controller.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  .../devicetree/bindings/mmc/owl-mmc.yaml      | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/owl-mmc.yaml
>
> diff --git a/Documentation/devicetree/bindings/mmc/owl-mmc.yaml b/Documentation/devicetree/bindings/mmc/owl-mmc.yaml
> new file mode 100644
> index 000000000000..12b40213426d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/owl-mmc.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/owl-mmc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Actions Semi Owl SoCs SD/MMC/SDIO controller
> +
> +allOf:
> +  - $ref: "mmc-controller.yaml"
> +
> +maintainers:
> +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> +
> +properties:
> +  compatible:
> +    const: actions,owl-mmc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  dmas:
> +    maxItems: 1
> +
> +  dma-names:
> +    const: mmc
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - resets
> +  - dmas
> +  - dma-names
> +
> +examples:
> +  - |
> +    mmc0: mmc@e0330000 {
> +        compatible = "actions,owl-mmc";
> +        reg = <0x0 0xe0330000 0x0 0x4000>;
> +        interrupts = <0 42 4>;
> +        clocks = <&cmu 56>;
> +        resets = <&cmu 23>;
> +        dmas = <&dma 2>;
> +        dma-names = "mmc";
> +        bus-width = <4>;
> +    };
> +
> +...
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
