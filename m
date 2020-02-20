Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C08D91656F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 06:30:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5gDv5W0vn/HJgdP+JfMOjpDR8C65gW0NOMu1TNMlads=; b=OoySHSYtZSvWAX4PlVWmTpo3yC
	qgHe8Z+mq7+earvWw6pKDMy1TJTEl1sV2zON+GANNlu4nGudZtw9f8bWXo2Vor/AgSCM9gDK2lflO
	cQm8WiPbZ1OixinEQEdmGMprvNabImFwzBvWX/z9vjKZlszSKkYlAVazmYRYiW2zZw1t0VSGod8Bi
	Q0VBtvHGvfMutMp23DpHZtj5ZMe4g79Cu3sgBWkDadC+H4xJ5ItEleO5mMQKBQUdQWSHYZNLVTG8y
	7RdhLVuAY5EIzhz+zDwmYqSDG+a6EDADjIegq0FqCb1E2dxeaEBvWMaD0pNy27Z/csC5YIrfbGhQ0
	EExy5/aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ePX-0003UR-Iy; Thu, 20 Feb 2020 05:30:07 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4eOa-0002i8-NJ
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 05:29:10 +0000
Received: by mail-pj1-x1041.google.com with SMTP id q39so387655pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 21:29:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3qk48O5iP5UI83BGLtFK/DPXjcS2SRQP8TVMgp2fJpo=;
 b=bRhVmrGGpBmtuhmW7mF9VhV7BpnN10S3RU3sTcIlAIM6YOGdKjZ3Muy0pfFZe2HjrE
 +ivyFn3B0QqL0Ol5NTaEMo8clTBpXV+uTp8jhp82ceKiaBLhs86pcSsLjIXMlQiYMOQn
 U7/pghcJB7bzkbFeytV2N+2VSre7MAF5HzQr4a9xJo8EdiiZV9e4SCRrsqsLuzX3baYS
 Sjr0EPpXA0sO0qCXUn903Cva3jEeYbKONPZfRXl24FlLLEG2TWe1L+i/JUlqlfkDfgcr
 AI/yVONdmuXUT8egRIDZyGN4l3PIV0VubOxrHCzNjswERFv82GKMpG494kJbaaCd4IbE
 2WdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3qk48O5iP5UI83BGLtFK/DPXjcS2SRQP8TVMgp2fJpo=;
 b=kU9ydK7TbG3efdOTDbst4sUT0CzXT2GLAXywdiKiBZEqJjzexj37ZZMJv3fxssw48z
 1GV5bH+yZmUtBwLahjaqnX7PMEay27oPyKBvFmNNzwETkF/eqJJSc5+tC5iE12NRDTAr
 IAX2OOkSWtfQG7BZxuuDWXyNhcjQ1qWs23GTbWE+0gC3X/ihiHwsPgRKcvn+rfPuzNbn
 OLuBWn2sa8jlh0Nz6Dn+H/9axwiZsY+/AesBL4PGzBl+Dbjv8M6Ma7tHc4jcJI2Piopp
 uQG/SWebiSzF/Ft/YAcz2IN9kZau6Y7sQWYAChwjQsHEuALcsiiK3STevNkK6/0UpBgQ
 Kf/Q==
X-Gm-Message-State: APjAAAWoaGUSjhj0nbf+5Pb9NfgQgZJ/bWypMR4WuJMUMWN/ki4axLJd
 Y4s8bRWXa+tTWDETG5i3ko4VkQ==
X-Google-Smtp-Source: APXvYqwRsniVe9jr9X/SxVEMR87rh2T9LKg7rl7y/G3tSgvH3gz7yNnWze0GXZlxv9TewDyIjcISZw==
X-Received: by 2002:a17:902:b617:: with SMTP id
 b23mr30197151pls.285.1582176547616; 
 Wed, 19 Feb 2020 21:29:07 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id l69sm1535663pgd.1.2020.02.19.21.28.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 21:29:07 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Mike Leach <mike.leach@linaro.org>,
 Robert Walker <robert.walker@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v5 8/9] perf thread: Add helper to get top return address
Date: Thu, 20 Feb 2020 13:27:00 +0800
Message-Id: <20200220052701.7754-9-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200220052701.7754-1-leo.yan@linaro.org>
References: <20200220052701.7754-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_212908_793545_BA5A61AE 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For the instruction emulation or single step in kernel, when return to
the user space, the return address is not possible to be the same with
the ret_addr in thread stack.

This patch adds a helper to read out the top return address from thread
stack, this can be used for specific calibration in up case.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/thread-stack.c | 10 ++++++++++
 tools/perf/util/thread-stack.h |  1 +
 2 files changed, 11 insertions(+)

diff --git a/tools/perf/util/thread-stack.c b/tools/perf/util/thread-stack.c
index 0885967d5bc3..60cd6fdca8de 100644
--- a/tools/perf/util/thread-stack.c
+++ b/tools/perf/util/thread-stack.c
@@ -497,6 +497,16 @@ void thread_stack__sample(struct thread *thread, int cpu,
 	chain->nr = i;
 }
 
+u64 thread_stack__get_top_ret_addr(struct thread *thread, int cpu)
+{
+	struct thread_stack *ts = thread__stack(thread, cpu);
+
+	if (!ts || !ts->cnt)
+		return UINT64_MAX;
+
+	return ts->stack[ts->cnt--].ret_addr;
+}
+
 struct call_return_processor *
 call_return_processor__new(int (*process)(struct call_return *cr, u64 *parent_db_id, void *data),
 			   void *data)
diff --git a/tools/perf/util/thread-stack.h b/tools/perf/util/thread-stack.h
index e1ec5a58f1b2..b9d07a3be6c2 100644
--- a/tools/perf/util/thread-stack.h
+++ b/tools/perf/util/thread-stack.h
@@ -88,6 +88,7 @@ void thread_stack__sample(struct thread *thread, int cpu, struct ip_callchain *c
 int thread_stack__flush(struct thread *thread);
 void thread_stack__free(struct thread *thread);
 size_t thread_stack__depth(struct thread *thread, int cpu);
+u64 thread_stack__get_top_ret_addr(struct thread *thread, int cpu);
 
 struct call_return_processor *
 call_return_processor__new(int (*process)(struct call_return *cr, u64 *parent_db_id, void *data),
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
