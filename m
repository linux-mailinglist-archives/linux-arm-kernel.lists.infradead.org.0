Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE638F839
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 02:58:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BK6pqkYvq8m1PgwK+iOQgXgRqHmottM4tN3PprDRdD4=; b=lq+m8B0rgE4OXd6oawC8naCxMG
	rGkRvYgudrWdyuLds0+xKNNxNCB9bAghfwMqlhSCpG+9MzeaWbJkZYPRwljyTaHXRL7w2KVNus+PY
	P5pZ93yslHcyARsMGGmez0IUjE58DDKDCm1mq+EcLCHFQ+NXzahVqKFXGtCvk3+o623WsIFR94Aa+
	PjreIiXmN+wsEmBXwzDBvoSupMXzjashbARxI7qiUBw2073Mw9lUuLHC+3rJWAypq/ESjpZnYvZM6
	KJJVoENpaLi9GyA3wrK8lqfyQUTjhQP+lCKArsosHCfHO37X1jDvBaSiC+aq3VtFhWTIoYBlmGsEk
	7ezfmtDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyQZh-000892-W2; Fri, 16 Aug 2019 00:58:38 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyQYW-0007fs-1q
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 00:57:25 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DAD071A00DD;
 Fri, 16 Aug 2019 02:57:22 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 615E91A0056;
 Fri, 16 Aug 2019 02:57:13 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A9ACF402EC;
 Fri, 16 Aug 2019 08:57:01 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 daniel.lezcano@linaro.org, tglx@linutronix.de, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, ping.bai@nxp.com, jun.li@nxp.com,
 l.stach@pengutronix.de, abel.vesa@nxp.com, ccaione@baylibre.com,
 andrew.smirnov@gmail.com, angus@akkea.ca, agx@sigxcpu.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V6 3/4] arm64: dts: imx8mq: Add system counter node
Date: Thu, 15 Aug 2019 20:38:44 -0400
Message-Id: <1565915925-21009-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565915925-21009-1-git-send-email-Anson.Huang@nxp.com>
References: <1565915925-21009-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_175724_383239_7BE29166 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add i.MX8MQ system counter node to enable timer-imx-sysctr
broadcast timer driver.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No changes.
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 7c68df6..4fdd60f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -644,6 +644,14 @@
 				#pwm-cells = <2>;
 				status = "disabled";
 			};
+
+			system_counter: timer@306a0000 {
+				compatible = "nxp,sysctr-timer";
+				reg = <0x306a0000 0x20000>;
+				interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&osc_25m>;
+				clock-names = "per";
+			};
 		};
 
 		bus@30800000 { /* AIPS3 */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
