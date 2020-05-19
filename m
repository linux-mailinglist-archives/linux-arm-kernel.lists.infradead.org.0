Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 822E21D9F7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Za0facIw36DIzmDuGRJXfXc8whWRsfobWR53Cep+xFs=; b=RxiR9NZNEDZarh
	s3c4FF9cr4dab5oEsfp4WT+SLm+3WEBOQkLxZoF/VvruB4cL4tmu8aavCNl0UxKJUqv3GAGVE2JSc
	1hqda1sjMo1aAARFLcapPuqkWyds34NYyB0OLdNsDEhwcD1LrNKtBLKKU8hd2JV5bMu0K3TWnntk0
	QOYsUJFaQIiuGwJeJyFj5YjG0swWi7qD1lSJRKE1zwhjmb58MzYbl7QwNf78bPIjVLKDMWe1t2AaW
	SNYrvSDadiVsR/j07SJCX9uys20EyTiX+8ODPDn/aSW0s2hSu/b7lz1svD/lrkuO6nEssCSTjZI/9
	jl3cVNe+WU3SDNDrAP7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6yu-0007Ce-Cj; Tue, 19 May 2020 18:28:48 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6yg-0007C2-RB; Tue, 19 May 2020 18:28:36 +0000
Received: by mail-il1-f196.google.com with SMTP id j3so343915ilk.11;
 Tue, 19 May 2020 11:28:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=J9uhOTh98EU4qKAMLm9nufM4MlbPiYXtLFkDWwncKGI=;
 b=h7N4dlPME1JzFE+cMcHrhaRPUFJTmvAIL/MUjCx2kD29kHcekcBUKMLjhSi0n/N8sN
 2MYG1yzQmm7ouET1BooCVzrQq1tJF0QvAYQ0u4M/R9rQTAj9w9sWwu6n/sAYkdyl4fTr
 h3Ei1brchu6I69MJS4vmd6AmuDR/KVdbzgR+MAN+dGg9cOgKYscxUrSsi50TSsXxVjJZ
 ON841nu9k03vB75a5xUKOVSGollwEMWhOSul5pAJyW4rmtle929XL6RpdguaNHGKMntP
 39RAm/BmGujgjZuvVmq6dVnt0sd/V8hBddRL4Fhb0nZQJDSEpXGN7g13g4y4CumU6mKw
 hRRw==
X-Gm-Message-State: AOAM532nIMO252EUd+34PGfypPT8WYa/zwImTsExKyjHSkKqzrpz/UXK
 13D90u1M7Z5XF7HXDRK/KQ==
X-Google-Smtp-Source: ABdhPJyzGMuEyVNB7e4uRuuhX+smoH/YHIHeUureMb4VVb62KfaPIvAZVXuVI5Ucz4yOw91ZAaFLjg==
X-Received: by 2002:a05:6e02:cc1:: with SMTP id
 c1mr341461ilj.260.1589912913424; 
 Tue, 19 May 2020 11:28:33 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id h9sm168552ioa.6.2020.05.19.11.28.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 11:28:32 -0700 (PDT)
Received: (nullmailer pid 424602 invoked by uid 1000);
 Tue, 19 May 2020 18:28:31 -0000
Date: Tue, 19 May 2020 12:28:31 -0600
From: Rob Herring <robh@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH v2 01/14] dt-bindings: arm: add a binding document for
 MediaTek PERICFG controller
Message-ID: <20200519182831.GA418402@bogus>
References: <20200511150759.18766-1-brgl@bgdev.pl>
 <20200511150759.18766-2-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511150759.18766-2-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_112834_880714_01E34CBE 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: Edwin Peer <edwin.peer@broadcom.com>, devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Fabien Parent <fparent@baylibre.com>, Pedro Tsai <pedro.tsai@mediatek.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 05:07:46PM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> This adds a binding document for the PERICFG controller present on
> MediaTek SoCs. For now the only variant supported is 'mt8516-pericfg'.
> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> ---
>  .../arm/mediatek/mediatek,pericfg.yaml        | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
> new file mode 100644
> index 000000000000..74b2a6173ffb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
> @@ -0,0 +1,34 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/arm/mediatek/mediatek,pericfg.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: MediaTek Peripheral Configuration Controller
> +
> +maintainers:
> +  - Bartosz Golaszewski <bgolaszewski@baylibre.com>
> +
> +properties:
> +  compatible:
> +    oneOf:

Don't need oneOf here.

> +      - items:
> +        - enum:
> +          - mediatek,pericfg

Doesn't match the example (which is correct).

> +        - const: syscon
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pericfg: pericfg@10003050 {
> +        compatible = "mediatek,mt8516-pericfg", "syscon";
> +        reg = <0 0x10003050 0 0x1000>;
> +    };
> -- 
> 2.25.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
