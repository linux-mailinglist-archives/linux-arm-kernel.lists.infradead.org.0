Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C53224DD49
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 00:13:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZGvU2vl0MTL1q7suEOcr7mSdalCom3VqQKITGbEkTdk=; b=PSXkZ4OQH5FpmlvcK4DcCp7n51
	9t7qCpDIoo0cM8YCb94oidEbTJxLDvedwnPvEae0IKqddje/TqubR1s3K/7A9RbXsIahGv10/I9XK
	TmC9MdIWlGARbodAbodevUHHb1fcUQnghkcoRcEAjEi9hMv/TCGlLtiGfFy4hDaweHgFe/h46P0JP
	lY/oti3o1goc2HBtiJrN/0uj3OTyoW3OxtRYFnIqR2GE4NCu6B0ab8o2VTTgvlMD9U7ZqKbDcD9CI
	D87XlGyztgosBnWzDVM4W3dY/uYa94KflJthjAHZ5Osh8mcPOkUaBXG8tHgcTrfZ5mpwwcf4l5Lte
	iae8wCyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he5Iw-0001SJ-WB; Thu, 20 Jun 2019 22:13:15 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he5IO-0001HO-H8
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 22:12:41 +0000
Received: by mail-pf1-x443.google.com with SMTP id r1so2431411pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 15:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TxtCjItR/HePUznrVtuNN3cyDKqo7Ma3sG38mJR5jPY=;
 b=p2o7SvyHXzJWQ+RAwe3uPSeNr9zNV3R6flC88MCD91hiaNf9HPIWR44bpVpv6OgIx/
 cfCRwo+msS18BhlphrI5YzW5IMp582lnHlz+1zhlGapJvU5o6Wmt9vh8tqOSJS4pan+P
 dI5nep22Jq5l1mY0rZqCdsiMQ468Tv+IrXsUPmi6f0pqGrzMyNAEYgppTqPv/VTy58Gr
 u6own9zL3fqWES0jwkkRY1JCOncvXHuI+lB4uxLxTuOVHYZOhqOxZn7ddQhmgrImRZbc
 +bPkXyWqeVaI8ywfH4CKch9eZ7TTqTs8SE018jc5E5gNY6EhpPBEnx8yCx2gQIaSk+se
 1N1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TxtCjItR/HePUznrVtuNN3cyDKqo7Ma3sG38mJR5jPY=;
 b=CmT+LXM9fSj6sbDVlXzBMFy06h5AhF0HXb14yg7lc5MhvaTzhP+D8Tcslqn3T0OGdF
 JU+Uu3Eei37DKt6bejADtfaSYmUaG46NR8Kef87CpH3zZSVQgEr508z0VKV/e7piJlwQ
 sWLoyJsa+yAgKR7h5uf293IM2oGGsH69S/9hPieEfXQOq6gqkoM0v3XMQAdOy2fQafLr
 znszi4HQ5wbdfZbdz56OuAhoR8OgD0O1g3bBKW8xTgX681Uce/buMV++htBL43tzAAse
 Znwsfg0feD5f1HggCb3pHuMR04/LedSgWIqMOyq0b65H4pzeYv7A+Jh654BHB3Wl62nH
 Attw==
X-Gm-Message-State: APjAAAU9bqgRh2ujG95BuBYHx6rFge1MNzztbHMGluL+xfDNN71EGlg9
 qUgr+ieNKEWPrpwwjQLbrwSb8Q==
X-Google-Smtp-Source: APXvYqyqE+RGdtQXuLwVleMWv0Ep1T9Bivmn5pLdI1JXtRstGEbn7ytg8ImTPheYH4reP7HcJAOUTQ==
X-Received: by 2002:a17:90a:2023:: with SMTP id
 n32mr1846707pjc.3.1561068759939; 
 Thu, 20 Jun 2019 15:12:39 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id x25sm450636pfm.48.2019.06.20.15.12.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 15:12:39 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/5] coresight: tmc-etr: Do not call smp_processor_id() from
 preemptible
Date: Thu, 20 Jun 2019 16:12:33 -0600
Message-Id: <20190620221237.3536-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620221237.3536-1-mathieu.poirier@linaro.org>
References: <20190620221237.3536-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_151240_566469_9F0AFD50 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
index df6e4b0b84e9..c6a36897924f 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1317,13 +1317,11 @@ static struct etr_perf_buffer *
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
