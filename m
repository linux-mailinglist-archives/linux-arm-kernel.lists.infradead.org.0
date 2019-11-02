Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B11ED07B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 21:02:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hcnT5Hu6ge50efO2Kq1KtgAt0XbEeLSF/4G14SZyat8=; b=rR0WTcOTrcPwh/
	TTKoftwlKJvL++4doULE/YtL73CskmSCiBUzvFCV1ovmw768V/83CHTi5ZakrDXVQQyjoch5zm/hj
	X29JLhtCdz7QjULnyoLpN4VpcZjvEWxIJ7QBvKFqC9QTRwmkbU+5H9DAcqAhfKpraMWZsjhOFjMv7
	nc/OTb7/mqHIpsZXy1YtNcQVhoYzsgS+3J3Rs5Hgrh0FZjx1lAtVoeDmy7ysUX3J9HOOHo9iz4/6i
	W94q0EIs0t0a+/PiYHbosF/6EieFs+BNiwO/kwqFdGQHPrsqj3kXvSZ1KZoqbNSdb/Sy3MALMdxLK
	Y/eWf54EMvhyUIFzE7mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQzbm-0001FT-Pa; Sat, 02 Nov 2019 20:02:50 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQzbg-0001F7-32
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 20:02:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id f3so1111407wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 Nov 2019 13:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rD2GO//uNM6f6fHwOF+vVUXCWQljjK6YePsHKgplkms=;
 b=SrRuCYOCBC79irXNubEbDTPgrM+91W65BqwWXocSY2ahUl4bxj3gXQR6hhYIFWKn+w
 lIzZItMo5Dn9opG9NNTP14kPisjebGdjrqAhwK8ZuXj98KYpH6kjoFKZs6Ke1gANqs7S
 558hL3DfTUUHf2GU8Bhg5h4YmYkhXcP6i6ky56TdB3/WSnQoWvajreADsowIaFJy2g6i
 cRtd3+EaoBehu8FFdKFdm5Ffvy1njTclj4U3hOpK/Bbe9R5+9hHnYbgxE2uobIjIaLT5
 XYj9sRfR6SpfmQnWOQQGO9Zj1Y9OF9bIZuFbwuUzQO7GkPNT1fqgki4qCXKXiRNb9dPO
 UPtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=rD2GO//uNM6f6fHwOF+vVUXCWQljjK6YePsHKgplkms=;
 b=c1vi24Sh4kYMzA1wmXUpxqsKob7p4QY6VO8D7q5OUuY6b4A0DlJ/MHdGfRvrlJXSUH
 iKxfvKlQznhKV8iCtQ8FHpuwO8WKhtOI4bDQXlCFwlR+I8iuDj5r+R4x3V9BIsUo98zp
 P6ohHZio+qY8qCQdsg42RJk4hnyo31nroDACOVqrIKemli1NHYOfjMhSFFygzorAUb/l
 cEEc0uS9R4sNPtH8nqjKcvvdvAWGNP934dzRESgmDKg5FsT4QsTJ6xONuw9K2gkg+Z5c
 KbznZLMOxXRTeWBr4dlGnbqLsk86hNTcFK8ZwoqwvRMTXeTsfJK4p9ANLJYMQt4V356e
 u6Gw==
X-Gm-Message-State: APjAAAWF6WlEbm5KXgQ2IZuHNR2YQFT4y+aY4kRShD9wGkxknJoeg+wl
 32RIsQpdOU0fnSS76Z33clEYP0Uq
X-Google-Smtp-Source: APXvYqwhWugMAnHGPNvckwgkrH3lBypoPMEO5SWCEr4XHJDzSLSqUgXEGtJyg8Jb1ve6NOC3WCvqSA==
X-Received: by 2002:a1c:2706:: with SMTP id n6mr17199657wmn.154.1572724962415; 
 Sat, 02 Nov 2019 13:02:42 -0700 (PDT)
Received: from [10.230.29.119] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 36sm25412466wrj.42.2019.11.02.13.02.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Nov 2019 13:02:41 -0700 (PDT)
Subject: Re: [PATCH RFC V2 6/6] ARM: dts: bcm2711-rpi-4: Enable GENET support
To: Stefan Wahren <wahrenst@gmx.net>,
 Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>, "David S . Miller"
 <davem@davemloft.net>, Florian Fainelli <f.fainelli@gmail.com>
References: <1572702093-18261-1-git-send-email-wahrenst@gmx.net>
 <1572702093-18261-7-git-send-email-wahrenst@gmx.net>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; keydata=
 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
 a9BQwACgnzGuH1BVeT2J0Ra+ZYgkx7DaPR0=
Message-ID: <69e7a48f-4a31-32af-9c04-889a44e19f96@gmail.com>
Date: Sat, 2 Nov 2019 13:02:38 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <1572702093-18261-7-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_130244_133089_4AA8E985 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Doug Berger <opendmb@gmail.com>, netdev@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/2/2019 6:41 AM, Stefan Wahren wrote:
> This enables the Gigabit Ethernet support on the Raspberry Pi 4.
> The defined PHY mode is equivalent to the default register settings
> in the downstream tree.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> ---
>  arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 23 +++++++++++++++++++++++
>  arch/arm/boot/dts/bcm2711.dtsi        | 19 +++++++++++++++++++
>  2 files changed, 42 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> index cccc1cc..904efe1 100644
> --- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> @@ -19,6 +19,10 @@
>  		reg = <0 0 0>;
>  	};
> 
> +	aliases {
> +		ethernet0 = &genet;
> +	};
> +
>  	leds {
>  		act {
>  			gpios = <&gpio 42 GPIO_ACTIVE_HIGH>;
> @@ -97,6 +101,25 @@
>  	status = "okay";
>  };
> 
> +&genet {
> +	phy-handle = <&phy1>;
> +	phy-mode = "rgmii-rxid";
> +	status = "okay";
> +
> +	mdio@e14 {
> +		compatible = "brcm,genet-mdio-v5";
> +		reg = <0xe14 0x8>;
> +		reg-names = "mdio";
> +		#address-cells = <0x0>;
> +		#size-cells = <0x1>;

The MDIO controller is always present, therefore its node definition
would be better placed in bcm2711.dtsi. Other than that:

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
