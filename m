Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 910FD12CAE5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 21:46:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nPxMvYP7ZgtKTEp2SIbBAs/D3i+XudDuzDUrBnmsz4E=; b=Xl+M7WsOhEMwrs
	sWcMB+LBu0ThyC89wOH8tpCtio4crL5FU9AG44mI6eyTJ1YyoQykneeiAShaOWcn5u7g3UtbeOnh7
	Cz83K2S0t/81O/iZg7o/EYxnPbtsw8O1uksSgkGQEKpiwPjX0t8uZmVNNUJothTFLz/4jTkdhvl+R
	Zbl7mxjwvJiAqu/pKiteNVXsqI023ljD4uHcb9iwpKbiSr07xzuLm3OwPKqmWLpjgiq5tgcayTBNh
	gc3D+03ifaL0eyTDMBfOEd58TKvXDwqD00VIM7T64/Urd6khEeHLbOFCfvwEclWi7q8qXsHdNJso9
	+DbEBy6ur9lTcKemC3uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilfRs-0001rF-Vx; Sun, 29 Dec 2019 20:46:05 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilfR1-0000nq-G9
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 20:45:14 +0000
X-Originating-IP: 92.184.100.83
Received: from localhost (unknown [92.184.100.83])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id E5FB6240002;
 Sun, 29 Dec 2019 20:45:02 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-rtc@vger.kernel.org
Subject: [PATCH 3/9] rtc: at91rm9200: add sama5d4 and sama5d2 compatibles
Date: Sun, 29 Dec 2019 21:44:15 +0100
Message-Id: <20191229204421.337612-3-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191229204421.337612-1-alexandre.belloni@bootlin.com>
References: <20191229204421.337612-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_124511_729299_F376DE77 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Eugen.Hristev@microchip.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Both the sama5d4 and sama5d2 RTCs have more features than the previous
RTCs, add a compatible string for them.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 .../devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml       | 2 ++
 drivers/rtc/rtc-at91rm9200.c                                | 6 ++++++
 2 files changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml b/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml
index 55bd87e884d3..0c642e1c855b 100644
--- a/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml
+++ b/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml
@@ -17,6 +17,8 @@ properties:
     enum:
       - atmel,at91rm9200-rtc
       - atmel,at91sam9x5-rtc
+      - atmel,sama5d4-rtc
+      - atmel,sama5d2-rtc
 
   reg:
     maxItems: 1
diff --git a/drivers/rtc/rtc-at91rm9200.c b/drivers/rtc/rtc-at91rm9200.c
index 89d91ecd8ccf..bda8e009076f 100644
--- a/drivers/rtc/rtc-at91rm9200.c
+++ b/drivers/rtc/rtc-at91rm9200.c
@@ -312,6 +312,12 @@ static const struct of_device_id at91_rtc_dt_ids[] = {
 	}, {
 		.compatible = "atmel,at91sam9x5-rtc",
 		.data = &at91sam9x5_config,
+	}, {
+		.compatible = "atmel,sama5d4-rtc",
+		.data = &at91rm9200_config,
+	}, {
+		.compatible = "atmel,sama5d2-rtc",
+		.data = &at91rm9200_config,
 	}, {
 		/* sentinel */
 	}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
