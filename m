Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DBCF396F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 21:19:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LBaLekJOgdnhXy5WtBxyLjheSo4cdZQW6ruy4NyohbI=; b=Xx2q/27+Hr36Tn
	XbYQrr8VgIn9ypY/sKyOpaLy9BAZ+knCk3+YpPSTrGs/MYUiPi4yFkwCN34tCDEd3tAfUgQ/ivD2P
	gOkuOpNdA/ZvD2CXOn1zN6ZwCc/s0C5JHQNjxv06YsoDvTyk9sc/Mo5KhgsseKuBZEQnpKNeszhBB
	whNbcDbl2RR1PyKhi8zVuoiIof/sGfsScmQ46iDl2vfVMDBb0vBAQx6guxY0Ck4mPAlDr3YiF7p6t
	mv6clfnvzz5ECC0HsJxoK8AzxiQ/Fb1UJAPezXvpZ6wAG+BkgLF61gvkn5MnkHkoh9h1d7b2yWUto
	AtbjKpTBuNvFoOiBIw6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSoF0-0007fn-0S; Thu, 07 Nov 2019 20:18:50 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSoDR-0006D4-SN
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 20:17:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id a11so4553142wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 12:17:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E/opqRnW7mjWd271JJZcuLRT2Lb4Wp0fV1/zJUBsf+Y=;
 b=ne9mmSOfGkk5Y32hWFtONWWsmIM6mTY5QO445acSLVvqUN6Zu/45H+2vjLokJMrQnJ
 CffvUybm7kU9O1IBsUoR14V1nkNOidakqp4r6dXlXloZv5VmaD0bOGFblQC4hpejoA45
 ClKCVPEmxlsGBuzSb4eyipp6TKpjYw/wMQ15udpflXFruBkMjppJC+cseXXN7b64rRBS
 7UOGuKbJu288ebTc8duWSW+61vLZ2mEnZI/exCueQWFTr86iGZnA0RBja4FdgAemBU+O
 lzqFaB8k6yNZA6ZoehgPYTFuG09Belb7Rl1KYo2cEBfdIdsZ9DNxavs3iLIUrphe92Vu
 1zQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E/opqRnW7mjWd271JJZcuLRT2Lb4Wp0fV1/zJUBsf+Y=;
 b=MI827RuZGsuQhH1SIXlprF1/A4J5gUy9lsy4ODhG5uNYy2ACbG14JwaaaaDdDPC0/R
 gOTT8vTbJxEoR6YOg+omyg65W5gVfVMY5KEqt5AuLnOqW1XnCsHscs8pSUq7Im5sgTAN
 UlU8pj5yKr1JEuNRUkJ0NM742lL459pLf1Uzrf/PepDVdYrEK9Y8jz0bx3bz46+kB5Wk
 eXh/XugpIJYrGNrzdXb0SslVFvV1ifhM4IBnQAUK245u6VjdCvG05RGA9paweriofNAP
 cYOOaoHyLu33NcokkuyFfZieBTJLkHM1ilM7U/W9jkAeBlIG0YMvskXWB7V2xaZYXmJq
 SbgQ==
X-Gm-Message-State: APjAAAUZ6HU8XeXLF/uqqXq0BhBksC+CWS+rxVvinHdKEP/YM4oRAKXX
 HsrLYbwAW9h8UJnd9z+jEYF9bw==
X-Google-Smtp-Source: APXvYqyyjcITWBzH0Dzq6p8czJPlGmkRNJ5gNj8J2RJV66DTzp4cH3p+YQPaSfdSy5SCVYQ8JJvrrg==
X-Received: by 2002:a05:6000:11c4:: with SMTP id
 i4mr4682337wrx.277.1573157832439; 
 Thu, 07 Nov 2019 12:17:12 -0800 (PST)
Received: from localhost.localdomain ([95.147.198.88])
 by smtp.gmail.com with ESMTPSA id d11sm3215162wrn.28.2019.11.07.12.17.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 12:17:11 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: gregkh@google.com
Subject: [PATCH 07/10] md: fix for divide error in status_resync
Date: Thu,  7 Nov 2019 20:16:59 +0000
Message-Id: <20191107201702.27023-7-lee.jones@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191107201702.27023-1-lee.jones@linaro.org>
References: <20191107201702.27023-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_121713_932509_C34A75C6 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Song Liu <songliubraving@fb.com>,
 linux-kernel@vger.kernel.org, Mariusz Tkaczyk <mariusz.tkaczyk@intel.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mariusz Tkaczyk <mariusz.tkaczyk@intel.com>

[ Upstream commit 9642fa73d073527b0cbc337cc17a47d545d82cd2 ]

Stopping external metadata arrays during resync/recovery causes
retries, loop of interrupting and starting reconstruction, until it
hit at good moment to stop completely. While these retries
curr_mark_cnt can be small- especially on HDD drives, so subtraction
result can be smaller than 0. However it is casted to uint without
checking. As a result of it the status bar in /proc/mdstat while stopping
is strange (it jumps between 0% and 99%).

The real problem occurs here after commit 72deb455b5ec ("block: remove
CONFIG_LBDAF"). Sector_div() macro has been changed, now the
divisor is casted to uint32. For db = -8 the divisior(db/32-1) becomes 0.

Check if db value can be really counted and replace these macro by
div64_u64() inline.

Signed-off-by: Mariusz Tkaczyk <mariusz.tkaczyk@intel.com>
Signed-off-by: Song Liu <songliubraving@fb.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Change-Id: If2744cff07135d0c1fa5f55bcec36ab2137b841e
---
 drivers/md/md.c | 36 ++++++++++++++++++++++--------------
 1 file changed, 22 insertions(+), 14 deletions(-)

diff --git a/drivers/md/md.c b/drivers/md/md.c
index ba201db6afce..9a84a74747f8 100644
--- a/drivers/md/md.c
+++ b/drivers/md/md.c
@@ -6701,9 +6701,9 @@ static void status_unused(struct seq_file *seq)
 static void status_resync(struct seq_file *seq, struct mddev *mddev)
 {
 	sector_t max_sectors, resync, res;
-	unsigned long dt, db;
-	sector_t rt;
-	int scale;
+	unsigned long dt, db = 0;
+	sector_t rt, curr_mark_cnt, resync_mark_cnt;
+	int scale, recovery_active;
 	unsigned int per_milli;
 
 	if (mddev->curr_resync <= 3)
@@ -6759,22 +6759,30 @@ static void status_resync(struct seq_file *seq, struct mddev *mddev)
 	 * db: blocks written from mark until now
 	 * rt: remaining time
 	 *
-	 * rt is a sector_t, so could be 32bit or 64bit.
-	 * So we divide before multiply in case it is 32bit and close
-	 * to the limit.
-	 * We scale the divisor (db) by 32 to avoid losing precision
-	 * near the end of resync when the number of remaining sectors
-	 * is close to 'db'.
-	 * We then divide rt by 32 after multiplying by db to compensate.
-	 * The '+1' avoids division by zero if db is very small.
+	 * rt is a sector_t, which is always 64bit now. We are keeping
+	 * the original algorithm, but it is not really necessary.
+	 *
+	 * Original algorithm:
+	 *   So we divide before multiply in case it is 32bit and close
+	 *   to the limit.
+	 *   We scale the divisor (db) by 32 to avoid losing precision
+	 *   near the end of resync when the number of remaining sectors
+	 *   is close to 'db'.
+	 *   We then divide rt by 32 after multiplying by db to compensate.
+	 *   The '+1' avoids division by zero if db is very small.
 	 */
 	dt = ((jiffies - mddev->resync_mark) / HZ);
 	if (!dt) dt++;
-	db = (mddev->curr_mark_cnt - atomic_read(&mddev->recovery_active))
-		- mddev->resync_mark_cnt;
+
+	curr_mark_cnt = mddev->curr_mark_cnt;
+	recovery_active = atomic_read(&mddev->recovery_active);
+	resync_mark_cnt = mddev->resync_mark_cnt;
+
+	if (curr_mark_cnt >= (recovery_active + resync_mark_cnt))
+		db = curr_mark_cnt - (recovery_active + resync_mark_cnt);
 
 	rt = max_sectors - resync;    /* number of remaining sectors */
-	sector_div(rt, db/32+1);
+	rt = div64_u64(rt, db/32+1);
 	rt *= dt;
 	rt >>= 5;
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
