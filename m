Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD64610D779
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 15:52:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=afkMGJjZazkSTo/UKonqmmsDZEBkAQJ0B9AnS7JvYn0=; b=TqhfzzXxw6+BQ31IO8Vt5c+Xw
	7bh1w4R7bknNgSFHa7A1OOA2No1q4Hl3mE5Fe3JDtM7cRql21unWIsLP89vvNljmxqXclF9JB1Ofv
	HJokulMoXtdKXjkgObPeayKxddSoL1wM4zdnpNDgxehV3CnApeWweYpx1BrBM2/Z9D5a0S9I3mzl2
	z31UbNk+VHHesTcZt0zNk0V2qIB624u45orAAdrKdG6P+GQrS2hSSSaaPDnhE4oEKhVuQZqmEiNyZ
	VczMJaePq1iPrlaGi8jlCS60qN/rQxybBLpRZj7UbX0O4amlDTFq/LAqCTN0b3hpo7kbSsLScTFev
	gn3QNcnSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iahd1-0007V0-3G; Fri, 29 Nov 2019 14:52:15 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahcr-0007UO-NP
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 14:52:07 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xATEl2rW015649; Fri, 29 Nov 2019 15:51:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=g8lD3rtdXNrCg147P/vL/OTbncUOSvc26kNNxIEODlU=;
 b=kcjurm5sWToNx0YxGPewWYGHrO6fGpUyf6fVE3BiBVSse71WSxfWao+4zlxicrc4hVXw
 4/2x6utimcqGQPR0/QULgoj2VHX4b2+inZ5O1MGFNWOsUvYjH9kEmtQxk4pFra33P31n
 gMZtS+MnVpo9AvHicIdyxUrN8lopXOiCZuqsNzjTV1XAV/RG2lGF9Oy22/Bb1AQHxAUa
 KnFryJpdfh7UaI9YmZW/54NYzzBO5sHroCSyXnZ5AXPY0JHcb6MlB5zVCgEOaaUYTLMq
 tR4Ytc2/IL1LnhMwgp+s3kjw0a3GpCiKeByP5nxenR/LmY7zY8ynZBC0mDU8csL/g/P6 TA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2whcxjg1nr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 29 Nov 2019 15:51:51 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 778B310002A;
 Fri, 29 Nov 2019 15:51:49 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4622B2B9FAF;
 Fri, 29 Nov 2019 15:51:49 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 29 Nov
 2019 15:51:48 +0100
Subject: Re: [PATCH 5/6] ARM: dts: stm32: Adapt STM32MP157 DK boards to stm32
 DT diversity
To: Arnd Bergmann <arnd@arndb.de>
References: <20191120144109.25321-1-alexandre.torgue@st.com>
 <20191120144109.25321-6-alexandre.torgue@st.com>
 <CAK8P3a2Bg9KwfEqEE3_NUHxVv=svFGuj--Tnq-w-xFg63cfqAA@mail.gmail.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <92be0a67-c0ed-23bd-08f3-73f71d8bfc3f@st.com>
Date: Fri, 29 Nov 2019 15:51:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2Bg9KwfEqEE3_NUHxVv=svFGuj--Tnq-w-xFg63cfqAA@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-29_04:2019-11-29,2019-11-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_065206_230795_654C1CBB 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/29/19 3:20 PM, Arnd Bergmann wrote:
> On Wed, Nov 20, 2019 at 3:41 PM Alexandre Torgue
> <alexandre.torgue@st.com> wrote:
>>
>> To handle STM32MP15 SOCs diversity, some updates have to been done.
>> This commit mainly adapt dk1 board to include the correct package and the
>> correct SOC version. A new file has been created to factorize common parts.
>>
>> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
>>
>> diff --git a/arch/arm/boot/dts/stm32mp157a-dk1.dts b/arch/arm/boot/dts/stm32mp157a-dk1.dts
>> index 3f869bd67082..1292ac3b6890 100644
>> --- a/arch/arm/boot/dts/stm32mp157a-dk1.dts
>> +++ b/arch/arm/boot/dts/stm32mp157a-dk1.dts
>>          model = "STMicroelectronics STM32MP157A-DK1 Discovery Board";
>>          compatible = "st,stm32mp157a-dk1", "st,stm32mp157";
>> -
>> -       aliases {
>> -               ethernet0 = &ethernet0;
>> -               serial0 = &uart4;
>> -       };
>> -
>> -       chosen {
>> -               stdout-path = "serial0:115200n8";
>> -       };
>> -
> 
> As a rule, I would leave aliases and chosen nodes in the .dts file and not
> move them into a shared .dtsi, since they tend to be board specific.
> 
> (even if that may not be the case in this particular file)

I agree, I'll move them in V2.

Thanks
Alex

> 
>        Arnd
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
