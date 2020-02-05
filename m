Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D981532F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 15:32:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JXUCf4ijs163b4uW0dDYFJYtrBireFJEeVMqP9Mcv1c=; b=X3s1icnTjyZEyhGvJV1wJ5Q54J
	0ZdNX7fsCHQfJyzniC+JH641pLWuNWewVlBO1SC6mOh+jEnbzuB05kmwX1TC1RVZk8azPqfHHKhUu
	uZioYzxJMVRZ6F/LSevUe0SKeHhiNuLHiPOIWkklPUXptlik0BZKLoGjZMOqQr+yz4Q9sjLeHx8hS
	Irp4hv//RSZAlzeSSJBI4HdekglMuRKDdK18qWy1+9Xr371+S/3/LsB7DoZ+LcuuDCoYcmMAr4JbR
	3klK/P50N2ugkVyaZlLGwRwL0xC/jVDNYmBsls7ItNfsX8wdQaQCIfD8GsgkZs1qgJhK+mO1oxBFA
	Y5gVzDvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izLia-00007a-3a; Wed, 05 Feb 2020 14:31:52 +0000
Received: from comms.puri.sm ([159.203.221.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izLi0-000880-Bz
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 14:31:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id 9D9F9E0DCB;
 Wed,  5 Feb 2020 06:31:15 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nPtQJje9XwOq; Wed,  5 Feb 2020 06:31:14 -0800 (PST)
From: Martin Kepplinger <martin.kepplinger@puri.sm>
To: robh@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com
Subject: [PATCH v1 08/12] arm64: dts: librem5-devkit: add a battery for the
 bq25896 to monitor
Date: Wed,  5 Feb 2020 15:29:59 +0100
Message-Id: <20200205143003.28408-9-martin.kepplinger@puri.sm>
In-Reply-To: <20200205143003.28408-1-martin.kepplinger@puri.sm>
References: <20200205143003.28408-1-martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_063116_421909_B56764F7 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.203.221.185 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Angus Ainslie (Purism)" <angus@akkea.ca>

Add a simple-battery with default power capacity

Discharge curve comes from the panasonic NCR18650B datasheet

https://www.batteryspace.com/prod-specs/NCR18650B.pdf

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
---
 .../dts/freescale/imx8mq-librem5-devkit.dts     | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 6a8f6cee96cf..4957acc512d5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -26,6 +26,22 @@
 		power-supply = <&reg_22v4_p>;
 	};
 
+	bat: battery {
+		compatible = "simple-battery";
+		voltage-min-design-microvolt = <3000000>;
+		voltage-max-design-microvolt = <4192000>;
+		energy-full-design-microwatt-hours = <11700000>;
+		charge-full-design-microamp-hours = <3250000>;
+		precharge-current-microamp = <130000>;
+		charge-term-current-microamp = <66000>;
+		constant-charge-current-max-microamp = <1600000>;
+		constant-charge-voltage-max-microvolt = <4200000>;
+		factory-internal-resistance-micro-ohms = <250000>;
+		ocv-capacity-celsius = <25>;
+		ocv-capacity-table-0 = <4192000 100>, <3750000 85>, <3650000 68>,
+			<3500000 51>, <3400000 34>, <3250000 17>, <3000000 0>;
+	};
+
 	chosen {
 		stdout-path = &uart1;
 	};
@@ -480,6 +496,7 @@
 		ti,minimum-sys-voltage = <3000000>; /* 3V */
 		ti,boost-voltage = <5000000>; /* 5V */
 		ti,boost-max-current = <50000>; /* 50mA */
+		monitored-battery = <&bat>;
 	};
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
