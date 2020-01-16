Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8EF13D2B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 04:30:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wbicUa+OObda+9SosLa22YriX3/FR0XQx9jruvoXopg=; b=fd42pzPJsplQWQU4wXOp0H/q0E
	Dauhf9M2a7Ko6eQpsT7NPC/I/JzyEElMe/RlQKFPdFuYZcdi7iFPL6CDoi6uKWtQ1XwQKE4KQC1jz
	WfAaw9VTOx1M3TwcDvKrcVIksNXGHdmoIgk3znzb4XQ2qPI9ZUtoVZ9I069Qtbl2W7IHVn2Oao6Ez
	qjIoCofONpzEgusr8ZsF4bPVPVWdE9MHCM6dwI/wr6HYTznlc9RHEbn/hZO2sblvG2HqAYJ9YiHYB
	lqBBMv7gRzhNLzPfa5/qz9EGg+hgpgCa7EAR9xCzMwC90EzfGLBRQzZDukr786764HhQGAl9DEbqB
	09MMQWCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irvr4-00082h-LN; Thu, 16 Jan 2020 03:29:58 +0000
Received: from out30-42.freemail.mail.aliyun.com ([115.124.30.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irvqR-0006yr-6C
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 03:29:20 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R131e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01f04397;
 MF=zhangliguang@linux.alibaba.com; NM=1; PH=DS; RN=3; SR=0;
 TI=SMTPD_---0TnrJrCt_1579145349; 
Received: from localhost(mailfrom:zhangliguang@linux.alibaba.com
 fp:SMTPD_---0TnrJrCt_1579145349) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 16 Jan 2020 11:29:17 +0800
From: luanshi <zhangliguang@linux.alibaba.com>
To: james.morse@arm.com
Subject: [V2 3/3] firmware: arm_sdei: clean up sdei_event_create()
Date: Thu, 16 Jan 2020 11:28:51 +0800
Message-Id: <1579145331-78633-3-git-send-email-zhangliguang@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1579145331-78633-1-git-send-email-zhangliguang@linux.alibaba.com>
References: <1579145331-78633-1-git-send-email-zhangliguang@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_192919_499344_BB6A52C3 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Function sdei_event_find() is always called in sdei_event_create(), but
it is already called in sdei_event_register(). So we should remove some
needless sdei_event_find() calls.

Signed-off-by: Liguang Zhang <zhangliguang@linux.alibaba.com>
---
 drivers/firmware/arm_sdei.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index f81c09e..79ae07c 100644
--- a/drivers/firmware/arm_sdei.c
+++ b/drivers/firmware/arm_sdei.c
@@ -271,15 +271,9 @@ static struct sdei_event *sdei_event_create(u32 event_num,
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
