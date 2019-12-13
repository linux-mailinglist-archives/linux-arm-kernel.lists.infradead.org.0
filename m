Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FB811EDB7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 23:27:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJb9sxZCRTBt2zvpBHGyO+AVheBEP6cNjzuny321ZFM=; b=o4HaRLcN+8C+dt
	VC/vVwlEZvhhVmqFjZzZBhU/P2ylCmqtp+OiHGTbXHLSm2uQRPZQR013ZpawoNgg3kLGP4ACWIQ5i
	Wl7mzQt2vZXzGvAXX4fI53TCDkT4w1K29uIZagcvu9wzqLB3L74lpepfAgrQCMaWQ/9iKxmlzjsMc
	9hlnpJnrYhw9QO1SJtnvn9l+xTNvQVmhJOZTDi2igayFxV2oTzk3wVAvTcxU+exGARhJStKncd8wE
	oV8fuhAqRQmOPjV4lFycxSxksMJJQQII+8CaKMhBvq0JvMKM02/QugVvrt+tFQW35llo1LB2eZdDb
	cJiwhmacBHDcKap3Xa4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iftPd-0004eJ-6y; Fri, 13 Dec 2019 22:27:53 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iftPN-0004dn-7k
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 22:27:38 +0000
Received: by mail-ot1-f66.google.com with SMTP id o9so904181ote.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 14:27:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yUrvPMiCDtXnhqrg59MpZ/13pnaz/iZ88MgzmTpy4Uk=;
 b=liI6eOwo6m7bWVUjcAjXwrGhFVJTmOGes8Oq45ae9fipfj/zwBWgSlxCmB8olG5w+M
 q5OyfgxyRMQAmgyAcixREy4VCv81QiU9bX/SZPLGzxOU9D+9GF1Yjh94cDe/VbFoBjNz
 EWRmcHDAGdHHMNwurhpAgWedpl1CenXjINoteIXMs1PxgbaS/iZkLKzWLG0liFgywbE0
 J3fAb5nySlNOc8VeXkHi2WcHTJcIZTbJO50hTOJBPMb2SocpDPwDbvQrBnpmL5KbC2Fi
 lzD4dx495f5WLqippO9DAV4fRn2/gPhQ62PlTBJcyJo03u8SvIjrTqGenTGUIrJ7S3ih
 EvJg==
X-Gm-Message-State: APjAAAUb7I8yf1DgEG5WI7JIwWQJ6m4yc2c8YYPwkOy/SQxODuF7vBPF
 RJbhgV4HYOCE1Wk4vYifCA==
X-Google-Smtp-Source: APXvYqyGkIUrZPq7+IYf+cJy5RzuFTEd7QfG91GtnXfuBL0xk/hpDG676A2pBOwmoCHsx3dmxHBnPg==
X-Received: by 2002:a05:6830:1b6d:: with SMTP id
 d13mr17365107ote.258.1576276056206; 
 Fri, 13 Dec 2019 14:27:36 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m25sm3797099otq.5.2019.12.13.14.27.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 14:27:35 -0800 (PST)
Date: Fri, 13 Dec 2019 16:27:35 -0600
From: Rob Herring <robh@kernel.org>
To: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
Subject: Re: [PATCH v4 1/3] dt-bindings: net: bluetooth: add DT bindings for
 Realtek controllers
Message-ID: <20191213222735.GA456@bogus>
References: <20191130202314.142096-1-bonstra@bonstra.fr.eu.org>
 <20191130202314.142096-2-bonstra@bonstra.fr.eu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191130202314.142096-2-bonstra@bonstra.fr.eu.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_142737_279170_1CADBB1C 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Johan Hedberg <johan.hedberg@gmail.com>, Marcel Holtmann <marcel@holtmann.org>,
 Maxime Ripard <mripard@kernel.org>, linux-bluetooth@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 30, 2019 at 09:23:12PM +0100, Hugo Grostabussiat wrote:
> The rtl_bt driver already supports some Realtek controllers on ACPI
> platforms.
> This commit adds bindings for DT-only platforms.
> 
> Signed-off-by: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
> ---
>  .../bindings/net/realtek-bluetooth.yaml       | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> new file mode 100644
> index 000000000000..6b62e5132c90
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> @@ -0,0 +1,52 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/realtek-bluetooth.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek Bluetooth controllers device tree bindings
> +
> +description: |
> +  Device tree bindings for serial attached Realtek Bluetooth controllers.
> +
> +maintainers:
> +  - Marcel Holtmann <marcel@holtmann.org>
> +  - Johan Hedberg <johan.hedberg@gmail.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: realtek,rt8723bs-bt
> +
> +  powerdown-gpios:
> +    description: GPIO line controlling the power down (BT_DIS#) signal
> +    maxItems: 1
> +
> +  device-wake-gpios:
> +    description: GPIO line controlling the device wakeup (BT_WAKE) signal
> +    maxItems: 1
> +
> +  host-wake-gpios:
> +    description: GPIO line sampling the host wakeup (BT_HOST_WAKE) signal
> +    maxItems: 1
> +
> +  firmware-name:
> +    description: |
> +      Name of the configuration file to load in addition to firmware
> +    $ref: http://devicetree.org/schemas/types.yaml#/definitions/string

This should be just:

$ref: /schemas/types.yaml#/definitions/string

> +
> +required:
> +  - compatible
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    uart1 {
> +      bluetooth {
> +        compatible = "realtek,rtl8723bs-bt";
> +        powerdown-gpios = <&r_pio 0 4 GPIO_ACTIVE_LOW>;
> +        host-wake-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>;
> +        device-wake-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>;
> +        firmware-name = "rtl8723bs_config-teres_a64_i.bin";
> +      };
> +    };
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
