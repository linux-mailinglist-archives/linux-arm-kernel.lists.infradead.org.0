Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7F41FC979
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 11:06:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8EL3MnZARi6O0ixPhcfayKjrRWZrVMzIdbVBJMWYto=; b=cGBvEjxnjUZF8s
	9/Vaw0nvA6OUV4JnWk7JO0cq4FFKUWdpzmU4vItRH7+AvM/OpqI1nVcL3huywT7hCVFo4tXVSK563
	lu4PsVx5O4EsgNEwdVO9/wEGI5h/F7YiQz+ZxPpV+X12NRPqlKuQwrE4rSX0sKELXp5QXGDHySdKS
	yW7I6FtvoP5BWgiaFm8m9jGidkjBhKxMCGvP+k4QID4wzXpc1sS9Y0wGrDiVPo2pRaf625atrqlvI
	bZezkxQj0hJuiRKp9ZoJVOGD4sLUQrS+n/LX+stiGBUZJW7ge8O1v+ePwMeMFiYuNF0J2/N0skxEe
	UxVTqKTr/TWFane67Qyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlU1f-0004ak-JI; Wed, 17 Jun 2020 09:06:31 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlU1U-0004YE-41
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 09:06:21 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 0DB84318A4F0EC286102;
 Wed, 17 Jun 2020 17:06:15 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.487.0; Wed, 17 Jun 2020 17:06:07 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>
Subject: [PATCH v2 1/2] perf pmu: List kernel supplied event aliases for arm64
Date: Wed, 17 Jun 2020 17:01:53 +0800
Message-ID: <1592384514-119954-2-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1592384514-119954-1-git-send-email-john.garry@huawei.com>
References: <1592384514-119954-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_020620_338436_F1A3C0C1 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: irogers@google.com, ak@linux.intel.com, John Garry <john.garry@huawei.com>,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In commit dc098b35b56f ("perf list: List kernel supplied event aliases"),
the aliases for events are supplied in addition to CPU event in perf list.

This relies on the name of the core PMU being "cpu", which is not the case
for arm64, so arm64 has always missed this. Use generic is_pmu_core()
helper which takes account of arm64 to make this feature work for arm64
(and possibly other archs).

Sample, before:
  armv8_pmuv3_0/br_mis_pred/          [Kernel PMU event]
after:
  br_mis_pred OR armv8_pmuv3_0/br_mis_pred/          [Kernel PMU event]

Acked-by: Namhyung Kim <namhyung@kernel.org>
Signed-off-by: John Garry <john.garry@huawei.com>
---
 tools/perf/util/pmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index 93fe72a9dc0b..a375364537cd 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -1475,7 +1475,7 @@ void print_pmu_events(const char *event_glob, bool name_only, bool quiet_flag,
 		list_for_each_entry(alias, &pmu->aliases, list) {
 			char *name = alias->desc ? alias->name :
 				format_alias(buf, sizeof(buf), pmu, alias);
-			bool is_cpu = !strcmp(pmu->name, "cpu");
+			bool is_cpu = is_pmu_core(pmu->name);
 
 			if (alias->deprecated && !deprecated)
 				continue;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
