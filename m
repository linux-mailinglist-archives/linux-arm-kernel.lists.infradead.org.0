Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD5165A73
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 17:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wYqiQY7nGW62BgobptILcCby8VjKk9QJAijc6A9OupU=; b=eGv9//TkGmoKmi
	MJGd4oe69YUwZ1Shdjoh9QaN5m2fNo4Xflldb+g4yjjhtqlfsRcxg+GwTbzlH/e7Nh7hTAya0DslQ
	nX3qALnzVn/LIf/7B8/xzIAZybXz76cjHXM2hGH5dQdQMyc+bKo7ywB3qFQGsr0Pnh4InJ+lTsx5Z
	B+L5pMYfOL9NDZMBBR0UNLPW/VPkWJE/Ajj7WwNnYIyFh0jcSRu+JgqRwQK7pN+n4Iss6lFkZuqlH
	GSIJ9LzSpq/uy1Hvta63sR6lwspY2agdbrWoqARalOICZk6B4/UJ3hwAABH+wS9z/I/wM7rlHJlN1
	Pa3tPHBdHt+ifaB0za1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlazX-00083z-V4; Thu, 11 Jul 2019 15:28:16 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlazI-0007y4-0c
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 15:28:01 +0000
Received: by mail-pl1-x644.google.com with SMTP id y8so3198556plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 08:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uMsVDicDOb3lhj4yIbuOZntxA7sECtLuV+gybGzQqeU=;
 b=rgIByt6j+CT1bDeZ1dG5yEGPFHYKSyg+NPlvE5ax2UXaEqyinB3qWooX58sy7y537i
 ZMT7aafv0DVnlW86rYn2QMv02OMIB7hmQbR7pOKbj5YQlSuIYmFnTZXfPpASzu68AteA
 tkBbTDr89/zlXNs7mOSqOZs7UtNmCAqFBowjFlBGutQXB7GDTQCcVkeaGRknXA3q7wEJ
 fPUim1MajW40r4S/kv4z/xfVjvzYuMQIIbGx6u8Y2YmUjGw8MBjZABWJPxbQUx3b7Jmq
 /H+EFAin5UVLoubHVbRiwJwT3EiOnpBLZYYzNwkbjoigIhmnka0zO9EaM8nBu+OGgp3c
 UkXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uMsVDicDOb3lhj4yIbuOZntxA7sECtLuV+gybGzQqeU=;
 b=VyVtqvMCrHCzob0JJ8EGRbGlxSdGaYGtlGLQW5FqyBFKwJv3itSdp4nwbdwF3zMijo
 wlJFlrV8m+yberA6ZrXh6Zlo9K27GAJKe16AsuZd6VaAJHwOw4EpQ6qrklFMf/hpcaHh
 KyzvDhVyv4I7Am3xWEMJzVNmU01lx3/CpMXfuTIAfhjkkKfz91BMw0Y6GThg9N0DtXsw
 2D7QKmjjBsTpFlMAcIEEreDaWJM3aevm3qGIIL7Wze0ySOMyRSl2NisBq92PvdUqBnGa
 VJOwu5/WEaYsjKtOd/7D9M4nzoGB63m6OyTdNL79w677Idd1tHp8i/xdoobeikFS9GFJ
 R+Uw==
X-Gm-Message-State: APjAAAX3kk3xgHfHvRm63hk/Pt/VeJE/pjQje/c9VFClNn++h4x/si2G
 zR7npnPPcQ9T23wkTTdbn6+pZA==
X-Google-Smtp-Source: APXvYqwNbmI3JyRFZsBS7iOj0fl3s07h7X0FI9ixCmAonmnpaGSvvC0CiHoHMbDvsZcDftbZGo/7Rg==
X-Received: by 2002:a17:902:ff05:: with SMTP id
 f5mr5168522plj.116.1562858879444; 
 Thu, 11 Jul 2019 08:27:59 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id h14sm6439150pfq.22.2019.07.11.08.27.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 08:27:58 -0700 (PDT)
Date: Thu, 11 Jul 2019 08:29:09 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Subject: Re: [PATCH v3 13/14] arm64: dts: qcom: qcs404: Add DVFS support
Message-ID: <20190711152909.GO7234@tuxbook-pro>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-14-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625164733.11091-14-jorge.ramirez-ortiz@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_082800_085600_907E4EE9 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

> Support dynamic voltage and frequency scaling on qcs404.
> 
> Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>

I agree with Niklas on the possibility of squashing this with the opp
table. But unless you respin this

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/qcs404.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> index 9569686dbc41..4b4ce0b5df76 100644
> --- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> @@ -34,6 +34,9 @@
>  			enable-method = "psci";
>  			cpu-idle-states = <&CPU_SLEEP_0>;
>  			next-level-cache = <&L2_0>;
> +			clocks = <&apcs_glb>;
> +			operating-points-v2 = <&cpu_opp_table>;
> +			cpu-supply = <&pms405_s3>;
>  		};
>  
>  		CPU1: cpu@101 {
> @@ -43,6 +46,9 @@
>  			enable-method = "psci";
>  			cpu-idle-states = <&CPU_SLEEP_0>;
>  			next-level-cache = <&L2_0>;
> +			clocks = <&apcs_glb>;
> +			operating-points-v2 = <&cpu_opp_table>;
> +			cpu-supply = <&pms405_s3>;
>  		};
>  
>  		CPU2: cpu@102 {
> @@ -52,6 +58,9 @@
>  			enable-method = "psci";
>  			cpu-idle-states = <&CPU_SLEEP_0>;
>  			next-level-cache = <&L2_0>;
> +			clocks = <&apcs_glb>;
> +			operating-points-v2 = <&cpu_opp_table>;
> +			cpu-supply = <&pms405_s3>;
>  		};
>  
>  		CPU3: cpu@103 {
> @@ -61,6 +70,9 @@
>  			enable-method = "psci";
>  			cpu-idle-states = <&CPU_SLEEP_0>;
>  			next-level-cache = <&L2_0>;
> +			clocks = <&apcs_glb>;
> +			operating-points-v2 = <&cpu_opp_table>;
> +			cpu-supply = <&pms405_s3>;
>  		};
>  
>  		L2_0: l2-cache {
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
