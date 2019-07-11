Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D0E65A59
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 17:24:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MfNGNrx239JhYl8xrN+meu+m9P+EC1IOCIAx0gxZvRM=; b=TSJSPSCXbLGJUx
	vwhzDugrYBSnznh+yDzllB6mpF5YR1I7wvDfZBZatUzT1rybYSU5x3WlIGL0tVEW6p/cUCOJItOPB
	Pzv++L0ke6TpaZ+eiAyhKi4xOOY6qZlT5LAovNvpkGC4DVxMPrl+6F5ExFiMtrWVd1KsNe5yMjcGl
	envsxR2P34RnKX5/JgNhW1FiCn/WTOWA4W0h+g8hc8HNnsEsV3R9rDo3diK+mbw7IvW+zKcYIp6Cm
	9adURqo4dCbnQR6AO24xO2ZJf6PzIJnQxVdwzn4SNHkLi5L39MUPxdhLi13YqfP1n8GE8oTH3RbnD
	xn/1ybeMdFzBhL7oUVdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlavz-0004sx-Tt; Thu, 11 Jul 2019 15:24:36 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlavX-0004pI-8c
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 15:24:08 +0000
Received: by mail-pl1-x641.google.com with SMTP id b3so3206302plr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 08:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BcLmOYH0hVh2GO1koR1B1MREnozzKIb98UGVyNhgyvA=;
 b=yP5AghxJlmtJT9xbQURe83C3Vwxw/WRT3XNabuFWiu318/gbotdiRT7Z7tPhhpQFG8
 ej1EBV9UPksoB+l1MbLLY7Nc68Jm+Lh66M8Bl8JHkNQ/t5yWWd+yECZ1TbWOa8zCScVl
 aduTGbyw2OUoZHevFxhupOs/QsvYLmHhKiPN/HGTeUnGnYzX/13uE0lvyzuFY3r6YBfL
 fLmvaB7xZCrTW4lcMxCKhbp+jkvPCDD0qk7QM2e9x4clRLaYcgmQtGEkNPus0YoH4pOj
 ansTGICILH19ax66lhpZAFTxcB5aEMVnC+lywHkC+aRcSz6n/jZ6l9cuLuGIRBk/zEZp
 S4Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BcLmOYH0hVh2GO1koR1B1MREnozzKIb98UGVyNhgyvA=;
 b=ttmVZT5AUM4jmDmuOEMo2i0L5h88Ge0JW9VSyJjK2ZGXlJspLqzp55wMUvyJEGX0Jm
 /efWqt1kRw/ZcxbFee0a81Kfrif4DilfdTkpDta6tMQYFzSOC4bbgS8sVuvR3FZDuw/Y
 UjpcUUlM/O7IeAiNEKI3LhC1CSYIyoUraH5nVYuJP4Iv4ZaGAQr8exn8LHifdkYkeD7j
 Ip+Z9BjsVD7xAAlVl9c94Yf7dUZOugKKgBCJhKItl5qDwHY21LWNXBPOd/yKFyMh4Y8f
 iBsz14t9ETPCg0vZFEpFHK4E2+bZGwpwow9lX/9qaaZDIm556AV37HR81fIDwfqPclxQ
 N6uQ==
X-Gm-Message-State: APjAAAWvpxJ4IySNQVrUr7Of9bSONQBdnetDcKrtjLE8IFOKj3COIPqB
 QERY9lHCyAnrkN4cAXnygBkSzA==
X-Google-Smtp-Source: APXvYqx2Z1YHM2uEn8vgbB85BAvb/nr89ZG+X9+PjmEwJWGS+XE9Jl6Xl4zcIMmxL/6Lwml7CDeZnw==
X-Received: by 2002:a17:902:61:: with SMTP id 88mr5078309pla.50.1562858645425; 
 Thu, 11 Jul 2019 08:24:05 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 201sm8703572pfz.24.2019.07.11.08.24.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 08:24:04 -0700 (PDT)
Date: Thu, 11 Jul 2019 08:25:14 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Subject: Re: [PATCH v3 10/14] arm64: dts: qcom: qcs404: Add OPP table
Message-ID: <20190711152514.GK7234@tuxbook-pro>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-11-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625164733.11091-11-jorge.ramirez-ortiz@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_082407_367977_9DDF9353 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: mark.rutland@arm.com, heiko@sntech.de, mturquette@baylibre.com,
 will.deacon@arm.com, david.brown@linaro.org, linux-clk@vger.kernel.org,
 jassisinghbrar@gmail.com, sibis@codeaurora.org, jagan@amarulasolutions.com,
 devicetree@vger.kernel.org, niklas.cassel@linaro.org, arnd@arndb.de,
 linux-arm-msm@vger.kernel.org, olof@lixom.net, robh+dt@kernel.org,
 horms+renesas@verge.net.au, linux-arm-kernel@lists.infradead.org,
 sboyd@kernel.org, linux-kernel@vger.kernel.org, amit.kucheria@linaro.org,
 vkoul@kernel.org, khasim.mohammed@linaro.org, enric.balletbo@collabora.com,
 georgi.djakov@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 25 Jun 09:47 PDT 2019, Jorge Ramirez-Ortiz wrote:

> Add a CPU OPP table to qcs404
> 
> Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/qcs404.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> index 3f17e1b09c13..d876dae5b0a5 100644
> --- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> @@ -83,6 +83,24 @@
>  		};
>  	};
>  
> +	cpu_opp_table: cpu-opp-table {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		opp-1094400000 {
> +			opp-hz = /bits/ 64 <1094400000>;
> +			opp-microvolt = <1224000 1224000 1224000>;
> +		};
> +		opp-1248000000 {
> +			opp-hz = /bits/ 64 <1248000000>;
> +			opp-microvolt = <1288000 1288000 1288000>;
> +		};
> +		opp-1401600000 {
> +			opp-hz = /bits/ 64 <1401600000>;
> +			opp-microvolt = <1384000 1384000 1384000>;
> +		};
> +	};
> +
>  	firmware {
>  		scm: scm {
>  			compatible = "qcom,scm-qcs404", "qcom,scm";
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
