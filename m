Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E65113A650
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 11:24:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tofl4THxeRw15cHER87rlh0Kd2b1aPTTOqhtfaM7XSY=; b=Ns+FMxIpXToREj
	xzlgCKZgzRJ3O0VPE45ViFDOXZo4objxrvWiBNkGJvNfGbDCnBcRJcp5lj56mAhCUJ1KyQcuSABi4
	JWKJejDB3XPF+TTLOiP89u39VvJjzAFXkeR5nMDGnPYdnOtxthY3NZjtE/+DM5CEoB3gaLnHAfM5z
	mKRPXOqUpyw/xGY2Rx9hUWUjKwM92MNynWgrZVy/IWmtyn+IbZTxB/6sqqBgpB8iYtB2q5hOavdC/
	GiLqLL7+qe9n/61JkagF6mXrz5jD15r63SKnmwm0KXU042H9yw+Q+P4kyWBPuABnbfe8r3ZrK7nmO
	j7FNyDzKabos9FMdcswQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irJN7-0005Th-OX; Tue, 14 Jan 2020 10:24:29 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irJMK-0004zP-IF
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 10:23:45 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: taTAT14FQfDwP/6OHU6jkpvYy4c2V+rnFU21nD2MW2MsyrypWTLZvkJ9F1wG5EDxBT4Wp5Z4Yd
 tThj9DyqO6ml7L2ZVaHBBVYJbOY9RXVlu+sew5Y6/fVPqobia2DGX86OtXOU2cVE5WJSNUoVKx
 6BZtAbmsYkIIZxkTJ9HljlmAaaz8Wzq+BSGDJoTNSMTmQ7bNbU7C654iD3rtkMDxZA/D5n27tQ
 Uo+fLAWUFlrGiatYG8JCG9EU8b+dfRPza72ok8S8KHDKe2MgUInXxaTlJ6lmHiZ3iSmv69M6oF
 M+E=
X-IronPort-AV: E=Sophos;i="5.69,432,1571727600"; d="scan'208";a="61849231"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Jan 2020 03:23:38 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Jan 2020 03:23:37 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 14 Jan 2020 03:23:32 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <robh+dt@kernel.org>, <lee.jones@linaro.org>, <mark.rutland@arm.com>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <radu_nicolae.pirea@upb.ro>,
 <richard.genoud@gmail.com>, <a.zummo@towertech.it>
Subject: [PATCH v3 2/7] dt-bindings: atmel-tcb: add microchip,sam9x60-tcb
Date: Tue, 14 Jan 2020 12:23:12 +0200
Message-ID: <1578997397-23165-3-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578997397-23165-1-git-send-email-claudiu.beznea@microchip.com>
References: <1578997397-23165-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_022340_629492_678E7140 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add microchip,sam9x60-tcb to DT bindings documentation.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 Documentation/devicetree/bindings/mfd/atmel-tcb.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/atmel-tcb.txt b/Documentation/devicetree/bindings/mfd/atmel-tcb.txt
index 8b197db8a3c3..5c78f46ff204 100644
--- a/Documentation/devicetree/bindings/mfd/atmel-tcb.txt
+++ b/Documentation/devicetree/bindings/mfd/atmel-tcb.txt
@@ -2,6 +2,7 @@
 - compatible: Should be one of the following:
 	- "atmel,at91rm9200-tcb"
 	- "atmel,at91sam9x5-tcb"
+	- "microchip,sam9x60-tcb"
   followed by: "simple-mfd", "syscon"
 - reg: Should contain registers location and length
 - #address-cells: has to be 1
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
