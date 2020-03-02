Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 494B317686B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 00:48:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFJosqstDPJCwunbEkbUeUhxYJqMPXydv+jdc8BfTAo=; b=q9J1E8iCeBcdTV
	cv8fZdi6dhkvIrgyW20TXxOeKny3VNBNqDoAwGvFFr44AM+aLzRIGANMiU8IoF4V7P0Ru/khvdbsg
	GYVkVMGxopT1JiNmazjHhlUGpXYCVgr013CGHriBARWlIPXWzJ/DXjZhvxVSUPN8q1jbUzi+LoNuW
	Z8iNbNwrkz6SVgoMOwlvaCC0tjeFjppiS3onnwgvtzcDGJh+03MByv9ATun2XREnMBowO74sI4jmD
	nih4HCNxjPObUSy/SEOoUi/+5Ctop+zg708+/JNXAax1woGFFo8r3e753+e7ND1/IA8yn61B3paTE
	Wl9QcrASpvu9dI+UoTZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8umw-00070I-Go; Mon, 02 Mar 2020 23:47:54 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8ump-0006zz-6R
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 23:47:48 +0000
Received: by mail-ot1-f66.google.com with SMTP id v22so1144576otq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 15:47:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=d/RkNcxyLqUX/+PgUpkEl7v2Jd0JMvdb/wExbaQt108=;
 b=UKoS5tCKs8rAbwMcHkgYrY3T4vMFPvnuhMn9kdFtJIYNbi5GrBuTmqK2M6W012rTTF
 +1/LmszoZZ+jQpJVTbu1W73M9tyqB0Vuyxm6C8ZSSUmp34+x5ey+W2naOk2jamfe6pPd
 RdnZ4dWBq0FhHWzOoCFwAMC8l6yUG5U7C0fJvBJqEYSYDxCVqwQt3asrsTttNEcNAilf
 TSD0OqJddzpfK+MgMCeC9L8seYUaHAvZDSJS2cc8I0Us3019hUx4uKYbNWBfmj2Z5lrG
 Onvv9xcuMnXctOgMdSrqilhWfdyl1c3A2rI/dmKdJG5HoeIewZHSdu73eKLfpYiB6FMk
 MFAQ==
X-Gm-Message-State: ANhLgQ1yynA7axJUXl4TT3Cjj/CxnEGzoejbxVPTzlnllLryRwNQ2CDW
 1nqQUs5DS/mGunHO3Kz7Tw==
X-Google-Smtp-Source: ADFU+vuxpmnJMb8DOFdRXd1/mWLsgWVNrXdVa77SguBZ7LSbwMPbChW5+xbwnEeE1XzjzZTeiYahoQ==
X-Received: by 2002:a9d:7509:: with SMTP id r9mr1274145otk.270.1583192866512; 
 Mon, 02 Mar 2020 15:47:46 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m23sm3457031otq.37.2020.03.02.15.47.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 15:47:45 -0800 (PST)
Received: (nullmailer pid 30642 invoked by uid 1000);
 Mon, 02 Mar 2020 23:47:44 -0000
Date: Mon, 2 Mar 2020 17:47:44 -0600
From: Rob Herring <robh@kernel.org>
To: rentao.bupt@gmail.com
Subject: Re: [PATCH v6 7/7] dt-bindings: usb: add documentation for aspeed
 usb-vhub
Message-ID: <20200302234744.GA21778@bogus>
References: <20200228020757.10513-1-rentao.bupt@gmail.com>
 <20200228020757.10513-8-rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228020757.10513-8-rentao.bupt@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_154747_239617_30676AE8 
X-CRM114-Status: GOOD (  20.01  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 linux-usb@vger.kernel.org, taoren@fb.com, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Joel Stanley <joel@jms.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 06:07:57PM -0800, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> Add device tree binding documentation for the Aspeed USB 2.0 Virtual HUb
> Controller.
> 
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> Reviewed-by: Joel Stanley <joel@jms.id.au>
> ---
>  Changes in v6:
>    - added 2 required properties into example and passed "make
>      dt_binding_check".
>  Changes in v5:
>    - updated maintainer to Ben.
>    - refined patch description per Joel's suggestion.
>  No change in v2/v3/v4:
>    - the patch is added to the patch series since v4.
> 
>  .../bindings/usb/aspeed,usb-vhub.yaml         | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> new file mode 100644
> index 000000000000..b9f33310e9a2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later

Dual license new bindings please.

(GPL-2.0-only OR BSD-2-Clause)

> +# Copyright (c) 2020 Facebook Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/aspeed,usb-vhub.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ASPEED USB 2.0 Virtual Hub Controller
> +
> +maintainers:
> +  - Benjamin Herrenschmidt <benh@kernel.crashing.org>
> +
> +description: |+
> +  The ASPEED USB 2.0 Virtual Hub Controller implements 1 set of USB Hub
> +  register and several sets of Device and Endpoint registers to support
> +  the Virtual Hub's downstream USB devices.
> +
> +  Supported number of devices and endpoints vary depending on hardware
> +  revisions. AST2400 and AST2500 Virtual Hub supports 5 downstream devices
> +  and 15 generic endpoints, while AST2600 Virtual Hub supports 7 downstream
> +  devices and 21 generic endpoints.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - aspeed,ast2400-usb-vhub
> +      - aspeed,ast2500-usb-vhub
> +      - aspeed,ast2600-usb-vhub
> +
> +  reg:
> +    maxItems: 1
> +    description: Common configuration registers

If 'Common' means something specific to this block, then keep. 
Otherwise, you can drop ti.

> +
> +  clocks:
> +    maxItems: 1
> +    description: The Virtual Hub Controller clock gate

Drop this.

> +
> +  interrupts:
> +    maxItems: 1
> +
> +  aspeed,vhub-downstream-ports:
> +    description: Number of downstream ports supported by the Virtual Hub
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32

Constraints?

'maximum: 5' ?

default?

> +
> +  aspeed,vhub-generic-endpoints:
> +    description: Number of generic endpoints supported by the Virtual Hub
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32

Constraints?

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +  - aspeed,vhub-downstream-ports
> +  - aspeed,vhub-generic-endpoints
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/aspeed-clock.h>
> +    vhub: usb-vhub@1e6a0000 {
> +            compatible = "aspeed,ast2500-usb-vhub";
> +            reg = <0x1e6a0000 0x300>;
> +            interrupts = <5>;
> +            clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
> +            aspeed,vhub-downstream-ports = <5>;
> +            aspeed,vhub-generic-endpoints = <15>;
> +            pinctrl-names = "default";
> +            pinctrl-0 = <&pinctrl_usb2ad_default>;
> +    };
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
