Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A03DD1BE2B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 17:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ITnhpYTZU9Zmto0679Lly3wtt1m/Ssm7sN4SA+N+V7c=; b=nFZflS2ygzZKLY
	qCsz2H3Gu5MsGQ2Kfgov34WaQDlSL3TmM5imiZjosaTx18U82M7YfYuXmdW3StEP0JC5NeYkxMx8F
	oTqRc09/FbfkA0gDmkXgSEJQj53WNbiZt6eGLBkhNa+7bgW7X4oIN6t2cM3GLu0trrRwSUkGX0FnJ
	a3wblpqXipqTcqqM6LblRlMG/6I+u2wOKHaomFMTHfajvpV+ECKh78XyOFVZmz8X+WCJo/JKJTj9n
	KXHyD4eiqBeUakpOz16YNc6l6qJ428Ltc89J9Nm1wpRF+pKEMZqDvPUVrfXvwCih8ygbsaI5YzAQL
	ev7ysmZh8n4xDwkQQY5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jToe8-0007Bv-6c; Wed, 29 Apr 2020 15:29:12 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTodw-0007Aj-SG; Wed, 29 Apr 2020 15:29:02 +0000
Received: by mail-wm1-x342.google.com with SMTP id r26so2499106wmh.0;
 Wed, 29 Apr 2020 08:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zpYTppJl8xITcXNjFG3mhRJQ4BqNT4t6jdmu0jX6CAo=;
 b=FfliAmS4HJ/Z/WwJPni1VOzF54pCWLK3EY2kn71GM/NZp04TRYN2yispFK26xhVt/N
 gh+KDbou36najGd579iZnZTcSPqKelQPmlTwCADD58HJx1KZvZZ3doQ27CNYGxbP3FtQ
 GqOSQKrdoft0oPf7Y7LBeknYJRC2fKcImjjfRD6Mql+ogL0MzmkIVWNngnfU4adlBoUM
 C2zPOmrdHHiPkQfORd+i3xQBGl6X6f+bEMHaAcetE7pFylDfb58NkF1BmRWgIB9iOclc
 UTKt+L+r+/Bh0QRxn2yDMoBAQkr0u5W792w5audiiouP1ufApBFdi/pZaH6zP/zfQkeT
 lWmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zpYTppJl8xITcXNjFG3mhRJQ4BqNT4t6jdmu0jX6CAo=;
 b=knC1pnOe7Yyk4UTDBhZznIHm4MD3vUkiJRG+sgwpsumRFxZzu8XbYzHAtdYmyuLIHs
 yMe7e8RyVK8JiOcXzbjbyXQzrerg22ZK6+/GqMI6/kIN0gaWDgS1/yEQWvyMRVy8zTDd
 M/Bqk+nJyxL4FdYRne5TF0Mhp7dRw6Rh1QHkQUOV60aCqswopdxfgIcjc2vf+putqbvs
 RJnOPB5+yX8BBDZ4HqpIntVHHzyZaAAwSC6f/9JDHy936rpDKBhJhWl4hEWnOVP5VsQD
 fvBPzQpprRZdc0WPjJM5xEyQRASUWZGnqJYn0A0QhU9YnwGEOql/32NpUlgI30CXh/Yv
 w7pQ==
X-Gm-Message-State: AGi0Puaw7zTqM5w9Y/xVhKtS+WukCpVv58ksA3xjZ+aeNWQvu1rF4nZ+
 HsYhJDlXGvDbwKrNEw1DUEk=
X-Google-Smtp-Source: APiQypKEzDUYyz/kdE+s5u7ch9nl4qGxuitJCLUJD55ILxS1BoEeyZEEWjjUjJ/RuSPbm1mVdyxXag==
X-Received: by 2002:a1c:5403:: with SMTP id i3mr4144622wmb.10.1588174138782;
 Wed, 29 Apr 2020 08:28:58 -0700 (PDT)
Received: from localhost.localdomain ([188.24.130.199])
 by smtp.gmail.com with ESMTPSA id 62sm21775642wro.65.2020.04.29.08.28.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 08:28:58 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Subject: [PATCH v3 1/1] dma: actions: Fix lockdep splat for owl-dma
Date: Wed, 29 Apr 2020 18:28:56 +0300
Message-Id: <2f3e665270b8d170ea19cc66c6f0c68bf8fe97ff.1588173497.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_082900_938211_F75525BB 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
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
Cc: linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the kernel is built with lockdep support and the owl-dma driver is
used, the following message is shown:

[    2.496939] INFO: trying to register non-static key.
[    2.501889] the code is fine but needs lockdep annotation.
[    2.507357] turning off the locking correctness validator.
[    2.512834] CPU: 0 PID: 12 Comm: kworker/0:1 Not tainted 5.6.3+ #15
[    2.519084] Hardware name: Generic DT based system
[    2.523878] Workqueue: events_freezable mmc_rescan
[    2.528681] [<801127f0>] (unwind_backtrace) from [<8010da58>] (show_stack+0x10/0x14)
[    2.536420] [<8010da58>] (show_stack) from [<8080fbe8>] (dump_stack+0xb4/0xe0)
[    2.543645] [<8080fbe8>] (dump_stack) from [<8017efa4>] (register_lock_class+0x6f0/0x718)
[    2.551816] [<8017efa4>] (register_lock_class) from [<8017b7d0>] (__lock_acquire+0x78/0x25f0)
[    2.560330] [<8017b7d0>] (__lock_acquire) from [<8017e5e4>] (lock_acquire+0xd8/0x1f4)
[    2.568159] [<8017e5e4>] (lock_acquire) from [<80831fb0>] (_raw_spin_lock_irqsave+0x3c/0x50)
[    2.576589] [<80831fb0>] (_raw_spin_lock_irqsave) from [<8051b5fc>] (owl_dma_issue_pending+0xbc/0x120)
[    2.585884] [<8051b5fc>] (owl_dma_issue_pending) from [<80668cbc>] (owl_mmc_request+0x1b0/0x390)
[    2.594655] [<80668cbc>] (owl_mmc_request) from [<80650ce0>] (mmc_start_request+0x94/0xbc)
[    2.602906] [<80650ce0>] (mmc_start_request) from [<80650ec0>] (mmc_wait_for_req+0x64/0xd0)
[    2.611245] [<80650ec0>] (mmc_wait_for_req) from [<8065aa10>] (mmc_app_send_scr+0x10c/0x144)
[    2.619669] [<8065aa10>] (mmc_app_send_scr) from [<80659b3c>] (mmc_sd_setup_card+0x4c/0x318)
[    2.628092] [<80659b3c>] (mmc_sd_setup_card) from [<80659f0c>] (mmc_sd_init_card+0x104/0x430)
[    2.636601] [<80659f0c>] (mmc_sd_init_card) from [<8065a3e0>] (mmc_attach_sd+0xcc/0x16c)
[    2.644678] [<8065a3e0>] (mmc_attach_sd) from [<8065301c>] (mmc_rescan+0x3ac/0x40c)
[    2.652332] [<8065301c>] (mmc_rescan) from [<80143244>] (process_one_work+0x2d8/0x780)
[    2.660239] [<80143244>] (process_one_work) from [<80143730>] (worker_thread+0x44/0x598)
[    2.668323] [<80143730>] (worker_thread) from [<8014b5f8>] (kthread+0x148/0x150)
[    2.675708] [<8014b5f8>] (kthread) from [<801010b4>] (ret_from_fork+0x14/0x20)
[    2.682912] Exception stack(0xee8fdfb0 to 0xee8fdff8)
[    2.687954] dfa0:                                     00000000 00000000 00000000 00000000
[    2.696118] dfc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    2.704277] dfe0: 00000000 00000000 00000000 00000000 00000013 00000000

The obvious fix would be to use 'spin_lock_init()' on 'pchan->lock'
before attempting to call 'spin_lock_irqsave()' in 'owl_dma_get_pchan()'.

However, according to Manivannan Sadhasivam, 'pchan->lock' was supposed
to only protect 'pchan->vchan' while 'od->lock' does a similar job in
'owl_dma_terminate_pchan'.

Therefore, this patch will simply substitute 'pchan->lock' with 'od->lock'
and removes the 'lock' attribute in 'owl_dma_pchan' struct.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
Changes in v3:
* Get rid of the kerneldoc comment for the removed struct attribute
* Add the Reviewed-by tag in the commit message

Changes in v2:
* Improve the fix as suggested by Manivannan Sadhasivam: substitute
  'pchan->lock' with 'od->lock' and get rid of the 'lock' attribute in
  'owl_dma_pchan' struct
* Update the commit message to reflect the changes

 drivers/dma/owl-dma.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/dma/owl-dma.c b/drivers/dma/owl-dma.c
index c683051257fd..66ef70b00ec0 100644
--- a/drivers/dma/owl-dma.c
+++ b/drivers/dma/owl-dma.c
@@ -175,13 +175,11 @@ struct owl_dma_txd {
  * @id: physical index to this channel
  * @base: virtual memory base for the dma channel
  * @vchan: the virtual channel currently being served by this physical channel
- * @lock: a lock to use when altering an instance of this struct
  */
 struct owl_dma_pchan {
 	u32			id;
 	void __iomem		*base;
 	struct owl_dma_vchan	*vchan;
-	spinlock_t		lock;
 };
 
 /**
@@ -437,14 +435,14 @@ static struct owl_dma_pchan *owl_dma_get_pchan(struct owl_dma *od,
 	for (i = 0; i < od->nr_pchans; i++) {
 		pchan = &od->pchans[i];
 
-		spin_lock_irqsave(&pchan->lock, flags);
+		spin_lock_irqsave(&od->lock, flags);
 		if (!pchan->vchan) {
 			pchan->vchan = vchan;
-			spin_unlock_irqrestore(&pchan->lock, flags);
+			spin_unlock_irqrestore(&od->lock, flags);
 			break;
 		}
 
-		spin_unlock_irqrestore(&pchan->lock, flags);
+		spin_unlock_irqrestore(&od->lock, flags);
 	}
 
 	return pchan;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
