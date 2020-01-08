Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF66133A28
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 05:21:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0rGvfYG18CKwjruuv4YF5XL7A8q6cpVqP0+66TP8fs=; b=Kboo+whptN9D97
	M7XVoruWwDNI9cOmhyq4K+Wrs/KkiM0zzie3MoFki4HGY0O5OEjMZOxK0bvUps8s/++//4Yz9z23i
	XnT8nJwYrczLHezraF6ZkCO1n2naqMOjwoeahIfwIZsWP9HQXz0k7w9Ffxo7vTBUMR7iLWOkb9XMs
	VV8+9VO+0C6ijPilW8VyvvIzvZ3SGUNokztDIA9xh/yjV6DjMThO+3g8dgJ2ZbFygOfD70VHuLTui
	mQ+A0TRBct+Bfu6S2gysTG7bkzGCY6uW2yW/AUCmsN/M192QeImeS3lh/KIhGtNOZpL5AbcaL3Fbu
	fe0Hn0FhrKbyfIyjdmXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip2qo-0000uM-Ag; Wed, 08 Jan 2020 04:21:46 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip2pu-0000AY-Nu
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 04:20:52 +0000
Received: by mail-pl1-x630.google.com with SMTP id az3so565923plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 20:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8i3jv2NcKPJav5JSnI7n2xF76BQZT2zWeKXSSkvhBZs=;
 b=H/a717vhcYdvgT5UJJEdaEDhfGrJ1j0HoL7+znfKXxb1Y70kiaalEnKwTOftppJqSI
 1rMpWLSrGf+L+vwFltOJAWRQQ8V19AAuQS/hA1XYU/M6qHJC44Xu0X/km4PC8/gFrt4m
 Q/d4OV1lPPcYQnf/mT/nhAU2ATiZy4PuxeMBrmsb9r8NVto8YVHZr1l1KKnLpIR0K5Qi
 LXGTXmomlp2NTiyLWQ7JhRKhQ2iVdAi8i/NFE8ezioC0cVS14BvG/FDurgl4cAu+s/Qk
 QMnA/efNS1Zwt1rW+ZbiOw2iP94KQOPzk1ETbHRF4LYvziTEAIwXRzdC2VKi2j1VTdoH
 yDWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8i3jv2NcKPJav5JSnI7n2xF76BQZT2zWeKXSSkvhBZs=;
 b=Sa26N+QMDsFFCs3RdgeMfXpVJ5gx+ZnlE1PigU1ERFOe93vLT0a1PQfsztfopBoKkq
 vHMIQz+vEfbhtmPI7/FZbf5fZhVD8eo8isBkA4y5DILeox4r/EfbjiygEmCvWIUvuVTg
 YHeT+M4pfie+4c4OJ3dCUbKck1UuqHXTBcXiI9PwIyQYoOwilwR7OMi2mk5sVRDSCyPZ
 WfetGHDEsDrX0wHC7nCt9EiDPTUOvP/jc0835nD9V+VuccB3/xcHgjkSyTYRWpw8beWo
 YoFi8StwbBoG9f8gHlfuDS84i7uoYYrgyB2FhpIBi/TkEHK2F1HAESVFnka9wJE9QI1J
 pv7Q==
X-Gm-Message-State: APjAAAUmPLFYtnbXpVyeFvCieuXJhDHpJSxTPpLDdtCjYtYviyDaQLKp
 DjkKdHXw2vh9+VESqolBUII=
X-Google-Smtp-Source: APXvYqx/IAJeMafAjvWogVFDy3hU75s9q/3GXL6uTncLxHrzyp5S8XMfkOSmZjkMJCjL7Zk+tPqS4Q==
X-Received: by 2002:a17:902:6501:: with SMTP id
 b1mr3415381plk.121.1578457248856; 
 Tue, 07 Jan 2020 20:20:48 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id p12sm1133478pjo.5.2020.01.07.20.20.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 20:20:48 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 3/4] arm64: dts: allwinner: a64: add dtsi with CPU
 operating points
Date: Tue,  7 Jan 2020 20:20:17 -0800
Message-Id: <20200108042018.571251-4-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200108042018.571251-1-anarsoul@gmail.com>
References: <20200108042018.571251-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_202050_833602_52581A9E 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:630 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add operating points for A64. These are taken from FEX file from BSP
for A64.

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 .../dts/allwinner/sun50i-a64-cpu-opp.dtsi     | 75 +++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi
new file mode 100644
index 000000000000..578c37490d90
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi
@@ -0,0 +1,75 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 Vasily khoruzhick <anarsoul@gmail.com>
+ */
+
+/ {
+	cpu0_opp_table: opp_table0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-648000000 {
+			opp-hz = /bits/ 64 <648000000>;
+			opp-microvolt = <1040000>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+		};
+
+		opp-816000000 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <1100000>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+		};
+
+		opp-912000000 {
+			opp-hz = /bits/ 64 <912000000>;
+			opp-microvolt = <1120000>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+		};
+
+		opp-960000000 {
+			opp-hz = /bits/ 64 <960000000>;
+			opp-microvolt = <1160000>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+		};
+
+		opp-1008000000 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <1200000>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+		};
+
+		opp-1056000000 {
+			opp-hz = /bits/ 64 <1056000000>;
+			opp-microvolt = <1240000>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+		};
+
+		opp-1104000000 {
+			opp-hz = /bits/ 64 <1104000000>;
+			opp-microvolt = <1260000>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+		};
+
+		opp-1152000000 {
+			opp-hz = /bits/ 64 <1152000000>;
+			opp-microvolt = <1300000>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+		};
+	};
+};
+
+&cpu0 {
+	operating-points-v2 = <&cpu0_opp_table>;
+};
+
+&cpu1 {
+	operating-points-v2 = <&cpu0_opp_table>;
+};
+
+&cpu2 {
+	operating-points-v2 = <&cpu0_opp_table>;
+};
+
+&cpu3 {
+	operating-points-v2 = <&cpu0_opp_table>;
+};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
