Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 465D31E7FA0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 16:05:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PZPCryhykxqW0AQmS3ZU6LmiC5CftVbkorXXd9wTbv0=; b=KBhxDujfObkga15IzQomc80y+5
	zRinACCCQZxQ6OL+UF5E27xet2l+d23aevovO0ONPBXY6f9OoPWvj04Kc/kteRNZKcBA3RwTZv6QI
	h9xFDTBTtc++oR/DbmbI17zipTEhtFGVjRtUxX9CrM3EirOXO75tR1M+jLGXvymLRRpM/tn+PAPbK
	3gS42n1sFYp7QXq6vF8E+6D+tUePwV+SRMbJsNgB5aqCv7+SrkMVfpX/D+N3U6DJAtICotOugSH9r
	lopyLKJ8Bqto4wPBdW+OSS38IghNiw3f2zZP6pCVAcsmh1YEZAKZq0aFG96uz6EzBebAHt9siHE5Z
	waD0dbVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jefd4-0007Hm-A1; Fri, 29 May 2020 14:04:58 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jefcv-0007Gj-61
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 14:04:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590761089; x=1622297089;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=sAGWaqia1JF0ryeRDXVzFPeaOltQyl1NGW+wvlqDi/E=;
 b=HcyETpnkJOtnHOGDUJshWXG8L7896rE73jv/wLE+cCgS6ytKZYr8L0aW
 9G8Av7zp53xKViFCFQ2IATSkhIHPhD/ruM8VwB93mD+3cZVIR3t2d9cC5
 vjkwEQPrJffQ7Xe1hYoKfBHVO1YGU17A6KPMNr62OPynNo1EVo3kSkiNh
 yEBOGwzhWqiIXvdkyXcukxwTDQkZHGNbgItra/2EsE5jHuDP63bL8dkc6
 XAmAODKEGEw+t9wRUqXOrpkzcoxhuNITCg6iHEvEUuyajjfNAIOiNQ3e3
 NQkE3WhSk6m4bu0gCPUtyzmbSoICVIt8Ef0mVQ9JaGyWuW7lPfrrzneXe Q==;
IronPort-SDR: xpzqGjpyykV5Ih2wHq02FXx0AqsGr/X8yLZnO6sUmywda4kivT2QCL6RfgUMu/+Mo7l9o/BFdz
 eE5+qVqCa2lVZL5SDnAKAB9ZWgFApKonr+D6Tn6LKVvhGj0EMsHHtXKOQO4hBQk4pAhpJdC3/T
 oSeo8ia8aXe0OQprk4ftk7b2Q5mkFCr7fBh1lEuOKj3veab6yAchm6/zODKBhgT3fNGupVkkZX
 NyNMfNrLKlKmDbgry41qbg+dHhM/zAN07j+tX4W+FU0kPMqY2yjRRAJZ5m8BXBRwZSwDb8/s93
 CCI=
X-IronPort-AV: E=Sophos;i="5.73,448,1583218800"; d="scan'208";a="76764161"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 May 2020 07:04:37 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 29 May 2020 07:04:40 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 29 May 2020 07:04:25 -0700
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
 <20200513125532.24585-11-lars.povlsen@microchip.com>
 <159054759981.88029.2630901114208720574@swboyd.mtv.corp.google.com>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 10/14] dt-bindings: clock: sparx5: Add Sparx5 SoC DPLL
 clock
In-Reply-To: <159054759981.88029.2630901114208720574@swboyd.mtv.corp.google.com>
Date: Fri, 29 May 2020 16:04:32 +0200
Message-ID: <87lflaq1lb.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_070449_289086_BECA0B00 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [68.232.149.84 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>, SoC Team <soc@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Olof Johansson <olof@lixom.net>, Linus Walleij <linus.walleij@linaro.org>,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Stephen Boyd writes:

> Quoting Lars Povlsen (2020-05-13 05:55:28)
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
>
> I don't think we need this sentence. Please drop it.

OK. (Assuming the "This binding ..." part).

>
>> +
>> +properties:
>> +  compatible:
>> +    const: microchip,sparx5-dpll
>> +
>> +  reg:
>> +    items:
>> +      - description: dpll registers
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
> Node name should be clock-controller@61110000c

Ok.

>
>> +         compatible = "microchip,sparx5-dpll";
>> +         #clock-cells = <1>;
>> +         reg = <0x1110000c 0x24>;
>
> Does it consume any clks itself? I'd expect to see some sort of 'clocks'
> property in this node.
>
>> +    };

I changed the driver to use a fixed-rate input clock, replacing the
BASE_CLOCK define(s). Additionally, I made the ahb_clock into
fixed-factor clock using the A53 cpu clock as a base.

So I updated the example and added 'clocks' to the schema.

I will send you a new series shortly.

Thank you for the comments.

--
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
