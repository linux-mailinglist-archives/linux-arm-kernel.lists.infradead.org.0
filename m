Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5035A32D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 20:08:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nSFcWuzZkKNOaWc4ZUQVpvHMD+0qJfVZ9f332vAufeM=; b=G/DU2rlI7JVv2s
	GgRZ5VTg4y9CF3oLNJuFgwb629yQQjjHVY/SogjvK/Z9ddlrpqPtAgwopEwByxTId58WbmNMEz94Q
	xgRr8QXU6oftORoHxGaDEaxJawKv8L/DJqS04daOMwoka21pqsFgEIR/t+3nV+0Z01S6u/TRdLtQf
	mnG+L1RiGqNO/s+j9xHPBvEAFKASOLIT5+oFSu/t6+EZcpK/ed4ekCYgpUoB+UJbj32BImej+ST14
	HzDFuM3zvZa0LsRa9iYBL1R4gc6nxuBlPWT0shEcbZnq4TXGQUodZupJUeviNBhuhC+nNWs7rUeZ9
	A8AXvBoMLtKNYLde38Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgvId-0004wv-5T; Fri, 28 Jun 2019 18:08:39 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgvIO-0004vg-Ge
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 18:08:27 +0000
Received: by mail-pl1-x636.google.com with SMTP id b7so3666641pls.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 11:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=G6tQj9JGt5eWV6Usl/0DEM4bXR28Xsa6XudzWBZRees=;
 b=urIYMQLw7SgSurMotfZfSVmJc67vOh9HFHgSKGv5VupzUseVTLEXmT4xdsJnI7M+T9
 OYncOZk2MSaN8ehZkyEwnW0GdRndb+7sm1ngQeAfY47Axmo6TSzaIf/nq+y0zynVLrLy
 d/hK3wpwurXP4dybCFCwbMvYbG6iyoDoOem9/C+obwD/e34nssT8ZZ3OA7s+Zs3MHQFZ
 zNKOsouJEhQWT5wUUBmyfWd39S7QVEZR1e3BRaQbNsI8/cIRgBUyKA9EmGXPaUwwGfB3
 sk9Rl/U+Ol/TSHTDqiU7H9KoeYDOoMZc1vsZ+4sdoItr/3X0owjcXhKSfZgcTnEf66qY
 hhFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=G6tQj9JGt5eWV6Usl/0DEM4bXR28Xsa6XudzWBZRees=;
 b=A1AgGH8f7rtz7v9V8Fg7v2Kc5VWnoyh1dYG1TckJmXufsBkPfKwzgjxv5HRSkPc75z
 wzUhCaPW+zDGEStAGKf/SDjdH8ArFSLcCCtFhKrMj/29eRqRi+XZgpbbU5kbCZNvqW+C
 87RtBbwKFqTkt9ez02qqQmKFsQ+FcjfmglsmqDvnH/jw+WxVvP92CfhDzk2B4ADcNLuo
 5KJqyOFWeXzNF0lvNx89jcOBuIAnvc+Csbu1h4YkaW8qytD8hOh2HJaCrVT53LyvHKAr
 8El1avv8GLHSPAldG01P8565oxQSHGfCVeHDjRRo/qN1LUpC+SX3ChUH1VtMY2Dx2Jrp
 2O3w==
X-Gm-Message-State: APjAAAVI8kWU/enGGUSg7MAcwtZYqoQLRUYyXvKD8ry/a8FNSuPXOlZr
 FrWsH+5XyeCzNEQHjBIU7f8wNg==
X-Google-Smtp-Source: APXvYqwgMrO9KnbOghS1eRTPHzN/QExULWcHo+Axo7AlQFrSWdgK3st/zL/VsoC8WPYxv1TleZVDSg==
X-Received: by 2002:a17:902:a414:: with SMTP id
 p20mr12470690plq.187.1561745303607; 
 Fri, 28 Jun 2019 11:08:23 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id 196sm4065985pfy.167.2019.06.28.11.08.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 Jun 2019 11:08:23 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, jbrunet@baylibre.com
Subject: Re: [RFC/RFT v2 12/14] arm64: dts: meson-g12a: enable DVFS on G12A
 boards
In-Reply-To: <20190626090632.7540-13-narmstrong@baylibre.com>
References: <20190626090632.7540-1-narmstrong@baylibre.com>
 <20190626090632.7540-13-narmstrong@baylibre.com>
Date: Fri, 28 Jun 2019 11:08:22 -0700
Message-ID: <7himspr3ah.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_110824_555296_FF9B0490 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:636 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Enable DVFS for the U200, SEI520 and X96-Max Amlogic G12A based board
> by setting the clock, OPP and supply for each CPU cores.
>
> The CPU cluster power supply can achieve 0.73V to 1.01V using a PWM
> output clocked at 800KHz with an inverse duty-cycle.
>
> DVFS has been tested by running the arm64 cpuburn at [1] and cycling
> between all the possible cpufreq translations and checking the final
> frequency using the clock-measurer, script at [2].
>
> [1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
> [2] https://gist.github.com/superna9999/d4de964dbc0f84b7d527e1df2ddea25f
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

[...]

> @@ -297,6 +316,34 @@
>  	status = "okay";
>  };
>  
> +&cpu0 {
> +	cpu-supply = <&vddcpu>;
> +	operating-points-v2 = <&cpu_opp_table>;
> +	clocks = <&clkc CLKID_CPU_CLK>;
> +	clock-latency = <50000>;
> +};
> +
> +&cpu1 {
> +	cpu-supply = <&vddcpu>;
> +	operating-points-v2 = <&cpu_opp_table>;
> +	clocks = <&clkc CLKID_CPU_CLK>;
> +	clock-latency = <50000>;
> +};
> +
> +&cpu2 {
> +	cpu-supply = <&vddcpu>;
> +	operating-points-v2 = <&cpu_opp_table>;
> +	clocks = <&clkc CLKID_CPU_CLK>;
> +	clock-latency = <50000>;
> +};
> +
> +&cpu3 {
> +	cpu-supply = <&vddcpu>;
> +	operating-points-v2 = <&cpu_opp_table>;
> +	clocks = <&clkc CLKID_CPU_CLK>;
> +	clock-latency = <50000>;
> +};

Just curious where this max clock transtion (clock-latency) value came
from.  Were you able to measure that somehow?

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
