Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D254F1A02B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 02:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RnZCx1Ws+4TQ1ShXX3p3jPPePl0cRuTVS7zhHoPbWds=; b=MUHp3ZQ35R45jC
	p1CWJ7CsUcZ2kBKzBXR7V6+2QS4PQfils/w7Btqo/DPbEs5m8MQzpXMl+7E7Y0HHA6Nz9PLxP53Rj
	MQ67ruoaJ7NiNWCmUA39vJsxrb1Jv8HrE26bc4atWvLPqWa/boW9qU5Y52wS34hri0v/OmC1F745T
	REqiuYGSK5VdUyJCkXyN76aX8cvqcqt9jejTn0eQY+62AAdkND1ow/M5i1DU4qxMB7sqhCe7teM7P
	nkCemf8yaw3adixKV4+aTK4h9zE0nz1IAkMzXJTiXU9cpDBKiAdSPcH1pc5D+37s1ic4fns5YqtJd
	QF0TwQthiGykjIh4or8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLbkP-00037p-BF; Tue, 07 Apr 2020 00:05:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLbhr-0006py-4C
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 00:03:08 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 01E9720842;
 Tue,  7 Apr 2020 00:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586217786;
 bh=xCCyQH1bUvTAbMsd/r4PqNmTcZ9TF90HvmyWc/+6wI4=;
 h=From:To:Cc:Subject:Date:From;
 b=XOvL/Z/RxOOeE+fZBUzO2ngPuydxlxGyVvOqwz06OZ9gRQMZh75o4VHuugdVVzZzG
 Ft8pkRkzKYJDa4Y/VXnm6oq5pnFSXa/77WGchuGax9wkTCpzBJh8krtIEHqWmLAJmR
 5mzhoPpAaKeIP+w8jGjMEmfyxgwrYdS3QfudR4RA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 1/5] bus: sunxi-rsb: Return correct data when
 mixing 16-bit and 8-bit reads
Date: Mon,  6 Apr 2020 20:03:00 -0400
Message-Id: <20200407000304.17360-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_170307_228726_675FB179 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ondrej Jirman <megous@megous.com>, Sasha Levin <sashal@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

[ Upstream commit a43ab30dcd4a1abcdd0d2461bf1cf7c0817f6cd3 ]

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
Acked-by: Chen-Yu Tsai <wens@csie.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/bus/sunxi-rsb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/bus/sunxi-rsb.c b/drivers/bus/sunxi-rsb.c
index 2051d926e3037..4f3d988210b0a 100644
--- a/drivers/bus/sunxi-rsb.c
+++ b/drivers/bus/sunxi-rsb.c
@@ -345,7 +345,7 @@ static int sunxi_rsb_read(struct sunxi_rsb *rsb, u8 rtaddr, u8 addr,
 	if (ret)
 		goto unlock;
 
-	*buf = readl(rsb->regs + RSB_DATA);
+	*buf = readl(rsb->regs + RSB_DATA) & GENMASK(len * 8 - 1, 0);
 
 unlock:
 	mutex_unlock(&rsb->lock);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
