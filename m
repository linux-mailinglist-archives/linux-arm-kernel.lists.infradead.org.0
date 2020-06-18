Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5271FE07B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:49:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8BeroXNBTFl7aLfdZisNZto5Eh6zBaqZb33iwC3v7ek=; b=Gn6ioe4tkEDdrg
	u9Mhes0HeSz6cxjSZ4+fQ7QjdEOBBh+09kkWRG8HpCMCEmFBpaP9jaRvLrvDsh+g5lia03RBFs30P
	WclsWZDAO+xw90MAPynGyJJehlSGMFo6QzuKyftdCRCcCGYUxe/sCVdAdDcUIL0GiCqFjQ90ywiFg
	sax8FamjzvI6D6HeiUEaZTKgBU1LQtLh8AQeJQ87JTFmS7E8RBR1JH8YsZRfiU7o5W7sJ+A0eaHb/
	tMtrFzzBH47Zl9nLO3/D31RDqMxsSZs51feoACdESn5RTISXn+7tMRHr7YCgjXcak6PL9C1+Pfsm3
	8nyORSWyrEOVcsvOP9Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljfl-0007H7-72; Thu, 18 Jun 2020 01:48:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljEJ-0004RN-EN
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:20:37 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 17E76206F1;
 Thu, 18 Jun 2020 01:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592443234;
 bh=jooARIFQyutBq1ygAucaUY+mBk/+xG06hczMM+cGxrQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZFQBSwXrObF4kZ+fWuQAYBmb6tpcDsznZ4etaApXK5ZY5ZAvkGEn+QaZZ4OhDiRjp
 1lTr+PGtdMByYgNxTI6ECFFPE5sRmK1mLDHUFWzOa3kJ38yLl/fW70NoWzHfABxOQ4
 rY5whY03Psjb/Hug46NBDUP/C1FJX2k51z/DQyCA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 187/266] mfd: stmfx: Fix stmfx_irq_init error path
Date: Wed, 17 Jun 2020 21:15:12 -0400
Message-Id: <20200618011631.604574-187-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_182035_508464_22362617 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Amelie Delaunay <amelie.delaunay@st.com>,
 Lee Jones <lee.jones@linaro.org>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Amelie Delaunay <amelie.delaunay@st.com>

[ Upstream commit 60c2c4bcb9202acad4cc26af20b44b6bd7874f7b ]

In case the interrupt signal can't be configured, IRQ domain needs to be
removed.

Fixes: 06252ade9156 ("mfd: Add ST Multi-Function eXpander (STMFX) core driver")
Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mfd/stmfx.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/stmfx.c b/drivers/mfd/stmfx.c
index fde6541e347c..1977fe95f876 100644
--- a/drivers/mfd/stmfx.c
+++ b/drivers/mfd/stmfx.c
@@ -287,14 +287,19 @@ static int stmfx_irq_init(struct i2c_client *client)
 
 	ret = regmap_write(stmfx->map, STMFX_REG_IRQ_OUT_PIN, irqoutpin);
 	if (ret)
-		return ret;
+		goto irq_exit;
 
 	ret = devm_request_threaded_irq(stmfx->dev, client->irq,
 					NULL, stmfx_irq_handler,
 					irqtrigger | IRQF_ONESHOT,
 					"stmfx", stmfx);
 	if (ret)
-		stmfx_irq_exit(client);
+		goto irq_exit;
+
+	return 0;
+
+irq_exit:
+	stmfx_irq_exit(client);
 
 	return ret;
 }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
