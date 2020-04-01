Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC6619A7CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 10:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T8s/Z2gSwRS2a2zdxbj4c3uWZL2/Xy9PsU7shEE78a8=; b=F6qTNfArsD/WE3
	EGhK9vXRhChSLKk0s5GAVOd5HClBC17Clvb1HYrBsmR1pgnC48BoPCuW3nB9lpUSCJjcl7Abk1UN4
	B6UsY7yJEOwVNYbt1K+fXTDxPG7w0hc+CRC5aC9Z/OXKEVspLLhtximv5hZfzyx0wyZjN2cmrUu4Y
	aVYzv11X4Ulf1nu+ZWdkTR9NPBLf+xv1T4hyq1MrCZa18vmKshcT+PaWwcqGnFMKvrzxGxjNFt5C5
	NJMQglN1vXp/4X5Do029V1t9VoR2q0T0sV6wrxhbzriZG3Ivl0rsNfIt7BijuUAVfcGUmfjUo6IJe
	UtZZKBOdezbo/Xr27kqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZ63-0007qS-Vw; Wed, 01 Apr 2020 08:51:39 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZ5x-0007pV-Tv
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 08:51:35 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0318n08e009311; Wed, 1 Apr 2020 10:51:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=1rCMuLCvnLZNatxXIIxnqYRt75OvA+RZrvrTvHgGw2M=;
 b=bjveDkYbrYq985QKvUcsGxSgwEB6kI3RynOjf+BgmY6JcHcmsjz1vvfpCAwKlgQumLXf
 qoqoEVl3a+LqMc+6rFqMsfMa02ESV6BADRflliof5gAtGEcm/Zwp02fmmrtBCgsYlOG3
 tVfXipak/whlCqaFFueVXQReQyElivj0SiOFJg2ldTNWzI2x+Baz4ZQWgL0sHSEvbcRg
 Dk637If6+MD7hjTEUoLGOIIEo76lRrq0XVvq7uKnpwNDehfIu0eX1TQsg+C9hMa958fU
 uw1JhYK7XY2wuiSCfllM1GP1yw7+FNqZxcHN+5sKRN4o5gp/y9wfQtOqxKXo3T8/L5Bf /A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 302y53x4g9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 01 Apr 2020 10:51:22 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7E12610002A;
 Wed,  1 Apr 2020 10:51:21 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3F92121CA7C;
 Wed,  1 Apr 2020 10:51:21 +0200 (CEST)
Received: from [10.211.14.17] (10.75.127.46) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 1 Apr
 2020 10:51:19 +0200
Subject: Re: [PATCH v6 1/6] dt-bindings: mfd: Document STM32 low power timer
 bindings
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <lee.jones@linaro.org>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <daniel.lezcano@linaro.org>, <tglx@linutronix.de>
References: <20200401083909.18886-1-benjamin.gaignard@st.com>
 <20200401083909.18886-2-benjamin.gaignard@st.com>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <2e3814e2-f6fc-038f-4fb0-87432d99edfb@st.com>
Date: Wed, 1 Apr 2020 10:51:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200401083909.18886-2-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-03-31_07:2020-03-31,
 2020-03-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_015134_254283_978CB710 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/1/20 10:39 AM, Benjamin Gaignard wrote:
> Add a subnode to STM low power timer bindings to support timer driver
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> version 6:
> - only use one interrupt
> 
> version 5:
> - the previous has been acked-by Rob but since I have docummented
>   interrupts and interrupt-names properties I haven't applied it here.
> 
> version 4:
> - change compatible and subnode names
> - document wakeup-source property
> 
>  .../devicetree/bindings/mfd/st,stm32-lptimer.yaml   | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 

Hi Benjamin,

Acked-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Thanks,
Fabrice

> diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
> index 1a4cc5f3fb33..2a99b2296d2b 100644
> --- a/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
> +++ b/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
> @@ -33,12 +33,17 @@ properties:
>      items:
>        - const: mux
>  
> +  interrupts:
> +    maxItems: 1
> +
>    "#address-cells":
>      const: 1
>  
>    "#size-cells":
>      const: 0
>  
> +  wakeup-source: true
> +
>    pwm:
>      type: object
>  
> @@ -81,6 +86,16 @@ patternProperties:
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
> @@ -94,11 +109,13 @@ additionalProperties: false
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
> @@ -115,6 +132,10 @@ examples:
>        counter {
>          compatible = "st,stm32-lptimer-counter";
>        };
> +
> +      timer {
> +        compatible = "st,stm32-lptimer-timer";
> +      };
>      };
>  
>  ...
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
