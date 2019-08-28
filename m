Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8003E9FBB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:28:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Soa2zcHU/eE9Ud/B9K3ZTNj5dykaatlJtZ9VhkkdUzA=; b=HTBBY7b/N21B8N
	nfBgNZA/zo4G7DQSoCuOkHI+fWmcXIsOcfJte/ZRZ7xwPi+Zqo5Ruv3HGzEBtIOz3+X5WwNNFY8v2
	vPjDyhUbMUc/E/VWs1CMld4/vKHkO/5MqWNHIQhLAjMI3W+VAt2OZ+IMbD61FxYYfE+GLlrUmKsFJ
	vXdE/VxbqwX6xREiegDcMU9NrArKMdHEcKMiG2PS/xGYClV1Ox6SjNdf9vA3bdTZW4zNhlje6Ee7Y
	ku/0YILrBPnMFdpJ7OGajb9tKKaHMfJ7oS9yyneJpof9u8sBxq614na4fO9A2EpFpLGahIhBqy8Ok
	XLh3sNe7pcOHCj8hAk4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2sNk-0005ro-My; Wed, 28 Aug 2019 07:28:41 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2sME-0004Ts-HK
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:27:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id ED636D8242;
 Wed, 28 Aug 2019 09:27:04 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id isCGV_phBhNd; Wed, 28 Aug 2019 09:26:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id B597AD8300;
 Wed, 28 Aug 2019 09:26:44 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id M8Grky0F8r36; Wed, 28 Aug 2019 09:26:40 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id E2A89D82FD;
 Wed, 28 Aug 2019 09:26:36 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH v3 5/6] ARM: dts: mmp2: specify reg-shift for the UARTs
Date: Wed, 28 Aug 2019 09:26:28 +0200
Message-Id: <20190828072629.285760-6-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190828072629.285760-1-lkundrak@v3.sk>
References: <20190828072629.285760-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_002706_959183_21CC5C70 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This makes the 8250_of driver happy. There are two more drivers in the
tree that bind to mrvl,mmp-uart compatibles: pxa and 8250_pxa and
neither of them requires the reg-shift property, assuming it's always 2.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
Acked-by: Pavel Machek <pavel@ucw.cz>
---
 arch/arm/boot/dts/mmp2.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/mmp2.dtsi b/arch/arm/boot/dts/mmp2.dtsi
index 68b5470773232..6a2f072c1d0a8 100644
--- a/arch/arm/boot/dts/mmp2.dtsi
+++ b/arch/arm/boot/dts/mmp2.dtsi
@@ -214,6 +214,7 @@
 				interrupts = <27>;
 				clocks = <&soc_clocks MMP2_CLK_UART0>;
 				resets = <&soc_clocks MMP2_CLK_UART0>;
+				reg-shift = <2>;
 				status = "disabled";
 			};
 
@@ -223,6 +224,7 @@
 				interrupts = <28>;
 				clocks = <&soc_clocks MMP2_CLK_UART1>;
 				resets = <&soc_clocks MMP2_CLK_UART1>;
+				reg-shift = <2>;
 				status = "disabled";
 			};
 
@@ -232,6 +234,7 @@
 				interrupts = <24>;
 				clocks = <&soc_clocks MMP2_CLK_UART2>;
 				resets = <&soc_clocks MMP2_CLK_UART2>;
+				reg-shift = <2>;
 				status = "disabled";
 			};
 
@@ -241,6 +244,7 @@
 				interrupts = <46>;
 				clocks = <&soc_clocks MMP2_CLK_UART3>;
 				resets = <&soc_clocks MMP2_CLK_UART3>;
+				reg-shift = <2>;
 				status = "disabled";
 			};
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
