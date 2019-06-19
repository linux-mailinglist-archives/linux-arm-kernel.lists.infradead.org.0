Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E53564C003
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+Rm6Lll5Wss4K714CrfmfMfsLslb/P7xm5UNw1baPJ8=; b=dc1eETHgt8SoIHPCiXtpekYUI7
	o+q6F45r36ipRpRdDL1+0QHBs8QzMP9RTliobUJ2BFbcE7bFeOhxikWwmhNK/9pzknCePR2/c/nlT
	jOy5WSKkK69QWEVK6bCOWmpnTTACEUIklk7Jtl4UcxF5gMCnT5u9tfhdrGRF0Yr92Lhzps1FItF6L
	+KNaduPjR1dmX0v81gShuqpAF5WytDXa/S1sfGklZNXW9OFCIUDMIAzz80xYVrBsSw/P4OAol1jkt
	mh6x14aopCTJY+GjVIoo5KaoeU5ONJ2/HR5L2ArbkBuEdYvd1PWvVlJevIrT1IHPbd6edHO/3nyaP
	hduvBqaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdec8-0006ah-BP; Wed, 19 Jun 2019 17:43:16 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePk-0000Bz-8U
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:37 +0000
Received: by mail-pl1-x644.google.com with SMTP id m7so88744pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QfxiSC10lT2kIdBoLtEEdrvPoomT9IvwdXsx/Fv3PE8=;
 b=XraDcixbl8h/NkohNV2nfG35sBDr0DZ2cSITPZnIa74aMsdfJHiDZuUId2iQVNTC9o
 Yirw9nHY0MJjcOLAWNB/QrYV7YAflDbVsCxf77+I9XCB5G/QhcQnE+HjhKBKedkWRHIu
 zUquCKHidxTWR5fGAO79yKKblChqQEuE3K3+DiwiEq5dxU1MZMKH8tEGFmp+E/hXZjZi
 PqP2jOJAtgN39O6mqprFYFnoREi0kQcwspinhKTSeX+9tUsfpcaaRJPeROReA1ajZz0s
 3TKVXnkOk2+gZFdVFPt4cm+12fSlMz7DvUKvuAXsenHvv+FOet/P4rbbJFVpifDVtgI9
 dcFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QfxiSC10lT2kIdBoLtEEdrvPoomT9IvwdXsx/Fv3PE8=;
 b=eb5BcM7/X87IOkjJ4VlCI3YBoyLw0zhCJDHSOV7G2pp/Q4YNEQ+g4CpxD6kyHnwJjJ
 mrNNzCwcrUwjLcsEySYLYf+Gi0yAdtHz1ZQwxT2qdW2DPtzGawkdbKU28VjfwgVTqLIp
 B2DCVSWx5efd0NgfHwLbKJm58SijAUXGMAFhaiXVNWG5haCzvOYXfnnEw8/xk3oqoyDN
 cO1C+l7lLd86ShvdKSSRJgs9nOOIWqPVLJuwx+klv7TrtVcr9VDd+T0f1KRmQP6WovMq
 UJ4q/ReYYx0v/wruD2tu3ZWGuLiPaarnWi/JGM/WLIWe62tl8aJTB9hFR4OziDL2UMuM
 pSxg==
X-Gm-Message-State: APjAAAXFrB4zoclAjwAKQI59OkaH9XKlzCJb98DbdfbByFNHKYz2ACS6
 zyfn/2QC85y7XFMWV45QJCfDrQ==
X-Google-Smtp-Source: APXvYqzvFYMxudXhqXZSGVnT9cZFpUcPOyCa64iYGpJprmqz0jdGAFN/MbgpQNtLUWG6Xb8dRIuvOQ==
X-Received: by 2002:a17:902:c83:: with SMTP id
 3mr62342581plt.326.1560965426835; 
 Wed, 19 Jun 2019 10:30:26 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:26 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 38/45] coresight: tmc-etr: alloc_perf_buf: Do not call
 smp_processor_id from preemptible
Date: Wed, 19 Jun 2019 11:29:42 -0600
Message-Id: <20190619172949.4522-39-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103028_471942_A73BBA69 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

From: Suzuki K Poulose <suzuki.poulose@arm.com>

During a perf session we try to allocate buffers on the "node" associated
with the CPU the event is bound to. If it is not bound to a CPU, we
use the current CPU node, using smp_processor_id(). However this is unsafe
in a pre-emptible context and could generate the splats as below :

 BUG: using smp_processor_id() in preemptible [00000000] code: perf/1743
 caller is tmc_alloc_etr_buffer+0x1bc/0x1f0
 CPU: 1 PID: 1743 Comm: perf Not tainted 5.1.0-rc6-147786-g116841e #344
 Hardware name: ARM LTD ARM Juno Development Platform/ARM Juno Development Platform, BIOS EDK II Feb  1 2019
 Call trace:
  dump_backtrace+0x0/0x150
  show_stack+0x14/0x20
  dump_stack+0x9c/0xc4
  debug_smp_processor_id+0x10c/0x110
  tmc_alloc_etr_buffer+0x1bc/0x1f0
  etm_setup_aux+0x1c4/0x230
  rb_alloc_aux+0x1b8/0x2b8
  perf_mmap+0x35c/0x478
  mmap_region+0x34c/0x4f0
  do_mmap+0x2d8/0x418
  vm_mmap_pgoff+0xd0/0xf8
  ksys_mmap_pgoff+0x88/0xf8
  __arm64_sys_mmap+0x28/0x38
  el0_svc_handler+0xd8/0x138
  el0_svc+0x8/0xc

Use NUMA_NO_NODE hint instead of using the current node for events
not bound to CPUs.

Fixes: 22f429f19c4135d51e9 ("coresight: etm-perf: Add support for ETR backend")
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 7c81f634ecb4..5d2bf6d18961 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1184,14 +1184,11 @@ static struct etr_buf *
 alloc_etr_buf(struct tmc_drvdata *drvdata, struct perf_event *event,
 	      int nr_pages, void **pages, bool snapshot)
 {
-	int node, cpu = event->cpu;
+	int node;
 	struct etr_buf *etr_buf;
 	unsigned long size;
 
-	if (cpu == -1)
-		cpu = smp_processor_id();
-	node = cpu_to_node(cpu);
-
+	node = (event->cpu == -1) ? NUMA_NO_NODE : cpu_to_node(event->cpu);
 	/*
 	 * Try to match the perf ring buffer size if it is larger
 	 * than the size requested via sysfs.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
