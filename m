Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2C31321E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 10:05:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZBt2or3ksXMozJrd8ki80+L1w9rsA5TksYhBdEuRwk=; b=al77GuH+YP+Dq+
	8eXqv4Y4aob3CS7zwYn9+E056qjm/C24629m8rc6ik3GNzoBpenztECvTrfa2pYw4D098qxCrKR4o
	Vnr1QgMdCJ2Q6ayUeGp1NCUlaZpmbgLUEabuqOw+WD9Rvo7lsdui2bHyZ3mj7bSkyHuOaZYf/6g7G
	Y4fIueuDiy0h8JgvnjzZBICl1pwXjEuUGgfyatTpIhY6fbwO53q1H8feZW/5oDfnq/jGWjS46maZg
	vCCvb2lHnw94XHqzAhfZNjVUabpOQGS93z473YomgR0LwS1DYSo4DRx3PytrLy90iAWeizh8CFrl5
	qjr720law79lWQgZncFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioknL-0006SB-Tz; Tue, 07 Jan 2020 09:04:59 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioknF-0006Rj-E3
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 09:04:54 +0000
Received: by mail-ed1-f68.google.com with SMTP id v28so49688622edw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 01:04:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SGG4xHX2YATIq9VZs4BAzLmEWAu7JtLxJw2WW5I4CiA=;
 b=FzKYSlAHgTQp/phSluPI9q89Su4yGfQbSRtqIeo4PQ+ris+MoQfisgoHREt4hmUB8L
 kU0xl0RkL3luEr1vG2dT+yGL1Vxf9P0nYjV9zE/zkQV1OHyNX6ZpMb+HuclSMT8nsBRo
 eRx1wXxsaNiJVWAsnlyQ+D6ZtlWTOReKR05uljE+qBa+xnCHhbQO1z61EdiDYLeIDQmN
 j1mCRemCIgBHlq7WOIEO9ImnzfyPeNkUdZR/JFl+GyS8wGp1gEnyIoXdA4cW7Ngo7it5
 /PgyxdThxjEDwEXq6wsNb3t+tiwxV58tQug2GOM0UkqzMAzIAiNe7rl53hc/ZCh8RUhL
 FY5g==
X-Gm-Message-State: APjAAAVvHU+JCbEzkXuxLHltaNLoeTbJ4rq0FUHeGNQS2GbDNqUzcLT4
 4qT/hodpAUNCTOWh3CfYrpQ=
X-Google-Smtp-Source: APXvYqyYO/ux/7ZOIuaH8J6fcPFS8f5Bcu/C6zg1+oGXA5GRJ16yYiqmjY4rrOHIsud0A3lqXQDsVw==
X-Received: by 2002:a17:907:212f:: with SMTP id
 qo15mr86708540ejb.245.1578387891926; 
 Tue, 07 Jan 2020 01:04:51 -0800 (PST)
Received: from pi3 ([194.230.155.149])
 by smtp.googlemail.com with ESMTPSA id s12sm8054935eja.79.2020.01.07.01.04.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 01:04:51 -0800 (PST)
Date: Tue, 7 Jan 2020 10:04:49 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: exynos: tiny4412: add proper panel node
Message-ID: <20200107090449.GA32007@pi3>
References: <20200106191003.21584-1-tiny.windzz@gmail.com>
 <20200106191003.21584-2-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106191003.21584-2-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_010453_471817_02995B08 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, kgene@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 06, 2020 at 07:10:03PM +0000, Yangtao Li wrote:
> This patch add at070tn92 panel for tiny4412 board.

Please fix description as in patch 1.

> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  arch/arm/boot/dts/exynos4412-tiny4412.dts | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/exynos4412-tiny4412.dts b/arch/arm/boot/dts/exynos4412-tiny4412.dts
> index 2b62cb27420c..57f9d09233ad 100644
> --- a/arch/arm/boot/dts/exynos4412-tiny4412.dts
> +++ b/arch/arm/boot/dts/exynos4412-tiny4412.dts
> @@ -66,6 +66,16 @@
>  			clock-frequency = <24000000>;
>  		};
>  	};
> +
> +	panel {
> +		compatible = "innolux,at070tn92";
> +
> +		port {
> +			panel_input: endpoint {
> +				remote-endpoint = <&lcdc_output>;
> +			};
> +		};
> +	};
>  };
>  
>  &fimd {
> @@ -74,6 +84,12 @@
>  	#address-cells = <1>;
>  	#size-cells = <0>;
>  	status = "okay";

One empty space here.

> +	port@3 {
> +		reg = <3>;

Why starting from "3"? Why this is port@3, not just "port"?

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
