Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF78116EAE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:10:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sf1Qnz/nO5BzqKq3P2t/s9iq0vTXkgZok25R0teuESA=; b=WLN81WouGjUmi2Y2J67KW4vzB
	KM4sOxjJUv7wePdFNn9YQty/P/1OuWJakgkcrl0xW546zwoKoaN8p2byEDS7PNXQ1czTwXu0WUSES
	3tQUV+xfjf0p5kqQQAnYai44oRXAf2mlMm2VWeu399aIthAdGUhOV5OrO4GI5FDa+UPgbwsrHQj0G
	SaHKtCZdYptKWYwmDZSeviNvOlVcvabIOCs/vKowR4nNLMtmLE32oMckhM+JRq0HgbMTcL1Ndm6FG
	x5wzNCrpOOVa6wxZWukc03N7ugwA8bdDS6MM03WvmQGziyk2WjcJb79cBjJRhWbZSrb65jB/uUb/C
	I4nboJLig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieJjq-0006EQ-4d; Mon, 09 Dec 2019 14:10:14 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJjb-00068w-5l
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:10:00 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB9E7mbB028360; Mon, 9 Dec 2019 15:09:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=rMgFRcSFtiFbgW/awEUZ3ybc8wwxYOXSNEv2yL+9lZM=;
 b=yyZilLo1hu8fgeyo6uWmmNN+6Gkswci+Ye6OWQbHolQQsyU5pNaTs54lPyNLE4tqA2Xk
 eFVdyzJU88XeR66RFT1Ysq46A1t+PRCta5+T/jil3V3NMcJSLWeXS9MrtxHO2GiXA2Kw
 M3sC6OjMrP08bftjKCLJb/R9MKqPbbCNlPLBO0OYl8JBYo8HtQ28Ad5AvtokY0R57ujd
 PAsK0cT2KlWdLBzMpy1VuH8DLyZJl6elCbtIRGGQ5U57Hg/if1AlpS2LZEDULmcBm+VI
 a4gtU0eaXEa3aoPSOheeoUhTyGk5stdooxRI33m3oWcUctDyaWHkq0D5pZBtt4V9h3Wk Jg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wrbrf7k08-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 09 Dec 2019 15:09:54 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9954110002A;
 Mon,  9 Dec 2019 15:09:53 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8A66520DAFE;
 Mon,  9 Dec 2019 15:09:53 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 9 Dec
 2019 15:09:53 +0100
Subject: Re: [PATCH 2/3] ARM: dts: stm32: remove useless clock-names from RTC
 node on stm32f746
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>
References: <20191202145604.28872-1-benjamin.gaignard@st.com>
 <20191202145604.28872-2-benjamin.gaignard@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <e1c2fe53-1b63-9b66-b48f-0c4dcc5e84ae@st.com>
Date: Mon, 9 Dec 2019 15:09:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191202145604.28872-2-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-09_04:2019-12-09,2019-12-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_060959_497636_BD259FE7 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin,

On 12/2/19 3:56 PM, Benjamin Gaignard wrote:
> On stm32f7 family RTC node doesn't need clock-names property.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>   arch/arm/boot/dts/stm32f746.dtsi | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/stm32f746.dtsi b/arch/arm/boot/dts/stm32f746.dtsi
> index d26f93f8b9c2..3a8e2dc1978c 100644
> --- a/arch/arm/boot/dts/stm32f746.dtsi
> +++ b/arch/arm/boot/dts/stm32f746.dtsi
> @@ -300,7 +300,6 @@
>   			compatible = "st,stm32-rtc";
>   			reg = <0x40002800 0x400>;
>   			clocks = <&rcc 1 CLK_RTC>;
> -			clock-names = "ck_rtc";
>   			assigned-clocks = <&rcc 1 CLK_RTC>;
>   			assigned-clock-parents = <&rcc 1 CLK_LSE>;
>   			interrupt-parent = <&exti>;
> 

Applied on stm32-next.

Thanks.
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
