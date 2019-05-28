Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 419002BF66
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 08:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVADm4EIcebhyc7w5tpFRzDr39qixvjnIphIYw3oiz0=; b=eqW/sRK4LNMZSC
	wUlhtSHoh2M7ryeJzarSvcMUMOC1UKHmn5PMh3Al9+UkzqrVz5nK9lplYOnttrXIhtEEpk4OsG3hg
	+ULDGOeYX/SW2fGVHXRRGTfSyBgO+APZ4H9jTk28A7vnJMFUiKUC8q2IpXu0kp0dXARfxjatza9J8
	z9K7iLZPKSlR3Zwd7nk8y/WEEBGdsWCq/xnMgsC+6D1ZYiGNTlSPuGE919l1+BNvpU/FaVC0UwhbY
	63PRHGbU1S+fiKUBY72wSqDI5qvmRTwvXInZKLBLwybkanvn+Vkj8ayTLMN454765M8uhsWOuhs6O
	uX1WSpvVjMMJcG4KQ1UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVVYx-0000Ar-Tg; Tue, 28 May 2019 06:26:19 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVVXF-0005yA-SV
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 06:24:36 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id A9F2B8123;
 Tue, 28 May 2019 06:24:52 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 06/13] bus: ti-sysc: Handle clockactivity for enable and
 disable
Date: Mon, 27 May 2019 23:24:07 -0700
Message-Id: <20190528062414.27192-7-tony@atomide.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190528062414.27192-1-tony@atomide.com>
References: <20190528062414.27192-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_232434_432495_ADC761E3 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, devicetree@vger.kernel.org,
 Faiz Abbas <faiz_abbas@ti.com>, Keerthy <j-keerthy@ti.com>,
 Suman Anna <s-anna@ti.com>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Modules with clockactivity need it configured during enable.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -845,6 +845,7 @@ static void sysc_show_registers(struct sysc *ddata)
 }
 
 #define SYSC_IDLE_MASK	(SYSC_NR_IDLEMODES - 1)
+#define SYSC_CLOCACT_ICK	2
 
 /* Caller needs to manage sysc_clkdm_deny_idle() and sysc_clkdm_allow_idle() */
 static int sysc_enable_module(struct device *dev)
@@ -860,6 +861,12 @@ static int sysc_enable_module(struct device *dev)
 	regbits = ddata->cap->regbits;
 	reg = sysc_read(ddata, ddata->offsets[SYSC_SYSCONFIG]);
 
+	/* Set CLOCKACTIVITY, we only use it for ick */
+	if (regbits->clkact_shift >= 0 &&
+	    (ddata->cfg.quirks & SYSC_QUIRK_USE_CLOCKACT ||
+	     ddata->cfg.sysc_val & BIT(regbits->clkact_shift)))
+		reg |= SYSC_CLOCACT_ICK << regbits->clkact_shift;
+
 	/* Set SIDLE mode */
 	idlemodes = ddata->cfg.sidlemodes;
 	if (!idlemodes || regbits->sidle_shift < 0)
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
