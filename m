Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1951EB80D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 11:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Jsfmtw1IAxsw6gJxqnARg+jaLKAqZWPJna7NOsA+RNY=; b=oPbpe5r3UufRu2G5+aaSobWn+I
	+8d1KbOHIWr/TTK+JlYbwYJn2+bJPatyVIYJq0u3KlJ9jY/JmE5J6YMEfLthdh/kCswtViJi5IDd2
	Ry7oyXRdyjnpKl9yjwq9CLLj4ZdcsJWEDfE4eyWpFZILSiHtE1mjvmjF1GVcDBfER28AJNJPZ1wMn
	Js9zsPIDtC9Cej8wdsMcMyRExSS+GUa4YC3IuCB0KClDs/JrjSrQo5oYhZ9MXo2cLZqQbxCWbEA6E
	N/NPlnhlNHV+Jit+8h1QRTqqND3o8gsFVvDGwpNR1zLQuGt6yue72KqTWgXkSdDPvjCiQ4DQve49e
	fIsIlXig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg2wc-0004h7-N5; Tue, 02 Jun 2020 09:10:50 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2wS-0004fx-LB
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 09:10:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591089040; x=1622625040;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=D46lJm1PaWfljLGHSVBzrgCAto0IvlJqbjtofGXQCiU=;
 b=abNsgKCWPhCoclQbfboVq0zVFuNyGlMYoPbAKbo84p5Tn0sdvNq4oEt2
 l18yvMfE5oZCcm4eTxCOZFMDbzhAcRk0Bgn8U2LhGQTDvhNowxZqXrfun
 bhoWglqmol+bV2obTI+QzRpsSLunJYfyqeWsUWy3jdYrNlXWEckZCDhco
 /LWaTxV+47ilabJ9q44GeuqZdyJqzf4WK4CzzErtBiW2xP0+4xXY4Ji9a
 QvieLRBEMnkAeELCbn0YO92A9PpzYFCBL5tPu05xcJXp+M2hTA0Wkkd7e
 vQX1jVeGGJMzLE5O4GHOQSQF+qVJq3udwktcHjYbpzLdqlXf1YTw+eJ6B w==;
IronPort-SDR: h557GLJJX4ysVCiOib/8eu+vc2XOZdu5PgTfwN98hkByEVTrljBEZHG2LQv55sbW+Zxoajhwxa
 bIY1sUIzw0eQBR37Zu6rcdVvu0b7RbmbRC3aEwlwqsHfRD4Fhnd9ElTmAqPRcdjH9oN2srXJf6
 BrwGbbrv+zvmSthKB6/3BPJRrVV5/ji0zOUQPpW3KYG9ycq2yUMzqiZS9+Hs4ZpZwcsFnLoYmh
 1Oo4BCuhSuc7raMu36hROipExffINYX1O7lXs82YZQSG2LeXzMBtczZic5+haCVrSd0wKUFPh2
 V0A=
X-IronPort-AV: E=Sophos;i="5.73,463,1583218800"; d="scan'208";a="78590969"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Jun 2020 02:10:38 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 2 Jun 2020 02:10:25 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 2 Jun 2020 02:10:34 -0700
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
 <20200513125532.24585-6-lars.povlsen@microchip.com>
 <20200528021137.GA3214411@bogus>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 05/14] dt-bindings: arm: sparx5: Add documentation for
 Microchip Sparx5 SoC
In-Reply-To: <20200528021137.GA3214411@bogus>
Date: Tue, 2 Jun 2020 11:10:32 +0200
Message-ID: <87ftbdq1dj.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_021040_707688_424D5E2A 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.153.233 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-gpio@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Steen Hegelund <Steen.Hegelund@microchip.com>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>, SoC Team <soc@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Olof Johansson <olof@lixom.net>,
 Linus Walleij <linus.walleij@linaro.org>,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Rob Herring writes:

> On Wed, May 13, 2020 at 02:55:23PM +0200, Lars Povlsen wrote:
>> This adds the main Sparx5 SoC DT documentation file, with information
>> abut the supported board types.
>>
>> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>> ---
>>  .../bindings/arm/microchip,sparx5.yaml        | 87 +++++++++++++++++++
>>  1 file changed, 87 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/arm/microchip,sparx5.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/arm/microchip,sparx5.yaml b/Documentation/devicetree/bindings/arm/microchip,sparx5.yaml
>> new file mode 100644
>> index 0000000000000..83b36d1217988
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/arm/microchip,sparx5.yaml
>> @@ -0,0 +1,87 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/arm/microchip,sparx5.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Microchip Sparx5 Boards Device Tree Bindings
>> +
>> +maintainers:
>> +  - Lars Povlsen <lars.povlsen@microchip.com>
>> +
>> +description: |+
>> +   The Microchip Sparx5 SoC is a ARMv8-based used in a family of
>> +   gigabit TSN-capable gigabit switches.
>> +
>> +   The SparX-5 Ethernet switch family provides a rich set of switching
>> +   features such as advanced TCAM-based VLAN and QoS processing
>> +   enabling delivery of differentiated services, and security through
>> +   TCAM-based frame processing using versatile content aware processor
>> +   (VCAP)
>> +
>> +properties:
>> +  $nodename:
>> +    const: '/'
>> +  compatible:
>> +    oneOf:
>> +      - description: The Sparx5 pcb125 board is a modular board,
>> +          which has both spi-nor and eMMC storage. The modular design
>> +          allows for connection of different network ports.
>> +        items:
>> +          - const: microchip,sparx5-pcb125
>> +          - const: microchip,sparx5
>> +
>> +      - description: The Sparx5 pcb134 is a pizzabox form factor
>> +          gigabit switch with 20 SFP ports. It features spi-nor and
>> +          either spi-nand or eMMC storage (mount option).
>> +        items:
>> +          - const: microchip,sparx5-pcb134
>> +          - const: microchip,sparx5
>> +
>> +      - description: The Sparx5 pcb135 is a pizzabox form factor
>> +          gigabit switch with 48+4 Cu ports. It features spi-nor and
>> +          either spi-nand or eMMC storage (mount option).
>> +        items:
>> +          - const: microchip,sparx5-pcb135
>> +          - const: microchip,sparx5
>> +
>> +  axi@600000000:
>> +    type: object
>> +    description: the root node in the Sparx5 platforms must contain
>> +      an axi bus child node. They are always at physical address
>> +      0x600000000 in all the Sparx5 variants.
>> +    properties:
>> +      compatible:
>> +        items:
>> +          - const: simple-bus
>> +      reg:
>> +        maxItems: 1
>
> simple-bus doesn't have 'reg'. If there's bus registers, then it's not
> simple.
>

Ooops, that's a leftover. I'll remove.

>> +
>> +    required:
>> +      - compatible
>> +      - reg
>> +
>> +patternProperties:
>> +  "^syscon@[0-9a-f]+$":
>
> This should be under a bus node.

I thought it was? But anyway, with the change below I guess the entire
block goes away.

>
>> +    description: All Sparx5 boards must provide a system controller,
>> +      typically under the axi bus node. It contain reset registers and
>> +      other system control.
>> +    type: object
>> +    properties:
>> +      compatible:
>> +        items:
>> +          - const: microchip,sparx5-cpu-syscon
>> +          - const: syscon
>
> This probably should be in its own document. If really this simple,
> there's already syscon.yaml you can add to.

Good suggestion, I'll add it to mfd/syscon.yaml then.

>
>> +      reg:
>> +        maxItems: 1
>> +
>> +    required:
>> +      - compatible
>> +      - reg
>> +
>> +required:
>> +  - compatible
>> +  - axi@600000000
>> +  - syscon@600000000
>> +
>> +...
>> --
>> 2.26.2

--
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
