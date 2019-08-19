Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 088F292435
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:03:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a8YD2T9AJBx7ZRSkSCHBSxP6Qmx0+x5wnisuLG+2OgU=; b=ZfIVAWDH6ViPfhl074t0KedxGA
	Vrup5WDezd+mmLh5cizvIyLTklpl8XutZTlXpdGqeALsykWHDzuaBj/O8Ib3gz7TCkwbskdvtAeC4
	MLRNZId/dlGykeKCq1DbB87zW9cgS8ffW+/tQh+OlTuNJoH1stlzNNg6OqhCtdBozHZsLPShFtmJZ
	9SJSSuE4fNgNID8XHtaW/JV0rXXlcfpnbCIfAUWOSMffa9T+3raHt/Ib/StTcewfarOmmvx3iMt3q
	DmChUt+e4YFJ8aa1escrqo8YuTPX7MHdLY+tl/IWjmQCANPSyJFlSSCgO5RpBeyjx8LnXR+DLbmNR
	QqzJFiQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhJQ-0001y4-P0; Mon, 19 Aug 2019 13:03:04 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhIf-0001D5-OE
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:02:19 +0000
Received: by mail-pf1-x441.google.com with SMTP id w26so1132100pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 06:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Y6Dgg0LHIAz3laO+y1ntUkl0I7eVRTHEz+QlpqCcJzM=;
 b=oUuNpnyzcfdqKYcffE+4dkTe7aZEcILFVqNYBqgS31D2oB9ZdNMSzqH3x9M8VIlV04
 1Upc1YdIcPe1dVxazZwZKLbp9SpwjHA2LYfKWqd+5fjyE/8SU1hZqDQP/VXsalwyyCbw
 9hlqtvSre+Ha34CmHb5r6Jhm0IubTiHR6lRKAOX7wdPcXIkC7sUp5JkIgY+EOIudE3WG
 +kw6w7hLqVXGd7EhgluRQpjoap2kzXtxlBY5C6+OR8ZiAuE5yrj46CoNxC3NHXRO8/Yn
 ejdUdKCTPHIPyTnA2+PHcnzUmVnir/ovoYNwoy87fQdj9xrO+bWCuc5dOn9CCTnkwBnY
 hKSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Y6Dgg0LHIAz3laO+y1ntUkl0I7eVRTHEz+QlpqCcJzM=;
 b=tqODoXpmO/WYqQ6IjXwCJZyzId096AC6SlWzlAqsry4jk/W8Pd2LignPzr/On2upTn
 LugrKoKHic2tZfT+u7WGR+5+U7ybwGbiWbMIjVxx1/sPxp83Wj5+ynIYnj6pnqbtNOhJ
 4dwUrQtOdEpaTohheR9i7AbDlF5spclo8S5FPzYiix3VX0zVE6ZB2T79jp9vxL+oD9RL
 2C2PzQFxL27/uYsIa2WkBraTcZ2XkENVIEkoFr+DSj0CzMl8fFh/5woZiQPdOI3cEKdP
 sRjt4nyymOUUYoaHTySUR7faVUY1ezaDYutrj8OZCsP6eH7/a1qoL8eTr/i3XdRR3QLO
 SEMA==
X-Gm-Message-State: APjAAAVTLfm/Dkw0t+gt3JjKU3yFdtMY+2cD1p3Abo+yL8IYMN1EdElh
 qGUzaWwNXlR4IVgqS0Mh1k9o
X-Google-Smtp-Source: APXvYqxoz5vqs+kPpeQc0ASPsmVB2/qitpzmhueGxst/kcbfKnB65wPKIF40VAc9jqd224Gxj6uEeA==
X-Received: by 2002:aa7:9591:: with SMTP id z17mr24134756pfj.215.1566219737275; 
 Mon, 19 Aug 2019 06:02:17 -0700 (PDT)
Received: from localhost.localdomain ([103.59.133.81])
 by smtp.googlemail.com with ESMTPSA id l123sm20626464pfl.9.2019.08.19.06.02.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 06:02:16 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v3 5/8] arm64: dts: bitmain: Add clock controller support for
 BM1880 SoC
Date: Mon, 19 Aug 2019 18:31:40 +0530
Message-Id: <20190819130143.18778-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819130143.18778-1-manivannan.sadhasivam@linaro.org>
References: <20190819130143.18778-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_060217_824399_7556DAB6 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add clock controller support for Bitmain BM1880 SoC.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/bitmain/bm1880.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/bitmain/bm1880.dtsi b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
index d65453f99a99..8471662413da 100644
--- a/arch/arm64/boot/dts/bitmain/bm1880.dtsi
+++ b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
@@ -4,6 +4,7 @@
  * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
  */
 
+#include <dt-bindings/clock/bm1880-clock.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/bitmain,bm1880-reset.h>
 
@@ -66,6 +67,12 @@
 			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
 	};
 
+	osc: osc {
+		compatible = "fixed-clock";
+		clock-frequency = <25000000>;
+		#clock-cells = <0>;
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -94,6 +101,15 @@
 				reg = <0x400 0x120>;
 			};
 
+			clk: clock-controller@e8 {
+				compatible = "bitmain,bm1880-clk";
+				reg = <0xe8 0x0c>, <0x800 0xb0>;
+				reg-names = "pll", "sys";
+				clocks = <&osc>;
+				clock-names = "osc";
+				#clock-cells = <1>;
+			};
+
 			rst: reset-controller@c00 {
 				compatible = "bitmain,bm1880-reset";
 				reg = <0xc00 0x8>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
