Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDB31B05C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 11:35:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NKYIfy1xLdqZVeZi7x/wkAF6YAODYdOPlDy8EZdk8G4=; b=dJiTdNoyUv8rnS
	fCZJ5eZlES6CcNQs4mFs6iu5LQkvKwjmAt34oKeu8PnA55tBN0K84/aIotMM7cTNZCu1Syrlky1Y2
	3vFfXsnd9AHJFaDDFCagZrdQMV+6gfXdbI2Ny97WrHM+8wYjUOhYC5v7Nm0or9AMKRzDlAHArcpLy
	ENq25RXKIrv75SrkKQLQodBzFe2xJ0+GzC6hSmwY1h5YBYyvXrR6admOvbW9U3hqVDBOhyuPAd0Hr
	Y2BMV4215KJDMAof820cwAimuTMA1D60uNIVRa3FmpxwA0BAo3ANrLq+L5y399PXCmVoSX/ZSFVAA
	uz0CFnLKoflNf0xUX3uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQSpk-0001Ix-3I; Mon, 20 Apr 2020 09:35:20 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQSpP-0001CJ-4u
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 09:35:00 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03K9Xodh030718; Mon, 20 Apr 2020 11:34:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=a05mT9cvrGwq02jpMc/AFPdAz6oDSD/XlNg9F8frg1U=;
 b=sNGjbZ0q5b1ryKnFWcYEDuUXzdzoocENayMtfTKmenh5r13POZB1Uh+vuHfHCCaT5hyY
 31INmIl6kwo1UibKvqE0EJ3hkLDaQDE9oVKwkLpH7TOuR2vM5AGctAwGbnBvmui1ByDb
 x2sVmN/aBciCpI5m+ts/dSN7jFwx5dpf03DL287gUJNmrh/nxg4hXM4MbTfoeuGlaAQq
 9vnbqF+JCsl2uX+uJjI7D/YPsNEde9SVgOpHgWphHJKpENrYqBw5SVYI/n/9oIKrrHpX
 dnJxlcLQeRBfjZQVysYvFknk8gxgsl25niIPIwhREAQzceAjB5fXEAtH590Jfc6TaKb/ mA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fq119ggr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 20 Apr 2020 11:34:47 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 26CBA10003A;
 Mon, 20 Apr 2020 11:34:46 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 034CE2C0BE8;
 Mon, 20 Apr 2020 11:34:46 +0200 (CEST)
Received: from [10.211.6.74] (10.75.127.44) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 20 Apr
 2020 11:34:44 +0200
Subject: Re: [RESEND v6 1/6] dt-bindings: mfd: Document STM32 low power timer
 bindings
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <lee.jones@linaro.org>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <daniel.lezcano@linaro.org>, <tglx@linutronix.de>
References: <20200420085930.26989-1-benjamin.gaignard@st.com>
 <20200420085930.26989-2-benjamin.gaignard@st.com>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <f9d41617-797e-15d4-a058-a0a9e6669cdc@st.com>
Date: Mon, 20 Apr 2020 11:34:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200420085930.26989-2-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-20_03:2020-04-17,
 2020-04-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_023459_490781_48678604 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/20/20 10:59 AM, Benjamin Gaignard wrote:
> Add a subnode to STM low power timer bindings to support timer driver
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/mfd/st,stm32-lptimer.yaml     | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
> index ddf190cb800b..64bab1c3bdac 100644
> --- a/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
> +++ b/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
> @@ -33,6 +33,9 @@ properties:
>      items:
>        - const: mux
>  
> +  interrupts:
> +    maxItems: 1
> +
>    "#address-cells":
>      const: 1
>  
> @@ -93,6 +96,16 @@ patternProperties:
>      required:
>        - compatible
>  
> +  timer:
> +    type: object
> +
> +    properties:
> +      compatible:
> +        const: st,stm32-lptimer-timer
> +
> +    required:
> +      - compatible
> +
>  required:
>    - "#address-cells"
>    - "#size-cells"
> @@ -106,11 +119,13 @@ additionalProperties: false
>  examples:
>    - |
>      #include <dt-bindings/clock/stm32mp1-clks.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>      timer@40002400 {
>        compatible = "st,stm32-lptimer";
>        reg = <0x40002400 0x400>;
>        clocks = <&timer_clk>;
>        clock-names = "mux";
> +      interrupts-extended = <&exti 47 IRQ_TYPE_LEVEL_HIGH>;
>        #address-cells = <1>;
>        #size-cells = <0>;
>  
> @@ -131,6 +146,10 @@ examples:
>        timer {
>          compatible = "st,stm32-lptimer-timer";
>        };
> +
> +      timer {
> +        compatible = "st,stm32-lptimer-timer";
> +      };

Hi Benjamin,

It looks like the compatible is duplicated in this example.
Also, from "PATCH v6" I don't see the wakeup-source flag in your resend.
Can you double-check ?

Thanks,
Best Regards,
Fabrice

>      };
>  
>  ...
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
