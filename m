Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4349E1D8861
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 21:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Fl66LwhYcqUdw1jzvzV3BYrUv68QjATUmm2UQ4dyVtg=; b=cyDZrORLuXrE8+no3nT+11/o+y
	IBMIR5lJBhSv3d3VcbUNC9xrKjmUy/8QJNty+A5SgtrG1LnuQvynq2WOcOdpi2rHOu3TWhRQirtZs
	hcZYJaq9ERRGfXnkIUCdP9+aLHNqTUITiaSh6YCJQrhz3DMp63FO3yAGh83RnK7PhYmhqYGEHk+GZ
	hEobE2m+Fme0CJTUAIqEvoy283Hsh1kJ2oQ1iGkA7ZJuw+xS7xMKHxOiRrbGDEEwsD8kp8q6jZelp
	BftGMF1hLt01i7MUDYfv7df6bo3K7RfgnWdam4rcZjAROqUUDdtPREGwTZ9WeUZHJsAnR+VImSFxD
	54oVU4YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jalgu-0000R4-2t; Mon, 18 May 2020 19:44:48 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jalgj-0000Ow-3z
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 19:44:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589831076; x=1621367076;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=wxnhkrmgjXbFZjBhp2Jh1xtXIMosSoFaC85IUlH8TjM=;
 b=n7ilmcrSZnedaA/oANiG5iJkIh8TYWG+wYdiwF98JQWC0+9oFk0jH4qK
 7Gaw8ez1nW/zzQ5CtYqLrnta3y5RWzZE0fQSLPzvwvySXvTyVlqajjQF7
 t70xzPFu9pv1eVjzm3w5vOuX+XJMFvaYGUdz/t4DwyAFyAS21Tqsu/mKU
 SJGXp/INzK7DIRwoEW4DQ1XwoCfXYgvoo9/ByMBfJdtP/2lry1nHPu65e
 bbS7t8NCUutw+ipZUm5D+r2Iovku6BmC7X44Oej1dDDqvJS/APbuX7ktq
 UfoH3iGClpWS827fbTBC38q/XVxLvfxjx6n0Vbcv2NEz2gL05hjsVMue0 w==;
IronPort-SDR: r8hrXvhyK3C3fi+2a7q4FTOBFtDKrKx6VGxTQkjSEAeEDUCAJCqQfp4/WRgPgMvbwakgtEdoVa
 qxie3UXw0rJhQxXJZ2gseB8Xgtg6nlvYthbHEuPDAmLcfO9XzcR0wvnN/wiwWB2Dr/qmnAdPat
 XglkI7TMmFT3ahQbvh08sbB5IgmYFj70IHpT6rCwTVrniolui6TA+/b60x8Zmccq/EWjdyJFak
 54Ef/3TxbsCnpmnlRBq0fm4Axttz4PCDx4hod6zo5MOwwaJZoFl4lKQQC0Chx5z/vOPAVO0lTW
 qO8=
X-IronPort-AV: E=Sophos;i="5.73,407,1583218800"; d="scan'208";a="77076220"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 May 2020 12:44:27 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 May 2020 12:44:28 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 18 May 2020 12:44:26 -0700
References: <20200513141134.25819-1-lars.povlsen@microchip.com>
 <20200513141134.25819-3-lars.povlsen@microchip.com>
 <fb104436-69c1-3f5a-85d9-af0aee35547f@infradead.org>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH 2/3] pinctrl: mchp-sgpio: Add pinctrl driver for Microsemi
 Serial GPIO
In-Reply-To: <fb104436-69c1-3f5a-85d9-af0aee35547f@infradead.org>
Date: Mon, 18 May 2020 21:44:23 +0200
Message-ID: <87r1vhni3s.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_124437_167386_24877235 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, SoC Team <soc@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Randy Dunlap writes:

> On 5/13/20 7:11 AM, Lars Povlsen wrote:
>> diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
>> index 834c59950d1cf..2b0e9021fd7e0 100644
>> --- a/drivers/pinctrl/Kconfig
>> +++ b/drivers/pinctrl/Kconfig
>> @@ -396,6 +396,23 @@ config PINCTRL_OCELOT
>>       select OF_GPIO
>>       select REGMAP_MMIO
>>
>> +config PINCTRL_MSCC_SGPIO
>> +     bool "Pinctrl driver for Microsemi Serial GPIO"
>> +     depends on OF
>> +     depends on HAS_IOMEM
>> +     select GPIOLIB
>> +     select GENERIC_PINCONF
>> +     select GENERIC_PINCTRL_GROUPS
>> +     select GENERIC_PINMUX_FUNCTIONS
>> +     select OF_GPIO
>> +     help
>> +          Support for the VCoreIII SoC serial GPIO device. By using a
>
> Line above should be indented with one tab + 2 spaces...
> like the lines below.
>

Well spotted...

>> +       serial interface, the SIO controller significantly extends
>> +       the number of available GPIOs with a minimum number of
>> +       additional pins on the device. The primary purpose of the
>> +       SIO controller is to connect control signals from SFP
>> +       modules and to act as an LED controller.
>> +
>
> thanks.

Thank you for your comments.

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
