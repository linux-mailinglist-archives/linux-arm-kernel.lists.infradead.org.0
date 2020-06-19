Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 814F92007E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 13:32:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s6gLn0kGCUu4gevVsUlkL+ta0LkWg2RYpBshNuIR7Zg=; b=V2waJNg21GjIIH
	GgUiimU0e41SpJHXrGRT0gglNdqDHjotsPgm3fBu/LlfKDTAjeWAVVbnkIcL9IImewzfWt1EhxLUT
	TumGxFuqx+xXq8j6kGiEivV4xoR8nQ9b1gneidqpWwUaWOW18JtL6YZDAgPSoIDvv8uHjO0x5gDnt
	aLEONyxmnfqYcuQSHEsAEcXBs8eK3YI2ouJV8TrgeYYQnoZvMcRasFLeNCPqhJ5xgLFTNhRmrBL1Q
	IoLuy8tRQ/uQC7AFN+PhxXImWiiCIX67PtD7R7NihKx4LXbgraxPdPgM+nWWdEqHzNI+haZwY7pAp
	TiPdSxrFkAgpfPVZOwhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmFG1-0000q6-1s; Fri, 19 Jun 2020 11:32:29 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmFFJ-0000NK-Ff
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 11:31:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592566305; x=1624102305;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kjTc0lDvbX2q6sDCdQDYyLFYSA/iqLUPgJ9XmdVLoX8=;
 b=fbXKb2JhmOJ8+KZo1cGdijzi7T0KE0eEqXrnroCP9Rzc8BI1YYSDbMW5
 6ZCHXS2ffSo91E8U30wp7BduqMzBPxHrFMLkLaUd7+P9rDzM6XL3DDcJH
 UUsGz0UUF79BPf41oc9u9+ar3r8PtzKGS3vQk9GXapbXiYlzOWdv8N/2V
 x1gNmbJjvY4Ty3kvLbe8yDYlgUmXlfULmGISTRtpHTFRVrbtssuobZwAF
 hI4jW3cNnx8gpDweCKIUcc6pqH0sYsSnWf6KtJ2dn7HndT6CMzlv5xkoq
 NBaY1ZybeR0Q/aELudI/3OXBM+1yx807ZyGhp4n/tnGI4pf1e6orWkVEK A==;
IronPort-SDR: 5tCxH3ZJH1R1MOehWYbR4JGvWH+LB4qV1roaxoIyERCaBUOysCw7AgLP7tYaRj14i25qWM+vrV
 u2kq8M87IAhUemDJBkbUetsqUXoYpITgnjXHPd2NsWGC8UFo6mXVOi3P13s+yX4cTB4TwkPyYl
 ORM4KQcnCevmqr0r1/qIToyhzUabojpcvQID7dzgMSZ8QCtiG5K19zeMxHarNB29P65aMf/l71
 YvJCZGmp5nikwJRhgdvarphCqsAepOmPQhO09ceA3xtUqdKa0Io+xqK7JGhcpDRLDG8bD2/4d1
 2KI=
X-IronPort-AV: E=Sophos;i="5.75,255,1589266800"; d="scan'208";a="84298531"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Jun 2020 04:31:37 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 19 Jun 2020 04:31:30 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Fri, 19 Jun 2020 04:31:28 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>, SoC Team <soc@kernel.org>
Subject: [PATCH v2 2/6] arm64: dts: sparx5: Add SPI controller
Date: Fri, 19 Jun 2020 13:31:17 +0200
Message-ID: <20200619113121.9984-3-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619113121.9984-1-lars.povlsen@microchip.com>
References: <20200619113121.9984-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_043145_541513_747A23BF 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.147.91 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>, linux-spi@vger.kernel.org,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a SPI controller to the Microchip Sparx5 SoC

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index 7e811e24f0e99..2404bcc08b89d 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -14,6 +14,7 @@ / {
 	#size-cells = <1>;
 
 	aliases {
+		spi0 = &spi0;
 		serial0 = &uart0;
 		serial1 = &uart1;
 	};
@@ -155,6 +156,19 @@ uart1: serial@600102000 {
 			status = "disabled";
 		};
 
+		spi0: spi@600104000 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "microchip,sparx5-spi";
+			reg = <0x6 0x00104000 0x40>;
+			num-cs = <16>;
+			reg-io-width = <4>;
+			reg-shift = <2>;
+			clocks = <&ahb_clk>;
+			interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		timer1: timer@600105000 {
 			compatible = "snps,dw-apb-timer";
 			reg = <0x6 0x00105000 0x1000>;
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
