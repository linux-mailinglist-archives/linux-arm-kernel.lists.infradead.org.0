Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 196851FAB1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 10:27:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FysUfwGeSnn8uQ3XowsqBU5IB2qzXtiHTy1JjXLlmwo=; b=a39HUzOcxEuzZ2
	gMKsBbN1oGgPqcP4QMi42qEBn9pYlfyDwTwAA/nhjp8UzMpsIXcYDfQJYIvA/u+ctkcXQz957nF4D
	8iuxLRXKrWt0HEXwDKKjoYqfQfBCKlsJmNjLX0QIWjmXDJCYC/AYbYgG5/m34Nb3Jr9005LurWent
	7zlBryEV9RvCRmDh4Mli3PXd9EbJXfDtdv+FwVofv0NCUOZL9QlBtwOrf4SuIKCtwFwZuzZu7Bu+y
	f7so5KCaKHps03zfE1DmOePqPmabaxvpYpu8QwsY9fTKz6w4MaLFUW8q6y2Im2I7mue6MLpiWBaFH
	s9h67ywF2hjpmbKgrcvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6vo-0004Os-Du; Tue, 16 Jun 2020 08:26:56 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6vF-0003xh-Hd
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 08:26:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592295982; x=1623831982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9zgZF5bF0PxY60Zea7h/pZzEv9hjVHtWCRJ66bY+LUo=;
 b=v8tXmR+BNSU7L4Dq/zFcXfS+RAy8HZ2X47RYTc04mZpGyprzSFwRz8g2
 h/k3lafyBLqZoEnjTTqrwApDQatZfS2lM1X5qLU0zvfbxrWvYIMBiCS2y
 Z7RBu1btksBK1TvL88VmJ2RQR+XEA+UhsOkeAbE5Z/pcFaKmKThoH+/MQ
 kx3sO2iPnIRjqI1W4SPydgVJEnZOYwddE4CwqOgBsmCHQMU9jCAgISdod
 LeLWNMsTkAulR0cO9T2FTHh0tz3HRyvxb1njYpjcHdvLlA5qCihJFJQB3
 hJz1jmW6x5+Wtp1729C3PFUHWeTQFzvcZtjLVkSRvSI6W1FCfjDjqFWif w==;
IronPort-SDR: nQLKe7M2JbKxcSEuN9o9/w/3B80GVtsqVwMNHg/UCcgFRRCfQH0sTMIGeM6Aa13NFsjjKR2Vko
 Zv1AArKEH1CaF8ZIamKCZYP1VgEtb4/KLVHqik52uqyYwhtFmyNMa609/IRbOTaxcUjp113oiJ
 nr9mLuyH0Azz5FHI6m/P3jqWuKcdJH5TkA1h+bE4TNT9w8yWYr46WiRqOIQT9Eln7ABDYkbVMd
 8IxNrS1VxOKHU3cg76/fJysE6Ov2Jx5uxYB6YRQTK2205YCK/uH6NTgUl0aBQJ1SmnnpWlBQ3y
 zhY=
X-IronPort-AV: E=Sophos;i="5.73,518,1583218800"; d="scan'208";a="79621936"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Jun 2020 01:26:22 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 16 Jun 2020 01:26:18 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 16 Jun 2020 01:26:16 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: [PATCH v3 2/3] arm64: dts: sparx5: Add hwmon temperature sensor
Date: Tue, 16 Jun 2020 10:25:55 +0200
Message-ID: <20200616082556.27877-3-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200616082556.27877-1-lars.povlsen@microchip.com>
References: <20200616082556.27877-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_012621_666847_A81CE5ED 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.71.150.166 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a hwmon temperature node sensor to the Sparx5 SoC.

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index c9dbd1a8b22b6..49d4f289b9026 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -244,5 +244,11 @@ i2c1: i2c@600103000 {
 			clock-frequency = <100000>;
 			clocks = <&ahb_clk>;
 		};
+
+		tmon0: tmon@610508110 {
+			compatible = "microchip,sparx5-temp";
+			reg = <0x6 0x10508110 0xc>;
+			#thermal-sensor-cells = <0>;
+		};
 	};
 };
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
