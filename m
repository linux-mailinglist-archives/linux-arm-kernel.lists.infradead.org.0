Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1DC1C834C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 09:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qJ6nQh3C6QH2G5jgPamw8qpTgXkO0WHjypRmxd7SJOo=; b=tUDO7KjWXZVymctlZ2hnRpbt2
	rIzAe2vua/+RKuOIomj14/89s5U+62Q8Mg7+1RIiC2qNH9wTYfuNYRKwxFvZ2ZDRs+GUO7nkkoZTR
	prXKmgQHnynyKQu2aE9gYKMSoYe9z+NKCCB5y5X1K5dt27FEPjybpw0fqZg70/q3jkIlx+AaQb+ZK
	SKh8/fSzobHxXMI/NmHblQYeMVSCOy/je6t53rqC4FF5oTmBU+s+a4ziKsCHC0JmV3OHiTYPZ4//w
	YPI2n67FWIFUBC0o55015VG3b45HXWexAHDkdAEoQhOiidm6Rz1pWUw7phZyGziPrS6FqVqu+diyE
	fpKuOkTiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWako-0004E9-5j; Thu, 07 May 2020 07:15:34 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWakf-0004Ce-R1
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 07:15:29 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0477DNFR027002; Thu, 7 May 2020 09:15:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=L51sRJlfOsw4Y7/MDpiNrdjYapAryMpWAkXSpi9QQMY=;
 b=HRxjFxukXyKSMaGNQBkkWJ6P9pwuXC6m/u402TaI5cIh+7kndEykDz4wN80nn4MXVHHa
 1j28srPK3cmTG83qYegPsTqT5F0gdgvGw4J9TN8Hcjn4NtkuuOqhzi//3ss9UOPEnwNF
 CdS3z2fuw6rQxe5O6VNqjTmvjfwSuV6sBAYejGHA1Hpp6eWK7LlInQE2rS1UHDze5w/p
 qSwWGuTMx6Dqsm2POVWyQKGtECFXM43Wj4e3kFQ6x7Vy3L6wHoXGiQUEajt2kI9RfTyI
 4iFKwYo3GC3/Ak+KSka6HzwiTnwIK5H/Eoa6eFxww2mCPd9L0TlV4UGC4hk3Vri1uxOB YQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30rxb2a4tr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 09:15:17 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A04C810002A;
 Thu,  7 May 2020 09:15:16 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 91ABC222CCC;
 Thu,  7 May 2020 09:15:16 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 7 May
 2020 09:15:12 +0200
Subject: Re: [PATCH] ARM: dts: stm32: bump PSCI to version 1.0 on stm32mp15x
To: Etienne Carriere <etienne.carriere@linaro.org>,
 <linux-kernel@vger.kernel.org>
References: <20200506174840.19856-1-etienne.carriere@linaro.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <52715352-c1f1-970a-5441-7780fc48c933@st.com>
Date: Thu, 7 May 2020 09:15:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200506174840.19856-1-etienne.carriere@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-07_04:2020-05-05,
 2020-05-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_001527_776130_5DE9F4D4 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: Etienne Carriere <etienne.carriere@st.com>, devicetree@vger.kernel.org,
 robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Etienne

On 5/6/20 7:48 PM, Etienne Carriere wrote:
> From: Etienne Carriere <etienne.carriere@st.com>
> 
> Declare PSCI v1.0 support instead of v0.1 as the former is supported
> by the PSCI firmware stacks stm32mp15x relies on.
> 
> Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
> ---
>   arch/arm/boot/dts/stm32mp151.dtsi | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
> index 3ea05ba48215..ebceead1b120 100644
> --- a/arch/arm/boot/dts/stm32mp151.dtsi
> +++ b/arch/arm/boot/dts/stm32mp151.dtsi
> @@ -24,10 +24,8 @@
>   	};
>   
>   	psci {
> -		compatible = "arm,psci";
> +		compatible = "arm,psci-1.0";
>   		method = "smc";
> -		cpu_off = <0x84000002>;
> -		cpu_on = <0x84000003>;
>   	};
>   
>   	intc: interrupt-controller@a0021000 {
> 

Applied on stm32-next.

Thanks.
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
