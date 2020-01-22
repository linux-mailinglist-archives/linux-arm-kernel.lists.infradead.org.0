Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B621145367
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 12:04:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G8MqSmIpMhJDkUi6jeoVzU7xRAdF13s98xz9WawxsNI=; b=qezRD1qP+J6ZEf
	r+rjUOU8eCK2brfMZUKV7zQ7hxy+kyj7477mLd3hcdHSpO2xfgbs+TMf51urmyByUFA7s83tpy7aU
	ed9uv+aLMZfzDBOsNYexwXhGs+Q+blNqxDmvzNGrMCavJXVWIC/12rvV6CgFLwi0bUHYU9arRqmuz
	mXZwrqvS3W4wVZAvEtoUcwL9UX4PHSS9DB4KcZplsU6vRLJw/6TAIsBHcm3e5sTUPIwRKn9XreZGV
	ZPBgq7bIUKMSJNczPwWz2g8Gr22UXtU8v9cJa5VHbPW98Pj0EpeOtS9ss/iuCWoJy8CuYC/WjLpCa
	by3ssBmPiqMsbbJ8U9RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuDoR-0004Z6-UL; Wed, 22 Jan 2020 11:04:43 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuDoI-0004YT-Sq
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 11:04:36 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00MB4OX0001728;
 Wed, 22 Jan 2020 05:04:24 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579691064;
 bh=H0tZlxfnrWFRp0J+H9eAMOrfUBLlN+Vz4L+HPhGeAFY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=twmymRWjInelvHECgTHY4Y4QIS90WCj6sbj6yBbj9FdtncvGGRMVGaX1/Gars4aht
 uheH7NHNsnu5gjOgu9K1sJr1q38th+pgEipZARq8loUw4qgmNnR2lTnqnMgFrH/QKC
 KoRAY8WTMEzWONHlAgfDiiZIPxKbcsmUh1xK5gMA=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00MB4Oec043482
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 22 Jan 2020 05:04:24 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 22
 Jan 2020 05:04:23 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 22 Jan 2020 05:04:23 -0600
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00MB4KPt028067;
 Wed, 22 Jan 2020 05:04:21 -0600
Subject: Re: [PATCH v2 1/9] arm64: dts: ti: k3-am65-main: Correct main NAVSS
 representation
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <t-kristo@ti.com>, <nm@ti.com>
References: <20200122082621.4974-1-peter.ujfalusi@ti.com>
 <20200122082621.4974-2-peter.ujfalusi@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <600df214-620b-fa41-82ef-01132d9bdfae@ti.com>
Date: Wed, 22 Jan 2020 16:33:30 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20200122082621.4974-2-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_030435_010841_412C7C9A 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 22/01/20 1:56 PM, Peter Ujfalusi wrote:
> NAVSS is a subsystem containing different IPs, it is not really a bus.
> Change the compatible from "simple-bus" to "simple-mfd" to reflect that.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> index efb24579922c..e40f7acbec42 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> @@ -385,8 +385,8 @@ intr_main_gpio: interrupt-controller0 {
>  		ti,sci-rm-range-girq = <0x1>;
>  	};
>  
> -	cbass_main_navss: interconnect0 {
> -		compatible = "simple-bus";
> +	cbass_main_navss: navss@30800000 {

This introduces below dtc warning when built with W=1

arch/arm64/boot/dts/ti/k3-am65-main.dtsi:388.35-530.4: Warning
(unit_address_vs_reg): /interconnect@100000/navss@30800000: node has a unit
name, but no reg property

this is representing cbass inside main_navss, just like cbass_main. You can drop
this patch and the similar mcu version.

Thanks and regards,
Lokesh

> +		compatible = "simple-mfd";
>  		#address-cells = <2>;
>  		#size-cells = <2>;
>  		ranges;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
