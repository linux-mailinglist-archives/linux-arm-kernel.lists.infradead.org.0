Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7124E1847B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 14:14:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jJEsUolWCbYV9TUThsBEu7UKYzW72/6Abv3HwCg5NKk=; b=NqhnSVBc79575y3m2oaeTXZg1
	qO8AybTcVNYKQhIwMnPmdUf7qZzKzFA37dI+6aMDQedKuf+1CVsekQoEW8pkkbQ86af3cfd9C1da7
	WygSOoYXgA1Vo7g1EZp2nzw9HVLudrXZHQLjx/qfp5XP3UcVoXUkQkhnjeVfcRtAA2p7KtGnNORnh
	YHPdPEKVkxzzv/AcLt5h1vwFPsMRXcTBr7hd36+YNkZ5tZIPTdLxxqnfqmW/finS8ze4HViHqhrn+
	dYm2EWaqb7rZhjbUJXAqo4MQyFdIcrv6HodF/6XX6lLmwwPBlKi3Q8G1vj92qJsGnHBaPHcrL6j3j
	jisNm6tqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCk8j-0000ef-Lp; Fri, 13 Mar 2020 13:14:13 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCk8b-0000eG-Nq
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 13:14:07 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02DDDJ24004637; Fri, 13 Mar 2020 14:14:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=j30vDKcN8v+9iOfnpvN2SvzZxqqkSw6kVhxLOmAqkK0=;
 b=sp3YszxuO0VPz/8w+rReK8aI6FfHkyGpIn8qTGDCURWbMkKbq/FtgZ9AzX75A2jymgzx
 oH54NnPK6tqrpGRCQdFSiPqS7XLPSBw3nlVPxhbNVATVecm27m1Ic56hwJgmotrB1TXN
 3RuzPqD+x8kyP4GzfFkC1FgvhRR/0Df6mcuO8Ga68TrARk7SSHxalU6142cRwwJpbd/H
 C8da+g1yLybN5Mi4bNUDDNyAzRBpVPTp1Zlovu1ieKJVBQa6IIDgn985GTVD1U4zEc1I
 8kcLHGbaBjluR5B60NCn/89yi/E1C5K/+/VzP1zZjLDmHWe0yNuXiPgauacfD0dMzWYR rw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yqt818vdw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 13 Mar 2020 14:14:01 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1DB2A10002A;
 Fri, 13 Mar 2020 14:13:57 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0E7DA2A8914;
 Fri, 13 Mar 2020 14:13:57 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 13 Mar
 2020 14:13:56 +0100
Subject: Re: [PATCH] ARM: dts: stm32: Do clean up in stmpic nodes
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <mcoquelin.stm32@gmail.com>, 
 <robh+dt@kernel.org>
References: <20200228125205.8126-1-benjamin.gaignard@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <4b2c303d-48cb-4e1e-aa4a-faa72852ff55@st.com>
Date: Fri, 13 Mar 2020 14:13:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200228125205.8126-1-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-13_04:2020-03-12,
 2020-03-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_061406_073134_F8EFB802 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin

On 2/28/20 1:52 PM, Benjamin Gaignard wrote:
> Remove unused properties from stpmic node.
> The issues have been detected by running dtbs_check.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>

Applied on stm32-next with commit title updated.

Thanks.
Alex


> ---
>   arch/arm/boot/dts/stm32mp157a-avenger96.dts | 8 --------
>   arch/arm/boot/dts/stm32mp157c-ed1.dts       | 3 ---
>   arch/arm/boot/dts/stm32mp15xx-dkx.dtsi      | 3 ---
>   3 files changed, 14 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index cbfa4075907e..1583be1966eb 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -135,10 +135,6 @@
>   		#interrupt-cells = <2>;
>   		status = "okay";
>   
> -		st,main-control-register = <0x04>;
> -		st,vin-control-register = <0xc0>;
> -		st,usb-control-register = <0x30>;
> -
>   		regulators {
>   			compatible = "st,stpmic1-regulators";
>   
> @@ -173,7 +169,6 @@
>   				regulator-min-microvolt = <3300000>;
>   				regulator-max-microvolt = <3300000>;
>   				regulator-always-on;
> -				st,mask_reset;
>   				regulator-initial-mode = <0>;
>   				regulator-over-current-protection;
>   			};
> @@ -213,8 +208,6 @@
>   
>   			vdd_usb: ldo4 {
>   				regulator-name = "vdd_usb";
> -				regulator-min-microvolt = <3300000>;
> -				regulator-max-microvolt = <3300000>;
>   				interrupts = <IT_CURLIM_LDO4 0>;
>   				interrupt-parent = <&pmic>;
>   			};
> @@ -240,7 +233,6 @@
>   			vref_ddr: vref_ddr {
>   				regulator-name = "vref_ddr";
>   				regulator-always-on;
> -				regulator-over-current-protection;
>   			};
>   
>   			bst_out: boost {
> diff --git a/arch/arm/boot/dts/stm32mp157c-ed1.dts b/arch/arm/boot/dts/stm32mp157c-ed1.dts
> index 1fc43251d697..0c304a024e51 100644
> --- a/arch/arm/boot/dts/stm32mp157c-ed1.dts
> +++ b/arch/arm/boot/dts/stm32mp157c-ed1.dts
> @@ -218,8 +218,6 @@
>   
>   			vdd_usb: ldo4 {
>   				regulator-name = "vdd_usb";
> -				regulator-min-microvolt = <3300000>;
> -				regulator-max-microvolt = <3300000>;
>   				interrupts = <IT_CURLIM_LDO4 0>;
>   			};
>   
> @@ -241,7 +239,6 @@
>   			vref_ddr: vref_ddr {
>   				regulator-name = "vref_ddr";
>   				regulator-always-on;
> -				regulator-over-current-protection;
>   			};
>   
>   			bst_out: boost {
> diff --git a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
> index f6672e87aef3..e50ae7faa0ec 100644
> --- a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
> +++ b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
> @@ -304,8 +304,6 @@
>   
>   			vdd_usb: ldo4 {
>   				regulator-name = "vdd_usb";
> -				regulator-min-microvolt = <3300000>;
> -				regulator-max-microvolt = <3300000>;
>   				interrupts = <IT_CURLIM_LDO4 0>;
>   			};
>   
> @@ -328,7 +326,6 @@
>   			vref_ddr: vref_ddr {
>   				regulator-name = "vref_ddr";
>   				regulator-always-on;
> -				regulator-over-current-protection;
>   			};
>   
>   			 bst_out: boost {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
