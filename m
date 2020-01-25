Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A25414946B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 11:43:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:
	Subject:To:From:Date:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=44dFautL6WaXXJ0Mt5XUWKQgnx03WQDLXBo5el4oYqM=; b=dGHaN5GLJdmPYy
	GvvwcF/qjlN8DOIZt1DZAYWiRvPmzm1bRKq/+rBiD5SZB2OcjzqpFIXLP8Ae4cpR8Z5J7rJC8edN7
	T76CATiPO1pc9ALMvO5k3qmtZ+6pbXYVsbwWRakEYjnE57xDgzj9PFZx4FK2fgJnXHGrWFxQwtAN4
	E1/6pkNqigTIIs9dfNTMuLjP2mePRK40fTSoGXGMnxSgjCR7XXMuOLKRiqAMoOnEv5eX4NaBZhPEM
	+UXLeVW1Uns0g7qVXwM4CdUYHsmBcW4+7258WOEnLhCChWAiMGqUVG8nbbeCifiK/OUsqcrZbwBmB
	Q+r90lezIjdg/Dr8jU/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivIuY-0007V1-Bt; Sat, 25 Jan 2020 10:43:30 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivIuQ-0007Tj-OZ; Sat, 25 Jan 2020 10:43:24 +0000
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tip-bot2@linutronix.de>)
 id 1ivIu5-0008V2-8j; Sat, 25 Jan 2020 11:43:01 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
 by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 74CF51C1A72;
 Sat, 25 Jan 2020 11:42:48 +0100 (CET)
Date: Sat, 25 Jan 2020 10:42:48 -0000
From: "tip-bot2 for Paul E. McKenney" <tip-bot2@linutronix.de>
To: linux-tip-commits@vger.kernel.org
Subject: [tip: core/rcu] wireless/mediatek: Replace rcu_swap_protected() with
 rcu_replace_pointer()
MIME-Version: 1.0
Message-ID: <157994896823.396.3709123757914257242.tip-bot2@tip-bot2>
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot2.linutronix.de>
Robot-Unsubscribe: Contact <mailto:tglx@linutronix.de> to get blacklisted from
 these emails
Precedence: bulk
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_024322_938274_3B221F63 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Reply-To: linux-kernel@vger.kernel.org
Cc: Ryder Lee <ryder.lee@mediatek.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "Paul E. McKenney" <paulmck@kernel.org>, netdev@vger.kernel.org,
 x86 <x86@kernel.org>, linux-wireless@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following commit has been merged into the core/rcu branch of tip:

Commit-ID:     a191c9e9f73a78e8801b5eeb3d43bbd6fd73b86f
Gitweb:        https://git.kernel.org/tip/a191c9e9f73a78e8801b5eeb3d43bbd6fd73b86f
Author:        Paul E. McKenney <paulmck@kernel.org>
AuthorDate:    Wed, 11 Dec 2019 10:30:21 -08:00
Committer:     Paul E. McKenney <paulmck@kernel.org>
CommitterDate: Thu, 12 Dec 2019 10:20:51 -08:00

wireless/mediatek: Replace rcu_swap_protected() with rcu_replace_pointer()

This commit replaces the use of rcu_swap_protected() with the more
intuitively appealing rcu_replace_pointer() as a step towards removing
rcu_swap_protected().

Link: https://lore.kernel.org/lkml/CAHk-=wiAsJLw1egFEE=Z7-GGtM6wcvtyytXZA1+BHqta4gg6Hw@mail.gmail.com/
Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
Reported-by: "Martin K. Petersen" <martin.petersen@oracle.com>
[ paulmck: Apply Matthias Brugger feedback. ]
Signed-off-by: Paul E. McKenney <paulmck@kernel.org>
Reviewed-by: "Martin K. Petersen" <martin.petersen@oracle.com>
Acked-by: Kalle Valo <kvalo@codeaurora.org>
Cc: Felix Fietkau <nbd@nbd.name>
Cc: Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
Cc: Ryder Lee <ryder.lee@mediatek.com>
Cc: Roy Luo <royluo@google.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: <linux-wireless@vger.kernel.org>
Cc: <netdev@vger.kernel.org>
Cc: <linux-arm-kernel@lists.infradead.org>
Cc: <linux-mediatek@lists.infradead.org>
---
 drivers/net/wireless/mediatek/mt76/agg-rx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/agg-rx.c b/drivers/net/wireless/mediatek/mt76/agg-rx.c
index 53b5a4b..59c1878 100644
--- a/drivers/net/wireless/mediatek/mt76/agg-rx.c
+++ b/drivers/net/wireless/mediatek/mt76/agg-rx.c
@@ -281,8 +281,8 @@ void mt76_rx_aggr_stop(struct mt76_dev *dev, struct mt76_wcid *wcid, u8 tidno)
 {
 	struct mt76_rx_tid *tid = NULL;
 
-	rcu_swap_protected(wcid->aggr[tidno], tid,
-			   lockdep_is_held(&dev->mutex));
+	tid = rcu_replace_pointer(wcid->aggr[tidno], tid,
+				  lockdep_is_held(&dev->mutex));
 	if (tid) {
 		mt76_rx_aggr_shutdown(dev, tid);
 		kfree_rcu(tid, rcu_head);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
