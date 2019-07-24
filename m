Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFEF97341D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XGByZjBLjM4kFC/SIrjk5UxaeNhPFX5Q3sQz8LhnuEA=; b=jqMW6X1l7d9l47QIYtQX+0phG
	V6b3Liq6qx8Jnfy3QlvYl4elOEEzuaN0UvV56vJhxWYevO/RwpBMBNWC1WRwTvbEJTqyCRXH2RHbm
	VcdKR80WiYRxONd9XNwqlDah1AJJw7YUq/C9yreolvCYg1ZzI3dPEzmocNXT39r/E5tPoPT0UPkA7
	3LUyxHoGP/wcEgbjW/BwIl3VIBiKp8TNJ8jcJoU8Ay18cyukraLtirqXOjPwzda9W2hxP1DjVwaE7
	KOdRhkxGx/bpy2IraioU0P7McvB8lfO+gjnAB3NooTKZ4l2EnoIjRDuWrUDfnP9MbgmgPrP6/hc4b
	PQR2veJiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKJz-0001wJ-Vi; Wed, 24 Jul 2019 16:40:55 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKJk-0001vf-En
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:40:43 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6OGbU5Y003589; Wed, 24 Jul 2019 18:40:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : from : message-id : date : mime-version : in-reply-to : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=Gu8PL+HPgCs9mmUoJ3vhnljVENbzJVpSz1qAO84aocw=;
 b=JAsZuyU3tjo6HSeBGSxRmEhD7qoTjF+evI+JBGMBu9r3sxJs6ep4hXIYfFolF7+p4goG
 B+gM6Tsdm/GlTegxus7N9bpX94fI5JBvOnIkaqlvcylFBHeSIWrIxwgUg+uoQKsCIih3
 EbnrC1IdesihaOFkTJyJeC+018uaJRUjYYB6TaqXzvkNzy8EU0HVRTEqmErvDzQUq/Wr
 0HgtY9riCzrr6gOicQNZroYF6c+nCp/XqClpqra3FOuz+j/g5iZs0596NGz4rPtc0vne
 SWT4wWoHSN4vAEK9Dw1iooBqOATr/67xRRMzEY4LQUImbfiLQyOf7M0zzThPzSaVpu9A dw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2tx607xgbp-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 24 Jul 2019 18:40:34 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 71EBF31;
 Wed, 24 Jul 2019 16:40:33 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 55A73521B;
 Wed, 24 Jul 2019 16:40:33 +0000 (GMT)
Received: from lmecxl0912.lme.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 24 Jul
 2019 18:40:32 +0200
Subject: Re: [PATCH] ARM: dts: stm32: add audio codec support on
 stm32mp157a-dk1 board
To: Olivier Moysan <olivier.moysan@st.com>,
 <linux-stm32@st-md-mailman.stormreply.com>, <robh@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <1562327580-19647-1-git-send-email-olivier.moysan@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <27476214-07fe-886b-1cab-20902837f29c@st.com>
Date: Wed, 24 Jul 2019 18:40:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1562327580-19647-1-git-send-email-olivier.moysan@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-24_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_094040_798615_064F0DEF 
X-CRM114-Status: GOOD (  18.98  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olivier

On 7/5/19 1:53 PM, Olivier Moysan wrote:
> Add support of Cirrus cs42l51 audio codec on stm32mp157a-dk1 board.
> Configuration overview:
> - SAI2A is the CPU interface used for the codec audio playback
> - SAI2B is the CPU interface used for the codec audio record
> - SAI2A is configured as a clock provider for the audio codec
> - SAI2A&B are configured as slave of the audio codec
> - SAI2A&B share the same interface of the audio codec
> 
> Note:
> In master mode, cs42l51 audio codec provides a bitclock
> at 64 x FS, regardless of data width. This means that
> slot width is always 32 bits.
> Set slot width to 32 bits and slot number to 2
> in SAI2A&B endpoint nodes, to match this constraint.
> dai-tdm-slot-num and dai-tdm-slot-width properties are used here,
> assuming that i2s is a special case of tdm, where slot number is 2.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
>   arch/arm/boot/dts/stm32mp157a-dk1.dts | 89 +++++++++++++++++++++++++++++++++++
>   1 file changed, 89 insertions(+)
> 

...

>   
> +&sai2 {
> +	clocks = <&rcc SAI2>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
> +	clock-names = "pclk", "x8k", "x11k";
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&sai2a_pins_a>, <&sai2b_pins_b>;
> +	pinctrl-1 = <&sai2a_sleep_pins_a>, <&sai2b_sleep_pins_b>;
> +	status = "okay";
> +
> +	sai2a: audio-controller@4400b004 {
> +		#clock-cells = <0>;
> +		dma-names = "tx";
> +		clocks = <&rcc SAI2_K>;
> +		clock-names = "sai_ck";
> +		status = "okay";
> +
> +		sai2a_port: port {
> +			sai2a_endpoint: endpoint {
> +				remote-endpoint = <&cs42l51_tx_endpoint>;
> +				format = "i2s";
> +				mclk-fs = <256>;
> +				dai-tdm-slot-num = <2>;
> +				dai-tdm-slot-width = <32>;
> +			};
> +		};
> +	};
> +
You could use label to overload sai2a and sai2b. no ?

> +	sai2b: audio-controller@4400b024 {
> +		dma-names = "rx";
> +		st,sync = <&sai2a 2>;
> +		clocks = <&rcc SAI2_K>, <&sai2a>;
> +		clock-names = "sai_ck", "MCLK";
> +		status = "okay";
> +
> +		sai2b_port: port {
> +			sai2b_endpoint: endpoint {
> +				remote-endpoint = <&cs42l51_rx_endpoint>;
> +				format = "i2s";
> +				mclk-fs = <256>;
> +				dai-tdm-slot-num = <2>;
> +				dai-tdm-slot-width = <32>;
> +			};
> +		};
> +	};
> +};
> +
>   &sdmmc1 {
>   	pinctrl-names = "default", "opendrain", "sleep";
>   	pinctrl-0 = <&sdmmc1_b4_pins_a>;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
