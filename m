Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF98D163DCC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:37:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PyNE1wyzUtyc3JV29yPxcL03NmdBXZjlEXkgijyG0Co=; b=LzqahtJeqRXe5P
	uvJCOFc/667sD8pxKmz+AW/S8Z6GKAsS0GMLLUGYgh/k837RSejc5hfWGistML1HbxhWpoH+BlJsd
	xVWKLx69W74YRkez5v/YgQnrKIuE/1lHvoOCo2KUCOMrNvVHWT5RNY3fTpJ0ZDA6C1FWGHp+AI7tz
	PkwlDUf2/vsGE7KrIrU0f3vXgic8x/R714kaPTmImaiNsOT0TTbsfHWX8wWAn9wsCwNJnceIFfCcg
	hoEpojbA2kNQ/dyq07EmQzsqeeQ/cyVnp6vEQsqlCct5SH9E0o4hogU4XWh+MF/yBktseCLih6+dd
	PgfXYtM/rpsYENTteGRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Juv-0002RQ-8B; Wed, 19 Feb 2020 07:37:09 +0000
Received: from [167.172.186.51] (helo=shell.v3.sk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Jrx-0007OK-45
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:34:08 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 13665E007A;
 Wed, 19 Feb 2020 07:34:17 +0000 (UTC)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id mWa3L8iDaQ_k; Wed, 19 Feb 2020 07:34:13 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 8B236E0052;
 Wed, 19 Feb 2020 07:34:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id P04ULaU_ck5M; Wed, 19 Feb 2020 07:34:13 +0000 (UTC)
Received: from furthur.lan (unknown [109.183.109.54])
 by zimbra.v3.sk (Postfix) with ESMTPSA id F18E1E0031;
 Wed, 19 Feb 2020 07:34:12 +0000 (UTC)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 01/10] clk: mmp2: Remove a unused prototype
Date: Wed, 19 Feb 2020 08:33:44 +0100
Message-Id: <20200219073353.184336-2-lkundrak@v3.sk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219073353.184336-1-lkundrak@v3.sk>
References: <20200219073353.184336-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_233405_400440_67DA00F8 
X-CRM114-Status: UNSURE (   6.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no mmp_clk_register_pll2() routine.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 drivers/clk/mmp/clk.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/clk/mmp/clk.h b/drivers/clk/mmp/clk.h
index 70bb73257647a..5bcbced3f458e 100644
--- a/drivers/clk/mmp/clk.h
+++ b/drivers/clk/mmp/clk.h
@@ -124,9 +124,6 @@ extern struct clk *mmp_clk_register_gate(struct device *dev, const char *name,
 			u32 val_disable, unsigned int gate_flags,
 			spinlock_t *lock);
 
-
-extern struct clk *mmp_clk_register_pll2(const char *name,
-		const char *parent_name, unsigned long flags);
 extern struct clk *mmp_clk_register_apbc(const char *name,
 		const char *parent_name, void __iomem *base,
 		unsigned int delay, unsigned int apbc_flags, spinlock_t *lock);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
