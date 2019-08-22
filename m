Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FA799BA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 19:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a8YD2T9AJBx7ZRSkSCHBSxP6Qmx0+x5wnisuLG+2OgU=; b=iuA66+jSocicWuZY26Pu8umLU1
	uTNI7otuEKNfM+anh1IfhryQTfJ0yXv7Ji1PMY9fHZI4isnFAgmcAVtLY8tq0FEwTIKJo/J0MCGVd
	2DjJnu2enviXI7KPsjFtpnHd8UhXPmrGs1eROseTR8t6u0e1H2t+DE3DDF0ELpieOipMO5Uf1tvI5
	ubg4eElO25Z8o8WwOOMI1+PfVBrT4xdx/Sv2JWM7cMclNLF7FOVss9Q1qaIS0XGu8rN/4nHhjjTgK
	lA2+8NbcKspItCE/LQ03GESDGnxr78DN11aW1jeSgSYbyVdpLuncuog8Ku9SGl81xHBEg3kUwQOxg
	Qapzl5tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0qqy-0006nw-Pu; Thu, 22 Aug 2019 17:26:28 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0qpq-0005vN-Vo
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 17:25:20 +0000
Received: by mail-pl1-x642.google.com with SMTP id y1so3823777plp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 10:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Y6Dgg0LHIAz3laO+y1ntUkl0I7eVRTHEz+QlpqCcJzM=;
 b=TOXDCBl6f8xlElGz/1VgT87+cdII1cmN5ZgoolaAd7oEb3dKLp1S1aL8eIAK602wRA
 rFV3kajNzuMqA4UEKTCS3p+weiq9BteIBukmbisFxA48gsaY84KdHTxbIl+R7uti/zmz
 vKmYinXsuEL5HmhH7cQg7SvGd3IMVzS+tidp1iSw7IeQ5I3BILh31uDv6xkYym/ZUF22
 I+N3iNN6gjUqxDsC7MVj180HA/sXR/waBKbKAC6Ujfjt91vw4asNcnDuH9yG8hcd+pla
 GAc0mCLgB3uLH3bVSL7ZcOSv9zFfBCOpTcrSc+K2XP/54ZTAa50tjiJvklrL9DieJktS
 oDYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Y6Dgg0LHIAz3laO+y1ntUkl0I7eVRTHEz+QlpqCcJzM=;
 b=j5U+pMjb890Oe/p1lRMztXODo9D6U6JGemk2uOKatKinarBYP5BbQdCZ0pkqf70qy+
 Os4PWiBAhGIl5KzuvC2f0pfqNh9Y0CRoWO+a3iQzOaM1o70OfZpaGQeHu5mBdnJzgr56
 i2eIR8Pcb8zkED7ctLQPSX8Io5a8Luzy0yb/plbjOb7fvw7ly+QicW8hZBBA/Z9LZSko
 rYiaJgp1EjCnq1d+Ul3K0ac7Iciva5vQCWF2TY7jNC7RVNbSeTpnR8v4nqs9hstX8pyI
 Ug9FLvaZv8xuG1uynW60UTaSAIqKoeUzIeRQIY/6tkmVNaMIPsxwXsr0UbyKboaddIe6
 ZjCw==
X-Gm-Message-State: APjAAAWEy+ukaPSrrFGYpsPHJxhQ3UW2nN9QaG7Vw1J1IXwg/XKbjde+
 lwDtXQrnlc6SU47SDAShKAnB
X-Google-Smtp-Source: APXvYqyQha/e6kS2nojAOGpDDw4shsyn1hRc1sxUaHNJWwVW+IOzYG5yHHeYZaNx46NEZ2lrt6i+Eg==
X-Received: by 2002:a17:902:ab8f:: with SMTP id
 f15mr41150750plr.301.1566494717986; 
 Thu, 22 Aug 2019 10:25:17 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:71cc:5738:24ad:193e:4b59:8a76])
 by smtp.gmail.com with ESMTPSA id r12sm31705798pgb.73.2019.08.22.10.25.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 10:25:17 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v4 5/8] arm64: dts: bitmain: Add clock controller support for
 BM1880 SoC
Date: Thu, 22 Aug 2019 22:54:23 +0530
Message-Id: <20190822172426.25879-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190822172426.25879-1-manivannan.sadhasivam@linaro.org>
References: <20190822172426.25879-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_102519_190240_79D3FC40 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
