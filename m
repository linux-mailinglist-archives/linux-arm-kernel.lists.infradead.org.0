Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 684954DD4C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 00:13:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wWWELGJ8rEmg13a7Mol9J7yy1/cu8vsHvLvZodv7FLk=; b=s6aQJ9O/UxZgialOGyeRIrdbuE
	LUEnbKED9gYNvZb2cxS1f70xtPksS9nm5bgzJR5rUxtgrkmHVdb4VIr6i1YswVLKhHPWOdut77Pra
	PJh7DrmKl0mvblDJgxIsHJYeXzGYJafv7bKM27HGma9CUhReHhWvbcEDda4vuj7sLu7TbGfUefNzH
	nqvdzOOI+9RzHu8Z6NBIqhvmmKuS2e94uW2gPg4ccrBL/dwFXl/uU0MIOMnfFYCsEMotn1cafglri
	8R+WAZO/LuD4u/QC9Dd/G0L4Yg6Ml/cK9M1J7ccZhPZJLK+IayEQ2v9b35KlJyaXFfcoIWHXqsngu
	i3iQdVOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he5JU-00028w-F0; Thu, 20 Jun 2019 22:13:48 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he5IR-0001I1-BJ
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 22:12:44 +0000
Received: by mail-pf1-x441.google.com with SMTP id r1so2431444pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 15:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9oc8QygCb8ggPn+H3Fd5IukoXHijgHATKhnf6mfsKcY=;
 b=HU4yFjC/659KEUTmad1K7s/ZNbVutm6aGP6xDevTK3I8nCTMMZnvNGSSe+YdJiHEQ5
 AIj/1HjIRPRLU9xv+E+ZaIfI/kE0LroOmhdU84i8O4idm7umHjFJBWgQYgfybXZEQ4mF
 nmfRBBg+iX7Y37xHY+5LkllZovw478dvVHaZjPQU5yAIvhGBAnjnHXvp2wcoWTiHoxyW
 XAP4NDAtp3RNV+d4IjYym2Ie+iw1rCK/RzeZAlv98racCme/O8rMIujn/Ibj02Q30Bl2
 8NmzzAJS+y/1GSzeCXfBhB7tJnmKWizcZN/An2z5NxhqrZIwVHaJ7wONR7p4hFwtZCc6
 VP9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9oc8QygCb8ggPn+H3Fd5IukoXHijgHATKhnf6mfsKcY=;
 b=PDHUH8FzhkH61w3poqzaqkU7RST7yLlYXi/cn0DYG0zO3vjQpLC68bO4fVL1PaTvWY
 JE509FkAWt00unvYi1Sq0NW9Eu3YML/lTAL3+mNg9r9n3wPS3X3CLukJxiaRXJX8Kcp3
 T8hBC/S36WbB+qe8bBGPuyJcYiDQvlNIY9atbuk7pgo3Gh0/wyfUQ3qaOIfgQjmkdv9U
 6bPV2aKwFSQl68U20L2WpaCDLwI751g4ggpBvfPlf6KM4Mc9Rfgkn4qF9Yz01EakqM5m
 dXjcUrFTiEyW5TD/UyNXyKE9t9Ny+YhdoPFGGU8FvORjc40pZggx/yCCNjiI11JAj6VO
 a9WQ==
X-Gm-Message-State: APjAAAXtqKfU1C2dUApoP4wsfCW9Wek9M9BDVBQG/CZNdBng3+gTfadq
 H7LDH15T0g1u6YDndHT2pGN5FJCKI84A0w==
X-Google-Smtp-Source: APXvYqwCmJaNb6VpTzUCYM2a9OIibNo9Vu5RXGk17EABZL0LDRsZDjTbhvF7jTRXjRMEKyl/Sho4YA==
X-Received: by 2002:a17:90a:ad86:: with SMTP id
 s6mr1972685pjq.42.1561068761578; 
 Thu, 20 Jun 2019 15:12:41 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id x25sm450636pfm.48.2019.06.20.15.12.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 15:12:41 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/5] coresight: tmc-etf: Do not call smp_processor_id from
 preemptible
Date: Thu, 20 Jun 2019 16:12:35 -0600
Message-Id: <20190620221237.3536-4-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620221237.3536-1-mathieu.poirier@linaro.org>
References: <20190620221237.3536-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_151243_418118_2781210B 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: stable <stable@vger.kernel.org> # 4.7+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tmc-etf.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index 2527b5d3b65e..8de109de171f 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -378,12 +378,10 @@ static void *tmc_alloc_etf_buffer(struct coresight_device *csdev,
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
