Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B72F4C008
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o0Gf3YtzLBi3PKWcCxDb+wNfUkrquMhEWej+RvZmURg=; b=jxnf2iwyABta8sPbei9r/bhjtf
	7N9WQ5/xNuFqqS9hc8ILHC5oWUoJlyfmX+0uXNjQgUTtiytIwB6KYFRfjEAaJV+VzpYM0oRlE/BCu
	SUhUidBME6qVXWPlhAOMexf/gway/3qJIEHX0H9hUtoyKm8mpHVdUrrhK1taK3sZXjuP4HDv4Bv/+
	Git/l/kUPOqgro8/Uu+PRzLBR//6JGMKGLtS5lWm0u2OfgBjUFblf+ujY+pDBi9pijyrP3/9lo+0z
	qyeuNPnr9Dmnr39FAL+HZwfe/xeseeSbc7sE+tPXX/ARKqAfqdqkUue2pZpg3ubDsl7Wo2jERZW20
	LS3ZMelA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdecY-00077B-VR; Wed, 19 Jun 2019 17:43:43 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePl-0000Cy-Tk
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:37 +0000
Received: by mail-pf1-x442.google.com with SMTP id 19so9587pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=R0Wh2bB4q/aIbgHc3QWovDYztq8qq4nwX/0TMGUqdNo=;
 b=eGu3zK3e/8xFK+edBUESsVbviEGPnxWRdeQ7QHnxit7Mnua3cmct4i1nZh5+snnEYU
 +XsVjSBnb7JS9peHUCNOQQ9Aa2yghbPmqPTSZBkUF7HapQfa+EnypIeNzn7A8bSEOU0I
 OQr9KwCQ0AR/TExSHx93y92X02LxEfek19X7wdxAsNuO6EBh09TehGX65yzm1zgGl876
 jnlvvvFQ7EwPLVfAt+j1h6Ruib/CTpfhE/PTZn1BW4ujABAdI+5eFHBZ+my3k6o3hawZ
 VuU7X9o+zB1VpPdLTXLJo1sbAN9JWiCh1LBEDQFA24gcKX+s+TTYwEaP8jn+B4dmRVif
 GphA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=R0Wh2bB4q/aIbgHc3QWovDYztq8qq4nwX/0TMGUqdNo=;
 b=pRSK3MBZjGhUEJiDp1ia1V47/3ds8ohmJkQJvsopD9OUWA0Wi0iF/7eRd9w/kakI0/
 bs8ZwPoulo1OKggxOB8Vu2LPw36bULooA+5XS1OVEaBdv6zDSbN67aB+BSS4Naj5ddvO
 Q/mDaEtjtsKdmoiyy6G8K4rGKzNzL/ruSmHQrWFqMb6lqalfdR0qiTRCT2ccqwY5Iocc
 kIN45mxbO0g4n4LKvw86+lHUY1YOFLc7YzaQXccstYKoRbFnfVVdM6S7qUC9axGIG1tv
 a6/NUsSO5r1GsNqgoaezwc15umwT3xhgG6U8QvylHRQ0iOxtAGa8bx5brurzlkU+nyOX
 P5sA==
X-Gm-Message-State: APjAAAXTekAUsuSSCcw1b3su3NBCGC5EoaSJDMHKTydpoiwgMOKrh/s/
 QhACp05Pyn47T1EjrSyMMQ4shaUCnigpGg==
X-Google-Smtp-Source: APXvYqxlJgyrhw5cqpNGrNcquoqHADbHAx6Odfz/myvR1j6IHIjllR1PZKqdVb2NrRNDn2VlaQo6JQ==
X-Received: by 2002:aa7:9a92:: with SMTP id w18mr5340936pfi.167.1560965428463; 
 Wed, 19 Jun 2019 10:30:28 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:28 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 40/45] coresight: etb10: Do not call smp_processor_id from
 preemptible
Date: Wed, 19 Jun 2019 11:29:44 -0600
Message-Id: <20190619172949.4522-41-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103030_062279_6AB99E70 
X-CRM114-Status: GOOD (  13.73  )
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
