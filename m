Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 435AE173E5B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 18:24:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aEzaA62g0saqrdn6JYWaG3Qz9ZBzalnWtWheyH1a51Q=; b=Pco/4Dq3D5cDNEzU1ABKnM3a+
	W87Z1YMZJ2AQTilw7WB59RFvBuGPpAfGtvwctCLrB+a0VEETxoaCRTK1gVuZYMgJcuB3o2iasMquh
	ETV14YMOcSNilB3Q7jOQvNimt4N0KcFe4HMwgF8eSwvuayIKUnhUOMgrA3aC+EgzPpoFdEohLL5Yp
	2UVnnxOyagqZ+QwC6U+s7Vb+EIwM/v2XILP/atXgczyPDVoDySgLnYGQRBQBhsUDx2BeGvDIpHMdT
	qDXplm18yfnaV1/vhcs30ZL0wXF9XMEkgLhf1zQBEQ638Zym5Vgxbuk8dFtlDf9SLLft9p3Sivn+0
	SOHO4E2oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7jN1-0007Nr-Bh; Fri, 28 Feb 2020 17:24:15 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7jMq-0007M9-KR
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 17:24:05 +0000
Received: by mail-yw1-xc41.google.com with SMTP id h6so4000611ywc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 09:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=8DBagXdO92SGZD18edolNudaDY7BySfxVES4onPKc48=;
 b=BiCNBCpDhvom4uoBEgi6wWUf78Kj5hpmt5TQuapy9qcR64nz4OnJs4O7vU8LcLUu1Q
 Nfy/foDa3tGn4/w4Qq2UVG6M4CVuzCmn9cGtWCFzLZD/gC/cBKSKqjOgg1Y3L5Yy0mGv
 PDHzM2BiUkH/rSgYYhZ/pZYHhX40OjyNXBiHVxpBfnnDjWLEmX58heB6u2EeaeQzIDcy
 6/UrxwaLyrcFcHFVPAHwz4hCE5WmYIR+hl7l9Q9Zqhhks6gu/viQxHQ2VyXC/iKyyhnS
 TRQifnXdpH2I43DBTHtwz6C4YTGxMhpodWZtaFd/rok5ZYFKXb0osBRKqJwU0XgXJ6eg
 8KBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=8DBagXdO92SGZD18edolNudaDY7BySfxVES4onPKc48=;
 b=bSD7KZc2t8yvNFkvhhH0DZmT1lj3z1cZyPpXg9ya2KVCau+dCp9h7ZtFIv2yz5tD6K
 E/ObawaKGFKCr1HUr6sX3QA5stWUjneRx3kMyBmVu56atYoNZ41sW6zU+N+d1A2+BvQ6
 EkoJWUQDIk4C5RhwslyF/NF0gzrAKEH1x4biSOSf7npyUbq4fnTNgE1doQDNAPwAgZGO
 yXPjIQiD/3xu7aD5BZt5YGHaGI2v9TxjQrVoSGxILxguKw2543ZYdnKhXXRqXfQibhaX
 koElKJaKM62wfK64CxkP39jc9ZaAa78s6pus97ueZ4NZt9ItwCgy9jGSIHCRkNZo9y4p
 YdLA==
X-Gm-Message-State: APjAAAV/eJ9KLN42v1KCryelgW+FosxqP1fhT6k6kq+DNT7aPAaLsyG7
 0niDaXRSC3o7zbR0JLrnYA8=
X-Google-Smtp-Source: APXvYqzjFFyA3EgEXXPFZc4AK1Co1/BHuEDPNq3NoVt9mMTOgu4Ojh5FyaxarOeEjgtDprXLfIV49w==
X-Received: by 2002:a25:b16:: with SMTP id 22mr4521149ybl.380.1582910643178;
 Fri, 28 Feb 2020 09:24:03 -0800 (PST)
Received: from [192.168.1.111] (96-42-251-64.dhcp.roch.mn.charter.com.
 [96.42.251.64])
 by smtp.gmail.com with ESMTPSA id a202sm4221235ywe.8.2020.02.28.09.24.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Feb 2020 09:24:02 -0800 (PST)
Subject: Re: [PATCH v2] ARM: dts: rainier: Set PCA9552 pin types
To: Matthew Barth <msbarth@linux.ibm.com>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Eddie James <eajames@linux.ibm.com>
References: <20200225201415.431668-1-msbarth@linux.ibm.com>
From: Brandon Wyman <bjwyman@gmail.com>
Message-ID: <ec4c675a-b1db-c2d5-97d0-dcff44123db0@gmail.com>
Date: Fri, 28 Feb 2020 11:24:01 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200225201415.431668-1-msbarth@linux.ibm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_092404_676367_2FA965F6 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bjwyman[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2020-02-25 14:14, Matthew Barth wrote:
> All 16 pins of the PCA9552 at 7-bit address 0x61 should be set as type
> GPIO.
>
> Signed-off-by: Matthew Barth <msbarth@linux.ibm.com>
> ---
> v2: Added leds-pca955x.h include
>      Added upstream to patch
> ---
Reviewed-by: Brandon Wyman <bjwyman@gmail.com>
> ---
>   arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> index c63cefce636d..d9fa9fd48058 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> @@ -4,6 +4,7 @@
>   
>   #include "aspeed-g6.dtsi"
>   #include <dt-bindings/gpio/aspeed-gpio.h>
> +#include <dt-bindings/leds/leds-pca955x.h>
>   
>   / {
>   	model = "Rainier";
> @@ -351,66 +352,82 @@
>   
>   		gpio@0 {
>   			reg = <0>;
> +			type = <PCA955X_TYPE_GPIO>;
>   		};
>   
>   		gpio@1 {
>   			reg = <1>;
> +			type = <PCA955X_TYPE_GPIO>;
>   		};
>   
>   		gpio@2 {
>   			reg = <2>;
> +			type = <PCA955X_TYPE_GPIO>;
>   		};
>   
>   		gpio@3 {
>   			reg = <3>;
> +			type = <PCA955X_TYPE_GPIO>;
>   		};
>   
>   		gpio@4 {
>   			reg = <4>;
> +			type = <PCA955X_TYPE_GPIO>;
>   		};
>   
>   		gpio@5 {
>   			reg = <5>;
> +			type = <PCA955X_TYPE_GPIO>;
>   		};
>   
>   		gpio@6 {
>   			reg = <6>;
> +			type = <PCA955X_TYPE_GPIO>;
>   		};
>   
>   		gpio@7 {
>   			reg = <7>;
> +			type = <PCA955X_TYPE_GPIO>;
>   		};
>   
>   		gpio@8 {
>   			reg = <8>;
> +			type = <PCA955X_TYPE_GPIO>;
>   		};
>   
>   		gpio@9 {
>   			reg = <9>;
> +			type = <PCA955X_TYPE_GPIO>;
>   		};
>   
>   		gpio@10 {
>   			reg = <10>;
> +			type = <PCA955X_TYPE_GPIO>;
>   		};
>   
>   		gpio@11 {
>   			reg = <11>;
> +			type = <PCA955X_TYPE_GPIO>;
>   		};
>   
>   		gpio@12 {
>   			reg = <12>;
> +			type = <PCA955X_TYPE_GPIO>;
>   		};
>   
>   		gpio@13 {
>   			reg = <13>;
> +			type = <PCA955X_TYPE_GPIO>;
>   		};
>   
>   		gpio@14 {
>   			reg = <14>;
> +			type = <PCA955X_TYPE_GPIO>;
>   		};
>   
>   		gpio@15 {
>   			reg = <15>;
> +			type = <PCA955X_TYPE_GPIO>;
>   		};
>   	};
>   

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
