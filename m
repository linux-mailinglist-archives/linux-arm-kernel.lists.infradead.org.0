Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC74D356D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 08:17:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zBYZvSylj7vFarUuA8EQ23xojpkNtyD8ErV7/3aQBbo=; b=eJ9VcfBYTQSh2I
	aWEZGuWUCHgxdJSyPN/pVPwKAGMpvUlZ0CTKmCD3L3mgSE2PSBE+PFYxD79zMVvjWTijK8toHT7cF
	+r8XX/a6EMd4OmnyXXnqC0sKpJbJpciiqBShCoK/WRmflsAbXaQ+ErfwP+KN0r5zCsrq+yaDMxhVV
	bvXQ1JYr7JuIL2vVniNUOsleFSCCL8MQrva+2DT2jPexTj7bhT/83RCb/4qcIsFSo+msCD6lawGzR
	JWmhizOquyLRqnReBVURSEqB50wR+sN1lq7rvy8UZCNgr5WpXX3v/V5XTPCoIPSwjqgi3f57TSWIR
	c7nZVTyXpZMoTccYN6Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYPEu-0007Mx-F2; Wed, 05 Jun 2019 06:17:36 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPEl-0007M3-K7
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 06:17:29 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x556HQY6070720;
 Wed, 5 Jun 2019 01:17:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559715446;
 bh=pE+vAWiG4NGnFWLuFqy3RtWa8WXPpXxgHeHo1YIAJlc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=y2L7xC0K4A+6Ur0hloFWRGCH1EROQDf7rfoIGcd9RMBEHJhaa9PWkjZoSPXLFRWEO
 OcVpTNWuhhBRkRdbqNNnE/u4b4tU/D6mLFZeJftN8xVgsF8OWPGDLAezkSDTdbICQN
 SApJRoQbdSaZb6Stio0QsodELVHiD3qVR10JV3rc=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x556HQgX058247
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 5 Jun 2019 01:17:26 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 01:17:25 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 01:17:25 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x556HMls068204;
 Wed, 5 Jun 2019 01:17:23 -0500
Subject: Re: [RFC PATCH 1/3] arm64: dts: ti: am6-wakeup: Add gpio node
To: Keerthy <j-keerthy@ti.com>, <t-kristo@ti.com>, <nm@ti.com>,
 <robh+dt@kernel.org>
References: <20190605060846.25314-1-j-keerthy@ti.com>
 <20190605060846.25314-2-j-keerthy@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <e6ec3894-4e3d-e721-c1bc-791263b2d309@ti.com>
Date: Wed, 5 Jun 2019 11:46:50 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190605060846.25314-2-j-keerthy@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_231727_833890_DE0D3F30 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/06/19 11:38 AM, Keerthy wrote:
> Add gpio0 node under wakeup domain. This has 56 gpios
> and all are capable of generating banked interrupts.
> 
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
> index f1ca171abdf8..8c6c99e7c6ed 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
> @@ -74,4 +74,19 @@
>  		ti,sci-dst-id = <56>;
>  		ti,sci-rm-range-girq = <0x4>;
>  	};
> +
> +	wkup_gpio0: wkup_gpio0@42110000 {
> +		compatible = "ti,k2g-gpio", "ti,keystone-gpio";

This is not k2g. Can you either create a am6 specific compatible or just use
ti,keystone-gpio.

Thanks and regards,
Lokesh

> +		reg = <0x42110000 0x100>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-parent = <&intr_wkup_gpio>;
> +		interrupts = <59 128>, <59 129>, <59 130>, <59 131>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +		ti,ngpio = <56>;
> +		ti,davinci-gpio-unbanked = <0>;
> +		clocks = <&k3_clks 59 0>;
> +		clock-names = "gpio";
> +	};
>  };
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
