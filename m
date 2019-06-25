Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B60255530
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9HnHPJVuaH8vPZXrJz7Wuz8Uby4H80l2foxfo8nnTNU=; b=bQ2Y13xsxXK3al
	D3sjgPl8333Z72lTTRVT5SWRvDecGkHVoqTOxng6YQmsULBkBTTIh57IihwKxOaxKGm7hcxOHeAY1
	zkbzWx3n0BflOFxWtZoLK98RfAm0nQmT8Q/EkDk7gJsbBF5f/HQJgmvUYO6hlLNd5boxvhccaBt5w
	5+2yvly7yBDnbPC/516U39udv9OdL+XCdhWt13OPzi6GuvAaGh8rWGG9CsMypuNe1PKLrUXiWWfh3
	b99rYjA+RcpWiogzfxRufyEPibLGmX/3o0Y08x4lXhFc8yIjLB+m2sWVu0K2krBSpdF1b7uaPv9S+
	gQWeQRQWx/Vo31zuYGJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoh3-0007Xx-NH; Tue, 25 Jun 2019 16:53:17 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfobx-0002PB-7m
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:48:04 +0000
Received: by mail-wr1-x444.google.com with SMTP id n4so17474959wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cM212LJlReM22Z/bSs47ZKND7c0iwlH/sYLmqGtvNPI=;
 b=y1JwsIjllH/q1V2AXG3E9FRpqgb/gJ7a0DxiAEw8wPRhS164tXiVP3fH/2YgiI+nGM
 jM4gF1s8Pu0y4IRmcmaP0i0yeBxIKHdeCBO0h+EU/UTOTmvF9/Bj+H4PGk3DpJUhJASB
 heKSN/MCHDtOY0YN6wJPoWXZNq5uzmnCZkPlBQ3Vk2DhCPFQdiF6baPvZT0p6kMpVHQD
 Md0WAOiT05LJIIsF3Wl78bQRoOhrYb/saLW2FHrh3AEz0/yee7AZGsJ/Sqjq97B76bdG
 b31Pt40Hl4smjHO3OSRVhhJHqzJoihLtCo88grZ+xX5NQXCfCKCPt0ueYCde+88F2lZK
 cvJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cM212LJlReM22Z/bSs47ZKND7c0iwlH/sYLmqGtvNPI=;
 b=Vb2/8bJenqFqMv+Fu4khEEvlZ7/87UHD56wf6AzlhvB2Rx5BKSQk2A4sGfj5a0sdHp
 fnJJaYc7/nwk+8iG/v3r8USk2TFrtb1IjUsJh86+zPXj/gOdsPpWwLF3uGTNa70XH2VZ
 T6bO2tTwZ2sMtUvnN+n6dIHt15L/kaOWoah0UBrDK5jeJ1OHOuVBz6ex2woE9JSJwoU4
 enVswWt9aIH8iSvOYZ24LJndCX0t8/WaQo7nS2f3iFC4Cp/xSaIpIcms/iExsle8MinD
 EIVXYbhCGSrR8cUe4lPhU5L84Bn852P29RbIe1GgDx379cO8wrKAxUm9BMw+tx8of8QZ
 2vtg==
X-Gm-Message-State: APjAAAWaCnH6VlBAsAT0RY9owj4TfLgHjCe4i+9zxDxfmp/xXWGyjlkY
 aNIL2ArTRwpA+Bsl+Y0j7izQiQ==
X-Google-Smtp-Source: APXvYqwJ4I60Ak49uP7T2OkszfI0IIxti+ZQtTTsDd9vEBP4j6weUpwwGn91vqoS9swHumKVX+UcnQ==
X-Received: by 2002:adf:b64b:: with SMTP id i11mr28697211wre.205.1561481279722; 
 Tue, 25 Jun 2019 09:47:59 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net.
 [83.34.200.30])
 by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 09:47:59 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, sboyd@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org,
 jassisinghbrar@gmail.com, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, will.deacon@arm.com, arnd@arndb.de,
 horms+renesas@verge.net.au, heiko@sntech.de, sibis@codeaurora.org,
 enric.balletbo@collabora.com, jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v3 13/14] arm64: dts: qcom: qcs404: Add DVFS support
Date: Tue, 25 Jun 2019 18:47:32 +0200
Message-Id: <20190625164733.11091-14-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_094801_434517_03D1CDD0 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 9569686dbc41..4b4ce0b5df76 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -34,6 +34,9 @@
 			enable-method = "psci";
 			cpu-idle-states = <&CPU_SLEEP_0>;
 			next-level-cache = <&L2_0>;
+			clocks = <&apcs_glb>;
+			operating-points-v2 = <&cpu_opp_table>;
+			cpu-supply = <&pms405_s3>;
 		};
 
 		CPU1: cpu@101 {
@@ -43,6 +46,9 @@
 			enable-method = "psci";
 			cpu-idle-states = <&CPU_SLEEP_0>;
 			next-level-cache = <&L2_0>;
+			clocks = <&apcs_glb>;
+			operating-points-v2 = <&cpu_opp_table>;
+			cpu-supply = <&pms405_s3>;
 		};
 
 		CPU2: cpu@102 {
@@ -52,6 +58,9 @@
 			enable-method = "psci";
 			cpu-idle-states = <&CPU_SLEEP_0>;
 			next-level-cache = <&L2_0>;
+			clocks = <&apcs_glb>;
+			operating-points-v2 = <&cpu_opp_table>;
+			cpu-supply = <&pms405_s3>;
 		};
 
 		CPU3: cpu@103 {
@@ -61,6 +70,9 @@
 			enable-method = "psci";
 			cpu-idle-states = <&CPU_SLEEP_0>;
 			next-level-cache = <&L2_0>;
+			clocks = <&apcs_glb>;
+			operating-points-v2 = <&cpu_opp_table>;
+			cpu-supply = <&pms405_s3>;
 		};
 
 		L2_0: l2-cache {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
