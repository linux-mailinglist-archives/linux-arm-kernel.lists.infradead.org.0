Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C6719A907
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 11:59:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UHcWMy8k35KKk4mmMT0nYKfJ79TG9EM2lQWmTJ5tPHU=; b=D/x7d+nQjJIomMlwU353oQgxh
	8SytUxp2jjc6HP9MBgOTeh0rub6tNTXKijQOCxNN+Ov0+bc3yQRlE76GTgh/fSJu6nWh/IMORLbUh
	CD6q3A7tY8F3b8VxHapVFGpBfopRJfNZHz/JS+atef7UGFXxL9SM7z1pguhJGQbJcGc83yu4tLJB0
	ZKp2RgvAn15P2Wzz1V2d1lAER3sO1ZF5ZIY9vw/a4w+o/LdDh6AQoN7gk7aEFwUc7gl7MRBtuY2OB
	ZEnkujGDoMZDrkd+IxpMLDilA2HnH0ZzF+RKhYJr2BHGjDtckqOqedVxRhcTlRttbKsgivD5BQK98
	02NiMhhxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJaA0-0001ro-H1; Wed, 01 Apr 2020 09:59:48 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJa9t-0001r2-Sz
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 09:59:43 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0319vKd6032339; Wed, 1 Apr 2020 11:59:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=Pt1yM70vh4tIGj07ZFpAsvF0bKTXjDmQwvgQcEtrRn4=;
 b=Gp9KhhVo5tI9V5IN66CGPa3s6kAinKqfrP5MS8w8bIT0LyV0pN4gE/Ggr1Qmz3cgCWyy
 UYmOGapTZrildYuAmXhxJA8mzCYUScaASxrPrxuSq44XaJL3J1m6AmX6xlyQWg2DUNFk
 2VEgl1tKs6lYjJPb3/di4TXb+PykGy0eoHLyTgK4PFAAjXx0vg8ugDFeQKdVmkwnLfGW
 Uwpck+kD5GZF9mMmU43d46V72DGTU6uSyaKp+OBE3sXhC42KLnXcAvOeHaI909x9/xOe
 SHSWNILO7scHjW/wF6tPRX4Ojm056m1T9aWEaX3yCpGfvupebLKo8X5dSvjDA8OSu1NY sw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 301vkdvsp1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 01 Apr 2020 11:59:39 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0A14B10002A;
 Wed,  1 Apr 2020 11:59:35 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id F12F521FE85;
 Wed,  1 Apr 2020 11:59:34 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.47) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 1 Apr
 2020 11:59:30 +0200
Subject: Re: [PATCH V3 13/22] ARM: dts: stm32: Enable GPU on AV96
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
References: <20200331175811.205153-1-marex@denx.de>
 <20200331175811.205153-14-marex@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <eb93de42-1fa2-e4ee-e104-3c8b57b64c40@st.com>
Date: Wed, 1 Apr 2020 11:59:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200331175811.205153-14-marex@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-03-31_07:2020-03-31,
 2020-03-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_025942_228963_6D6A5F71 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek

On 3/31/20 7:58 PM, Marek Vasut wrote:
> Enable the GPU present on the STM32MP1 populated on AV96.
> 
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: No change
> V3: No change
> ---
>   arch/arm/boot/dts/stm32mp157a-avenger96.dts | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index 27c48f988540..19a7a130b148 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -139,6 +139,10 @@ phy0: ethernet-phy@7 {
>   	};
>   };
>   
> +&gpu {
> +	status = "okay";
> +};
> +

GPU is now enable by so you can drop this patch.

regards
alex

>   &i2c1 {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&i2c1_pins_b>;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
