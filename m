Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 108521D318C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 15:43:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PBma1Wz9LUyJcOquaNJcI77iu8bia87Puf2b1LgLMr8=; b=ukpxKSmViI3+S2VOe/WY91a+7
	wUn1NqXSWQCPdKVvAuDMKFZem1W9jXLTezZ6zYZ0e5N5y1Zzt64OjUXYJNEfjOp1lqc6va6WcP6zR
	2wJkgW/xH3fYq4G4/S1cAF9OJ13m0Fk53U+BX/ilPRRRCpvxRjjndpHVYM2Cs65w6v5Ih899jRpCj
	bpl2yqb8/ecih2IfShEmZ1aGuVuQiD9zpGDDWK3M1XuyVrRxqPxyUhtf50eIcVNNpffWP6tg+NbYz
	vB7Ucp7JqzQp4EIF6eIpOGOzZTu8kY5wqMG0dxEdYe99C+7VpRpsPqtWVmnEO5Gc8NHMMu8KBbJ5o
	KXTnwYHcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZE8T-0002bL-9s; Thu, 14 May 2020 13:42:53 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZE8H-0002ZD-JM
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 13:42:45 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04EDgMxu028132; Thu, 14 May 2020 15:42:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=tD1qvdb0EwmAv9XocfBUyYNcHtOhYgnwwbYe5684NcY=;
 b=lpZCseNN1q8B2O++L5FqZEfrupQp8UmuSICipi2VpYbbXdKqjviuS4uNBmOQ1Qk1/JYn
 FC0+aT7IZOR+0AaKhzk+Ozpgl88d1a5y1MBWH1j0sjx/T8Vy7mAFxLIZkKAuH5DBT24e
 w8vnJeOoFwf7/cYeADMBCKg6OvlIrAm70cghUtpnyO8Px5h4+ovsh1x/0sNyYzBPay55
 GNVpTBzYrzgrxIYjV346YgPOw8M8x1YuBl3tdk9ASS/dhGkQVptEBfcXiG2r4Y/3xJqM
 b1YktOvA+/Pa6WYvOrUBAuOptDbM+z10mLDDQLjERCoYWeW9MwohkWsITtdfWVTKKrAK eQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3100vnbg0g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 14 May 2020 15:42:33 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0CF2C100034;
 Thu, 14 May 2020 15:42:33 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EA8332BE24D;
 Thu, 14 May 2020 15:42:32 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.47) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 14 May
 2020 15:42:27 +0200
Subject: Re: [PATCH 00/15] Fix STM32 DT issues on v5.7-rc4
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <linus.walleij@linaro.org>, 
 <robh+dt@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <gregkh@linuxfoundation.org>
References: <20200513145935.22493-1-benjamin.gaignard@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <caef6641-b7c2-881a-a331-3d05f6f4bba6@st.com>
Date: Thu, 14 May 2020 15:42:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200513145935.22493-1-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-14_04:2020-05-14,
 2020-05-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_064242_088036_5DAFD0C5 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin

On 5/13/20 4:59 PM, Benjamin Gaignard wrote:
> This series fixes issues hight lighted by dtbs_check on STM32 devicetrees.
> The patches has been developped on top of v5.7-rc4 tag.
> 
> Benjamin Gaignard (15):
>    ARM: dts: stm32: remove useless interrupt-names property on stm32f429
>    ARM: dts: stm32: update pwm pinctrl node names for stm32f4
>    ARM: dts: stm32: update led nodes names for stm32f249-disco
>    ARM: dts: stm32: update led nodes names for stm32f469-disco
>    ARM: dts: stm32: remove useless interrupt-names property on stm32f746
>    ARM: dts: stm32: update led nodes names for stm32f429-eval
>    ARM: dts: stm32: update led nodes names for stm32f769-disco
>    ARM: dts: stm32: update led nodes names for stm32f746-eval
>    ARM: dts: stm32: remove useless interrupt-names property on stm32f743
>    ARM: dts: stm32: Update nodes names for stm32h743 pinctrl
>    ARM: dts: stm32: Update nodes names for stm32mp15 pinctrl
>    ARM: dts: stm32: Add missing #address and #size cells on spi node for
>      stm32mp151
>    ARM: dts: stm32: update led nodes names for stm32f746-eval
>    dt-bindings: pinctrl: stm32: Add missing interrupts property
>    dt-bindings: usb: dwc2: Fix issues for stm32mp15x SoC

For dts(i) part, it looks good to me. I let Rob to review before taking 
the whole series.

thanks
alex


> 
>   .../devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml          |  3 +++
>   Documentation/devicetree/bindings/usb/dwc2.yaml                |  6 ++++--
>   arch/arm/boot/dts/stm32429i-eval.dts                           |  8 ++++----
>   arch/arm/boot/dts/stm32746g-eval.dts                           |  8 ++++----
>   arch/arm/boot/dts/stm32f4-pinctrl.dtsi                         |  4 ++--
>   arch/arm/boot/dts/stm32f429-disco.dts                          |  4 ++--
>   arch/arm/boot/dts/stm32f429.dtsi                               |  1 -
>   arch/arm/boot/dts/stm32f469-disco.dts                          |  8 ++++----
>   arch/arm/boot/dts/stm32f746.dtsi                               |  1 -
>   arch/arm/boot/dts/stm32f769-disco.dts                          |  4 ++--
>   arch/arm/boot/dts/stm32h743-pinctrl.dtsi                       | 10 +++++-----
>   arch/arm/boot/dts/stm32h743.dtsi                               |  1 -
>   arch/arm/boot/dts/stm32mp15-pinctrl.dtsi                       |  6 +++---
>   arch/arm/boot/dts/stm32mp151.dtsi                              |  2 ++
>   arch/arm/boot/dts/stm32mp15xx-dkx.dtsi                         |  2 +-
>   15 files changed, 36 insertions(+), 32 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
