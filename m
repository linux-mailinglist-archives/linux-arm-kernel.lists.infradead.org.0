Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2414D1B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=33O2YcBnDLaKBmWuDx1jjs084i9diSojpXUWb2TjkwA=; b=brSFEjH4s/rdmv
	QAT4HN9XiBL4GUw/9sgc2RkINdkj7vIpMUiDQ2rICWxKLlOqZF8dg6F4UFuRPW17a9c46u7mS1Zb1
	2q01H72YSbpxRqCiSTC9YGpnOmQD9XjQo6vYL/BzxXOYMij1hwGk7hDZczH3+D4/EV6z4aOuphagO
	eN0Jxs9bySEm+SWvM+MltObk1g/JnWDxG4mBHMCi4ij4U/Nx4Ohp1Dqpy5Gu1sM0KUAcZgfUrWtgb
	1wqc9nbftUHRzb91z6lFEivB/ZF4gMfsGVSjov+ZQv+HOqZoHYGviEmVNkYgbLnyisltaMaMi4F4b
	B2khmwt8j8KL1hGsQ3Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdygt-0002ti-Rl; Thu, 20 Jun 2019 15:09:31 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyf9-0001fg-Ru
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:07:45 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 52E32CC52E;
 Thu, 20 Jun 2019 17:07:42 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id yO6QnH-kjdUF; Thu, 20 Jun 2019 17:07:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id DC783CC536;
 Thu, 20 Jun 2019 17:07:31 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id tKXEbdIxRtDi; Thu, 20 Jun 2019 17:07:29 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id BDCCCCC539;
 Thu, 20 Jun 2019 17:07:27 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH 5/5] ARM: dts: mmp2: specify reg-shift for the UARTs
Date: Thu, 20 Jun 2019 17:07:24 +0200
Message-Id: <20190620150724.1406757-6-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190620150724.1406757-1-lkundrak@v3.sk>
References: <20190620150724.1406757-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_080744_109557_20831F5C 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This makes the 8250_of driver happy. There are two more drivers in the
tree that bind to mrvl,mmp-uart compatibles: pxa and 8250_pxa and
neither of them requires the reg-shift property, assuming it's always 2.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>

---
 arch/arm/boot/dts/mmp2.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/mmp2.dtsi b/arch/arm/boot/dts/mmp2.dtsi
index 68b547077323..6a2f072c1d0a 100644
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
