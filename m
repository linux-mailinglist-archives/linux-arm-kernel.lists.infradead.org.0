Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C174163A01
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 03:19:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QmFKp7U/0E8HAoepUPYkJX/OqxzW7DGHuXUNiKJaAjc=; b=BctfkTbx7h4Q3zych0MNm9boE6
	pjTaQ4G+TgVGtGK5LKoRA3Cc1a6QVgIty5Sq5UkgrpbG6ZqfgmUKq/VVaZW3YNi2XbbEwoAslRhEB
	Hqgm3mEgpZUy45Ocug9UD7w1rOXnMwCGIiJEaszppRDqwcFCUxUoQIRE0lLh1Qd5WzJ8MrB392u9s
	iAuxELPbM/uNAsQ6f4nwcB1ExyavI9UjwQ7Zf3bSl4JTyawad83VY53LboPrp5+Hu1FeFng8YMbU1
	voJwwuo1FED6FT/PisKedlWoFZdlBf/YUTfktoZ6ET4hefF4rBGAPYV3pit6QoYhhrrqYn0siZkP4
	CT4rv5yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ExS-0000oC-PO; Wed, 19 Feb 2020 02:19:26 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Ewz-0000YZ-Qu
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 02:19:00 +0000
Received: by mail-pl1-x643.google.com with SMTP id y1so8884253plp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 18:18:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Nt7KCfOCeoniLbejBgBQRi5gzr/DUGn0cHKbOhTd9/Q=;
 b=dOfv3pE6XbFb8+IRmXPhqeV8igWMRBbr+HjmaMwvwVzN9E/7yEORi7dYoDiXgpqnOd
 YbNIC741TwrprDCJYLH3GbQBZzKZBTZ4hgruvN8k6MAu7lNWg/YmqdPtnGRBKSEC7ELr
 5cXWrgy6pUF46qjvO9k1oqqPXRDgof2z+DaGUJ8Ta9LjbCgSX+QG7ob36DdlOqc1tEPz
 pLVVNUKMkQy13ZjCvs5MYJeMBh8Yb11VwrKuj+Z7g29jZJGByTnOUD44UUa8CmSYNWTS
 /pXvhI7S/Ob1rEthERuwJqU9v9YToQJcP6Apb7oIpa5LZFeBFlGJNxlVAgrgF8P8QaLT
 HElQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Nt7KCfOCeoniLbejBgBQRi5gzr/DUGn0cHKbOhTd9/Q=;
 b=CWeWcn3HAKVBZx7HBJl4w+Riu0pqlwT4TjntNB7WAno/8haiXy3masY086TzL/lF14
 o28sKdRdjZVn6phWkZdASy1dfo7ewqmRX1OxP7dtWnilVAPkjC4TBAeeeamPo2ikJl9u
 KfgThV5KYldj0BdihfJDGpR+zP1k5lfvXAlfnhWXEz6RepcsL7YVYraE+TnyTIxEJdXX
 T0KBxwQvfr4Y9PCzFPxOFlNk+sz5WsFnRM5JUCD3/gdYx8np0IQomylfTaGyPXOEHszv
 3vaDwJDx4wo8Viptdzlz7ff6J9xKJa0yVuoaNNo+vIFaRjm/eK8/slfxm1JnDnhgBH4U
 0euw==
X-Gm-Message-State: APjAAAWb9CJkIwKJ/2LlPIsNUhGKGOHixy3Ozf9SJRHQJljKn53p4Wg4
 P4UCf/pqa4FZ9FX+vFFUWk+m0g==
X-Google-Smtp-Source: APXvYqxDMsV8y7MK6jcTkE0Nuq8R5uyaSz1O3tf6S14c6N+G6BlQ2tLZV9SIKkIeGfxUC7AzaJhMIA==
X-Received: by 2002:a17:902:8e84:: with SMTP id
 bg4mr22905597plb.11.1582078736772; 
 Tue, 18 Feb 2020 18:18:56 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id q11sm322698pff.111.2020.02.18.18.18.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 18:18:56 -0800 (PST)
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
Subject: [PATCH v5 2/5] perf cs-etm: Continuously record last branch
Date: Wed, 19 Feb 2020 10:18:08 +0800
Message-Id: <20200219021811.20067-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219021811.20067-1-leo.yan@linaro.org>
References: <20200219021811.20067-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_181857_896226_B80768BA 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

Every time synthesize instruction sample, the last branch recording
will be reset.  This is fine if the instruction period is big enough,
for example if use the option '--itrace=i100000', the last branch
array is reset for every sample with 100000 instructions per period;
before generate the next instruction sample, there has the sufficient
packets coming to fill the last branch array.

On the other hand, if set a very small period, the packets will be
significantly reduced between two continuous instruction samples, thus
the last branch array is almost empty for new instruction sample by
frequently resetting.

To allow the last branches to work properly for any instruction periods,
this patch avoids to reset the last branch for every instruction sample
and only reset it when flush the trace data.  The last branches will
be reset only for two cases, one is for trace starting, another case
is for discontinuous trace; other cases can keep recording last branches
for continuous instruction samples.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 tools/perf/util/cs-etm.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 84f30c2de185..b2f31390126a 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1170,9 +1170,6 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 			"CS ETM Trace: failed to deliver instruction event, error %d\n",
 			ret);
 
-	if (etm->synth_opts.last_branch)
-		cs_etm__reset_last_branch_rb(tidq);
-
 	return ret;
 }
 
@@ -1485,6 +1482,10 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
 swap_packet:
 	cs_etm__packet_swap(etm, tidq);
 
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
