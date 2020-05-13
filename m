Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3981D1427
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:10:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEgq5Ww/TL+b2kwqtLb/xUT3UD+upOObxlwI0rndXNA=; b=eXxXYRit/wtc1y
	9LFvUuiEeEy9BtG7PcdUCIQ7i1DDhepjhi2KakO8xPOybgUnArcQu0rkNrWZnA8YYszl9d8npwP2f
	HEv5m04h5xhr7xjpSczFPVhV3oWkuCcJVVyf0IsyQ6IF8B/zGfJK277o8AYr+jB5k6Ak5kOw4WDrF
	ARQibhI+WhXmWhR7OiS7l9rpIN2Eh4vKNE8ZPMJqUml/KrQdRCzDWV9/1FA2DUDNANsSbLO4PdwPu
	9lh+xj67S0DKLI06ZonPKkvvbyZ3zbYnNkVBgqjxMahkmUSeK43Zry0423QEkJKVDnAkhbWG0kKfN
	tspnKL19gVkZaSh0jidw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYr9a-0008B6-Nl; Wed, 13 May 2020 13:10:30 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYr8A-0004dE-Th
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:09:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589375342; x=1620911342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/Is4lRNYSiquyResjIg3T8wiw24hPoKYdLEtowPC0kg=;
 b=YBJs7QnHpD9oy5ZX40mRkbfuKEMUNPoXK0Ydmd41p5Y1WKTeQ9aFdBeK
 zV/1pHGD1zU83kKYD8qb88WsdAquu6U4XTp/gWZq23dSIjEOhTdvyf5vz
 utN+3n4B25E54Q4gMV3a5te5NROYLgGJTafLuU1QY43JCMboKWpl9Imtw
 AC89CrRU89DS0Y/AGILhig0HL7TibOoP41LekqyhiYLpM9L2fX0bU8IC0
 dORy7nHwd6HdUvmbjfCCZoskkVNEVPpO/UumvSYnUTl4R+6FD8KEO3n2F
 PrXBF91ZYopajKpeuA6Up80yxEcsSpaP08oe/R6rhhENJzgstHFsd8HL4 Q==;
IronPort-SDR: 75D4jjDICZ0KPTl1UtCcW9v1pG/9kSDua3FNKu6/RyNLCaHt7q4MshxmBU5tJ7TqvPJ1on5PRh
 Sq0jw3yQGcIVxnBvJ8g2H+Rt/3uJS7mQoxzyyw7jhyp9P9NQlEJ61J7MIIWKp4L4HxCMGRu3Hf
 7KNqfsYMtx4r5zzmT5DOBOzdJBhVDd7YnDOjelBjnSDXn5wmHjrPb7lLBZHWvz28vfMpT+RQMu
 skQC4EGfKcsNwjcee9UmFkpeefAxCA3OsTm6OTEmmwrZueoTRbUzwqAmIbqSgJWytEaij8oTJt
 l28=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="79438679"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 06:09:01 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 06:09:01 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 06:08:59 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Sebastian Reichel <sre@kernel.org>, SoC Team <soc@kernel.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 3/5] dt-bindings: reset: ocelot: Add documentation for
 'microchip, reset-switch-core' property
Date: Wed, 13 May 2020 15:08:40 +0200
Message-ID: <20200513130842.24847-4-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513130842.24847-1-lars.povlsen@microchip.com>
References: <20200513130842.24847-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_060903_021543_5297DDF5 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This documents the 'microchip,reset-switch-core' property in the
ocelot-reset driver.

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 .../devicetree/bindings/power/reset/ocelot-reset.txt        | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/reset/ocelot-reset.txt b/Documentation/devicetree/bindings/power/reset/ocelot-reset.txt
index 4d530d8154848..20fff03753ad2 100644
--- a/Documentation/devicetree/bindings/power/reset/ocelot-reset.txt
+++ b/Documentation/devicetree/bindings/power/reset/ocelot-reset.txt
@@ -9,9 +9,15 @@ microchip Sparx5 armv8 SoC's.
 Required Properties:
  - compatible: "mscc,ocelot-chip-reset" or "microchip,sparx5-chip-reset"

+Optional properties:
+- microchip,reset-switch-core : Perform a switch core reset at the
+  time of driver load. This is may be used to initialize the switch
+  core to a known state (before other drivers are loaded).
+
 Example:
 	reset@1070008 {
 		compatible = "mscc,ocelot-chip-reset";
 		reg = <0x1070008 0x4>;
+		microchip,reset-switch-core;
 	};

--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
