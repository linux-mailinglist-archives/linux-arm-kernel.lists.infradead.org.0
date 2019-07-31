Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025437B9ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 08:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QCOapApfEnoTP1/v1zRvfwzztLGGTe1OzmR2AmK0GVA=; b=DtdoasQB5XMzRILgGS0tfbXzM
	3EruViLlSaa+l/WqQnqul7J9Jf7176xXS4AbJw1EXLFWX7inilu2f9WAUAExtdZE86G4m3ojZ4d1O
	u+SpbJdcnmJJhZ4ZS3tm4HhjwCXDikor+mZqgt5bUAUpjTcKGc1tovLSlkvGl+yWrAriyOq3AsvM2
	PkoDZfVD5MIcgDlqqKRzYpk9AVuWrzGiQoUjs09u4s1Wgj9KVwca5yEH+D8K7JMM8svhnW60H/8xA
	/CmCTDrRF09UhRsae5wKytLkYpKKKFs3nCfFOZFmGfVBeumSPB32H/d/c9OKfyzLQDL5RNnElHj1w
	CsGLc0tuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsiPM-00022f-4i; Wed, 31 Jul 2019 06:48:20 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsiP5-00021d-A3
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 06:48:04 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6V6gJi8017316; Wed, 31 Jul 2019 08:47:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=702VqZhtTL5oaW1SMZWfTjutuV+GOvsgBWv49RLVlDk=;
 b=E2DL2tW00m7fzvOFNPOJpqKSXh/VtWpzDybK6YydTQ2QDwnQxhbKNtASnG7YHqr0Cffn
 oC2A5s5Ngs5p1QjPeFFPLZl/OXfKEuYtATTllmpD2zYy4KsQT57hv0GTTQ1gn5IzzCu/
 oabO3c1bmeUUkMgiKv1WYx/QTwCx0SA2tT39Jzbe8PcK3eeL54On0/fR6WKnKaRAr1h2
 dFQ9X8D46pkU6/byd3diEBJWU7dEp5+yjgEdi+46BIHcPxUqYiVVRfXYyhdAejpSgmJ1
 oJgfrF7frjYw8an823YbiSsWIRry7gJIMikPEILsMI8n2Ox8tqwesZ7lzzx4NM5RX1tO eA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2u0c2yerc3-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 31 Jul 2019 08:47:51 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BB3FC31;
 Wed, 31 Jul 2019 06:47:49 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9206A12AD;
 Wed, 31 Jul 2019 06:47:49 +0000 (GMT)
Received: from lmecxl0912.lme.st.com (10.75.127.45) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 31 Jul
 2019 08:47:48 +0200
Subject: Re: ARM: multi_v7_defconfig: Enable SPI_STM32_QSPI support
To: Olof Johansson <olof@lixom.net>, Patrice CHOTARD <patrice.chotard@st.com>
References: <20190729135505.15394-1-patrice.chotard@st.com>
 <CAOesGMg-3xt2qjjZ569pUE+d6tn7nz264AN9ARkBT_Ej4TFC2A@mail.gmail.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <de6ab910-380e-6271-88d8-6fe670525e60@st.com>
Date: Wed, 31 Jul 2019 08:47:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAOesGMg-3xt2qjjZ569pUE+d6tn7nz264AN9ARkBT_Ej4TFC2A@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-31_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_234803_720202_64A1E716 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-stm32@st-md-mailman.stormreply.com, Russell King <linux@armlinux.org.uk>,
 Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof

On 7/30/19 7:36 PM, Olof Johansson wrote:
> Hi Patrice,
> 
> If you cc soc@kernel.org on patches you want us to apply, you'll get
> them automatically tracked by patchwork.
> 

Does it means that you will take it directly in arm-soc tree ?
I mean, I used to take this kind of patch (multi-v7_defconfig patch 
linked to STM32 driver) in my stm32 branch and to send PR for them.

regards
Alex

> 
> -Olof
> 
> On Mon, Jul 29, 2019 at 3:55 PM <patrice.chotard@st.com> wrote:
>>
>> From: Patrice Chotard <patrice.chotard@st.com>
>>
>> Enable support for QSPI block on STM32 SoCs.
>>
>> Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
>> ---
>>   arch/arm/configs/multi_v7_defconfig | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
>> index 6a40bc2ef271..78d1d93298af 100644
>> --- a/arch/arm/configs/multi_v7_defconfig
>> +++ b/arch/arm/configs/multi_v7_defconfig
>> @@ -403,6 +403,7 @@ CONFIG_SPI_SH_MSIOF=m
>>   CONFIG_SPI_SH_HSPI=y
>>   CONFIG_SPI_SIRF=y
>>   CONFIG_SPI_STM32=m
>> +CONFIG_SPI_STM32_QSPI=m
>>   CONFIG_SPI_SUN4I=y
>>   CONFIG_SPI_SUN6I=y
>>   CONFIG_SPI_TEGRA114=y
>> --
>> 2.17.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
