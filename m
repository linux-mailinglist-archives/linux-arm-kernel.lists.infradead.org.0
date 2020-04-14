Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8341A7F9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 16:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MFCZRwR0FlflUXIpAUSBe3+Ez4R6U5AYf3DC8PfFCtA=; b=DxslXblAUSDkp9
	hbdkPlzHRdMPwCkQFmqNYBv21jpxcDKZLTDJgbJ8OWMU4RzTVf1GjyD5tUkoIMVUN7Plgkn/ShpWX
	6rzjrqFzfixY2o2MvfaaTvCYA2YKBW3u8UqYX8SEQzwI2LjPHslm2FBdbZk7pwjad1PTE0Viu3Pjz
	JsIgiJjZAxj2o2deHjpCiFh0B19keKHmxhVJs5FbzCzjJ7VvyRibmABZWNx88jH6zLxiuZi2xD87E
	aMXrq4DnoJDZNUSTyaFSnnVIsNHSJSynUfOIndhit2etDySEQbJu7Fq9ouwp/+UJAFGI28gZqc9Ov
	CWxeB76kADmK1ykc6uBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMTa-0002Ro-PJ; Tue, 14 Apr 2020 14:23:46 +0000
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMT3-00024N-06; Tue, 14 Apr 2020 14:23:13 +0000
From: Christoph Hellwig <hch@lst.de>
To: James Morse <james.morse@arm.com>
Subject: [PATCH 2/2] arm_sdei: remove the set_fs calls in sdei_event_handler
Date: Tue, 14 Apr 2020 16:23:02 +0200
Message-Id: <20200414142302.448447-3-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200414142302.448447-1-hch@lst.de>
References: <20200414142302.448447-1-hch@lst.de>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are only two callbacks that can be called, which both
eventually end up calling __ghes_sdei_callback.

__ghes_sdei_callback calls irq_work_queue which is a normal
kernel helper called from all kinds of contexts and
ghes_in_nmi_queue_one_entry.  ghes_in_nmi_queue_one_entry is
also called from other code without messing with the address
limit, so it better work without it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/firmware/arm_sdei.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index bdd6461647d7..1c51b378dfca 100644
--- a/drivers/firmware/arm_sdei.c
+++ b/drivers/firmware/arm_sdei.c
@@ -1137,19 +1137,12 @@ int sdei_event_handler(struct pt_regs *regs,
 		       struct sdei_registered_event *arg)
 {
 	int err;
-	mm_segment_t orig_addr_limit;
 	u32 event_num = arg->event_num;
 
-	orig_addr_limit = get_fs();
-	set_fs(USER_DS);
-
 	err = arg->callback(event_num, regs, arg->callback_arg);
 	if (err)
 		pr_err_ratelimited("event %u on CPU %u failed with error: %d\n",
 				   event_num, smp_processor_id(), err);
-
-	set_fs(orig_addr_limit);
-
 	return err;
 }
 NOKPROBE_SYMBOL(sdei_event_handler);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
