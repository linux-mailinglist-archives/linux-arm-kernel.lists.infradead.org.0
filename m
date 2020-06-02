Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 183AF1EB789
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 10:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rsJsbTPuZ1LeWnqFkzONJuJ3lwhnDXn/V7xyeDHg2R8=; b=ZDRMIK9/pNvHuLP0R8valMKnRF
	hKAejC5DhWRTyUHBilpDfG+WhzgZ5qpQHeH58NkssNYQYB12qNQ+o/IbxZ5xfxIwp82xgTAiFcnlT
	E9jEnwxny7izIZM4Ekl8NkwJrCKU+ck8CLRyJGoJOTpJfOVFfOFbXH5EM+vTSrM1rYO5l24Mn0lRT
	2/KludrUv9dhzckjwHSiJohCSGwjgMurXIfQqcohmUwU0w/X9b1GDDbplJtdvWmTeXFCcF2KgI5Si
	wTB3BWBXdwFVnYkgqk+FS4g8gomi3mMQvjSYe3gvHGIjAI98wIKA6EoE44CZtwjcifKui6cTGG2Q4
	rdSiqhiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg2SU-00067x-3S; Tue, 02 Jun 2020 08:39:42 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2SO-00066J-Ci
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 08:39:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591087176; x=1622623176;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=5oSerVw4BUQ1JnWRjiKwnbjMfhGlmnPWZ9idp3chc+k=;
 b=ZDgv91OEbVpknGTGkV4xoOlRuIiYtpVnD5rScn7BWRb8Ek8U34LcAsOu
 ZM8ukhS+sQ/AQeDJ44/ggvhbYHQVjZF7zCPyqbxxtZe/V2PIgWfr6XpRv
 plf9WD/HbNAfCngavsx8Z4o8FrC7My8PX2IcLW/EEtmJP1IGLu2+uZjsP
 /O5dFX4+bGIvsOPMDvXevggptdqqGRR0VBMV9LQefctRp53uOGHpz8knK
 1//CGJ5NeZtuOGLtb9t7klF5Dn3BGCcqDjDm2QV7hXdlUoDM1UXzGURGl
 M0kirlhvmTvvMDtgbwGyt6gFwpf1ad3kW9yzCARc7TUn+qnYh8UALKwRI w==;
IronPort-SDR: CGzwFgZnx38dfzy3f8q8Xm+puJ33BFnb4DM1BvkqwaF38Hj7IETfB7dGjdAjeim4iMDvI27Bgb
 +yICiF7lLYVnRVeN2quM6SHW3LNULatRt9IgxD6Hmrc5Mj67Nzo2VUMQ4fhnN8yNRMhhUTlXTw
 6KLcvdEp5R6EdhQyGXTqq9+eC3ANvPCnHJ4q7XthvQrOvAPk/fETg5WqPtmUavy+SYUKK8t1lJ
 womw9WDinln+Lxa2xf8VRHl+rSWUFvWeazBmzkbVMb22LOT8PYyiB7Ovsoosv7e9z3TLTsGs4F
 G5g=
X-IronPort-AV: E=Sophos;i="5.73,463,1583218800"; d="scan'208";a="81897758"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Jun 2020 01:39:34 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 2 Jun 2020 01:39:33 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 2 Jun 2020 01:39:18 -0700
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
 <20200513125532.24585-11-lars.povlsen@microchip.com>
 <20200528021826.GA3221035@bogus>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 10/14] dt-bindings: clock: sparx5: Add Sparx5 SoC DPLL
 clock
In-Reply-To: <20200528021826.GA3221035@bogus>
Date: Tue, 2 Jun 2020 10:39:29 +0200
Message-ID: <87h7vtq2ta.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_013936_441332_4BF3308D 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.147.91 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

> On Wed, May 13, 2020 at 02:55:28PM +0200, Lars Povlsen wrote:
>> This add the DT bindings documentation for the Sparx5 SoC DPLL clock
>>
>> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>> ---
>>  .../bindings/clock/microchip,sparx5-dpll.yaml | 46 +++++++++++++++++++
>>  1 file changed, 46 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml b/Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml
>> new file mode 100644
>> index 0000000000000..594007d8fc59a
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml
>> @@ -0,0 +1,46 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/clock/microchip,sparx5-dpll.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Microchip Sparx5 DPLL Clock
>> +
>> +maintainers:
>> +  - Lars Povlsen <lars.povlsen@microchip.com>
>> +
>> +description: |
>> +  The Sparx5 DPLL clock controller generates and supplies clock to
>> +  various peripherals within the SoC.
>> +
>> +  This binding uses common clock bindings
>> +  [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
>> +
>> +properties:
>> +  compatible:
>> +    const: microchip,sparx5-dpll
>> +
>> +  reg:
>> +    items:
>> +      - description: dpll registers
>
> For a single entry, just:
>
> maxItems: 1

Ok.

>
>> +
>> +  '#clock-cells':
>> +    const: 1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - '#clock-cells'
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  # Clock provider for eMMC:
>> +  - |
>> +    clks: clks@61110000c {
>
> clock-controller@1110000c {
>

Got that.

>> +         compatible = "microchip,sparx5-dpll";
>> +         #clock-cells = <1>;
>> +         reg = <0x1110000c 0x24>;
>
> Looks like this is a sub-block in some other h/w block. What's the
> parent device? That should be described and this should be part of it
> either as a single node or a child node. Without a complete view of what
> this block has I can't provide any guidance.

No, as Alex noted to a similar comment in the temp. sensor driver, the
chip is using packed register spaces predominantly. So don't put too
much into the register offsets.

---Lars

>
> Rob

--
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
