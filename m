Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8007CEA1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OuoYuaFQO8ZZYvBFaZuR6INCV+OTzpnilj2j1Zb2Va0=; b=LINkxM78hg94Jz
	qVaQIggHXB/CBdTPPk0TL5+UxWq5nuAM5E8amHIlUmo1XQpS2JkcmvjESgzQIe8rcOnNjzj2Vq5XG
	xPHvAwLK49AxkaW0t2XJXqowtPFNgL2Os2563TzRNtXp+kY+urbwPC3zHwJ0exQvtl5Sl3H+QPQt5
	eacqrhedcdr1164i7pAZhXjfRvRG6ipfedgQDpV6HRrkBtyDmP/gPjlRnmQdp6K3yOM0nXkujIF7E
	TjRlkmeiPpAZiQ4ZbaUyb2R0VbuqCE7T38t9zd/FYWLtv0TsKUfLZwTMcd2wyvCcdBhZluAaJZRfs
	Jdbyau8CN2ca/YZdnrpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvGb-0006wP-Kk; Wed, 31 Jul 2019 20:32:09 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvEU-0003Ca-4p
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:29:59 +0000
Received: by mail-wr1-x443.google.com with SMTP id g17so71076648wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vLHpcezXZ0AucQ4kaXez+YbIiKuQyU24LjFhyj/OAXk=;
 b=eQCRVeZXchD4s8hmdDQVCG2ogRRuvj7EZRHIJo8ykw1oW4wZjt5+SSYbjFeaaDGZrn
 0xucuH8wa2pRXz8qrOuZd277mjyUL3L5ZPsNLTCKCbtjGyssAb8BsI6U8vYAbloKvvQq
 BzPMZsouAsHmIoBCrcs8qJ+ORAVV59dnHr7FHlAmO+BlwJ9bU47J59hcapNE/S59FV/D
 PM7skxmpOrJWnu8rn5hPnCsbol0kRPf0yNonBqqOUvKl8Z92HutL3oW4KrUxJDyoMWhE
 7PJwcZRXOfMvIyFy8KqnbU2v9/W1kKg0FqfYYX3XUt+aWsEeSnSRKoWHDibpSE9niNy0
 PnbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vLHpcezXZ0AucQ4kaXez+YbIiKuQyU24LjFhyj/OAXk=;
 b=CsK08DfVe9pWMehP5HrAPjRVbran2ES3FyflllMNOGPw52smCL0g7fgwPOkKFPy248
 mG+1ezumMpJgqDHIxIXhujmzt6SKy0EACmQ3aRqgLKpmtD1VW8DacI80fGOrFpKPlpjn
 7BBHXNp7nBa/z1QxLTBjL3XGZ54Z1O6wKs4E0WWL1BF46tUZy6T6I+cCrivlz+fCfBbs
 2rC+4XR9IoJAjnZujCT3zgX6dKy1ypMeRiNOFGLnsf0rznm7XPzpMW+jVwm58l+0dFAg
 rEoG2RVZorn0N/uD790TqcyYyR1wf20GKj65PjjrhGg7WROHBSl9VVLR8yP7LgFX/O0W
 vUKQ==
X-Gm-Message-State: APjAAAWL447cIzi9NrND4mes1xNdU+kjeVxlhFYH3pGm5CR4tjiqwY9w
 7rikA1ei/j5loouFuAPirrxMwA==
X-Google-Smtp-Source: APXvYqxVk5jRAEbzCMTnd8pf764yjjCzhBWZjHtBQ5AptGqXRtwGwFJmiylZu++Ijy4DW1dMhmdbjw==
X-Received: by 2002:a05:6000:187:: with SMTP id
 p7mr12658657wrx.189.1564604996721; 
 Wed, 31 Jul 2019 13:29:56 -0700 (PDT)
Received: from localhost.localdomain
 (19.red-176-86-136.dynamicip.rima-tde.net. [176.86.136.19])
 by smtp.gmail.com with ESMTPSA id i18sm91905591wrp.91.2019.07.31.13.29.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 31 Jul 2019 13:29:56 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, bjorn.andersson@linaro.org,
 sboyd@kernel.org, david.brown@linaro.org, jassisinghbrar@gmail.com,
 mark.rutland@arm.com, mturquette@baylibre.com, robh+dt@kernel.org,
 will.deacon@arm.com, arnd@arndb.de, horms+renesas@verge.net.au,
 heiko@sntech.de, sibis@codeaurora.org, enric.balletbo@collabora.com,
 jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v4 12/13] arm64: dts: qcom: qcs404: Add DVFS support
Date: Wed, 31 Jul 2019 22:29:28 +0200
Message-Id: <20190731202929.16443-13-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
References: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_132958_202532_F281668F 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 khasim.mohammed@linaro.org, linux-kernel@vger.kernel.org,
 amit.kucheria@linaro.org, linux-clk@vger.kernel.org, vkoul@kernel.org,
 niklas.cassel@linaro.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support dynamic voltage and frequency scaling on qcs404.

CPUFreq will soon be superseeded by Core Power Reduction (CPR, a form
of Adaptive Voltage Scaling found on some Qualcomm SoCs like the
qcs404). 

Due to the CPR upstreaming already being in progress - and some
commits already merged -  the following commit will need to be
reverted to enable CPUFreq support 

   Author: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
   Date:   Thu Jul 25 12:41:36 2019 +0200
       cpufreq: Add qcs404 to cpufreq-dt-platdev blacklist

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 31 ++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 5b7d6258e9bf..8cce4a224de2 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -36,6 +36,10 @@
 			cpu-idle-states = <&CPU_SLEEP_0>;
 			next-level-cache = <&L2_0>;
 			#cooling-cells = <2>;
+			clocks = <&apcs_glb>;
+			operating-points-v2 = <&cpu_opp_table>;
+			cpu-supply = <&pms405_s3>;
+
 		};
 
 		CPU1: cpu@101 {
@@ -46,6 +50,9 @@
 			cpu-idle-states = <&CPU_SLEEP_0>;
 			next-level-cache = <&L2_0>;
 			#cooling-cells = <2>;
+			clocks = <&apcs_glb>;
+			operating-points-v2 = <&cpu_opp_table>;
+			cpu-supply = <&pms405_s3>;
 		};
 
 		CPU2: cpu@102 {
@@ -56,6 +63,9 @@
 			cpu-idle-states = <&CPU_SLEEP_0>;
 			next-level-cache = <&L2_0>;
 			#cooling-cells = <2>;
+			clocks = <&apcs_glb>;
+			operating-points-v2 = <&cpu_opp_table>;
+			cpu-supply = <&pms405_s3>;
 		};
 
 		CPU3: cpu@103 {
@@ -66,6 +76,9 @@
 			cpu-idle-states = <&CPU_SLEEP_0>;
 			next-level-cache = <&L2_0>;
 			#cooling-cells = <2>;
+			clocks = <&apcs_glb>;
+			operating-points-v2 = <&cpu_opp_table>;
+			cpu-supply = <&pms405_s3>;
 		};
 
 		L2_0: l2-cache {
@@ -88,6 +101,24 @@
 		};
 	};
 
+	cpu_opp_table: cpu-opp-table {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-1094400000 {
+			opp-hz = /bits/ 64 <1094400000>;
+			opp-microvolt = <1224000 1224000 1224000>;
+		};
+		opp-1248000000 {
+			opp-hz = /bits/ 64 <1248000000>;
+			opp-microvolt = <1288000 1288000 1288000>;
+		};
+		opp-1401600000 {
+			opp-hz = /bits/ 64 <1401600000>;
+			opp-microvolt = <1384000 1384000 1384000>;
+		};
+	};
+
 	firmware {
 		scm: scm {
 			compatible = "qcom,scm-qcs404", "qcom,scm";
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
