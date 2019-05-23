Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0EE728C9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 23:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YKDxd/qkR3iMl5kDIYRIKG4EcOzLuKKCEGE3bks1yTc=; b=pWGhlNcFWckT1b
	tFKYHa3WbcstrI9cG3wmM6Y0Q5M/NDkpmkmaGEVN1/OC+Yq55J8EO1XZykUVwpHLbsuhPIreXiDGp
	SCOw1CtBMtCzKbtDl91T/a82V/GEvxnfF6w1lMS39ZF5neFlOQqyqCa45mOfNT/7QXMQZzQYSHhxx
	NWDpjqLP/2Uyi2kH6DBNnax8ZhbhSewMwnWAuLU0HauuDLb+M/wE17VCVNTe5j06VLMOleel2muOS
	mh7aFcIRvVS8eqwlYXfBmtYlzwimaZdiwVPMun4c/u54M/DRjywxxyePQDpxXJxbDGAz/LfzzcqM0
	Ca1RVkXR9V+xtrJDK2uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTvXm-0004cF-U5; Thu, 23 May 2019 21:46:34 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTvXf-0004bq-2m
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 21:46:28 +0000
Received: by mail-lj1-x244.google.com with SMTP id q16so6853585ljj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 14:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=L40m6i7tZPLQ9iKavhZnA3KH/2jvARjZyuhU2BI7O9M=;
 b=eH6C5Au10yB/Db3vJzqwisP1niVXIQN572MCacizn2RxCtX5QDzbIBkUWlDvKBt6kD
 17myI9dq+sJh+zL9kUGC8XSx1evF5EohHcXKOX16PQJlUdrDIADJzmXdcjqIVTolDwED
 c7yBRhIC2s7aKriP2coZbmhGdZTccPlbJSGry+U/bOOoo7mQ9oSztZ1LHdgTmru2iRci
 vS7VRe1FtVf3dEBE/FQmrb9S4+zdf73HAZSbyewEZTxL7wVsI+S09ARXmmlP5qdgWYiX
 ANl+4CnZxcK9MWL1zzyw9zncsPDed5HWimvN7JKk+uF+TdMCFfIWCY9JU+qPAaWE+PtN
 9sFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=L40m6i7tZPLQ9iKavhZnA3KH/2jvARjZyuhU2BI7O9M=;
 b=JV0v7HlUwZxIFbMjW/F76OsezxATPXzNDAex9qqfcaU+x1dizT3FUX8keadcFI0mgH
 +D1enHfo1Ao0Et3zTc9D9n4YJxdGBB36nK2BgoFuJ54G5+pkTxrkxQ0q2rdNWyqOPYJp
 +prYohrD3WQtsSix62+bKsL0reoAr1nJxR+y2UqEQ8Sl2+LssiR5xCTyRYag5rRVJIHC
 89g8YSEiZ757XJemYx4sAVRwJ6ufbUjEOTMxeDYfhpFp59kbJya87C2qOFHQ0fklI5hj
 b+uqKo6dwD3ahi2lLZ3XoA74lI1prJvF9pB4gHUEKJUDwWBI5OTeiKnNB+5O3WZKmmIw
 Yzrw==
X-Gm-Message-State: APjAAAXR6H487YpJwE7ZRJSePaIDT6bNnqfhUAaYlyxIn53z8FASYHY9
 pA1JfAQYIRuzY9SP7a9WHz5guQ==
X-Google-Smtp-Source: APXvYqzYvw3SYCpZLeTQhdYuLa1BZ5iuKOeS9LjFXv2gg3Fj0LwZzyEolhahK4KPdvbcvWcsu/7jCg==
X-Received: by 2002:a2e:8816:: with SMTP id x22mr21314386ljh.169.1558647984769; 
 Thu, 23 May 2019 14:46:24 -0700 (PDT)
Received: from centauri (m83-185-80-163.cust.tele2.se. [83.185.80.163])
 by smtp.gmail.com with ESMTPSA id b29sm149132lfo.38.2019.05.23.14.46.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 23 May 2019 14:46:23 -0700 (PDT)
Date: Thu, 23 May 2019 23:46:19 +0200
From: Niklas Cassel <niklas.cassel@linaro.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH v3] arm64: dts: qcom: msm8998: Add PSCI cpuidle low power
 states
Message-ID: <20190523214619.GB25133@centauri>
References: <346cd9f0-583d-f467-83d0-e73768bf5aac@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <346cd9f0-583d-f467-83d0-e73768bf5aac@free.fr>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_144627_129252_1CB7B1EB 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jeffrey Hugo <jhugo@codeaurora.org>, MSM <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 10:36:51AM +0200, Marc Gonzalez wrote:
> From: Amit Kucheria <amit.kucheria@linaro.org>
> 
> Add device bindings for cpuidle states for cpu devices.
> 
> [marc: rebase and fix arm,psci-suspend-param for power-collapse]
> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> ---
> Bjorn, this is an updated/fixed (as documented above) version of
> [PATCH v2 7/9] arm64: dts: qcom: msm8998: Add PSCI cpuidle low power states
> ---
>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 50 +++++++++++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> index 412195b9794c..224f84e39204 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> @@ -78,6 +78,7 @@
>  			compatible = "arm,armv8";
>  			reg = <0x0 0x0>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
>  			next-level-cache = <&L2_0>;
>  			L2_0: l2-cache {
>  				compatible = "arm,arch-cache";
> @@ -96,6 +97,7 @@
>  			compatible = "arm,armv8";
>  			reg = <0x0 0x1>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
>  			next-level-cache = <&L2_0>;
>  			L1_I_1: l1-icache {
>  				compatible = "arm,arch-cache";
> @@ -110,6 +112,7 @@
>  			compatible = "arm,armv8";
>  			reg = <0x0 0x2>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
>  			next-level-cache = <&L2_0>;
>  			L1_I_2: l1-icache {
>  				compatible = "arm,arch-cache";
> @@ -124,6 +127,7 @@
>  			compatible = "arm,armv8";
>  			reg = <0x0 0x3>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
>  			next-level-cache = <&L2_0>;
>  			L1_I_3: l1-icache {
>  				compatible = "arm,arch-cache";
> @@ -138,6 +142,7 @@
>  			compatible = "arm,armv8";
>  			reg = <0x0 0x100>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
>  			next-level-cache = <&L2_1>;
>  			L2_1: l2-cache {
>  				compatible = "arm,arch-cache";
> @@ -156,6 +161,7 @@
>  			compatible = "arm,armv8";
>  			reg = <0x0 0x101>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
>  			next-level-cache = <&L2_1>;
>  			L1_I_101: l1-icache {
>  				compatible = "arm,arch-cache";
> @@ -170,6 +176,7 @@
>  			compatible = "arm,armv8";
>  			reg = <0x0 0x102>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
>  			next-level-cache = <&L2_1>;
>  			L1_I_102: l1-icache {
>  				compatible = "arm,arch-cache";
> @@ -184,6 +191,7 @@
>  			compatible = "arm,armv8";
>  			reg = <0x0 0x103>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
>  			next-level-cache = <&L2_1>;
>  			L1_I_103: l1-icache {
>  				compatible = "arm,arch-cache";
> @@ -230,6 +238,48 @@
>  				};
>  			};
>  		};
> +

Hello Marc, Amit,

Looking at this line of code in msm-4.14:
https://source.codeaurora.org/quic/la/kernel/msm-4.14/tree/drivers/cpuidle/lpm-levels.c?h=LA.UM.7.1.r1-14000-sm8150.0#n993

And seeing the equivalent in msm-4.4:
https://source.codeaurora.org/quic/la/kernel/msm-4.4/tree/drivers/cpuidle/lpm-levels.c?h=msm-4.4#n1080

It becomes obvious that

qcom,time-overhead == entry-latency-us + exit-latency-us
and
qcom,latency-us == exit-latency-us

which means that

entry-latency-us == qcom,time-overhead - qcom,latency-us


Using this formula, with the numbers from downstream SDM845:
https://source.codeaurora.org/quic/la/kernel/msm-4.9/tree/arch/arm64/boot/dts/qcom/sdm845-pm.dtsi?h=msm-4.9#n123

qcom,latency-us = <621>;
qcom,time-overhead = <885>;

885 - 621 = 264

we end up with the same values that Raju
has in his submission for upstream SDM845:
https://patchwork.kernel.org/patch/10953253/

entry-latency-us = <264>;
exit-latency-us = <621>;

> +		idle-states {
> +			entry-method = "psci";
> +
> +			LITTLE_CPU_SLEEP_0: cpu-sleep-0-0 {
> +				compatible = "arm,idle-state";
> +				idle-state-name = "little-retention";
> +				arm,psci-suspend-param = <0x00000002>;
> +				entry-latency-us = <43>;
> +				exit-latency-us = <86>;

Which for little cluster retention:

https://source.codeaurora.org/quic/la/kernel/msm-4.4/tree/arch/arm/boot/dts/qcom/msm8998-pm.dtsi?h=msm-4.4#n153

qcom,latency-us = <86>;
qcom,time-overhead = <167>;

gives:

entry-latency-us = <81>;
exit-latency-us = <86>;

> +				min-residency-us = <200>;
> +			};
> +
> +			LITTLE_CPU_SLEEP_1: cpu-sleep-0-1 {
> +				compatible = "arm,idle-state";
> +				idle-state-name = "little-power-collapse";
> +				arm,psci-suspend-param = <0x40000003>;
> +				entry-latency-us = <100>;
> +				exit-latency-us = <612>;

Which for little power collapse:

https://source.codeaurora.org/quic/la/kernel/msm-4.4/tree/arch/arm/boot/dts/qcom/msm8998-pm.dtsi?h=msm-4.4#n163

qcom,latency-us = <612>;
qcom,time-overhead = <885>;

gives:

entry-latency-us = <273>;
exit-latency-us = <612>;

> +				min-residency-us = <1000>;
> +				local-timer-stop;
> +			};
> +
> +			BIG_CPU_SLEEP_0: cpu-sleep-1-0 {
> +				compatible = "arm,idle-state";
> +				idle-state-name = "big-retention";
> +				arm,psci-suspend-param = <0x00000002>;
> +				entry-latency-us = <41>;
> +				exit-latency-us = <82>;

Which for big retention:

https://source.codeaurora.org/quic/la/kernel/msm-4.4/tree/arch/arm/boot/dts/qcom/msm8998-pm.dtsi?h=msm-4.4#n246

qcom,latency-us = <82>;
qcom,time-overhead = <161>;

gives:

entry-latency-us = <79>;
exit-latency-us = <82>;

> +				min-residency-us = <200>;
> +			};
> +
> +			BIG_CPU_SLEEP_1: cpu-sleep-1-1 {
> +				compatible = "arm,idle-state";
> +				idle-state-name = "big-power-collapse";
> +				arm,psci-suspend-param = <0x40000003>;
> +				entry-latency-us = <100>;
> +				exit-latency-us = <525>;
> +				min-residency-us = <1000>;

Which for big power collapse:

https://source.codeaurora.org/quic/la/kernel/msm-4.4/tree/arch/arm/boot/dts/qcom/msm8998-pm.dtsi?h=msm-4.4#n256

qcom,latency-us = <525>;
qcom,time-overhead = <861>;

gives:

entry-latency-us = <336>;
exit-latency-us = <525>;

> +				local-timer-stop;
> +			};
> +		};
>  	};
>  
>  	firmware {
> -- 
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
