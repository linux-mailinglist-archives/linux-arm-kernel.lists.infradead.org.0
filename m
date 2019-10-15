Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EEAD821E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 23:23:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bCxyDh3lngsZJ7bZDpth9/l56BRKahqXZlFj/jznOu4=; b=bE+cUlp1u87eXhzGcRpGeOWnUB
	uIjxNltv0uGvWlEI/WfDL4ChujRbYLKkH/Mcst5LG56Qul9a5gibWKY6i6cnJOX0PpEdYUikTyadA
	wWFegwQou3ZlLuRuYG2bp0zjOE/i3r0BKvT35ZsRhnqDq2b6Ir+jxBmyiQ5myz66EJ4qz3OIAZMHb
	PiP2vcPo9/FaotLcN4WxIC2e3LAybu3XXBPDUqIHehzmZ74MwMYfwyu+es8X7atVgdgBd8FDWMXlX
	f1Hd5MVEsm2JF3ojoNe0SB0CfOlTkVvlUZnWuefFll9961Q/qTekki0/t2mIDBiuBBMuthHwrcSEk
	cS7jTL0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKUHx-00058Z-Tw; Tue, 15 Oct 2019 21:23:29 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKUFb-00036t-4s
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 21:21:05 +0000
Received: by mail-wr1-x441.google.com with SMTP id y19so25555720wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 14:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Dq3rU4Lby8dKxd9LSbXA1tMIoZsiALr+ULF/WaB9EEo=;
 b=rOJJ11N59/RJiU4wFpp62lXcXEbgZ4axYNakFv179BHGhRWL9GNXKVbTPkyVAZC/6/
 AwBR8OJMJtUpuSOfjvNecgf7gBV4onK7sh/y43H9+iW893VPTFPm3r2XGCrR7M39QhyE
 afo7BVhydlM6Ygqbcs1Dq7rnBGKP5f7kJ4h6WYuQVCJzfatTd3kaifGttBqPjeuyrdiA
 5R2BbbH+emp7gkSRh0KNAQzoEGABFnrh+vqPtnGYTvsbqzrXEXdY2GCZGXLpCEvnjc4z
 LK1pp/30BafCCoCjSDCZYmB3ksOb4sjySOr8VkGGsUt7T2rmvG8Suzl1ByFrDhbpH6GZ
 T37A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Dq3rU4Lby8dKxd9LSbXA1tMIoZsiALr+ULF/WaB9EEo=;
 b=giisfui+tp+6sn7mw6oOXROYLXgHY5b43YS4BU5CkylZT+TPpyITPi+rZRefBrehj1
 aJeOpODu1D2+2pOICxiKIYhQoN0sMaQaIVJJtZs6Qz7UnNRDCZOCuQFei33xVIIZZ/r7
 qzGiwGoHx4GuL0sOQ0hLvwzeQ1ESbhPrJwmfLiRk+GcoK2YEzsjL4SLh+WluxeyShO+G
 dVYrcZaQX57zWLxKTaIqCs5HfoShjoVacax0nLISXhm49vz/h6vT0urrV+bOlN1k2CL+
 QPxnJD4L3RHwxbsX4GOC5+AcpvAbm50sl1W4c6V9gL2GTu/nZRipI7xgU0yVydyqAldJ
 vjqA==
X-Gm-Message-State: APjAAAWvok73Z3XywL/0LFogacrkZgEafLTKN3lHqJyVSIyonqiH5eDG
 qRdhS2qfuYxjbsbImjOaG+bAPezmUag=
X-Google-Smtp-Source: APXvYqxLphcf7uqpOFSJsUgKXrjRXhyaHe51oiz20Gcv9OdCzKx3ZseZi3quOnQtgeq+bBSGnyv1rg==
X-Received: by 2002:a5d:6942:: with SMTP id r2mr30992500wrw.363.1571174461023; 
 Tue, 15 Oct 2019 14:21:01 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:39d2:21a2:678a:9501])
 by smtp.gmail.com with ESMTPSA id g185sm517649wme.10.2019.10.15.14.21.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 14:21:00 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org
Subject: [PATCH v3 10/11] coresight: docs: Create common sub-directory for
 coresight trace.
Date: Tue, 15 Oct 2019 22:20:03 +0100
Message-Id: <20191015212004.24748-11-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015212004.24748-1-mike.leach@linaro.org>
References: <20191015212004.24748-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_142103_223507_076B52FF 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: gregkh@linuxfoundation.org, suzuki.poulose@arm.com,
 mathieu.poirier@linaro.org, corbet@lwn.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two files in the Documentation/trace directory relating to
coresight, with more to follow, so create a Documentation/trace/coresight
directory and move existing files there. Update MAINTAINERS to reference
this sub-directory rather than the individual files.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 Documentation/trace/{ => coresight}/coresight-cpu-debug.rst | 0
 Documentation/trace/{ => coresight}/coresight.rst           | 2 +-
 Documentation/trace/{ => coresight}/stm.rst                 | 0
 MAINTAINERS                                                 | 3 +--
 4 files changed, 2 insertions(+), 3 deletions(-)
 rename Documentation/trace/{ => coresight}/coresight-cpu-debug.rst (100%)
 rename Documentation/trace/{ => coresight}/coresight.rst (99%)
 rename Documentation/trace/{ => coresight}/stm.rst (100%)

diff --git a/Documentation/trace/coresight-cpu-debug.rst b/Documentation/trace/coresight/coresight-cpu-debug.rst
similarity index 100%
rename from Documentation/trace/coresight-cpu-debug.rst
rename to Documentation/trace/coresight/coresight-cpu-debug.rst
diff --git a/Documentation/trace/coresight.rst b/Documentation/trace/coresight/coresight.rst
similarity index 99%
rename from Documentation/trace/coresight.rst
rename to Documentation/trace/coresight/coresight.rst
index 72f4b7ef1bad..835e8aa0bf8c 100644
--- a/Documentation/trace/coresight.rst
+++ b/Documentation/trace/coresight/coresight.rst
@@ -493,6 +493,6 @@ Details on how to use the generic STM API can be found here [#second]_.
 
 .. [#first] Documentation/ABI/testing/sysfs-bus-coresight-devices-stm
 
-.. [#second] Documentation/trace/stm.rst
+.. [#second] Documentation/trace/coresight/stm.rst
 
 .. [#third] https://github.com/Linaro/perf-opencsd
diff --git a/Documentation/trace/stm.rst b/Documentation/trace/coresight/stm.rst
similarity index 100%
rename from Documentation/trace/stm.rst
rename to Documentation/trace/coresight/stm.rst
diff --git a/MAINTAINERS b/MAINTAINERS
index 296de2b51c83..f903160b507c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1608,8 +1608,7 @@ R:	Suzuki K Poulose <suzuki.poulose@arm.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	drivers/hwtracing/coresight/*
-F:	Documentation/trace/coresight.rst
-F:	Documentation/trace/coresight-cpu-debug.rst
+F:	Documentation/trace/coresight/*
 F:	Documentation/devicetree/bindings/arm/coresight.txt
 F:	Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
 F:	Documentation/ABI/testing/sysfs-bus-coresight-devices-*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
