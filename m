Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D717146DDC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 17:09:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jn3cnmAU6B6TYCbyTI/eD/EZKg/MSUHdpa3HELz60/w=; b=anMWyBfXIb4Nm7
	8Ebuh1sroaMD9Exiof6tM+ZpBgXlV83knabJXG/Xk9Wt3mCIbw1PK9HeuZZZojpbB9xV0b+uenCsT
	W56IWamTwQ0UGLgrx2gtsAfezTsfMtzmDL3S0ADKrrU7a7kfxAonWiXYEMEx+C6jjsCYTUGUPDemU
	cHCytGYd7ZfGnYbDii81chbkKep6w/Euo6HSAbanqLnfzD3zQZkPAi75TZx6mDO0+xIjXxOipHouN
	0FkCuRIFb2gFx4W0Wecsk4GvP47m1MgndKicMXSBZ16IeBianJEV9VqYW4Map61pXd7JpPRv5z3qa
	k7wTv7QXUwkxyxQQeWYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuf2o-0006Nt-Vw; Thu, 23 Jan 2020 16:09:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuf1n-0005oG-Rh
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 16:08:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7319E1FB;
 Thu, 23 Jan 2020 08:08:19 -0800 (PST)
Received: from e112479-lin.arm.com (unknown [10.37.9.147])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3DFB13F68E;
 Thu, 23 Jan 2020 08:08:13 -0800 (PST)
From: James Clark <james.clark@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/7] perf report: Add --spe options for arm-spe
Date: Thu, 23 Jan 2020 16:07:30 +0000
Message-Id: <20200123160734.3775-4-james.clark@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200123160734.3775-1-james.clark@arm.com>
References: <20200123160734.3775-1-james.clark@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_080819_959862_66409766 
X-CRM114-Status: GOOD (  10.93  )
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

From: Tan Xiaojun <tanxiaojun@huawei.com>

The previous patch added support in "perf report" for some arm-spe
events(llc-miss, tlb-miss, branch-miss, remote_access). This patch
adds their help instructions.

Signed-off-by: Tan Xiaojun <tanxiaojun@huawei.com>
Tested-by: Qi Liu <liuqi115@hisilicon.com>
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
 tools/perf/Documentation/perf-report.txt | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/tools/perf/Documentation/perf-report.txt b/tools/perf/Documentation/perf-report.txt
index db61f16ffa56..01eae9a0ff98 100644
--- a/tools/perf/Documentation/perf-report.txt
+++ b/tools/perf/Documentation/perf-report.txt
@@ -468,6 +468,16 @@ include::itrace.txt[]
 
 	To disable decoding entirely, use --no-itrace.
 
+--spe::
+	Options for decoding arm-spe tracing data. The options are:
+
+		l	synthesize llc miss events
+		t	synthesize tlb miss events
+		b	synthesize branch miss events
+		r	synthesize remote access events
+
+	The default is all events i.e. the same as --spe=ltbr
+
 --full-source-path::
 	Show the full path for source files for srcline output.
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
