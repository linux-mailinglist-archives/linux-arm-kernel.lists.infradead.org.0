Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB2519F95C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 17:55:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YV8zxb50MXvbJes/CD5+c3BMEEFMRj2fioVO+ZGHs5A=; b=V3Fep1HH+xpf0e
	jrk8oyV2xtA/fRX0r9Ge+sROJRzfMKKt4MVuwphZCH5dc+tZEKxAZfZey1B56iL7fxlskjDFStvAh
	KNxt/m/qMdaxj3ioCrpqKALzAOLr7lcblaRR1TEZuM6xRZFwRaw7OzELVsF5ara+0Ul4QN/BUaPty
	4tploKq+PnpjJYwpoqbzQUIJDHXcfaUC7gV+erz3IF7Bq1kgbHS1m1bX/YjpdwOM33VGbyM9A4LZY
	G79w7ldFRYSF3QpBWBdsmk4BwLo7KkRM5JHM4few/5MciD4SNe/cmRYILNLa2WqhsDGkeFrPL7/Se
	q3Zmn2F3m3oDIcci5dQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLU5Q-0004Bc-Lr; Mon, 06 Apr 2020 15:54:56 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLU4q-0003p0-C9
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 15:54:24 +0000
X-Originating-IP: 78.193.40.249
Received: from localhost (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id F14D5FF805;
 Mon,  6 Apr 2020 15:54:10 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] ARM: at91: add atmel tcb capabilities
Date: Mon,  6 Apr 2020 17:53:18 +0200
Message-Id: <20200406155320.1291701-2-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200406155320.1291701-1-kamel.bouhara@bootlin.com>
References: <20200406155320.1291701-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_085421_721452_837BD0FF 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some atmel socs have extra tcb capabilities that allow using a generic
clock source or enabling a quadrature decoder.

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---
 include/soc/at91/atmel_tcb.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/soc/at91/atmel_tcb.h b/include/soc/at91/atmel_tcb.h
index fbf5474f4484..6b9c9bec982e 100644
--- a/include/soc/at91/atmel_tcb.h
+++ b/include/soc/at91/atmel_tcb.h
@@ -39,7 +39,8 @@ struct clk;
  */
 struct atmel_tcb_config {
 	size_t	counter_width;
-	unsigned int has_gclk:1;
+	bool	has_gclk;
+	bool	has_qdec;
 };
 
 /**
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
