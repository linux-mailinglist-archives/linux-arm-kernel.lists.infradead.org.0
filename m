Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E99317EE76
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 10:10:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q6R1sDTN79ZzIZKg1n97P+q8ldDQ0VLPvyVYWsTfZ9E=; b=Uv7vi1/RETkJozyLxS/nOJwzN
	ulOaXSWOBLEWPn7pD98/FUa9iAsWdrhKdWO2WFm7aU+KxUboo/+5RQ4Ca41EZNbyCL7mnBEHeO7e/
	bPmPdcPc/cFA1BqXM230MZLhSDh0MdnaCUGlg3MVi+ztC+MG0+eu/gvgVhoZLDc4YUieXZC8mcGdW
	ZNBKeJP2kxu/E1cHiBwUfh0yEnPj+ynCIaoz2l9eFKvx1eYE0Kxi7o9vWAT0PZdT4T8zdXgX4ZhjK
	tPQkhQaE5+gZ2xLpEnq4uvhDI6zIN2Ulilazexfxd3gsMkOIuNlZ3DifedFTacfFz/x9qNpcRgR1t
	oLXxfK54g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htSdq-0002lv-Cc; Fri, 02 Aug 2019 08:10:22 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htSdO-0002lD-VZ
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 08:09:56 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7288Bvv009958; Fri, 2 Aug 2019 10:09:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : from : message-id : date : mime-version : in-reply-to : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=gaaRv63ENU5q6qe9vvfpQktX48Za4fd5PyQsVa2fLQg=;
 b=zm2XtCa+Wcf132W4eBFa5nnuhBxeZPXJGsuW9Hsc0wHERRENLrzDqM4vXQwnRPTmazFc
 DazbXClMUkHKwDWRgMag6Gr5Od5LGuMhWYn2lfjfgEJCMSpHZWpv2QsoFCxVunj3m2mk
 Vs/uVQ6zTniQTUTkQiJ5xcPC2lVQaLteHEA2jV21LnWqvci5CgcWIMKYFiDP86xpgaEv
 DBF8T5Ft2BGJ8gVf7WEAi/RIG2srVnnNgQ/NVbl29JhXLh/CgCiffBpn8OqOuieaV/Qg
 BJn8J3NTePBQlv/OF8D6tifdr8tdjeBRAghQ6D1KN+jBBEv/IvpzgaH9VSISSzd2nTt3 3w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2u2jp4t6fk-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 02 Aug 2019 10:09:48 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AE45638;
 Fri,  2 Aug 2019 08:09:47 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 98947207455;
 Fri,  2 Aug 2019 10:09:47 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.47) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 2 Aug
 2019 10:09:47 +0200
Subject: Re: [PATCH] ARM: dts: stm32: add DFSDM pins to stm32mp157c
To: Olivier Moysan <olivier.moysan@st.com>,
 <linux-stm32@st-md-mailman.stormreply.com>, <robh@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <1564645567-13156-1-git-send-email-olivier.moysan@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <a95e5d74-c8e3-42f9-cabf-f42623aee255@st.com>
Date: Fri, 2 Aug 2019 10:09:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1564645567-13156-1-git-send-email-olivier.moysan@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-02_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_010955_317317_26FBEBF6 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olivier

On 8/1/19 9:46 AM, Olivier Moysan wrote:
> Add DFSDM pins to stm32mp157c.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
>   arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 39 +++++++++++++++++++++++++++++++
>   1 file changed, 39 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
> index 9eaec9bf8cb8..f96a928cbc49 100644
> --- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
> @@ -230,6 +230,45 @@
>   				};
>   			};
>   

I use to only take pinconfig which are used in board. So please resend 
with the "board patch".

regards
Alex


> +			dfsdm_clkout_pins_a: dfsdm-clkout-pins-0 {
> +				pins {
> +					pinmux = <STM32_PINMUX('B', 13, AF3)>; /* DFSDM_CKOUT */
> +					bias-disable;
> +					drive-push-pull;
> +					slew-rate = <0>;
> +				};
> +			};
> +
> +			dfsdm_clkout_sleep_pins_a: dfsdm-clkout-sleep-pins-0 {
> +				pins {
> +					pinmux = <STM32_PINMUX('B', 13, ANALOG)>; /* DFSDM_CKOUT */
> +				};
> +			};
> +
> +			dfsdm_data1_pins_a: dfsdm-data1-pins-0 {
> +				pins {
> +					pinmux = <STM32_PINMUX('C', 3, AF3)>; /* DFSDM_DATA1 */
> +				};
> +			};
> +
> +			dfsdm_data1_sleep_pins_a: dfsdm-data1-sleep-pins-0 {
> +				pins {
> +					pinmux = <STM32_PINMUX('C', 3, ANALOG)>; /* DFSDM_DATA1 */
> +				};
> +			};
> +
> +			dfsdm_data3_pins_a: dfsdm-data3-pins-0 {
> +				pins {
> +					pinmux = <STM32_PINMUX('F', 13, AF6)>; /* DFSDM_DATA3 */
> +				};
> +			};
> +
> +			dfsdm_data3_sleep_pins_a: dfsdm-data3-sleep-pins-0 {
> +				pins {
> +					pinmux = <STM32_PINMUX('F', 13, ANALOG)>; /* DFSDM_DATA3 */
> +				};
> +			};
> +
>   			ethernet0_rgmii_pins_a: rgmii-0 {
>   				pins1 {
>   					pinmux = <STM32_PINMUX('G', 5, AF11)>, /* ETH_RGMII_CLK125 */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
