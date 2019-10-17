Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1DDDAB3D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 13:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0dT0sZS/pUUKDeUv4uEYaiQzZCIaCeYYawRaKybh4QY=; b=qWIWMfvCrQ6fOc
	5a6X/q11ozUemqEC5jOdqhLthR1XIAL9E2kHwWwSRj0bRm8Zw9hFOYKKAFxnuEYw3UG7nH2SekQkX
	QP/6QYHdJZfaGQjKuas2C2lu70iSWH/wJ0uOC6eZ44LhrJndeMq2qp6OUsYiw3OornhHXK3JEGx4u
	DowTrtDNgMb918ZmM7Ck2rH5H1ezYjP4dXyfpI04t5vr97xlGbZr53KOGuGaKNL9zVbChPCCD1EZ9
	ys51KPjwzBstjPJWIymGBsbAlBIMN3InNllrHwvBGS5ZM7P5+GTik6+/L8YvA3SXZ9YSET4uvRngD
	CZ6V3oWYpJQ9kdVJtqww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL3yz-0003lH-VI; Thu, 17 Oct 2019 11:30:18 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL3ym-0003Ev-50
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 11:30:05 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iL3ye-0003Qk-Ic; Thu, 17 Oct 2019 12:29:56 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iL3ye-00048S-4s; Thu, 17 Oct 2019 12:29:56 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] irqchip/gic-v3-its: fix u64 to __le64 warnings
Date: Thu, 17 Oct 2019 12:29:55 +0100
Message-Id: <20191017112955.15853-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_043004_350020_86EAA885 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The its_cmd_block struct can either have u64 or __le64
data in it, so make a anonymous union to remove the
sparse warnings when converting to/from these.

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Marc Zyngier <maz@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/irqchip/irq-gic-v3-its.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 62e54f1a248b..f2b585905ba0 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -289,7 +289,10 @@ struct its_cmd_desc {
  * The ITS command block, which is what the ITS actually parses.
  */
 struct its_cmd_block {
-	u64	raw_cmd[4];
+	union {
+		u64	raw_cmd[4];
+		__le64	raw_cmd_le[4];
+	};
 };
 
 #define ITS_CMD_QUEUE_SZ		SZ_64K
@@ -398,10 +401,10 @@ static void its_encode_vpt_size(struct its_cmd_block *cmd, u8 vpt_size)
 static inline void its_fixup_cmd(struct its_cmd_block *cmd)
 {
 	/* Let's fixup BE commands */
-	cmd->raw_cmd[0] = cpu_to_le64(cmd->raw_cmd[0]);
-	cmd->raw_cmd[1] = cpu_to_le64(cmd->raw_cmd[1]);
-	cmd->raw_cmd[2] = cpu_to_le64(cmd->raw_cmd[2]);
-	cmd->raw_cmd[3] = cpu_to_le64(cmd->raw_cmd[3]);
+	cmd->raw_cmd_le[0] = cpu_to_le64(cmd->raw_cmd[0]);
+	cmd->raw_cmd_le[1] = cpu_to_le64(cmd->raw_cmd[1]);
+	cmd->raw_cmd_le[2] = cpu_to_le64(cmd->raw_cmd[2]);
+	cmd->raw_cmd_le[3] = cpu_to_le64(cmd->raw_cmd[3]);
 }
 
 static struct its_collection *its_build_mapd_cmd(struct its_node *its,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
