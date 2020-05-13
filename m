Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E79021D0518
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 04:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZUVj0GtgkjhGVcdih2buJ7MVh5AxdPbu45645ECemUE=; b=maNreFpRthVRHA
	O4NUTCVUble/AAROl/d3JnXuTLb1cL6US1w1GF7+shWPU0LCKMYVjnccuvDB4G9CUSURcnfrBRxya
	+C1DfVVPXssTu5XxmCOxnCvZJ640uiqocihUFSSwE7zKS204tYgLoObSftzav+U9XKaV31JQixNj+
	kY9aB4KJXasY6o7sUCPoP1IbeD5Q0yyOIVjSnmIoo45z9Ds8fMh7YkGPx3Icg4cvQOPhnigyuHmtl
	OrZLBaG2/2CLPgLaAgyanUCg7ZPf4FeEwS04IUoVriZ+n+m7SSH4sOd5fGDYjmqL3gVl3N3A8gZNq
	5IiftGDuSRidFJUeDQLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYhIb-00038x-1o; Wed, 13 May 2020 02:39:09 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYhIQ-00038G-UM; Wed, 13 May 2020 02:39:00 +0000
Received: by mail-oi1-f194.google.com with SMTP id o7so20181178oif.2;
 Tue, 12 May 2020 19:38:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mB48QmwP9BiyH2LbdU0ZoxXeDi5pgn5seQ5bqpzznwg=;
 b=LdOrlbDgi90yMVXaDPEZJiJQew5lBb4yRD4NxY1hIk3qEbfRMSd9ksDBQeG5O11fLP
 KkahbCFKvNc9Qg7R7M/k6H+IFnfyVYRAnRDg6jfDLhIJg5F1QBFaM8xwjzP7YBaYWkE0
 eAErnd//eQ5BTraVwibP3dO94a3xImT+nFEO+ShrfQN8RMlUwVauNmIfJcRnJCQkY15b
 jyuFZa5ITknlgDP5e95rUlHwRM+qFqvMnpYuPMe8/Vah4KPPJyEnaEyKB6Gyrop3Ag7j
 RsDe/h1919Gf4hfQPBUeKvubn6SIn8O/bChf4pE03rkpmk/V1J9GvUksy70DbQffx8RE
 rSqQ==
X-Gm-Message-State: AGi0PuYAYNoluY+TJXM0x7xN1RNJoyiFmE4dEHWU/tOegEyaSu0n8JXD
 +xRuBvVutCKWEzZ55NV9qg==
X-Google-Smtp-Source: APiQypI/fAJkeunIrrooBsca9jm5OufxdvNcX6Hy9olT8g0z8O/+ezwT5ubQzkvo5BteCx+UsEg1kA==
X-Received: by 2002:a05:6808:a93:: with SMTP id
 q19mr26255041oij.6.1589337537668; 
 Tue, 12 May 2020 19:38:57 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y22sm5733356oih.57.2020.05.12.19.38.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 19:38:56 -0700 (PDT)
Received: (nullmailer pid 29317 invoked by uid 1000);
 Wed, 13 May 2020 02:38:55 -0000
Date: Tue, 12 May 2020 21:38:55 -0500
From: Rob Herring <robh@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH 01/11] dt-bindings: add a binding document for MediaTek
 PERICFG controller
Message-ID: <20200513023855.GA23714@bogus>
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-2-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505140231.16600-2-brgl@bgdev.pl>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_193858_977302_FEF75A65 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Felix Fietkau <nbd@openwrt.org>,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 04:02:21PM +0200, Bartosz Golaszewski wrote:
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

Don't need oneOf.

> +      - items:
> +        - enum:
> +          - mediatek,pericfg

PERICFG is exactly the same register set and functions on all Mediatek 
SoCs? Needs to be more specific.

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

Default for examples is 1 cell for addr and size.

> +    };
> -- 
> 2.25.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
