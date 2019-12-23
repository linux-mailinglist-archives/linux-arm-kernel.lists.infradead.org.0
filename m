Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A77129745
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 15:24:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gn3st0J7NWgnxS6pbvhFNzC2EJk1Olfh1cx5OCwcrVw=; b=fmWb/birn0W13N/Om2HBvhkwQl
	c9NtP5Yc9EaI9nOg1jM1ojElnWeLyGuJgQj4YdcZ5bEpTuK62CqLLPTKewHMqP5KnZo/JoTxc95Mv
	7Bssovm7LkEgvn992F8kMv1fQkLFSBWlBcAsp/7lTFlurvCeimzkPdOC/YKXa23dKMk7gyHhQtJTk
	s5pX78/ansMV/FPmG/nYaIQ5WcFVUBQ4sXfX+QQOnvsHFRVOiBMdJNbGyqpy/OSyMPA+G8tI3Jpyr
	hvDfZvhznhvbX9EmIWVuczVVJhhOrUe5TD23eV5oGQMuMy0EfzYSaNZyAXTV2OoD7otULLUlYtgg7
	ItGE1u5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijOco-0004oP-AZ; Mon, 23 Dec 2019 14:23:58 +0000
Received: from out30-57.freemail.mail.aliyun.com ([115.124.30.57])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijOcI-0004Vw-OY
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 14:23:28 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R171e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04420;
 MF=zhangliguang@linux.alibaba.com; NM=1; PH=DS; RN=4; SR=0;
 TI=SMTPD_---0Tlkguay_1577110996; 
Received: from localhost(mailfrom:zhangliguang@linux.alibaba.com
 fp:SMTPD_---0Tlkguay_1577110996) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 23 Dec 2019 22:23:24 +0800
From: luanshi <zhangliguang@linux.alibaba.com>
To: James Morse <james.morse@arm.com>
Subject: [PATCH 3/3] firmware: arm_sdei: clean up sdei_event_create()
Date: Mon, 23 Dec 2019 22:22:55 +0800
Message-Id: <1577110975-54782-3-git-send-email-zhangliguang@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1577110975-54782-1-git-send-email-zhangliguang@linux.alibaba.com>
References: <1577110975-54782-1-git-send-email-zhangliguang@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_062326_969339_A23067BB 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.57 listed in list.dnswl.org]
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

Function sdei_event_find() is always called in sdei_event_create(), but
it is already called in sdei_event_register(). So we should remove some
needless sdei_event_find() calls.

Signed-off-by: Liguang Zhang <zhangliguang@linux.alibaba.com>
---
 drivers/firmware/arm_sdei.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index 0a366cf..2c49907 100644
--- a/drivers/firmware/arm_sdei.c
+++ b/drivers/firmware/arm_sdei.c
@@ -267,15 +267,9 @@ static struct sdei_event *sdei_event_create(u32 event_num,
 		event->private_registered = regs;
 	}
 
-	if (sdei_event_find(event_num)) {
-		kfree(event->registered);
-		kfree(event);
-		event = ERR_PTR(-EBUSY);
-	} else {
-		spin_lock(&sdei_list_lock);
-		list_add(&event->list, &sdei_list);
-		spin_unlock(&sdei_list_lock);
-	}
+	spin_lock(&sdei_list_lock);
+	list_add(&event->list, &sdei_list);
+	spin_unlock(&sdei_list_lock);
 
 	return event;
 }
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
