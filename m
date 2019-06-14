Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B85B45686
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 09:40:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tadFtRBfma1dXrrSEsiRggDCDGNYgjWozECu1t3tzks=; b=mbe8APZb769Ryz
	1LREodUHf3FoU2pyXcPu7lkWsiyLQarZCBv0+q7FHIgSShwMh2EpXMSX6s09VA6rVwDBLzCiWGpvA
	KgfSXDpGMwAKN0Nfp930a8y457K/JRSUQjEgG11HXVVzd6G8wy/vcxrsOb55jbeuKyt2FBjr4k2sz
	HB/9eI5ziSC5JbqQQkdl/maVIu/yCtP/JK5nOVauYv3fJ4AEJtfs7vwzPsllXq2mgXqk/filyuEzS
	2SXN0ZUkJaGIuN0P+tdikfP0T0RR65ijI+/9oohBHLihhS+fFlP9UodQA9l5oQhERWiuo8yhRq7kW
	qqsFKY752M/KjHEsyfxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbgoc-0004HW-FU; Fri, 14 Jun 2019 07:40:02 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbgoD-0004AJ-IG
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 07:39:39 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5E7asaD020061; Fri, 14 Jun 2019 09:39:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=WnBJiL3yLXib/3hyU89WJ3ADaCZVb5cHV2S7IUcVmG8=;
 b=d5hQVDNSjEe3/rSaKwOUDiXx1sfXNGQJMBOrTR7+nNma3iYoaulYBv02GV2z7dXa21++
 8YQ8vK9HbOhfIcSDBeLESRTlC/w4XSzsYSpwG34Q83l8jOYiXCQxoIQFpesSXIrAz24H
 BnDFxqg/UEfaaK9avM3Nue63kiRa3XhqGiPToCvxwGdHGByk3tEJQFr+oBQoXiwHbijD
 Vibc+Ycpx618ZEkwSWO0vRdfd8eQLeY+5sy1+sMA9SIk1I2t3pMvTTdvQmkip+CU+NBN
 bJckRzlTtFQlpvoJCb7+FkHLds7hG4VhYLO8pDAtzM4/2OYcYgtCZ52M/Yaic4Usqjym Kg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t2f8c8ear-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 14 Jun 2019 09:39:26 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6B07D3A;
 Fri, 14 Jun 2019 07:39:25 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0AAFF1807;
 Fri, 14 Jun 2019 07:39:25 +0000 (GMT)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 14 Jun
 2019 09:39:24 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Fri, 14 Jun 2019 09:39:24 +0200
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Lubomir Rintel <lkundrak@v3.sk>, Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH 1/6] ARM: dts: STi: Switch to SPDX header
Thread-Topic: [PATCH 1/6] ARM: dts: STi: Switch to SPDX header
Thread-Index: AQHVICdybxhZw6uCRkCvwJXJ6Jt2RKaapruA
Date: Fri, 14 Jun 2019 07:39:24 +0000
Message-ID: <95148f1a-c48b-95a3-77ab-4420f7cf7de2@st.com>
References: <20190611072921.2979446-1-lkundrak@v3.sk>
 <20190611072921.2979446-2-lkundrak@v3.sk>
In-Reply-To: <20190611072921.2979446-2-lkundrak@v3.sk>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <F57771CFAF48BE4AB6A55DC764223446@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-14_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_003938_006804_50B830D8 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Haojian
 Zhuang <haojian.zhuang@gmail.com>, Wei Xu <xuwei5@hisilicon.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lubomir

On 6/11/19 9:29 AM, Lubomir Rintel wrote:
> The original license text had a typo ("publishhed") which would be
> likely to confuse automated licensing auditing tools. Let's just switch
> to SPDX instead of fixing the wording.
>
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> ---
>  arch/arm/boot/dts/stih407-family.dtsi  | 5 +----
>  arch/arm/boot/dts/stih407-pinctrl.dtsi | 5 +----
>  arch/arm/boot/dts/stih407.dtsi         | 5 +----
>  arch/arm/boot/dts/stih410-pinctrl.dtsi | 5 +----
>  arch/arm/boot/dts/stih410.dtsi         | 5 +----
>  arch/arm/boot/dts/stih418.dtsi         | 5 +----
>  6 files changed, 6 insertions(+), 24 deletions(-)
>
> diff --git a/arch/arm/boot/dts/stih407-family.dtsi b/arch/arm/boot/dts/stih407-family.dtsi
> index 9e29a4499938..2ff2542bf335 100644
> --- a/arch/arm/boot/dts/stih407-family.dtsi
> +++ b/arch/arm/boot/dts/stih407-family.dtsi
> @@ -1,10 +1,7 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (C) 2014 STMicroelectronics Limited.
>   * Author: Giuseppe Cavallaro <peppe.cavallaro@st.com>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * publishhed by the Free Software Foundation.
>   */
>  #include "stih407-pinctrl.dtsi"
>  #include <dt-bindings/mfd/st-lpc.h>
> diff --git a/arch/arm/boot/dts/stih407-pinctrl.dtsi b/arch/arm/boot/dts/stih407-pinctrl.dtsi
> index e393519fb84c..db174019626f 100644
> --- a/arch/arm/boot/dts/stih407-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stih407-pinctrl.dtsi
> @@ -1,10 +1,7 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (C) 2014 STMicroelectronics Limited.
>   * Author: Giuseppe Cavallaro <peppe.cavallaro@st.com>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * publishhed by the Free Software Foundation.
>   */
>  #include "st-pincfg.h"
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> diff --git a/arch/arm/boot/dts/stih407.dtsi b/arch/arm/boot/dts/stih407.dtsi
> index 5b7951ffc350..242ac72e4d4a 100644
> --- a/arch/arm/boot/dts/stih407.dtsi
> +++ b/arch/arm/boot/dts/stih407.dtsi
> @@ -1,10 +1,7 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (C) 2015 STMicroelectronics Limited.
>   * Author: Gabriel Fernandez <gabriel.fernandez@linaro.org>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * publishhed by the Free Software Foundation.
>   */
>  #include "stih407-clock.dtsi"
>  #include "stih407-family.dtsi"
> diff --git a/arch/arm/boot/dts/stih410-pinctrl.dtsi b/arch/arm/boot/dts/stih410-pinctrl.dtsi
> index 5ae1fd66c0b8..8532ae3f61e8 100644
> --- a/arch/arm/boot/dts/stih410-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stih410-pinctrl.dtsi
> @@ -1,10 +1,7 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (C) 2014 STMicroelectronics Limited.
>   * Author: Peter Griffin <peter.griffin@linaro.org>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * publishhed by the Free Software Foundation.
>   */
>  #include "st-pincfg.h"
>  / {
> diff --git a/arch/arm/boot/dts/stih410.dtsi b/arch/arm/boot/dts/stih410.dtsi
> index 888548ea9b5c..23b494a13c47 100644
> --- a/arch/arm/boot/dts/stih410.dtsi
> +++ b/arch/arm/boot/dts/stih410.dtsi
> @@ -1,10 +1,7 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (C) 2014 STMicroelectronics Limited.
>   * Author: Peter Griffin <peter.griffin@linaro.org>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * publishhed by the Free Software Foundation.
>   */
>  #include "stih410-clock.dtsi"
>  #include "stih407-family.dtsi"
> diff --git a/arch/arm/boot/dts/stih418.dtsi b/arch/arm/boot/dts/stih418.dtsi
> index 0efb3cd6a86e..f3f0a0e0f23c 100644
> --- a/arch/arm/boot/dts/stih418.dtsi
> +++ b/arch/arm/boot/dts/stih418.dtsi
> @@ -1,10 +1,7 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (C) 2014 STMicroelectronics Limited.
>   * Author: Peter Griffin <peter.griffin@linaro.org>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * publishhed by the Free Software Foundation.
>   */
>  #include "stih418-clock.dtsi"
>  #include "stih407-family.dtsi"

Acked-by: Patrice Chotard <patrice.chotard@st.com>

Thanks
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
