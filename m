Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76997129743
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 15:23:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6upWrRWoWPxhvRhGXCW4zzFGzibGAspWsVCPzLJgWMY=; b=bva
	+ld4dD8oXY2FfkTDiuJXeAsij/nRkJjMo8Mx4axBldbuROvfthRJ6say7t1CPUHhKSm/TbEEKpnBy
	7f8fMaFaYB7cE6eycv4Vtl5Dl/RaPWawORHkuxDbhesQ/he7NVVtV1kS2vDS98BEsGjUcpUJJ656l
	RHztOtKOOBwBR9cwbcmkRXctjuo4kC7GstI0AJZ4ZdmC1A+FdUovKW89W7H7Hm+M4/vZ4UJMeaKnr
	X+3o6H2DL2Cp9dJZyye+3HrJ+aZlzuqXY5SFyP+LqC9snGimxZ01nTXIhi+ITWAtVf+yo/V2QvGxA
	XDaMJ3/twnsK8eu900U9gQAfCmg4rKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijOcI-0004Lh-BR; Mon, 23 Dec 2019 14:23:26 +0000
Received: from out30-43.freemail.mail.aliyun.com ([115.124.30.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijOc4-0004Kk-EC
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 14:23:14 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R891e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e07487;
 MF=zhangliguang@linux.alibaba.com; NM=1; PH=DS; RN=4; SR=0;
 TI=SMTPD_---0TlkllZi_1577110976; 
Received: from localhost(mailfrom:zhangliguang@linux.alibaba.com
 fp:SMTPD_---0TlkllZi_1577110976) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 23 Dec 2019 22:23:05 +0800
From: luanshi <zhangliguang@linux.alibaba.com>
To: James Morse <james.morse@arm.com>
Subject: [PATCH 1/3] firmware: arm_sdei: fix possible deadlock
Date: Mon, 23 Dec 2019 22:22:53 +0800
Message-Id: <1577110975-54782-1-git-send-email-zhangliguang@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_062313_019880_BB152F54 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: Liguang Zhang <zhangliguang@linux.alibaba.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Liguang Zhang <zhangliguang@linux.alibaba.com>

We call sdei_reregister_event() with sdei_list_lock held but
_sdei_event_register() and sdei_event_destroy() also acquires
sdei_list_lock thus creating A-A deadlock.

Fixes: da351827240e ("firmware: arm_sdei: Add support for CPU and system power states")
Signed-off-by: Liguang Zhang <zhangliguang@linux.alibaba.com>
---
 drivers/firmware/arm_sdei.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index a479023..b122927 100644
--- a/drivers/firmware/arm_sdei.c
+++ b/drivers/firmware/arm_sdei.c
@@ -651,20 +651,19 @@ static int sdei_reregister_event(struct sdei_event *event)
 
 	lockdep_assert_held(&sdei_events_lock);
 
-	err = _sdei_event_register(event);
+	err = sdei_api_event_register(event->event_num,
+				       sdei_entry_point,
+				       event->registered,
+				       SDEI_EVENT_REGISTER_RM_ANY, 0);
 	if (err) {
 		pr_err("Failed to re-register event %u\n", event->event_num);
-		sdei_event_destroy(event);
+		list_del(&event->list);
+		kfree(event->registered);
 		return err;
 	}
 
-	if (event->reenable) {
-		if (event->type == SDEI_EVENT_TYPE_SHARED)
-			err = sdei_api_event_enable(event->event_num);
-		else
-			err = sdei_do_cross_call(_local_event_enable, event);
-	}
-
+	if (event->reenable)
+		err = sdei_api_event_enable(event->event_num);
 	if (err)
 		pr_err("Failed to re-enable event %u\n", event->event_num);
 
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
