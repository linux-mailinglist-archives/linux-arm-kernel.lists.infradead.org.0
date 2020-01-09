Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B64A7135617
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:47:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MltrIUGU50eVH1LZKtAty/FDWdSb+izk6jefWjuviVE=; b=tWbngq9IGsrw0FRHAWIbrtIdb
	dQ01Bm7A9GTupihxmEizB67wMQOg39vQDs/dcYHiAbpYUvA5T+GwU1trjT7FNnCKgJjjFlS/O+yju
	sCSzTcr+akEShNYln2+eSZfSiIDQ3QbozBZ5/kgNvBroeTHCg2Mufv1vB8SNPTUMWc1SdfwchzEND
	OoyQ7svHrIDr6rUSMa54ywvSvZp1auk1i8I2KCJOXirtpQrNGLDC4J49o6qORobdwtGvAFJIckCYK
	d/V1UlBcunsbVIV0JsGg1okR4YINJgXNvVduJ5KRhAWf2dcaS4QNXWP+SkENVpcKwIUfxV2DzhVRD
	aLP0xS5cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUPb-0001Xc-0X; Thu, 09 Jan 2020 09:47:31 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUPT-0001Wl-1P
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:47:25 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0099bw3M010765; Thu, 9 Jan 2020 10:47:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=/srlc8j4yMgSJXREcaFnjnBeD6pKrkieKNXc+bew/uo=;
 b=HaRkAnCbc5l084A2XWXcD5uIsugiHHJo8D/Yzu21Jc/zbGVexB2QKczlGvjFovDUb78V
 0zxWDypWd1pzNGG5+lTYTxBc6LkyF5hhdvWN6ZOYsLJJMpxGg2tAft2LiWB/n1bRCqG2
 +wNp5yvieGlZ3IxuxpTRWiG7dARMlj5HnJIinj4LK2RwgS6f1b4RlSSmgRHvKJRQ/TRg
 +nvyQ4Ns+jzilthgf84M8jl3/Ts4OV/3JobOM08Ju6c26XoZWR1OPO2QxedkQ3vEqTEr
 8VXJZmVMoYEYRK8DAZJTcW2XbQPJJ7Q1aSsFsFAw3fmLcgk+ELP7e7e571esktT6K3Ng tg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2xakkb0yuh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 09 Jan 2020 10:47:17 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E76E3100038;
 Thu,  9 Jan 2020 10:47:12 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id DA8AE2A7915;
 Thu,  9 Jan 2020 10:47:12 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.46) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 9 Jan
 2020 10:47:12 +0100
Subject: Re: [PATCH] ARM: dts: stm32: Add power-supply for DSI panel on
 stm32f469-disco
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <mcoquelin.stm32@gmail.com>, 
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
References: <20200108132647.26131-1-benjamin.gaignard@st.com>
 <20200108132647.26131-2-benjamin.gaignard@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <d4d67add-9dd2-4589-42b1-226f63d1ed29@st.com>
Date: Thu, 9 Jan 2020 10:47:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200108132647.26131-2-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-09_02:2020-01-08,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_014723_361146_D927A0D8 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 1/8/20 2:26 PM, Benjamin Gaignard wrote:
> Add a fixed regulator and use it as power supply for DSI panel.
> 
> Fixes: 18c8866266 ("ARM: dts: stm32: Add display support on stm32f469-disco")
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>   arch/arm/boot/dts/stm32f469-disco.dts | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32f469-disco.dts b/arch/arm/boot/dts/stm32f469-disco.dts
> index f3ce477b7bae..4801565e19d7 100644
> --- a/arch/arm/boot/dts/stm32f469-disco.dts
> +++ b/arch/arm/boot/dts/stm32f469-disco.dts
> @@ -76,6 +76,13 @@
>   		regulator-max-microvolt = <3300000>;
>   	};
>   
> +	vdd_dsi: vdd-dsi {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd_dsi";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +
>   	soc {
>   		dma-ranges = <0xc0000000 0x0 0x10000000>;
>   	};
> @@ -155,6 +162,7 @@
>   		compatible = "orisetech,otm8009a";
>   		reg = <0>; /* dsi virtual channel (0..3) */
>   		reset-gpios = <&gpioh 7 GPIO_ACTIVE_LOW>;
> +		power-supply = <&vdd_dsi>;
>   		status = "okay";
>   
>   		port {
> 

Applied on stm32-next.

Thanks
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
