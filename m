Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B091EF0DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 07:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J6JyDEsOrFDOzh3g/oNmzRRm0HD8KSUMhuELdibrfAQ=; b=jXa9emXVBFrwM2
	vzs2HWwsQEHs+yutQbaGCC+SNh6bvF1EvAqoPXRPG7UMdqATJwHowffIHhLbhrVRFZ1D29Q3Gjw8u
	NtG7d8l1mXx/fEicOocLLb13rwr9ebn+m6YZ066DstSRpsIJaskWaFoBkDQ1LYaIYGNINyYoGyRSJ
	6HOTJVX1Xe1h+du8mtmExFTmhwPNf/MqzNn0OfSH7SmxBiu3nEcZU0qD0G4qBtpIE0lxKlq22ThKd
	t/8Bqj/ON2pGP926VnsE7+CHAN2A+A6KKzc2z9/gnPKyNu6l96kP7zbDKKDlj4cwB1rnePO+yg7QE
	5iT2G0kkHYvtxxLJ9pgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh4qB-0008V0-NC; Fri, 05 Jun 2020 05:24:27 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh4q2-0008TK-Fv
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 05:24:20 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 440F65EA5DFB85F80713;
 Fri,  5 Jun 2020 13:24:01 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Fri, 5 Jun 2020 13:23:51 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>
Subject: [PATCH] irqchip/gic-v4.1: Use readx_poll_timeout_atomic() to fix
 sleep in atomic
Date: Fri, 5 Jun 2020 13:23:45 +0800
Message-ID: <20200605052345.1494-1-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_222418_699205_D8DC97BD 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: jason@lakedaemon.net, maz@kernel.org, wangjingyi11@huawei.com,
 Zenghui Yu <yuzenghui@huawei.com>, wanghaibin.wang@huawei.com,
 tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

readx_poll_timeout() can sleep if @sleep_us is specified by the caller,
and is therefore unsafe to be used inside the atomic context, which is
this case when we use it to poll the GICR_VPENDBASER.Dirty bit in
irq_set_vcpu_affinity() callback.

Let's convert to its atomic version instead which helps to get the v4.1
board back to life!

Fixes: 96806229ca03 ("irqchip/gic-v4.1: Add support for VPENDBASER's Dirty+Valid signaling")
Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 drivers/irqchip/irq-gic-v3-its.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index cd685f521c77..6a5a87fc4601 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -3797,10 +3797,10 @@ static void its_wait_vpt_parse_complete(void)
 	if (!gic_rdists->has_vpend_valid_dirty)
 		return;
 
-	WARN_ON_ONCE(readq_relaxed_poll_timeout(vlpi_base + GICR_VPENDBASER,
-						val,
-						!(val & GICR_VPENDBASER_Dirty),
-						10, 500));
+	WARN_ON_ONCE(readq_relaxed_poll_timeout_atomic(vlpi_base + GICR_VPENDBASER,
+						       val,
+						       !(val & GICR_VPENDBASER_Dirty),
+						       10, 500));
 }
 
 static void its_vpe_schedule(struct its_vpe *vpe)
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
