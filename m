Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0371F50CC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:06:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tp5WoqIxpGNABlzUYryzj2oRXsKhZ3ateDIBMOWliZI=; b=rURssw0cV5QyTl
	xspJbd89o/k1psRnlJLjK0aAXVKYlb1iKIUSZBi/Dt79/q3xcjFMjUEOlcS2WDbXnEXNGVFO7Y5u2
	UZdXXN0PE+psM/+Q5HuhQKL68C8kOZ1f73mOTGIyr4ZTgGK07s2Oi/2gQxUzGgsvi9obj1VkGfUU2
	SzzAnGDAPtyy2LJ1/lb9NLiEyRP1ce1zShFADx0A1zpJX9kt7oQMPuDbeUs4bde49FG0BoBzFzAfL
	22lOPfrNd8JVx4ti/lJTVrNQ68bXpZjWfQnvVc4PXR5buKY4ZxQ5HAGBAH1d5AuK4ZRM4itEiqImK
	LDCbqpklkySD1gYs9fFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiwgW-0000aJ-Ug; Wed, 10 Jun 2020 09:06:12 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiwgA-0000Rm-Ln
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:05:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591779950; x=1623315950;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=nBJu57ggmxjsge10aXmvMnYCUOcsP5lcuOm9kP4kso0=;
 b=wUJiuW9rCNLeQtQsNWJcZX/X7iiEe82WRRgmVKUBmI0Yy7v/Ut1hXXRc
 TM0LYbD7jwiA7wda4I5qi5DVngsIEVguPlvJL07z/SfTvw+wXxlXkVrMm
 yOc/NCALnSpLwJ54iGghTjtFzPrwhDlme1h4J0+SRwtxmwP/3PkgAMTMr
 uGKoHkkG6hLTnKBcKOWAZ7qeMRk7AqjCwwCmDDM+66YIselVnFB0o5dtg
 Yvl80Ibn7SkMQkCpse17HUMCGnB9A6fjkMGXCuGOFNLVvYhfvfH0UifiU
 TyY7jgYaxeHOW4AQB6U3TEVVFzg9YPqBAkrJ049pXwxQXnBggOxESIMSs w==;
IronPort-SDR: 7N0GTyrSg0FHNj/beoY0QAmXuEv38qYQffltHu7o5AfEoPtEjOkHUruGL1CLz4DXttCehRBl7F
 JTyfDv6W2xgBeil5YBf6HhnL8d0JKWPLbda23UKLLO5WSdIixtOxYgiLFUWPIHdiZ/zj4yHpdF
 DU52hSdDjr8BdkohuXhZmhfou4rJrbLteLGhdzbi4RtV2SsyOG7bGO0VuPk/G1s94a2nHbgoWp
 aiIVSfXNfHjzjJmFYgEH8dL7HTup66gyxUT+GdSW8l3GIdOfiOfJbyGYZ0eSoyC6mDx7e09pKg
 uc0=
X-IronPort-AV: E=Sophos;i="5.73,495,1583218800"; d="scan'208";a="15232691"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Jun 2020 02:05:48 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Wed, 10 Jun 2020 02:05:48 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1847.3 via Frontend Transport; Wed, 10 Jun 2020 02:05:43 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <a.zummo@towertech.it>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>, <nicolas.ferre@microchip.com>,
 <ludovic.desroches@microchip.com>, <tglx@linutronix.de>,
 <jason@lakedaemon.net>, <maz@kernel.org>
Subject: [PATCH v2 1/3] irqchip/atmel-aic5: add support for sam9x60 rtt fixup
Date: Wed, 10 Jun 2020 12:05:34 +0300
Message-ID: <1591779936-18577-2-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591779936-18577-1-git-send-email-claudiu.beznea@microchip.com>
References: <1591779936-18577-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_020550_774881_1B657C22 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.71.154.253 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Add support for SAM9X60 RTT fixup.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/irqchip/irq-atmel-aic5.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-atmel-aic5.c b/drivers/irqchip/irq-atmel-aic5.c
index fc1b3a9cdafc..fb4ad2aaa727 100644
--- a/drivers/irqchip/irq-atmel-aic5.c
+++ b/drivers/irqchip/irq-atmel-aic5.c
@@ -310,10 +310,16 @@ static void __init sama5d3_aic_irq_fixup(void)
 	aic_common_rtc_irq_fixup();
 }
 
+static void __init sam9x60_aic_irq_fixup(void)
+{
+	aic_common_rtc_irq_fixup();
+	aic_common_rtt_irq_fixup();
+}
+
 static const struct of_device_id aic5_irq_fixups[] __initconst = {
 	{ .compatible = "atmel,sama5d3", .data = sama5d3_aic_irq_fixup },
 	{ .compatible = "atmel,sama5d4", .data = sama5d3_aic_irq_fixup },
-	{ .compatible = "microchip,sam9x60", .data = sama5d3_aic_irq_fixup },
+	{ .compatible = "microchip,sam9x60", .data = sam9x60_aic_irq_fixup },
 	{ /* sentinel */ },
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
