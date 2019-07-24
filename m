Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D1B7340F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:38:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lENkLm4L6JpA/cC8oNiJm2FZfsmkmjUYVCnkSs4WUL4=; b=CPjS1OhBM87fFU5Z2TTBSB3F2
	/vL4JpTXHa3h+O0ncyBvX3v97My7EW/xnoDJdB/JpjqUZtCjobUL6/c3OMB/IAqxtOmHctcGVRJHQ
	EcpHCYT+9OCvPBVmm76U9dDEqj0Ni6zVTMeLvr/qmrBD553ErIYyFUJ5MK3PTVE/YJOjc8FK6TwJ7
	VVythxZReqMTiFWAY41dnjOE6t20+lV9DFDPO94WdPnc/bVs2pXshh4d9OirrYIepaYa1CE8dPMdr
	IXZkhC4wBeenyGtgpeYX+gi0iA3E+BbCmjYAbBv3gsMYBe2ttjyLvPz8yFPbXPlwsi7ox/QCkfONU
	VH3tB/zkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKHp-0008R4-0g; Wed, 24 Jul 2019 16:38:41 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKHb-0008MX-Bc
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:38:29 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6OGZxKK003801; Wed, 24 Jul 2019 18:38:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=LIYF+WcEyHaSveQjneiWBz5V/SW/gazjJXI0PW9I0e8=;
 b=C2o/om1ItzSc3OdBwnt83hedbHngy+MPN/wTWy9hUMGQU+KNxgEHGTALLAHw+rV/VPpz
 BFdTu8JaBosBTkGFtxJixvbaSahxZEHmk0W+mGhYXlRZsfcljHKawomaQ0rhZ6UNVJDq
 kILBoPUa82+q8CTTOzCjTAIePw+qdzjyxkgJKVIqPOfa4rdwPkoLAz6qhWwHyunvh0W1
 TsP4xXwq6+qTbOfRK0M+MtUhWOisZOmOW5Cvg4sGAsFoG6jm+sZ+ITLFoQKRYQgprTNs
 PR0W9toqOQBoU/F5r3+YMZhPF+zmNwSeHnU0iwOOm+vDGwAyuwnfUc+H/Y1tOeSy/OLO 5w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tx603xbgc-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 24 Jul 2019 18:38:07 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EE96A38;
 Wed, 24 Jul 2019 16:38:06 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C259F5212;
 Wed, 24 Jul 2019 16:38:06 +0000 (GMT)
Received: from lmecxl0912.lme.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 24 Jul
 2019 18:38:06 +0200
Subject: Re: [PATCH 1/4] ARM: dts: stm32: add FMC2 NAND controller support on
 stm32mp157c
To: Christophe Kerello <christophe.kerello@st.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <linux@armlinux.org.uk>, <olof@lixom.net>,
 <arnd@arndb.de>
References: <1561128590-14621-1-git-send-email-christophe.kerello@st.com>
 <1561128590-14621-2-git-send-email-christophe.kerello@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <4b6a8df1-593e-44b2-4bb3-2af9f732396c@st.com>
Date: Wed, 24 Jul 2019 18:38:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1561128590-14621-2-git-send-email-christophe.kerello@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG5NODE2.st.com (10.75.127.14) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-24_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_093827_766616_7C329605 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, mcoquelin.stm32@gmail.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christophe

On 6/21/19 4:49 PM, Christophe Kerello wrote:
> This patch adds FMC2 NAND controller support used by stm32mp157c SOC.
> 
> Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
> ---
>   arch/arm/boot/dts/stm32mp157c.dtsi | 19 +++++++++++++++++++
>   1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
> index 0c4e6eb..f2bda28 100644
> --- a/arch/arm/boot/dts/stm32mp157c.dtsi
> +++ b/arch/arm/boot/dts/stm32mp157c.dtsi
> @@ -1239,6 +1239,25 @@
>   			dma-requests = <48>;
>   		};
>   
> +		fmc: nand-controller@58002000 {
> +			compatible = "st,stm32mp15-fmc2";
> +			reg = <0x58002000 0x1000>,
> +			      <0x80000000 0x1000>,
> +			      <0x88010000 0x1000>,
> +			      <0x88020000 0x1000>,
> +			      <0x81000000 0x1000>,
> +			      <0x89010000 0x1000>,
> +			      <0x89020000 0x1000>;
> +			interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
> +			dmas = <&mdma1 20 0x10 0x12000A02 0x0 0x0>,
> +			       <&mdma1 20 0x10 0x12000A08 0x0 0x0>,
> +			       <&mdma1 21 0x10 0x12000A0A 0x0 0x0>;

Please, don't use capital letter here.

> +			dma-names = "tx", "rx", "ecc";
> +			clocks = <&rcc FMC_K>;
> +			resets = <&rcc FMC_R>;
> +			status = "disabled";
> +		};
> +
>   		qspi: spi@58003000 {
>   			compatible = "st,stm32f469-qspi";
>   			reg = <0x58003000 0x1000>, <0x70000000 0x10000000>;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
