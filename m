Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9492F2973A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 13:33:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0ID50jTAgf61FUdRB3NIwb6PysU/iyX4HjPTiXRy7E=; b=hiikJdygv76ZTH
	PvjEMmdCGEwXSKAIc8iAMqoUw8PA6Xjdl2xnh0SGQdqf77XqSlno1HpAFd8xfpbKAffcV2OnkuILv
	DDqYmHzOADCKVj4h6reG7KwAW4ZB1EvT7+TMFrXPv49ACjwZOLH5Zdl7I6NReJQQi0uL9aI1Z1ceq
	MsKYxewROywJh0lLb835mUPeG6leWt04RImQjBlARLAO5/H+67/Wbaciz+72u8IaYkv0P0vYdQLsV
	DaAYynIQrw8o7FVrds2X+u/AONofJ8YdymGirj1pUbZYDYTLZdsuwrB8F5+fUrHQjHwGCDHI/qZbJ
	2S82UrYX1vexqICWHLQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU8S2-000586-7d; Fri, 24 May 2019 11:33:30 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU8Rn-0004yj-Et
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 11:33:18 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 709D0213CE;
 Fri, 24 May 2019 13:33:09 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 57DA11FF12;
 Fri, 24 May 2019 13:33:09 +0200 (CEST)
Subject: Re: [PATCH v3] arm64: dts: qcom: msm8998: Add PSCI cpuidle low power
 states
To: Niklas Cassel <niklas.cassel@linaro.org>
References: <346cd9f0-583d-f467-83d0-e73768bf5aac@free.fr>
 <20190523214619.GB25133@centauri>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <a40b368e-9ec1-5d3c-8d91-b87e8a15f269@free.fr>
Date: Fri, 24 May 2019 13:33:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190523214619.GB25133@centauri>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Fri May 24 13:33:09 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_043315_797274_72646E7D 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On 23/05/2019 23:46, Niklas Cassel wrote:

> On Thu, May 23, 2019 at 10:36:51AM +0200, Marc Gonzalez wrote:
>
>> From: Amit Kucheria <amit.kucheria@linaro.org>
>>
>> Add device bindings for cpuidle states for cpu devices.
>>
>> [marc: rebase and fix arm,psci-suspend-param for power-collapse]
>> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
>> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
>> ---
>> Bjorn, this is an updated/fixed (as documented above) version of
>> [PATCH v2 7/9] arm64: dts: qcom: msm8998: Add PSCI cpuidle low power states
>> ---
>>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 50 +++++++++++++++++++++++++++
>>  1 file changed, 50 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
>> index 412195b9794c..224f84e39204 100644
>> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
>> @@ -78,6 +78,7 @@
>>  			compatible = "arm,armv8";
>>  			reg = <0x0 0x0>;
>>  			enable-method = "psci";
>> +			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
>>  			next-level-cache = <&L2_0>;
>>  			L2_0: l2-cache {
>>  				compatible = "arm,arch-cache";
>> @@ -96,6 +97,7 @@
>>  			compatible = "arm,armv8";
>>  			reg = <0x0 0x1>;
>>  			enable-method = "psci";
>> +			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
>>  			next-level-cache = <&L2_0>;
>>  			L1_I_1: l1-icache {
>>  				compatible = "arm,arch-cache";
>> @@ -110,6 +112,7 @@
>>  			compatible = "arm,armv8";
>>  			reg = <0x0 0x2>;
>>  			enable-method = "psci";
>> +			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
>>  			next-level-cache = <&L2_0>;
>>  			L1_I_2: l1-icache {
>>  				compatible = "arm,arch-cache";
>> @@ -124,6 +127,7 @@
>>  			compatible = "arm,armv8";
>>  			reg = <0x0 0x3>;
>>  			enable-method = "psci";
>> +			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
>>  			next-level-cache = <&L2_0>;
>>  			L1_I_3: l1-icache {
>>  				compatible = "arm,arch-cache";
>> @@ -138,6 +142,7 @@
>>  			compatible = "arm,armv8";
>>  			reg = <0x0 0x100>;
>>  			enable-method = "psci";
>> +			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
>>  			next-level-cache = <&L2_1>;
>>  			L2_1: l2-cache {
>>  				compatible = "arm,arch-cache";
>> @@ -156,6 +161,7 @@
>>  			compatible = "arm,armv8";
>>  			reg = <0x0 0x101>;
>>  			enable-method = "psci";
>> +			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
>>  			next-level-cache = <&L2_1>;
>>  			L1_I_101: l1-icache {
>>  				compatible = "arm,arch-cache";
>> @@ -170,6 +176,7 @@
>>  			compatible = "arm,armv8";
>>  			reg = <0x0 0x102>;
>>  			enable-method = "psci";
>> +			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
>>  			next-level-cache = <&L2_1>;
>>  			L1_I_102: l1-icache {
>>  				compatible = "arm,arch-cache";
>> @@ -184,6 +191,7 @@
>>  			compatible = "arm,armv8";
>>  			reg = <0x0 0x103>;
>>  			enable-method = "psci";
>> +			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
>>  			next-level-cache = <&L2_1>;
>>  			L1_I_103: l1-icache {
>>  				compatible = "arm,arch-cache";
>> @@ -230,6 +238,48 @@
>>  				};
>>  			};
>>  		};
>> +
> 
> Hello Marc, Amit,
> 
> Looking at this line of code in msm-4.14:
> https://source.codeaurora.org/quic/la/kernel/msm-4.14/tree/drivers/cpuidle/lpm-levels.c?h=LA.UM.7.1.r1-14000-sm8150.0#n993
> 
> And seeing the equivalent in msm-4.4:
> https://source.codeaurora.org/quic/la/kernel/msm-4.4/tree/drivers/cpuidle/lpm-levels.c?h=msm-4.4#n1080
> 
> It becomes obvious that
> 
> qcom,time-overhead == entry-latency-us + exit-latency-us
> and
> qcom,latency-us == exit-latency-us
> 
> which means that
> 
> entry-latency-us == qcom,time-overhead - qcom,latency-us
> 
> 
> Using this formula, with the numbers from downstream SDM845:
> https://source.codeaurora.org/quic/la/kernel/msm-4.9/tree/arch/arm64/boot/dts/qcom/sdm845-pm.dtsi?h=msm-4.9#n123
> 
> qcom,latency-us = <621>;
> qcom,time-overhead = <885>;
> 
> 885 - 621 = 264
> 
> we end up with the same values that Raju
> has in his submission for upstream SDM845:
> https://patchwork.kernel.org/patch/10953253/
> 
> entry-latency-us = <264>;
> exit-latency-us = <621>;
> 
>> +		idle-states {
>> +			entry-method = "psci";
>> +
>> +			LITTLE_CPU_SLEEP_0: cpu-sleep-0-0 {
>> +				compatible = "arm,idle-state";
>> +				idle-state-name = "little-retention";
>> +				arm,psci-suspend-param = <0x00000002>;
>> +				entry-latency-us = <43>;
>> +				exit-latency-us = <86>;
> 
> Which for little cluster retention:
> 
> https://source.codeaurora.org/quic/la/kernel/msm-4.4/tree/arch/arm/boot/dts/qcom/msm8998-pm.dtsi?h=msm-4.4#n153
> 
> qcom,latency-us = <86>;
> qcom,time-overhead = <167>;
> 
> gives:
> 
> entry-latency-us = <81>;
> exit-latency-us = <86>;
> 
>> +				min-residency-us = <200>;
>> +			};
>> +
>> +			LITTLE_CPU_SLEEP_1: cpu-sleep-0-1 {
>> +				compatible = "arm,idle-state";
>> +				idle-state-name = "little-power-collapse";
>> +				arm,psci-suspend-param = <0x40000003>;
>> +				entry-latency-us = <100>;
>> +				exit-latency-us = <612>;
> 
> Which for little power collapse:
> 
> https://source.codeaurora.org/quic/la/kernel/msm-4.4/tree/arch/arm/boot/dts/qcom/msm8998-pm.dtsi?h=msm-4.4#n163
> 
> qcom,latency-us = <612>;
> qcom,time-overhead = <885>;
> 
> gives:
> 
> entry-latency-us = <273>;
> exit-latency-us = <612>;
> 
>> +				min-residency-us = <1000>;
>> +				local-timer-stop;
>> +			};
>> +
>> +			BIG_CPU_SLEEP_0: cpu-sleep-1-0 {
>> +				compatible = "arm,idle-state";
>> +				idle-state-name = "big-retention";
>> +				arm,psci-suspend-param = <0x00000002>;
>> +				entry-latency-us = <41>;
>> +				exit-latency-us = <82>;
> 
> Which for big retention:
> 
> https://source.codeaurora.org/quic/la/kernel/msm-4.4/tree/arch/arm/boot/dts/qcom/msm8998-pm.dtsi?h=msm-4.4#n246
> 
> qcom,latency-us = <82>;
> qcom,time-overhead = <161>;
> 
> gives:
> 
> entry-latency-us = <79>;
> exit-latency-us = <82>;
> 
>> +				min-residency-us = <200>;
>> +			};
>> +
>> +			BIG_CPU_SLEEP_1: cpu-sleep-1-1 {
>> +				compatible = "arm,idle-state";
>> +				idle-state-name = "big-power-collapse";
>> +				arm,psci-suspend-param = <0x40000003>;
>> +				entry-latency-us = <100>;
>> +				exit-latency-us = <525>;
>> +				min-residency-us = <1000>;
> 
> Which for big power collapse:
> 
> https://source.codeaurora.org/quic/la/kernel/msm-4.4/tree/arch/arm/boot/dts/qcom/msm8998-pm.dtsi?h=msm-4.4#n256
> 
> qcom,latency-us = <525>;
> qcom,time-overhead = <861>;
> 
> gives:
> 
> entry-latency-us = <336>;
> exit-latency-us = <525>;

Tangential:
I find it somewhat silly to specify the latencies to within a single microsecond.
I assume the margin of error is several microseconds?
How about rounding to the nearest multiple of 5 microseconds?
81 to 80, 86 to 85,
273 to 275, 612 to 610
79 to 80, 82 to 80
336 to 335


To summarize, all the entry-latency-us were underestimated:

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 224f84e39204..ac6bd32c0e7d 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -246,7 +246,7 @@
 				compatible = "arm,idle-state";
 				idle-state-name = "little-retention";
 				arm,psci-suspend-param = <0x00000002>;
-				entry-latency-us = <43>;
+				entry-latency-us = <81>;
 				exit-latency-us = <86>;
 				min-residency-us = <200>;
 			};
@@ -255,7 +255,7 @@
 				compatible = "arm,idle-state";
 				idle-state-name = "little-power-collapse";
 				arm,psci-suspend-param = <0x40000003>;
-				entry-latency-us = <100>;
+				entry-latency-us = <273>;
 				exit-latency-us = <612>;
 				min-residency-us = <1000>;
 				local-timer-stop;
@@ -265,7 +265,7 @@
 				compatible = "arm,idle-state";
 				idle-state-name = "big-retention";
 				arm,psci-suspend-param = <0x00000002>;
-				entry-latency-us = <41>;
+				entry-latency-us = <79>;
 				exit-latency-us = <82>;
 				min-residency-us = <200>;
 			};
@@ -274,7 +274,7 @@
 				compatible = "arm,idle-state";
 				idle-state-name = "big-power-collapse";
 				arm,psci-suspend-param = <0x40000003>;
-				entry-latency-us = <100>;
+				entry-latency-us = <336>;
 				exit-latency-us = <525>;
 				min-residency-us = <1000>;
 				local-timer-stop;



Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
