Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48564E4802
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 12:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C4eQ8qP2cZJd2VnHwfjFam1B+2HfZ7aPz99Irj0tef8=; b=Seoukm1lQIO6s4BI7dk78IFO8
	+BU2IL82u5yKbVVrZP5qfyy45JgYhvaY5CT9AGan422446NAlIIWbHkaU9PTo7XfRARTFoSfmihIa
	d1kFDb7df6ORKzczV17SDuTD2WYaqM9Thoaf0BuD7k/SurbmLENfIUgf+Lg/e60e0JjcIeZCZ5qgs
	szzTWnUh/kE8xtS7+WLT1XPpIPp+LfPYnOs4nMK6VxfuXs4zYkP0tKaGnmoq8o3beW9caiyr5GSfK
	WyTHJGLG4RgMDRnOKz4EfinCD4qvJURIj3GMNNYAVp/JrLDblsOv0oul9/K5Et6NRojjTwkaNIXWY
	cwb+T1mMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNwOq-0007p6-0e; Fri, 25 Oct 2019 10:00:52 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNwOb-0007o7-FN
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 10:00:39 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9P9kCW5017181; Fri, 25 Oct 2019 12:00:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : from : message-id : date : mime-version : in-reply-to : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=cozhLOP/37XHtN9akdSzaH/2qnPq6K4echcclxy+KZc=;
 b=TXkFXHkPEU3YQyVYzb9uETHLewUEcm4VYOkFLCIiagWyg6yvr5VtyDVLt1xM6EIfK+YB
 rrT0QWElr6UQEkCJOASOn4AkLgZh+1KzAT3puvp6+7kKmyuqcTGjb93r1WIdAji4sNom
 3jngv160BScgGbaR16DayNw4QEBbIBQfakPDMwADPbdpBHWnX3h7mwycs+N1HE1cLYZ3
 G8vfBOtTNPdShRWDCXXcJFDKptjG9EfnQ0yfpUhNPFuahMaFI6Js12KGoJzDosbS7Qng
 XaYdnMmZDUCgVsWrOFJQdk072kI8Rpiuym9Y60R8RxrcYLDTFde+y6g1Mgfyv6Q80aJK HA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vt9s56yt1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 25 Oct 2019 12:00:32 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 22A8410002A;
 Fri, 25 Oct 2019 12:00:32 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0F5062C2E7C;
 Fri, 25 Oct 2019 12:00:32 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.47) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 25 Oct
 2019 12:00:31 +0200
Subject: Re: [PATCH] ARM: dts: stm32: add hdmi audio support to
 stm32mp157a-dk1 board
To: Olivier Moysan <olivier.moysan@st.com>,
 <linux-stm32@st-md-mailman.stormreply.com>, <robh@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20191010130247.32027-1-olivier.moysan@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <c08018be-a785-57d4-d74f-833d644efff1@st.com>
Date: Fri, 25 Oct 2019 12:00:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191010130247.32027-1-olivier.moysan@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-25_05:2019-10-23,2019-10-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_030037_946830_1C460711 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi olivier

On 10/10/19 3:02 PM, Olivier Moysan wrote:
> Add HDMI audio support through Sil9022 HDMI transceiver
> on stm32mp157a-dk1 board.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
>   arch/arm/boot/dts/stm32mp157a-dk1.dts | 27 ++++++++++++++++++++++++++-
>   1 file changed, 26 insertions(+), 1 deletion(-)
> 

Applied on stm32-next.

Thanks.
Alex

> diff --git a/arch/arm/boot/dts/stm32mp157a-dk1.dts b/arch/arm/boot/dts/stm32mp157a-dk1.dts
> index 5ad4cef9e971..7a20640c00a9 100644
> --- a/arch/arm/boot/dts/stm32mp157a-dk1.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-dk1.dts
> @@ -92,7 +92,7 @@
>   			"Playback" , "MCLK",
>   			"Capture" , "MCLK",
>   			"MICL" , "Mic Bias";
> -		dais = <&sai2a_port &sai2b_port>;
> +		dais = <&sai2a_port &sai2b_port &i2s2_port>;
>   		status = "okay";
>   	};
>   };
> @@ -173,6 +173,7 @@
>   		reset-gpios = <&gpioa 10 GPIO_ACTIVE_LOW>;
>   		interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
>   		interrupt-parent = <&gpiog>;
> +		#sound-dai-cells = <0>;
>   		status = "okay";
>   
>   		ports {
> @@ -185,6 +186,13 @@
>   					remote-endpoint = <&ltdc_ep0_out>;
>   				};
>   			};
> +
> +			port@3 {
> +				reg = <3>;
> +				sii9022_tx_endpoint: endpoint {
> +					remote-endpoint = <&i2s2_endpoint>;
> +				};
> +			};
>   		};
>   	};
>   
> @@ -370,6 +378,23 @@
>   	};
>   };
>   
> +&i2s2 {
> +	clocks = <&rcc SPI2>, <&rcc SPI2_K>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
> +	clock-names = "pclk", "i2sclk", "x8k", "x11k";
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&i2s2_pins_a>;
> +	pinctrl-1 = <&i2s2_pins_sleep_a>;
> +	status = "okay";
> +
> +	i2s2_port: port {
> +		i2s2_endpoint: endpoint {
> +			remote-endpoint = <&sii9022_tx_endpoint>;
> +			format = "i2s";
> +			mclk-fs = <256>;
> +		};
> +	};
> +};
> +
>   &ipcc {
>   	status = "okay";
>   };
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
