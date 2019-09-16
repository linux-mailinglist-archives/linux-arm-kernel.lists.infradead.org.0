Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4682B3EB1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 18:17:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a8YD2T9AJBx7ZRSkSCHBSxP6Qmx0+x5wnisuLG+2OgU=; b=oC0VEv/H0I95zOIvNW3m5lR8it
	zWFTCdoLd2RbmVoLqxWUEOp3G5uuG3eQD8pLOz/a/nvcYyDguoLerf20WEZUv66XXD90RQEoPdX6d
	hXWV94b3GBWkkYWPoUnMmNB2LBqvjIbAzjXvsk7OWvnT7NA9tZ6lWYFAznxn9KQMbRQjPre3uf+1m
	o0Dk+O+ggR/Irp1nXIPxpwOVVU5xus/NXSCpQil65OzxxgJGCM36I3nklsGPuacCullF9bp3qRQd7
	bIKBLWB4pg1iuQDFI9qSBJaXVdc9ZCOY2rEo/gmNyk84jRmqTaUWKkembtayNDvAE6yJnkukk1B1+
	ScX3Dirg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tgV-0004uU-20; Mon, 16 Sep 2019 16:17:03 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tev-0003kF-1I
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 16:15:26 +0000
Received: by mail-pg1-x543.google.com with SMTP id a24so285754pgj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 09:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Y6Dgg0LHIAz3laO+y1ntUkl0I7eVRTHEz+QlpqCcJzM=;
 b=jE2g8ybOcOUwoEThqmw1rnJDV6U69PWwTv2OUjNx3CE2KVZUeEQs6WWuow8qfhTw1z
 fzwuvLgN4Rf5C3+MF3iEj1BCVt5sEvoknLn+2nK6sB6jSLqgh/n2wHwjsccIEzrrvara
 8/l1j0hNsc2Z31T3a1ZcBYfgqChesnusC0YMJuZJ8fXc3wr3wkR+ngzJ1n+X36r4TK/Y
 UBPdaMlV5FCKCMxaON4VM6f7WoDd57zhy0mTFuDWJW9kntIn2FFOot3lhElnvnkZbr4x
 9UMLrVB3HjQa5Hdk5jhLhgrqfQZ4ZZqczggs4l5GrMgbBKVIngAmKZntUXrBqVNPENqC
 Dw3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Y6Dgg0LHIAz3laO+y1ntUkl0I7eVRTHEz+QlpqCcJzM=;
 b=nbX7T9Wveo9Dnx8rNG6hh1Ciilk8sC6XjzjrQUryWO1JnUUOZMkNVaAOIwUGbAISSU
 X2YcABQ+B/tiZ579Z0/MjBi2NJ3cqgBfX6Ee3ytXmxbwPdwDb10wo54U9+l+rqAZQgwh
 HBbUpk2xHH/eYlcG3vk0JUNR82ZDTJN09MD2gaCTIwTlGh36QIwrHoCRzRaFmup9En05
 TyjhPX1xYRpjQ6XmTztVpY+n7Nwf93HlgmSnTk+2WRQcf7/cA9ezuHadfdl2drYz3Ciq
 uhbxbu0TiY/NSC5nfssbIuDxugw/uU5u2nmuqtMAPxCf3vYiCceSQ3pfXnx80IjeGNfZ
 /JBA==
X-Gm-Message-State: APjAAAUxOwm+Sxe8N3MMa1KxOhnQnLQVNDHXTW6lEEkY6xPEfAITUny3
 Q0SHZg3i7r2yvDYx8QeQAQFE
X-Google-Smtp-Source: APXvYqykS8glTIKVHijJEFn2JIHIDQLBwCTSvv4gHN6zTXId4IDlNKrbns+fLHkkxys913v7GaEswg==
X-Received: by 2002:a62:2ac9:: with SMTP id q192mr52183pfq.189.1568650524525; 
 Mon, 16 Sep 2019 09:15:24 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:90b:91ce:94c2:ef93:5bd:cfe8])
 by smtp.gmail.com with ESMTPSA id
 h66sm614134pjb.0.2019.09.16.09.15.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 09:15:24 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v5 5/8] arm64: dts: bitmain: Add clock controller support for
 BM1880 SoC
Date: Mon, 16 Sep 2019 21:44:44 +0530
Message-Id: <20190916161447.32715-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
References: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_091525_201192_1D71B673 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
