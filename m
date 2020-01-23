Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB90146DE5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 17:10:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7nKL+SpaQaFEiTt8bo021ywfgWoMPhFUJIN0wtPcIk=; b=bZSiTg0rBsymv1
	OJqWV+HtyYorqvZchT5SotHKbLNK+yPz87vmqW6iEqUy29viT0NxxyNnx4R9kKfTORZVYj+KRpg2x
	o+QFFLAzyg4DjVam5THoo+ncLRUbkIKlnWiMwVqKBOtqkp6oCTu9vGVREijMlpPHzzoNaS+gO6/8/
	LQA1mI44qOd+X5ct+I5hW25aayP63Ter0lFCs7bCVFT2UY0q0/W4CEili2w5m0ehlssKnjbLJTGwY
	z7e5qy/hgsTZIv0JTnXFmf7BPFOFOERFRtf0VbSFyMOIZf4wqF1GHN8+SeCkXFWL+U5gCpEEZCBaJ
	Eo/U99B+R3oQBrx/lQmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuf42-0000DC-MD; Thu, 23 Jan 2020 16:10:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuf2I-0006B1-EP
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 16:08:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C9519328;
 Thu, 23 Jan 2020 08:08:49 -0800 (PST)
Received: from e112479-lin.arm.com (unknown [10.37.9.147])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A3FB03F68E;
 Thu, 23 Jan 2020 08:08:42 -0800 (PST)
From: James Clark <james.clark@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 7/7] perf tools: Unset precise_ip when using SPE
Date: Thu, 23 Jan 2020 16:07:34 +0000
Message-Id: <20200123160734.3775-8-james.clark@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200123160734.3775-1-james.clark@arm.com>
References: <20200123160734.3775-1-james.clark@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_080850_545819_CEBA6311 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <al.grant@arm.com>,
 wxf.wang@hisilicon.com, Peter Zijlstra <peterz@infradead.org>,
 Will Deacon <will@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 suzuki.poulose@arm.com, Arnaldo Carvalho de Melo <acme@kernel.org>,
 gengdongjiu@huawei.com, linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, liuqi115@hisilicon.com,
 James Clark <james.clark@arm.com>, huawei.libin@huawei.com,
 Namhyung Kim <namhyung@kernel.org>, nd@arm.com, liwei391@huawei.com,
 Tan Xiaojun <tanxiaojun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

precise_ip is not supported on Arm and the kernel may be
updated to reflect this. So unset it when we know we can use
SPE to get precise data instead.

Signed-off-by: James Clark <james.clark@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Tan Xiaojun <tanxiaojun@huawei.com>
Cc: Al Grant <al.grant@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
---
 tools/perf/util/arm-spe.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/perf/util/arm-spe.c b/tools/perf/util/arm-spe.c
index 0fcaefd386a6..0ed2a68db0b3 100644
--- a/tools/perf/util/arm-spe.c
+++ b/tools/perf/util/arm-spe.c
@@ -937,6 +937,7 @@ void arm_spe_precise_ip_support(struct evlist *evlist, struct evsel *evsel)
 			evsel->core.attr.config = SPE_ATTR_TS_ENABLE
 						| SPE_ATTR_BRANCH_FILTER;
 			evsel->core.attr.config1 = SPE_ATTR_EV_BRANCH;
+			evsel->core.attr.precise_ip = 0;
 		}
 	}
 }
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
