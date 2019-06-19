Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1394C1F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 22:01:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+Rm6Lll5Wss4K714CrfmfMfsLslb/P7xm5UNw1baPJ8=; b=GWrCkAVqna5Ae+CHVQihOFYJug
	pS0ZPA3VOb/2YAeVZ09GNZAubgKS1Hfviaq8B4CMwGQwacJlSO6yI8FfaR7GqyPxvUNiO4VX3Nf3U
	1+nU8mMa9vi+wdFysNqDKLq3bx42q/eV6OpV/kjLLExIMYZ40Z1usv3fa1YSiduyaQDYd5bgF1QN6
	yKquOZTVO8cFtNyIaBNxNwHOmJmwSXK6vl9xr6QpjMGRErcTJYfcNxOjppopYhOxAoed8ho+AD2vl
	QPY+OmYTNlmVYCEbVkBBfvD22oVLD4xiFfoFqSLxfvsdLmvdVHqr51C7CFBQSLRu5ZxEmAeUh+LXb
	EOviNuQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgmB-00078r-C2; Wed, 19 Jun 2019 20:01:47 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgeN-0006eS-BL
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:47 +0000
Received: by mail-pl1-x643.google.com with SMTP id c14so272121plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QfxiSC10lT2kIdBoLtEEdrvPoomT9IvwdXsx/Fv3PE8=;
 b=Uy00H7aQiST9FooWquBKLO5MSZ/4rWUJ1XuFQkSTYwyWyUtytKH38Q7pEmMBbqddCM
 u5P514IFYf13V2qt3s/f1u9BAcizd7jKW4gDFJut4Q5jwYxF8z6987XKXKYp1QNRJWp9
 mBLbzlg/8L4qFZYZfCJU9JGcLOkSJ+mE9hgTjM4egr3RUhcQ4sKHejf76ZIVEv8NMDef
 WweweOpmJEoLMcL4t65Xpc8sdvcDJ5DPyT8Ym9ET2S1Odin2QSTNs+BempQfeh+IWRNF
 QKDT3IEejJgVwPqTTiDg8c1YzfIFRq2vGWLxVYnsQG8tDNoH/E0Sk+rPXcZGseqTdQAg
 mkxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QfxiSC10lT2kIdBoLtEEdrvPoomT9IvwdXsx/Fv3PE8=;
 b=SOm/fVlzjYo6wzkL1IV5/Ze5YzMhL6+e+tM1pIM9jGEKeA0AK/M/MtF1Ylt1inGKDj
 hKciskBIy1aNFlLe0R/gen6QgnHPI8KCexygTQ50es9gJK0IFDX0mIJhCQ4znKZbcweR
 5ebl86aC3UuiRi7znv708zEgZOmCn6bZSV8ybdiQ2dt/QeX6GdkONLmMMOCUz5TFbhT3
 F2cibOSLXrsH7oILjzqwk0H+hyI8EE2oYD7Fo8GnEehub60dYRQ494DKrOvWtDfhrP23
 9U5/gzc1yuA7R8OaZqJs2MoPfh5kxR3d3queydl683lsQnKCQTr1hyX9zZtoWz/LGoxG
 EQlQ==
X-Gm-Message-State: APjAAAUQRbpRzW7QKJbu90D9r3GLARObslQe01FZLJkRY+bNpr0U8WSa
 h+0CpATlfVHbYB0Qquokvb3Nlw==
X-Google-Smtp-Source: APXvYqw5oQE3QPURoL/FFfCdfq+ne7MJ9cHK/hBC1PIrYK+ukresTOyKxK0ambMdxp6Iozb0fAQD1A==
X-Received: by 2002:a17:902:ea:: with SMTP id
 a97mr79352359pla.182.1560974021264; 
 Wed, 19 Jun 2019 12:53:41 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:40 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 21/28] coresight: tmc-etr: alloc_perf_buf: Do not call
 smp_processor_id from preemptible
Date: Wed, 19 Jun 2019 13:53:11 -0600
Message-Id: <20190619195318.19254-22-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125343_485762_14E7192B 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
