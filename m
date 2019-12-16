Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2227F120384
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:16:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AEXE4Hbooqdnv3SkhZVbYsPtDl9SXA11WXWMkdV/scY=; b=FeaX9AcvVvT/1d
	W0MKmev3c0/UyyxxZTFXQvsWHHvo3kxfXJU86kuD3yo0szrYVABAAMUckj1PDpiE6rnGfzXBWEiyw
	wUnkygJ7pIFA15Kq14iLJsYe7vSZaYIRxoxIlfsqMPqv9YimCZ5Qa/flMXzladKCtcPxv8uV8ZXzr
	zKhB/5G5JrHzN0urbJfZuk4VsnsyuHlqUWpSOEfJbDaF2EqzXN6XJG8/IoY9CLHTyPmq+WN7VNnUj
	vdCQB29RuhJwNTZN/BJO+6RVEfZkH07ZkiQOBKKpGCyporG9plVcEkEFwmxEgztDnq+LukIluuTtG
	0my0oPXUgWtCrRMvg+rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igoM5-00038B-E8; Mon, 16 Dec 2019 11:16:01 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoLu-00037S-NM
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 11:15:51 +0000
Received: by mail-yw1-xc44.google.com with SMTP id d7so1611672ywl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 03:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AUR5yQ/XBT06UW39mN8rkGX71PlTXaLwibh2EkbRSl4=;
 b=bLf3wLEtQdqplXZbaAVgHW4CkMv36oTw85Uv6jYHflFMCdfkgBm3COKTreaqbxmTdc
 qiQgf7Asyt34117bNjfapKHllrdYu2aoKvtU54bA5PHaOuxEstcysNdqT1mGvCFn3VSr
 O7gxnRTqEZf7DdmoauTvdncvdPzLgfqI4ZcVvNs0bTv1ARLfm0oFUubEmWjQBydsLUWW
 xubQnyJpDEuXJaqnsR9P/+G+aOWXoOWmSf4Cie4ZZid8Hqmu+pL5JhTNoXt9n4RIRysI
 /CtF4UXgW2snlxoKkJRpwo28By8edBy1m5gO9aDIYx+fFAl7Szs2enxTOpGMH1bjEuYI
 RuKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AUR5yQ/XBT06UW39mN8rkGX71PlTXaLwibh2EkbRSl4=;
 b=Lw0rnAbEfygArb+pPq5MpcY9jpLM9Q8OCFpgFCab5rtP+PP7a7Z8LqWHMyBvGljkZa
 mFGefArq31hOzIahWqPaDJxP3nnvLsDwARg4Oa+d68Hy8wzGmXKyHXcBaBUhVbT3utyq
 Ih37VeMCMDOTIiHAxbuRUgB9nmiuyoAdjQI4iG3IGt0wqzogOg4OfDJyTode0GjaRzFz
 bxerBjT3C+ID/FzoQHDDxFM43Lr7xMJhSHzsQUdPnmeLPcpAydF5jja/uN+OX/A4sG4E
 YFYhJc0Zi+CXAFxy6sfh805eiVe8yRQPnh2tdwTmU/Qcb5YLNj49L2LF9zNrxNfGhgaI
 fiuQ==
X-Gm-Message-State: APjAAAW+tQr4rOfosgNH+69jfqgLOneLqkRHZyRmDlH0rFGeWycRfnZj
 +QoGPR3yvkv7RASUn8i9q1G9Nhjx
X-Google-Smtp-Source: APXvYqw1gE7A6yrW3oJywOj16NPJXMW4gLQQwOzMm61XMUGaeLODWIdavMuwLNE52GKWKXjEbGrfOw==
X-Received: by 2002:a81:3acb:: with SMTP id
 h194mr18371887ywa.406.1576494948651; 
 Mon, 16 Dec 2019 03:15:48 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id o69sm7644544ywd.38.2019.12.16.03.15.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 03:15:47 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: imx8mm: Change SDMA1 ahb clock for imx8mm
Date: Mon, 16 Dec 2019 05:15:30 -0600
Message-Id: <20191216111530.29558-1-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_031550_782378_1FF1CD4E 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Jacky Bai <ping.bai@nxp.com>,
 Adam Ford <aford173@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Using SDMA1 with UART1 is causing a "Timeout waiting for CH0" error.
This patch changes to ahb clock from SDMA1_ROOT to AHB which
fixes the timeout error.

Fixes:  a05ea40eb384 ("arm64: dts: imx: Add i.mx8mm dtsi support")

Signed-off-by: Adam Ford <aford173@gmail.com>
---
A similar fix was made to the i.MX8MQ for the same reason

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 6edbdfe2d0d7..3d95b66a2d71 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -740,7 +740,7 @@
 				reg = <0x30bd0000 0x10000>;
 				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MM_CLK_SDMA1_ROOT>,
-					 <&clk IMX8MM_CLK_SDMA1_ROOT>;
+					 <&clk IMX8MM_CLK_AHB>;
 				clock-names = "ipg", "ahb";
 				#dma-cells = <3>;
 				fsl,sdma-ram-script-name = "imx/sdma/sdma-imx7d.bin";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
