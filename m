Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B0DFE4C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 19:18:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fbP7gRGIn8dEGK4jg9jUqFlDNxhYOtHBGU6LCibeG6Q=; b=U0grmx3elk5yUkRFV6S4YkdfQ
	T+2tQ9n82K/DATv5Iwv8JBw4NRFNIBAdBDrHLTd3HRuALI1UlfhKlUIp+ELAOrRDI9oFr38A3CAl7
	LViVcJDtiIq6NEVDv0W/fMGL+zTo5K3b+1SQ1t8aTjnbYQGURZGqJgo/S6GfLbIHWWReNW2gnDw9g
	7uAGYpaCliQ9gFzd+gh6KR8oQ1t0gAdkbAqkwAkvS0hh8Jb7xX/AGrNDSfeHk3VKtXTtqimk8IvB5
	SQtYLBIeqsaSkn0vTr0Rp3vc4Rkg1LmC8tKOOJXkOYh3eslNytENP6Ua5WdaDWJVTWbgriB+XfcJG
	rhunOPJPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVgAS-0003XA-4j; Fri, 15 Nov 2019 18:18:00 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVgAJ-0003We-DT
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 18:17:52 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAFI7o6r005156; Fri, 15 Nov 2019 19:17:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=R0AG0K+FiTWH1VDAdSpoZmFq3tYATmR+PjAfYmovt68=;
 b=sdrq5T4a9WOf6MFyAas2MYoe3fnYWaZgrxVxFxJ5KqzpDfYchemixCcxUlh7Zz5tSRvj
 RbOPu21YJRFbI4Q3+XL4hSufxAnYEzTgPNUjHsxhS0yQlvzEPaiMDYyE55OFQuPzjuGo
 obZrA/vd8A2ekPxA0Nsal7TE9QEAbLnslc3RP/6f3Dzmf7R/l4Pye59h4aKFLAto9ZWg
 HsD9rEuP6q82yfuL2fOYw6lpslXv7tmMiFL7SZsJjQ9AmrROLcj2V4NYY46b7eBZf1NC
 gcLIq1Wm+zxAW9ZrsVJuYG+xCxNZywb1/dda6fQSUzyU2vipuArQ7RCTZVr5nmvfmm1R xg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w7psfntuq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Nov 2019 19:17:46 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A840510002A;
 Fri, 15 Nov 2019 19:17:45 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 96E0D2129DA;
 Fri, 15 Nov 2019 19:17:45 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 15 Nov
 2019 19:17:44 +0100
Subject: Re: [PATCH] ARM: dts: stm32: remove unused rng interrupt
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <lionel.debieve@st.com>
References: <20191115100651.17754-1-benjamin.gaignard@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <b3759a65-99e1-d846-b60b-576dfa9c9f6e@st.com>
Date: Fri, 15 Nov 2019 19:17:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191115100651.17754-1-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG8NODE3.st.com (10.75.127.24) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-15_05:2019-11-15,2019-11-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_101751_736857_CEFB44AB 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 11/15/19 11:06 AM, Benjamin Gaignard wrote:
> Interrupt has never be used in rng driver so remove it from DT.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>   arch/arm/boot/dts/stm32f429.dtsi | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/stm32f429.dtsi b/arch/arm/boot/dts/stm32f429.dtsi
> index 5c8a826b3195..196817da0c1d 100644
> --- a/arch/arm/boot/dts/stm32f429.dtsi
> +++ b/arch/arm/boot/dts/stm32f429.dtsi
> @@ -789,7 +789,6 @@
>   		rng: rng@50060800 {
>   			compatible = "st,stm32-rng";
>   			reg = <0x50060800 0x400>;
> -			interrupts = <80>;
>   			clocks = <&rcc 0 STM32F4_AHB2_CLOCK(RNG)>;
>   
>   		};
> 

Applied on stm32-next. Next time, please indicate (at least in the 
commit title) for which SOC the patch is targeted.

Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
