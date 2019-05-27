Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4A92B4B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PZZL36j/Pw+7CeFkv12URkVS55O21iy21NIFLf0MPik=; b=JzJq+EgkxV6rzU
	QgcQECC2SLKt8zFBLxOn+j12wNyZZaT2AiJvHavLyIU7vKPQBSa8k+L2g2/+lC3K7PI/pNGm68rIj
	k5VHN1PcEz7HU14NiCCJ4KgjQdWFDSSR0ITsHjp6pO3P1169a7R9IyS9XihHPndcCbzBkAOEJS097
	sRLsFbYjI3wk7ncX3+BxfIdRc6uojDcE1zA9d5o+MtA3ORDNbS4FfQUA72uXhAfhkg1Rej5U4XiS6
	1+a8lH4GbpvBuZOKQ/u2h+sOSQle+AeDBrrrZSmf1X7OLasJg/M2o3NkFT5Ai7sQBO+IpxdMWMCO8
	2/O3eUts4M18Ow5uIsEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEXW-0004fc-MK; Mon, 27 May 2019 12:15:42 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEWD-00026V-HK
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:14:23 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 1EB3080F3;
 Mon, 27 May 2019 12:14:40 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 06/12] bus: ti-sysc: Handle swsup idle mode quirks
Date: Mon, 27 May 2019 05:13:42 -0700
Message-Id: <20190527121348.45251-7-tony@atomide.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527121348.45251-1-tony@atomide.com>
References: <20190527121348.45251-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_051421_745898_FF79D129 
X-CRM114-Status: GOOD (  11.31  )
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

Some modules have idlemodes wired, but not completely functional. We have
quirks for SWSUP_SIDLE and SWSUP_SIDLE_ACT to manage interconnect target
modules without hardware support, but we've been only using them so far
in legacy mode. Let's add support for SWSUP quirks in non-legacy mode too.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 25 +++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -872,10 +872,15 @@ static int sysc_enable_module(struct device *dev)
 	if (!idlemodes || regbits->sidle_shift < 0)
 		goto set_midle;
 
-	best_mode = fls(ddata->cfg.sidlemodes) - 1;
-	if (best_mode > SYSC_IDLE_MASK) {
-		dev_err(dev, "%s: invalid sidlemode\n", __func__);
-		return -EINVAL;
+	if (ddata->cfg.quirks & (SYSC_QUIRK_SWSUP_SIDLE |
+				 SYSC_QUIRK_SWSUP_SIDLE_ACT)) {
+		best_mode = SYSC_IDLE_NO;
+	} else {
+		best_mode = fls(ddata->cfg.sidlemodes) - 1;
+		if (best_mode > SYSC_IDLE_MASK) {
+			dev_err(dev, "%s: invalid sidlemode\n", __func__);
+			return -EINVAL;
+		}
 	}
 
 	reg &= ~(SYSC_IDLE_MASK << regbits->sidle_shift);
@@ -959,10 +964,14 @@ static int sysc_disable_module(struct device *dev)
 	if (!idlemodes || regbits->sidle_shift < 0)
 		return 0;
 
-	ret = sysc_best_idle_mode(idlemodes, &best_mode);
-	if (ret) {
-		dev_err(dev, "%s: invalid sidlemode\n", __func__);
-		return ret;
+	if (ddata->cfg.quirks & SYSC_QUIRK_SWSUP_SIDLE) {
+		best_mode = SYSC_IDLE_FORCE;
+	} else {
+		ret = sysc_best_idle_mode(idlemodes, &best_mode);
+		if (ret) {
+			dev_err(dev, "%s: invalid sidlemode\n", __func__);
+			return ret;
+		}
 	}
 
 	reg &= ~(SYSC_IDLE_MASK << regbits->sidle_shift);
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
