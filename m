Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD8B144685
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 22:35:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iliVsPh9YF3vq4x2fyRP1V4jdz33o+VgzhfVfjfbo80=; b=oHkwqIgkTD22Kf
	/TgMEZKetDpFVdsjBg4JR6kf3wvsyn4etlHIfkeIIiNs9TmmgZGSjtUwGAiu8FNoKnvpz/n45Gvgq
	fytnMPjAfnJeHwnZRecwApvFy8xb40cc55bB0NnVUfR3amZh8XbBiD6CD3ch9SeINAs7ecAyR2B1n
	7wJqsbkpj5+RxR5l2HxOLt7x8n+0VKQCBybj0JtkLdUywSUtSEyM1IvfAt+gNlAnr+5MLGpE0Jyuj
	Ic+qQ/ZBuMJgXlNiaHh1TV5l9l61nggDokvtKZ78C1v/+THqTcVYuQ5Uce5CZ+ljD+AsWzJXmcLtc
	PPa/ucXTqwe2+klsfUGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu1An-0003PO-FS; Tue, 21 Jan 2020 21:34:57 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu1Aa-0003NV-25; Tue, 21 Jan 2020 21:34:45 +0000
Received: by mail-wm1-x344.google.com with SMTP id p17so4902291wmb.0;
 Tue, 21 Jan 2020 13:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QFH+//39kLcoKOXngfJAlgHhrZQMBT4NmggY27rdTyU=;
 b=fbrEasHoDjvPf4cA4L0MXUjPMeps2Tmyr8xvgIceVWSNiBOfTtn0nIuyQTHoPCtXJw
 hKqfTEhssZJVp5fhLfQo2YUF1TyTW4WgH+WvixzRc1sUff5cpMdJPHP05eCpORSD+dwa
 AF8yCjwqEbL7+MBPiGYHfehU/Cvc0sPxntoT0e68t9zp+tKAioe2nBcWYtRDVJq6ZJ40
 QmLOzmIMw4FV4MhZxQaeribnqbyiLydAX+cRwBXhB4NV9uXffpqcgqu6SiIevq9N4cp0
 fEFisw4lce/nWoEeLLqnLVwSiKZa5cSe693QvgrK1xwvkwcWAgBTKwZNGYJjoI9G+x3f
 VNJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QFH+//39kLcoKOXngfJAlgHhrZQMBT4NmggY27rdTyU=;
 b=OkK6n0CWkYyz9tCYrE9Xbc3RKThKzcFIvPv91XKLhno5ab8Py5A82P1cLQgoYRsLfK
 S8ZcprLt418oWnDLkJqzBeOcQg74qacWwARkb/Y1qtd+TLI/tOrc15Gp7wkx0dTyX96f
 A0a3vqKHhzbtg0gE1HwYONrJuC1olchuiAJRvzbVVxOWuZbyBme/lNJ6aGpHfTSagXfA
 prKpH8KTeIjkW12fcd+Q33bICwWLp65t2nLjVcLS5XQgD16C4l6rg1kMgrpg5GQbW6tr
 tIISULvBCvsDcuP0EKTwewjV15/ClepI+5dMA5Jd9ODWP6J2yEcNg9DGEzD8B29XTBLv
 ebQw==
X-Gm-Message-State: APjAAAXxl/UKHofERVbRWmo9L7EArH+vvandNm7nFp8S6Om9B/WT/2h0
 DRYyItALGd0JbDdrK7tQtOA=
X-Google-Smtp-Source: APXvYqwkXwtjqW26Qcpp7Hc7ja9Peywxh2VKCHRM058jDHvPrCPmq+NCtFnrfyEZR0PUI5IV4EMZtA==
X-Received: by 2002:a05:600c:22d3:: with SMTP id
 19mr372114wmg.20.1579642480490; 
 Tue, 21 Jan 2020 13:34:40 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id p5sm51848659wrt.79.2020.01.21.13.34.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 13:34:40 -0800 (PST)
To: justin.swartz@risingedge.co.za
References: <20200121201146.18038-2-justin.swartz@risingedge.co.za>
Subject: Re: [PATCH v2 1/2] ARM: dts: rockchip: add rga node for rk322x
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <7d85210b-e554-d875-0615-c2e93a264b5b@gmail.com>
Date: Tue, 21 Jan 2020 22:34:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200121201146.18038-2-justin.swartz@risingedge.co.za>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_133444_102483_A6EA9257 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Justin,

rga is now inserted above vpu_mmu.
Please check the address.

rga:       rga@20060000 {
vpu_mmu: iommu@20020800 {

Should go between vop_mmu and iep_mmu.

vop_mmu: iommu@20053f00 {
rga:       rga@20060000 {
iep_mmu: iommu@20070800 {

> Add a node to define the presence of RGA, a 2D raster graphic
> acceleration unit.
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
> ---
>  arch/arm/boot/dts/rk322x.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
> index 340ed6ccb..efa733207 100644
> --- a/arch/arm/boot/dts/rk322x.dtsi
> +++ b/arch/arm/boot/dts/rk322x.dtsi
> @@ -566,6 +566,17 @@
>  		status = "disabled";
>  	};
>  
> +	rga: rga@20060000 {
> +		compatible = "rockchip,rk3228-rga", "rockchip,rk3288-rga";
> +		reg = <0x20060000 0x1000>;
> +		interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA>;
> +		clock-names = "aclk", "hclk", "sclk";
> +		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
> +		reset-names = "core", "axi", "ahb";
> +		status = "disabled";
> +	};
> +
>  	vpu_mmu: iommu@20020800 {
>  		compatible = "rockchip,iommu";
>  		reg = <0x20020800 0x100>;
> -- 
> 2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
