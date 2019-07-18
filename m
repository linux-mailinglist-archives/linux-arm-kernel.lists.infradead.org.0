Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D42AA6D1F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:22:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vRUMlbFsI++CaJ6JV7gwIq7ROb5WNWLzkEimgdcOWc0=; b=bkvL9UmwYF+Ogg63twy/nt6qO
	Y2TXdmXqd0I4bDQZXDi6PB788bzZwf6zidSI5tiB135NIGl1H1bCHzi74/ShDu71CgVrIduZPE1ej
	P8/vgZchjE3f8Vxsd/VHKX/x3KVjApLQzh2fUBu5DbD1clVmemPmMpvS3Ik3g1HZv2tfuV1Ggn0RN
	BgMbr9WxDm8E7Oahc7jP9k97EEXP5LEfeg+XjOcrTm4LgSXV+IxilWU8Z0gIEbmqJ78UmuCaGR49s
	2Nva/C8OqkT823iWFaDlHW1mDSFA6vi53x1fm8aa47Gh6k/gZOA+E87lNthXiom7UnhgbHb43U/1t
	LJX+JJXKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho9Aa-0006Vy-16; Thu, 18 Jul 2019 16:22:12 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho9AK-0006VV-MR
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 16:21:58 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6IGLNUQ000649; Thu, 18 Jul 2019 18:21:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=AJq7HWOmdf4Eh8zS82EF7sEz8rhFjyGqo/y3JZirMqI=;
 b=G1wdX6NO76pAIFagRCQrnHZbuzJMOAUmmpauADX9rWCew3aFMlqZ2oMHn019kBT1aRQy
 BK6bBd0BmcT9DORQXdXCqM74mSKNunuyJyJXLXaE9tnZei3TcQhf/76oDx2BXNFht5Vv
 tjk2f5mkOZjz+Y1xA9adly3Nxx4G6jRdkWQzHA5fEfr9hn5+vcUcaeZ+7L6Tb5OxINCa
 M3+2DJSCQe/1xp54dsy3D1Fhh+J/7AfKm83XCRLLZVvaETiZVRhGX/LWytUHHfbo6p7E
 GpgAIGOpS+PQyJSCUz6gcvg+LQr+do8Li/dRM8blgU/fJ5NzZdP3ow1EDNNhSU+F9P41 fA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tsdeppr0w-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 18 Jul 2019 18:21:50 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BB8D734;
 Thu, 18 Jul 2019 16:21:49 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 98AC85344;
 Thu, 18 Jul 2019 16:21:49 +0000 (GMT)
Received: from lmecxl0912.lme.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 18 Jul
 2019 18:21:48 +0200
Subject: Re: [PATCH] dt-bindings: pinctrl: stm32: Fix missing 'clocks'
 property in examples
To: Rob Herring <robh@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
References: <20190716215618.29757-1-robh@kernel.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <634fce00-182d-80b8-b435-0cbdae57913c@st.com>
Date: Thu, 18 Jul 2019 18:21:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716215618.29757-1-robh@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-18_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_092157_025254_90723D0A 
X-CRM114-Status: GOOD (  18.64  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob

On 7/16/19 11:56 PM, Rob Herring wrote:
> Now that examples are validated against the DT schema, an error with
> required 'clocks' property missing is exposed:
> 
> Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.example.dt.yaml: \
> pinctrl@40020000: gpio@0: 'clocks' is a required property
> Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.example.dt.yaml: \
> pinctrl@50020000: gpio@1000: 'clocks' is a required property
> Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.example.dt.yaml: \
> pinctrl@50020000: gpio@2000: 'clocks' is a required property
> 
> Add the missing 'clocks' properties to the examples to fix the errors.
> 
> Fixes: 2c9239c125f0 ("dt-bindings: pinctrl: Convert stm32 pinctrl bindings to json-schema")
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: linux-gpio@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Alexandre TORGUE <alexandre.torgue@st.com>

Thanks
Alex


> ---
>   .../devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml         | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
> index 3ac5d2088e49..91d3e78b3395 100644
> --- a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
> @@ -197,6 +197,7 @@ required:
>   examples:
>     - |
>       #include <dt-bindings/pinctrl/stm32-pinfunc.h>
> +    #include <dt-bindings/mfd/stm32f4-rcc.h>
>       //Example 1
>         pinctrl@40020000 {
>                 #address-cells = <1>;
> @@ -210,6 +211,7 @@ examples:
>                         #gpio-cells = <2>;
>                         reg = <0x0 0x400>;
>                         resets = <&reset_ahb1 0>;
> +                      clocks = <&rcc 0 STM32F4_AHB1_CLOCK(GPIOA)>;
>                         st,bank-name = "GPIOA";
>                 };
>          };
> @@ -227,6 +229,7 @@ examples:
>                         #gpio-cells = <2>;
>                         reg = <0x1000 0x400>;
>                         resets = <&reset_ahb1 0>;
> +                      clocks = <&rcc 0 STM32F4_AHB1_CLOCK(GPIOB)>;
>                         st,bank-name = "GPIOB";
>                         gpio-ranges = <&pinctrl 0 0 16>;
>                 };
> @@ -236,6 +239,7 @@ examples:
>                         #gpio-cells = <2>;
>                         reg = <0x2000 0x400>;
>                         resets = <&reset_ahb1 0>;
> +                      clocks = <&rcc 0 STM32F4_AHB1_CLOCK(GPIOC)>;
>                         st,bank-name = "GPIOC";
>                         ngpios = <5>;
>                         gpio-ranges = <&pinctrl 0 16 3>,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
