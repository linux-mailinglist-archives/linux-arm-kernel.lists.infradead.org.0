Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AEE4C004
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y8ikfQO94n3bsaAswX+Etw0/eBNzID98aWWchm70IJc=; b=P1CCmS34muGfcfHYaYtMIr0yXR
	Ti3UzTdrJ4v//MnjsJEhx/+VgNvkNSM7D/DFLRqfbvTV7EmhqOShGMEw2PtiTn0SpQwTE4OA9QpNI
	XjRz4zILlwEVdenu55yEA7ryTvE1O6KuuwRQu0OiVzLRLFxMPaJSGjRF9xEGIXySbQdHVyhWnGuW0
	duEr5RRcPgCpw3OKWsByITEpmFjhIXUHBN06GtVGkt9+ibFoeVhGuYW9OPrZwomIgIMoxgJGngPoV
	qgo+KTTsUgpNAdXIQdjf8+Zjg+rDm0uypbSJ3xcOC4gp74W3inJ7VWQBZPie6shebuwEcr+rF2Aiz
	bcNaYYIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdecJ-0006qd-Ko; Wed, 19 Jun 2019 17:43:27 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePi-0000BJ-JV
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:37 +0000
Received: by mail-pf1-x444.google.com with SMTP id 19so9519pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=U+080fyAUiTJTh9JJ5MaKbNtEVXayYcNMjeizWilaNg=;
 b=jjvjrf5em+qq0b3ji52nC5vHMkInyqu5hnwQOPG9S17R16YxILUdkig5Ydtuz4YcjF
 h77FBhj2WPPXa896Kk0/m45lBfpne0f3MsAQDLJu/cH0IuIOeJk3PcFkt/2gK7aK5lYJ
 6B9t5vgr/LanC4CixUjQQKLKbTZ6nOQ0lPruTduia7vxl1RQZSz1H5ynxzHMsnIcTXIQ
 afnQthfdkSB97VO8N3bGxfwLrq/HRCpLPAPpKZEEX1aEYLjl7EezhQegk7nMAIuEip6u
 3exs80H5637eNy/Myd0/T5L/60/dF9P3KUhxI/sb8DfnE+s8md/cMQCfC7aKieSyCLGB
 pP+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=U+080fyAUiTJTh9JJ5MaKbNtEVXayYcNMjeizWilaNg=;
 b=CThPfm0xWFQ9sopsjErUWvg5MdYh/NuwPRRZ73pNhfE0FhZUlG8/lB6p2dJo5XYuWI
 r0ymbEsAV28CiPjxS2HgL/GVPpF2AwLwEs79IbTA3222xnhUf+inmRz3qqH8pMePWllr
 KrU6wlm15cW8g5n7I64tbcutVBC3uk7kVvfpwM/L7XiXG/ToApqy7bZDjUNTViPM9jt0
 ixsVt5cPHlVe8H26ZQ/F1xJ3nooELnW3uRx2o8ZgOxVhlqaMm7L257cfv4jE6dqw6PL0
 vGe2mvk7KCbvierNY329nfttxhJ6P8LF4fsRKkwv2Ta0gL+J3wobTGMtMXE10K+g5enw
 ORZA==
X-Gm-Message-State: APjAAAWfT2B1R4JiaVMHBl6N0qbMgDvaOM/ZtX2vNRUq2/LDBxO4xiHN
 oW7z64JTh3Zdtlnkt6xL8kkBS9Z4gVKmxA==
X-Google-Smtp-Source: APXvYqzVPrjgLGfAVwOVdWEtbQqYpnhq6yQqdbRbo28+kOI9c6oMo5bIBR/9f+691D20t7YLyzt+yQ==
X-Received: by 2002:aa7:97bb:: with SMTP id d27mr59024903pfq.93.1560965425897; 
 Wed, 19 Jun 2019 10:30:25 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:25 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 37/45] coresight: tmc-etr: Do not call smp_processor_id() from
 preemptible
Date: Wed, 19 Jun 2019 11:29:41 -0600
Message-Id: <20190619172949.4522-38-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103026_736955_06515881 
X-CRM114-Status: GOOD (  14.38  )
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
with the CPU the event is bound to. If it's not bound to a CPU, we use
the current CPU node, using smp_processor_id(). However this is unsafe
in a pre-emptible context and could generate the splats as below :

 BUG: using smp_processor_id() in preemptible [00000000] code: perf/1743
 caller is alloc_etr_buf.isra.6+0x80/0xa0
 CPU: 1 PID: 1743 Comm: perf Not tainted 5.1.0-rc6-147786-g116841e #344
 Hardware name: ARM LTD ARM Juno Development Platform/ARM Juno Development Platform, BIOS EDK II Feb  1 2019
  Call trace:
   dump_backtrace+0x0/0x150
   show_stack+0x14/0x20
   dump_stack+0x9c/0xc4
   debug_smp_processor_id+0x10c/0x110
   alloc_etr_buf.isra.6+0x80/0xa0
   tmc_alloc_etr_buffer+0x12c/0x1f0
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

Fixes: 855ab61c16bf70b646 ("coresight: tmc-etr: Refactor function tmc_etr_setup_perf_buf()")
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index ce0114a5435c..7c81f634ecb4 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1323,13 +1323,11 @@ static struct etr_perf_buffer *
 tmc_etr_setup_perf_buf(struct tmc_drvdata *drvdata, struct perf_event *event,
 		       int nr_pages, void **pages, bool snapshot)
 {
-	int node, cpu = event->cpu;
+	int node;
 	struct etr_buf *etr_buf;
 	struct etr_perf_buffer *etr_perf;
 
-	if (cpu == -1)
-		cpu = smp_processor_id();
-	node = cpu_to_node(cpu);
+	node = (event->cpu == -1) ? NUMA_NO_NODE : cpu_to_node(event->cpu);
 
 	etr_perf = kzalloc_node(sizeof(*etr_perf), GFP_KERNEL, node);
 	if (!etr_perf)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
