Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434559DB49
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 03:41:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tAQEZCFWAJdlB0UgLW7AeJimb8eOuUPz0cxkiSZehQQ=; b=L6iX4HKKXW610t
	akCMS9d6nuGKmEy+mHbWCAMna2goTRfIbvpHDK5w9OWYc3fKA0LsEM6fH+Za+LFh82IpENN4MSx8P
	GWnuCUG4hXcka7/LCznzonnyU5hThG10tNUSB0qbf0fmNiOVJs18ZqqDwhrymxiTE5ekds7fiu62C
	BbDsQkNv9dxph9l6u2dA2sNzXW6wDGTs1/I661SL64fVjolXD0Tgwp6u8FBnX6IsiFe425lW+nD00
	7uX5+cuK+xFRZpDtrDxzM19g6Om5EoLhSAsVlBaTJKrODP5sFgiAIKht1fHMmS1wscrucAMn8SeXk
	alFh7qTmvZlkA7ShDiSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2QTd-0003L9-E9; Tue, 27 Aug 2019 01:40:53 +0000
Received: from mx0a-00190b01.pphosted.com ([2620:100:9001:583::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2QSr-00023c-3z
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 01:40:09 +0000
Received: from pps.filterd (m0122332.ppops.net [127.0.0.1])
 by mx0a-00190b01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x7R1bkrg008703; Tue, 27 Aug 2019 02:39:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=jan2016.eng;
 bh=f/mlnpASr56fTSZ5OtsufOawpNk8bRy7Xrlqlzx/OIM=;
 b=MOzA8wnx3heltPi94muKsTcvnyJVZXnKe+cZVyNd3WBIhy8sZjVZs5x16/rrN6+zvq3g
 BqyPWwL4+7H+xb8ba9EdUZbSgqtt9MCk7s3W69OgqWdrpFU4PcSsOyGk5pnhClRuQtZ3
 ZWPuHcc4zunVI0GdtDh+qeJ2W6VJYyKSZ8J21RtoW/hA0G3tifq+Nca8RhCrRM/9Xfbh
 1Vru4bAwluj5vLM2v1vjTp7e2HH7yUS84CDwLVcEKcb0g+ErU28faDmpEYVE9CFtYjNM
 IFQA06Comb7JIOa9WplJfs6suKPuCK1WUIl5d4zaLjYp2iCJIhFY/zdmJz6KVwME7ydY Jw== 
Received: from prod-mail-ppoint8 (prod-mail-ppoint8.akamai.com [96.6.114.122]
 (may be forged))
 by mx0a-00190b01.pphosted.com with ESMTP id 2ujwcst98a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 27 Aug 2019 02:39:47 +0100
Received: from pps.filterd (prod-mail-ppoint8.akamai.com [127.0.0.1])
 by prod-mail-ppoint8.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x7R1VkrU011780; Mon, 26 Aug 2019 21:39:46 -0400
Received: from email.msg.corp.akamai.com ([172.27.123.31])
 by prod-mail-ppoint8.akamai.com with ESMTP id 2uk0jvhdcg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 26 Aug 2019 21:39:46 -0400
Received: from USMA1EX-DAG1MB5.msg.corp.akamai.com (172.27.123.105) by
 usma1ex-dag3mb6.msg.corp.akamai.com (172.27.123.54) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Mon, 26 Aug 2019 21:39:44 -0400
Received: from usma1ex-cas4.msg.corp.akamai.com (172.27.123.57) by
 usma1ex-dag1mb5.msg.corp.akamai.com (172.27.123.105) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Mon, 26 Aug 2019 21:39:44 -0400
Received: from igorcastle.kendall.corp.akamai.com (172.29.170.135) by
 usma1ex-cas4.msg.corp.akamai.com (172.27.123.57) with Microsoft SMTP Server
 id 15.0.1473.3 via Frontend Transport; Mon, 26 Aug 2019 18:39:44 -0700
Received: by igorcastle.kendall.corp.akamai.com (Postfix, from userid 29659)
 id 4A68564C03; Mon, 26 Aug 2019 21:39:41 -0400 (EDT)
From: Igor Lubashev <ilubashe@akamai.com>
To: Jiri Olsa <jolsa@kernel.org>, Arnaldo Carvalho de Melo <acme@redhat.com>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 3/5] perf util: kernel profiling is disallowed only when
 perf_event_paranoid > 1
Date: Mon, 26 Aug 2019 21:39:14 -0400
Message-ID: <1566869956-7154-4-git-send-email-ilubashe@akamai.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566869956-7154-1-git-send-email-ilubashe@akamai.com>
References: <1566869956-7154-1-git-send-email-ilubashe@akamai.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-26_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908270014
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-26_08:2019-08-26,2019-08-26 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0
 priorityscore=1501 mlxscore=0 malwarescore=0 adultscore=0 phishscore=0
 mlxlogscore=999 clxscore=1015 lowpriorityscore=0 bulkscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1908270015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_184005_434222_ECD553A7 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2620:100:9001:583:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>, James Morris <jmorris@namei.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Perf was too restrictive about sysctl kernel.perf_event_paranoid. The
kernel only disallows profiling when perf_event_paranoid > 1. Make perf do
the same.

Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
---
 tools/perf/util/evsel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
index 0b3b5af33954..bfe6ed2abcc2 100644
--- a/tools/perf/util/evsel.c
+++ b/tools/perf/util/evsel.c
@@ -279,7 +279,7 @@ struct evsel *perf_evsel__new_idx(struct perf_event_attr *attr, int idx)
 
 static bool perf_event_can_profile_kernel(void)
 {
-	return perf_event_paranoid_check(-1);
+	return perf_event_paranoid_check(1);
 }
 
 struct evsel *perf_evsel__new_cycles(bool precise)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
