Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60698C3E56
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 19:14:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kZucTN9C4x+EtsjtuOr6UlC73BIHYH/DWorr9iMJpV8=; b=Moi
	KWO9RStB7Dpz6pMUe5Wc3k3wBAL/oLD4jDjEK71k3dEDfsLqJ7eQhIQgFADrplL7usqFqGls9pIW8
	BXQnZlPWEu5JfxDlcYaqMn4q6AQUwutdC0YmC/Hnk6WzUS5u3dsKCIk+KXWkz4I5tWLzbTaeoGzlH
	Qv0bi8iaLsDcZq4oLxovS3eRyLTYgbjAL45I6NFiCqnIAXz0K2T3Yj4XicwtFfmmAQfID7iLDdoxO
	kXjVRgmqdDehQqZI4RDhPre9KUzAoobLzVse9Jlov2Af7kGYNNNwoKt06m0aoi8KNVFyeiIMjgLBk
	nn+3UPZ/vr3vQHeUaBlMkrIxm5c/3xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFLjC-0006fy-0C; Tue, 01 Oct 2019 17:14:22 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFLj4-0006fb-1w
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 17:14:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id q21so8452001pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 10:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=NLLDaVYu08NM6x1THeCxxFZ7SbKZd2dVoqgn+GP8d8w=;
 b=xTxJ1tRCBZW1eKhSkwHjd2DJ/S2KZkBDYpOD9aLvdRaIuP8h3Tm40Th1df2NTkIRqG
 hq56ZLjKWkfPzD7Yf2KCF7ZhqUGarIhLY677cTpMRS4EGuHfYHxFbIRqsf8MaQ682NtR
 DDp7RRM0mHDjsEEJyUwvL1B2TwMJeoNJXRd9GyvS/SM9q4bubiQqQgkHCfjEzPIpLWon
 ewBsgFQBbsgd9Z7Bx2ZuaL2XYDXC0A8CP67N+DdSl1XLCYQ3W+1gc+ph1MsVv8tuq6dO
 faMs0fpIO1bVKlqojdWGsjFD5841EC+zvtY4Kek5Du6wdAw2Y+Tg5abqdb2/1xz/jx09
 2KSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=NLLDaVYu08NM6x1THeCxxFZ7SbKZd2dVoqgn+GP8d8w=;
 b=Kw1vutTSUo1viSorfM4hLV4peHBFJy7TP2IdLkh1HjhREaytSzYMgqxUSMQP10gCOZ
 DYvZdrbGV/Kyrlu+3X2ukRu5vgIUvv+Wrz+ZannYQGiiCxnxfTBhXYZXpE5LuTzdjjDI
 NXyku3elcvqJmdxF92z+X5mOBar+PfD44bZrUC+yzLQZkerGZkFPy7LuKZ/kQ81mYkVT
 TOPx0hERHq88PzLZbt6QOjzDaG07vB+v4WUqMY4GhQQ8xNSw+4BdrObFX/SB/ZQN5Djw
 cyqOIowVAZG3PGZDvYkGCmiTv+hP7LBQ/kf4vmjfzcd98vWGquSjqC6pbFCCqmmw/qBq
 rFkA==
X-Gm-Message-State: APjAAAVbqPM00SmY0X2u3kxu2PRnJD1cknLtu5q2XwQKiDRJAgjMHx/o
 UoAsdxQN1/DLKxP+QNtBV9VFQA==
X-Google-Smtp-Source: APXvYqxktyCHg/rgXNWW7VBNcg3rJplLHywKDLlltnrQauDluKkR0Fp9DsVVRYyyVsKLhgG29+rkWA==
X-Received: by 2002:a17:90a:bb8e:: with SMTP id
 v14mr6497030pjr.84.1569950053127; 
 Tue, 01 Oct 2019 10:14:13 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m2sm20387666pff.154.2019.10.01.10.14.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 10:14:12 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH] coresight: etm4x: Use explicit barriers on enable/disable
Date: Tue,  1 Oct 2019 11:14:11 -0600
Message-Id: <20191001171411.16602-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_101414_104065_0618745C 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: andrew.murray@arm.com, linux-arm-kernel@lists.infradead.org,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Murray <andrew.murray@arm.com>

commit 1004ce4c255fc3eb3ad9145ddd53547d1b7ce327 upstream

Synchronization is recommended before disabling the trace registers
to prevent any start or stop points being speculative at the point
of disabling the unit (section 7.3.77 of ARM IHI 0064D).

Synchronization is also recommended after programming the trace
registers to ensure all updates are committed prior to normal code
resuming (section 4.3.7 of ARM IHI 0064D).

Let's ensure these syncronization points are present in the code
and clearly commented.

Note that we could rely on the barriers in CS_LOCK and
coresight_disclaim_device_unlocked or the context switch to user
space - however coresight may be of use in the kernel.

On armv8 the mb macro is defined as dsb(sy) - Given that the etm4x is
only used on armv8 let's directly use dsb(sy) instead of mb(). This
removes some ambiguity and makes it easier to correlate the code with
the TRM.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
[Fixed capital letter for "use" in title]
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Link: https://lore.kernel.org/r/20190829202842.580-11-mathieu.poirier@linaro.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: stable@vger.kernel.org # 4.9+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index da27f8edba50..44d6c29e2644 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -181,6 +181,12 @@ static void etm4_enable_hw(void *info)
 	if (coresight_timeout(drvdata->base, TRCSTATR, TRCSTATR_IDLE_BIT, 0))
 		dev_err(drvdata->dev,
 			"timeout while waiting for Idle Trace Status\n");
+	/*
+	 * As recommended by section 4.3.7 ("Synchronization when using the
+	 * memory-mapped interface") of ARM IHI 0064D
+	 */
+	dsb(sy);
+	isb();
 
 	CS_LOCK(drvdata->base);
 
@@ -323,8 +329,12 @@ static void etm4_disable_hw(void *info)
 	/* EN, bit[0] Trace unit enable bit */
 	control &= ~0x1;
 
-	/* make sure everything completes before disabling */
-	mb();
+	/*
+	 * Make sure everything completes before disabling, as recommended
+	 * by section 7.3.77 ("TRCVICTLR, ViewInst Main Control Register,
+	 * SSTATUS") of ARM IHI 0064D
+	 */
+	dsb(sy);
 	isb();
 	writel_relaxed(control, drvdata->base + TRCPRGCTLR);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
