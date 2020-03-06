Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1F517B5BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 05:36:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpx9SC5vdTUTCpCsiplDiJN8O7ZNDLRQ0XhxCmBsvOA=; b=syPXjqGgIXsmpg
	v3K7Q7f9XEBMCvBJPgN7VAvgJk9Yr9IReCZSth5qdydOJHjlbBB60XBY9JYdkA7PBbNKFAxfdaH7a
	shj9/iEdK1NYeDkRE0vtCHJyue+6vZUUV5IbzSn1gNYWH4Gz8TWwyq2QzsUbBZnlxKIVB59UBjtX/
	vtRi9SNLR239mC8CSGNGTij0JyoqYArBGINJ4Mxi3Gm6ur1EGABsvttwEwYwEFFpxaKCWw+qsVqS7
	4nn4KNQwc2Kpc1UuUmh3qRSN249Amjpz0DFCYnC6pu3JWjR2yLMVjRJWN/RZwM4im01AnQ7VFnQ2J
	ptuKAnnrqbd03+2O5smg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA4iK-0001cI-0E; Fri, 06 Mar 2020 04:35:56 +0000
Received: from mail-yw1-xc34.google.com ([2607:f8b0:4864:20::c34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA4bm-0002zk-82
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 04:29:22 +0000
Received: by mail-yw1-xc34.google.com with SMTP id j71so1110177ywb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 20:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+OwhcmpR7pb9yvMAW/3zddjXHmCNfQqId9+2KCqrSJ0=;
 b=sjVEnqNbTnwO2ySAIcfwaHGIihm2d0ARvf/F6V07mD/Axnj9d9GnoXRS2V9mVxm3W2
 0TS3QpjPCK04d5r1+L/HC5wdj96wA3MIS/6VlekW8qXxENUuLtNEZ+b8IevwkjspC6un
 HOvuEZ5CW96Ob3kx8r7mxGlbq7+x6Zv8ATZTA8PZRmo/fy/qEBkXLRjAyH3mVPPdnYBC
 52N667VdKut1mbrQyKWkxvtTprXMBsL/RCHD/LukuF28fDlbIkI5cGpA/Y2xWipqc+sq
 ZMmyBdtuZHQpXUWYZa9y86Wb+97peQc8sMc4k9kCbrNXX4jLYmICKhd0ynCdcRQmWbcw
 29Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+OwhcmpR7pb9yvMAW/3zddjXHmCNfQqId9+2KCqrSJ0=;
 b=fO+517nPgfBPCG71HUvpoakYq0wf2BXoePK0xKNp+3PaVo7/kStGBdqG/88VIjVdB3
 gg3quzSsBip9qM8E9/5wVTHAk6BhCY/TFekH0sGtjmtfDjvJbC60TjWIkR1iKomxNoUi
 YZOmWdbplu3KOJvx1u2Nrih8/1woe8itp9EgQDQ88Qiu2baqVKowqYHDbV3rQG8ynfZ/
 MaGIQ3p/KGkEDLYs1S3UdOrjYyhB9kr3aDf1QDbtUhWKVWm/YVfPEvQOC4WEzCqlaZI/
 JdjzWs1hBhNfcKPfLl/sIB/IrkkJrVbpfRMtIe//rFIh4PpxyN9WwxHt+AcHav+Pxz/p
 Nwcw==
X-Gm-Message-State: ANhLgQ0l0gqnkt6N/HV0xiCQ7idpMrPcQ3/7HZrL3H0KLkE1Q93CxaGg
 O1YaK9mIUTckyuy6rbITrzmMgg==
X-Google-Smtp-Source: ADFU+vuavLb0hi1Kt/CtoekqDopx5Ou6PhT5pbkRZYLJyLf4bvqSt3M6Cw7E2PZn2Fxgjq2Y837RIg==
X-Received: by 2002:a0d:d952:: with SMTP id b79mr2289846ywe.226.1583468949477; 
 Thu, 05 Mar 2020 20:29:09 -0800 (PST)
Received: from presto.localdomain (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.gmail.com with ESMTPSA id x2sm12581836ywa.32.2020.03.05.20.29.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 20:29:09 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>
Subject: [PATCH v2 17/17] arm64: dts: sdm845: add IPA information
Date: Thu,  5 Mar 2020 22:28:31 -0600
Message-Id: <20200306042831.17827-18-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200306042831.17827-1-elder@linaro.org>
References: <20200306042831.17827-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_202910_306657_D41EFFAF 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c34 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
 Eric Caruso <ejcaruso@google.com>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org, Dan Williams <dcbw@redhat.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Siddharth Gupta <sidgup@codeaurora.org>, Rob Herring <robh+dt@kernel.org>,
 Evan Green <evgreen@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 David Miller <davem@davemloft.net>,
 Chaitanya Pratapa <cpratapa@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add IPA-related nodes and definitions to "sdm845.dtsi".

Signed-off-by: Alex Elder <elder@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 51 ++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index d42302b8889b..58fd1c611849 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -675,6 +675,17 @@
 			interrupt-controller;
 			#interrupt-cells = <2>;
 		};
+
+		ipa_smp2p_out: ipa-ap-to-modem {
+			qcom,entry-name = "ipa";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		ipa_smp2p_in: ipa-modem-to-ap {
+			qcom,entry-name = "ipa";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
 	};
 
 	smp2p-slpi {
@@ -1435,6 +1446,46 @@
 			};
 		};
 
+		ipa@1e40000 {
+			compatible = "qcom,sdm845-ipa";
+
+			modem-init;
+			modem-remoteproc = <&mss_pil>;
+
+			reg = <0 0x1e40000 0 0x7000>,
+			      <0 0x1e47000 0 0x2000>,
+			      <0 0x1e04000 0 0x2c000>;
+			reg-names = "ipa-reg",
+				    "ipa-shared",
+				    "gsi";
+
+			interrupts-extended =
+					<&intc 0 311 IRQ_TYPE_EDGE_RISING>,
+					<&intc 0 432 IRQ_TYPE_LEVEL_HIGH>,
+					<&ipa_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
+					<&ipa_smp2p_in 1 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "ipa",
+					  "gsi",
+					  "ipa-clock-query",
+					  "ipa-setup-ready";
+
+			clocks = <&rpmhcc RPMH_IPA_CLK>;
+			clock-names = "core";
+
+			interconnects =
+				<&rsc_hlos MASTER_IPA &rsc_hlos SLAVE_EBI1>,
+				<&rsc_hlos MASTER_IPA &rsc_hlos SLAVE_IMEM>,
+				<&rsc_hlos MASTER_APPSS_PROC &rsc_hlos SLAVE_IPA_CFG>;
+			interconnect-names = "memory",
+					     "imem",
+					     "config";
+
+			qcom,smem-states = <&ipa_smp2p_out 0>,
+					   <&ipa_smp2p_out 1>;
+			qcom,smem-state-names = "ipa-clock-enabled-valid",
+						"ipa-clock-enabled";
+		};
+
 		tcsr_mutex_regs: syscon@1f40000 {
 			compatible = "syscon";
 			reg = <0 0x01f40000 0 0x40000>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
