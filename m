Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1FD1E2011
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aSAY+/5P2I83xwEXJLCJ3wXtMqgEhTYFsPTMg5bQOBI=; b=I86huM7moKqqrAsPT6U+kD2Zgy
	/viGINruvk7Gm1uOcwNGYBzA6x6tQtSHQ+Dtz8QDKOFdGOpnBw/rBiOD2mvqLM8Anspth2/9Y567X
	FmAhmXIWpF8ZU4BvghD43w0MRAQB4Y7up8ltHIkwMGCO8q2oYjQ+/KIQckoeoobAlULQ3ZA5ni9YJ
	jM0K2QBLhgUU1iBF44OH605J20mbpqL9L1XnoznMfz2FySoWWZ5iAfDHQcWNqSuuDN0ociMZkwMKE
	elgqrp+OiDytYBV5vt4m0EqVmr+fz2eWADdX7ZBNQmctZNGpq9TO9Izcb/Tly+d49LnFgWdhS9gxM
	c5u3LAzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdX8B-0002yF-SS; Tue, 26 May 2020 10:48:23 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdX6m-0001rA-1C
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:46:57 +0000
Received: by mail-wr1-x441.google.com with SMTP id l11so19965128wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 03:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mmS/Kfd2EQnn9ZGp0wgAdxQdekn/AsbBvLcBNRhMhmM=;
 b=pzU02rQNixMgpUcc43uwZWab4tTCqlviOUyJsPje1ZXkDZ+67bbtFcDSpFNgTW+ylx
 4/fZe4/9aJ4l8txOT6oisgPPo6xdN2gpHDcedmkrepGP12O/hmsx+3+DO3vuZxcNcp+D
 8U7GdbKdxIQTsUruaTW+G/Xm04QtEnVas4IPfKxOo5J9sJpfLbVUZD5z4Ug9j3EXwya2
 /u8sQl3hPVo+WNzk2ejJf9vBSw5EsVohl/EDjyLE/F3Ds6T7QoXWAXvgn0FF3R2g0xbX
 sfQgb8hpaBtRQWzXpYvDghOHarhNbReqFAIEKZdVm9TDrhO6V27mUAztVM/la14TQK3i
 pTCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mmS/Kfd2EQnn9ZGp0wgAdxQdekn/AsbBvLcBNRhMhmM=;
 b=gRVutIVFdXsKbmvMKj74Zn4XevnaZ/WvVn21T1icD0D54+VgqjoVdS4V2up8CQJNpe
 hhykejIGoQqOE5k01NSSRjUBEA4c4rgZ+lp+NAxCr5lv8JuGL0LA9M+U7jTK6cIwvWQ/
 w9AEik1Q4i8EE+DSAkRTVDwch3zE3q9kWE2t0pEPp92G/FxeMhLcI0aen60sa0oSOT1j
 7Zlj2lzpzAmnxCMWCnd4+Xv43JxoSOooNDWK4nQhcso8Ngy92l7itZXIrh9j4RmaVTxa
 JYKr1NS4vMHFOKYBGL0Am05DfEazMPyNBUh87NTPIvXC9oZZ0MCIDIdhe8KFKNVw708R
 GNdw==
X-Gm-Message-State: AOAM532/O7HqJpJQlWFW1aNpU6RpshkEX6BCRkzy9ivtNttre3ODSU+r
 Erwosgx3ug8G/DwskEyFSrZNcy33vZg=
X-Google-Smtp-Source: ABdhPJyRmhZlmbGQxT6RmRWRAGJJnx2ni3iKOLpizBaK/1YzfH8G67kUmo/5/b07JA2N1pB8kru+tg==
X-Received: by 2002:adf:f4c6:: with SMTP id h6mr19977271wrp.398.1590490014116; 
 Tue, 26 May 2020 03:46:54 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:8bee:312:6092:58f2])
 by smtp.gmail.com with ESMTPSA id u3sm393441wmg.38.2020.05.26.03.46.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 03:46:53 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org
Subject: [PATCH v4 4/5] coresight: etm: perf: Add default sink selection to
 etm perf
Date: Tue, 26 May 2020 11:46:41 +0100
Message-Id: <20200526104642.9526-5-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200526104642.9526-1-mike.leach@linaro.org>
References: <20200526104642.9526-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_034656_098087_2D2C2FE3 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mike Leach <mike.leach@linaro.org>, acme@kernel.org, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add default sink selection to the perf trace handling in the etm driver.
Uses the select default sink infrastructure to select a sink for the perf
session, if no other sink is specified.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
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
