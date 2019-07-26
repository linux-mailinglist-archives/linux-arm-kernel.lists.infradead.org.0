Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF74E76EF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 18:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M3XDnXcFyVxewbgoQ7emsmFSU1Mj93LlN2mMb1/EqY0=; b=omaS4+nrItd2PPUK25Yvg/ru4
	xE+FUcsWrW1KPjrQSd8K8Zc/GnAWt5VjNyTXt54gq2N7ZGXrPkADtGe6t3xbFFPlrSMAxh7oLHXuL
	xPGGGdhBUAA3TodIMKodEPmbaOndPgTOWF5bHzPcftSKyPYII8a6UNaJOMdf2PHl6VCoCg0uDmpRg
	4W/+p/O6eR9p1WdmutPMljZ6aam2cJHsBp4BRDwTntpfmIpTd498RAoYMnJcE2PdvkNqH0oksdEmn
	M619X/BohmPqLXk4j+smBC4G3x4tpSy8VCMdNan9x+UT/KduPIdLujwePOsTyzV7Wq/05sxnc7ZMb
	Ws7POI3cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr2zY-0007Uo-Qo; Fri, 26 Jul 2019 16:22:48 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr2zH-0007Tv-0H
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 16:22:32 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6QG7fWM014148; Fri, 26 Jul 2019 18:22:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=8uknQWRYc0ctwojlhiO1IFxUbdNNf9KGmiNaqsxedGA=;
 b=hK/jrgE+HR7IWIPUmAZBr74PpQh9KHWaD3+owSOCBUwcODXMOIvjvCjoufdDHeeT85/6
 OihgaQ8odbwYk2ppO6W/SdZNGlcb9CzOOSMN4o7WffzWivV75G6OdFNdO6IvuZl3uHeR
 Rr41uYaC8zctr1fH5ju7K/R7xFrj0S/66Gaahi6frYu8ifvZUEGlroSbovaUpUsDkE57
 f0oPhrkBXfcQn8Yznf/EkKtPFAwosc3J/SwW8QZdjuISmSo/Pjsq6ltMJH/pTBfsXd5x
 lRxyopZIM7SA9l6PFTgFhkyAPj8zpF/UpMb1xHlvGTJZSO1ydKdIkn/fDZgvFXoma2d6 sw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2tx60abrvn-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 26 Jul 2019 18:22:27 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 49A0D31;
 Fri, 26 Jul 2019 16:22:26 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2B2514FB8;
 Fri, 26 Jul 2019 16:22:26 +0000 (GMT)
Received: from lmecxl0912.lme.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 26 Jul
 2019 18:22:25 +0200
Subject: Re: [PATCH v2 0/4] regulator: add support for the STM32 ADC booster
To: Fabrice Gasnier <fabrice.gasnier@st.com>, <broonie@kernel.org>,
 <lgirdwood@gmail.com>, <robh+dt@kernel.org>
References: <1561968865-22037-1-git-send-email-fabrice.gasnier@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <d8bc0f0d-adc6-abd6-f248-94c72b360b00@st.com>
Date: Fri, 26 Jul 2019 18:22:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1561968865-22037-1-git-send-email-fabrice.gasnier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG4NODE3.st.com (10.75.127.12) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-26_12:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_092231_330715_45C1376C 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabrice

On 7/1/19 10:14 AM, Fabrice Gasnier wrote:
> Add support for the 3.3V booster regulator embedded in stm32h7 and stm32mp1
> devices, that can be used to supply ADC analog input switches.
> It's useful to reach full ADC performance when their supply is below 2.7V
> (vdda by default).
> 
> Changes in v2:
> - rebase on top of for-next branch
> 
> Fabrice Gasnier (4):
>    dt-bindings: regulator: add support for the stm32-booster
>    regulator: add support for the stm32-booster
>    ARM: multi_v7_defconfig: enable STM32 booster regulator
>    ARM: dts: stm32: add booster for ADC analog switches on stm32mp157c
> 
>   .../bindings/regulator/st,stm32-booster.txt        |  18 +++
>   arch/arm/boot/dts/stm32mp157c.dtsi                 |   6 +
>   arch/arm/configs/multi_v7_defconfig                |   1 +
>   drivers/regulator/Kconfig                          |  11 ++
>   drivers/regulator/Makefile                         |   1 +
>   drivers/regulator/stm32-booster.c                  | 132 +++++++++++++++++++++
>   6 files changed, 169 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/regulator/st,stm32-booster.txt
>   create mode 100644 drivers/regulator/stm32-booster.c
> 

DT patch + config applied in stm32-next.

regards
alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
