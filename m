Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E491415D2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 05:26:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f72t1KaDsB5f+zgA/l7gGW2bm4jWFSXuK5xOH6UnK4E=; b=TOODX9AzfOYlQo
	6P75L3RE6rvaZKDuLrrOPyjpb5SgS/cfOLxxyhPPaBgNW8O4g8P4qWaj8xYi1/zLYTiBCwkmJ/NlE
	bo+dtd/Fzby5ssqWt2I4MkUw/pg480SWP+tgt7mGUw6659STNYmiqwIVaaRrc2eGZy5YUH7F50ZvV
	xdGU7HbO7RS3I6QmQ8F5kDoLQUkFE18pz0Ayd1YUVpt9mgIUE1wZI4dFWDGNL/+y6dH30gF9PbCKc
	hZ5Bk43yecqHwDhzmUpMml1k32G97xC6kPU/649/5YUP5arg6yMoOi9l3BRhb32n7FRFyAKY9HVws
	xlSxAklS05+pM+MsMrhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isfg7-00056y-Hk; Sat, 18 Jan 2020 04:25:43 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isfg0-00056O-41
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Jan 2020 04:25:37 +0000
Received: by mail-pj1-x1044.google.com with SMTP id kx11so4062509pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 20:25:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YHBJFZwYhK7Tmr8esHxqJUtoRn8WnZqTo+H+EnwYrJo=;
 b=Ta7ULbJ9wR6kMfZta5m7PrCEQqG28jhlvt1bjqZZFQJSYf4GxA71p6YbO45HBWUSgf
 MfbwElMbBtq5KSBmCdrgdcU2bAn5Ktkj1vv0Ic/RRKhl1A1hcbZnq9K4XHnlqR8usnHC
 SRtKpDxusODzswKsqwDzJajlJoZcSUPH3/eSXUj/FS+fHIWtJS5ATuwWad48pIq/ClvE
 FEss3YD02wwPEZ0Vw7fY66T88s2r6svVRxfZ9LTAhzOHC+Zf0U7dsjuv2a5VhwlMsjn2
 cy7gmeZAYdBcash7krqzGBtluNuTwaB3WM3Gq1P8Qovfm4KuDd3K/iGKwgmjzx+w32Wb
 yQ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YHBJFZwYhK7Tmr8esHxqJUtoRn8WnZqTo+H+EnwYrJo=;
 b=UZJAC/UNGXcK9/1tyAww34zTL3+4c2vaiJuMTrYksV+ArExG2hb0g7F9RhEHq4TZg/
 uzaf8Ve3nqW6Ubr3dKl5GCoWl7pQuDdDiX9mBdY1jaiWNaETxpbMYt9puBknhqqFnYLQ
 GZKysLoqSSqe/pthZvGHgxqo6Z/QJnvdjMXxcp3kDBHsJwtH250EzFO7ioj3RWSn2gFo
 KRXy3epHdWjQU3AICMFKO0UAlTOs4flcowhGRg/YSFptmvMUVLvOGVTIMCB8N9JZjx1W
 CiArObAJI1gTAY4HpmtLALwqs8FhTBReYLqWvI9qkzGt12HiEI5pSbBiYyHY7b7aUPQG
 hZIA==
X-Gm-Message-State: APjAAAVa2w4DcJst1kjDrgnkpG/Ik1QfB+mGaHPIo4DjdGZi6SQjaeey
 Kj4PqEeTEhDag5XREiv1sNU=
X-Google-Smtp-Source: APXvYqzfq2rQlvfACHCOS+RwFwK6woYWos+WSMvOBXpfFgrS0GmGE6BLdwKkUxdrfeti3s13++vWpQ==
X-Received: by 2002:a17:90b:4398:: with SMTP id
 in24mr10196469pjb.29.1579321535509; 
 Fri, 17 Jan 2020 20:25:35 -0800 (PST)
Received: from localhost.localdomain ([146.196.37.181])
 by smtp.googlemail.com with ESMTPSA id r37sm8995812pjb.7.2020.01.17.20.25.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 20:25:34 -0800 (PST)
From: Amol Grover <frextrite@gmail.com>
To: Santosh Shilimkar <ssantosh@kernel.org>,
	Olof Johansson <olof@lixom.net>
Subject: [PATCH v2] drivers: soc: ti: knav_qmss_queue: Pass lockdep expression
 to RCU lists
Date: Sat, 18 Jan 2020 09:54:34 +0530
Message-Id: <20200118042433.4968-1-frextrite@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_202536_187519_F4A142F2 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frextrite[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "Paul E . McKenney" <paulmck@kernel.org>, Amol Grover <frextrite@gmail.com>,
 santosh.shilimkar@oracle.com, linux-kernel@vger.kernel.org, soc@kernel.org,
 arm@kernel.org, Madhuparna Bhowmik <madhuparnabhowmik04@gmail.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

inst->handles is traversed using list_for_each_entry_rcu
outside an RCU read-side critical section but under the protection
of knav_dev_lock.

Hence, add corresponding lockdep expression to silence false-positive
lockdep warnings, and harden RCU lists.

Add macro for the corresponding lockdep expression.

Signed-off-by: Amol Grover <frextrite@gmail.com>
---
v2:
- Remove rcu_read_lock_held() from lockdep expression since it is
  implicitly checked for.

 drivers/soc/ti/knav_qmss_queue.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/ti/knav_qmss_queue.c b/drivers/soc/ti/knav_qmss_queue.c
index 1ccc9064e1eb..37f3db6c041c 100644
--- a/drivers/soc/ti/knav_qmss_queue.c
+++ b/drivers/soc/ti/knav_qmss_queue.c
@@ -25,6 +25,8 @@
 
 static struct knav_device *kdev;
 static DEFINE_MUTEX(knav_dev_lock);
+#define knav_dev_lock_held() \
+	lockdep_is_held(&knav_dev_lock)
 
 /* Queue manager register indices in DTS */
 #define KNAV_QUEUE_PEEK_REG_INDEX	0
@@ -52,8 +54,9 @@ static DEFINE_MUTEX(knav_dev_lock);
 #define knav_queue_idx_to_inst(kdev, idx)			\
 	(kdev->instances + (idx << kdev->inst_shift))
 
-#define for_each_handle_rcu(qh, inst)			\
-	list_for_each_entry_rcu(qh, &inst->handles, list)
+#define for_each_handle_rcu(qh, inst)				\
+	list_for_each_entry_rcu(qh, &inst->handles, list,	\
+				knav_dev_lock_held())
 
 #define for_each_instance(idx, inst, kdev)		\
 	for (idx = 0, inst = kdev->instances;		\
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
