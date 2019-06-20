Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F614DD4A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 00:13:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=728zgjUbDxnoX91dFIEmnt4BIBEFY1CS76RXNEShq2Y=; b=gehqESnsie1lvmm5lhz0QVh21O
	loPUkcrdXP3tWAFJmm80wa220oj3ezzMIKpIKU74Eh7i5VMzwZWHVInErvi5PWZy4NAUt5+8frKMX
	4ZWuuKqBh1FPdTbqDzc3+3Z+YglRX3kLbKH9qdJ51zAQQVgRhJag/WKIVqcQrLa6rQi735huCPqXf
	cbIOlLGvbHwwj4FKrGCCJ6kg7YYE3Lyh/xuQxy6dfPn3p0mEje6tm19s/bYPk/lgEZ8YgDmu6hzrJ
	2HmOUZu9Xovmo4VRGvss+aLD10SccgWf2ZSw3BCMwJjwnAVrdbrE7/ArDnyvDnc157y/GRmnon8zm
	YLWOgHBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he5JF-0001tm-MA; Thu, 20 Jun 2019 22:13:33 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he5IP-0001Hd-A3
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 22:12:42 +0000
Received: by mail-pf1-x442.google.com with SMTP id 19so2451487pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 15:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=j4aNe1rIqaAwjoc7tlrjsp5QRUVkJOX1GccjZR4hNpM=;
 b=UX0t/idDH0oR6ByW6kbbd9RAUo4jyFHX3vi7xwn6dlWJF9+AJvFr9isLSAsUfBOj7Q
 yyOyN0fO2vkWtNWcgWv4vQKAM9pxjkj8lECH6sPE4oLSRUkViZEkxttaIZEHZlyrfuj/
 IAg100WVXIUm+GyVn1ll6WtkqfSLEu8Z1o/35wnqY7d73XFNGICJwpac7fLcmaIj1tsO
 q2LuUYzJrymwQzJR8Jr9SlmOxti5M5/55x1D8fQa0gaidyP2xhXhEuMeQH7RtI+HsTnl
 daVZkAlWrPFmpZVmv5DlFLKFJKmi+WfLj3qW09vTLeC68ofrvu2MpZGGXyO9m1Flgk4a
 jD7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=j4aNe1rIqaAwjoc7tlrjsp5QRUVkJOX1GccjZR4hNpM=;
 b=coPu/0Goc+sCf633h+/uJ+mvG8mzSutV+Ez20qs028LkZkqaBRTVVC5rxmXL4wh0Fw
 QZis7MYKYr82xsx4IFH8qxmkIOPuBTG62uoUc3+OSZOW6b5Q6A7idh1I4uwoKccCBwmp
 g1KNppo1H8n/0cD4JLm3UjqiCYu2HDXLchpjLSyARF60HZU3ahS/9c8jrsBno/p101Wt
 VJQw6q5+p19W7XFW5qGd7/vNmSOZsDHhiLeJxOUcrAQrE0xfg0wmYj5TEij6rGMlg8H5
 Or4TTiM6/4Iz3SB3vYiI4QH5IghdxDlbdkPNXzgdGnfrdD7nkh3xwCsIYcXH4h35Mo3V
 vQgw==
X-Gm-Message-State: APjAAAVQUOL4Rb5SiV3VqHr7rSezSNNqbSBBQ+mrnE/CwJfRh6VyRR1H
 VTFe3XJvOKs/ipyUftZjhd/jjQ==
X-Google-Smtp-Source: APXvYqydRXocyuNB1pJNnqLzyFVuPhnRH3kKYclIhMwPsq+1zlkiDyax/aKyiWE96e+LK/h4qIvbZw==
X-Received: by 2002:a17:90a:23a4:: with SMTP id
 g33mr1961318pje.115.1561068760699; 
 Thu, 20 Jun 2019 15:12:40 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id x25sm450636pfm.48.2019.06.20.15.12.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 15:12:40 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/5] coresight: tmc-etr: alloc_perf_buf: Do not call
 smp_processor_id from preemptible
Date: Thu, 20 Jun 2019 16:12:34 -0600
Message-Id: <20190620221237.3536-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620221237.3536-1-mathieu.poirier@linaro.org>
References: <20190620221237.3536-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_151241_348725_1C3B10F9 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: stable <stable@vger.kernel.org> # 4.20+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index c6a36897924f..9f293b9dce8c 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1178,14 +1178,11 @@ static struct etr_buf *
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
