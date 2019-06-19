Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC544BFA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+sKPTS8Q9g1ZQ9vTc5BSH+taZi9bJ3C4umPB6ZjOX18=; b=tnEUGFnGTJHxRkzvX+SMJ0ZkLF
	zy9+jJ69aldMxTa97vYuL8od+DYHF22/OqPsx1uhJhqjxUrp7wM2w7zepf7HZBY+LXNr9LzXR9adp
	3E2Ugc55AdyeiA8slmQEuvESd5QxWhO7+gnblLgxIsf79TGU2yw9Q5gWaOf9brytvk/WK9OSJ5ezy
	d1MRkzesEWMRvXZh9CU5yOF6prI7H5xlyFuN+M2h2Y7dfQiJopAK2rBOJ61lyODemdreAgYU3lqxn
	B8ljNtGX+bfu6A7bi9rltMa09Djw80z8OmTGAquAsP9jg3XZ8Co9wQwzOAvV3WQc6PO+MPKxLLXCI
	Vub4mf0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeQQ-0000S9-TI; Wed, 19 Jun 2019 17:31:10 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePB-00071W-D1
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:29:54 +0000
Received: by mail-pg1-x541.google.com with SMTP id v11so48908pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qltR8cfVnuvR/vnmhmjDlPUX6JMRjkKXDYkgNNI9oR0=;
 b=bDdm8XwtacWvLf9KoGjr7mQPFlpr7qp3Yev9o7XnudlvpCMGwMGpIFUq3c8jJcX+qS
 zSxxUknUKriKvi494yk8jwab6c9/Ns50uY3EQ+S+T27UI/kbDQ6co6lUf72e6I0X6Ag8
 frX6C2a1L8sHJpQ5/CBQBnks05yJod2C1alZ0Wsduu92TXP4cxg3nVE7TWTPNDGFmHLc
 Rr6dyH014fyN/eP/hFQXaOuKdBlxQKhuolExIKolytddMEEl7Ld1axfMTCdoIhU3rYZM
 bSNJwWEnMn3Grz0dpZDJ8YiwFBFaL4LVEaudQMqVFaXN0mTQaj7M4Udvp+o3j01xjo6X
 ZLZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qltR8cfVnuvR/vnmhmjDlPUX6JMRjkKXDYkgNNI9oR0=;
 b=XftsTxe4/MGq9n+IbsOiPcX5R6XrsmY2R+S9v/BjLocqGKdJGnj2gFRIrK5C2GJVMx
 fBzItyaU4qzp+S4oziJKkwN5jpYHAZIZN60AWf6HiW0fZpmnL9Wv/UVHp9aDUXfGs5vh
 49bIyeJiDt8RwabbyB2D6vEKqDfYZSwP0Rs04z7Ov5Ry9ynIf4J/KMS/Ux9/L/FIwsX+
 GjIABjX6A1valkr/P+qBuDsaZErTcmizw4GG0xDR/k10SnIPB7zp7M3CaRWP2lHn0wbO
 BqassVD0dccYsy1VcxLgUwf3VDusceEVMoMXrM/l4cHRZD3/hMXDb0c8I8nV5Ypmd8nq
 1sIA==
X-Gm-Message-State: APjAAAWKdxXtJ/QwtfKJtpjttxuUziH51opFLywYpJY/CQDz/peVFfwS
 CdJo1iMRyfV4QTQY5pml8tjKTg==
X-Google-Smtp-Source: APXvYqw9TAAW6kjBKuo7BtHsWKko/yqBtDqxA8WyxomxQQtoGcAXnIVVNhx2R4/E1WvpNDKiAMm2/A==
X-Received: by 2002:a63:4e10:: with SMTP id c16mr8575609pgb.214.1560965391976; 
 Wed, 19 Jun 2019 10:29:51 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.29.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:29:51 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 01/45] coresight: etb10: Properly set AUX buffer head in
 snapshot mode
Date: Wed, 19 Jun 2019 11:29:05 -0600
Message-Id: <20190619172949.4522-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_102953_440245_B686C12B 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Unify amongst sink drivers how the AUX ring buffer head is communicated
to user space.  That way the same algorithm in user space can be used to
determine where the latest data is and how much of it to access.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Tested-by: Leo Yan <leo.yan@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etb10.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
index 4ee4c80a4354..60e753b1768d 100644
--- a/drivers/hwtracing/coresight/coresight-etb10.c
+++ b/drivers/hwtracing/coresight/coresight-etb10.c
@@ -548,13 +548,14 @@ static unsigned long etb_update_buffer(struct coresight_device *csdev,
 	writel_relaxed(0x0, drvdata->base + ETB_RAM_WRITE_POINTER);
 
 	/*
-	 * In snapshot mode we have to update the handle->head to point
-	 * to the new location.
+	 * In snapshot mode we simply increment the head by the number of byte
+	 * that were written.  User space function  cs_etm_find_snapshot() will
+	 * figure out how many bytes to get from the AUX buffer based on the
+	 * position of the head.
 	 */
-	if (buf->snapshot) {
-		handle->head = (cur * PAGE_SIZE) + offset;
-		to_read = buf->nr_pages << PAGE_SHIFT;
-	}
+	if (buf->snapshot)
+		handle->head += to_read;
+
 	__etb_enable_hw(drvdata);
 	CS_LOCK(drvdata->base);
 out:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
