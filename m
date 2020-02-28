Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD8017427E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 23:48:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpx9SC5vdTUTCpCsiplDiJN8O7ZNDLRQ0XhxCmBsvOA=; b=OS4cGEy2bLEtRg
	sVgI1aoQktk6MPrlHBAy6SV16P7j9nAc6aKmFUCmqlBbZ3b8d37xP5wcTl33LihUPyShY48hgNDCk
	ij5AytxbbkRlmFlDIwNAek+PECyOZggImYLOevNCeFCnftxl5ILlNO/moK4PtD507XaFkajDSC62K
	5NhnWfHuHQ2Ne0CwlJi1R5b0mDepgNuBr2XRo3c6unQ0hEJY0FAA/hr3tDKXlUxNV8Gdxkv+WgrUf
	JPRnJU/kM3uJFmarfzz7NJF+L8rDSulOFp97J4TeK9QAmOria9mqKYDMGOZErOWgpRPFGJi5aUw2W
	1KAD/eS+6v8btli630LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7oQr-00016m-L4; Fri, 28 Feb 2020 22:48:33 +0000
Received: from mail-yw1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7oLG-00042V-Uh
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 22:42:58 +0000
Received: by mail-yw1-xc2d.google.com with SMTP id i126so4925539ywe.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 14:42:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+OwhcmpR7pb9yvMAW/3zddjXHmCNfQqId9+2KCqrSJ0=;
 b=aFJmacyoYMfOrWc7Py00c+Je5msNK68dvGgpMGjv4b6l1knIu9+IIbetY2GBb/i0g1
 Uy3tDaBgLQY5nCv31krfzrDL4NajPGA4s9pswLqtwoaQiN4T5XLmg5PblTbCuhiJX7F/
 pDJFFYgTCHKHp/WzP+RBmbLrvosSAcU23o0bS5bBZA+zAjSOiaoAlATN6BnmKSx+OZhX
 ugr0CXu1V78lqqzVGow1mo0qSv0ypxJzAtrO+51fw6J4XlsIVY7BgYaK0cm93NDumSsi
 B0ukVTvkOtKfCwanqirrfraMtRgF2Ys2Wr4czjjqhnlZlnFGG3GkPZKbPXqufz0cPYPX
 6IOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+OwhcmpR7pb9yvMAW/3zddjXHmCNfQqId9+2KCqrSJ0=;
 b=ApfwzrXYmHP+D+HMBd6FoF8BoeiphqN2WObo5d7mhawlRo0Q9YJzIpXV2cs3xIrfmA
 rWld8IYUQ/ueiWI1kM+KCQ6y1Yk4lYusohWqv0hbuPqOLMYTkCACQh149uDhlBnngVfO
 9CvFQxcr6gJM3pbrh9T7DJrW7bA5ZuUxcTo15Ryjyd8A0KmO2loseuWDzQzbyNL1oYGg
 3xMVB7Qj2EP1/DX2hCJZ9r3Q++7Mxeuo9hIECNrGSiBQ/WFbhIAaaCTqlMB0t8zQfIWF
 xcItsL868pYdhLR2ZrRdaYjqMOsFiqQQpW+7vdcfIOBCuleVXDvi5fVaAXt6Hm5/ZDnw
 FYbQ==
X-Gm-Message-State: APjAAAUPkObMIJa+z0MIwrVSKQm2hEABhFvE7L8krkH/ZvkSFySxcxlq
 esIE8EN7PqJL0aGG7Be9p1t+9w==
X-Google-Smtp-Source: APXvYqy/xVwiXn9ASJWR47pESZIiWVOz3fDE0idfoGWN5WK6UN8CA60IZR+AvIQawo8+inA2mbi/cQ==
X-Received: by 2002:a81:82c5:: with SMTP id s188mr6860426ywf.59.1582929765490; 
 Fri, 28 Feb 2020 14:42:45 -0800 (PST)
Received: from localhost.localdomain (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.gmail.com with ESMTPSA id d188sm4637830ywe.50.2020.02.28.14.42.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 14:42:44 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>
Subject: [PATCH 17/17] arm64: dts: sdm845: add IPA information
Date: Fri, 28 Feb 2020 16:42:04 -0600
Message-Id: <20200228224204.17746-18-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228224204.17746-1-elder@linaro.org>
References: <20200228224204.17746-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_144247_033315_EA0ED180 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c2d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
