Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9237E3643
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 17:15:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BSAjX+GYHTVdl21Z8a9cDfL7YYkhfk0pG1uiAh4JPD0=; b=etmN95Ogl6mBCtbcDK3dEavNqJ
	PzRz9SuVX72v+OGllT9yyYxawFxRrchkiyB2dzFGiMj2BjWpSSAfKRnBazUxLsqSxhVY8f5ioLUzT
	Mm3fGZUcinUJVYB1CIrT/Pc/5gOvhcVPgh95W2a6rZi37br+BhVQL1u6YG3ArdJBqG9kToy1byvoq
	Z7+JI6779/I8vrDHRUG+OM0bMild6qOWg7vJPYsMt3o8NE4lzmKljWk1B7yhMwNY7mpycGXMeufg/
	LxjxbfpiI5t8TpE8rc5wyZ6fTp0C4MDVbMmzucu6ZQh4dZtCgjiI4hanMtxwZOaJ2c6o1ByF4KfQv
	5nZ9ltCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNeps-0002pn-Q2; Thu, 24 Oct 2019 15:15:36 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNepS-0002Js-VE
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 15:15:12 +0000
Received: by mail-qk1-x742.google.com with SMTP id f18so23144434qkm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 08:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iAgomrDaaw+p9SyPDKe+DIwZEIKyPHeJdp6rMCsSqrc=;
 b=P5Z9s7tQX1G3oEdM4YkZvIy9JwZJm7c9n9mVSVcigEo+f08pPSB15O+iIGQQpa8iIM
 G3oOT++5AX46oumLuNw63gqOs1XcA+8gU94YEpASQyvBUu/+Vb1sPvW4JclYvp0wRC/Q
 YMSPhO+qnod1JwlDRe86ke+XVh6Pzokns3VnnCtu2LgOaBZWmk50vQILLjP1CdDojU6L
 wR4o17+y954XBO3kwDwXAPhXqd0Bb0kWtboPY48cuDnhNzrXBTyOH2SPpOXwC+g4rYLu
 1L+1AljcwUuqwQQdJXineJMQK76V3ejsnirZjuwI0dMsBTPJ5nZG9MyDB9R1slKaECww
 JAfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iAgomrDaaw+p9SyPDKe+DIwZEIKyPHeJdp6rMCsSqrc=;
 b=OhIDK3Xi/4w+c3gBpquaChV1n85Oa4XmEc25sEE8w9pyR8vJQns8iGEtYvWYdUjOHR
 /edaLLZUqi+L7RC3+nR2IKS/tAjna5dGiqwAl+YmIFa291HHSFZnerYrQ/Y/WT0CvoGQ
 dUY9ccDmeCVKpy6VoAmlrkmyocUcFdvr0NCnmGASTlRRbyauUWTwaNFF4jqXq1uBBBDk
 V02MZhx1ORYeLP8NOfMBhUV5rIW0B4kPQtnnZovNIuio+ePCIBG+/xA4w//iwTJChjw8
 1efwnTGWRqATcwR8Yl0FlAQJ6gQ5QtuZbEbwWkwrfWlPk86csPuj2tY5cX1FbVaRxEti
 ybZA==
X-Gm-Message-State: APjAAAU7DGVU4HtGCOYx01pB31JHhNqC6BEYDAQngXLkAk/K8pLnocLb
 x8M2XBQxKA1f70ArTUU896qHDA==
X-Google-Smtp-Source: APXvYqzlH3likrYVsNYXLQ5BlmwDmJjy4QCkXxBYjW7RbaO6cE+XDl6ZAOSajy7ViS/coV1V3YT1lQ==
X-Received: by 2002:a37:f514:: with SMTP id l20mr1916565qkk.331.1571930109291; 
 Thu, 24 Oct 2019 08:15:09 -0700 (PDT)
Received: from localhost.localdomain (li937-157.members.linode.com.
 [45.56.119.157])
 by smtp.gmail.com with ESMTPSA id l5sm4346073qtj.52.2019.10.24.08.14.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:15:08 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>,
 Robert Walker <robert.walker@arm.com>
Subject: [PATCH v1 1/4] perf cs-etm: Continuously record last branches
Date: Thu, 24 Oct 2019 23:13:22 +0800
Message-Id: <20191024151325.28623-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024151325.28623-1-leo.yan@linaro.org>
References: <20191024151325.28623-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_081511_058472_9E663B2A 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Every time synthesize instruction sample, the last branches recording
will be reset.  This would be fine if the instruction period is big
enough, for example if we use the option '--itrace=i100000', the last
branch array is reset for every instruction sample (10000 instructions
per period); before generate the next instruction sample, there has the
enough packets coming to fill last branch array.  On the other hand,
if set a very small period, the packets will be significantly reduced
between two continuous instruction samples, thus if the last branch
array is reset for the previous instruction sample, it's almost empty
for the next instruction sample.

To allow the last branches to work for any instruction periods, this
patch avoids to reset the last branches for every instruction sample
and only reset it when flush the trace data.  The last branches will
be reset only for two cases, one is for trace starting, another case
is for discontinuous trace; thus it can continuously record last
branches.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index f5f855fff412..8be6d010ae84 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1153,9 +1153,6 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 			"CS ETM Trace: failed to deliver instruction event, error %d\n",
 			ret);
 
-	if (etm->synth_opts.last_branch)
-		cs_etm__reset_last_branch_rb(tidq);
-
 	return ret;
 }
 
@@ -1486,6 +1483,10 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
 		tidq->prev_packet = tmp;
 	}
 
+	/* Reset last branches after flush the trace */
+	if (etm->synth_opts.last_branch)
+		cs_etm__reset_last_branch_rb(tidq);
+
 	return err;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
