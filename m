Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1311D1FBBF5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 18:41:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2bMF4cr5WF7Y27qiDmOAT5n9t4dBHHEP4hUU/nPmHns=; b=mJdzapWyCBT/bqQN7xgy8OSgaZ
	1MiHjRe/2fHA5IqPwopkuBjkR2bnk1mBBowXVpfqcjLWmuvFxQ3NBF6ujwgh+FwQ5OyQpGLZjRLHd
	jDxKwSocyBVhIOmpgDPtbkCM1qt6nd2YgRCd0Cs9TF6DHv8ZufzlICUT3Yb6p45Pp+ucOakYNBHPf
	nbE9OqVmNF43P0EC5bvIQnU2MhFOyF3Y1vioszkG+0+kTYXb/jgZLNczJDR65BF7Ja6jBIIGfSQua
	7gOGyeat3wDDvQNMidoVTE4ec0Y0cXBAswVRblFXlMNcvUP/p4mNNwKZn9rInYxR60dC+NygmkuFd
	vEUwJARA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlEeD-0000fN-1d; Tue, 16 Jun 2020 16:41:17 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlEdC-0008OZ-8x
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 16:40:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id x14so21482636wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 09:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0oSmh9OEc1CJ9Wkcu4JKPKk4wvUEYD5z+Ymo2CQ2Vt4=;
 b=F0rebMc3rOizhdJuI8CgmWTQ3eAJkyz5CmJOOYVkQ3DnZBRCJYzp2lHMpJ/AU5ork9
 ltIPLTxAXldQHZQbkELam6jVX6pYOVn1JEEZhyGBpcFbKoGAFAg3LAN4x6Dhorbs2mo1
 pB2XH/Su4Kqntmi5QO722jEneBWNi30iZKo7TfeZP2a8dFrT2yJYgwFixM4r7jGpyQFx
 r2SzqZs43CRr8Wv1cn0ArNrZws+udWNtBrXwSFxnRJMleAv9gTsYPsQNCE+T7nQo7Ev2
 4be+khpE6TnqjUd+8vC5NFjwuGWUNCLQRa3E+3tOIDdfOVRNflk5R7/i7bcvHNjmSA8W
 F1uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0oSmh9OEc1CJ9Wkcu4JKPKk4wvUEYD5z+Ymo2CQ2Vt4=;
 b=uBFC8XTrwcJ3U0g7T3VmZBdl5P2rq/oq6rAresMArkV7UZyuCpmX6X1fpoG93g4Ni+
 Nb19xXz5Jl5UeESTD1KGFDVonVYdMW0iw5sbJxgiVzq0VilwwGWaTP+yj6bowZV/TsBX
 7GE+b5b7Cn3M+RbhQ2fpjGiMMohlG/OEwjV1ytm9F+wMityqV1myuXHYN5vRDfaR6fQp
 bFQNUyTw1N1JOaftLoWoJQ6WES+FdGTKtQ34UdSjRTOwbZKc1TmpADMK7W8/j8nTwBe+
 DbjHk3PnrOkkkRfuTxtbQS4RPbC9PUIljIDNwGenALB6K3N3n0ZRMJbcbovN5UIhENOE
 GQrA==
X-Gm-Message-State: AOAM532OIX6LVD6wxNfk+RHoqrAFhwIpOMKwW5TfmBkygE8uDpgfY1BJ
 E0NP5eL8wgQ9p0AKtUsEIOJEMAOl2nk=
X-Google-Smtp-Source: ABdhPJxl5HlrXeboRVSj/nKHxJBCP6/rO3oFed/D0Vjmmhe0Mj3mXCjfA93JBbvEMF4LwI4rDDexjA==
X-Received: by 2002:a5d:4e45:: with SMTP id r5mr3014189wrt.92.1592325612513;
 Tue, 16 Jun 2020 09:40:12 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:dc9e:c297:59e5:dbd9])
 by smtp.gmail.com with ESMTPSA id g82sm4843866wmf.1.2020.06.16.09.40.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 09:40:11 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 coresight@lists.linaro.org, mathieu.poirier@linaro.org
Subject: [PATCH v5 3/5] coresight: etm: perf: Add default sink selection to
 etm perf.
Date: Tue, 16 Jun 2020 17:40:04 +0100
Message-Id: <20200616164006.15309-4-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200616164006.15309-1-mike.leach@linaro.org>
References: <20200616164006.15309-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_094014_316211_C9D05673 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: corbet@lwn.net, Mike Leach <mike.leach@linaro.org>, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add default sink selection to the perf trace handling in the etm driver.
Uses the select default sink infrastructure to select a sink for the perf
session, if no other sink is specified.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../hwtracing/coresight/coresight-etm-perf.c    | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm-perf.c b/drivers/hwtracing/coresight/coresight-etm-perf.c
index 84f1dcb69827..1a3169e69bb1 100644
--- a/drivers/hwtracing/coresight/coresight-etm-perf.c
+++ b/drivers/hwtracing/coresight/coresight-etm-perf.c
@@ -226,9 +226,6 @@ static void *etm_setup_aux(struct perf_event *event, void **pages,
 		sink = coresight_get_enabled_sink(true);
 	}
 
-	if (!sink)
-		goto err;
-
 	mask = &event_data->mask;
 
 	/*
@@ -253,6 +250,16 @@ static void *etm_setup_aux(struct perf_event *event, void **pages,
 			continue;
 		}
 
+		/*
+		 * No sink provided - look for a default sink for one of the
+		 * devices. At present we only support topology where all CPUs
+		 * use the same sink [N:1], so only need to find one sink. The
+		 * coresight_build_path later will remove any CPU that does not
+		 * attach to the sink, or if we have not found a sink.
+		 */
+		if (!sink)
+			sink = coresight_find_default_sink(csdev);
+
 		/*
 		 * Building a path doesn't enable it, it simply builds a
 		 * list of devices from source to sink that can be
@@ -267,6 +274,10 @@ static void *etm_setup_aux(struct perf_event *event, void **pages,
 		*etm_event_cpu_path_ptr(event_data, cpu) = path;
 	}
 
+	/* no sink found for any CPU - cannot trace */
+	if (!sink)
+		goto err;
+
 	/* If we don't have any CPUs ready for tracing, abort */
 	cpu = cpumask_first(mask);
 	if (cpu >= nr_cpu_ids)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
