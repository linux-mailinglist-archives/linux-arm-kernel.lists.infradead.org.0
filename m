Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE25D13219D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 09:46:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EL8WoLc08uQt5wTAF6YZ8Pt7eWtDpAVQKadtF8eYrkg=; b=C/rQP2MeDm1L6l
	f5gCu4GJNotcMMfo6LThlnop7ZU6Vs50fl8bqXNmZsKXsKqx4wsUoy6vu4rxamsRMDTygFo6pZr+5
	vO0dstUyWVHoJCL9JfNO4F1AJr0huTEUoyZQTEwRMsK+po0O/2W78xii6kl0TnAr9K3isa8IxK5bY
	HFnAtPCctxBhk1Uj69IaFmQi1m+3Jx4H5YP7lFAlhc4SJPrnCH8xFWBGxrv9ZPSQEyzm/fiTjkgd2
	FrI3FOfxDaGfOW7FR+wpLpeMoetWI+DzCcfmOmjKtYoyG4b5vP3pNiv0cqxyxZkwOZaDvPGB2Zf+M
	0i5I0BDDfr26uapo03cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iokVB-0000I5-GE; Tue, 07 Jan 2020 08:46:13 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iokUu-0000G5-43
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 08:45:58 +0000
Received: by mail-ed1-f67.google.com with SMTP id c26so49695517eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 00:45:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8plItG8DbNYbwBcAqdDSAMoRYlALr96HuHXReZfE9QI=;
 b=N7gArCy2xqTctZMMNkekp8jF6PHXlvvfh7l/hSOiZkD2+VkdYEbtBBcYDpU9Rfjh8R
 7AetMgUPBTRiyjnVFjVyF3kmFgwtAGibBxil6peisz4xdQMJEyzNByeJYRHihPACe9tz
 h6ajGz9pvuEnD6Jcy7Y48zC8fo/u30kBrjweW8GeG15HH3aWWnHShU3NjHjHwy2Jf3Ld
 N15o3i1kkf5TXQhIyKbYDrK3KG80rS+ILWH8fDAyz1gy/W5beMEZm8FICJ0v+E39slFP
 f0MKLCnRiJ+t0bE4oIvUVyH96DXx2PsBDBcTTyqwBVDU6nWfc+e+EvRceykvBrtm0yZv
 kqBw==
X-Gm-Message-State: APjAAAXjfOreDp6yTpoAGfx2rWNuD31qSpAzAJSH2bhg0FkrOvkY1+37
 FlEEKQRRwDJYEMmlKUoeVlU=
X-Google-Smtp-Source: APXvYqzbFY7PNYNI0ARSqYBPkHcoX6e4/UrD7HFurJucJLwHzP2dKHYzhk5s1vaVLtajDWHetj7/bg==
X-Received: by 2002:a50:d5c9:: with SMTP id g9mr110412544edj.131.1578386754616; 
 Tue, 07 Jan 2020 00:45:54 -0800 (PST)
Received: from pi3 ([194.230.155.149])
 by smtp.googlemail.com with ESMTPSA id c24sm7406894eds.40.2020.01.07.00.45.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 00:45:53 -0800 (PST)
Date: Tue, 7 Jan 2020 09:45:51 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: exynos: tiny4412: add fimd node
Message-ID: <20200107084551.GB31906@pi3>
References: <20200106191003.21584-1-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106191003.21584-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_004556_160304_EDECC305 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Mon, Jan 06, 2020 at 07:10:02PM +0000, Yangtao Li wrote:
> The patch adds fimd node for tiny4412 device.

Hi,

Thanks for the patch.

Do not use "This patch ..." sentences but simple, imperative mode:
https://elixir.bootlin.com/linux/latest/source/Documentation/process/submitting-patches.rst#L151

Here you do not add FIMD node, because the FIMD is already there
(defined in exynos4.dtsi).  You however enable it.

Enabling it without panel does not really make sense - does it work?
I guess not, so this should be squashed with second patch.

Best regards,
Krzysztof

> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  arch/arm/boot/dts/exynos4412-tiny4412.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/exynos4412-tiny4412.dts b/arch/arm/boot/dts/exynos4412-tiny4412.dts
> index 01f37b5ac9c4..2b62cb27420c 100644
> --- a/arch/arm/boot/dts/exynos4412-tiny4412.dts
> +++ b/arch/arm/boot/dts/exynos4412-tiny4412.dts
> @@ -68,6 +68,14 @@
>  	};
>  };
>  
> +&fimd {
> +	pinctrl-0 = <&lcd_clk>, <&lcd_data24>;
> +	pinctrl-names = "default";
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +};
> +
>  &rtc {
>  	status = "okay";
>  };
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
