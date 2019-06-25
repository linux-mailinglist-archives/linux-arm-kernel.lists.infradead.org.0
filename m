Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BAA55526
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:52:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqigQWhFyr2xt5YyJ9XQITm1whQK3TPby3ZaWW9LEAo=; b=lwYycjhw/vdXu6
	TfJ5YO1PeBrdPviqEfXclymzeYwOyOaS/JWOV7Va1DU8zs5FshF6P4o1LioZDnjhIB/LPXfuc3SwP
	lyqq6vTN9o9dlMms8MErQktGsn4YUrI4xjxXyM3Pe0Qf0PKjNA+omYWyr7prOmh23/490JGnobASZ
	gXrVV44m4skTj662U8HXZgMZre3vJ5MI2Ls/zAUGwivZCvlznrOIyrSnc8rDcW+m6txvjl/sFX2F1
	69U49t8EN9PXmBsCDxO3XcAEwe/fgelT9mutZmC83XN7ar27rOyX27tDOtqqoMcRejVeoLF0nxWkY
	aQ5oKlAs7Avozkfx3UwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfogA-0006q5-HR; Tue, 25 Jun 2019 16:52:22 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfobr-0002Kw-QZ
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:47:57 +0000
Received: by mail-wm1-x342.google.com with SMTP id s15so3676794wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nrzyeFr44bncESExYjY2Xqm7hHRQ10WfGAsR66xmSU0=;
 b=kI+F4y9Juq4UtO+H7tm4R23zk+eYgxqBO1Rw6hrz74Fj/gAdeyhxUnPYLp0fJtVsqB
 wtfT+RsceD8eJWFhIG5efmhcWhuetah0Y6H6maBKnlWO+ycI9X5mrNtHq/uDMJO9i1Dl
 6gFQ6d1oLnklYadUNmApNLHrjroFKbsDAqxdnTe9KJMN1AGtQSsnuDaDwKhXDkHdoqIj
 1g7DK0K9jTzM28miEa9h/UFoPBGO+S9fps/jHV/s5WLQ8OafqQwNsyuB/3cj0gRvp/4+
 8txBkwYdTZdGjvZz7Oe+vcBvE5uCp9NoravLkOp0jiEK0dM+aE6fQn2C5wTEL44tD4lX
 p+Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nrzyeFr44bncESExYjY2Xqm7hHRQ10WfGAsR66xmSU0=;
 b=OvNu2pnt918VfvHF6Y9reXAE0InTSzF02wpx6Nm5aOlSqh4KdA9WsmVPxhT20zpqwN
 YuchT9oKld2uczgGUs3FfsM3svrCGA8mwbDI8kKAhjmtmqlfdDsmkQzyf2Q9YWl3Wrua
 NXj3JTUArm2PI8GcpNuk3hqnoEZM5Bu9XtqgGFAk8QyuxJBEYnoxqrqhthFjF/kxSznj
 q3hBGF7OjyHk6qIXSeQ81DyCPe+HH7B+L2s1XspomHvAcfFWEE8JA2YFDq1DZill72AR
 YJ7ceQuBqbUKSnzo2ODSuxy/jy6+PfzqlevQkCIWb3e59lFtHWT1322tvsAROm2SwJhH
 1fdA==
X-Gm-Message-State: APjAAAW4uVoOg1UWqCace0/Pq5/bG9ZegKlvOvOD0Gh3qbLsVvuDEhdH
 Bv4wLeY//a9zH62R6tgTNjQsfA==
X-Google-Smtp-Source: APXvYqywQ5Ml0QHQWPuK1teKrX2xUjmr8yueMadE/iBk+qI3mi0tbuXh03Y902YxT3PO+OdG5eixTg==
X-Received: by 2002:a1c:6156:: with SMTP id v83mr21566006wmb.81.1561481274595; 
 Tue, 25 Jun 2019 09:47:54 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net.
 [83.34.200.30])
 by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 09:47:54 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, sboyd@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org,
 jassisinghbrar@gmail.com, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, will.deacon@arm.com, arnd@arndb.de,
 horms+renesas@verge.net.au, heiko@sntech.de, sibis@codeaurora.org,
 enric.balletbo@collabora.com, jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v3 10/14] arm64: dts: qcom: qcs404: Add OPP table
Date: Tue, 25 Jun 2019 18:47:29 +0200
Message-Id: <20190625164733.11091-11-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_094756_098744_8C4085C5 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

Add a CPU OPP table to qcs404

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 3f17e1b09c13..d876dae5b0a5 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -83,6 +83,24 @@
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
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
