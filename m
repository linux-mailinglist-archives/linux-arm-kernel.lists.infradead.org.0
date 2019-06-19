Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7B14C1F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 22:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o0Gf3YtzLBi3PKWcCxDb+wNfUkrquMhEWej+RvZmURg=; b=JIawT2XoTATpR3eyGX/geaDpkU
	ogOPQ+7n1Iddq8bLm6lkJUM9HUl/Ol+DCsIcE0ch15Xx/CHjl+2Op5DVmi9bRsQdpRxX/7MLsz5iJ
	RjdZ9VsY1g1+ZuFIf1LbY+wPHmHcNa9SUYYjha5IOayf74qM5iOL0N29ymIZT3874zwKsoXoY3+m8
	iaz+4xlqZXZ0zN00TYSwFbEouNnqQY/C11vc9AVLEdtT34WjiHb1jxVhu/Syd/wwFtHep79Y+t61l
	jQrxHJCmb13cMn+y2+3XAxyBx6Djg7PFOvMu7G/+NpqMDEZ87NN2oMCPxMiBN4SSmQj7m1cfubMBc
	QShCmBpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgmV-0007Ry-5a; Wed, 19 Jun 2019 20:02:07 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgeO-0006fz-Cd
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:48 +0000
Received: by mail-pl1-x643.google.com with SMTP id cl9so249632plb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=R0Wh2bB4q/aIbgHc3QWovDYztq8qq4nwX/0TMGUqdNo=;
 b=NUIGt5KMieg3H21BEE1iAA/viwD8copPqA9hJVJz2lxz1O5X+yPhJSiIIMI3rNeJBC
 CRg1Px9idgeSEOmNRB2pjFKEwu0MLgjNyeJuUhCCIu6IkMgS0aHnNcmKCmvMm87cCat9
 h9Gt2fK/ntwDPdNy15PoVvE7frICZMRzgCAol6gQdZNI/tKkwDtoqxeVD2g54TqfBZVh
 lE20F1GxVkqnKewsngY7Pjt776qV8uIaOKqdYtHF+WdDWEY6Fg4bJrhWCqmgWSCxhc5C
 C/H9OwzI28+FZyH0KO0UQOkX65Z33ZozEwBUePvMM0mBUXKv4EvyO9KbCkEQ+wYrnTyl
 kz5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=R0Wh2bB4q/aIbgHc3QWovDYztq8qq4nwX/0TMGUqdNo=;
 b=BkuYaXw3AhlX7S2yyZUxq/aAvWmze53Ppfc25AzXRfbqhghzNxfKQiqSiTlICbyHkC
 8b+NPRYidsc2wpsBBXBtOrTQ2pNclfQ3fqtvhyugdtoCizZ6MV8nRU6vHHYa3JneYZN1
 QzXqeioM71q8YP7V99HzO6dapWUGFoi6QuW85cEJNSVh6N1+SV91rUxlNoRqXS/+dGyf
 il6PGkZUtzo3QItfZlDMuN+nNCiRfGkr6tf+QHaOuvUNMSFsFL+AEosDwY8/oDSxAr1u
 xU8phW8tQQcCNTaQ58FZ+0o02oGDoBwDzRNjdhWoZLL5MguPhbQfZO6WBqy/c4fi97LV
 3fEg==
X-Gm-Message-State: APjAAAUvhibJlQvOnYW2AXiwOH3+bO0oCRaMoHWgSfWZ7HLDwu11ZtDC
 7pNSdOCxC3xJWgzJ4EH45aanVQ==
X-Google-Smtp-Source: APXvYqyswiCxY093Bhnp9HhynnIqXjOS4ktAD7R9vscNNzlqbI/P+iSUhh7qfadOArB2BWFww/UCfg==
X-Received: by 2002:a17:902:aa03:: with SMTP id
 be3mr43306075plb.240.1560974022934; 
 Wed, 19 Jun 2019 12:53:42 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:42 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 23/28] coresight: etb10: Do not call smp_processor_id from
 preemptible
Date: Wed, 19 Jun 2019 13:53:13 -0600
Message-Id: <20190619195318.19254-24-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125344_545425_D5F325FA 
X-CRM114-Status: GOOD (  13.73  )
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

 BUG: using smp_processor_id() in preemptible [00000000] code: perf/2544

Use NUMA_NO_NODE hint instead of using the current node for events
not bound to CPUs.

Fixes: 2997aa4063d97fdb39 ("coresight: etb10: implementing AUX API")
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etb10.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
index d5b9edecf76e..3810290e6d07 100644
--- a/drivers/hwtracing/coresight/coresight-etb10.c
+++ b/drivers/hwtracing/coresight/coresight-etb10.c
@@ -374,12 +374,10 @@ static void *etb_alloc_buffer(struct coresight_device *csdev,
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
 
 	buf = kzalloc_node(sizeof(struct cs_buffers), GFP_KERNEL, node);
 	if (!buf)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
