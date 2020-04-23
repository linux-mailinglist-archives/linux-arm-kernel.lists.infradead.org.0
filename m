Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C25C51B5CAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 15:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q3hE7+J3mCdVJ2AVVcoV033n34wP2HOD7XeTJXP41G4=; b=tTD/zPmKEGhKJbf7/xQXmitab
	0X90huQtelKI1wl3ESp3j084vW1ySEYT4Bd8QV8SIxsdEr4KEaanwLnubO/qv2FdMlimbuWoDwtKp
	4n0RaEpB09wAgGNloTLFEIo1zXQELLSKjAgi99xMjJC3CFUG0U9eP+62Vte9mVrByJiqIGDumPUjE
	fEeJPqGA0Mqe5tosMO3OuB0EEc12fyp4r0o81ydPMjM7TVC0sdHF2CC8dsSgS+vQ77hEIhCVeXRSR
	hbkk86heCTmoafm8KCGm90RSiBkhg0jggpaMvc45GIIXL8Ii6fIOwUbyulhK3r0QxXZkDrXoEUc1L
	HbEHFxf+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRc1x-0006g9-1O; Thu, 23 Apr 2020 13:36:41 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRc1l-0006eZ-SR
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 13:36:31 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03NDWHha020142; Thu, 23 Apr 2020 15:36:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=hl4Mh2HsN/EDf4g4zx3yfQHbWqoOU5Ehg1zLD4Siof0=;
 b=E1f6aykNpY7bgnw90MD+9ssWenkyxLRUtWFT/srC68ftMBbbVzTjYM6prEVdZ14UBdNo
 NHAx6/X27Hv8b6nOhbqhLpHbC+qA1FINn6AtLL+x8IchUTtYDkHjeUyIbZlt6tpB9qDl
 VcOWIArDSfN32z+hKH3qiBdtSUacyNvu9os7rwATtto3qeztdukFSEm5O0nSqZk9eqVu
 EjfS/6FqBI2Kfz1abCPTuO6av5H4RkWF7VmzODsIgmKbMlAKvojruJS1UfwpgB9cVxeu
 9DiPUjcOGGxe1MJE3ACvEpyfT0wrDnEmFQ51zcp0rfx1OMV75woTqHRFGJAY1R/duNvZ nw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fq11w3fe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 23 Apr 2020 15:36:20 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C5591100034;
 Thu, 23 Apr 2020 15:36:19 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A5B7420B85B;
 Thu, 23 Apr 2020 15:36:19 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.46) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 23 Apr
 2020 15:36:15 +0200
Subject: Re: [PATCH V5 00/20] ARM: dts: stm32: Repair AV96 board
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
References: <20200422104613.96944-1-marex@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <222f356a-2f4a-47d7-9e4f-e80b6a3f32b0@st.com>
Date: Thu, 23 Apr 2020 15:36:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200422104613.96944-1-marex@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-23_10:2020-04-23,
 2020-04-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_063630_280212_36A6671F 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ki Marek

On 4/22/20 12:45 PM, Marek Vasut wrote:
> The AV96 board device tree is completely broken and does not match the
> hardware. This series fixes it up.
> 
> Marek Vasut (20):
>    ARM: dts: stm32: Repair PMIC configuration on AV96
>    ARM: dts: stm32: Repair PMIC interrupt on AV96
>    ARM: dts: stm32: Add alternate pinmux for ethernet RGMII
>    ARM: dts: stm32: Repair ethernet operation on AV96
>    ARM: dts: stm32: Add missing ethernet PHY reset on AV96
>    ARM: dts: stm32: Add missing ethernet PHY skews on AV96
>    ARM: dts: stm32: Add alternate pinmux for SDMMC pins
>    ARM: dts: stm32: Repair SDMMC1 operation on AV96
>    ARM: dts: stm32: Add eMMC attached to SDMMC2 on AV96
>    ARM: dts: stm32: Add QSPI NOR on AV96
>    ARM: dts: stm32: Add configuration EEPROM on AV96
>    ARM: dts: stm32: Enable WiFi on AV96
>    ARM: dts: stm32: Add alternate pinmux for USART2 pins
>    ARM: dts: stm32: Enable Bluetooth on AV96
>    ARM: dts: stm32: Add alternate pinmux for LTDC pins
>    ARM: dts: stm32: Add bindings for HDMI video on AV96
>    ARM: dts: stm32: Add alternate pinmux for SAI2 pins
>    ARM: dts: stm32: Add bindings for audio on AV96
>    ARM: dts: stm32: Add bindings for USB on AV96
>    ARM: dts: stm32: Rename LEDs to match silkscreen on AV96
> 
>   arch/arm/boot/dts/stm32mp15-pinctrl.dtsi    | 280 +++++++++++++++++
>   arch/arm/boot/dts/stm32mp157a-avenger96.dts | 324 ++++++++++++++++++--
>   2 files changed, 572 insertions(+), 32 deletions(-)
> 
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> 

Series looks good to me. I'll merge it for my next Pr.
Just one question, Are we still able to boot older board revision 
(prototype ones)?

regards
alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
