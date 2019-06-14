Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E79504617C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cix5HOCBiDtmcTcd7HscCWeMlo4qLHt3vRTolUVmmOU=; b=u+gEe73PTBF7Li
	qYUtMm1ERQYLV5Y4m0gc8OY3I30ue7P2LqIFsOI1aUDqRHpZfYobK3w8h2P3ZxDyLeIs4OdFNN5WQ
	hpupo5i+M2U9dAlzJLg1ys2MPaHOKVc95piarT8QWXbx1z4O/+o/Gd5wkiuOEBUu4ZESTxXOBGpMI
	3Si5AXgg3j1ZuwVl32+vKYwE/C0ZIflJSjQYUgRQGtbRMvtGOECU97ith9u0N+a1Zc3srfPDe9IS2
	rUI1HY19HGBzHyp18cQYKKGKF0doiZUWbIZZ6wD3f1lKrGLahPL7kWd9JJI7RcbXKzdvVg8mWSgji
	dIW2gBfrBdszX5oxPJ2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnVE-0002PA-25; Fri, 14 Jun 2019 14:48:28 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnV3-0002Od-JZ
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 14:48:19 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5EEmE79033033;
 Fri, 14 Jun 2019 09:48:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560523694;
 bh=YY407v4FUUGrWVxCrjpprZqWG+ZFz6K5gsWMS4+ez1c=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=cV3Aamep8bVc3Rp8Vy8uL2oBqZkuEOo3ed31ki5CSTdTy+L+jV1+IsWJ9KY67yoPX
 +aXr4M3DP57tE9GS7xjrJfa1G52IfhVLKWkACaf94MfHTJVJuhs85TmUWTA0otCuN6
 HeFS0vhc6zFDRtqUNPTIhjEqeOhxkureNDZpykU8=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5EEmEnp018446
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 14 Jun 2019 09:48:14 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 14
 Jun 2019 09:48:14 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 14 Jun 2019 09:48:14 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5EEmA55062905;
 Fri, 14 Jun 2019 09:48:11 -0500
Subject: Re: [PATCH] arm64: dts: ti: k3-j721e-main: Add Main NavSS Interrupt
 controller node
To: Suman Anna <s-anna@ti.com>, Tero Kristo <t-kristo@ti.com>, Nishanth Menon
 <nm@ti.com>
References: <20190531004848.32061-1-s-anna@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <5e8fa7b4-6c44-85dc-0a33-bcf930b6d795@ti.com>
Date: Fri, 14 Jun 2019 20:17:37 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190531004848.32061-1-s-anna@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_074817_795834_06AE34D0 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>, devicetree@vger.kernel.org,
 Grygorii Strashko <grygorii.strashko@ti.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 31/05/19 6:18 AM, Suman Anna wrote:
> Add the Interrupt controller node for the Interrupt Router present within
> the Main NavSS module. This Interrupt Router can route 192 interrupts to
> the GIC_SPI in 3 sets of 64 interrupts each. Note that the last set is
> reserved for the host ID A72_3 for hypervisor usecases, so the node is
> added only with 2 sets for the Linux kernel context (host id A72_2). This
> is specified through the ti,sci-rm-range-girq property.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>

Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>

Thanks and regards,
Lokesh

> ---
> Hi Tero,
> 
> This patch depends on the J721E series [1] from Nishanth. Patch tested
> using additional patches exercising Mailbox IP.
> 
> regards
> Suman
> 
> [1] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=121189
> 
>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> index d42912044a5d..36c51ff9a898 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> @@ -50,6 +50,24 @@
>  		#iommu-cells = <1>;
>  	};
>  
> +	cbass_main_navss: interconnect0 {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		main_navss_intr: interrupt-controller1 {
> +			compatible = "ti,sci-intr";
> +			ti,intr-trigger-type = <4>;
> +			interrupt-controller;
> +			interrupt-parent = <&gic500>;
> +			#interrupt-cells = <2>;
> +			ti,sci = <&dmsc>;
> +			ti,sci-dst-id = <14>;
> +			ti,sci-rm-range-girq = <0>, <2>;
> +		};
> +	};
> +
>  	secure_proxy_main: mailbox@32c00000 {
>  		compatible = "ti,am654-secure-proxy";
>  		#mbox-cells = <1>;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
