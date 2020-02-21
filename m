Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FF01683AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 17:36:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UmOYC5PWOK3G/enixnWt8A0UFpGnApy3Ekdu8HprVFQ=; b=WfbTkSJKbgT+p0
	XvTBqy8wG0KhhFKpVZ5HKHpFkXA9PJUW1B4RR1uIgvVEAuAxJAIgCtZWug0cXNYoKN9+MSbe4aNXq
	eYXnp5Xhx+sDCReFwqLXiDUDVJoJdw05RbJ9mZ0w0xAseUiLkRfajk5vB1MfiVJZUr5ypxUEp+9Fy
	YsrsmZmDq6IqEoSiEueXyjmgt4ZgB3y7BNvWr4up31R3Tm8qgKcsnp7sjnkQjjHqMB/Pc0YGs4urV
	+kD9OkCHsTwVMXEDCLo0SkNhc1xjw4VIMLd1HwgUDI6M9B0PFsZ9WQncpTy5UYy0/0v4cSaOQU4FU
	8hDSawc8GBqEnbC0nHlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5BI2-0000t2-0b; Fri, 21 Feb 2020 16:36:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5BGz-0008SO-90
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 16:35:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E327131B;
 Fri, 21 Feb 2020 08:35:28 -0800 (PST)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 25D4B3F68F;
 Fri, 21 Feb 2020 08:35:28 -0800 (PST)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] firmware: arm_sdei: clean up sdei_event_create()
Date: Fri, 21 Feb 2020 16:35:09 +0000
Message-Id: <20200221163509.47254-5-james.morse@arm.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221163509.47254-1-james.morse@arm.com>
References: <20200221163509.47254-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_083529_369378_35707FF1 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Liguang Zhang <zhangliguang@linux.alibaba.com>, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Liguang Zhang <zhangliguang@linux.alibaba.com>

Function sdei_event_find() is always called in sdei_event_create(), but
it is already called in sdei_event_register(). This code is trying to
avoid a double-create of the same event, which can't happen as we still
hold the sdei_events_lock. We can remove this needless sdei_event_find()
call.

Signed-off-by: Liguang Zhang <zhangliguang@linux.alibaba.com>
[expanded commit message]
Signed-off-by: James Morse <james.morse@arm.com>
---
 drivers/firmware/arm_sdei.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index 45536408a8c1..334c8be0c11f 100644
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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
