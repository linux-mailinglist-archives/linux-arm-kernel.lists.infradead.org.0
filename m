Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A06D1F454D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZf+bBgzYvBSevq785PmEMM8HGv/JHXgcRIldD69EiA=; b=OsDcnMSls9s9+A
	Z9/yYHzx7yMdGonnONAoFIoamX65Dcqgr0Q4WwNs7uQNL5HeA1LmRpTpgJjho73PTRkfgTTe6hZs2
	nlQB3+VPCHkK2sG9jhyLDHhdlE1wKZheJ1OwjkFP/V0I3JwfmQDSZt8hOxUs7LE+//4Oi3zuCd3lO
	iaBnMOi0zukb821rMIcWhCLdiE1MiZ+kWu9vsrS1fmzC6bsDFJXBVmOT2mrT6KgOjvFH10/x9lDXV
	aBMeejEaBx3B18IYXrHaHYOnk0p3ScueBmDaJi4vMCnPpBphlQv+P/KQXaDroWCEfRWdCTHd4UoAv
	QuE1ruZ3viBnfkEEzLyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiila-0003o4-0I; Tue, 09 Jun 2020 18:14:30 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiilS-0003nI-2u
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 18:14:23 +0000
Received: by mail-wm1-x342.google.com with SMTP id u26so2896355wmn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 11:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WB+twSvhwEUE0RcT5x7t9WNUVEQrGCwsUZ2cc/mgqWM=;
 b=GbJguvKryPQrVGBG6u0G8idyi35Z3b+oVcuZM49/cHuW73naYrDlVcxiKkK2p+DgkE
 oMgpnLbKpP1aC07OafltpUfR805ZFWi2QHI0K5sG1EGgCNP6NrhkNvQ84rSwFVHbgCyw
 8t6jlAKpaSCVj7VUkcH/f+X2L/Ie5hL3Py7O4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=WB+twSvhwEUE0RcT5x7t9WNUVEQrGCwsUZ2cc/mgqWM=;
 b=UmyFVtWRHtCFX6aXK5wSFL/7agxS+NBDHCJyDvgmTNeU9WooKjceDsGDETdoD+eoNf
 FAfG082VQHttgG7WWIxr3PJ8v+mTwERdnwzE9Ax0SwzHfssEpTBoc6qms8K3PS3x1FK5
 /POdRiRPq0jdARxzpfXpqj67VD3uQsRvC0SPo7C3h5Gg4FMrGIOkeQqX6nEYFLxDmRSz
 l1Ltvr/gboAy+tHN/kzkErYWSCa8jPVMq0QkOhRcosNHp4oEl+SwPSb7rm4uAQHP66hV
 Dd6N2D5/skqS+YNNGQB9RJe2YRRoquW1/VSBBIfZyfdKyCeF8sMoxIFsWIs23vs7NJou
 A4Sw==
X-Gm-Message-State: AOAM531YHNjPcZ8pxVvwoPyePI4V6i+ZDWPCUx0y061ps4HctyRctVw3
 j+In5HUsQcWWFEGbTeAaAJEWAg==
X-Google-Smtp-Source: ABdhPJwAzNVkyHz5OSV6H/FfqGXTPhYxOqUKLxJ4o4jw+pKQ/74kAfg5gLnjEQcqp/EqnMQjtupiQA==
X-Received: by 2002:a1c:2cd7:: with SMTP id s206mr5067896wms.109.1591726459230; 
 Tue, 09 Jun 2020 11:14:19 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 u4sm3719238wmb.48.2020.06.09.11.14.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 11:14:17 -0700 (PDT)
Subject: Re: [PATCH v2 2/9] reset: Add Raspberry Pi 4 firmware reset controller
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, f.fainelli@gmail.com,
 gregkh@linuxfoundation.org, wahrenst@gmx.net, p.zabel@pengutronix.de,
 linux-kernel@vger.kernel.org
References: <20200609175003.19793-1-nsaenzjulienne@suse.de>
 <20200609175003.19793-3-nsaenzjulienne@suse.de>
From: Florian Fainelli <florian.fainelli@broadcom.com>
Autocrypt: addr=florian.fainelli@broadcom.com; keydata=
 mQENBFPAG8ABCAC3EO02urEwipgbUNJ1r6oI2Vr/+uE389lSEShN2PmL3MVnzhViSAtrYxeT
 M0Txqn1tOWoIc4QUl6Ggqf5KP6FoRkCrgMMTnUAINsINYXK+3OLe7HjP10h2jDRX4Ajs4Ghs
 JrZOBru6rH0YrgAhr6O5gG7NE1jhly+EsOa2MpwOiXO4DE/YKZGuVe6Bh87WqmILs9KvnNrQ
 PcycQnYKTVpqE95d4M824M5cuRB6D1GrYovCsjA9uxo22kPdOoQRAu5gBBn3AdtALFyQj9DQ
 KQuc39/i/Kt6XLZ/RsBc6qLs+p+JnEuPJngTSfWvzGjpx0nkwCMi4yBb+xk7Hki4kEslABEB
 AAG0MEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tPokB
 xAQQAQgArgUCXnQoOxcKAAG/SMv+fS3xUQWa0NryPuoRGjsA3SAUAAAAAAAWAAFrZXktdXNh
 Z2UtbWFza0BwZ3AuY29tjDAUgAAAAAAgAAdwcmVmZXJyZWQtZW1haWwtZW5jb2RpbmdAcGdw
 LmNvbXBncG1pbWUICwkIBwMCAQoFF4AAAAAZGGxkYXA6Ly9rZXlzLmJyb2FkY29tLmNvbQUb
 AwAAAAMWAgEFHgEAAAAEFQgJCgAKCRCBMbXEKbxmoHaNB/4p5GXw2Xlk4r2J0MsUAZE4Gnfc
 C4DtilufOGVR1K0/WhROYemyCAP+xuBj8bnQDBtZwB5ED37q4/p8DSmCnkEBjM5Cz12EZQzs
 utQgCV1UIgzryoiDZSF2XLslzF9LOSaOiNzpBvwEYNTZ+koEW+AOHEAgS6SbV2Hob8Zc32xF
 oQdKGwbSwcV8hS2YLL37VxKr2h8ZTtuTmhDNqxuKPzZuoAL61/4i8+BTyVZC4gUL/EUu7pG2
 rbwhg/s8TyQWWeBz18Xiw5K148TXT0LeErmTsJSPQFMqZ6AR/nuJDQzhIUiLeq/hvBs1BIQf
 REqNMShEnnMJfHjd8RFnGpdPk+hKuQENBFPAG8EBCACsa+9aKnvtPjGAnO1mn1hHKUBxVML2
 C3HQaDp5iT8Q8A0ab1OS4akj75P8iXYfZOMVA0Lt65taiFtiPT7pOZ/yc/5WbKhsPE9dwysr
 vHjHL2gP4q5vZV/RJduwzx8v9KrMZsVZlKbvcvUvgZmjG9gjPSLssTFhJfa7lhUtowFof0fA
 q3Zy+vsy5OtEe1xs5kiahdPb2DZSegXW7DFg15GFlj+VG9WSRjSUOKk+4PCDdKl8cy0LJs+r
 W4CzBB2ARsfNGwRfAJHU4Xeki4a3gje1ISEf+TVxqqLQGWqNsZQ6SS7jjELaB/VlTbrsUEGR
 1XfIn/sqeskSeQwJiFLeQgj3ABEBAAGJAkEEGAECASsFAlPAG8IFGwwAAADAXSAEGQEIAAYF
 AlPAG8EACgkQk2AGqJgvD1UNFQgAlpN5/qGxQARKeUYOkL7KYvZFl3MAnH2VeNTiGFoVzKHO
 e7LIwmp3eZ6GYvGyoNG8cOKrIPvXDYGdzzfwxVnDSnAE92dv+H05yanSUv/2HBIZa/LhrPmV
 hXKgD27XhQjOHRg0a7qOvSKx38skBsderAnBZazfLw9OukSnrxXqW/5pe3mBHTeUkQC8hHUD
 Cngkn95nnLXaBAhKnRfzFqX1iGENYRH3Zgtis7ZvodzZLfWUC6nN8LDyWZmw/U9HPUaYX8qY
 MP0n039vwh6GFZCqsFCMyOfYrZeS83vkecAwcoVh8dlHdke0rnZk/VytXtMe1u2uc9dUOr68
 7hA+Z0L5IQAKCRCBMbXEKbxmoLoHCACXeRGHuijOmOkbyOk7x6fkIG1OXcb46kokr2ptDLN0
 Ky4nQrWp7XBk9ls/9j5W2apKCcTEHONK2312uMUEryWI9BlqWnawyVL1LtyxLLpwwsXVq5m5
 sBkSqma2ldqBu2BHXZg6jntF5vzcXkqG3DCJZ2hOldFPH+czRwe2OOsiY42E/w7NUyaN6b8H
 rw1j77+q3QXldOw/bON361EusWHdbhcRwu3WWFiY2ZslH+Xr69VtYAoMC1xtDxIvZ96ps9ZX
 pUPJUqHJr8QSrTG1/zioQH7j/4iMJ07MMPeQNkmj4kGQOdTcsFfDhYLDdCE5dj5WeE6fYRxE
 Q3up0ArDSP1L
Message-ID: <6ab60539-5aa2-17dc-21d5-1bae9ec259f6@broadcom.com>
Date: Tue, 9 Jun 2020 11:14:13 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200609175003.19793-3-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_111422_122374_D5BB1EF7 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: tim.gover@raspberrypi.org, mathias.nyman@linux.intel.com,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 andy.shevchenko@gmail.com, lorenzo.pieralisi@arm.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 helgaas@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/9/2020 10:49 AM, Nicolas Saenz Julienne wrote:
> Raspberry Pi 4's co-processor controls some of the board's HW
> initialization process, but it's up to Linux to trigger it when
> relevant. Introduce a reset controller capable of interfacing with
> RPi4's co-processor that models these firmware initialization routines as
> reset lines.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> ---
> 
> Changes since v1:
>   - Make the whole driver less USB centric as per Florian's comments
> 
>  drivers/reset/Kconfig             |  11 +++
>  drivers/reset/Makefile            |   1 +
>  drivers/reset/reset-raspberrypi.c | 126 ++++++++++++++++++++++++++++++
>  3 files changed, 138 insertions(+)
>  create mode 100644 drivers/reset/reset-raspberrypi.c
> 
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index d9efbfd29646..97e848740e13 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -140,6 +140,17 @@ config RESET_QCOM_PDC
>  	  to control reset signals provided by PDC for Modem, Compute,
>  	  Display, GPU, Debug, AOP, Sensors, Audio, SP and APPS.
>  
> +config RESET_RASPBERRYPI
> +	tristate "Raspberry Pi 4 Firmware Reset Driver"
> +	depends on RASPBERRYPI_FIRMWARE || (RASPBERRYPI_FIRMWARE=n && COMPILE_TEST)
> +	default USB_XHCI_PCI
> +	help
> +	  Raspberry Pi 4's co-processor controls some of the board's HW
> +	  initialization process, but it's up to Linux to trigger it when
> +	  relevant. This driver provides a reset controller capable of
> +	  interfacing with RPi4's co-processor and model these firmware
> +	  initialization routines as reset lines.
> +
>  config RESET_SCMI
>  	tristate "Reset driver controlled via ARM SCMI interface"
>  	depends on ARM_SCMI_PROTOCOL || COMPILE_TEST
> diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
> index 249ed357c997..16947610cc3b 100644
> --- a/drivers/reset/Makefile
> +++ b/drivers/reset/Makefile
> @@ -21,6 +21,7 @@ obj-$(CONFIG_RESET_OXNAS) += reset-oxnas.o
>  obj-$(CONFIG_RESET_PISTACHIO) += reset-pistachio.o
>  obj-$(CONFIG_RESET_QCOM_AOSS) += reset-qcom-aoss.o
>  obj-$(CONFIG_RESET_QCOM_PDC) += reset-qcom-pdc.o
> +obj-$(CONFIG_RESET_RASPBERRYPI) += reset-raspberrypi.o
>  obj-$(CONFIG_RESET_SCMI) += reset-scmi.o
>  obj-$(CONFIG_RESET_SIMPLE) += reset-simple.o
>  obj-$(CONFIG_RESET_STM32MP157) += reset-stm32mp1.o
> diff --git a/drivers/reset/reset-raspberrypi.c b/drivers/reset/reset-raspberrypi.c
> new file mode 100644
> index 000000000000..5fc8c6319a20
> --- /dev/null
> +++ b/drivers/reset/reset-raspberrypi.c
> @@ -0,0 +1,126 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Raspberry Pi 4 firmware reset driver
> + *
> + * Copyright (C) 2020 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> + */
> +#include <linux/delay.h>
> +#include <linux/device.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset-controller.h>
> +#include <soc/bcm2835/raspberrypi-firmware.h>
> +
> +struct rpi_reset {
> +	struct reset_controller_dev rcdev;
> +	struct rpi_firmware *fw;
> +};
> +
> +enum rpi_reset_ids {
> +	RASPBERRYPI_FIRMWARE_RESET_ID_USB,

You should probably move this to a header file under
include/dt-bindings/reset/ in order to ensure that what gets referenced
by the DTS is in sync with what the driver knows about.

With that:

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
