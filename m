Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5E3683D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 09:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MNWNXze0lu/UJT9TQ9Sao4FZv6qR2zcMOVxfFVgRSVg=; b=OAyegFTcM8LHVb
	MkBCVA8CpgLooLF+ysMgadIo5tfcIwRgOSxnNmjBRVTjuGjpWg2ABYHXqcZrYJXxYh6jsnHiycUe6
	RAiucIoDsX9AwzJL8356KpjsWJtsagiJRJWtNxgZouyPvcSL8rmRrbVzC7ycQAFHHzBjOyeTHyPkB
	NEQnSLG7GEqtFsqBuw6sOvPWdn/83L4iX02giEebWfTBJAjmZLihSjta3a+GPUE5iM61mDJlGx+dQ
	sUb+cmZudzHjg8SIdJKyVyA7R2k5NT8rOLPSCvZoy6mPNwuyZM4W+ut80ZTpBYxrSlmglj2QqgpVK
	9Bp9a4zVhpGNfis08a1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmv0d-00024Q-Dq; Mon, 15 Jul 2019 07:02:51 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmuzT-00022y-Qc
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 07:01:43 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6F6uSio030992; Mon, 15 Jul 2019 09:01:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=Zl4deGZbQ+vwkjKjMySHruoNEZ/Tdqr9qboU+Ck4czs=;
 b=mNuPpWJUbgOtsdKvOrrjxjRe5FJn4yQ5m9gUfKCWt4Az42LPaH/qFaD6E5SKi5Sr3khE
 P4urEGi0kp9oYCLif+cM3vFABuf0kmRFrSqlwBQD56IM5MGYxFfrAl/VM4NkZMqU5Ka0
 W6bFfGJwZwgrRb8bYKCpUNvf98urVDrhNGBKdGuUSfvc/LqWGob3Pt3N+ltZTwN7Xknz
 vaOPqmF5MasW0iGCW68hvqF4OpaWz0OHHcb8TAsHDMVJbVqFoA2byGwYpVN+3LZQJEec
 bVWGt9WrvuwTOkuLPH63oj6+iboOzdKlQCi4yNn0bcqY4RqPsvilzISC+CYcZL1gGvY4 cQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tq52u3xy5-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 15 Jul 2019 09:01:10 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6839A38;
 Mon, 15 Jul 2019 07:01:08 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0FEA515AB;
 Mon, 15 Jul 2019 07:01:08 +0000 (GMT)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 15 Jul
 2019 09:01:07 +0200
Received: from [10.48.0.167] (10.48.0.167) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0;
 Mon, 15 Jul 2019 09:01:07 +0200
Subject: Re: [PATCH v2 3/3] ARM: dts: stm32: add syscfg to ADC on stm32mp157c
To: Jonathan Cameron <jic23@kernel.org>
References: <1562148496-26789-1-git-send-email-fabrice.gasnier@st.com>
 <1562148496-26789-4-git-send-email-fabrice.gasnier@st.com>
 <20190714171310.1816afe3@archlinux>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <c69cff23-b67e-2aed-f250-c237e9cd4a3d@st.com>
Date: Mon, 15 Jul 2019 09:01:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190714171310.1816afe3@archlinux>
Content-Language: en-US
X-Originating-IP: [10.48.0.167]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-15_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_000140_764388_D5983A34 
X-CRM114-Status: GOOD (  18.36  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 alexandre.torgue@st.com, linux-iio@vger.kernel.org, pmeerw@pmeerw.net,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/14/19 6:13 PM, Jonathan Cameron wrote:
> On Wed, 3 Jul 2019 12:08:16 +0200
> Fabrice Gasnier <fabrice.gasnier@st.com> wrote:
> 
>> On stm32mp157c, the ADC inputs are multiplexed with analog switches which
>> have reduced performances when their supply is below 2.7V (vdda by
>> default).
>> Add syscfg registers that can be used on stm32mp157c, to get full ADC
>> analog performances.
>>
>> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> I've applied the patches using this on the assumption this will go via
> the usual SoC route.
> 
> Thanks,

Hi Jonathan,

Many thanks,
Fabrice

> 
> Jonathan
> 
>> ---
>>  arch/arm/boot/dts/stm32mp157c.dtsi | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
>> index 2dd5162..b9a5b58 100644
>> --- a/arch/arm/boot/dts/stm32mp157c.dtsi
>> +++ b/arch/arm/boot/dts/stm32mp157c.dtsi
>> @@ -862,6 +862,7 @@
>>  			clocks = <&rcc ADC12>, <&rcc ADC12_K>;
>>  			clock-names = "bus", "adc";
>>  			interrupt-controller;
>> +			st,syscfg = <&syscfg>;
>>  			#interrupt-cells = <1>;
>>  			#address-cells = <1>;
>>  			#size-cells = <0>;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
