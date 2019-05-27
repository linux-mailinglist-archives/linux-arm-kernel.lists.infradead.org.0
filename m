Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DA02B4A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:15:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qlp9U9qAeup1EnxDfRQ0jh3RzTt/LsF8RB1StDP5UPs=; b=DKJOWlwkpszq39
	adoMJn2Ga87X8EojN/djq8arxFI/WbzuoAwU8bJRRAgauigQ1lY1GMocXMKha68jwDaIxoSwFx242
	bgYmC5vKOn94tC0mpQMw8Jw8vcvNgqVO5Hy4bQcUZX0yKxfnzHssrjFhk0Qncql+K7Px6eayDAlun
	pDmTqMzzHR+rDD4rWUQTiTTsmOsQykHNrTYYSmQew9BmOybLoCCFWnw7zFcA0ggZdonQ13o30JHGB
	MGvK0HwGVuaBt4Di8xvMk2azgCd8EO2ad6wGlTDnxFC8K5ZEoaGQWVLfXCHODfFnbqLEIbMX2nv4w
	JZ4xs0JuKJBJcLQ0YSGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEXB-0004It-Gk; Mon, 27 May 2019 12:15:21 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEW9-000207-A1
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:14:20 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id E09048123;
 Mon, 27 May 2019 12:14:35 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 04/12] bus: ti-sysc: Enable interconnect target module
 autoidle bit on enable
Date: Mon, 27 May 2019 05:13:40 -0700
Message-Id: <20190527121348.45251-5-tony@atomide.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527121348.45251-1-tony@atomide.com>
References: <20190527121348.45251-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_051418_114954_A2FEA5D4 
X-CRM114-Status: GOOD (  10.86  )
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

For interconnect target modules with autoidle bit wired, we need to manage
it for enable and disable.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -879,7 +879,7 @@ static int sysc_enable_module(struct device *dev)
 	/* Set MIDLE mode */
 	idlemodes = ddata->cfg.midlemodes;
 	if (!idlemodes || regbits->midle_shift < 0)
-		return 0;
+		goto set_autoidle;
 
 	best_mode = fls(ddata->cfg.midlemodes) - 1;
 	if (best_mode > SYSC_IDLE_MASK) {
@@ -891,6 +891,14 @@ static int sysc_enable_module(struct device *dev)
 	reg |= best_mode << regbits->midle_shift;
 	sysc_write(ddata, ddata->offsets[SYSC_SYSCONFIG], reg);
 
+set_autoidle:
+	/* Autoidle bit must enabled separately if available */
+	if (regbits->autoidle_shift >= 0 &&
+	    ddata->cfg.sysc_val & BIT(regbits->autoidle_shift)) {
+		reg |= 1 << regbits->autoidle_shift;
+		sysc_write(ddata, ddata->offsets[SYSC_SYSCONFIG], reg);
+	}
+
 	return 0;
 }
 
@@ -952,6 +960,9 @@ static int sysc_disable_module(struct device *dev)
 
 	reg &= ~(SYSC_IDLE_MASK << regbits->sidle_shift);
 	reg |= best_mode << regbits->sidle_shift;
+	if (regbits->autoidle_shift >= 0 &&
+	    ddata->cfg.sysc_val & BIT(regbits->autoidle_shift))
+		reg |= 1 << regbits->autoidle_shift;
 	sysc_write(ddata, ddata->offsets[SYSC_SYSCONFIG], reg);
 
 	return 0;
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
