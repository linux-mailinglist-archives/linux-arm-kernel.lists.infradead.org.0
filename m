Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5575A76F0B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 18:27:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7oU8yYWFOecpmxUtEbEQb42E3Z9Pws/3liZlJULsVyk=; b=UKbjJqzMRXXb7g2kENZzFBeCS
	PSXJP6XbPEhgvcjlnskQBxV9i+avKVILKTbEKwHkZUh/u9brFDaaMyAyxRJ0w3GmGLQJaK6MpA1+P
	4vNXBe+Bth0SvCx7lZ8WIvnjQmiXCKYUOXxXfPyDGbCaInIvoYwQZrzYBkawGw03aYthH/0vc5sKy
	aEIoR9+8rM3Z9MmxZDWZCBn9rouxxPKK/IJAS7UYHZ1HsWaj5vhdQ7Vx39HD/KF0/nnUCfcIQp/KH
	7wt3/+SP0u9i9csLEYE7qGko4DyYmcXU+MwsAf4wrA08BycgQoHK4CZ7Dj9Rvf0cG7rCUk1nnoG7e
	7o3nYTsWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr33w-0000zr-Ef; Fri, 26 Jul 2019 16:27:20 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr33k-0000zT-8c
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 16:27:09 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6QG7fWq014148; Fri, 26 Jul 2019 18:27:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=n6HKe0PgjUg51eRmGPMx0Q+MwoGoF4rstkH/lFHzWaM=;
 b=JsisJ/fpUkrGVDfSbnAzLrhU0vpu091fbUaYeaRC1Do+Xg5R8AE1Wdflko+wosp4+R7F
 ya+MTVXY6X0yGUrx2znky65+IAwBMKRttphn0UXtGe3GuDxucpAACX+UQmTk3q3poqeC
 /DcYKUe81hr1OIfNwuVYApiAUVhWiMLl2SDq6d1fn6P/iPB0ORPk8iXb+1Hy1XIeQQA8
 gM2gLphuWIzte4rglgFqd7h56FKz+gcjVNe5DiVtVuYPCroIYfnHwgXM83CWu3yPYQGz
 X3sch1vB/47ieQ44MWFKSwACSBmJYcw/smxwLA/hkavoRMvNjBkqXJ9CtUS6zsD0HViW dw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2tx60absu1-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 26 Jul 2019 18:27:03 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 10B1231;
 Fri, 26 Jul 2019 16:27:03 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DF60D4FD0;
 Fri, 26 Jul 2019 16:27:02 +0000 (GMT)
Received: from lmecxl0912.lme.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 26 Jul
 2019 18:27:02 +0200
Subject: Re: [PATCH] ARM: dts: stm32: fix -Wall W=1 compilation warnings for
 can1_sleep pinctrl
To: Erwan Le Ray <erwan.leray@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
References: <1561972686-23281-1-git-send-email-erwan.leray@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <8cb628b9-dbbf-98d6-e09a-2ecc082315d4@st.com>
Date: Fri, 26 Jul 2019 18:27:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1561972686-23281-1-git-send-email-erwan.leray@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-26_12:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_092708_593263_9E080FB0 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, bich.hemon@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Erwan		

On 7/1/19 11:18 AM, Erwan Le Ray wrote:
> Fix compilations warnings detected by -Wall W=1 compilation option:
> - node has a unit name, but no reg property
> 
> Signed-off-by: Erwan Le Ray <erwan.leray@st.com>
> 
> diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
> index 140a983..ce98fd8 100644
> --- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
> @@ -427,7 +427,7 @@
>   				};
>   			};
>   
> -			m_can1_sleep_pins_a: m_can1-sleep@0 {
> +			m_can1_sleep_pins_a: m_can1-sleep-0 {
>   				pins {
>   					pinmux = <STM32_PINMUX('H', 13, ANALOG)>, /* CAN1_TX */
>   						 <STM32_PINMUX('I', 9, ANALOG)>; /* CAN1_RX */
> 

Thanks for cleaning the STM32 DT. Applied on stm32-next. Note that I 
changed commit title to indicate which STM32 platform is targeted by 
this patch.

Regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
