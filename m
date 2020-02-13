Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8505115BBEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 10:43:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SiX2au6+TcuM18Pay+IU0nQf0dYAPu4OOj7tQY0m8Jw=; b=KJfXbefyaKetA6FZB7Et/RBx50
	haMpQ1n3QhN3UbggYiSb8iwemXvxr/3TVvomXS8BBIyKgu1UVWUQgMzGHOIft6l3/ib0uJ4wAo/x+
	pnf9yBbGqWvWbo1JP1Nyx2mUO5tFeaB3T2rkgLti8hCedDj3KwB/UGcJzFD27e/R1ChMoDW0xlXAt
	izQa4BrfKrQZO3YbBfUByh36KSz+3kDjYwxG9Ge9919eLKsIdBQaX/xgwylf0C+fMJynq3xjAzAHW
	XXGnRpv0yn0KInWPXTYROfkApZ4k6lNwr10Q2QZ2IwVAabBzPR0fIB9ouqy8b5yzzz0c0LgGYScW+
	uMxUab8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2B1q-0007fC-5t; Thu, 13 Feb 2020 09:43:27 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2B1L-0007S5-QO
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 09:42:58 +0000
Received: by mail-pf1-x443.google.com with SMTP id y73so2812800pfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 01:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GZ5nyXgOdQJHZ2cR30e/+vtSPLvl2FoSgBANtMAsC3w=;
 b=krwQ6sIKq1EtFX9uJx37mA/JlSIdFZBp9pSRKe0hxbRsdNfhL+NWHJ/7btNCGQ06h5
 ckpj1vPA072BGG8kAahDKoqZtN8u16iEypF7iTJwlJb7aMZ93KNoKUjBdWkO1gZkWTCd
 gfmJtVTGe8p5gWV3vg4fTtTcOtOn21+oXXjiz859yYzqHoNSteC53vrut/mpj8BlrKVf
 i0zurWflO9wJe9xzrhWEJKeF1JfTz/EsQgLnPccNQdZ2RD91oHGuiCq7ZyIlaLyUKL7g
 7kuTD/tXHWvB/+lQPXIoNI1qMyJMAs/eGC0zBd9yalzwNNDJwCxcVBv6XGRgA0WlztUV
 zV3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GZ5nyXgOdQJHZ2cR30e/+vtSPLvl2FoSgBANtMAsC3w=;
 b=dX6zuMycf7RTYChvnL2QWizuMi2lG8ONUbFRh10K7pEyDqsiH3a22LiHuKvBvMwjOx
 jBsrt5XtRN4gqS/hLhFOojmR915IUAD5DsRDCAFCAP5lgGFttuCHIjco8FPuH07MhumT
 LCo3z6Cy4z0obax8PpMYv/dkGMGlN1ozgSKDGfwy7OlRQ1a/0Eynur+mkB+Z61/q48Na
 vjTnnotAKeIWRDJJ3Fcw3PHQx6gMei09dn6Riok43uIRaJPhu3KjnEXrZ6Kslx1XA6GD
 rWGpN95mIK9khKRx7VNzWnxBeUh3fiEJK5PNzSWnyp6N7ei7K+P6NpL2DDOGO0xge4Jt
 FRvg==
X-Gm-Message-State: APjAAAWBFZG9ls4cO9/ef5V3o7SMjuPVY0VcDKNxVgFxFhOvc4IJFlbh
 mNw+SKmULpv0NlSKnb0csXvSFg==
X-Google-Smtp-Source: APXvYqwwFnhUMc3e+nIoi46LQxwZ/BKqxx5Qc3gbVTYD2Yj6SMe+VVEZ1UYEjQ7mExqzjyNoMkXzUg==
X-Received: by 2002:aa7:9205:: with SMTP id 5mr13196607pfo.213.1581586974535; 
 Thu, 13 Feb 2020 01:42:54 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id 3sm2310277pfi.13.2020.02.13.01.42.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 01:42:54 -0800 (PST)
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
Subject: [PATCH v4 2/5] perf cs-etm: Continuously record last branch
Date: Thu, 13 Feb 2020 17:42:01 +0800
Message-Id: <20200213094204.2568-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200213094204.2568-1-leo.yan@linaro.org>
References: <20200213094204.2568-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_014256_397176_0853C63E 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
