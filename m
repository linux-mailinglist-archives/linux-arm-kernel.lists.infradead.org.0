Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4511A487D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 18:29:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BmT0egga3mQp0lXrEiqLiuyYE8/z4nWCtURbJ5mX+rE=; b=L7wY/hjlIrsGH4
	TuAsYvXQlru+ib/kg+P5Ve1w4cZ0B6O5CDC3ewNsC/L//MoxLmK8s9T9rIKCVLbVRxmcwGHPmyUdx
	PgdUJYo95OrUKMOmVPQDTmeCxKEXmEL88DFGZ1/8sNNi2Toy9SS/02hlBzMcMuewaEW2oHnHNcheA
	oCUfX/zLHVuSaSFx4zWVK5pwbh8tgDqm44N/O70gCBTh3F9UN4hpJa2IIkDhLBGRvOU0tJN+jDYBj
	JDFPskPn5G7IymZPLjoOnzoy2pCdDxnngU1UNEyTc89WdncuqEN5j+EUjh2mlikS2pTJ95RM9XmhR
	KSbQTvLQ+egxh41kw83Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMwWs-0005Pm-Py; Fri, 10 Apr 2020 16:29:18 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMwVZ-0004DA-9J
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 16:27:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586536076; x=1618072076;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=Eo6p7pz7SWCokkfrt5eRPXSs0G7FQfJNhTJCV7p33Xs=;
 b=FGuRL6FGeeFtge4TB3Kgx9yiUfk0pYsnDGprTm7WdQh6T6yU/+1fo4M2
 poN/LXL39fj86hrozUAqNWZ4BoZQWYHkTmqWl1wZjROCx9swvXx9sjit5
 Cs6HHBjkXZTQGfvFLDvDEHwYOvTpNxOkazIOis652MMnITYNfh2c+GGMN
 WmmAHvV6rqcmvdCTcDBoTvh1ZHc6XbA0TmQenw0BQfrDItq49tE+2z29E
 SEI7emMppG43flMoEU/j0Bb6A1Jhb99z+4lOsJ3TkkmVBxCFbQrbdrbl4
 5p4Mv4CAHaw8a3rbNb8mVyv2dwyivvu94HtayP8oH8Tn5XEsLCfy8dyvk w==;
IronPort-SDR: 6AjG0RliC4W9S/dyMTnwaFK7Z5jnQrNDSajrnRVi9WQ8FDMQwgDLEfEQyQfYdt/XDsiKYVDPX2
 PCJ+pboexCDMyPhDPUk+mzAWX/KPZgyYzRBRRJwRiQM0dziGw9l8Y5BRXWUfkMTqf9FIXsGHNJ
 A+VmcUd5+RTxtIK21lubyhRLqL4HkweQmOtAv+pA4ojIWulof504n7U9yuerGxH+Z6+xJfiXzA
 P42OQnNy2pPHlp4j/yO3rqGBZBMHt7gLBUAOmgeBSu1nrD5optfq6bsrhxk5plyq3d84ibci03
 89E=
X-IronPort-AV: E=Sophos;i="5.72,367,1580799600"; d="scan'208";a="75498407"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Apr 2020 09:27:51 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Apr 2020 09:27:51 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 10 Apr 2020 09:27:42 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <a.zummo@towertech.it>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <nicolas.ferre@microchip.com>,
 <ludovic.desroches@microchip.com>, <tglx@linutronix.de>,
 <jason@lakedaemon.net>, <maz@kernel.org>
Subject: [PATCH 5/5] rtc: at91sam9: add microchip,sam9x60-rtt
Date: Fri, 10 Apr 2020 19:26:59 +0300
Message-ID: <1586536019-12348-6-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
References: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_092757_361791_15E33ECD 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add microchip,sam9x60-rtt to compatible list.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt b/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt
index 6ae79d1843f3..b2f913ff6c69 100644
--- a/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt
+++ b/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt
@@ -1,7 +1,7 @@
 Atmel AT91SAM9260 Real Time Timer
 
 Required properties:
-- compatible: should be: "atmel,at91sam9260-rtt"
+- compatible: should be: "atmel,at91sam9260-rtt" or "microchip,sam9x60-rtt"
 - reg: should encode the memory region of the RTT controller
 - interrupts: rtt alarm/event interrupt
 - clocks: should contain the 32 KHz slow clk that will drive the RTT block.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
