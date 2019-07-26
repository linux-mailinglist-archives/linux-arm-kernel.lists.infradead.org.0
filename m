Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D7B76E68
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 18:00:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sehHtlopfBDkYxOuMBoKuwd974wnMsOFkMwcwLoM4GE=; b=Jk0+tdUOpcvc/3OSEnfSgWJ3d
	97jqQMbO9Oj+zqXNcPcAFyyHOAEbm/bL/7PNhkT7rBudhZwnwVPbuovfc+u9r9zxlDyzq1FHr9hM7
	yzEhxQ0Uq4AVYVbhN1xL4L6CXplCOzumpATHhXUFeAmkihSmrNmS8BCICS/IcLYygRSldReN2A1dB
	cG50oQfGh9gCP/dnq7uc3R2yyppmje7s/2V1o5P+C8e7QxYDrBh4zU0znbd8wWt3TvQ4rP6MU1Qbu
	+oYzP5ygRJ6NvXWR4VurofNKWbfVaFi/mlfvCvRBNYMtbbT02OrHJpd9uQb0lky/SfteiLYwJqOHl
	iTRg1IvrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr2e0-0008Hg-Bo; Fri, 26 Jul 2019 16:00:32 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr2dp-0008H3-F0
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 16:00:23 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6QFuGIF006272; Fri, 26 Jul 2019 18:00:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=Y75BNG+ZG7vXH0PyAhO98l9SHQ/zPoys4fP5bNxiSws=;
 b=xElqh+q7EgccAjNQffkCsqWxvs1nv14CqX4moJ8gnskKJjhmcurLrp+L6KGCmIbqUU+8
 idG0GWPq5KfFQxUHs/pA/fE6LLVPbe7a//MWkqB3C3kuTz85tjREBD/c7kMCXbmU+VDB
 ZC6tyHrW+L6KDVBw1ohv2H7vYRBm05IizZ0hIoVNFb6M+jS+aiJjfX0TQTpcih7j9TTW
 qgnLb3PZdzbMD0Y+9EHvhA/SBUIzrbd4I2DDFeb7ifE2VD2+/+uonT2CbxWm710JcTWu
 +AeFXe3AmdqjLHxLmPQtNZeRXVbkrVWIvDieTT/1KAwarNxxemk09vbJe5BS4jHwJvG7 2w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2tx60abn3e-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 26 Jul 2019 18:00:08 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A40D634;
 Fri, 26 Jul 2019 16:00:07 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4EF254F17;
 Fri, 26 Jul 2019 16:00:07 +0000 (GMT)
Received: from lmecxl0912.lme.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 26 Jul
 2019 18:00:06 +0200
Subject: Re: [PATCH 0/5] Add missing vdda-supply to STM32 ADC
To: Fabrice Gasnier <fabrice.gasnier@st.com>, <jic23@kernel.org>,
 <robh+dt@kernel.org>
References: <1560947398-11592-1-git-send-email-fabrice.gasnier@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <b91163f5-ad6f-0a22-eb8a-ceb0b0c056c6@st.com>
Date: Fri, 26 Jul 2019 18:00:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1560947398-11592-1-git-send-email-fabrice.gasnier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG8NODE3.st.com (10.75.127.24) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-26_12:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_090021_954008_A4B06010 
X-CRM114-Status: GOOD (  16.48  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 mcoquelin.stm32@gmail.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabrice

On 6/19/19 2:29 PM, Fabrice Gasnier wrote:
> Add missing vdda-supply, analog power supply, to STM32 ADC. When vdda is
> an independent supply, it needs to be properly turned on or off to supply
> the ADC.
> This series proposes fixes for the dt-bindings, IIO driver and relevant
> device tree files.
> 
> Fabrice Gasnier (5):
>    dt-bindings: iio: adc: stm32: add missing vdda supply
>    iio: adc: stm32-adc: add missing vdda-supply
>    ARM: dts: stm32: remove fixed regulator unit address on stm32429i-eval
>    ARM: dts: stm32: add missing vdda-supply to adc on stm32429i-eval
>    ARM: dts: stm32: add missing vdda-supply to adc on stm32h743i-eval
> 
>   .../devicetree/bindings/iio/adc/st,stm32-adc.txt   |  1 +
>   arch/arm/boot/dts/stm32429i-eval.dts               | 25 +++++++++++-----------
>   arch/arm/boot/dts/stm32h743i-eval.dts              |  1 +
>   drivers/iio/adc/stm32-adc-core.c                   | 21 +++++++++++++++++-
>   4 files changed, 35 insertions(+), 13 deletions(-)
> 

DT patches applied on stm32-next. I plan to add them in my PR for v5.4.
However those patches are marked as "fixes", do you see an issue to only 
send it for v5.4 ?

Regards
alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
