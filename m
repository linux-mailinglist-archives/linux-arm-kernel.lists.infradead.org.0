Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 173EBEBBE4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 03:08:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BSAjX+GYHTVdl21Z8a9cDfL7YYkhfk0pG1uiAh4JPD0=; b=lOuT8a4+kdgeyAJrLabzF2Edbx
	I9UUKlKEa5J2y58YuZxYW0eRbmAxL0kWAP+yePFuVD81XS/hJK7dDCccCYBUfXVRwh2JXzimAahVI
	yFs6PXXi/umPzl/k5gVnfvEZJWfIWC7XvK2c5Kl9vArmjoLYh/kZBqnKpjPf+QrxYU9lcw8TNVcpc
	UaB500UMDYXP/HjRGimjSWM3on4agZll6pKkQG1lmSTKNtFZV3YvL9RjOFNHgE1SGUqQ3W2nE/DFF
	zO+OCvg8A615Pi9uNabMJeORN68gtuyI0gUN1JpDigw9W2PsbuZ736b7Z/8+XEeZ5TZmEeaDaKRTR
	Ri1qVjMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQMMn-0002RN-Vi; Fri, 01 Nov 2019 02:08:46 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQMMF-0002CQ-IY
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 02:08:13 +0000
Received: by mail-yw1-xc42.google.com with SMTP id x65so2959641ywf.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 19:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iAgomrDaaw+p9SyPDKe+DIwZEIKyPHeJdp6rMCsSqrc=;
 b=KBf2RlKG/HVF+HdZkZwipGGFDc87+W3TEb3cKUL72YSFO06gGeEQCdgEwVcGArbIEC
 0hSgawpERrPxShlj96U8j0EgDlDAsSoXTlAfDF2GR344/R8BofFgqibEFBlB+mtGqpuN
 yFMWgZDIShlUYgLFAy6VDY/j17XU0RC2KQPP9Zcp0/Fq/zv2fYl5Gzg2C+K9spCxNznK
 QykUXf43faePtkV1/a+P/HuHQYCopqaTgTTJtmlrkvjthjf5XRXXi8vGr5ds8Y7RcjoL
 KbYzAlzMi2De7OyKSieTdE1sGOTS6Q/7qt25zBlxC+3NjFCaXNOZpXMQxfg/hFGQtbec
 FXmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iAgomrDaaw+p9SyPDKe+DIwZEIKyPHeJdp6rMCsSqrc=;
 b=fkCbQhWmuOSdJI8rABbf9nDMPklwFwj01ZehIsObjSTqAEUOnYfrICpQOqdytcyC0n
 LZFX/QW5OuDEybwnKu8UaIC5iPdZnraA94MIlQ8C8sjEsmzPYy2K6D3+mtyedglc3W7o
 jyU/RbBQqfmcIl/CNttWCYcPyR7HG00LkNDn4fWe/EEfaoV9tGb29AHpa77vQFNn/Pr+
 UBjqsKLYoXwt5iF+h8uHu27qew+M0aQjs8wTAGLg/j2lC92C4IV2QQ+y90eJOaOKTcX8
 lBWi5yDqwJ0y11nVNHKnIM+/hWNM8SfZLhSoE8iQejh4BUFc9lU4wUdd0VmSrmeDc4PC
 Yajg==
X-Gm-Message-State: APjAAAWl48f6Uuemvvg9tNYlNkeZn2vSvCEWMs48ZsJnqHuQ8VwGTJrX
 TpoAx1z8DG0ZVTaYDMsZGMoT8w==
X-Google-Smtp-Source: APXvYqwocgrzQk2qV7HduXfj8l1PhQC22H7kaTVlKis0qq4lCq0+YnTVSRlOOzrOxdeHR3aunn2FAQ==
X-Received: by 2002:a81:8501:: with SMTP id v1mr6501020ywf.406.1572574090230; 
 Thu, 31 Oct 2019 19:08:10 -0700 (PDT)
Received: from localhost.localdomain (li1038-30.members.linode.com.
 [45.33.96.30])
 by smtp.gmail.com with ESMTPSA id m5sm3762076ywj.27.2019.10.31.19.08.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 19:08:09 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Robert Walker <robert.walker@arm.com>
Subject: [PATCH v2 1/4] perf cs-etm: Continuously record last branches
Date: Fri,  1 Nov 2019 10:07:47 +0800
Message-Id: <20191101020750.29063-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191101020750.29063-1-leo.yan@linaro.org>
References: <20191101020750.29063-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_190811_703265_0571ECAD 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
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
