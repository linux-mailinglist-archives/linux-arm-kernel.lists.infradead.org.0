Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A0E1AC206
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 15:03:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4jCad1lOlnzbwf6aKJZzVXMR6keC43dJ13/dHGOCdg=; b=bM6C0LzWL+WOtC
	dAscsiF+uBvFelrQITZpC/I9ZRasjNISI4CXlSGZt6Gphnntv/oLJ1xSPCX9FkQsCJzdhQwqCWF5X
	NUMMz+2PKYhhXG807UMi8rnsiH4b53H6nokPeU/dCJcX68RGIQbjWFHxIOSkevZxI/+cSyQs+JoEs
	Oz6SEoWFtj6IfohXDlzKp4TLSJaJtKJQX2BUVyqEp3eEAscuoHwe75Ts7Vxz9OYWyhW1B/gK0YbSN
	dckfE9Eq0B60eP8C+FqYgi8Y/cG8QMSZWe6MwZhalloiYALPq2ylTm8jCWm+qyR3dxHN3gs+AsSp1
	KMOiQLO8d8KqE7o4NzCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP4AP-0006fr-Fq; Thu, 16 Apr 2020 13:02:53 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP4AH-0006eb-0a; Thu, 16 Apr 2020 13:02:46 +0000
Received: by mail-wm1-x341.google.com with SMTP id x4so4512718wmj.1;
 Thu, 16 Apr 2020 06:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DsXbXqSR3WQQ/q3QyWRXNvBRy+VnfDMjqm/TEYscBoU=;
 b=l9OHz4Xu8UUrVETfqDUe78B77QloOSjAuW1zUUPhF6mnjZNyfmYlTZlstQ7DTLMZXx
 QZp/1o3zt7Pyua6lAgb+Fg8JZ+UNuL0xMB0C5Rg4lNWyh/Y0n58k3khWQmgQMgFW10vA
 UZEt/WHoic7XKdFncgmdMdD/ERfOIihkhdAZpnaTfjz7gEfcQKaaIbuGilMxFH/Hmcnq
 2BajeBWSbyY3UWqPnOuAa6ECF+V1+As5iLm580KPCfBt0++Ja+vZt6Yl9Pj6jFpP4SRk
 6EYcyexDlQ2/QiQcgXyU+yM+IM2Z3TOfzzI21YEHupFpmb5JU3l3/cnQBP7SsJaWacdV
 /X0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DsXbXqSR3WQQ/q3QyWRXNvBRy+VnfDMjqm/TEYscBoU=;
 b=fj4lN9m0cUbJHwF/fXugu4EcWREHuy8qn2QRewwWmzDIH1jmFXoVJ60eXMCOX9KXX+
 sCbQe4Uep8SLrB+TTYrXQu6I1ZMm7qHYRJ1jZyWCi22Lk7iyGwDiv27+KK6Eff3wT2wT
 bRuurP+aPdxdGN+dghg9bgdeGP7moKA5yVuQ2Dt1qtZ22F4jb8guVOoP5W7KKKQvEh7q
 2U9nROvSt083e36hVS2KcDQQSXhzKvCkfZlh3ADhkiw9WnP9VczzsZjWcuzBV/tBlixZ
 7mQdTwSXGMWbLY4LaDG2+ZuFqOtrrlIRU4Rl1slME3mGD+Ki+HC8cqoqc+BTukrr4EtZ
 WnGg==
X-Gm-Message-State: AGi0PuYpmgxVS5D0a5gCFikZ0Sh47SsagZTw/5h3CnC4L1wVZJQH3//Z
 CzpS1H6KQhnaSe5MJZaggRk=
X-Google-Smtp-Source: APiQypJmGVgOCUB4Bi9u+4yal3fthikSw/VxSVv6cs2uWMvyqqMrS3fjb25iU4fphqExvZQpuidm6Q==
X-Received: by 2002:a1c:7706:: with SMTP id t6mr4806123wmi.110.1587042163757; 
 Thu, 16 Apr 2020 06:02:43 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c18sm26903597wrx.5.2020.04.16.06.02.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Apr 2020 06:02:42 -0700 (PDT)
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: Add RGA support to the PX30
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
 <20200416115047.233720-3-paul.kocialkowski@bootlin.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <478f0a8b-f819-62f4-83b8-27918c4c2431@gmail.com>
Date: Thu, 16 Apr 2020 15:02:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200416115047.233720-3-paul.kocialkowski@bootlin.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_060245_075426_63CBEED3 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hansverk@cisco.com>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paul,

The conversion of rockchip-rga.txt to rockchip-rga.yaml by myself just
has been approved by robh.
Maybe place dts patches at the end of a patch serie.
Could you include a &rga patch if your device is supported in mainline,
so we can test with:
make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-rga.yaml

Johan

On 4/16/20 1:50 PM, Paul Kocialkowski wrote:
> The PX30 features a RGA block: add the necessary node to support it.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index 75908c587511..4bfbee9d4123 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -1104,6 +1104,17 @@ vopl_mmu: iommu@ff470f00 {
>  		status = "disabled";
>  	};
>  
> +	rga: rga@ff480000 {
> +		compatible = "rockchip,px30-rga";
> +		reg = <0x0 0xff480000 0x0 0x10000>;
> +		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
> +		clock-names = "aclk", "hclk", "sclk";
> +		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
> +		reset-names = "core", "axi", "ahb";
> +		power-domains = <&power PX30_PD_VO>;

		status = "disabled";

> +	};
> +
>  	qos_gmac: qos@ff518000 {
>  		compatible = "syscon";
>  		reg = <0x0 0xff518000 0x0 0x20>;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
