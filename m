Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 092D04828D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RV89DpcGnjiEPtnn8QE/0gvDysBrBNOqGbpVedQ6iT4=; b=skC1Aq4v1wh8oNOQ4o8WPPRfx
	txCbawB9FYCUeOEEOxKwK7XFdzoGQUa3sYfhe73/rkVY9zZi2NOYIFh2gEX0jrkbndpIuVtIoAa4+
	LsNWao331Akofi06agy4KgbIYMnOowl6lQ446EyDbVJbF4WXuoY9NZmmbd6vhFYXQv7eWXXBiep/H
	r88HTU8SLTRxrHqARJprWly+Ym5mftlQ8uHW/aaiKRWphCvm0ALVqmW2EflSXGTNW+C5Hd878SrUs
	0z4meA/HXllPwkSuURcl6hrb/RGzEVj/6nyptQse5jhhvkFlUXVtSEHfLc9sRnGOZMdD+AnLuBFsa
	oFjBgw6Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqr9-0005rb-V0; Mon, 17 Jun 2019 12:35:28 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqqg-0004Ud-5e
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:34:59 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5HCVDen016387; Mon, 17 Jun 2019 14:34:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=Bf2mCAHJCk8x6Ixnh6dSc1NHiHAHnvfKgorvDCTAyto=;
 b=fxfACKVNj9ccB9QXV/rSwNlnRBZyRuirF8gZAmOWFdFkcnq/QNamAG9mKqjxUkRygFJl
 eMmtdQLPH+8oEhDel/Onx9vbwaJx2o1EQsx0Pe6fgP0nbCHpQ4PfJzmFHGJZ1kdpo80a
 A7S7/wYgYt/BFcgUl7t7Hxg8kZ4ZIfR5WWgZZoln7Qs86Su6Yu4cT9GG8zx9BKeVrC5w
 rzsGAqNSbL4Srh7uM94Dzb3sq7sti9Kox5HCfi0kxNN4QX4IwXZphIa3p1cFIRsd0tzf
 VHT184Cw3OkzKtp3NtnbqURzo2mUDKpfcz2p1qWBBbKSZozQFJtoi6QoUZKwsqAaXc1H mg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t4qjhtf0b-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 17 Jun 2019 14:34:51 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 916DE34;
 Mon, 17 Jun 2019 12:34:50 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 673C029CD;
 Mon, 17 Jun 2019 12:34:50 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 17 Jun
 2019 14:34:49 +0200
Subject: Re: [PATCH 1/1] ARM: dts: stm32: replace rgmii mode with rgmii-id on
 stm32mp15 boards
To: Christophe Roullier <christophe.roullier@st.com>, <robh@kernel.org>,
 <davem@davemloft.net>, <joabreu@synopsys.com>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <peppe.cavallaro@st.com>
References: <20190617085018.20352-1-christophe.roullier@st.com>
 <20190617085018.20352-2-christophe.roullier@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <c53808dd-f1d2-2865-7d45-fa2ca875b95a@st.com>
Date: Mon, 17 Jun 2019 14:34:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190617085018.20352-2-christophe.roullier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-17_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_053458_509027_6BA15055 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, andrew@lunn.ch, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christophe

On 6/17/19 10:50 AM, Christophe Roullier wrote:
> On disco and eval board, Tx and Rx delay are applied (pull-up of 4.7k
> put on VDD) so which correspond to RGMII-ID mode with internal RX and TX
> delays provided by the PHY, the MAC should not add the RX or TX delays
> in this case
> 
> Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
> ---
>   arch/arm/boot/dts/stm32mp157a-dk1.dts | 2 +-
>   arch/arm/boot/dts/stm32mp157c-ev1.dts | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-dk1.dts b/arch/arm/boot/dts/stm32mp157a-dk1.dts
> index 098dbfb06b61..2c105740dfad 100644
> --- a/arch/arm/boot/dts/stm32mp157a-dk1.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-dk1.dts
> @@ -51,7 +51,7 @@
>   	pinctrl-0 = <&ethernet0_rgmii_pins_a>;
>   	pinctrl-1 = <&ethernet0_rgmii_pins_sleep_a>;
>   	pinctrl-names = "default", "sleep";
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>   	max-speed = <1000>;
>   	phy-handle = <&phy0>;
>   
> diff --git a/arch/arm/boot/dts/stm32mp157c-ev1.dts b/arch/arm/boot/dts/stm32mp157c-ev1.dts
> index b6aca40b9b90..ab1393caf799 100644
> --- a/arch/arm/boot/dts/stm32mp157c-ev1.dts
> +++ b/arch/arm/boot/dts/stm32mp157c-ev1.dts
> @@ -79,7 +79,7 @@
>   	pinctrl-0 = <&ethernet0_rgmii_pins_a>;
>   	pinctrl-1 = <&ethernet0_rgmii_pins_sleep_a>;
>   	pinctrl-names = "default", "sleep";
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>   	max-speed = <1000>;
>   	phy-handle = <&phy0>;
>   
> 

Applied on stm32-next.

Thanks.
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
