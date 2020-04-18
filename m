Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6861AEB22
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 11:15:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=debL+oivC4l+8TLeRdvniLgY58jc54tkUX8j3Wo1QwY=; b=R2aJHueabATVsE
	EgsURcO8siEqziB+FiyRV/e0OwwAykc2qD1535fDOSYPoG9i5e9z9aQWQG3BRth9GqmooIdSmB4Zk
	PFbfpGZg9NzzMKIyDKwu7jC3boRauBtWtomwTXYitzjehOGKVBmyGaALd6rqUOXa8zkz3TGJrdK2t
	BknbsLwoeYx3t6p90hN1a7+yOXo1EY/K5E9BClg7flWcD5JMVFO+Nv1of4r4srlyzbDfkcADJz9M+
	uP5wZJLHD50Nm0xo8w9FXFqx2Sf8TxH2eBG7Ko5BeQB629qtBm+wNk9pK98MBRQVsCU4uh/fHBuIG
	80tp3TDVzEzMaQEnkQSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPjZd-0004sO-Lu; Sat, 18 Apr 2020 09:15:41 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPjZT-0004qD-8c; Sat, 18 Apr 2020 09:15:32 +0000
Received: by mail-wm1-x342.google.com with SMTP id g12so5410236wmh.3;
 Sat, 18 Apr 2020 02:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bhjKQUnbVfHMUqcN6C3pNEvI0BmRCXrqJn+ILoBLgNE=;
 b=XkmM8GrtAWmq88n7v4WYH6fYf+5ZAxXJw/ew3C3zLCtrrrXnrsQmkd2jAdRGBp/7Cx
 RRm80J2pNErUhL/gsnwUPiJDq8a+qN0wz/LCvzM92JjQcz0KXmYeXfxgQB5h8e/rxenA
 MifVfVQ6wmYplReoa9RCT08vHBEu3tcbcwRcx9iB9vMpig8K/N/iEvSshglaqwYnLDmg
 +0ttbfmHuizmX3+MIDngAm2pkHvLDxq37KTK6Ft/HHzoQs4Y+Kpj2z6wGkpKjMzgqxLZ
 V7Y8Is0oukpKZ+2JXZjYMrdtnOHzqtt18HvvGxb1fc0FvqMoaSPMbJniEDfqge1fV9YS
 xI5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bhjKQUnbVfHMUqcN6C3pNEvI0BmRCXrqJn+ILoBLgNE=;
 b=B2Wgn/oqlLQ4CB04iwSFau6JDT3LXCaMf59yxvP5Z6b6vYQ9MD6tOzzvmriNKOkt3R
 /Dz0xcoiEkAVaRuedGnYIeYtMDzCwUEMFFLgyXRayq2sFKbTCFunT4hB21laZN/ElsFJ
 DgxhEL22fA9PQNt8QR/7ulJFpeH6i3V/NWIyiZUkP3LOiW2uiwVVRbe1TujoF+korkqe
 M18VJgNkEy6EF9Gb1+mvBMwliQ55ut+dEJXJEQLt90Rr6ObUBT8NpelBAIMA2uVh8UKm
 dw+QKLBqbmmW4OdugdlxyDo2mkNMMhwrNtVcwWI2HtpRQm2onRz88RUhAOoFKJdNnYa2
 RSEA==
X-Gm-Message-State: AGi0PuYkH63dF8PfIdTHnLj2DdUuAH1XsSBekPxIQyt+g4wfxPIshu8+
 3Bgf/R/E5ftgLWeKXf4VUNU=
X-Google-Smtp-Source: APiQypL+lEVsy+IjxBz7XNE27DJExvB6yoFZDOdt3iHp4l3KsnmgBJLkmn7TarbBva1+K29KE7xiVQ==
X-Received: by 2002:a1c:ac44:: with SMTP id v65mr7447837wme.33.1587201329312; 
 Sat, 18 Apr 2020 02:15:29 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id k23sm11359188wmi.46.2020.04.18.02.15.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Apr 2020 02:15:28 -0700 (PDT)
To: justin.swartz@risingedge.co.za
References: <be4f2c802a64562cbab629abc82dd7d228a1a747.1580768038.git.justin.swartz@risingedge.co.za>
Subject: Re: [PATCH v4 2/3] ARM: dts: rockchip: add rga node for rk322x
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <bf3a2b97-4a24-e9f0-599b-4731cc94a067@gmail.com>
Date: Sat, 18 Apr 2020 11:15:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <be4f2c802a64562cbab629abc82dd7d228a1a747.1580768038.git.justin.swartz@risingedge.co.za>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_021531_329285_82BA7B7A 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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

Hi Justin, Heiko,

In the discussion about "rockchip,px30-rga" it was mentioned that:
"no status for soc internal components without any board-specifics".
The binding is in mainline, but the dts node is missing I think.
Should this also be changed?

Johan

+&rga {
+	status = "okay";
+};
+

> Add a node to define the presence of RGA, a 2D raster
> graphic acceleration unit.
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
> ---
>  arch/arm/boot/dts/rk322x.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
> index 340ed6ccb..29d50bebc 100644
> --- a/arch/arm/boot/dts/rk322x.dtsi
> +++ b/arch/arm/boot/dts/rk322x.dtsi
> @@ -621,6 +621,17 @@
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

remove?

> +	};
> +
>  	iep_mmu: iommu@20070800 {
>  		compatible = "rockchip,iommu";
>  		reg = <0x20070800 0x100>;
> -- 
> 2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
