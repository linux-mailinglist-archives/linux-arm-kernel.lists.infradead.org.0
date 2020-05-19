Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 899CA1D9239
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 10:38:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VEN2WUFLFS+620Idwo5wEKYZBYb5llke8nDuDGIFZ0E=; b=FxhQNIgd1Hf+2B
	9SgwM02AYOpoAdT3f9YWi/5Bl3ZNLRa5XFyHUz1wLW/6UpWvLZUjXU/0g92kwgoVJlCyDxeQo05Hb
	BsXBdRoNxTkiYD0tcSco134PSAzGnlER+r2N25SHCeKZb4k5j7CGbwDRK5I+k4xRwwMNIDSCWotPU
	tpP81yxvQ3N2Jm9RjZ8vSUYJ80nrMb85yqhn6TNh5165M6VVDDq5OfUsvTGh49rK+X0uh7zDePrGy
	dDeyd7Y9mehr+xBOjplN8ghb/vw0KFPnYyllLMTot1lCS1IZ1adFz176dwnkRvgcqUvXJua8gWAzv
	drT3mdJSDf6d/WNLoniA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaxlp-0000ue-5h; Tue, 19 May 2020 08:38:41 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaxkl-0008DM-Pb
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 08:37:38 +0000
Received: from localhost (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 847D620000D;
 Tue, 19 May 2020 08:37:22 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 1/5] ARM: at91: add atmel tcb capabilities
Date: Tue, 19 May 2020 10:37:12 +0200
Message-Id: <20200519083716.938384-2-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200519083716.938384-1-kamel.bouhara@bootlin.com>
References: <20200519083716.938384-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_013736_036063_789AECAA 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
 include/soc/at91/atmel_tcb.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/soc/at91/atmel_tcb.h b/include/soc/at91/atmel_tcb.h
index c3c7200ce151..1d7071dc0bca 100644
--- a/include/soc/at91/atmel_tcb.h
+++ b/include/soc/at91/atmel_tcb.h
@@ -36,9 +36,14 @@ struct clk;
 /**
  * struct atmel_tcb_config - SoC data for a Timer/Counter Block
  * @counter_width: size in bits of a timer counter register
+ * @has_gclk: boolean indicating if a timer counter has a generic clock
+ * @has_qdec: boolean indicating if a timer counter has a quadrature
+ * decoder.
  */
 struct atmel_tcb_config {
 	size_t	counter_width;
+	bool    has_gclk;
+	bool    has_qdec;
 };
 
 /**
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
