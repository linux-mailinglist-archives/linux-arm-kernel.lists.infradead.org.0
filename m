Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE99CBA18
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tWAdpVnNmVZXq++8Bx/6LdNfvJPGJwnWH3EWkWVsl3k=; b=JKAwi5XkiDXROC
	6tGsEaLsJnqwccM+3ZSBY90/kDejVfH2x9CFbpKwk6KJty3RnVMrclspkwx+ZAsla4VIIl+91UH2L
	KR2/B0PYnW2ZggfmZBJcGcPblN2Tm2PUbK7UFoEqEWfU94CoaMy/zfWJNppqm+f86vlcCBA849xkk
	CcbC7IED8PzpkHDdOjCDt/4sEt0ckX2NFbE9bDgEyooQF92WViywdGZnEM0yBmpv0RAqfFXtQ2Ipe
	KZ8h1ZtKTZ1ndVQwaobT9URYnCeTY7bEP8lX3nhUwPyOjHwOsIDGL9exlNz+V+K8FSG5DqaZ5/zCL
	XOrybGbvQz4Tepxtm3Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMSx-0003bM-O6; Fri, 04 Oct 2019 12:13:47 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMMj-0005BU-Vd
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:07:24 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x94C6bWt002807; Fri, 4 Oct 2019 14:07:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=9m5QvHje7gSHUoKFWE+CtI72E0kPziiwi8tkIKmKGKQ=;
 b=dW0P/B3penQ+z5oVNoqmsOKp2Wxu6VlxtknN6/ZmuvxadCL69o84FhvPyynWiDrxRVYq
 boFpiWHq8RvkVwcJgmmG3fMIZDnZDF2tETu+GCwsNpH2TiVVRFbzA9ebbHaIBabp9N1l
 mHpW0jV2v8g03YMHmIXguGWFHgTZnKGcp46EcsqXPnCQCMKZWhN4RDlfLgvmKSYZ+D9X
 fblMHZAwjE+a2dhhGVQOmojEStyHFecI0nPkTXtx/QuOQ+RT5ny+kBkdVhUzzn69NvVU
 dzwcAOesEVA/z5XUAAG4+/gvZ1QOlbGsJjIf+Y28JrJ9plVYx9nPOf+YVxWdrPVhwP6A iQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2v9w9watb7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 04 Oct 2019 14:07:15 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5BFD7100038;
 Fri,  4 Oct 2019 14:07:15 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 45CBA2BDA6E;
 Fri,  4 Oct 2019 14:07:15 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 4 Oct
 2019 14:07:14 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Fri, 4 Oct 2019 14:07:14 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: "mchehab@kernel.org" <mchehab@kernel.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>, "Yannick
 FERTRE" <yannick.fertre@st.com>, "hverkuil-cisco@xs4all.nl"
 <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH] dt-bindings: media: Convert stm32 cec bindings to
 json-schema
Thread-Topic: [PATCH] dt-bindings: media: Convert stm32 cec bindings to
 json-schema
Thread-Index: AQHVeTQQzAxXsEKUOU6CWUsiOtV7DKdKRJUA
Date: Fri, 4 Oct 2019 12:07:14 +0000
Message-ID: <c74bae8a-e043-1484-2cd1-a644ad9b164d@st.com>
References: <20191002151410.15306-1-benjamin.gaignard@st.com>
In-Reply-To: <20191002151410.15306-1-benjamin.gaignard@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <16574661833B034C85DD4354A28F4483@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-04_06:2019-10-03,2019-10-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050722_360534_36A1E563 
X-CRM114-Status: GOOD (  20.56  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ Hans

On 10/2/19 5:14 PM, Benjamin Gaignard wrote:
> Convert the STM32 cec binding to DT schema format using json-schema
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>   .../devicetree/bindings/media/st,stm32-cec.txt     | 19 --------
>   .../devicetree/bindings/media/st,stm32-cec.yaml    | 57 ++++++++++++++++++++++
>   2 files changed, 57 insertions(+), 19 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/media/st,stm32-cec.txt
>   create mode 100644 Documentation/devicetree/bindings/media/st,stm32-cec.yaml
>
> diff --git a/Documentation/devicetree/bindings/media/st,stm32-cec.txt b/Documentation/devicetree/bindings/media/st,stm32-cec.txt
> deleted file mode 100644
> index 6be2381c180d..000000000000
> --- a/Documentation/devicetree/bindings/media/st,stm32-cec.txt
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -STMicroelectronics STM32 CEC driver
> -
> -Required properties:
> - - compatible : value should be "st,stm32-cec"
> - - reg : Physical base address of the IP registers and length of memory
> -	 mapped region.
> - - clocks : from common clock binding: handle to CEC clocks
> - - clock-names : from common clock binding: must be "cec" and "hdmi-cec".
> - - interrupts : CEC interrupt number to the CPU.
> -
> -Example for stm32f746:
> -
> -cec: cec@40006c00 {
> -	compatible = "st,stm32-cec";
> -	reg = <0x40006C00 0x400>;
> -	interrupts = <94>;
> -	clocks = <&rcc 0 STM32F7_APB1_CLOCK(CEC)>, <&rcc 1 CLK_HDMI_CEC>;
> -	clock-names = "cec", "hdmi-cec";
> -};
> diff --git a/Documentation/devicetree/bindings/media/st,stm32-cec.yaml b/Documentation/devicetree/bindings/media/st,stm32-cec.yaml
> new file mode 100644
> index 000000000000..c99144107185
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/st,stm32-cec.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/st,stm32-cec.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 CEC bindings
> +
> +maintainers:
> +  - Benjamin Gaignard <benjamin.gaignard@st.com>
> +  - Yannick Fertre <yannick.fertre@st.com>
> +
> +properties:
> +  compatible:
> +    const: st,stm32-cec
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Module Clock
> +      - description: Bus Clock
> +
> +  clock-names:
> +    items:
> +      - const: cec
> +      - const: hdmi-cec
> +
> +  pinctrl-names: true
> +
> +patternProperties:
> +  "^pinctrl-[0-9]+$": true
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    cec: cec@40006c00 {
> +        compatible = "st,stm32-cec";
> +        reg = <0x40006c00 0x400>;
> +        interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&rcc CEC_K>, <&clk_lse>;
> +        clock-names = "cec", "hdmi-cec";
> +    };
> +
> +...
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
