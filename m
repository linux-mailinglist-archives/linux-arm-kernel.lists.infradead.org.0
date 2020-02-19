Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7792416390F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 02:10:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ymy/MZLe3VB7fu+EM142hxmInswT+Kkf4Mb5BWvrd5o=; b=ImDxGlMSrSWbFY
	5tC/4Tp4CYFTKTJhfMjThMN4roUJFNFMCbJj7pgt8Vf8fivhoN0EnWFYjATtCdiEF0JiJVnIYHlDa
	yPcyrUIzzEaOTgwnIk+vCue+Nt7lP2kqB2UnBhqPTslpQzgbhOQwSC4xQbXTpKtzukDT6eF3kby/8
	Rn8+ARc3Q6/D1wNIyupKUYGfpRCsQDha2OUrtIvRvLQF+PmyRCyVC6r2f9RAK1ES9Sw019VWeS6Vq
	rqMPiGnp49itQrdsWjhbQptniyW+7JVc/HhoNNIop8O0sPh5fJ13aAMIZxR1NXCTouSFu3zOO3OWa
	33u4ZpjFb+A/D1PJnRCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Dsa-0008En-4C; Wed, 19 Feb 2020 01:10:20 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4DsK-0007Ze-66
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 01:10:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582074599; bh=Aeuv5iYbaAp7rr6i5ZST/n1JdcOfY/hR+2BNrgy8C+E=;
 h=From:To:Cc:Subject:Date:From;
 b=QHSn0XjACs3lffkvnSFb2Pb78S1/c0rmc4BVbXsaxeakyWxv3Mh/uhDOckugdgAqZ
 FcC8PID+c6c6kZWMrj4KvwtCzGJHnr4igAaFwpP17DnZYrxwk+t60tjSDIqWrlF0aD
 UjWgeF7tQbJzZPcmQflTg7yTojktxGRiFa4KFSkY=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com
Subject: [PATCH] bus: sunxi-rsb: Return correct data when mixing 16-bit and
 8-bit reads
Date: Wed, 19 Feb 2020 02:09:50 +0100
Message-Id: <20200219010951.395599-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_171004_565100_B1AB652E 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>, Samuel Holland <samuel@sholland.org>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When doing a 16-bit read that returns data in the MSB byte, the
RSB_DATA register will keep the MSB byte unchanged when doing
the following 8-bit read. sunxi_rsb_read() will then return
a result that contains high byte from 16-bit read mixed with
the 8-bit result.

The consequence is that after this happens the PMIC's regmap will
look like this: (0x33 is the high byte from the 16-bit read)

% cat /sys/kernel/debug/regmap/sunxi-rsb-3a3/registers
00: 33
01: 33
02: 33
03: 33
04: 33
05: 33
06: 33
07: 33
08: 33
09: 33
0a: 33
0b: 33
0c: 33
0d: 33
0e: 33
[snip]

Fix this by masking the result of the read with the correct mask
based on the size of the read. There are no 16-bit users in the
mainline kernel, so this doesn't need to get into the stable tree.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 drivers/bus/sunxi-rsb.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/bus/sunxi-rsb.c b/drivers/bus/sunxi-rsb.c
index b8043b58568ac..8ab6a3865f569 100644
--- a/drivers/bus/sunxi-rsb.c
+++ b/drivers/bus/sunxi-rsb.c
@@ -316,6 +316,7 @@ static int sunxi_rsb_read(struct sunxi_rsb *rsb, u8 rtaddr, u8 addr,
 {
 	u32 cmd;
 	int ret;
+	u32 mask;
 
 	if (!buf)
 		return -EINVAL;
@@ -323,12 +324,15 @@ static int sunxi_rsb_read(struct sunxi_rsb *rsb, u8 rtaddr, u8 addr,
 	switch (len) {
 	case 1:
 		cmd = RSB_CMD_RD8;
+		mask = 0xffu;
 		break;
 	case 2:
 		cmd = RSB_CMD_RD16;
+		mask = 0xffffu;
 		break;
 	case 4:
 		cmd = RSB_CMD_RD32;
+		mask = 0xffffffffu;
 		break;
 	default:
 		dev_err(rsb->dev, "Invalid access width: %zd\n", len);
@@ -345,7 +349,7 @@ static int sunxi_rsb_read(struct sunxi_rsb *rsb, u8 rtaddr, u8 addr,
 	if (ret)
 		goto unlock;
 
-	*buf = readl(rsb->regs + RSB_DATA);
+	*buf = readl(rsb->regs + RSB_DATA) & mask;
 
 unlock:
 	mutex_unlock(&rsb->lock);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
