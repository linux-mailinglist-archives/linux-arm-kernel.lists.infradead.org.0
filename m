Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB9713A8E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 13:00:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gT8ukPXzdM5yl0AzBld1kqhvGbEc1LP8aPRSp07rCTo=; b=mlkgSQ0cB2S+sw
	nOc0hmgc3CkbFn8bjNhPKJfBV0LIzHWyILwIEHBYXk+S98Kr6tcUf355zbasTbrwugQRy/YUItSBe
	iBpxmN3ujIWIn3mknkvskPafOjKlgIsLOviO3LSWbRFvACNyvMFk570eTCARAGBDRNZXCFC/D8pI/
	UnSyVV6qGKYFWeCgTb+ZJgLLlkREhATLqi1Nx0hJOmQbwLI6CZnoLJcT8C5dlsieM5osDJ30Hrq8T
	eyqiLcuBWd0maESrnHL7N2r19Pnsk9q/MPmJhJkOg+9vRuqDheOwVTMqJQwb9NXg8+k1JytOohsMS
	UX/o7BlzL6fXvQFZrySA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irKsG-0004i7-Th; Tue, 14 Jan 2020 12:00:44 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irKs6-0004hL-Ke
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 12:00:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id t2so11913057wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 04:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hazent-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gDf9E2jEZpbwN6lIxkN60ENsZ3TScvWjer5XnJTvJUw=;
 b=xV+impGWBENtCFcWSH0ftkctOnHwhG/bxl9woj4MfKZZeaEp9zHPRUKabGTBm9jq59
 DEnOm1eH4dF2A1LS9XsXlkMqrTBZ+axirr/b+s3lRFCTpdBBZkzhSs2zqlGX6kTTqiqO
 8BqxgpG7SRv5gtmH9+LAg6M4SqN+sturx+sJ55UJ6hRzNiFUsNqLf+uJsGDSUYFOU+gu
 qkD788s23B6pmfQxEWsCmSxydjnhXVESu8knffDpUjW87eSGoMzHBIi3AbEtOaapw5Yo
 zC+DYqq6poUqHFGZ948SjfJ4CNOMFNvEguPPjNzeR1QDPOyBsZJA1vRMWlysnnrZS1Rl
 U2FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gDf9E2jEZpbwN6lIxkN60ENsZ3TScvWjer5XnJTvJUw=;
 b=Elfn4Z5YMg9v1N5XqNBck4Fxcuf+ya8Auqu53P/lcG+FsnbApdoiQ5jd8wbquj08B9
 s+lO40Xod364x7QrH9qkQgjMJqLWLiTLpQsK+U38nmuzxReGlAJQZQg5FxoofjVqQCN6
 5Ay68PA6sjnQJW72tu8pQzDLdfqYVSe7DEn1oGwwHYDalJm+15xQNG2XQf0zZwus3W2o
 qseJhfmmbonaOfsoYARHruJ2ooI0aNWTiPRdjNpPL8iwIbGCp8PzNIGQIOFaw9EDjAAE
 vNOFJP/vRi4Oex+OgacYOAqC15SgEXSvZW3hiDHKPfQq1+TdacnjU/4lxCbIhdkxEjy1
 SDgw==
X-Gm-Message-State: APjAAAUsrwsrWdP9Z9RGR4STEvjzGtMteEvrm+0ufATy4UayeQdukZRd
 T6VTWSmiFxsw6YwySBV0WJC07g==
X-Google-Smtp-Source: APXvYqyQKqpb59gizT0sC1bQYkx4m90mVUoYGdrbzBQivBAJTriCKC1wnSSHRDGJwyUhWeldj9RFog==
X-Received: by 2002:a5d:68cf:: with SMTP id p15mr24824090wrw.31.1579003232544; 
 Tue, 14 Jan 2020 04:00:32 -0800 (PST)
Received: from salem.gmr.ssr.upm.es (salem.gmr.ssr.upm.es. [138.4.36.7])
 by smtp.gmail.com with ESMTPSA id w22sm17594017wmk.34.2020.01.14.04.00.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 04:00:31 -0800 (PST)
From: Alvaro Gamez Machado <alvaro.gamez@hazent.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Michal Simek <michal.simek@xilinx.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: zynq: add flash memory interfaces,
 Xilinx efuse and missing clocks
Date: Tue, 14 Jan 2020 13:00:24 +0100
Message-Id: <20200114120024.19779-1-alvaro.gamez@hazent.com>
X-Mailer: git-send-email 2.25.0.rc2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_040034_819720_5F8215DE 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: hazent.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: hazent.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alvaro Gamez Machado <alvaro.gamez@hazent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Alvaro Gamez Machado <alvaro.gamez@hazent.com>
---
 arch/arm/boot/dts/zynq-7000.dtsi | 50 ++++++++++++++++++++++++++++++--
 1 file changed, 47 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/zynq-7000.dtsi b/arch/arm/boot/dts/zynq-7000.dtsi
index ca6425ad794c..8358315d7803 100644
--- a/arch/arm/boot/dts/zynq-7000.dtsi
+++ b/arch/arm/boot/dts/zynq-7000.dtsi
@@ -197,6 +197,45 @@ spi1: spi@e0007000 {
 			#size-cells = <0>;
 		};
 
+		qspi: spi@e000d000 {
+			clock-names = "ref_clk", "pclk";
+			clocks = <&clkc 10>, <&clkc 43>;
+			compatible = "xlnx,zynq-qspi-1.0";
+			status = "disabled";
+			interrupt-parent = <&intc>;
+			interrupts = <0 19 4>;
+			reg = <0xe000d000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		smcc: memory-controller@e000e000 {
+			#address-cells = <1>;
+			#size-cells = <1>;
+			status = "disabled";
+			clock-names = "memclk", "apb_pclk";
+			clocks = <&clkc 11>, <&clkc 44>;
+			compatible = "arm,pl353-smc-r2p1", "arm,primecell";
+			interrupt-parent = <&intc>;
+			interrupts = <0 18 4>;
+			ranges ;
+			reg = <0xe000e000 0x1000>;
+			nand0: flash@e1000000 {
+				status = "disabled";
+				compatible = "arm,pl353-nand-r2p1";
+				reg = <0xe1000000 0x1000000>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+			};
+			nor0: flash@e2000000 {
+				status = "disabled";
+				compatible = "cfi-flash";
+				reg = <0xe2000000 0x2000000>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+			};
+		};
+
 		gem0: ethernet@e000b000 {
 			compatible = "cdns,zynq-gem", "cdns,gem";
 			reg = <0xe000b000 0x1000>;
@@ -297,14 +336,19 @@ dmac_s: dmac@f8003000 {
 
 		devcfg: devcfg@f8007000 {
 			compatible = "xlnx,zynq-devcfg-1.0";
-			reg = <0xf8007000 0x100>;
 			interrupt-parent = <&intc>;
 			interrupts = <0 8 4>;
-			clocks = <&clkc 12>;
-			clock-names = "ref_clk";
+			reg = <0xf8007000 0x100>;
+			clocks = <&clkc 12>, <&clkc 15>, <&clkc 16>, <&clkc 17>, <&clkc 18>;
+			clock-names = "ref_clk", "fclk0", "fclk1", "fclk2", "fclk3";
 			syscon = <&slcr>;
 		};
 
+		efuse: efuse@f800d000 {
+			compatible = "xlnx,zynq-efuse";
+			reg = <0xf800d000 0x20>;
+		};
+
 		global_timer: timer@f8f00200 {
 			compatible = "arm,cortex-a9-global-timer";
 			reg = <0xf8f00200 0x20>;
-- 
2.25.0.rc2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
