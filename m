Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CB41BC076
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:02:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ezqVrSuRqqrhotLAe2C3rcXkDC/EnKgtg3I8G4dpDWE=; b=tCnSj1YAdRsoYz
	x72fA+Ur0FrSgLYeRw127uckjJryvWBQ4/K0w4+RgRKogl2URzqAKZeGwN6g/WZxEP7hSWRBZR7A3
	gOGDRm3IbcPR9acYdC1v4dSGEmSe4SE/DSeDd/SZfriHgiOv1f3EJpbvZstS2OKnBQIRXWmCUZiKD
	fql4aVtomdS2alY6zInIKy4xyWWyehTe5obfYrDHV/x+h4ri83pQ+mWRblf4eY4m/mNyctbPEegEY
	ViplAIPM/sP7P7I1KY8aq9N3JHL25C6V3bnzGtRGGyYzDt07oCrIkNxsxIwIoSJpuKD1IqLrDu+la
	YwoLVlx+kwO/A7CDB9sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQoi-0006JK-8J; Tue, 28 Apr 2020 14:02:32 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQoY-0006HP-V2
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:02:24 +0000
Received: by mail-wr1-x442.google.com with SMTP id x18so24768371wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 07:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C9HT9T3sVHrOZBKILD60eSWOeR7JckWoGT8oUYZeX9Q=;
 b=CcrNKsQmYZEf3NJD8agcFLjHTZi1rvPaBCHnAdcj+baOML9Q5IG0Txpw1bJYzdID91
 JT9gP8oPNHy1fwNWFTd+Hi+gOTxz4wW97RrhqWKk2dPTJi4xs3TaGley4t5T6A+okJ9C
 vHn3dAHEWrW53/MUVoaRq/be5DRfBUtZgGtRE8mH4G6NagVOU05HSBH5XvBCjC161Z/W
 l6A5mJ/RM+zRKhYV22LibAL2kxcd9Tj59LVUaqha/TPU9HXaOPxJdXDRkHKbH5hKmg8x
 6J7X/SaK8sQfvfCjbc6WKb81cTzPwsKLcQ5J/WjL/3InRPRbXTYo12eSW3rQPaV4dGCX
 k0fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C9HT9T3sVHrOZBKILD60eSWOeR7JckWoGT8oUYZeX9Q=;
 b=pqS4JK+hBsTiKSFXllswDCi0FL4uYdY58ol4yzLu7FyCC7WUxVLpcUpfkj2BmiFh4A
 pBhGgcMlZHZ9A9fk25EntsSz7wXKv3u4TTURFqfkA9LPdX/JDj02YKM5tKKpdECaIZQr
 WMgUBwJ/pP5xIFvMoOSXpLlTG3bX6Uyymkb+fIFd6nm6LcdNkFL+cQLR97huYZeVgKc4
 Bx/GnljqM8DZ6+MqAVAB8R02lBfVg1raksiMUhyWNn6fyHPklk+8Ztpeqy4eOx4thYI5
 5aMTyLFlVoxNjvQrRJ7jsVA/s6N3yDvPN4PsLTtyCkNUCZYuSGt1ERiAZMePj8eCbNya
 AAbw==
X-Gm-Message-State: AGi0PuZcMH8RJxqrF0J2Wc1UGtasRd0mXEuNrmguRnNNbH+ZMDdZf9xM
 qVtzUPH2DxRbl54JIaVVGHU=
X-Google-Smtp-Source: APiQypLRZbfVvn+LjlIVs1TeRB/k7VtV33DqhcgyNIGIp4giTYfqrW3Di+Sa7+pgoPyR6/3Lm9NLpg==
X-Received: by 2002:a5d:4712:: with SMTP id y18mr34207544wrq.306.1588082540040; 
 Tue, 28 Apr 2020 07:02:20 -0700 (PDT)
Received: from localhost.localdomain ([188.24.130.199])
 by smtp.gmail.com with ESMTPSA id b191sm3788677wmd.39.2020.04.28.07.02.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 07:02:19 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 1/1] dma: actions: Fix lockdep splat for owl-dma
Date: Tue, 28 Apr 2020 17:02:17 +0300
Message-Id: <7d503c3dcac2b3ef29d4122a74eacfce142a8f98.1588069418.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_070223_000672_4BAFC94B 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dmaengine@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the kernel is build with lockdep support and the owl-dma driver is
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

The required fix is to use spin_lock_init() on the pchan lock before
attempting to call any spin_lock_irqsave() in owl_dma_get_pchan().

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
---
 drivers/dma/owl-dma.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/dma/owl-dma.c b/drivers/dma/owl-dma.c
index c683051257fd..d9d0f0488e70 100644
--- a/drivers/dma/owl-dma.c
+++ b/drivers/dma/owl-dma.c
@@ -1131,6 +1131,7 @@ static int owl_dma_probe(struct platform_device *pdev)
 
 		pchan->id = i;
 		pchan->base = od->base + OWL_DMA_CHAN_BASE(i);
+		spin_lock_init(&pchan->lock);
 	}
 
 	/* Init virtual channel */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
