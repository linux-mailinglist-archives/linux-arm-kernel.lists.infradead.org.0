Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2601D5612
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 18:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bzfeb0HabxxJP5r+gYIoHHJjQtRTeenptfXxZoApomU=; b=mQJxGww9IH9nARr1tOEJR9KMq
	xpNhSta2hLgjht7A8JEyio4aKCzRrcN/3BKcEJbiWZS3TAZYJ0o29cE41qyQQbmZFbTYd+0rX2ckW
	CvuVBAoCgvCxc+gM2WXv3Z/MmD532woPh7xSnSU1BbJKM2s9rmpvdnBJcV6BdQgUcEIG2Bift6BPy
	YxlOvQYko38TQ43NfSz312WVZJbIscYHpBWCVNVEdVihFjF35uEuJa6LkEetLp77P+/aR21On8HZA
	Px7vyPh1h67gDrYuzweZCn1Dy1rzC2HSNz3C0CNFW/R1yzn4s4J+YVbUldiU2tn8CvJGxCanNAYfJ
	G3Lwzvqgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdFW-0001Xa-Rv; Fri, 15 May 2020 16:31:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdFO-0001XC-FA
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 16:31:43 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D5EFA206D8;
 Fri, 15 May 2020 16:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589560302;
 bh=eOtWRyoqmA1uCKru++/p8BDELLVraADtNEnxkf6ec8I=;
 h=Date:From:To:List-Id:Cc:Subject:In-Reply-To:References:From;
 b=wqqbMQW1nhKhl0J9TzKmdt5+kGvijiVbGjAokLJhu0XhhwVo3Q7u/INBnzkPIMion
 CB2XdYIo+2jNM7qgynWMfWiT4CJTkMq6lBXh1gKlp0AHvh77EbKvygXs2MipgzAOfs
 /sJIu/gKJ7nymHPHLOWvkYMq6FU3MoFCtZUiozRg=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jZdFM-00CdEo-7n; Fri, 15 May 2020 17:31:40 +0100
MIME-Version: 1.0
Date: Fri, 15 May 2020 17:31:40 +0100
From: Marc Zyngier <maz@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 06/14] arm64: dts: sparx5: Add basic cpu support
In-Reply-To: <871rnlp740.fsf@soft-dev15.microsemi.net>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
 <20200513125532.24585-7-lars.povlsen@microchip.com>
 <2d230dab95ee96727a42f9c242c93c18@misterjones.org>
 <871rnlp740.fsf@soft-dev15.microsemi.net>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <0da7db8d10622cb4457631c99f6ee06d@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: lars.povlsen@microchip.com, soc@kernel.org, arnd@arndb.de,
 sboyd@kernel.org, linus.walleij@linaro.org, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, Steen.Hegelund@microchip.com,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, olof@lixom.net, mturquette@baylibre.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_093142_549135_D5E96985 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 SoC Team <soc@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Olof Johansson <olof@lixom.net>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[using the correct email address this time]

On 2020-05-15 16:09, Lars Povlsen wrote:
> Marc Zyngier writes:
> 
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know 
>> the content is safe
>> 
>> On 2020-05-13 13:55, Lars Povlsen wrote:
>>> This adds the basic DT structure for the Microchip Sparx5 SoC, and 
>>> the
>>> reference boards, pcb125, pcb134 and pcb135. The two latter have a
>>> NAND vs a eMMC centric variant (as a mount option),
>>> 
>>> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>>> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>>> ---
>>>  MAINTAINERS                                   |   1 +
>>>  arch/arm64/boot/dts/Makefile                  |   1 +
>>>  arch/arm64/boot/dts/microchip/Makefile        |   4 +
>>>  arch/arm64/boot/dts/microchip/sparx5.dtsi     | 135 
>>> ++++++++++++++++++
>>>  .../boot/dts/microchip/sparx5_pcb125.dts      |  17 +++
>>>  .../boot/dts/microchip/sparx5_pcb134.dts      |  17 +++
>>>  .../dts/microchip/sparx5_pcb134_board.dtsi    |  15 ++
>>>  .../boot/dts/microchip/sparx5_pcb134_emmc.dts |  17 +++
>>>  .../boot/dts/microchip/sparx5_pcb135.dts      |  17 +++
>>>  .../dts/microchip/sparx5_pcb135_board.dtsi    |  15 ++
>>>  .../boot/dts/microchip/sparx5_pcb135_emmc.dts |  17 +++
>>>  .../boot/dts/microchip/sparx5_pcb_common.dtsi |  15 ++
>>>  12 files changed, 271 insertions(+)
>>>  create mode 100644 arch/arm64/boot/dts/microchip/Makefile
>>>  create mode 100644 arch/arm64/boot/dts/microchip/sparx5.dtsi
>>>  create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
>>>  create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb134.dts
>>>  create mode 100644
>>> arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
>>>  create mode 100644
>>> arch/arm64/boot/dts/microchip/sparx5_pcb134_emmc.dts
>>>  create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb135.dts
>>>  create mode 100644
>>> arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi
>>>  create mode 100644
>>> arch/arm64/boot/dts/microchip/sparx5_pcb135_emmc.dts
>>>  create mode 100644
>>> arch/arm64/boot/dts/microchip/sparx5_pcb_common.dtsi
>>> 
>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>> index 1b5a18d3dbb9f..5aa28d6e39d4f 100644
>>> --- a/MAINTAINERS
>>> +++ b/MAINTAINERS
>>> @@ -2084,6 +2084,7 @@ M:      Lars Povlsen 
>>> <lars.povlsen@microchip.com>
>>>  M:   Steen Hegelund <Steen.Hegelund@microchip.com>
>>>  M:   Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>
>>>  L:   linux-arm-kernel@lists.infradead.org (moderated for
>>> non-subscribers)
>>> +F:   arch/arm64/boot/dts/microchip/
>>>  N:   sparx5
>>>  S:   Supported
>>> 
>>> diff --git a/arch/arm64/boot/dts/Makefile
>>> b/arch/arm64/boot/dts/Makefile
>>> index f19b762c008d8..9680a7f20c307 100644
>>> --- a/arch/arm64/boot/dts/Makefile
>>> +++ b/arch/arm64/boot/dts/Makefile
>>> @@ -17,6 +17,7 @@ subdir-y += intel
>>>  subdir-y += lg
>>>  subdir-y += marvell
>>>  subdir-y += mediatek
>>> +subdir-y += microchip
>>>  subdir-y += nvidia
>>>  subdir-y += qcom
>>>  subdir-y += realtek
>>> diff --git a/arch/arm64/boot/dts/microchip/Makefile
>>> b/arch/arm64/boot/dts/microchip/Makefile
>>> new file mode 100644
>>> index 0000000000000..c6e0313eea0f9
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/microchip/Makefile
>>> @@ -0,0 +1,4 @@
>>> +# SPDX-License-Identifier: GPL-2.0
>>> +dtb-$(CONFIG_ARCH_SPARX5) += sparx5_pcb125.dtb
>>> +dtb-$(CONFIG_ARCH_SPARX5) += sparx5_pcb134.dtb 
>>> sparx5_pcb134_emmc.dtb
>>> +dtb-$(CONFIG_ARCH_SPARX5) += sparx5_pcb135.dtb 
>>> sparx5_pcb135_emmc.dtb
>>> diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi
>>> b/arch/arm64/boot/dts/microchip/sparx5.dtsi
>>> new file mode 100644
>>> index 0000000000000..3136b4369f507
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
>>> @@ -0,0 +1,135 @@
>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>> +/*
>>> + * Copyright (c) 2020 Microchip Technology Inc. and its 
>>> subsidiaries.
>>> + */
>>> +
>>> +#include <dt-bindings/gpio/gpio.h>
>>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>>> +
>>> +/ {
>>> +     compatible = "microchip,sparx5";
>>> +     interrupt-parent = <&gic>;
>>> +     #address-cells = <2>;
>>> +     #size-cells = <1>;
>>> +
>>> +     aliases {
>>> +             serial0 = &uart0;
>>> +             serial1 = &uart1;
>>> +     };
>>> +
>>> +     chosen {
>>> +             stdout-path = "serial0:115200n8";
>>> +     };
>>> +
>>> +     cpus {
>>> +             #address-cells = <2>;
>>> +             #size-cells = <0>;
>>> +             cpu-map {
>>> +                     cluster0 {
>>> +                             core0 {
>>> +                                     cpu = <&cpu0>;
>>> +                             };
>>> +                             core1 {
>>> +                                     cpu = <&cpu1>;
>>> +                             };
>>> +                     };
>>> +             };
>>> +             cpu0: cpu@0 {
>>> +                     compatible = "arm,cortex-a53", "arm,armv8";
>>> +                     device_type = "cpu";
>>> +                     reg = <0x0 0x0>;
>>> +                     enable-method = "spin-table";
>> 
>> Really? This is 2020, not 2012 any more. Surely a new platform
>> boots using PSCI, and not *this*.
>> 
> 
> We don't currently support PSCI. The platform does not have TrustZone,
> hence we don't use ATF.

It does have EL3, as you cannot remove EL3 from A53. Hence it can run
a secure payload, and thus PSCI. TrustZone really is something else,
not directly related to ATF (which will run fine on this HW).

> We use U-Boot as the (only) bootloader, providing the spintable. I 
> looked
> at adding PSCI (in U-Boot) initially, but as most other platforms were
> using ATF the PSCI support was buggy and caused me to go for spintable.

It should be absolutely trivial to fix, and I'd suggest you do that
rather than add this cruft. Even porting ATF to your platform should be
pretty easy.

> Is spintable being deprecated?

It was only ever there to support systems that cannot rely on a more
privileged exception level to power-on the CPUs. There is exactly *one*
CPU of this kind in the wild (Applied Micro's X-Gene). Everything else
should be using PSCI.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
