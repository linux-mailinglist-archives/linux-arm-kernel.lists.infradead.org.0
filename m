Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C359181623
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 11:49:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/VmYth0MAb3kPu2NmerMz/FiaFYig74sxDMylCdjsaM=; b=fGIyUE83dR9wbT
	14XcJU5eHFWwIaw1JAwnQn6KK6bQrWZjrpFOET+D2fDRHmiLQezJ7/XB+ZD15WutLHfNVJM6PXn9g
	h0Mc5sUHdJPvERQzBlcjsQN+BIDr1szPBre099LzjWYgDytXwLeLUoS7tTQaP2ErMZy2yymwB05MD
	RkvtAdlH8SzF6L9L7cajQneh0ClnMnx5g/eI8kpC7EBaBkCInjjr4AHZ1EZ81BTAaMOiKHsbUUpsB
	vtFgRmDlxc1E7jSplIb7gCAwaDJcNjSKWwnFRaKKEqaogNwy8FXrFkUEbEW29jBZ+pqUCh5i8d8TB
	9xcjMvsvY8jI9WFe5FOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jByvY-0006NG-CN; Wed, 11 Mar 2020 10:49:28 +0000
Received: from hqnvemgate26.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jByvG-0006Gj-KB
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 10:49:12 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate26.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e68c2170000>; Wed, 11 Mar 2020 03:48:55 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 11 Mar 2020 03:49:08 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 11 Mar 2020 03:49:08 -0700
Received: from [10.26.11.218] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 11 Mar
 2020 10:49:04 +0000
Subject: Re: [PATCH v2 17/17] arm64: dts: sdm845: add IPA information
To: Alex Elder <elder@linaro.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>
References: <20200306042831.17827-1-elder@linaro.org>
 <20200306042831.17827-18-elder@linaro.org>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <ec9776b3-ac79-8f9d-8c4d-012d62dc8f72@nvidia.com>
Date: Wed, 11 Mar 2020 10:49:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200306042831.17827-18-elder@linaro.org>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1583923735; bh=YDvGaWGcO9cfN0iV8m9ROH9v2HzFADkFgb34PsNqeGk=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=BhgHVnVRJaAzQXsK+Kgz5ryNRbeh+j5lEJKbdH4t7pCns1aoDEtuMhAPkXO/8/Uzd
 yP1eeHZlT3wbs9iXwdc6J4N/6pIun3D7Pc9eOV56RKOhzTZ0RMUf6AgJlh1Dvu0a6K
 NEoQ/vdOWcfIrPLVryAihPSsF37FCutQ/2r82cwuQr+LiV2E8AO8PWau90ULEjKk/Y
 wxscUdfGgXKxGVCeLaourFX+D1TuTNAw6kdw302qM0b9oYS2xiq5YlPMpj5+PSpgLO
 8gPEqPByzMkSPSiU6NG1W3UeMvffEH8iBVlu4OjT9VuRnzuBKx/GC30ZPwO316xTpn
 tGiTZc/m3Tg4w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_034910_701868_37FF1CE3 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
 Eric Caruso <ejcaruso@google.com>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org, Dan Williams <dcbw@redhat.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Siddharth Gupta <sidgup@codeaurora.org>, Rob Herring <robh+dt@kernel.org>,
 Evan Green <evgreen@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 David Miller <davem@davemloft.net>,
 Chaitanya Pratapa <cpratapa@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 06/03/2020 04:28, Alex Elder wrote:
> Add IPA-related nodes and definitions to "sdm845.dtsi".
> 
> Signed-off-by: Alex Elder <elder@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 51 ++++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index d42302b8889b..58fd1c611849 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -675,6 +675,17 @@
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
>  		};
> +
> +		ipa_smp2p_out: ipa-ap-to-modem {
> +			qcom,entry-name = "ipa";
> +			#qcom,smem-state-cells = <1>;
> +		};
> +
> +		ipa_smp2p_in: ipa-modem-to-ap {
> +			qcom,entry-name = "ipa";
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
>  	};
>  
>  	smp2p-slpi {
> @@ -1435,6 +1446,46 @@
>  			};
>  		};
>  
> +		ipa@1e40000 {
> +			compatible = "qcom,sdm845-ipa";
> +
> +			modem-init;
> +			modem-remoteproc = <&mss_pil>;
> +
> +			reg = <0 0x1e40000 0 0x7000>,
> +			      <0 0x1e47000 0 0x2000>,
> +			      <0 0x1e04000 0 0x2c000>;
> +			reg-names = "ipa-reg",
> +				    "ipa-shared",
> +				    "gsi";
> +
> +			interrupts-extended =
> +					<&intc 0 311 IRQ_TYPE_EDGE_RISING>,
> +					<&intc 0 432 IRQ_TYPE_LEVEL_HIGH>,
> +					<&ipa_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
> +					<&ipa_smp2p_in 1 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "ipa",
> +					  "gsi",
> +					  "ipa-clock-query",
> +					  "ipa-setup-ready";
> +
> +			clocks = <&rpmhcc RPMH_IPA_CLK>;
> +			clock-names = "core";
> +
> +			interconnects =
> +				<&rsc_hlos MASTER_IPA &rsc_hlos SLAVE_EBI1>,
> +				<&rsc_hlos MASTER_IPA &rsc_hlos SLAVE_IMEM>,
> +				<&rsc_hlos MASTER_APPSS_PROC &rsc_hlos SLAVE_IPA_CFG>;
> +			interconnect-names = "memory",
> +					     "imem",
> +					     "config";
> +
> +			qcom,smem-states = <&ipa_smp2p_out 0>,
> +					   <&ipa_smp2p_out 1>;
> +			qcom,smem-state-names = "ipa-clock-enabled-valid",
> +						"ipa-clock-enabled";
> +		};
> +
>  		tcsr_mutex_regs: syscon@1f40000 {
>  			compatible = "syscon";
>  			reg = <0 0x01f40000 0 0x40000>;
> 


This change is causing the following build error on today's -next ...

 DTC     arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dtb
 arch/arm64/boot/dts/qcom/sdm845.dtsi:1710.15-1748.5: ERROR (phandle_references): /soc@0/ipa@1e40000: Reference to non-existent node or label "rsc_hlos"

Cheers
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
