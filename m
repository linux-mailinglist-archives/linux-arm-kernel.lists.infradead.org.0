Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6754C011
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:44:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I3kNfH7AEn9Q2mcGoXiLSeK083Dx/fz58N/mPL27m10=; b=d65+cyOvQd/jkrQqlSODZMCmNv
	lt4eCSeW/v72y5/gJkPKHFBDvszD3Y1qv+l+K2sJrNdD4/CrbJ08rQZb8c/o/juiRC12jUQDR+VFc
	MnRU7qBS/FSurnqn89G4udbdqt4bwAwUtsKljlScR7PQMNZzYt0oQ3hGkDRxIOZQErI/BBnj6tyZs
	nhTWx0eyo8lwr7hibicrvDXSnYxkcVYLWTDlN4PMjUNvDlaPYWfEVY5eczvY1Hb42KV++oJ+ZPqRZ
	6hkptDuBWY5y1r5Gv61P5zaKQYj1BCHO6bZMYy3E07gZm6JR95MFt68CJCEX/OR/oOav2BC//uOw7
	BXifHC2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdedl-0008Op-6C; Wed, 19 Jun 2019 17:44:57 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePu-0000Je-31
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:42 +0000
Received: by mail-pg1-x542.google.com with SMTP id 196so46774pgc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UC0Qh+uUJVyhwc88NCYhgwMpRvPxciHY87Ex0aW5HaU=;
 b=qaLf13jk+477hT7eRzJ6BA2cbH8hzJOacy+9bDkAzmUtJS+GkxOk1SHZiHVbDsdkBB
 hybmfo4leNktsBRk8HvD66CTq+G2UfJhhB3/7ULVyZzvk8fbEqWPV5uKnSI/t3d9JMuI
 PrRi59JyVcxVUXJV5/Sc4l3mX9MShuGyvkW0grVecQKjY3R/8pYHo56RYl4BmgLzuyD3
 tontbQUq0DamVbPeRKl+4WGhXYdodA41QqvUZLjHFQ2CMgV90uCEBEkJpExHs5DQp6Ww
 JEcT/u++Kz+wOtvPAPV5QRPV+Woobdo4c4e6JzL9psb5iczi/sEUyYtQBKc16o1ioe57
 KslA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UC0Qh+uUJVyhwc88NCYhgwMpRvPxciHY87Ex0aW5HaU=;
 b=akQggIGTs3TRFFe4597+mHAilKORbEWCMwD11GfqBSNslVFAyn+S9QhUCfWPGXuEOx
 2ZIOpEhDhFzVuPKMqK0fqV/ntSHg/3NwFF/tDnx1tpzu3NkIrEzA8vF/R2jaQmegUzax
 uuxmxSF7sEYDBlDZM+Ml0yqraWFK2HE/luIoSYP8CiTTxzN8bMwhCxH0lZfE5JefFX90
 C5XBUo6TPIWOYwsDBs4WHUGSZ1F5hExE0++uCx3Tweqz28LpLeSftJLhz0mAnkr7y/eW
 QqcI+NMk+uA/06riEUsuIZDqWebT2baxok/kpor1Z0mvsiouZhUKmnwpNbNpDL89Jdxf
 dHYg==
X-Gm-Message-State: APjAAAXrb+1UhCcH+IOLowwiquAE8Et+JnJfaAeUvx7gmuUD87BIrKTI
 CVkKFKISFTYlHw/z/4RV4xhl84+K3KM+/Q==
X-Google-Smtp-Source: APXvYqycSYlKNwH8NHrVKea2BMaHxAxbe/pH1NC/7ZyOtbxnUZ3MPSIvHnbouAKjQo6yyp+rICIbPA==
X-Received: by 2002:aa7:8dd1:: with SMTP id j17mr11540521pfr.52.1560965427796; 
 Wed, 19 Jun 2019 10:30:27 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:27 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 39/45] coresight: tmc-etf: Do not call smp_processor_id from
 preemptible
Date: Wed, 19 Jun 2019 11:29:43 -0600
Message-Id: <20190619172949.4522-40-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103038_217801_8B9A3D0B 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

 BUG: using smp_processor_id() in preemptible [00000000] code: perf/2544
 caller is tmc_alloc_etf_buffer+0x5c/0x60
 CPU: 2 PID: 2544 Comm: perf Not tainted 5.1.0-rc6-147786-g116841e #344
 Hardware name: ARM LTD ARM Juno Development Platform/ARM Juno Development Platform, BIOS EDK II Feb  1 2019
 Call trace:
  dump_backtrace+0x0/0x150
  show_stack+0x14/0x20
  dump_stack+0x9c/0xc4
  debug_smp_processor_id+0x10c/0x110
  tmc_alloc_etf_buffer+0x5c/0x60
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

Fixes: 2e499bbc1a929ac ("coresight: tmc: implementing TMC-ETF AUX space API")
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tmc-etf.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index b89e29c5b39d..23b7ff00af5c 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -377,12 +377,10 @@ static void *tmc_alloc_etf_buffer(struct coresight_device *csdev,
 				  struct perf_event *event, void **pages,
 				  int nr_pages, bool overwrite)
 {
-	int node, cpu = event->cpu;
+	int node;
 	struct cs_buffers *buf;
 
-	if (cpu == -1)
-		cpu = smp_processor_id();
-	node = cpu_to_node(cpu);
+	node = (event->cpu == -1) ? NUMA_NO_NODE : cpu_to_node(event->cpu);
 
 	/* Allocate memory structure for interaction with Perf */
 	buf = kzalloc_node(sizeof(struct cs_buffers), GFP_KERNEL, node);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
