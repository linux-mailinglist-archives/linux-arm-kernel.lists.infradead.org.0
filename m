Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD16177A14
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 16:10:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P1mrNQNnHHFkTvU8pMMx77agT1oymCVWq/PuiT+sZaQ=; b=bb0+LwluZArU/q
	AsIM7McKnBr06xP7rFoQVCtb20MEFq0Zi10UMwsdrARCJfBGql0ZCfoNUya37vvBhOImYYnQ2pKOu
	lob0f+z3VgRPsu0X74QHSVu2NhGuTxGUIHcA8J0V0lp08P44Ud0IHMkHrUfXkVutEVHjIj0KRdF2Q
	vVj8JSxv68RTVlm5j9CklqY0VO0xJ8hbrPcyYjGhk2Z8dSHCboklz/TaYSG99otEnslpUN/xL2K9M
	um6I88KSU/8l+e2WCD1bRDrQpkjNCUiSR32lViZeriDFBP8HzdoFbgOu3qj3zfblNpQz2kF0szpBN
	JOg+eaBUzNvf6YisHblQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j99BB-0006Oy-8E; Tue, 03 Mar 2020 15:09:53 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j999U-0004ss-Eg
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 15:08:09 +0000
Received: by mail-lf1-x144.google.com with SMTP id y17so3030273lfe.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 07:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TmdxrNPqRhCx8T5wcSzQTrBCxn8/ALpsH7EvN6e+rcc=;
 b=XFi/4LPo2OfYwuVN5CWBRpU29SrlNMjIRW1NRij8bUn9DUbnq6PCL/bXw6942V9pDQ
 5y4NbSDkEWtjrxzP6LBvVnvqwl2MCgT+QWL/YyueH0hLLtDn3CkYFwGq6CUbT9i35HMJ
 i0630BwC2DfAL9VAE35s4JDpDlITTSvRacUXxC4fMmCOyDZTDp8U0uUsfA44uVHRZuA1
 7SXkSm8dOsm+xASb36uvfpoI9IhGcU1CRz1bfMOh6WC+YZn9IXs3zKQtpBkLqAN+A0f7
 VsjO08W6iPMo4Zot/dFX3zH7jL4uEGJM33zwue3WJf3AlJbfvKsAIrh0+fEX6aJOcMSf
 sWMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TmdxrNPqRhCx8T5wcSzQTrBCxn8/ALpsH7EvN6e+rcc=;
 b=VyYR3ftWBrsqyumZO3LJIzBKNwI6GkHkFg783msKVjdosumKbeik9emoVTwrDA2Hlj
 IjPEwg61oWcMCNOA8lp/b5iQ4toMObiBre+R58jsrLsRVeWvGNr+rpCqJPP2fav5lDEi
 di5CYV5NV4FzQG2ColfqxksnB8mk3sZg3oaMoFPEYi9NaBbr3UXlaLKJxH+IXbCLlrE7
 Y60guWRD3E1P4scI1EmHCrtZ94XXqzsiClRJX3k2K5fAooeC21M8MKc4/u92uJ217IIw
 0QCnTf1LWzKfUO1u0egMOlO1aktmUsIXOxKXm4wwkcx/kqlAcxQYZKEtLRyui2TJO80G
 X9fg==
X-Gm-Message-State: ANhLgQ0/fFQmjMt4prpHtkzbblbspqb9CAFtynTGHoRGla4coBBzd6Di
 8K9feNQEpC+VKdqqV1NrUlJNsA==
X-Google-Smtp-Source: ADFU+vtYMFpz4xq/Y+Z1yD5NXc4xTEM614mywDZd5gOuzw8D6lWBSnbrl4gYYgje/jlKd797xH2l6w==
X-Received: by 2002:a05:6512:692:: with SMTP id
 t18mr3071738lfe.212.1583248086473; 
 Tue, 03 Mar 2020 07:08:06 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id n189sm12143135lfa.14.2020.03.03.07.08.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 07:08:05 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, devicetree@vger.kernel.org
Subject: [PATCH 7/7] arm64: dts: msm8916: Conform to the nodename pattern for
 power-domain
Date: Tue,  3 Mar 2020 16:07:49 +0100
Message-Id: <20200303150749.30566-8-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303150749.30566-1-ulf.hansson@linaro.org>
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_070808_525877_78CEA5C7 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The nodename should either start with "power-controller" or "power-domain",
so let's fix this.

Fixes: a3f048b5424e ("dt: psci: Update DT bindings to support hierarchical PSCI states")
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 8f3f19e66cd8..1dd8da481709 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -191,31 +191,31 @@
 		compatible = "arm,psci-1.0";
 		method = "smc";
 
-		CPU_PD0: cpu-pd0 {
+		CPU_PD0: power-domain-cpu0 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&CPU_SLEEP_0>;
 		};
 
-		CPU_PD1: cpu-pd1 {
+		CPU_PD1: power-domain-cpu1 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&CPU_SLEEP_0>;
 		};
 
-		CPU_PD2: cpu-pd2 {
+		CPU_PD2: power-domain-cpu2 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&CPU_SLEEP_0>;
 		};
 
-		CPU_PD3: cpu-pd3 {
+		CPU_PD3: power-domain-cpu3 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&CPU_SLEEP_0>;
 		};
 
-		CLUSTER_PD: cluster-pd {
+		CLUSTER_PD: power-domain-cluster {
 			#power-domain-cells = <0>;
 			domain-idle-states = <&CLUSTER_RET>, <&CLUSTER_PWRDN>;
 		};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
