Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9680D24951
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 09:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rsYs34VCoEmitXT4jsA/6wqanQdRNupVatloO7HHF/M=; b=bPoSehrKIGvvyII8X2u14HD4D
	Qc2TEBDaErne33IWYHY/kg1xR6tX8hrkIL66AspvG6hWOWXh0Gioxbvp/9FU0743TZJZzzu1XfPH7
	aIoBijKrOEKWna4wtUhRkSS0yKqxuQ+VMtAUMmjn9LvoWT9MWDfF/dmfxpHkhBV6zhA9Twu0t0KGB
	xkAbicm/KoorS/R9kpqFSh0rafuPyEWf1k5VvHVavZRh5yjz+nzrb9MqgC77k4RRASewtIEjckOzx
	uNMhjN3a7FbsdFkS0fV7uNoD9Sx2bfXcSui4M1zRBYh/BAH/BFD+9U/bPorpFynCUZDiqQlavk11F
	4jPzXMC5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzWM-0006h3-KV; Tue, 21 May 2019 07:49:14 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzWC-0006ge-PL
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 07:49:06 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4L7kp2S017921; Tue, 21 May 2019 09:48:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=GqxsC/HmUBt+EZxqpLDAlGaRrwKBJVv+DIPYytOsgHM=;
 b=O+4ww5RrIOrvk0ZwzbfxP2ZwW5MWhfSmI33EwCRauM2DpgmEv+mgxFbTJocOvTUCFRGU
 //C9eVSPYQC10CEDY2N+rrZ2crRec1En3CuzG/0fH6EYS0aaS1TdgEfvDGtqgjizPJBQ
 /fo6+2lLZXFXZpcuaqYuQHuJFe6P1152MTqVpL2C+UBtxgpBhlGoJqcJS1wMt8OncbwN
 jwYhav5uC7fL8vYxMQbVEjCMOEPLkvVM1uNaM2GWDTQ+aBFCIQfTchl4CAa0YcIA2aS1
 Nt10VfUaBzYKpg7QEFb7tofUwQgiyYcVGrOXLGyXrUg3kd1jP3ZtOSczYAofsXCJNuxF Dw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sj7h0r0bf-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 21 May 2019 09:48:54 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EFA903F;
 Tue, 21 May 2019 07:48:53 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A05911613;
 Tue, 21 May 2019 07:48:53 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 21 May
 2019 09:48:49 +0200
Subject: Re: [PATCH 5/5] ARM: dts: stm32: use dedicated files to manage
 stm32mp157 packages
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Linus Walleij
 <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, <arnd@arndb.de>
References: <1554895824-25709-1-git-send-email-alexandre.torgue@st.com>
 <1554895824-25709-6-git-send-email-alexandre.torgue@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <b236861c-2a25-d5a9-c892-3d2a33bacf30@st.com>
Date: Tue, 21 May 2019 09:48:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1554895824-25709-6-git-send-email-alexandre.torgue@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-21_01:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_004905_123107_D27BCA22 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 4/10/19 1:30 PM, Alexandre Torgue wrote:
> Four packages exist for stm32mp157 die. As ball-out is different between
> them, this patch covers those differences by creating dedicated pinctrl
> dtsi files. Each dtsi pinctrl package file describes the package ball-out
> through gpio-ranges.
> 
> stm32mp157a-dk1 / dk2 boards embed a STM32MP_PKG_AC (TFBGA361 (12*12))
> package.
> 
> stm32mp157c-ed1 / ev1 boards embed a STM32MP_PKG_AA (LFBGA448 (18*18))
> package.
> 
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> 

Applied on stm32-next.

Thanks.
Alex

> diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
> index 9104896..3b4cc3c 100644
> --- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
> @@ -26,6 +26,7 @@
>   				st,bank-name = "GPIOA";
>   				ngpios = <16>;
>   				gpio-ranges = <&pinctrl 0 0 16>;
> +				status = "disabled";
>   			};
>   
>   			gpiob: gpio@50003000 {
> @@ -38,6 +39,7 @@
>   				st,bank-name = "GPIOB";
>   				ngpios = <16>;
>   				gpio-ranges = <&pinctrl 0 16 16>;
> +				status = "disabled";
>   			};
>   
>   			gpioc: gpio@50004000 {
> @@ -50,6 +52,7 @@
>   				st,bank-name = "GPIOC";
>   				ngpios = <16>;
>   				gpio-ranges = <&pinctrl 0 32 16>;
> +				status = "disabled";
>   			};
>   
>   			gpiod: gpio@50005000 {
> @@ -62,6 +65,7 @@
>   				st,bank-name = "GPIOD";
>   				ngpios = <16>;
>   				gpio-ranges = <&pinctrl 0 48 16>;
> +				status = "disabled";
>   			};
>   
>   			gpioe: gpio@50006000 {
> @@ -74,6 +78,7 @@
>   				st,bank-name = "GPIOE";
>   				ngpios = <16>;
>   				gpio-ranges = <&pinctrl 0 64 16>;
> +				status = "disabled";
>   			};
>   
>   			gpiof: gpio@50007000 {
> @@ -86,6 +91,7 @@
>   				st,bank-name = "GPIOF";
>   				ngpios = <16>;
>   				gpio-ranges = <&pinctrl 0 80 16>;
> +				status = "disabled";
>   			};
>   
>   			gpiog: gpio@50008000 {
> @@ -98,6 +104,7 @@
>   				st,bank-name = "GPIOG";
>   				ngpios = <16>;
>   				gpio-ranges = <&pinctrl 0 96 16>;
> +				status = "disabled";
>   			};
>   
>   			gpioh: gpio@50009000 {
> @@ -110,6 +117,7 @@
>   				st,bank-name = "GPIOH";
>   				ngpios = <16>;
>   				gpio-ranges = <&pinctrl 0 112 16>;
> +				status = "disabled";
>   			};
>   
>   			gpioi: gpio@5000a000 {
> @@ -122,6 +130,7 @@
>   				st,bank-name = "GPIOI";
>   				ngpios = <16>;
>   				gpio-ranges = <&pinctrl 0 128 16>;
> +				status = "disabled";
>   			};
>   
>   			gpioj: gpio@5000b000 {
> @@ -134,6 +143,7 @@
>   				st,bank-name = "GPIOJ";
>   				ngpios = <16>;
>   				gpio-ranges = <&pinctrl 0 144 16>;
> +				status = "disabled";
>   			};
>   
>   			gpiok: gpio@5000c000 {
> @@ -146,6 +156,7 @@
>   				st,bank-name = "GPIOK";
>   				ngpios = <8>;
>   				gpio-ranges = <&pinctrl 0 160 8>;
> +				status = "disabled";
>   			};
>   
>   			cec_pins_a: cec-0 {
> @@ -427,6 +438,7 @@
>   				st,bank-ioport = <11>;
>   				ngpios = <8>;
>   				gpio-ranges = <&pinctrl_z 0 400 8>;
> +				status = "disabled";
>   			};
>   
>   			i2c4_pins_a: i2c4-0 {
> diff --git a/arch/arm/boot/dts/stm32mp157a-dk1.dts b/arch/arm/boot/dts/stm32mp157a-dk1.dts
> index 1b1886d..8d60641 100644
> --- a/arch/arm/boot/dts/stm32mp157a-dk1.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-dk1.dts
> @@ -7,7 +7,7 @@
>   /dts-v1/;
>   
>   #include "stm32mp157c.dtsi"
> -#include "stm32mp157-pinctrl.dtsi"
> +#include "stm32mp157xac-pinctrl.dtsi"
>   #include <dt-bindings/gpio/gpio.h>
>   
>   / {
> diff --git a/arch/arm/boot/dts/stm32mp157c-ed1.dts b/arch/arm/boot/dts/stm32mp157c-ed1.dts
> index 9fd7943..6ed9d49 100644
> --- a/arch/arm/boot/dts/stm32mp157c-ed1.dts
> +++ b/arch/arm/boot/dts/stm32mp157c-ed1.dts
> @@ -6,7 +6,7 @@
>   /dts-v1/;
>   
>   #include "stm32mp157c.dtsi"
> -#include "stm32mp157-pinctrl.dtsi"
> +#include "stm32mp157xaa-pinctrl.dtsi"
>   #include <dt-bindings/gpio/gpio.h>
>   
>   / {
> diff --git a/arch/arm/boot/dts/stm32mp157xaa-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157xaa-pinctrl.dtsi
> new file mode 100644
> index 0000000..875adf5
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp157xaa-pinctrl.dtsi
> @@ -0,0 +1,90 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright (C) STMicroelectronics 2019 - All Rights Reserved
> + * Author: Alexandre Torgue <alexandre.torgue@st.com>
> + */
> +
> +#include "stm32mp157-pinctrl.dtsi"
> +/ {
> +	soc {
> +		pinctrl: pin-controller@50002000 {
> +			st,package = <STM32MP_PKG_AA>;
> +
> +			gpioa: gpio@50002000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 0 16>;
> +			};
> +
> +			gpiob: gpio@50003000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 16 16>;
> +			};
> +
> +			gpioc: gpio@50004000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 32 16>;
> +			};
> +
> +			gpiod: gpio@50005000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 48 16>;
> +			};
> +
> +			gpioe: gpio@50006000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 64 16>;
> +			};
> +
> +			gpiof: gpio@50007000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 80 16>;
> +			};
> +
> +			gpiog: gpio@50008000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 96 16>;
> +			};
> +
> +			gpioh: gpio@50009000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 112 16>;
> +			};
> +
> +			gpioi: gpio@5000a000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 128 16>;
> +			};
> +
> +			gpioj: gpio@5000b000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 144 16>;
> +			};
> +
> +			gpiok: gpio@5000c000 {
> +				status = "okay";
> +				ngpios = <8>;
> +				gpio-ranges = <&pinctrl 0 160 8>;
> +			};
> +		};
> +
> +		pinctrl_z: pin-controller-z@54004000 {
> +			st,package = <STM32MP_PKG_AA>;
> +
> +			gpioz: gpio@54004000 {
> +				status = "okay";
> +				ngpios = <8>;
> +				gpio-ranges = <&pinctrl_z 0 400 8>;
> +			};
> +		};
> +	};
> +};
> diff --git a/arch/arm/boot/dts/stm32mp157xab-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157xab-pinctrl.dtsi
> new file mode 100644
> index 0000000..961fa12
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp157xab-pinctrl.dtsi
> @@ -0,0 +1,62 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright (C) STMicroelectronics 2019 - All Rights Reserved
> + * Author: Alexandre Torgue <alexandre.torgue@st.com>
> + */
> +
> +#include "stm32mp157-pinctrl.dtsi"
> +/ {
> +	soc {
> +		pinctrl: pin-controller@50002000 {
> +			st,package = <STM32MP_PKG_AB>;
> +
> +			gpioa: gpio@50002000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 0 16>;
> +			};
> +
> +			gpiob: gpio@50003000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 16 16>;
> +			};
> +
> +			gpioc: gpio@50004000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 32 16>;
> +			};
> +
> +			gpiod: gpio@50005000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 48 16>;
> +			};
> +
> +			gpioe: gpio@50006000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 64 16>;
> +			};
> +
> +			gpiof: gpio@50007000 {
> +				status = "okay";
> +				ngpios = <6>;
> +				gpio-ranges = <&pinctrl 6 86 6>;
> +			};
> +
> +			gpiog: gpio@50008000 {
> +				status = "okay";
> +				ngpios = <10>;
> +				gpio-ranges = <&pinctrl 6 102 10>;
> +			};
> +
> +			gpioh: gpio@50009000 {
> +				status = "okay";
> +				ngpios = <2>;
> +				gpio-ranges = <&pinctrl 0 112 2>;
> +			};
> +		};
> +	};
> +};
> diff --git a/arch/arm/boot/dts/stm32mp157xac-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157xac-pinctrl.dtsi
> new file mode 100644
> index 0000000..26600f1
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp157xac-pinctrl.dtsi
> @@ -0,0 +1,78 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright (C) STMicroelectronics 2019 - All Rights Reserved
> + * Author: Alexandre Torgue <alexandre.torgue@st.com>
> + */
> +
> +#include "stm32mp157-pinctrl.dtsi"
> +/ {
> +	soc {
> +		pinctrl: pin-controller@50002000 {
> +			st,package = <STM32MP_PKG_AC>;
> +
> +			gpioa: gpio@50002000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 0 16>;
> +			};
> +
> +			gpiob: gpio@50003000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 16 16>;
> +			};
> +
> +			gpioc: gpio@50004000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 32 16>;
> +			};
> +
> +			gpiod: gpio@50005000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 48 16>;
> +			};
> +
> +			gpioe: gpio@50006000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 64 16>;
> +			};
> +
> +			gpiof: gpio@50007000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 80 16>;
> +			};
> +
> +			gpiog: gpio@50008000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 96 16>;
> +			};
> +
> +			gpioh: gpio@50009000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 112 16>;
> +			};
> +
> +			gpioi: gpio@5000a000 {
> +				status = "okay";
> +				ngpios = <12>;
> +				gpio-ranges = <&pinctrl 0 128 12>;
> +			};
> +		};
> +
> +		pinctrl_z: pin-controller-z@54004000 {
> +			st,package = <STM32MP_PKG_AC>;
> +
> +			gpioz: gpio@54004000 {
> +				status = "okay";
> +				ngpios = <8>;
> +				gpio-ranges = <&pinctrl_z 0 400 8>;
> +			};
> +		};
> +	};
> +};
> diff --git a/arch/arm/boot/dts/stm32mp157xad-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157xad-pinctrl.dtsi
> new file mode 100644
> index 0000000..910113f
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp157xad-pinctrl.dtsi
> @@ -0,0 +1,62 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright (C) STMicroelectronics 2019 - All Rights Reserved
> + * Author: Alexandre Torgue <alexandre.torgue@st.com>
> + */
> +
> +#include "stm32mp157-pinctrl.dtsi"
> +/ {
> +	soc {
> +		pinctrl: pin-controller@50002000 {
> +			st,package = <STM32MP_PKG_AD>;
> +
> +			gpioa: gpio@50002000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 0 16>;
> +			};
> +
> +			gpiob: gpio@50003000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 16 16>;
> +			};
> +
> +			gpioc: gpio@50004000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 32 16>;
> +			};
> +
> +			gpiod: gpio@50005000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 48 16>;
> +			};
> +
> +			gpioe: gpio@50006000 {
> +				status = "okay";
> +				ngpios = <16>;
> +				gpio-ranges = <&pinctrl 0 64 16>;
> +			};
> +
> +			gpiof: gpio@50007000 {
> +				status = "okay";
> +				ngpios = <6>;
> +				gpio-ranges = <&pinctrl 6 86 6>;
> +			};
> +
> +			gpiog: gpio@50008000 {
> +				status = "okay";
> +				ngpios = <10>;
> +				gpio-ranges = <&pinctrl 6 102 10>;
> +			};
> +
> +			gpioh: gpio@50009000 {
> +				status = "okay";
> +				ngpios = <2>;
> +				gpio-ranges = <&pinctrl 0 112 2>;
> +			};
> +		};
> +	};
> +};
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
