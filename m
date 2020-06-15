Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C1C1F9404
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kyWUve7oMcJIP2oj2T+iLnZ3F0hi7DURdp2IkYCTcqs=; b=qdVbqaE6KF6Tmj
	/P4f3C/+CFnhxj7jUwbrSIjg8ShuCcvk9lrXkB+b2GyT/RrNSVq1gzG/YOXOm2oGWLAoCb1W7RKNA
	3Wpr0VHZm2JeJz24mZJZ35wpuGJAEj/GhGMTaqcMvNhk+lmO7egwGkSQbHVbtYgYcNlFAB6rBzidK
	dpBSrHoP7aPCc70XXFeFn+G4vYlutpYYZx9TX44+y+W+NpGEvAs5WJoKc7+iCMjXr015+u13CgX78
	+Pf5snj/JUQv7mLGDReIDyV2lQOMf5KlU6ixFX+SDm7aD9gOxuiMtiKMUm0HbhWJiz6T3Ef+qdqkj
	dcxPy8EFRVLdr4olRQ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklqJ-0007gZ-TI; Mon, 15 Jun 2020 09:55:51 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jklqC-0007fy-DV
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:55:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592214944; x=1623750944;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EhgQcEHdAJNNogp8ECOYFDSbKYvI+4DJ91LLczqWy04=;
 b=Dspl5P+bhRQOX+ptXnspCyF7uUlitBUYSPd80FRjYbGl19+D2ntp+nje
 6axp9m3t54ngDMexN5l4QWH3WvHAURRQUnm0AA/ffGiwUImSl+hcHCSd/
 T2pF6Q73apQzUha3+eqc3LukaDH8YYGNyBR5q0dUNu5q+FyJJY749M8pc
 iNbDkEmofETaEXhVnURr0nyJ5uI+lSItjbsOgzakQ/ovdqCLvtfGoMmmj
 U2h9NAIoUr+n07nK3A2ExOoD0R8OVKt57+rEAPae/d/Y5UFB08CbJPZqI
 H4mg3hFMTqpARMs9FYAAPSNnXAKVu8NzKWyqR0MIdBMN688sFQC9h2CBY A==;
IronPort-SDR: 3s2PWCYQ6TfpQV3qjczFo20MSKizU76Vihaekzc+/qHm8xTAzxtT3kh+4s+S0oZYGEXetR6Yh7
 OfTBjXknHe7jR+mfKwKGcahtHRVhbVSRLO5zcR/GRQdNaB05IDPbRfnS1Xtf5JfgGSkfHG263Y
 ZrBWFhHPBLCIhyQioV5KNu8CxD1fegoTK2DkpAvTTErXbcW1ka2VixFF60DiKFiup4XUpuNOU7
 ad73hHq2NghakCJmS3kNIiG/1RyLF7u0eB0kGR0l9UtEqcHwI3bmImJjlnFp3ARRwNNZrOqwKJ
 KAU=
X-IronPort-AV: E=Sophos;i="5.73,514,1583218800"; d="scan'208";a="80112721"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Jun 2020 02:55:40 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 15 Jun 2020 02:55:40 -0700
Received: from rob-ult-m19940.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 15 Jun 2020 02:55:37 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/3] ARM: dts: at91: sam9x60ek: classd: pull-down the L1 and
 L3 lines
Date: Mon, 15 Jun 2020 12:55:24 +0300
Message-ID: <20200615095525.43414-2-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200615095525.43414-1-codrin.ciubotariu@microchip.com>
References: <20200615095525.43414-1-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_025544_466260_3F0FE210 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.153.233 listed in wl.mailspike.net]
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
Cc: alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 robh+dt@kernel.org, Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 claudiu.beznea@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The L1 and L3 lines drive NMOS transistors that are OFF with a low level.
On the SAM9X60 EK board, if the pins corresponding to L1 and L3
have pull-ups enabled, there is an extra 2 x 30uA power consumption.
Use pull-downs for these 2 lines to remove the unnecessary power
consumption.

Fixes: 1e5f532c2737 ("ARM: dts: at91: sam9x60: add device tree for soc and board")
Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---
 arch/arm/boot/dts/at91-sam9x60ek.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts b/arch/arm/boot/dts/at91-sam9x60ek.dts
index b484745bf2d4..3b9bb29d9e23 100644
--- a/arch/arm/boot/dts/at91-sam9x60ek.dts
+++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
@@ -470,9 +470,9 @@ classd {
 		pinctrl_classd_default: classd {
 			atmel,pins =
 				<AT91_PIOA 24 AT91_PERIPH_C AT91_PINCTRL_PULL_UP
-				 AT91_PIOA 25 AT91_PERIPH_C AT91_PINCTRL_PULL_UP
+				 AT91_PIOA 25 AT91_PERIPH_C AT91_PINCTRL_PULL_DOWN
 				 AT91_PIOA 26 AT91_PERIPH_C AT91_PINCTRL_PULL_UP
-				 AT91_PIOA 27 AT91_PERIPH_C AT91_PINCTRL_PULL_UP>;
+				 AT91_PIOA 27 AT91_PERIPH_C AT91_PINCTRL_PULL_DOWN>;
 		};
 	};
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
