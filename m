Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 195811847BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 14:15:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LpeT9XoLbYRYb/8JmH9Me2Cg9bC1F9wXidoWLOdKbfQ=; b=jXb1hEkSwDEup+8WG1EgyvLFZ
	7Ymz9mYBrscVFAkWhPpoSpF8AVhI0aJLA2KcSwt9BVyoWAPlZV8efx1H4MhFYIO+ypq+7vffumY8I
	njhRdQWVzCX54Co4qbj1yFHmQtKFuywmVTqSatwrt5s5dDUJ+1+Z0SdM0LqMgJZZMNuXGv6q8q55E
	q6f4LaSIDdWbmPFdukjNGKfEmJTwZs5bwzGgQROqmOdHjj7kOxZHuBwgYzkRRoCB82gGHNFPy6aVY
	hK68inlvP4VohtfjEE6CNOcTyYY7AzJbPvVZW3sYgyL3Pj6Jb4CVunOeYszG0TLjeGIUkFLW+PPN8
	ssMSkVuOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCk9V-0001Am-5i; Fri, 13 Mar 2020 13:15:01 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCk9N-0001AR-S4
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 13:14:55 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02DDDJIv004634; Fri, 13 Mar 2020 14:14:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=96tzSx1sjU99KhvK259+0KWD9N1uJtRZcwvduWLOsSU=;
 b=X35JI2fxlbiM+NNfrY/7YkoajwAjKup2jGRyKlAjK+lHVVSwzfopoqwnJD5df/1QmbPK
 Zx1juGiGvAyl2QnW7CEq7wjV0RNZkMg5AkpzV7943BJ7q1bISviR/4X9z8rXJEzCO3IQ
 aDRz8ix/OvkHp30sBLiPH6oxlAhWKKBYBs6X8tEQpZsHWS8ILfg6ikEULxq+AuJjar2E
 Cj4kSLfrJAs+UrbQpUEeHZo8OHcZFLW9HsVYK7wpz2WkTNjR2DM/G0ZpyW1skb8beXMR
 85+kkgE+RdVB+0YKl/h41nAee4dx1HT5cGGdkOZz/6iMby8Y37CDSrOwp9IxWX9SCLVH uQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yqt818vpq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 13 Mar 2020 14:14:50 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 647BF10003E;
 Fri, 13 Mar 2020 14:14:45 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 584C02A8914;
 Fri, 13 Mar 2020 14:14:45 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 13 Mar
 2020 14:14:44 +0100
Subject: Re: [PATCH] ARM: dts: stm32: Rename stmfx node names
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <mcoquelin.stm32@gmail.com>, 
 <robh+dt@kernel.org>
References: <20200228125205.8126-1-benjamin.gaignard@st.com>
 <20200228125205.8126-2-benjamin.gaignard@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <594855ac-2d50-ccf9-6c75-07bb5ef47e82@st.com>
Date: Fri, 13 Mar 2020 14:14:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200228125205.8126-2-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-13_04:2020-03-12,
 2020-03-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_061454_201740_780B91EE 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin

On 2/28/20 1:52 PM, Benjamin Gaignard wrote:
> Rename stmfx node names according to yaml description.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---

Applied on stm32-next with commit title updated.

Thanks.
Alex

>   arch/arm/boot/dts/stm32746g-eval.dts  | 2 +-
>   arch/arm/boot/dts/stm32mp157c-ev1.dts | 4 ++--
>   2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32746g-eval.dts b/arch/arm/boot/dts/stm32746g-eval.dts
> index fcc804e3c158..4ea3f98dd275 100644
> --- a/arch/arm/boot/dts/stm32746g-eval.dts
> +++ b/arch/arm/boot/dts/stm32746g-eval.dts
> @@ -165,7 +165,7 @@
>   		interrupts = <8 IRQ_TYPE_EDGE_RISING>;
>   		interrupt-parent = <&gpioi>;
>   
> -		stmfx_pinctrl: stmfx-pin-controller {
> +		stmfx_pinctrl: pinctrl {
>   			compatible = "st,stmfx-0300-pinctrl";
>   			gpio-controller;
>   			#gpio-cells = <2>;
> diff --git a/arch/arm/boot/dts/stm32mp157c-ev1.dts b/arch/arm/boot/dts/stm32mp157c-ev1.dts
> index 228e35e16884..3f4668a43afe 100644
> --- a/arch/arm/boot/dts/stm32mp157c-ev1.dts
> +++ b/arch/arm/boot/dts/stm32mp157c-ev1.dts
> @@ -210,7 +210,7 @@
>   		interrupt-parent = <&gpioi>;
>   		vdd-supply = <&v3v3>;
>   
> -		stmfx_pinctrl: stmfx-pin-controller {
> +		stmfx_pinctrl: pinctrl {
>   			compatible = "st,stmfx-0300-pinctrl";
>   			gpio-controller;
>   			#gpio-cells = <2>;
> @@ -218,7 +218,7 @@
>   			#interrupt-cells = <2>;
>   			gpio-ranges = <&stmfx_pinctrl 0 0 24>;
>   
> -			joystick_pins: joystick {
> +			joystick_pins: joystick-pins {
>   				pins = "gpio0", "gpio1", "gpio2", "gpio3", "gpio4";
>   				bias-pull-down;
>   			};
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
