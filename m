Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF57C123D96
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 03:57:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HV+pI6KZIoVAn5hDmL9FHPXcGbzwdKJ/zbTzq9cMPg8=; b=cwzZGiAe4ykaUg
	367YnNDaYigGJSv3S7Yg5b0PpLCw+IPGt3w96pKOtpczQcl5AmFIDqasegYhtdqPxlt9BGrA5PjGV
	8GYcG0PGbloj45EWdlK0+RkVVdeSgI6DjI2KE0pgI5F8OK0pBQ9pMv8rNgrGf4LjCmys/NAlKYptx
	lGdS0K5RydmD6klZMOEKP0qCPKzQ0Owwwau3r7bd6LKvlV/NEz+xe+pq/Zne3V5Rkpgfbz72ON7yw
	Ob58/feRxIzLwW+58JjD4VvpGH3VDBzqQh2tMLEUlbo3X1Ic40OSz1t40YjpRVxOwAh4RaZzVY/hY
	SSSnvGTI5ojBH85UyECw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihPWW-00064M-NO; Wed, 18 Dec 2019 02:57:16 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihPWK-00063P-F7
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 02:57:06 +0000
Received: by mail-ot1-f67.google.com with SMTP id h20so511123otn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 18:57:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HnATBlbL+eZiW12mo0hwrch2CUsppmWX32lWHiTL+YQ=;
 b=h+f5vmdnaWdkfBJuGCP70Ttojc6LKRRIHciw1Jc/mRdyXtUuRVJDM48HIg6eiv4sLl
 7Lal8PEnDf34504canwuOsibMrWMgM85ShFAWa9eKI/Qg5N6l1RZROZJZTfpu151IiAr
 CQ+wYtFuAzteWaFNnim972RrNOg43/ahsCRnpGLq2T/+1XRiM0KAphIhHjR0DhVpImxp
 OQW4gOhq3rI/loCsNC7irc00eXMUb4DZr+Gqg+o70EKX7tr5E7dDeA9FVOoMWNFYn61i
 rfwp+Nv3+4ItVyheI/1Xwkbl0j/fDeu2UMXPnVuQrbWxtRdHzxNfHId6mgRAZ39kjS8L
 ET1Q==
X-Gm-Message-State: APjAAAX60bCCn+beR9nD72Fu5w0v9QT0y7wD0xIroTHGrnuZ4wcNJUNK
 ZwPRBL75mvDkhHrDqd6VLQ==
X-Google-Smtp-Source: APXvYqyihxi8JukdWSv/sqB94AVfuF+A3sZ6QOp7w2twJ4p+CCqPcHedgqwNmZ40BJJHYASG2nIe0Q==
X-Received: by 2002:a05:6830:20c6:: with SMTP id
 z6mr43585otq.272.1576637823440; 
 Tue, 17 Dec 2019 18:57:03 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z21sm288506oto.52.2019.12.17.18.57.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 18:57:02 -0800 (PST)
Date: Tue, 17 Dec 2019 20:57:02 -0600
From: Rob Herring <robh@kernel.org>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Subject: Re: [PATCH v11 04/14] dt-bindings: Add bindings document of Aspeed
 PECI adapter
Message-ID: <20191218025702.GA18998@bogus>
References: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
 <20191211194624.2872-5-jae.hyun.yoo@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211194624.2872-5-jae.hyun.yoo@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_185705_150110_6DCEE0C6 
X-CRM114-Status: GOOD (  22.74  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Randy Dunlap <rdunlap@infradead.org>,
 Tomer Maimon <tmaimon77@gmail.com>, devicetree@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Milton Miller II <miltonm@us.ibm.com>,
 Frederic Barrat <fbarrat@linux.vnet.ibm.com>, Pavel Machek <pavel@ucw.cz>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 Jason M Biils <jason.m.bills@linux.intel.com>,
 Eric Sandeen <sandeen@redhat.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, openbmc@lists.ozlabs.org,
 linux-doc@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Joel Stanley <joel@jms.id.au>, "Bryant G . Ly" <bryantly@linux.vnet.ibm.com>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 David Kershner <david.kershner@unisys.com>, Guenter Roeck <linux@roeck-us.net>,
 Wu Hao <hao.wu@intel.com>, linux-hwmon@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Arnd Bergmann <arnd@arndb.de>,
 Philippe Ombredanne <pombredanne@nexb.com>, Johan Hovold <johan@kernel.org>,
 Tomohiro Kusumi <kusumi.tomohiro@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sagar Dharia <sdharia@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org, Juergen Gross <jgross@suse.com>,
 Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>,
 Ryan Chen <ryan_chen@aspeedtech.com>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Stephen Boyd <sboyd@codeaurora.org>, Vinod Koul <vkoul@kernel.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 11:46:14AM -0800, Jae Hyun Yoo wrote:
> This commit adds bindings document of Aspeed PECI adapter for ASPEED
> AST24xx/25xx/26xx SoCs.
> 
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Joel Stanley <joel@jms.id.au>
> Cc: Andrew Jeffery <andrew@aj.id.au>
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Jason M Biils <jason.m.bills@linux.intel.com>
> Cc: Milton Miller II <miltonm@us.ibm.com>
> Cc: Pavel Machek <pavel@ucw.cz>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Ryan Chen <ryan_chen@aspeedtech.com>
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> ---
> Changes since v10:
> - Changed documents format to DT schema format so I dropped all review tags.
>   Please review it again.
> 
>  .../devicetree/bindings/peci/peci-aspeed.yaml | 124 ++++++++++++++++++
>  1 file changed, 124 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/peci/peci-aspeed.yaml
> 
> diff --git a/Documentation/devicetree/bindings/peci/peci-aspeed.yaml b/Documentation/devicetree/bindings/peci/peci-aspeed.yaml
> new file mode 100644
> index 000000000000..0f5c2993fe9b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/peci/peci-aspeed.yaml
> @@ -0,0 +1,124 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/peci/peci-aspeed.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Aspeed PECI Bus Device Tree Bindings
> +
> +maintainers:
> +  - Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - aspeed,ast2400-peci
> +      - aspeed,ast2500-peci
> +      - aspeed,ast2600-peci
> +
> +  reg:
> +    maxItems: 1
> +

> +  "#address-cells":
> +    # Required to define a client address.
> +    const: 1
> +
> +  "#size-cells":
> +    # Required to define a client address.
> +    const: 0

These 2 can be defined by the bus schema.

> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    description: |

You can drop the '|' if there's no formatting to preserve.

> +      Clock source for PECI controller. Should reference the external
> +      oscillator clock.
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  clock-frequency:
> +    # Operation frequency of PECI controller in units of Hz.
> +    minimum: 187500
> +    maximum: 24000000
> +
> +  msg-timing:
> +    description: |
> +      Message timing negotiation period. This value will determine the period
> +      of message timing negotiation to be issued by PECI controller. The unit
> +      of the programmed value is four times of PECI clock period.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +        maximum: 255
> +        default: 1
> +
> +  addr-timing:
> +    description: |
> +      Address timing negotiation period. This value will determine the period
> +      of address timing negotiation to be issued by PECI controller. The unit
> +      of the programmed value is four times of PECI clock period.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +        maximum: 255
> +        default: 1
> +
> +  rd-sampling-point:
> +    description: |
> +      Read sampling point selection. The whole period of a bit time will be
> +      divided into 16 time frames. This value will determine the time frame
> +      in which the controller will sample PECI signal for data read back.
> +      Usually in the middle of a bit time is the best.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +        maximum: 15
> +        default: 8
> +
> +  cmd-timeout-ms:
> +    # Command timeout in units of ms.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 1
> +        maximum: 60000
> +        default: 1000
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#address-cells"
> +  - "#size-cells"
> +  - interrupts
> +  - clocks
> +  - resets
> +  - clock-frequency
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/ast2600-clock.h>
> +    peci: bus@1e78b000 {
> +        compatible = "simple-bus";
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges = <0x0 0x1e78b000 0x60>;

You can drop this node in the examples.

> +
> +        peci0: peci-bus@0 {
> +            compatible = "aspeed,ast2600-peci";
> +            reg = <0x0 0x100>;
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +            interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
> +            clocks = <&syscon ASPEED_CLK_GATE_REF0CLK>;
> +            resets = <&syscon ASPEED_RESET_PECI>;
> +            clock-frequency = <24000000>;
> +            msg-timing = <1>;
> +            addr-timing = <1>;
> +            rd-sampling-point = <8>;
> +            cmd-timeout-ms = <1000>;
> +        };
> +    };
> +...
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
