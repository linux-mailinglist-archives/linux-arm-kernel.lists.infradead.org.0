Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C33C47EAF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 11:45:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IG64yCLt4bhl4ImPVvfm0CrN8SJbIMGj9+14Fu8678k=; b=hr/pHZDZWJICjzXlI63NWv25w
	wl73xVtO0Nad9irxrxFu7OLbXhLr0PW4EZNEkT/Ze1XusIWqaUPem9FITzhvBqyQZXEwJ7dB1DNVU
	e2Q6x30XSA7wEu0koNsx7iIuCTYGdH8qsaEhiugkUImYxt+HtBVntxPPf0Fkik6XsoqAYjvfTAJXH
	dArpgx6h1WoErr/Iepy3kW9I3WkFiGuJeEwAbtjc+A4O0dOZ0JKVsEMf4/U/JYnC2If3V7/dI27FR
	YQV1+qiW7iY2hQqWavo+esNAB9E55DAoEckezwR1Oo/82sVlAIZAj0GVbaPvQqKI49DOIE8x6ci65
	gbisXQWcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcoCA-0002T5-Ue; Mon, 17 Jun 2019 09:44:58 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcoBr-0002QJ-LZ
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 09:44:41 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5H9gHDt003329; Mon, 17 Jun 2019 11:44:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : from : message-id : date : mime-version : in-reply-to : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=vSNS/bq0veNCYFxKoKYyEQdlakEJCBWCIdyquEymrxE=;
 b=KgqofR0T2LgJCXq1TE3zLLmC4ABVK94VpPhryD+CPlLTkwdOCoBRSbYv9cczm2YNKKlO
 AfWoFBnANPtX4y7W/fwtI9XB+/8LocEuw7wVMGt5UNd8Bb8LRih0aPaPr1v7U0oihnFk
 5u8X7eMB6ZP+ZBoMSYCI5OkIG2lgBoC+nIlj4KfK9/AGTxVEB1Gby+dshQzUow57V7hq
 8pAXfOIiJhKEZ4vqHFz7KB6PdmQLc/dVzLeNb4I0DTPDpVkn3UdFPh31Kcmq8DlStJrS
 zUTQxz0cWb1LmNgXqiQHtgu7Hnu9yGVEKk7xLJjKFeEeqn/8IiGE+42HUrZpxdydlbu6 OQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t4peu1nxf-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 17 Jun 2019 11:44:33 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 097E259;
 Mon, 17 Jun 2019 09:44:33 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DDA2B25CC;
 Mon, 17 Jun 2019 09:44:32 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 17 Jun
 2019 11:44:32 +0200
Subject: Re: [PATCH] ARM: dts: stm32: add sai id registers to stm32mp157c
To: Olivier Moysan <olivier.moysan@st.com>,
 <linux-stm32@st-md-mailman.stormreply.com>, <robh@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <1560253556-18399-1-git-send-email-olivier.moysan@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <4f3f0728-d9b3-dcbc-8dfe-e7f55a9bd204@st.com>
Date: Mon, 17 Jun 2019 11:44:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1560253556-18399-1-git-send-email-olivier.moysan@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-17_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_024440_004732_BE8262D0 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olivier

On 6/11/19 1:45 PM, Olivier Moysan wrote:
> Add identification registers to address range
> of SAI DT parent node, for stm32mp157c.
> 
> Change-Id: I696363794fab59ba8d7869b3ffbc041dacdf28de
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
>   arch/arm/boot/dts/stm32mp157c.dtsi | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
> index e98aad37ff9e..0c4e6ebc3529 100644
> --- a/arch/arm/boot/dts/stm32mp157c.dtsi
> +++ b/arch/arm/boot/dts/stm32mp157c.dtsi


Applied on stm32-next. Next time, don't forget to remove your gerrit 
changeID please.

Thanks.
Alex



> @@ -746,7 +746,7 @@
>   			#address-cells = <1>;
>   			#size-cells = <1>;
>   			ranges = <0 0x4400a000 0x400>;
> -			reg = <0x4400a000 0x4>;
> +			reg = <0x4400a000 0x4>, <0x4400a3f0 0x10>;
>   			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
>   			resets = <&rcc SAI1_R>;
>   			status = "disabled";
> @@ -778,7 +778,7 @@
>   			#address-cells = <1>;
>   			#size-cells = <1>;
>   			ranges = <0 0x4400b000 0x400>;
> -			reg = <0x4400b000 0x4>;
> +			reg = <0x4400b000 0x4>, <0x4400b3f0 0x10>;
>   			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
>   			resets = <&rcc SAI2_R>;
>   			status = "disabled";
> @@ -809,7 +809,7 @@
>   			#address-cells = <1>;
>   			#size-cells = <1>;
>   			ranges = <0 0x4400c000 0x400>;
> -			reg = <0x4400c000 0x4>;
> +			reg = <0x4400c000 0x4>, <0x4400c3f0 0x10>;
>   			interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
>   			resets = <&rcc SAI3_R>;
>   			status = "disabled";
> @@ -1164,7 +1164,7 @@
>   			#address-cells = <1>;
>   			#size-cells = <1>;
>   			ranges = <0 0x50027000 0x400>;
> -			reg = <0x50027000 0x4>;
> +			reg = <0x50027000 0x4>, <0x500273f0 0x10>;
>   			interrupts = <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>;
>   			resets = <&rcc SAI4_R>;
>   			status = "disabled";
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
