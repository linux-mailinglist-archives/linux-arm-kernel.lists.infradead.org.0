Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED169130CAD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 05:02:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aeEoEHRkWe83X61hccSwCyndcotO9DwPn+nDGMA2XGs=; b=h0hMVplTXcB7FJ
	S+suLMz0JEwGgFBbvXgIelMJe7qSHlN5kUXhOMCuEk72EylhS0xsYwJfw6YtEf8OoReLpu7EaX/eX
	nJCzDV5xB4dzPgwaUHOAjFfs2GKWAZcn/ApzqT0dbjux7V4+Ih2pZS1l21m5qOX9LWdScho1a67iu
	DqXiJJCxmg/9GCm3Bg/n87bnG6EhvrBcNxtLx6aVes8auI26g5pzDfYwDXBActkZc0Txq2YLDjUfz
	zqgqCJK5KKcC60E9j3vT2ke2//8bVoomJvCnjBfNY3NhF1lNnDzqOk/pohUdvych+A6aVFr7v5mRT
	0jAiNDQib1L2HcVJpphA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioJaW-0000oQ-E6; Mon, 06 Jan 2020 04:01:56 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioJaP-0000nh-Lr
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 04:01:51 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00641irn089874;
 Sun, 5 Jan 2020 22:01:44 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578283304;
 bh=eTr4yhhqW0CfHfnymOfIOUGthh33hsgdifkzOrGmJ7s=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=M9Ly0bcMxv3kWxdTv/LU9QxUFnYw4pMqkgXlFY5KzUks5UGBBeS0/cWE3jze51CHD
 CN/CJcn7kixvvyQoEzTV+OFdLLh1w4bZCSWXqWA9pUmJEXLpC2YUTl7MdUoFUhaC7A
 6DMu5JIsCWD8+vryOoPgg4BPHUKuOEJWsaxn4loY=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00641iPr046902
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 5 Jan 2020 22:01:44 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Sun, 5 Jan
 2020 22:01:43 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Sun, 5 Jan 2020 22:01:43 -0600
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00641eVP092091;
 Sun, 5 Jan 2020 22:01:41 -0600
Subject: Re: [PATCH] arm64: dts: ti: k3-j721e-main: Add missing power-domains
 for smmu
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
References: <20191122100356.20622-1-lokeshvutla@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <14a3898b-f91b-861e-0091-7e445c087ec0@ti.com>
Date: Mon, 6 Jan 2020 09:30:47 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20191122100356.20622-1-lokeshvutla@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_200149_841540_9E194F0B 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suman Anna <s-anna@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

H Tero,

On 22/11/19 3:33 PM, Lokesh Vutla wrote:
> Add power-domains entry for smmu, so that the it is accessible as long
> as the driver is active. Without this device shutdown is throwing the
> below warning:
> "[   44.736348] arm-smmu-v3 36600000.smmu: failed to clear cr0"
> 
> Reported-by: Suman Anna <s-anna@ti.com>
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>

Any comments on this patch? If there are no objections, can this be picked?

Thanks and regards,
Lokesh

> ---
>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> index 698ef9a1d5b7..96445111e398 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> @@ -43,6 +43,7 @@
>  	smmu0: smmu@36600000 {
>  		compatible = "arm,smmu-v3";
>  		reg = <0x0 0x36600000 0x0 0x100000>;
> +		power-domains = <&k3_pds 229 TI_SCI_PD_EXCLUSIVE>;
>  		interrupt-parent = <&gic500>;
>  		interrupts = <GIC_SPI 772 IRQ_TYPE_EDGE_RISING>,
>  			     <GIC_SPI 768 IRQ_TYPE_EDGE_RISING>;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
