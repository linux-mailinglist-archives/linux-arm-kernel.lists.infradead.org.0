Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A81118236
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 09:29:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xvI4mN+7EBnDrfwpDiPq9OgAKJRN5w67VTq2936LYXc=; b=TTq59hDm0t9o83
	Mu53o+ylDlKtzmtq1iXSS4uFTD8VBR87ku2Ox09IXEs09AnYVuAOdar07zz3KhhsnLdoQcs2bUTdq
	CTv6LIhx0MXdwqjjkJdzdlx578rpgJkA2QX0PBOwuyOjMqGfqy/7HFpG5z0Ag0iGoi/MuM5guhJKp
	fB1EZgY0nczQ9j0Ma9HJc8puWXZ4Yo1iFoTdnREuswW3NGatuefUJh7bQjcr/fzqgOzpeQ2lQVYke
	wfJRtqUTz7jGmVz19hcG2mAY0LuBOAaGBhwiXjo4IwRLK+k8zLOzcksRiacvxFDUndCY+KTBNJ/xc
	XEMC1IwOlPILRcMyDNUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieat6-0005Hb-17; Tue, 10 Dec 2019 08:28:56 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieasx-0005Ek-PS
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 08:28:49 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBA8MgQl024210; Tue, 10 Dec 2019 09:28:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=/u1hvBc/HdsmzCgZdcSYSRr+5Y+aodFwrfclzaWfZsI=;
 b=AhGBYNHhQYTnV+NaByM56zLy55DD5vzpdVmeK6SeNXYaqcSU4cUeVgkFkdmhwquQ7myr
 MFRSo/RY+5/x5YZ3dF+ZyRLkhOvOSAZ6K/XgL5ayKTEx+hqu/Zl0CieQRkMAWQiod90O
 aAcvuK7emhbvGQzCbJ5IZI5Jw9yOkIkP2Jyi7K2q3FZBH5KlCCXdEcOE/zALMiUep5+a
 U0Pes8LzlK+mvlq9oMUWuvdjva8MQzlkRN23BLVTklyjAKBEoygHi2swNjW63ppMj7oH
 BxQ7NYstafAdGJ6hTQ+CL6wPGQgNHjOKUzK5qirIYPIsDR5X+eqw6hzUOq0IyHyz9A3g cg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wraq3ugh9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 10 Dec 2019 09:28:25 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E7DD010002A;
 Tue, 10 Dec 2019 09:28:20 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CE8E221E551;
 Tue, 10 Dec 2019 09:28:20 +0100 (CET)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 10 Dec
 2019 09:28:20 +0100
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Tue, 10 Dec 2019 09:28:20 +0100
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: "wim@linux-watchdog.org" <wim@linux-watchdog.org>, "linux@roeck-us.net"
 <linux@roeck-us.net>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, Alexandre TORGUE
 <alexandre.torgue@st.com>
Subject: Re: [PATCH v3] dt-bindings: watchdog: Convert stm32 watchdog bindings
 to json-schema
Thread-Topic: [PATCH v3] dt-bindings: watchdog: Convert stm32 watchdog
 bindings to json-schema
Thread-Index: AQHVoR3g+vJ/hd4xOEqFJoxHHFujBqezFI8A
Date: Tue, 10 Dec 2019 08:28:20 +0000
Message-ID: <bc07ec1b-12b5-3079-1a96-44a2906a1da2@st.com>
References: <20191122101616.14351-1-benjamin.gaignard@st.com>
In-Reply-To: <20191122101616.14351-1-benjamin.gaignard@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
Content-ID: <81F1C2245203984B9F87BD5F5A90CDAE@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-10_01:2019-12-10,2019-12-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_002848_188436_02812D22 
X-CRM114-Status: GOOD (  24.36  )
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 11/22/19 11:16 AM, Benjamin Gaignard wrote:
> Convert the STM32 watchdog binding to DT schema format using json-schema

gentle ping to reviewers,

Thanks,

Benjamin

> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> changes in version 3:
> - fix typo in clock-names enum
>    
> changes in version 2:
> - remove trailer space
> - add Christophe in the maintainers list
>
>   .../devicetree/bindings/watchdog/st,stm32-iwdg.txt | 26 ----------
>   .../bindings/watchdog/st,stm32-iwdg.yaml           | 55 ++++++++++++++++++++++
>   2 files changed, 55 insertions(+), 26 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/watchdog/st,stm32-iwdg.txt
>   create mode 100644 Documentation/devicetree/bindings/watchdog/st,stm32-iwdg.yaml
>
> diff --git a/Documentation/devicetree/bindings/watchdog/st,stm32-iwdg.txt b/Documentation/devicetree/bindings/watchdog/st,stm32-iwdg.txt
> deleted file mode 100644
> index d8f4430b0a13..000000000000
> --- a/Documentation/devicetree/bindings/watchdog/st,stm32-iwdg.txt
> +++ /dev/null
> @@ -1,26 +0,0 @@
> -STM32 Independent WatchDoG (IWDG)
> ----------------------------------
> -
> -Required properties:
> -- compatible: Should be either:
> -  - "st,stm32-iwdg"
> -  - "st,stm32mp1-iwdg"
> -- reg: Physical base address and length of the registers set for the device
> -- clocks: Reference to the clock entry lsi. Additional pclk clock entry
> -  is required only for st,stm32mp1-iwdg.
> -- clock-names: Name of the clocks used.
> -  "lsi" for st,stm32-iwdg
> -  "lsi", "pclk" for st,stm32mp1-iwdg
> -
> -Optional Properties:
> -- timeout-sec: Watchdog timeout value in seconds.
> -
> -Example:
> -
> -iwdg: watchdog@40003000 {
> -	compatible = "st,stm32-iwdg";
> -	reg = <0x40003000 0x400>;
> -	clocks = <&clk_lsi>;
> -	clock-names = "lsi";
> -	timeout-sec = <32>;
> -};
> diff --git a/Documentation/devicetree/bindings/watchdog/st,stm32-iwdg.yaml b/Documentation/devicetree/bindings/watchdog/st,stm32-iwdg.yaml
> new file mode 100644
> index 000000000000..928588091710
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/st,stm32-iwdg.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/st,stm32-iwdg.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 Independent WatchDoG (IWDG) bindings
> +
> +maintainers:
> +  - Yannick Fertre <yannick.fertre@st.com>
> +  - Christophe Roullier <christophe.roullier@st.com>
> +
> +allOf:
> +  - $ref: "watchdog.yaml#"
> +
> +properties:
> +  compatible:
> +    enum:
> +      - st,stm32-iwdg
> +      - st,stm32mp1-iwdg
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Low speed clock
> +      - description: Optional peripheral clock
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      enum: [ lsi, pclk ]
> +    minItems: 1
> +    maxItems: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    watchdog@5a002000 {
> +      compatible = "st,stm32mp1-iwdg";
> +      reg = <0x5a002000 0x400>;
> +      clocks = <&rcc IWDG2>, <&rcc CK_LSI>;
> +      clock-names = "pclk", "lsi";
> +      timeout-sec = <32>;
> +    };
> +
> +...
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
