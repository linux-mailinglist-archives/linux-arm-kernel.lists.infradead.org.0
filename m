Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DE215005D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 02:52:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Qh1Od/2hLs9rpF09mPHyvaAqJONPFVcmd+ElexdQ7mk=; b=Kz6n1AVRAlrPRaNTpYLpsRpn8I
	eo3xF16CyMDQUUc3ADdgNR3mxGL4CoWpSzfJdmPO4yk4WYlJa/n5FOwNyv22y8zEZYnjCvwVEIs6e
	Hd0Jg9HEB9DI8Gg8Jy5B2XWf1/bIoE4s5hkGx4yVJy3UnH9k8dEz1s+UGFQ1xJJmT7z1eu9Dv+lIc
	+YsWgsIQk9FTjsAG4Idp/y/5MMOr1iiBjWGLBnYeAv+tyrDAa2vSNurLDSIz6+cwHNBBTAzNkuJHT
	BwkiX0I6/qumYwCkKur7KR/XZuIozGCaySeM9TBBSXOR4A6GQMxdJ3tlc370ETxOME6PZDzf4sqfv
	kDxnPE2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyQv2-0007sp-C9; Mon, 03 Feb 2020 01:52:56 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyQum-0007nm-C0
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 01:52:41 +0000
Received: by mail-pj1-x1044.google.com with SMTP id r67so5589120pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 17:52:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HmjIKHKHTkrFih6sNlRxYDtUepIYUbawMKXk0UIVIJQ=;
 b=gJ5viVffhA99MtSK0hwBqo6Kv5p1Bgb5bBhBhLVm0WHviPlbmV9rLNiS6wjbwRuzj2
 tBU8CbgKTv5nRDhJ6HclIscJa/aO/IBn0pFVIsxHMiT0aWYHZYiPy1vY2MBAkKriTJJ8
 DrtMoWwd3+6WkHHLTT5OLKIPVzoUBsROauIoTjXSuVPTULDxiRmzuud1n5UF89KPZzaH
 Xrt+bgLXg3/ECgCAy1lm9vJHXPPUiLICazxcdhVb3O8UfVsczRp/VVsbXzNwSv2out46
 CH6g+YGMwEHq5KmE1fvl43j98jz41JzlTt98qp9WU2zk5OVaxKRBFNLKPTo1jQUtz47n
 OMoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HmjIKHKHTkrFih6sNlRxYDtUepIYUbawMKXk0UIVIJQ=;
 b=pAqqBw/3gmBTEpy7AxOLZHEXLWvZj5HdZdQywmwkTXpZ/xci3/qP0yRZa+RdH9F+KL
 HPJoWsYRByypS6V47n1Sk/AiLKENjrAu4JokkWCQqL3yfKjue/YYXuHDrei/AH42VL6i
 1w2efm+whJhBl4Xl7h1Nn/qwltv9e0F+qph2TrFVXtvun3Wh3Q4vaC6uQaU45lUO+uFa
 XRyRnzKoPTmno4IXTO3aledSqtOT590o+Ip0SWYD3X7qlLeRtB0yVt8eR8HvDxu6uFJF
 taWZUXDCoDB0USmI1fKPIBwSwz5XLPaS4ANIceeIaXvwef2ReJit/MX5G60FAvHofsp2
 JMLQ==
X-Gm-Message-State: APjAAAVdgD9OudPPDmzmNni79K4R/+7saZeY0HO9iV1Us5PcTniygD1f
 tjEUs0Q93l8dHX/5dsdEAtvxiQ==
X-Google-Smtp-Source: APXvYqyMggOnDjV7UUimqKsBhvpZ195iCh9ysL8a7MxGLbtFriw1s9mTdl7sllaRTeE6yN8Y5weCHQ==
X-Received: by 2002:a17:902:6184:: with SMTP id
 u4mr21704213plj.198.1580694757756; 
 Sun, 02 Feb 2020 17:52:37 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id y38sm17348308pgk.33.2020.02.02.17.52.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 17:52:37 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>, Robert Walker <robert.walker@arm.com>,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v3 1/5] perf cs-etm: Swap packets for instruction samples
Date: Mon,  3 Feb 2020 09:51:59 +0800
Message-Id: <20200203015203.27882-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200203015203.27882-1-leo.yan@linaro.org>
References: <20200203015203.27882-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_175240_410509_06B65EAD 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

If use option '--itrace=iNNN' with Arm CoreSight trace data, perf tool
fails inject instruction samples; the root cause is the packets are
only switched for branch samples and last branches but not for
instruction samples, so the new coming packets cannot be properly
handled for only synthesizing instruction samples.

To fix this issue, this patch switches packets for instruction samples.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 5471045ebf5c..3dd5ba34a2c2 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1404,7 +1404,8 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 		}
 	}
 
-	if (etm->sample_branches || etm->synth_opts.last_branch) {
+	if (etm->sample_branches || etm->synth_opts.last_branch ||
+	    etm->sample_instructions) {
 		/*
 		 * Swap PACKET with PREV_PACKET: PACKET becomes PREV_PACKET for
 		 * the next incoming packet.
@@ -1476,7 +1477,8 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
 	}
 
 swap_packet:
-	if (etm->sample_branches || etm->synth_opts.last_branch) {
+	if (etm->sample_branches || etm->synth_opts.last_branch ||
+	    etm->sample_instructions) {
 		/*
 		 * Swap PACKET with PREV_PACKET: PACKET becomes PREV_PACKET for
 		 * the next incoming packet.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
