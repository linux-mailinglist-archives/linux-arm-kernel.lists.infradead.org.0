Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAC31F50CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdNe5Vnzn7K67K8FalPlGK7FOYM/oGWtC290PAN/54k=; b=WYfJn65zGfgJx7
	SM3alSqpP1lCXRXj+Anw951TY3lGYdVk17FKl12ed2yHtXm2z6ZS1J51wYcGjAVuND/stSg+iqfY5
	jhUguOcQ4wBOvi2cPWPzCjCx3EBfq5WBoXSY780nXyzpZin80ieQoh20lHHqaItowGpRtY/VwrUjY
	Tfzw4Aj5miTauOaNbMNxFvBQ1mLDUyFsP4Ed/480pro64QCV8CGRYv5ApmgXW3UihEolR+dkriyp2
	tMZGFUumyPX6iOarzKVT9RypGd6xcquErg1PPBdNe1fg1v04JkfXpl7YBPZT6dlINL77hZJbo9osF
	5T5Y5zm3T9c9GSwan44A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiwgn-0000qe-04; Wed, 10 Jun 2020 09:06:29 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiwgF-0000Qt-1B
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:05:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591779954; x=1623315954;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=t6wcLCkFONrUeQcZj7cIgekzRPWxM2ExMIxkdhfwFKk=;
 b=fXBsHY5O9TWl14diWy4IGOnFP4W0m3lqAk6CCr770W3nwJ+9c8EJS1nX
 S2ZI9vodedu8X4SvS0WDyZF9TmUW1yqNyrfT5tchdW68J6eqnknYlvF4z
 5q3agm5/r/cFDMswg1vLQZYzawTDMI5uNy1K2aaxFx2gf3AVkmom9ee+b
 e0pIUsFzdCGGSfWpM72kc6vsbGJdr/WiSynEWsE0sAa+oTwCttBZflFuF
 VoVtwfDmW6ap5NCATf2FdsSMnVe+U0Wx7DT5h1vAz6bUxIWPrwMa++CY8
 tfO+uZckZtTL3nzZzwOas5PADV0WWYL3QljlJAFir7kvwrCKek9lxpo/Z g==;
IronPort-SDR: yV7vm0cNTOuE4Z9ccNbQJ/p+I8zCADTrg4r3LcGNtKoCQ8HVkMEGEftRlp5iuoiDUmo7PP3zCw
 VjdD6HByS/f+Dejyq3llWrOcD6V47ROj+FSDYZZSXJjdBymRCn7svBwcTjiPfyvstpqqaw3tCg
 Qmi1+C9bKE9DAcgRHIevi2jYR8dvsdG+5OKpwWgv2g/0cSujiqE3Pge29jfMyVaFFyxrCAP3oh
 r5B99AQhm79rgtBugDQik8BtB1Qz9SB/LXkHEq6EBL8gUFCkdLjp2ldV9tGEEN+rOigKRAxLkh
 x1o=
X-IronPort-AV: E=Sophos;i="5.73,495,1583218800"; d="scan'208";a="82953248"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Jun 2020 02:05:54 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Wed, 10 Jun 2020 02:05:52 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1847.3 via Frontend Transport; Wed, 10 Jun 2020 02:05:48 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <a.zummo@towertech.it>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>, <nicolas.ferre@microchip.com>,
 <ludovic.desroches@microchip.com>, <tglx@linutronix.de>,
 <jason@lakedaemon.net>, <maz@kernel.org>
Subject: [PATCH v2 2/3] dt-bindings: rtc: add microchip,sam9x60-rtt
Date: Wed, 10 Jun 2020 12:05:35 +0300
Message-ID: <1591779936-18577-3-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591779936-18577-1-git-send-email-claudiu.beznea@microchip.com>
References: <1591779936-18577-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_020555_138524_DC41BE80 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.147.91 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt b/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt
index 6ae79d1843f3..3f0e2a5950eb 100644
--- a/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt
+++ b/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt
@@ -1,7 +1,9 @@
 Atmel AT91SAM9260 Real Time Timer
 
 Required properties:
-- compatible: should be: "atmel,at91sam9260-rtt"
+- compatible: should be one of the following:
+	- "atmel,at91sam9260-rtt"
+	- "microchip,sam9x60-rtt", "atmel,at91sam9260-rtt"
 - reg: should encode the memory region of the RTT controller
 - interrupts: rtt alarm/event interrupt
 - clocks: should contain the 32 KHz slow clk that will drive the RTT block.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
