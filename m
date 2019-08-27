Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B7B9DB4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 03:41:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCwjFxO3OESOOZHn93EHpNpRWPF8dkKY2QDRVcBq5Z8=; b=pC+bqUMOkjD+r6
	CZFZba/BtkLHo/cFpc0NUfzef9M3FJcW2Mez9/pbNBvfxO6o9PTy1HdDsX3vJm/PAQ94nNwseEnVD
	nUcaUR2nxlmGtkGPjdgLw8GMKspzW1ARhTaC7tp0pvEBpPh6+H9MRBOxkws2dUoxW8OXzN6Innhlk
	shmy518ghC/uGPdWxvH+MH6PrbSYITnX1BTYUvdylDmSyuVKNlia/6RN3gMNegQqIvuFJHcTCNrFM
	hE4C5XBEDPWzHmNO51PMIZnwoWdhBJAs6XYDoQ7UentbmAP2AQeowOVq6eVCS4XtpwzYCfNZFwGAk
	comrL8Wbb2wb6obzYAmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2QTr-0003YZ-E8; Tue, 27 Aug 2019 01:41:07 +0000
Received: from mx0b-00190b01.pphosted.com ([2620:100:9005:57f::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2QT5-00032e-2t
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 01:40:20 +0000
Received: from pps.filterd (m0050102.ppops.net [127.0.0.1])
 by m0050102.ppops.net-00190b01. (8.16.0.42/8.16.0.42) with SMTP id
 x7R1c466007648; Tue, 27 Aug 2019 02:39:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=jan2016.eng;
 bh=6bLzT/xGrMdMSZScdKRaqV/sefepJrEX8fgGKtX2wT4=;
 b=foj2JQ0CuexFO7xBAolK7ds0g12+FjuqfvfPeGlu62WNr9hlSkD8fOSErk9wQ7Eij00l
 lbM9QGXf29hi1c1I74rVqQqleBm+QjzMc9cOAWQqMv1CF4VFOfu5/8dkyrNYaqoFE+Mg
 OkqP2pX6pHSvPu1lIODxr830ZW/O5rxa2XSve9xAYKvx4b3b/v9DuCCWWYBnYUZDBfAL
 pPvcT7DwMvGk1k4myqSTcqXKvbJC2ul1+H+yhHuQmLOB94Gnc40lM7dHi0PbHAi3N7lj
 L24QxceimjS48O9RObypXaH1IMJkEwGQ911JzuADPJsvffnKJrtKTeqzU7BX5rYvHOhi kg== 
Received: from prod-mail-ppoint2 (prod-mail-ppoint2.akamai.com [184.51.33.19]
 (may be forged))
 by m0050102.ppops.net-00190b01. with ESMTP id 2ujwcyjmge-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 27 Aug 2019 02:39:45 +0100
Received: from pps.filterd (prod-mail-ppoint2.akamai.com [127.0.0.1])
 by prod-mail-ppoint2.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x7R1VppB032032; Mon, 26 Aug 2019 21:39:45 -0400
Received: from email.msg.corp.akamai.com ([172.27.123.30])
 by prod-mail-ppoint2.akamai.com with ESMTP id 2uk0jvvcu5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 26 Aug 2019 21:39:44 -0400
Received: from usma1ex-cas4.msg.corp.akamai.com (172.27.123.57) by
 usma1ex-dag1mb6.msg.corp.akamai.com (172.27.123.65) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Mon, 26 Aug 2019 21:39:44 -0400
Received: from igorcastle.kendall.corp.akamai.com (172.29.170.135) by
 usma1ex-cas4.msg.corp.akamai.com (172.27.123.57) with Microsoft SMTP Server
 id 15.0.1473.3 via Frontend Transport; Mon, 26 Aug 2019 18:39:44 -0700
Received: by igorcastle.kendall.corp.akamai.com (Postfix, from userid 29659)
 id 4C05664C10; Mon, 26 Aug 2019 21:39:41 -0400 (EDT)
From: Igor Lubashev <ilubashe@akamai.com>
To: Jiri Olsa <jolsa@kernel.org>, Arnaldo Carvalho de Melo <acme@redhat.com>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 1/5] perf event: Check ref_reloc_sym before using it
Date: Mon, 26 Aug 2019 21:39:12 -0400
Message-ID: <1566869956-7154-2-git-send-email-ilubashe@akamai.com>
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
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0
 lowpriorityscore=0 clxscore=1011 adultscore=0 priorityscore=1501
 malwarescore=0 phishscore=0 impostorscore=0 bulkscore=0 mlxlogscore=999
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1908270015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_184019_438217_7C25CE11 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2620:100:9005:57f:0:0:0:1 listed in] [list.dnswl.org]
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

Check for ref_reloc_sym before using it instead of checking
symbol_conf.kptr_restrict and relying solely on that check.

Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
Reported-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 tools/perf/util/event.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/tools/perf/util/event.c b/tools/perf/util/event.c
index f440fdc3e953..b84f5f3c9651 100644
--- a/tools/perf/util/event.c
+++ b/tools/perf/util/event.c
@@ -913,11 +913,13 @@ static int __perf_event__synthesize_kernel_mmap(struct perf_tool *tool,
 	int err;
 	union perf_event *event;
 
-	if (symbol_conf.kptr_restrict)
-		return -1;
 	if (map == NULL)
 		return -1;
 
+	kmap = map__kmap(map);
+	if (!kmap->ref_reloc_sym)
+		return -1;
+
 	/*
 	 * We should get this from /sys/kernel/sections/.text, but till that is
 	 * available use this, and after it is use this as a fallback for older
@@ -940,7 +942,6 @@ static int __perf_event__synthesize_kernel_mmap(struct perf_tool *tool,
 		event->header.misc = PERF_RECORD_MISC_GUEST_KERNEL;
 	}
 
-	kmap = map__kmap(map);
 	size = snprintf(event->mmap.filename, sizeof(event->mmap.filename),
 			"%s%s", machine->mmap_name, kmap->ref_reloc_sym->name) + 1;
 	size = PERF_ALIGN(size, sizeof(u64));
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
