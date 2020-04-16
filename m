Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB7D1AD038
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 21:18:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PI5TnDDnQH6WLRsRnvDpOHa45O++uiQyRfkrYOvmX9c=; b=AmXbGU/iQpCmhUraeaUzITJlb
	+ooaJOPHIfRBYOuAe70pjszy7IZer3MHMIDX63xW4VZ5wy/coz65hzL36AXkM8U54L1NtLn8kZECv
	qDRIbwcezbHKDwdmVG+8wNb4DLLDLkJYYupMKaWqrsH1SnpKI6bIB+jxGOclLM9AJhapDxMMuct0q
	jpiLqwGbJZs+zaHy2wWuNlXutY/nyIIuJO0A+qU33cD85TjdqcajR408RLHE8y14xTTwtukPw689V
	kp/EhbErA6TO84mIPBAXNXPg6LtKaZYVhjwX37hL6oAJSBYOYbn1d9j+pyRjAQvpOrBS7Y44x8Su+
	6xRz+SIFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPA24-0008CX-Lg; Thu, 16 Apr 2020 19:18:40 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPA1x-0008C2-Nl
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 19:18:35 +0000
Received: by mail-pf1-x444.google.com with SMTP id k15so2108048pfh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 12:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VHahvNrkkFVvNiU/oirb0CgHcyvFxOl5Oabes9gcDEs=;
 b=No4yRRSekwfyTlegsvTl9uyZdM/3LcltD+EUPy+bawJo5eu4IpnWbclgH+2b75KgfO
 /T7DzII+wPx8BZIwrg5x1tgqC4TMeDtozxuQkHTUSvRAFRzqtiUadaxa0USiZcQUuoLJ
 sv0cA9X4cYppb5FZY8zvXHvOGYA0t6II1by4Osn45SFiXLrKfuPS4ZprL7MUFFIJ08E4
 NV+/EeCpByTRLzHmKhJKqFostcV9/ngSewQnomUvayn/mb3RDRmsTX1B5gl9u99ao/6a
 bQorSpViBV5JEeEkmHXr3AFaJoKpWLBa4P2Oi8Hy3hrn24vKRudZ0ZsCFSLiY5bCBTyZ
 LjDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VHahvNrkkFVvNiU/oirb0CgHcyvFxOl5Oabes9gcDEs=;
 b=GFn/HvUJjpjAg2MIqcqtpqW+7oAxuZ0o2aIfU77jeZH3fvpA1ScpYjf/ghnNhkjoo7
 aB6LCN8jBgpgAAeIHaTrfb7dD3WHo+Yu3ZxyEMOy46DuHSwWLlJIUVMXdGitvaq0ua6t
 KYwTjIowZZ+KEj+QvkcIhVYopeFc+h3MPzJ2lko3kkohgU6z24Y+T1WBbwpuFcCtWYyM
 fBZsJ4jQ5yWFcG9BxjRyX/WuW7dXLfqa+ErXYPFProEFMNufQioq8pfwhelQ2UkguuXj
 aez6uWiHsOVC5PtLu37FvqNmS7GKLJWdnO91YH4vpraNW/qkJXuWQ5DhVLbY3S5dwQqW
 ld9A==
X-Gm-Message-State: AGi0PuYujCUjLJfv/NtQuBWkBwNmy5ptqSJb06bLqdARV2yxog5ky2hN
 cTi1R2WFOEcrNlmXgryRkcg=
X-Google-Smtp-Source: APiQypKkDqt7haNqAQjS8aivmzho3DlBr9ezf2dD3Pi6/w+PhgVXzc6/ER6cFkwEzqeL3UDPLbTldg==
X-Received: by 2002:a62:b40e:: with SMTP id h14mr25790079pfn.88.1587064712816; 
 Thu, 16 Apr 2020 12:18:32 -0700 (PDT)
Received: from [10.230.188.26] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id f21sm3671712pfn.71.2020.04.16.12.18.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Apr 2020 12:18:31 -0700 (PDT)
Subject: Re: [RFC PATCH 2/4] net: phy: Add support for AC200 EPHY
To: Jernej Skrabec <jernej.skrabec@siol.net>, robh+dt@kernel.org,
 andrew@lunn.ch, hkallweit1@gmail.com
References: <20200416185758.1388148-1-jernej.skrabec@siol.net>
 <20200416185758.1388148-3-jernej.skrabec@siol.net>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <5062b508-2c68-dc94-add2-038178667c9f@gmail.com>
Date: Thu, 16 Apr 2020 12:18:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200416185758.1388148-3-jernej.skrabec@siol.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_121833_800620_C19C78F0 
X-CRM114-Status: GOOD (  23.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org, linux@armlinux.org.uk,
 mripard@kernel.org, linux-kernel@vger.kernel.org, wens@csie.org,
 lee.jones@linaro.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/16/2020 11:57 AM, Jernej Skrabec wrote:
> AC200 MFD IC supports Fast Ethernet PHY. Add a driver for it.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>   drivers/net/phy/Kconfig  |   7 ++
>   drivers/net/phy/Makefile |   1 +
>   drivers/net/phy/ac200.c  | 206 +++++++++++++++++++++++++++++++++++++++
>   3 files changed, 214 insertions(+)
>   create mode 100644 drivers/net/phy/ac200.c
> 
> diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
> index 3fa33d27eeba..16af69f69eaf 100644
> --- a/drivers/net/phy/Kconfig
> +++ b/drivers/net/phy/Kconfig
> @@ -288,6 +288,13 @@ config ADIN_PHY
>   	  - ADIN1300 - Robust,Industrial, Low Latency 10/100/1000 Gigabit
>   	    Ethernet PHY
>   
> +config AC200_PHY
> +	tristate "AC200 EPHY"
> +	depends on NVMEM
> +	depends on OF
> +	help
> +	  Fast ethernet PHY as found in X-Powers AC200 multi-function device.
> +
>   config AMD_PHY
>   	tristate "AMD PHYs"
>   	---help---
> diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
> index 2f5c7093a65b..b0c5b91900fa 100644
> --- a/drivers/net/phy/Makefile
> +++ b/drivers/net/phy/Makefile
> @@ -53,6 +53,7 @@ obj-$(CONFIG_SFP)		+= sfp.o
>   sfp-obj-$(CONFIG_SFP)		+= sfp-bus.o
>   obj-y				+= $(sfp-obj-y) $(sfp-obj-m)
>   
> +obj-$(CONFIG_AC200_PHY)		+= ac200.o
>   obj-$(CONFIG_ADIN_PHY)		+= adin.o
>   obj-$(CONFIG_AMD_PHY)		+= amd.o
>   aquantia-objs			+= aquantia_main.o
> diff --git a/drivers/net/phy/ac200.c b/drivers/net/phy/ac200.c
> new file mode 100644
> index 000000000000..3d7856ff8f91
> --- /dev/null
> +++ b/drivers/net/phy/ac200.c
> @@ -0,0 +1,206 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/**
> + * Driver for AC200 Ethernet PHY
> + *
> + * Copyright (c) 2020 Jernej Skrabec <jernej.skrabec@siol.net>
> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/mfd/ac200.h>
> +#include <linux/nvmem-consumer.h>
> +#include <linux/of.h>
> +#include <linux/phy.h>
> +#include <linux/platform_device.h>
> +
> +#define AC200_EPHY_ID			0x00441400
> +#define AC200_EPHY_ID_MASK		0x0ffffff0
> +
> +/* macros for system ephy control 0 register */
> +#define AC200_EPHY_RESET_INVALID	BIT(0)
> +#define AC200_EPHY_SYSCLK_GATING	BIT(1)
> +
> +/* macros for system ephy control 1 register */
> +#define AC200_EPHY_E_EPHY_MII_IO_EN	BIT(0)
> +#define AC200_EPHY_E_LNK_LED_IO_EN	BIT(1)
> +#define AC200_EPHY_E_SPD_LED_IO_EN	BIT(2)
> +#define AC200_EPHY_E_DPX_LED_IO_EN	BIT(3)
> +
> +/* macros for ephy control register */
> +#define AC200_EPHY_SHUTDOWN		BIT(0)
> +#define AC200_EPHY_LED_POL		BIT(1)
> +#define AC200_EPHY_CLK_SEL		BIT(2)
> +#define AC200_EPHY_ADDR(x)		(((x) & 0x1F) << 4)
> +#define AC200_EPHY_XMII_SEL		BIT(11)
> +#define AC200_EPHY_CALIB(x)		(((x) & 0xF) << 12)
> +
> +struct ac200_ephy_dev {
> +	struct phy_driver	*ephy;
> +	struct regmap		*regmap;
> +};
> +
> +static char *ac200_phy_name = "AC200 EPHY";
> +
> +static int ac200_ephy_config_init(struct phy_device *phydev)
> +{
> +	const struct ac200_ephy_dev *priv = phydev->drv->driver_data;
> +	unsigned int value;
> +	int ret;
> +
> +	phy_write(phydev, 0x1f, 0x0100);	/* Switch to Page 1 */

You could define a macro for accessing the page and you may consider 
implementing .read_page and .write_page and use the 
phy_read_paged()/phy_write_paged() helper functions.

> +	phy_write(phydev, 0x12, 0x4824);	/* Disable APS */
> +
> +	phy_write(phydev, 0x1f, 0x0200);	/* Switch to Page 2 */
> +	phy_write(phydev, 0x18, 0x0000);	/* PHYAFE TRX optimization */
> +
> +	phy_write(phydev, 0x1f, 0x0600);	/* Switch to Page 6 */
> +	phy_write(phydev, 0x14, 0x708f);	/* PHYAFE TX optimization */
> +	phy_write(phydev, 0x13, 0xF000);	/* PHYAFE RX optimization */
> +	phy_write(phydev, 0x15, 0x1530);
> +
> +	phy_write(phydev, 0x1f, 0x0800);	/* Switch to Page 6 */

Seems like the comment does not match the code, that should be Page 8, no?

> +	phy_write(phydev, 0x18, 0x00bc);	/* PHYAFE TRX optimization */
> +
> +	phy_write(phydev, 0x1f, 0x0100);	/* switch to page 1 */
> +	phy_clear_bits(phydev, 0x17, BIT(3));	/* disable intelligent IEEE */

Intelligent EEE maybe?
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
