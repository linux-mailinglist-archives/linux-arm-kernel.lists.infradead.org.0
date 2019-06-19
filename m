Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5E24C1F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 22:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y8ikfQO94n3bsaAswX+Etw0/eBNzID98aWWchm70IJc=; b=mV9CWpvoztoiurBb9nWRG+WrWf
	MgyK1ayIFotFz0XgncqPyn0E3O71BMtqjrP9OyaULeWIFn9MtojoDpKfxT8fDm8xjUPVCA5WbYeaR
	1RAFn1OH5XM4O+qN1JEC8wkZ2PBEWPPctFXrfLhs8PBouZVziGa+VeaS437wcNHqGoVWA3RFTbUr3
	VLBNt4+SBkCNKFpFhTdTyHiARU9W4Bmtq4sd0v455N9yXormlZhAIiZ8ZEBAbvzEoXgLG/gvb6oBv
	0cKRHIv/xGd3/GkLzYLN9O4RDCSe+1uFtrPx0Cfka0c4/ET70nlkZZfAQ0HlXMcAJ/2OovJB4UTAw
	TDj+u+Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdglZ-0006Xm-ME; Wed, 19 Jun 2019 20:01:09 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgeM-0006dh-NB
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id 196so237492pgc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=U+080fyAUiTJTh9JJ5MaKbNtEVXayYcNMjeizWilaNg=;
 b=dGgsEfOtCuXPIz+lWEAwh8Ybf+ey6Ba1wW1J+GNLkZphSlqu693nH+GxyygIBHCMJ9
 UnrQmIYEsKEVvzhx5PnfbK0+OPCgucLQj9j4uuXKbPfIyFas70DqWJhlXCiPegZ2n+D5
 IuMtIv22WBKA/pkiWnzuR2k8RhxDPpXXUv7DjYk9EhqAnIRFmF558dnN9HbHw0BeRN0n
 tcHTCQkD7oW4+URqErmXxIEydOBNrJGF1iXLQzMaTnK71xLmABxxxxVv2XV1u2haNP+m
 oYmRXA4BTekg18qWugPKAPCg6oUqg/83jKNyXl38/p/Gd0zKPbQaCZIqoNJr0T2av5x7
 zHnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=U+080fyAUiTJTh9JJ5MaKbNtEVXayYcNMjeizWilaNg=;
 b=X2vjH6A14soBBopKkOatrGtbxTQtb00atvrtAIZM/3uIhRMReBTygHLMgENfeaUBcN
 WwfHyIE3wSDS+DhoZT9IF0wycpLU74ZEJuezjpitFHurCLCg1QtApW0o6Z4J/et8oivN
 fqfdQ2BbLtCzDlscIrAe9FjzVfbJt3DCBa+mPkbgIR4ihRRk5AVps/JTPc0wogxP5Sjg
 ABddK2l1DtTRF+01IG1xNFFtO0S+qLfnzo4Grhq3obbHzF++QedNgVjgI/EKb/nosOz9
 dGj2+8QTPC0t5Y+Ij1LNyBpZ2AQk/gsiiOWMxyQZwgMGBhXN1n+LBh4zepH2cz3/RZIz
 kOcQ==
X-Gm-Message-State: APjAAAXma7BV/UZVG3v+Uny6SxK8e59akOKs57zpLs/Uc5HTFli5tmVN
 HXLbDaQNqhfQ+kzm6GpuxUhrhA==
X-Google-Smtp-Source: APXvYqxZNzCQED1IW4nRFIAXdbyDqd2PxD23szhS/ATJ4epxJNK06991N+ih5AmHB+8aL38X2nt/ig==
X-Received: by 2002:a63:5a4b:: with SMTP id k11mr9300700pgm.143.1560974020463; 
 Wed, 19 Jun 2019 12:53:40 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:39 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 20/28] coresight: tmc-etr: Do not call smp_processor_id() from
 preemptible
Date: Wed, 19 Jun 2019 13:53:10 -0600
Message-Id: <20190619195318.19254-21-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125342_942560_DC81295C 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
