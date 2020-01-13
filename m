Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC321139B69
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:27:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HV+Mo0F0mMHfIpEsvrGBz3a2iyjULRwU36ISApcGFqE=; b=FqAyeaeGb/JUST
	1YUmHYo3kZvvwtXNgobyiQxEfK1TurGkDU8gLH8exsdrEiBWh6ki8pVt4EB49ivK6ITXQq/kWWNDN
	CZqc35oDG6CyUjB3R2wRcr6BqCkW1Ucig4B/UTQwlOOMTw1kNcVi9gsZLZ69vPRNMl58O14eyj4ss
	4yBI1XMEL9mpO+BEbxHlALPBgfvQmWnzIOUcZpGmm7gMCnQJ/bT9iveefTbEaTUhtkOw7qo6DQB5X
	NJDf0LvXrFtiwoqgDgiyowOGGl4ZGMuVOKGiRG5Q418aXN+6co8/y7quPkvjYUxNaUYpFiklqo3nE
	TN95vOJptkDnyn25yHGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir7FW-0001ew-Ve; Mon, 13 Jan 2020 21:27:51 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir7FK-0001eB-DU
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:27:40 +0000
Received: by mail-ot1-f67.google.com with SMTP id 77so10422169oty.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 13:27:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wpi+Y6/xhviC2Sqtl/ej/5/Y4u+j7SMkoib6d0WEkK8=;
 b=GzVEP3iokIx/j7GdkaUUIyUOKYuuvamGsRzNon57jbI37HSCYupqbI8NGVBAjttm9I
 P9LwFD9aV0rGpqzjdt88+tuTWk6PaQBNoTsK7BiJRo+7L58xV7ilMpJJGMv+Vszhprru
 +w3KwiuiDxp0Sj1do/2xv2LijMyJc2VcN5Dyv+iSA8HHKbvGbTPIkyrzsNmCbksULpOH
 CVACQlx/CKiEN/sdlIZOItON37ZwEkIhU0yzDr3MpgjeB1SaZK5AfkRIbKhH9RSQuiR3
 mLtG+Kwv/SYo/Wb3q5FeK+9w8sJeYt/QfYQbDSNtjgmBHGx4GVy9XwfIRJew+plojZ4y
 X0Qg==
X-Gm-Message-State: APjAAAU61S0GAJK17IFNCgnp2IRwOQmwUDUv+6MX7koQg8igaAt2uJeR
 2xwyvVvFPjh6qOLgOSCNbvZDcdE=
X-Google-Smtp-Source: APXvYqyQkYQWb3SBNLD9Eke4AVIKmRF19Ezwycyh1Ha9P0p7uFIjB6QH5tdV29t1a0RFVV4bn9UicA==
X-Received: by 2002:a9d:7c8f:: with SMTP id q15mr14756570otn.140.1578950857392; 
 Mon, 13 Jan 2020 13:27:37 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a74sm3946965oii.37.2020.01.13.13.27.36
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 13:27:36 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220b00
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 13 Jan 2020 15:27:35 -0600
Date: Mon, 13 Jan 2020 15:27:35 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/3] dt-bindings: clock: Convert i.MX8MQ to json-schema
Message-ID: <20200113212735.GA9275@bogus>
References: <1578642914-838-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578642914-838-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_132738_480451_E861D464 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 festevam@gmail.com, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 03:55:12PM +0800, Anson Huang wrote:
> Convert the i.MX8MQ clock binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/clock/imx8mq-clock.txt     | 20 ------
>  .../devicetree/bindings/clock/imx8mq-clock.yaml    | 72 ++++++++++++++++++++++
>  2 files changed, 72 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx8mq-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx8mq-clock.yaml

Fails 'make dt_binding_check':

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/clock/imx8mn-clock.example.dt.yaml: 
clock-controller@30380000: clock-names:0: 'ckil' was expected
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/clock/imx8mn-clock.example.dt.yaml: 
clock-controller@30380000: clock-names:1: 'osc_25m' was expected
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/clock/imx8mn-clock.example.dt.yaml: 
clock-controller@30380000: clock-names:2: 'osc_27m' was expected
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/clock/imx8mn-clock.example.dt.yaml: 
clock-controller@30380000: clock-names:3: 'clk_ext1' was expected
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/clock/imx8mn-clock.example.dt.yaml: 
clock-controller@30380000: clock-names:4: 'clk_ext2' was expected
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/clock/imx8mn-clock.example.dt.yaml: 
clock-controller@30380000: clock-names:5: 'clk_ext3' was expected
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/clock/imx8mn-clock.example.dt.yaml: 
clock-controller@30380000: clock-names: ['osc_32k', 'osc_24m', 'clk_ext1', 'clk_ext2', 'clk_ext3', 'clk_ext4'] is too short
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/clock/imx8mn-clock.example.dt.yaml: 
clock-controller@30380000: clocks: [[1], [2], [3], [4], [5], [6]] is too short

> 
> diff --git a/Documentation/devicetree/bindings/clock/imx8mq-clock.txt b/Documentation/devicetree/bindings/clock/imx8mq-clock.txt
> deleted file mode 100644
> index 52de826..0000000
> --- a/Documentation/devicetree/bindings/clock/imx8mq-clock.txt
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -* Clock bindings for NXP i.MX8M Quad
> -
> -Required properties:
> -- compatible: Should be "fsl,imx8mq-ccm"
> -- reg: Address and length of the register set
> -- #clock-cells: Should be <1>
> -- clocks: list of clock specifiers, must contain an entry for each required
> -          entry in clock-names
> -- clock-names: should include the following entries:
> -    - "ckil"
> -    - "osc_25m"
> -    - "osc_27m"
> -    - "clk_ext1"
> -    - "clk_ext2"
> -    - "clk_ext3"
> -    - "clk_ext4"
> -
> -The clock consumer should specify the desired clock by having the clock
> -ID in its "clocks" phandle cell.  See include/dt-bindings/clock/imx8mq-clock.h
> -for the full list of i.MX8M Quad clock IDs.
> diff --git a/Documentation/devicetree/bindings/clock/imx8mq-clock.yaml b/Documentation/devicetree/bindings/clock/imx8mq-clock.yaml
> new file mode 100644
> index 0000000..881c01c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/imx8mq-clock.yaml
> @@ -0,0 +1,72 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bindings/clock/imx8mq-clock.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX8M Quad Clock Control Module Binding
> +
> +maintainers:
> +  - Anson Huang <Anson.Huang@nxp.com>
> +
> +description: |
> +  NXP i.MX8M Quad clock control module is an integrated clock controller, which
> +  generates and supplies to all modules.
> +
> +properties:
> +  compatible:
> +    const: fsl,imx8mn-ccm

Wrong compatible...

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: 32k osc
> +      - description: 25m osc
> +      - description: 27m osc
> +      - description: ext1 clock input
> +      - description: ext2 clock input
> +      - description: ext3 clock input
> +      - description: ext4 clock input
> +
> +  clock-names:
> +    items:
> +      - const: ckil
> +      - const: osc_25m
> +      - const: osc_27m
> +      - const: clk_ext1
> +      - const: clk_ext2
> +      - const: clk_ext3
> +      - const: clk_ext4
> +
> +  '#clock-cells':
> +    const: 1
> +    description:
> +      The clock consumer should specify the desired clock by having the clock
> +      ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx8mq-clock.h
> +      for the full list of i.MX8M Quad clock IDs.
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - '#clock-cells'
> +
> +examples:
> +  # Clock Control Module node:
> +  - |
> +    clk: clock-controller@30380000 {
> +        compatible = "fsl,imx8mq-ccm";
> +        reg = <0x30380000 0x10000>;
> +        #clock-cells = <1>;
> +        clocks = <&ckil>, <&osc_25m>, <&osc_27m>,
> +                 <&clk_ext1>, <&clk_ext2>,
> +                 <&clk_ext3>, <&clk_ext4>;
> +        clock-names = "ckil", "osc_25m", "osc_27m",
> +                      "clk_ext1", "clk_ext2",
> +                      "clk_ext3", "clk_ext4";
> +    };
> +
> +...
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
