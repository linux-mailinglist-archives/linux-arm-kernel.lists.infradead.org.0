Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8F01B23E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 12:32:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7HQYOcI4ZGLSXLMUFAyg7/GMqUnRHJUhcuz1OK/AM4=; b=PYfVb6YAft4Smm
	BoPTP6R0IZJevwUWAvZsqihrFbi1Afw4f2k+Lxkyfuf3ap1NxFTP6goQbtNNyLF2Ido7pGJ9zIgxb
	2vSmATUPH0zQ5gP4GH1GgCDyFgPUJ6dlHgKadHkrwoCT8BV1o14QT2aRM2TFPA12rgXcKQg8gSKOw
	0nNCnDRI+jxFosJw9n8DDnWDiLlgO4k38GMkjvU6uqhJiktmuribcAmHgySRHzhPV5/Wt6rw9Pk1H
	bjL8f6OL5gHatOK9DsdJ/5lIFLxxb0rQ45340g2jxdh3M6si+2dhcxrS1IPzfiHXxWVUhSY5oCzfU
	8+jao49hbkMsEJYO+MOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQqBz-00082b-Nf; Tue, 21 Apr 2020 10:31:51 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQqAP-0005Ui-Dh
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 10:30:18 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 4960FC3ztTz1rmhQ;
 Tue, 21 Apr 2020 12:30:07 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 4960FC3Cq4z1qqkT;
 Tue, 21 Apr 2020 12:30:07 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id JNOJjua1hTbj; Tue, 21 Apr 2020 12:30:06 +0200 (CEST)
X-Auth-Info: 2z+TXctPuG91QTuXoYXm3+6rVAaa+r98Aa1gc1f8FnI=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 21 Apr 2020 12:30:06 +0200 (CEST)
Subject: Re: [PATCH V4 00/22] ARM: dts: stm32: Repair AV96 board
To: linux-arm-kernel@lists.infradead.org
References: <20200401132237.60880-1-marex@denx.de>
From: Marek Vasut <marex@denx.de>
Message-ID: <971b9046-2d77-fdc6-2916-8b02ffb601d5@denx.de>
Date: Tue, 21 Apr 2020 12:30:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200401132237.60880-1-marex@denx.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_033015_715706_974AEC88 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/1/20 3:22 PM, Marek Vasut wrote:
> The AV96 board device tree is completely broken and does not match the
> hardware. This series fixes it up.
> 
> Marek Vasut (22):
>   ARM: dts: stm32: Add alternate pinmux for ethernet RGMII
>   ARM: dts: stm32: Repair ethernet operation on AV96
>   ARM: dts: stm32: Add missing ethernet PHY reset on AV96
>   ARM: dts: stm32: Add missing ethernet PHY skews on AV96
>   ARM: dts: stm32: Add alternate pinmux for SDMMC1 direction pins
>   ARM: dts: stm32: Repair SDMMC1 operation on AV96
>   ARM: dts: stm32: Repair PMIC configuration on AV96
>   ARM: dts: stm32: Repair PMIC interrupt on AV96
>   ARM: dts: stm32: Add alternate pinmux for SDMMC2 pins 4-7
>   ARM: dts: stm32: Add eMMC attached to SDMMC2 on AV96
>   ARM: dts: stm32: Add QSPI NOR on AV96
>   ARM: dts: stm32: Add configuration EEPROM on AV96
>   ARM: dts: stm32: Add alternate pinmux for SDMMC3 pins
>   ARM: dts: stm32: Enable WiFi on AV96
>   ARM: dts: stm32: Add alternate pinmux for USART2 pins
>   ARM: dts: stm32: Enable Bluetooth on AV96
>   ARM: dts: stm32: Add alternate pinmux for LTDC pins
>   ARM: dts: stm32: Add bindings for HDMI video on AV96
>   ARM: dts: stm32: Add alternate pinmux for SAI2 pins
>   ARM: dts: stm32: Add bindings for audio on AV96
>   ARM: dts: stm32: Add bindings for USB on AV96
>   ARM: dts: stm32: Rename LEDs to match silkscreen on AV96
> 
>  arch/arm/boot/dts/stm32mp15-pinctrl.dtsi    | 280 +++++++++++++++++
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 324 ++++++++++++++++++--
>  2 files changed, 571 insertions(+), 33 deletions(-)

Alex, can you provide some review of this series ? It's been posted for
three weeks now.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
