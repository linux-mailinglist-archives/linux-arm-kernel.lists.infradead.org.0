Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E25D184799
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 14:13:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aZmRJOB3UI+KTF+9ugeKDIgY6kKItU5MehHWv9UgrpU=; b=dsnV8WfwdXncCxwTfMHgKAXi8
	xPvOfz4nmsGfrfxu4l6bGeXVbDsOT27OIH8LKLjNDl8MHe2s6Qt5hZ25KbmUiLl67HrYHuOqzKg/n
	bcrYTx4DhBXlRi8XOWdwbWLj4jsRwnwx/GhOWBKB3fCzzsuKScvaQVI2+38P7t6tistpLsj9OqBWH
	V8VMTuXjnXEoiwntCojLP+3T/8o14HxAk7MjrDVvZrnXDVRkwAtBfo9kFzjTzW6XuoXDpGDPD6kHZ
	0/WWigATJN/92zjS75OlOfoDxV2NmUtQXMGk+yNcg7ntlDLeM85xO0BaE3cd4D11WoRU4e/ikRc9a
	0nAp6bECQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCk7q-0000Mp-P2; Fri, 13 Mar 2020 13:13:18 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCk7h-0000MK-U6
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 13:13:11 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02DD7L64023461; Fri, 13 Mar 2020 14:13:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=oUI8ZXDq4EiPObS+0wbkrkh1Q7HpkSyN8K/N9gjWHwY=;
 b=CMYrR8XBBnQtWJkA0eWefudDD9tn9gsZT+GMJWILTLOZQXISvjGUkZozI5RgrAlEej7E
 K26gR/vCvzJnXvccC54NJ5ZY7qlXk61EkVin6FWr+6iogkfVCuvRjv1Z3qK+viYZyNCz
 Al4pVtZs3kkxEH7UgQ6ZzB19S8CcN4dhLO1Wkrd1mHzpl6q0+crBBGjg0FT2Ru5QYzbN
 Ac1lulXTPrDkN6+Zpqlce1abtkUexXV0v7QcHq5VUzr3C8LzIbe0y4+YTqFfFPmq+m6e
 QVf95UmlFyj9+62dckN+X2O6Nrqcl4GZh1EYhaGTrWTH6d3n0wMgjPy468bX+P2eQzo+ Cg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yqt82guej-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 13 Mar 2020 14:13:01 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CA20310002A;
 Fri, 13 Mar 2020 14:13:00 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 849672A8913;
 Fri, 13 Mar 2020 14:13:00 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 13 Mar
 2020 14:12:59 +0100
Subject: Re: [PATCH] ARM: dts: stm32: add cpu clock-frequency property on
 stm32mp15x
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
References: <20200224172031.27868-1-a.fatoum@pengutronix.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <e5a6ce75-061d-fa75-8fe6-285b4259952f@st.com>
Date: Fri, 13 Mar 2020 14:12:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200224172031.27868-1-a.fatoum@pengutronix.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG8NODE3.st.com (10.75.127.24) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-13_04:2020-03-12,
 2020-03-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_061310_324666_5A14BED5 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, kernel@pengutronix.de,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ahmad

On 2/24/20 6:20 PM, Ahmad Fatoum wrote:
> All of the STM32MP151[1], STM32MP153[2] and STM32MP157[3] have their
> Cortex-A7 cores running at 650 MHz.
> 
> Add the clock-frequency property to CPU nodes to avoid warnings about
> them missing.
> 
> [1]: https://www.st.com/en/microcontrollers-microprocessors/stm32mp151.html
> [2]: https://www.st.com/en/microcontrollers-microprocessors/stm32mp153.html
> [3]: https://www.st.com/en/microcontrollers-microprocessors/stm32mp157.html
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Applied on stm32-next.

Thanks.
Alex

> ---
>   arch/arm/boot/dts/stm32mp151.dtsi | 1 +
>   arch/arm/boot/dts/stm32mp153.dtsi | 1 +
>   2 files changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
> index fb41d0778b00..fd46a8e11126 100644
> --- a/arch/arm/boot/dts/stm32mp151.dtsi
> +++ b/arch/arm/boot/dts/stm32mp151.dtsi
> @@ -17,6 +17,7 @@ cpus {
>   
>   		cpu0: cpu@0 {
>   			compatible = "arm,cortex-a7";
> +			clock-frequency = <650000000>;
>   			device_type = "cpu";
>   			reg = <0>;
>   		};
> diff --git a/arch/arm/boot/dts/stm32mp153.dtsi b/arch/arm/boot/dts/stm32mp153.dtsi
> index 2d759fc6015c..6d9ab08667fc 100644
> --- a/arch/arm/boot/dts/stm32mp153.dtsi
> +++ b/arch/arm/boot/dts/stm32mp153.dtsi
> @@ -10,6 +10,7 @@ / {
>   	cpus {
>   		cpu1: cpu@1 {
>   			compatible = "arm,cortex-a7";
> +			clock-frequency = <650000000>;
>   			device_type = "cpu";
>   			reg = <1>;
>   		};
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
