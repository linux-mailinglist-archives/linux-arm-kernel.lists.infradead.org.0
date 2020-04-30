Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF961C09DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 00:05:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=of3eZ+IEdHRIhDOhevhLCa8abum6D06dKXs+rBt2aJs=; b=uaW9AjDmd1yDyJ
	voG+qijW4c4vGqqE7aieUPH7x4nqN+Zukv1e5hmgWCOajeBHD598gpIBw1jf4oTQmJWLGpDeylCOn
	GgJD9hDlmNe7176pbORhZZ47bV6mHfXKANDhjMDZavrT6pNv8o+BQVHUK1qFYvOrZ4K5ydgL0aG5a
	jslqhkfDrEqiM3jdsEkW03m+lDwX6W/H1la182xMHQmw8rRud3M0ntq3tcs3s7oDwh6Y4go8fR13u
	IweNfz/oR9SqNlU1bCk0drv9V8vRWtc9gJ8bocl9RfRfyUY1w0fbbeisB7PaC5ZMONs+37gAzecv0
	yaiGeU3wP/EuWjg3/7TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUHJI-0003bx-2Y; Thu, 30 Apr 2020 22:05:36 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUHJ6-0003aG-Tg; Thu, 30 Apr 2020 22:05:26 +0000
Received: by mail-wr1-x444.google.com with SMTP id f13so9203895wrm.13;
 Thu, 30 Apr 2020 15:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Bw4xMsQlAdPbT32r9q7KuZwpeyRP0cX6BzQXI90BCN8=;
 b=ByMRGswMWLGAUKHPhoXAN3w1R8HdhxRP4M/4ODXWHCLj7gYMAP0FIEG2VqZCmshrr6
 ZxcQIkG1T7h6W+jiuTCvDA10h0s8VD84v2h8QRMFeZu/qfrIKB+Uf6h+12/CbKynlICf
 XNk18X5SKhxKXwdNGquQa/hSPFITAtjQ2q9I3W3xtod8hG+zWp/XrtdH1ATUccOE+/PA
 LwfjyOfhhEjlVSrZE6E/E52lAXBWSi0DbyFnfVI5a5ZKdj3P3rrRARsdm3Gj+9uBhenn
 J1wOiuWUe4NZE0eIccydcbVmM32Y86b4ca+CnqPfBoC95swggbnNpNkvRPLbH8pjqXWP
 E/OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Bw4xMsQlAdPbT32r9q7KuZwpeyRP0cX6BzQXI90BCN8=;
 b=ggG5WzhnLBr2EL7ooM5QOk/9wCNFFN7mCgSIcqU2zb2nQcdCvYueuxxpK1xSw/ayNq
 FVdTYUolaeN48LJ4E4omJ/UyemFskZzTg/siVFY2a6krnDKTWO7xE5BDfOt4M1W1IcDi
 sE611kK05mEDQKaYZwpkwDvOjX4K/BhtrzZ3yD9fVnr2UYNh8fumqtKhZfQpUSXWR0Pk
 Ox6q9NjUhEW2qW+dk0M85Z1rp85WwLIsqlZlianee/jpH9eEQsonyZaEufB66DZme2fW
 1AEyAqWVy6zm+7HuAVanTJ04Yd8qBu8Y9ZFkYea893oh72vRrvumCVsCJARnu00ECLiK
 tMzA==
X-Gm-Message-State: AGi0PuYe3myaMpqTq/a5ouVAeML0KlpK48o9ip2AwWUz9nuTxHvNiBzo
 eyJeRUTgkhhaswTvDy0ExqU=
X-Google-Smtp-Source: APiQypLYqUO31tqU0YvMTIn8//k5oBDvmrxtqm2vFUpCvHub7k63ls1fdFvzV0p5CULjKqkXhDeoag==
X-Received: by 2002:adf:d0ca:: with SMTP id z10mr818677wrh.172.1588284317856; 
 Thu, 30 Apr 2020 15:05:17 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id t67sm1475693wmg.40.2020.04.30.15.05.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 15:05:17 -0700 (PDT)
To: paul.kocialkowski@bootlin.com
References: <20200430164245.1630174-3-paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v3 2/4] arm64: dts: rockchip: Add RGA support to the PX30
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <c3954924-c220-73ef-06dd-85b6876be819@gmail.com>
Date: Fri, 1 May 2020 00:05:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200430164245.1630174-3-paul.kocialkowski@bootlin.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_150524_958905_24B60B7B 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 hansverk@cisco.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 thomas.petazzoni@bootlin.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paul,

> The PX30 features a RGA block: add the necessary node to support it.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index f809dd6d5dc3..3de70aa4f1ce 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -1102,6 +1102,17 @@ vopl_mmu: iommu@ff470f00 {
>  		status = "disabled";
>  	};
>  
> +	rga: rga@ff480000 {
> +		compatible = "rockchip,px30-rga", "rockchip,rk3288-rga";
> +		reg = <0x0 0xff480000 0x0 0x10000>;
> +		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
> +		clock-names = "aclk", "hclk", "sclk";

> +		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
> +		reset-names = "core", "axi", "ahb";
> +		power-domains = <&power PX30_PD_VO>;

sort

		power-domains = <&power PX30_PD_VO>;
		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
		reset-names = "core", "axi", "ahb";



> +	};
> +
>  	qos_gmac: qos@ff518000 {
>  		compatible = "syscon";
>  		reg = <0x0 0xff518000 0x0 0x20>;
> -- 
> 2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
