Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 908321CA1D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 06:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5/noC4WHhYH/q9jTNs9EK6kluFV0IdEvsSEpXGy31zw=; b=UKNr3h+HmuvBlB
	PRMWdIRLh1eRJMrSkkKu7YRTkeSR9hZWiqGf5UNd/RRz+759cHJBXOvTpNDGMLJwTOkim9cpN1Fai
	F/lz6vf0FV84dsMp5OVpQvSsRMtm+H0eHGHs8S5FxbMPwJZHWG+xqxxEuvf5/rpDhpxDa8WPscf4f
	SDHSls01TpXttiAy0s4Had2npksltn9t/d5Uv5NPa9jmTIe0yWPc3Km1KSuWknnXg/dvSOBLzpOkB
	Qf7AiKdlbcc/yIczkc2iOHNDh/4EPPC7+6T2LzbzfO+ea1H70cwUnAe3MToEZ1qArOMID+eqAlpk/
	1z/yscY5IfpuZgUq3DjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWuNK-0005kI-Sl; Fri, 08 May 2020 04:12:38 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWuMx-0005dh-Mi
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 04:12:17 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 82F1688CE6760E452CDF;
 Fri,  8 May 2020 12:12:13 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.487.0; Fri, 8 May 2020 12:12:03 +0800
From: Hanjun Guo <guohanjun@huawei.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, "Rafael J. Wysocki"
 <rjw@rjwysocki.net>, Sudeep Holla <sudeep.holla@arm.com>, Will Deacon
 <will@kernel.org>
Subject: [PATCH 1/2] ACPI: GTDT: Put GTDT table after parsing
Date: Fri, 8 May 2020 12:05:52 +0800
Message-ID: <1588910753-18543-1-git-send-email-guohanjun@huawei.com>
X-Mailer: git-send-email 1.7.12.4
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_211215_907851_99AAAE43 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.35 listed in wl.mailspike.net]
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
Cc: linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mapped GTDT table needs to be released after
the driver init.

Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
---

Patch 1/2 2/2 are based on top of for-next/acpi branch of                       
the ARM64 repo.

 drivers/acpi/arm64/gtdt.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/acpi/arm64/gtdt.c b/drivers/acpi/arm64/gtdt.c
index 01962c6..f2d0e59 100644
--- a/drivers/acpi/arm64/gtdt.c
+++ b/drivers/acpi/arm64/gtdt.c
@@ -394,7 +394,7 @@ static int __init gtdt_sbsa_gwdt_init(void)
 	 */
 	ret = acpi_gtdt_init(table, &timer_count);
 	if (ret || !timer_count)
-		return ret;
+		goto out_put_gtdt;
 
 	for_each_platform_timer(platform_timer) {
 		if (is_non_secure_watchdog(platform_timer)) {
@@ -408,6 +408,8 @@ static int __init gtdt_sbsa_gwdt_init(void)
 	if (gwdt_count)
 		pr_info("found %d SBSA generic Watchdog(s).\n", gwdt_count);
 
+out_put_gtdt:
+	acpi_put_table(table);
 	return ret;
 }
 
-- 
1.7.12.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
