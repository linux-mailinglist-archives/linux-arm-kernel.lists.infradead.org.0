Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DFC10C78
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 19:51:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lQMuK0NKcS8RpuXIFT8pnS1sIS3mkZcCJ+trNCRhQA4=; b=moleT3PiIPVLJAfWclhs3Dps1U
	r6dg6C2vBzNo09y9GnLMZ+ftgL971WLxelpR+U0osZ8VeX84CEsB2jX0ARmsgDVqgtRpoMzgluqns
	7rfDGqOclbW6T1GvnnrFlODDhoqN8oJWX+KlX93Ffb0NE5RUL/Ry7yJfRUZpYTCvZd9PUmS62WAYy
	qZ8kcH/plj/HvLx6XHlvE3e3FsyHV1maJrj1jv/vPjPEPSlLhwqM9gdLgFyXiJyPVTCeaiYxxJYoS
	4WcAnlKkIxkKvKoZhpQKGjLd4tbic9+jKzpf87GiqJiByTfPpUD4hnh+fdc8yI5rkCNJumCSCkZ+x
	7Qi6qgHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtOc-0005hO-KU; Wed, 01 May 2019 17:51:54 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtNn-0004ju-63
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 17:51:10 +0000
Received: by mail-pl1-x644.google.com with SMTP id z8so8499898pln.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 10:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=56W4mPOO8bxoxn0RBc8QFf/fiRyB1wZjHVTSBB48m5Q=;
 b=pMtWRq0s7iCI9HNypq9dMX4yxUBCmR87+ZL0Y2dMdADme05KJWpQNpHRUS5mFUq7fl
 95ac52OPTJvKVdAlg/GUrR+zaLJrsh7TaWmeo2UOtTj3LNC2bvVkbBvrnXpUK3Yz5h5t
 rX/9YW3fJIbEKpE6MAArUIhiQZFXDaRQWBfYPz4Vp9QdeFMYItS61b1LY4wKj0PgEuvT
 H56TCnVIkWMfFG3hjv8khXp9OIWrndBovHkrDkJrOr0QLybffUt4dwNTLrYzgUty+MXS
 o+ekQRgRvP45MeQSsrFJYHJRawcp3kZlicX+y0cBA5jZ/peeJV6UOyMtrP9BWA715RkP
 5d5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=56W4mPOO8bxoxn0RBc8QFf/fiRyB1wZjHVTSBB48m5Q=;
 b=pp9A5esirQrF/By6CvN/c5GV0ccnk5EEF78CLzKW0dILLenYo3im3Xd/lPxXmbGrJq
 0zUVAxRxOAK5/vS7DihRPj295b5dd5uY9NssLdXg5sUOnTrG6pUnfjJcxY8jjJ41anVH
 1L740fKTL6+ImG5jY3gmrfho7VTPVRAtU60sgSWnMOg6r1phw6DP2YcgkPCRs7vjrrEV
 nd6TkLgYNbJM6M/zGfUl09GdehvN+ytXCDnZGLJedeYHebRYMjwJqmRObcnSR98N3bfE
 NHaZv9y3trAxY6ztka4ZSI3AudX0fIeR0LrUaA0dQQzIxVPIRnN5XYF17OMzmOM1uPpN
 SPEg==
X-Gm-Message-State: APjAAAUXG+5kMqFeAW3jhtljHS1bv+yijfNoImqZnkDZ/e+AOYATYnIm
 J6yE754Hq+AoNQq1z8+04ei5kNA30J4=
X-Google-Smtp-Source: APXvYqw9KAn+Wr81do9FHvR3XHFrCAF+277J+NvKW7CDjzyxCAaOmOwqej4zBa6Hcvr5HBTt53ByAA==
X-Received: by 2002:a17:902:2702:: with SMTP id
 c2mr8428334plb.277.1556733062403; 
 Wed, 01 May 2019 10:51:02 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id h189sm84126158pfc.125.2019.05.01.10.51.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 10:51:01 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/5] docs: coresight: Document snapshot mode
Date: Wed,  1 May 2019 11:50:52 -0600
Message-Id: <20190501175052.29667-6-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190501175052.29667-1-mathieu.poirier@linaro.org>
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_105103_621973_CF2EEC89 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: corbet@lwn.net, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, suzuki.poulose@arm.com, acme@kernel.org,
 peterz@infradead.org, mingo@redhat.com, mike.leach@arm.com, leo.yan@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Because of the resctriction imposed by the internal memory buffer
of some CoreSight sink, using the framework in snapshot mode can
be a little trickly.  As such document the process to make user
experience more enjoyable.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 Documentation/trace/coresight.txt | 41 ++++++++++++++++++++++++++++++-
 1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/Documentation/trace/coresight.txt b/Documentation/trace/coresight.txt
index efbc832146e7..6c602ae379e2 100644
--- a/Documentation/trace/coresight.txt
+++ b/Documentation/trace/coresight.txt
@@ -363,7 +363,6 @@ The --itrace option controls the type and frequency of synthesized events
 Note that only 64-bit programs are currently supported - further work is
 required to support instruction decode of 32-bit Arm programs.
 
-
 Generating coverage files for Feedback Directed Optimization: AutoFDO
 ---------------------------------------------------------------------
 
@@ -394,6 +393,46 @@ sort example is from the AutoFDO tutorial (https://gcc.gnu.org/wiki/AutoFDO/Tuto
 	Bubble sorting array of 30000 elements
 	5806 ms
 
+2.2) Snapshot mode:
+
+Using perf's built-in snapshot mode with CoreSight tracers is supported - to
+do so the '-S' command line option needs to be specified.  Since current sink
+devices are used in double-buffer mode when operated from the perf interface,
+the size of the perf ring buffer needs to be adjusted to match the size of the
+buffer used by the CoreSight sinks.  From the perf command line it is possible
+to specify the number of pages to use for a session using the '-m,X' option,
+where X is the amount of pages.
+
+The system memory buffer used by ETR devices is automatically adjusted
+to match the size of the perf ring buffer and as such does not need to be
+modified on the perf command line.  For ETB and ETF devices the perf ring
+buffer size need to be adjusted to match the size of the internal buffer.
+
+The following examples assume a system page size of 4096 byte:
+
+	# cat /sys/bus/coresight/devices/20010000.etb/mgmt/rdp
+	0x2000
+	# perf record -e cs_etm/@20010000.etf/ -S -m,8 --per-thread $APP
+
+	# cat /sys/bus/coresight/devices/20010000.etf/buffer_size
+	0x10000
+	# perf record -e cs_etm/@20010000.etf/ -S -m,16 --per-thread $APP
+
+	# perf record -e cs_etm/@20070000.etr/ -S --per-thread $APP
+
+Once an application is launched trace snapshot are collected by sending the
+USR2 message to the process being monitored:
+
+	# perf record -e cs_etm/@20070000.etr/ -S --per-thread $APP &
+	[1] 14808
+	# kill -USR2 14808
+	...
+	...
+	# kill -USR2 14808
+	...
+	...
+	# kill 14808
+
 
 How to use the STM module
 -------------------------
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
