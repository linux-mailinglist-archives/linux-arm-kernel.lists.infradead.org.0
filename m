Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2871B2BE0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TlWvauoRimk6nHeR3xXp/FLrynb1dzGOXUdggrxEHpY=; b=VO7ipqx4DDlUnhhOTlZ+YRQc7
	KNPM8slA9To7qVy4MD0g5LkGSti0cEhQ+HQWk7sW0SLAF+l72qGt9M0Ht0vCJDou1I3VOI1M9BuBX
	KjLayq+zhXg+/rfhciOVttqg7UMeZXyMb74RmoahyBiKS0oWTvLbtW8KBAP5ak5I/+lZiqA5qwo5e
	sMSDpE9BayB+9bEx1GdfCpKeQjoLGn+IGre+9za5epdH9Az0/6kAuRs2r1N7qKVZZpAvTHGQGY1yi
	ymlpJjLR57BFlMmxvYBYGddsDodkdLqwyfKGzFLqat/saGVZ0SQQ96THPDq6r9dVvoq3z34npKeb0
	W3rnKuL/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQvOl-0001u6-Br; Tue, 21 Apr 2020 16:05:23 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQvOT-0000FD-Vf
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 16:05:08 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03LFw0On028047; Tue, 21 Apr 2020 18:05:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=UcNZO3xM3HHi7oyXBYoDxOmNpVA61++TVvetEk1ioYo=;
 b=gpwzmxlAraMrYnBys2wZ1Z8KTScT7XhQJNfhOcWqyR4xrdrFY0QxI3nFNmcX4Dvcg2L1
 qe0aInvsmFaTebTz8WWgiM8MpMmEU9tud1XvRYH7sfXBIedOePiS4y6XMwqNt4k7Onoy
 7gLOYBIKl3JkYG0hEZdI6TkhHxDP8l0NMkEf9R+StcHiKSRnQVoMkYwUANiAIGsZIQ5t
 5H4+dJbGpnE2ZzvSG4Qc/L8ZX5cpoQrsp8wniLKPZ9K1TIqRNMn8K4HeN60FTN5wNZfP
 mOLBCXyMA0WAb1yDL6/8YMbUtoBcISPWEOUdliT4eLeZo8EW073xlJN/+wQEGRxIPNuw AA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fq11h5xj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 21 Apr 2020 18:05:00 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 823EE10002A;
 Tue, 21 Apr 2020 18:05:00 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 65877210F9B;
 Tue, 21 Apr 2020 18:05:00 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.47) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 21 Apr
 2020 18:04:55 +0200
Subject: Re: [PATCH V4 00/22] ARM: dts: stm32: Repair AV96 board
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
References: <20200401132237.60880-1-marex@denx.de>
 <971b9046-2d77-fdc6-2916-8b02ffb601d5@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <b73cb2bf-e50b-ce52-8e53-d8b72fa273f0@st.com>
Date: Tue, 21 Apr 2020 18:04:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <971b9046-2d77-fdc6-2916-8b02ffb601d5@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-21_06:2020-04-20,
 2020-04-21 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_090506_643747_1C84EE36 
X-CRM114-Status: GOOD (  16.95  )
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

Hi Marek

On 4/21/20 12:30 PM, Marek Vasut wrote:
> On 4/1/20 3:22 PM, Marek Vasut wrote:
>> The AV96 board device tree is completely broken and does not match the
>> hardware. This series fixes it up.
>>
>> Marek Vasut (22):
>>    ARM: dts: stm32: Add alternate pinmux for ethernet RGMII
>>    ARM: dts: stm32: Repair ethernet operation on AV96
>>    ARM: dts: stm32: Add missing ethernet PHY reset on AV96
>>    ARM: dts: stm32: Add missing ethernet PHY skews on AV96
>>    ARM: dts: stm32: Add alternate pinmux for SDMMC1 direction pins
>>    ARM: dts: stm32: Repair SDMMC1 operation on AV96
>>    ARM: dts: stm32: Repair PMIC configuration on AV96
>>    ARM: dts: stm32: Repair PMIC interrupt on AV96
>>    ARM: dts: stm32: Add alternate pinmux for SDMMC2 pins 4-7
>>    ARM: dts: stm32: Add eMMC attached to SDMMC2 on AV96
>>    ARM: dts: stm32: Add QSPI NOR on AV96
>>    ARM: dts: stm32: Add configuration EEPROM on AV96
>>    ARM: dts: stm32: Add alternate pinmux for SDMMC3 pins
>>    ARM: dts: stm32: Enable WiFi on AV96
>>    ARM: dts: stm32: Add alternate pinmux for USART2 pins
>>    ARM: dts: stm32: Enable Bluetooth on AV96
>>    ARM: dts: stm32: Add alternate pinmux for LTDC pins
>>    ARM: dts: stm32: Add bindings for HDMI video on AV96
>>    ARM: dts: stm32: Add alternate pinmux for SAI2 pins
>>    ARM: dts: stm32: Add bindings for audio on AV96
>>    ARM: dts: stm32: Add bindings for USB on AV96
>>    ARM: dts: stm32: Rename LEDs to match silkscreen on AV96
>>
>>   arch/arm/boot/dts/stm32mp15-pinctrl.dtsi    | 280 +++++++++++++++++
>>   arch/arm/boot/dts/stm32mp157a-avenger96.dts | 324 ++++++++++++++++++--
>>   2 files changed, 571 insertions(+), 33 deletions(-)
> 
> Alex, can you provide some review of this series ? It's been posted for
> three weeks now.
> 

Yes, I was waiting for Mani's review first (and I was a bit busy sorry).

All patches looks good for me. Maybe I'll squash some pinctrl patches to 
decrease number of patches.

One remaining questions about patch 7 ("Repair PMIC configuration on 
AV96). I saw a discussion on u-boot thread with pascal P., explaining 
that 800mv is not the minimal voltage acceptable for vddcore. What is 
the status ?

regards
alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
