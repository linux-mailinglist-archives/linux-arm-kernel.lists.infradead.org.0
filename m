Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB41B163A09
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 03:20:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V4YOlJvmr6w6D0/k2NCPMQ0MAULv74k/CrYWQsUZw7k=; b=THGIBBGTZYe2fEhyrtlCg0qwhQ
	qNS6Nq/ijyNaSvZaXC9IJAWPlsIMCA0FfzecIMBahavdbmF8LX2cRW1De+cjqNluYrfii4MFmL+9S
	n13DSIUk1AZS/t15c4ebTfWa5kDT4NDu9sHnSLToM/wXQUQrwKtc0p2vzAlhiVOTTGEUKHHfX7v0o
	uNxIO+xUPvLQR/sriL05v4AUvtGXmffxhD1u91v6WZ8ljhhqTdd8W6/e0wwl8v0sowyO8+qdPdOIQ
	7FaSsHHXX8gNX5spGOXo4lQXO43Z3YRagTc7RJfBYPJDw9sQf01ohHrLfR99UI4M8cYmtdgMXNbDX
	+06AESCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4EyS-0001Uj-D4; Wed, 19 Feb 2020 02:20:28 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ExZ-00016x-7A
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 02:19:36 +0000
Received: by mail-pl1-x642.google.com with SMTP id t6so8885100plj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 18:19:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0n3bCMKVPcTL7ZDSsdKbGiesjZL6H1rMCnqz/XkRXJ8=;
 b=ElOwfH5Onz8U8ol8oSfjBK0bPmP3l325hdSQjzWnNQhHXcDjV+SFvxlvtt43NbNSrA
 pnulaAvng4VefC9rILZVbu07OUdV3qhymebe732MKgx0KDzbfmEr0BuUPzUrl+fXIYvC
 BeNe1n02qOg9lDzkYOOG/YHngHJ0Fxy/Ygh37b9nGeCYQeB0GIFoGz2ZZlzMZAkmBdA1
 rnJ1pomZ0ZIwz3YO+3jD1U30mAJS3x5cxCyDeG5UBMEW6YIvHEdD76zBbBYbaNxjPAKM
 LN3Mx//kt9u/kY52UjTqc+crWNmD0u7IV0ppDu4OsmovP15N6MNmTK/2BXmSyaF+VH54
 UEnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0n3bCMKVPcTL7ZDSsdKbGiesjZL6H1rMCnqz/XkRXJ8=;
 b=IZX9Cs8weCXWbbzeuE/oOMDyv/Rt+jqQdgt/20VMd7K4+/9oG5ycvkBaNWfp6RYtLh
 crOSvuocAe04rCk8bHQMwIfnd4VKrTZnnv15k7b19gr/a3i7NxnEyUs3SSVwhOXh3q5E
 QmchL52mPMKpEfj79v4PfwSqTHlQIgsiqNSrqC1lZKbJZ9Hb8tjZtOrc+E+9BdhtCCMW
 0K7VEZCL+VRXyj+UQI8L6+ILBCPGUBnpOuOm8rlKc1P/3cFfKKoqGa5+sfLDyXucnHma
 P4uN4F2ORO3IZXQnmqkBp9Exyq6a33d8wHE29eJzyF5/7/alhtZeCps6UOm13k/7OoL+
 L50g==
X-Gm-Message-State: APjAAAUobQxK2phCL7AdXXCtLb31WMmuRcsbBCDQ+sPSPKkMeFxBA/6x
 ShtZwMNQxccOxn8ZaHORNRU90A==
X-Google-Smtp-Source: APXvYqwD9w+iDoltztRVgp/7slI+JKpGxGX4xI+qC2WnbgD6u5THByB9GOxIQT/5SsrJOkj/cck0dA==
X-Received: by 2002:a17:902:820b:: with SMTP id
 x11mr23692815pln.196.1582078772192; 
 Tue, 18 Feb 2020 18:19:32 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id q11sm322698pff.111.2020.02.18.18.19.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 18:19:31 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>, Robert Walker <robert.walker@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v5 5/5] perf cs-etm: Fix unsigned variable comparison to zero
Date: Wed, 19 Feb 2020 10:18:11 +0800
Message-Id: <20200219021811.20067-6-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219021811.20067-1-leo.yan@linaro.org>
References: <20200219021811.20067-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_181933_288501_DBCDE89E 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The variable 'offset' in function cs_etm__sample() is u64 type, it's not
appropriate to check it with 'while (offset > 0)'; this patch changes to
'while (offset)'.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 tools/perf/util/cs-etm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index aa4b6d060ebb..bba969d48076 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -962,7 +962,7 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
 	if (packet->isa == CS_ETM_ISA_T32) {
 		u64 addr = packet->start_addr;
 
-		while (offset > 0) {
+		while (offset) {
 			addr += cs_etm__t32_instr_size(etmq,
 						       trace_chan_id, addr);
 			offset--;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
