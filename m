Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F38A01BC53A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:31:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mnr7W4vdfLP1YQV91GoF6KKR83DeBcPO2E67F88eClk=; b=cM+Fq/C8tt/XOxPRvgq17O1g/
	da2gLcxjIc8lorLOa0HsKhK0wvL/SeBDiFHN/+uOFT+tprXOC4jq9C8Q4KtGixtokqYzNfRVEHjXS
	4lNq68ftJWYuNtqEP5/dQ4xz67qdo3is16xcLoWQQgrfArmdoiJS7VESQMh3kTTIqwCXELiiwUm1B
	cgtOKD/rRFR60YRBSDT6K8LB3VpHjNDJWzG2XdOahZmDBRrR+TNIH30FY5BAKZ/0YVwR1VfIpzrMc
	8j9jzWUIHV4WMJYm203QRMKxvv2WBQTMU5phgbZFE/48TQJ3KJC4UJ0NBo4H8HsFt4ggH+FBiLq1U
	wrCV6cLnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTT8Z-0004L3-M4; Tue, 28 Apr 2020 16:31:11 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTT8R-0004KL-6F
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:31:04 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03SGSBjo006731; Tue, 28 Apr 2020 18:30:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=ic7llUtkSK0ilmom6xcazPRbfZzypbw4vTA5QnUR8n0=;
 b=LeCX3ZjlnxfQNQtSeZlUTzxTpILz/ztv+4YcNIGtzEBUgAHIrF8edghSdGAJeiMmSsfi
 ICedDnNomNemROz4MEpcGqaBER4nF5KihKaiKLpluJSAEvnj3QnSFDn+QCnzrSB9BO20
 EX5PBH2uN98p19LzH6clzmKcRxc+g6gLE7AeDgmCklmBwnJu/ZcJuZWvbiwgeF/XihHd
 pVZXxbcQfb7ctWhRm8epu3ReWRfRwpLLaWdDZwOL53MtcbaRUh8biIIH6NvjKFFqt4aQ
 V0IGDT2wyZv1jHdnm8ZvDIy4UkWDJb1SegVSEg8jAoeIt7Dh2YEukh1s3odv6Vvq01OI eQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30n4j5w64w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Apr 2020 18:30:58 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2F23C10002A;
 Tue, 28 Apr 2020 18:30:57 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 204942A497E;
 Tue, 28 Apr 2020 18:30:57 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 28 Apr
 2020 18:30:53 +0200
Subject: Re: [PATCH v2] ARM: dts: stm32: add cortex-M4 pdds management in
 Cortex-M4 node
To: Arnaud Pouliquen <arnaud.pouliquen@st.com>, Rob Herring <robh@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>
References: <20200401150339.7933-1-arnaud.pouliquen@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <21895154-7930-8354-0ddb-5c646cf6840e@st.com>
Date: Tue, 28 Apr 2020 18:30:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200401150339.7933-1-arnaud.pouliquen@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-28_11:2020-04-28,
 2020-04-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_093103_537687_905168E3 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fabien Dessenne <fabien.dessenne@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnaud

On 4/1/20 5:03 PM, Arnaud Pouliquen wrote:
> Add declarations related to the syscon pdds for deep sleep management.
> 
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
> ---
> v2: patch rebasing
> 
>   arch/arm/boot/dts/stm32mp151.dtsi | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
> index 5260818543e5..a40772eac487 100644
> --- a/arch/arm/boot/dts/stm32mp151.dtsi
> +++ b/arch/arm/boot/dts/stm32mp151.dtsi
> @@ -1124,6 +1124,11 @@
>   			};
>   		};
>   
> +		pwr_mcu: pwr_mcu@50001014 {
> +			compatible = "syscon";
> +			reg = <0x50001014 0x4>;
> +		};
> +
>   		exti: interrupt-controller@5000d000 {
>   			compatible = "st,stm32mp1-exti", "syscon";
>   			interrupt-controller;
> @@ -1700,6 +1705,7 @@
>   			resets = <&rcc MCU_R>;
>   			st,syscfg-holdboot = <&rcc 0x10C 0x1>;
>   			st,syscfg-tz = <&rcc 0x000 0x1>;
> +			st,syscfg-pdds = <&pwr_mcu 0x0 0x1>;
>   			status = "disabled";
>   		};
>   	};
> 

Applied on stm32-next.

Thanks.
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
