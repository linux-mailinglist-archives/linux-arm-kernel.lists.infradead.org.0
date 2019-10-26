Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5723FE59D5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 13:04:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a8YD2T9AJBx7ZRSkSCHBSxP6Qmx0+x5wnisuLG+2OgU=; b=V/rzgEawc3H6NkljVV5/XPapwa
	7PHa94jWQhuk5s0FSnoVMdi/SfM7QzKNXqchqHCeGfWhFYvLJtbRf0AbYPvj9CQJqB52p80FKKE/S
	QsdHRGLzD30PCBsxJa0ZQ7ViVAUiGByTy0GbQsVFJ+Qss5pSxXCFPYHwHli6qilyap2d2TOCoY4if
	FZEQCnskCqYlJWE3RoHqPpKUkXH+D1oqnJBKL3OeWRgRfD43pEzAcYxemTainicX2KfrOD3u5EmD/
	yZ/ix5OE+wur24sSh/ZwsQiahjV8Qw5kax2IRcYq1fi2HMOMcjbOj1Ej1jqQJ2+98FIMPWxviiktD
	sJ+0ZfCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOJs7-0001rO-7a; Sat, 26 Oct 2019 11:04:39 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOJr4-00014j-0S
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 11:03:35 +0000
Received: by mail-pf1-x433.google.com with SMTP id y5so3451421pfo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 26 Oct 2019 04:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Y6Dgg0LHIAz3laO+y1ntUkl0I7eVRTHEz+QlpqCcJzM=;
 b=PcCgI+5Uk4+2QOtva7LrdqGw/ak4nk7qSeEMr723khYMa6gWpChw9Y1C3ZnkguEkqM
 c30XftThaNU0RSa1jFu71B1uf6OaYSYBcB1+3aDnHBRABZtmHFGr68aYpUFS3ksTD4yu
 ToYrqU935IGFVtWTsMtW3qnaOo5aYDgFcXgyuDIqA26QagZ/4qh3TR5nl9KDeCqjB79u
 2bZX41wlop6pBV3KM3JWxgPBzwmXbEOPrqIAo1GYRO8WMe/Q5SzURqTHazHRiF8o/m8X
 01ZsUl2qF4PCODOGd+L8C1enhAuY+jK1mYfmxzlSXzE7VpgOEss89Y7jkI+Sl7AEiEZc
 miag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Y6Dgg0LHIAz3laO+y1ntUkl0I7eVRTHEz+QlpqCcJzM=;
 b=WyedyE3oevqgBR1VoDXZuPIb5DhGXbQAEOIZatY6aSGyoPMri3RJZ3ktSIWs1xfazy
 h8AmhULAfViyaF2faCGip95lQAoNmbEdKw+6A3VmoU7a8edQ7zz/hz4EDwjtxQeu8GXY
 Bhdd7U5g6R8LRc9P6dxTbtveny9q6FoWiWqjfXQyidyVm9syOLoAIsh/VjIACgAZY9SR
 19JKiKYlhacjA1S4a03AprkX7g/o1WC0Rt9Z8edgYYY11sKci7H6aTpAzuc8MW+yjLKk
 5jT8MSW7nLgW38nb08PzJtGA/uyPgpGcjxt1isgZjiLjpOQvv247aOgPInlNoQhM6rn/
 xYwA==
X-Gm-Message-State: APjAAAVUG0mY5ohg1udRZLRGW0JdlpGZLLf5/0x0zrw/8ecBsPGz8avZ
 Hjj3U3J1XOx5B8HSMl4xHdKQ
X-Google-Smtp-Source: APXvYqzowpzR04MTwmL3N8OyfcVyg17NzEjCzBIUt7ybdLxmxuCT8V1POkDgpr/m0PBBlzk8wfKDgQ==
X-Received: by 2002:a17:90a:a384:: with SMTP id
 x4mr1395313pjp.116.1572087812466; 
 Sat, 26 Oct 2019 04:03:32 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:6214:69c4:49ad:ba3c:6f9:2d8a])
 by smtp.gmail.com with ESMTPSA id x129sm5543379pfx.14.2019.10.26.04.03.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Oct 2019 04:03:31 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v6 4/7] arm64: dts: bitmain: Add clock controller support for
 BM1880 SoC
Date: Sat, 26 Oct 2019 16:32:50 +0530
Message-Id: <20191026110253.18426-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191026110253.18426-1-manivannan.sadhasivam@linaro.org>
References: <20191026110253.18426-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_040334_097490_23CC1DD7 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
