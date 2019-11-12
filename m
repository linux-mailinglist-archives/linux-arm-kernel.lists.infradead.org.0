Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6089DF9045
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:13:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EOIFy/ks1GKQYyrDdlP1G3DBtp+182TPfVoLaPbGP0A=; b=Ni5Fc43uux7DVx
	fXRF4FVfbQqDwFRNpInoKpcr2wzZpvNESGJyDaSGEILVoWRQCu2NxQaWbkqSYRD+Kd8L820R6zhgG
	UnKSnq7QS//InhKlup3OoY7KaTdRV/cZ4eamF3TiyoLq3mYL9J+owfPBnvyxcyqBmw365goboibZ7
	uVvBRRA41/1PLJwIjEXYsb2tHyCaC4/Nups+UrD7XmY7rLhzRgi47wviVQJ0TXYXZtET9/jvShwFR
	9s3qyJ1S0/ukUmqtufQqByZ11AliUv4GQFvzUERDw6UqSVVTRWf1pBJ/szrC9ZU4Yk/ZfoxfFbgXE
	qDUI7vU1ZMIK7uxFTAiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUVyn-00052p-9p; Tue, 12 Nov 2019 13:13:09 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUVyb-00051d-KL; Tue, 12 Nov 2019 13:12:59 +0000
Received: by mail-pf1-x442.google.com with SMTP id c13so13323354pfp.5;
 Tue, 12 Nov 2019 05:12:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UqWk9HRRlTClA1MgDNYI9u/VISdgynDYV5PkFkVS83Y=;
 b=rMDFx86gjGk706pqeth2lXyBiuVnZfy+JTWZBlR31rkLhCOuBjOeOmqSBXO0pMEO9T
 07rmOSJJPeqyxLUjDB/iS5o8JqzcrvOtv9RBLAJTh6OqmRE9W8+jmOmZE23e/Jg2e046
 0jnueaNst1H+XCj2FiaZZbanUhcbaI3q1moqjvQNjMI8WwvhZAZyDl5sxTkwNb2DFQ6Z
 6Mhl7MADRWcF0M4YKrP5/SZchJAob0fK/I9YSaI/uSsBrtQLGGXhB4RNUW6RPE6G1WnG
 YJsBCTJVeNliprdjdIPV0eS9LIBmljhR3ZcEVkLOfSBFYauUVXPSUkHMukXYmBlqpO2r
 0fqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=UqWk9HRRlTClA1MgDNYI9u/VISdgynDYV5PkFkVS83Y=;
 b=naEQ/c0HEcafopaIDzHmDpW4LpyIJ+GcyH0a9qh05OX17mVdqyLHjmaJI8OukiUrXR
 sLropdgfWE7xe+ZXclbJkQRgeUt4lYYL7kwN8P4zBOJ9y4tzrRR6tTIZwdVjBZDsrmYm
 i/nQ8CNLr0jaDvdqY3kC1MuL6akVtqRdzFQ/yJ9Zld6lazCoZkbRlYS8xZkhO+eb4sk3
 w2MZE8qdDOI8oW+HbdgO3S13c8QeIVEQvq49d8npphnLu4ly81HYiq5rJPsN8q2+UNIZ
 D8HAUEoqvQfsAql+Mss8D4aKsOSY3Fy85yM/+9JQMBRcIVZ5eKLSNxVQP3HcYO6F6tsd
 Zuow==
X-Gm-Message-State: APjAAAUK80TNzO05pbf0bYUv17HxGvcqJ4qzAX5SXMWBKzzAjU7H6CoB
 AXE9f7Mkn/H62JpwSPSgYQH8XXvzYYQ=
X-Google-Smtp-Source: APXvYqxBiE5tNL6hjc/l9z34iA6lzx87hr6sA0evjl+ItykyOnK3sGo47p6hx0jEI+yWq7Ex6aQZrQ==
X-Received: by 2002:a62:6884:: with SMTP id
 d126mr35249486pfc.109.1573564376230; 
 Tue, 12 Nov 2019 05:12:56 -0800 (PST)
Received: from ziggy.stardust ([37.223.138.214])
 by smtp.gmail.com with ESMTPSA id 82sm19760816pfa.115.2019.11.12.05.12.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Nov 2019 05:12:54 -0800 (PST)
Subject: Re: [PATCH v4 11/11] arm64: dts: mt2712: use non-empty ranges for
 usb-phy
To: Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>
References: <1573547796-29566-1-git-send-email-chunfeng.yun@mediatek.com>
 <1573547796-29566-11-git-send-email-chunfeng.yun@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 r2JwH1CJjrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <c23531cd-432d-1857-1e99-48d87956338e@gmail.com>
Date: Tue, 12 Nov 2019 14:12:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <1573547796-29566-11-git-send-email-chunfeng.yun@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_051257_693409_6DA48362 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/11/2019 09:36, Chunfeng Yun wrote:
> Use non-empty ranges for usb-phy to make the layout of
> its registers clearer;
> Replace deprecated compatible by generic
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v3~v4: no changes
> 
> v2: use generic compatible
> ---
>  arch/arm64/boot/dts/mediatek/mt2712e.dtsi | 42 ++++++++++++-----------
>  1 file changed, 22 insertions(+), 20 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
> index 43307bad3f0d..e24f2f2f6004 100644
> --- a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
> @@ -697,30 +697,31 @@
>  	};
>  
>  	u3phy0: usb-phy@11290000 {
> -		compatible = "mediatek,mt2712-u3phy";
> -		#address-cells = <2>;
> -		#size-cells = <2>;
> -		ranges;
> +		compatible = "mediatek,mt2712-tphy",
> +			     "mediatek,generic-tphy-v2";
> +		#address-cells = <1>;
> +		#size-cells = <1>;

At a first glance I don't understand why you change address and size cells.
Commit message doesn't explain it and AFAIS it's not part of the binding changes.

Can you explain why we need that, and update the commit message accordingly?

Regrads,
Matthias

> +		ranges = <0 0 0x11290000 0x9000>;
>  		status = "okay";
>  
> -		u2port0: usb-phy@11290000 {
> -			reg = <0 0x11290000 0 0x700>;
> +		u2port0: usb-phy@0 {
> +			reg = <0x0 0x700>;
>  			clocks = <&clk26m>;
>  			clock-names = "ref";
>  			#phy-cells = <1>;
>  			status = "okay";
>  		};
>  
> -		u2port1: usb-phy@11298000 {
> -			reg = <0 0x11298000 0 0x700>;
> +		u2port1: usb-phy@8000 {
> +			reg = <0x8000 0x700>;
>  			clocks = <&clk26m>;
>  			clock-names = "ref";
>  			#phy-cells = <1>;
>  			status = "okay";
>  		};
>  
> -		u3port0: usb-phy@11298700 {
> -			reg = <0 0x11298700 0 0x900>;
> +		u3port0: usb-phy@8700 {
> +			reg = <0x8700 0x900>;
>  			clocks = <&clk26m>;
>  			clock-names = "ref";
>  			#phy-cells = <1>;
> @@ -760,30 +761,31 @@
>  	};
>  
>  	u3phy1: usb-phy@112e0000 {
> -		compatible = "mediatek,mt2712-u3phy";
> -		#address-cells = <2>;
> -		#size-cells = <2>;
> -		ranges;
> +		compatible = "mediatek,mt2712-tphy",
> +			     "mediatek,generic-tphy-v2";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0 0 0x112e0000 0x9000>;
>  		status = "okay";
>  
> -		u2port2: usb-phy@112e0000 {
> -			reg = <0 0x112e0000 0 0x700>;
> +		u2port2: usb-phy@0 {
> +			reg = <0x0 0x700>;
>  			clocks = <&clk26m>;
>  			clock-names = "ref";
>  			#phy-cells = <1>;
>  			status = "okay";
>  		};
>  
> -		u2port3: usb-phy@112e8000 {
> -			reg = <0 0x112e8000 0 0x700>;
> +		u2port3: usb-phy@8000 {
> +			reg = <0x8000 0x700>;
>  			clocks = <&clk26m>;
>  			clock-names = "ref";
>  			#phy-cells = <1>;
>  			status = "okay";
>  		};
>  
> -		u3port1: usb-phy@112e8700 {
> -			reg = <0 0x112e8700 0 0x900>;
> +		u3port1: usb-phy@8700 {
> +			reg = <0x8700 0x900>;
>  			clocks = <&clk26m>;
>  			clock-names = "ref";
>  			#phy-cells = <1>;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
