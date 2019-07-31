Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACC37BA85
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 09:16:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5B41S+9wRAO7l7w4tv6LwVnX2yVivMQwF2+D4o7W7w=; b=fUhXSanrxcxjkC
	6gKE1zrLBgaCekrZ+aXIooSOw4oJC64ehcMXb3vaY/3F0Q35sP3sCzm61Shck1S/Sc8fqxwe+S876
	ylc8lmgtc3WVh1pU6492IaofYxGFzfzrlqT8/EL0lNeO6OxtoQ3ckS1EWdfyqqPeOO/lLle+YrUaX
	abC57asFypnzXkmZnQ2oOj3hvcPyiIF3r07VTMr1yxtVicNKwMt531o0cr/s4C+k7M2EH9/XH9cZC
	OEkUULjUfzjF67OjHsbFumqm+gRNyPhQulGlxJ7+kseL+aXXzU4Y+0bOTYJKRBxKmVO3V4Gt9jPL3
	acUNKq8e6Xy+tddRaGXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsiqx-0005cy-Nf; Wed, 31 Jul 2019 07:16:51 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsipj-00055g-Df
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 07:15:37 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6V77nIl002302; Wed, 31 Jul 2019 09:15:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=jPifBTLgBqCxGV4h1cRoINLa/YtV3LtiY9n5IGSEb0E=;
 b=dwXW2TJGkhxhA+NT+wv22LEUSW8qsl3plVpTSmEnPXa8B9vDFvYqU4llpcU2cBuaatqW
 iZsoKkcktlVw6ls+oXl6qRnHHzzdu7YF0Uznhyu4n5yr4Mhb//s1DsNi4ASuOPQpsQTx
 dbD0MO+U0mfd3rg1idFr1IGzddSfmX3y9U+mYlh3n08l7J74X6z0yPZruYANaoklYmOD
 maVxmc8yuogaO3nu9xYOHfdXDTVl74bvhh6gx1TZOLK7GN+CKe9tgZfvqEyzvyc72wh3
 zGQQoO4ZCArEgYJNiAqmeGtBBFDVTyBm2bW34RtG/tSU2Pc29y31goNl9l0QVZ6+/tYn Fg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2u0ccwpt0x-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 31 Jul 2019 09:15:26 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8E84231;
 Wed, 31 Jul 2019 07:15:25 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6CFEB1313;
 Wed, 31 Jul 2019 07:15:25 +0000 (GMT)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 31 Jul
 2019 09:15:24 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Wed, 31 Jul 2019 09:15:25 +0200
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Olof Johansson <olof@lixom.net>
Subject: Re: ARM: multi_v7_defconfig: Enable SPI_STM32_QSPI support
Thread-Topic: ARM: multi_v7_defconfig: Enable SPI_STM32_QSPI support
Thread-Index: AQHVRhVB0n1KQugbLUyWfFzNn/AIwabjTQKAgADkvQA=
Date: Wed, 31 Jul 2019 07:15:25 +0000
Message-ID: <fa683cde-04d1-0842-4082-b4b8b102e87a@st.com>
References: <20190729135505.15394-1-patrice.chotard@st.com>
 <CAOesGMg-3xt2qjjZ569pUE+d6tn7nz264AN9ARkBT_Ej4TFC2A@mail.gmail.com>
In-Reply-To: <CAOesGMg-3xt2qjjZ569pUE+d6tn7nz264AN9ARkBT_Ej4TFC2A@mail.gmail.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
Content-ID: <72C19610F7E9264599FB770633BD4475@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-31_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_001536_050581_A4A5199F 
X-CRM114-Status: GOOD (  16.69  )
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi OLof

On 7/30/19 7:36 PM, Olof Johansson wrote:
> Hi Patrice,
>
> If you cc soc@kernel.org on patches you want us to apply, you'll get
> them automatically tracked by patchwork.

Thanks for the information, i will resubmit it.

Patrice


>
>
> -Olof
>
> On Mon, Jul 29, 2019 at 3:55 PM <patrice.chotard@st.com> wrote:
>> From: Patrice Chotard <patrice.chotard@st.com>
>>
>> Enable support for QSPI block on STM32 SoCs.
>>
>> Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
>> ---
>>  arch/arm/configs/multi_v7_defconfig | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
>> index 6a40bc2ef271..78d1d93298af 100644
>> --- a/arch/arm/configs/multi_v7_defconfig
>> +++ b/arch/arm/configs/multi_v7_defconfig
>> @@ -403,6 +403,7 @@ CONFIG_SPI_SH_MSIOF=m
>>  CONFIG_SPI_SH_HSPI=y
>>  CONFIG_SPI_SIRF=y
>>  CONFIG_SPI_STM32=m
>> +CONFIG_SPI_STM32_QSPI=m
>>  CONFIG_SPI_SUN4I=y
>>  CONFIG_SPI_SUN6I=y
>>  CONFIG_SPI_TEGRA114=y
>> --
>> 2.17.1
>>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
