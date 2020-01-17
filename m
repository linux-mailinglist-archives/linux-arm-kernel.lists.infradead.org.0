Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D9E140965
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 12:59:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SDqVso5sdoXGX/BUpqP0ZTvZ+JVV8Xn28Tmo51uCPm8=; b=j0wJ8OJIBdKMpf
	+r4+F+eLStl7/IleQ+IsdUcf7c5aKWpu334GWo277i+IQX3tbuUyE56JspP/A2ia0112CCCiCKbvJ
	3dr/uiSOW0W8Ti8GXApzI2QGEFn59gqJmAYMtc3cnR2MuxpXaOqXeQFq5nQZtJ/2E1vpC+ECCYti1
	tqrMeE+R5h2CJfOZyHNUB7tAAhP0V+7H2Go+j+ExdQ/fLIH6eGsFKL6jc/Isc7msHf0eTJ9tkKxnr
	3wcVNoIx7f3wd2DsJW5Jal8VrDUOEBcN9e/Ghrqu3Ewmr09AwcssInsOdYL/cZeVk4ZoViv3HJYzJ
	0JpXFV6HKHYdqgZI/KCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isQHn-0004b4-QF; Fri, 17 Jan 2020 11:59:35 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isQGx-00045m-D1
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 11:58:47 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: yc1ayAgkLGo9iy/xu8fjy78eHGoqCRKIHuSEbluMLdLmvA9VpukdSsXV7JB/ySxTPvRtFNKMiL
 6qBgXmIRNB62mNlaFY2N3p2neo1f4Hd9DQXyQo+S0H26s++9WYdhEv3nr1AAgSxkjDvdPn9pJg
 u3Nu7IzSqiOFT/Q9+m7rMZwwNyjBm+lRULJb1KJ42aTRRR7ij+WJjIgmmOgoJqHLSr2uunufH+
 mHRvZPAbNZ4oTW4ZgHMRZXixw2Lh/NcDxCas7+pq8JQV15thqQyCujcxwZf3WmFv9PE6qk1OEW
 wqY=
X-IronPort-AV: E=Sophos;i="5.70,330,1574146800"; d="scan'208";a="61130333"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Jan 2020 04:58:42 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 17 Jan 2020 04:58:42 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 17 Jan 2020 04:58:39 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <radu_nicolae.pirea@upb.ro>, <richard.genoud@gmail.com>,
 <lee.jones@linaro.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>
Subject: [PATCH v5 2/2] dt-bindings: atmel-usart: add microchip, sam9x60-{usart,
 dbgu}
Date: Fri, 17 Jan 2020 13:58:29 +0200
Message-ID: <1579262309-6542-3-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579262309-6542-1-git-send-email-claudiu.beznea@microchip.com>
References: <1579262309-6542-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_035843_472856_B12D6B6B 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add microchip,sam9x60-usart and add microchip,sam9x60-dbgu to DT
bindings documentation.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
---

Hi Lee,

Between version 3 (that you Acked-for-MFD-by) and this one, there is a
new line introduced in this patch:

+       - "microchip,sam9x60-usart"

I kept your Acked-for-MFD-by in this version (with the extra line).
Tell me if you consider otherwise.

Thank you,
Claudiu Beznea

 Documentation/devicetree/bindings/mfd/atmel-usart.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/atmel-usart.txt b/Documentation/devicetree/bindings/mfd/atmel-usart.txt
index 614a14b5d205..a09133066aff 100644
--- a/Documentation/devicetree/bindings/mfd/atmel-usart.txt
+++ b/Documentation/devicetree/bindings/mfd/atmel-usart.txt
@@ -4,8 +4,10 @@ Required properties for USART:
 - compatible: Should be one of the following:
 	- "atmel,at91rm9200-usart"
 	- "atmel,at91sam9260-usart"
+	- "microchip,sam9x60-usart"
 	- "atmel,at91rm9200-dbgu", "atmel,at91rm9200-usart"
 	- "atmel,at91sam9260-dbgu", "atmel,at91sam9260-usart"
+	- "microchip,sam9x60-dbgu", "microchip,sam9x60-usart"
 - reg: Should contain registers location and length
 - interrupts: Should contain interrupt
 - clock-names: tuple listing input clock names.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
