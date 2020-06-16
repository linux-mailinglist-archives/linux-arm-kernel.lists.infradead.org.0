Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 192C21FBBF7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 18:41:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LRUndVbje4SsxNUMMCgJakeoI78DURxQNujKamnp22o=; b=SINv51WaT7kx5gnd9IyAsh/VGO
	fhlw/78gZ12JhFVR7uHfxH8y+DSkcY6ICfgWxbMpNV3N5L/jBKyVRhWYQhc2ElGO6re8Kk1GwkBPh
	IYal5pgKzQbEVuxkNuVln7C/649AVthdK7tn6CB5WQz6r8xSBMGMAYtEKmzo7vQdZjgEpkB/wGLgf
	WpOz8bhyjLT1dpnXjyqF7RYIX9ZhwAzqjcRvA7qAOLXOZNNM+JVrQcZTQ47a2RoGwKmN9sx886Ci1
	3kTenh/twWVGt2hseiZxq0aJ7L2XLf60SyBLnNLUN+SjNH8JzIcCx/Kc5arXKpybTsLkCNJbf9O20
	ejZbE4zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlEei-0001Bc-M0; Tue, 16 Jun 2020 16:41:48 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlEdE-0008QG-Oy
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 16:40:18 +0000
Received: by mail-wr1-x441.google.com with SMTP id c3so21437581wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 09:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=n2NHRnVJc5C6MADoxTFzUsgSIOdIPkV7GWDKSuh8LYo=;
 b=Go2w4WPCylLmbALMzBQK1S5p5HIA2UF8kUfalYYZuEi+oM8rpfFnsJWEw9REsNwibv
 ZFNa1a1qi5kn/kzvFwXrUl5nN8iZEgAgkj+s0U5Q8dgGy+tn4EOvSVJ2YKOGc8MTkl+G
 FzpUdQO5X9c/zsT5qswdlBlyZsLJMPwd7laysY30SxuisShVk/v8SPNsh+IOVrbmIUIV
 2R58yyZ9S7I7EmiLTwKi+dW72oXk/0DHZtegD+MIs6dYiRQNhFILxcs5DWkqZFS5BL9o
 FQ460OG9NYzDbdQ2Xaog7ylhkTQ12yRTaDK8/zmsMknI6DKKKjZ9M9w6VO9lRl2syIqZ
 Swqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=n2NHRnVJc5C6MADoxTFzUsgSIOdIPkV7GWDKSuh8LYo=;
 b=btRHELWOI72aNkYC2oCx8kPPFtAe3Xl0Od75BJsVtyN2MZZaO0tHizRLtsYkaSSXaq
 TkAadv3r8FrsG1ZTdyE3NJDGczRicLG6Umqn7uEiGWjVNNGgQicVFXQR8/nH+drrRrlF
 WMPuR1dRzuvNmwILIrN3Kl39Enb1lfy8L2sUZfMUJoUtTNpMSZcPeqTEJl2+Pwkva+i3
 oOAsIOJdm8BHWW03TA47ZUWm0wS5EKcj4sWE+dT+wuUtqDfj3ws3rnaNbbwpNIEboW3y
 r/42cwlNuAjnP1QaGSYbtMutlw61d0OvGi7pLVjRSiKrDRSUhz6u+ENwilmvPM+aKDYl
 45Sg==
X-Gm-Message-State: AOAM532cgEwE4x3TxqludqsDneBZAukJeTyjZ0SQSMmwMLB76uCX0OUF
 8nvl9HWtWq8NN8/yUl8JMoZ3ZtqdacM=
X-Google-Smtp-Source: ABdhPJwWreG7Y7CLeVlSpKGbSAIZCOj/MG40rFIWNn8jJLxll8XJOve70JeA1trsCvcLLdg4q03IkA==
X-Received: by 2002:a05:6000:18c:: with SMTP id
 p12mr4249039wrx.66.1592325614772; 
 Tue, 16 Jun 2020 09:40:14 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:dc9e:c297:59e5:dbd9])
 by smtp.gmail.com with ESMTPSA id g82sm4843866wmf.1.2020.06.16.09.40.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 09:40:13 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 coresight@lists.linaro.org, mathieu.poirier@linaro.org
Subject: [PATCH v5 5/5] documentation: coresight: Update CoreSight document
 for default sink.
Date: Tue, 16 Jun 2020 17:40:06 +0100
Message-Id: <20200616164006.15309-6-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200616164006.15309-1-mike.leach@linaro.org>
References: <20200616164006.15309-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_094016_844835_A64EEF68 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Updates the CoreSight documentation to cover the use of default sinks for
both perf and sysfs operations.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 Documentation/trace/coresight/coresight.rst | 48 +++++++++++++++------
 1 file changed, 34 insertions(+), 14 deletions(-)

diff --git a/Documentation/trace/coresight/coresight.rst b/Documentation/trace/coresight/coresight.rst
index 0b73acb44efa..917d89f74c2e 100644
--- a/Documentation/trace/coresight/coresight.rst
+++ b/Documentation/trace/coresight/coresight.rst
@@ -341,17 +341,18 @@ provide details on using both methods.
 1) Using the sysFS interface:
 
 Before trace collection can start, a coresight sink needs to be identified.
-There is no limit on the amount of sinks (nor sources) that can be enabled at
-any given moment.  As a generic operation, all device pertaining to the sink
-class will have an "active" entry in sysfs::
+There is no limit on the amount of sources and sinks that can be enabled at
+any given moment. However, any source will only trace into a single sink.
+As a generic operation, all device pertaining to the sink class will have an
+"active" entry in sysfs::
 
     root:/sys/bus/coresight/devices# ls
-    replicator  20030000.tpiu    2201c000.ptm  2203c000.etm  2203e000.etm
-    20010000.etb         20040000.funnel  2201d000.ptm  2203d000.etm
-    root:/sys/bus/coresight/devices# ls 20010000.etb
+    replicator0  tpiu0  ptm0  etm2  etm3
+    etb0  funnel0  ptm1  etm4
+    root:/sys/bus/coresight/devices# ls etb0
     enable_sink  status  trigger_cntr
-    root:/sys/bus/coresight/devices# echo 1 > 20010000.etb/enable_sink
-    root:/sys/bus/coresight/devices# cat 20010000.etb/enable_sink
+    root:/sys/bus/coresight/devices# echo 1 > etb0/enable_sink
+    root:/sys/bus/coresight/devices# cat etb0/enable_sink
     1
     root:/sys/bus/coresight/devices#
 
@@ -360,10 +361,10 @@ comparator with "_stext" and "_etext", essentially tracing any instruction
 that falls within that range.  As such "enabling" a source will immediately
 trigger a trace capture::
 
-    root:/sys/bus/coresight/devices# echo 1 > 2201c000.ptm/enable_source
-    root:/sys/bus/coresight/devices# cat 2201c000.ptm/enable_source
+    root:/sys/bus/coresight/devices# echo 1 > ptm0/enable_source
+    root:/sys/bus/coresight/devices# cat ptm0/enable_source
     1
-    root:/sys/bus/coresight/devices# cat 20010000.etb/status
+    root:/sys/bus/coresight/devices# cat etb0/status
     Depth:          0x2000
     Status:         0x1
     RAM read ptr:   0x0
@@ -376,13 +377,22 @@ trigger a trace capture::
 
 Trace collection is stopped the same way::
 
-    root:/sys/bus/coresight/devices# echo 0 > 2201c000.ptm/enable_source
+    root:/sys/bus/coresight/devices# echo 0 > ptm0/enable_source
     root:/sys/bus/coresight/devices#
 
+If no sink is enabled before the source is enabled, then a default sink will
+be selected and enabled automatically. Once the source is disabled, then the
+sink used can be read from <source>/last_sink.::
+
+    root:/sys/bus/coresight/devices# echo 1 > ptm0/enable_source
+    root:/sys/bus/coresight/devices# echo 0 > ptm0/enable_source
+    root:/sys/bus/coresight/devices# cat ptm0/last_sink
+    etb0
+    root:/sys/bus/coresight/devices# echo 0 > etb0/enable_sink
+
 The content of the ETB buffer can be harvested directly from /dev::
 
-    root:/sys/bus/coresight/devices# dd if=/dev/20010000.etb \
-    of=~/cstrace.bin
+    root:/sys/bus/coresight/devices# dd if=/dev/etb0 of=~/cstrace.bin
     64+0 records in
     64+0 records out
     32768 bytes (33 kB) copied, 0.00125258 s, 26.2 MB/s
@@ -490,6 +500,16 @@ The syntax within the forward slashes '/' is important.  The '@' character
 tells the parser that a sink is about to be specified and that this is the sink
 to use for the trace session.
 
+Alternatively, if no sink name is given between the //, then the CoreSight
+system will select a default sink::
+
+	root@linaro-nano:~# perf record -e cs_etm//u --per-thread program
+
+The system selects a sink by searching connection path from the source ETM to
+any sink that is on the path.The system will prefer ETR devices over ETB/ETF,
+and where two of the same type are found, the closest to the ETM, in terms of
+connection links.
+
 More information on the above and other example on how to use Coresight with
 the perf tools can be found in the "HOWTO.md" file of the openCSD gitHub
 repository [#third]_.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
