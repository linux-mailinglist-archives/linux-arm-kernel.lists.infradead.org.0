Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D872A1F4272
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 19:36:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HOKdwjhUsaXiegUbkqR3ryM1u4Xls65awDPslTxG2TU=; b=laN7om5TpKEHzZ
	/+9prrucKxTmkeNHmruTfbATrn6fKyObiCyzZ18fPU/iC7ncvUQiTo7g7exK1m88ezo3M6KstV3cj
	PUjlCWUwlUYvhgWYEYWL1/Zq2bafjkEBH5ORdNMeLgB3Ghf/SFOwzqKGbrcggJWGRftVRsm3n5JcV
	Z1ufXCBA/pOi9JMoFRPCXIEGobwH0ATG+hDhmefuj5FugkSW5aLyBpS6SAUhD6zRASRwBwOHcCtHv
	cwSYzoopkbF0cIpJxdZSRiKWkGZfitEeqFH1kKFq/JT9g9B+vX/0LnJrudt2nIbLZavDfmzPBN2Vi
	xIszf+TFU1gB7IrB12cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiiAQ-0007Nb-FX; Tue, 09 Jun 2020 17:36:06 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiiAH-0007Mc-I1; Tue, 09 Jun 2020 17:35:59 +0000
Received: by mail-io1-f66.google.com with SMTP id q8so23694854iow.7;
 Tue, 09 Jun 2020 10:35:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=UemfyzL4CDaIbSMWhLIN31hIuc2Yr7jCv1si14uauIA=;
 b=UaBKcCRjWzpd+BcDyyV9ADuQyAyaGxJO7uGhaiJjCK7I3baYFTMU5G1CcOnxxkP2DM
 cki8t2yIux4AGzICzhZU3ZSEUPbfSx2Zd/E25cDrI9oB2dGHql/GSzWWYeZA83wPKcOb
 +ZBC9LNrZmQasE/8mUxexqpUkj/FOw/zZ3H77frEu3efHdcMNlVnSSQdZCIUEWZKtLnh
 jElKsZXPOOA03uVrFpdkX/TjsUGqAoxa79GeddIt6RP0Y/YVdehpr1UqXmHMl8bKsACx
 vfcT2bSk2w3qGDqCXI+9uYJ57Ux0ry6eB+Y1Gy7d3TEVWnjYQVmiYANagLQrwueTJo9l
 zGcw==
X-Gm-Message-State: AOAM5336ijOSNjv+K8OuD7Z6+4cn6I6pVUuHGvRpDfUG7RlA0vvcgXas
 44H+MIunjUQeQyTbI177Vg==
X-Google-Smtp-Source: ABdhPJyHA9bqkWZOLvk/hYOQV0AQki68RB2uY7Ob2Db2LSH4HMdre46KjSCiZoV+zVZ26b+BnZ/s9A==
X-Received: by 2002:a6b:1745:: with SMTP id 66mr12153914iox.151.1591724156628; 
 Tue, 09 Jun 2020 10:35:56 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id z4sm7599577iot.24.2020.06.09.10.35.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 10:35:56 -0700 (PDT)
Received: (nullmailer pid 1125416 invoked by uid 1000);
 Tue, 09 Jun 2020 17:35:54 -0000
Date: Tue, 9 Jun 2020 11:35:54 -0600
From: Rob Herring <robh@kernel.org>
To: Roger Lu <roger.lu@mediatek.com>
Subject: Re: [PATCH v9 1/4] dt-bindings: power: avs: add mtk svs dt-bindings
Message-ID: <20200609173554.GA1119852@bogus>
References: <20200609104534.29314-1-roger.lu@mediatek.com>
 <20200609104534.29314-2-roger.lu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609104534.29314-2-roger.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_103557_589898_B0B9E698 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Angus Lin <Angus.Lin@mediatek.com>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, HenryC Chen <HenryC.Chen@mediatek.com>,
 YT Lee <yt.lee@mediatek.com>, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Xiaoqing Liu <Xiaoqing.Liu@mediatek.com>,
 Charles Yang <Charles.Yang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Nishanth Menon <nm@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 06:45:31PM +0800, Roger Lu wrote:
> Document the binding for enabling mtk svs on MediaTek SoC.
> 
> Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> ---
>  .../bindings/power/avs/mtk_svs.yaml           | 141 ++++++++++++++++++
>  1 file changed, 141 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/avs/mtk_svs.yaml
> 
> diff --git a/Documentation/devicetree/bindings/power/avs/mtk_svs.yaml b/Documentation/devicetree/bindings/power/avs/mtk_svs.yaml
> new file mode 100644
> index 000000000000..f16f4eb56ee3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/avs/mtk_svs.yaml
> @@ -0,0 +1,141 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/avs/mtk_svs.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Introduce SVS engine
> +
> +maintainers:
> +  - Kevin Hilman <khilman@kernel.org>
> +  - Nishanth Menon <nm@ti.com>
> +
> +description: |+
> +  The Smart Voltage Scaling(SVS) engine is a piece of hardware
> +  which has several controllers(banks) for calculating suitable
> +  voltage to different power domains(CPU/GPU/CCI) according to
> +  chip process corner, temperatures and other factors. Then DVFS
> +  driver could apply SVS bank voltage to PMIC/Buck.
> +
> +properties:
> +  compatible:
> +    const: mediatek,mt8183-svs
> +
> +  reg:
> +    description: Address range of the MTK SVS controller.
> +    maxItems: 1
> +
> +  interrupts:
> +    description: IRQ for the MTK SVS controller.
> +    maxItems: 1
> +
> +  clocks:
> +    description: Main clock for svs controller to work.
> +
> +  clock-names:
> +    const: main
> +
> +  nvmem-cells:
> +    maxItems: 2
> +    description:
> +      Phandle to the calibration data provided by a nvmem device.
> +
> +  nvmem-cell-names:
> +    items:
> +      - const: svs-calibration-data
> +      - const: calibration-data
> +
> +patternProperties:
> +  "^svs-(cpu-little|cpu-big|cci|gpu)$":
> +    type: object
> +    description:
> +      Each subnode represents one SVS bank.
> +        - svs-cpu-little (SVS bank device node of little CPU)
> +        - svs-cpu-big (SVS bank device node of big CPU)
> +        - svs-cci (SVS bank device node of CCI)
> +        - svs-gpu (SVS bank device node of GPU)

As I've said before, I don't think these child nodes make sense. All 
this data should already be available elsewhere in the DT.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
