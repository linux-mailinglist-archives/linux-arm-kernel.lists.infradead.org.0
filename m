Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9278D2B70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 15:34:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=umRw0GPNj9MhfL7Zfb5wr02cCCwhsyvCv8BwhzMKsYc=; b=KFZZA+tVP4tKPr
	7nkuEx4eTv7/dhGyZO8miUzfaoPFU1E4CkdP4JRdhXglQVTsPD13u5q6tRjWcdFVEwtcQ517FFRDS
	opD7ECVPiMGxXmAUcMskxTmoP4C4EJfZcBU5Q5C9AgLv02rYNU5kp/FVXMjnNidA2EXOciXmVAaGJ
	1BzQY2YRJnNsUx5X/dNCp+GQtBki+XoiU1l11FGVPy6UAxSp5shxXnklWt8uuXxsTiCwzoWf+icJP
	U1ZMSHwsjWjE9lB08GVgKylVddsyOyul5WiA7etY5aVirXorWUedBK4FHEBlKJcsURFrl3HNsufpV
	JMbVv9PioC7i/wjshJNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIYZp-00006j-D3; Thu, 10 Oct 2019 13:33:57 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIYZT-0008Mf-GS
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 13:33:37 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 2EE84B697AC0BF877381;
 Thu, 10 Oct 2019 21:33:26 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.439.0; Thu, 10 Oct 2019 21:33:18 +0800
From: John Garry <john.garry@huawei.com>
To: <catalin.marinas@arm.com>, <will@kernel.org>, <rjw@rjwysocki.net>,
 <lenb@kernel.org>, <robert.moore@intel.com>, <erik.schmauss@intel.com>,
 <sudeep.holla@arm.com>, <rrichter@marvell.com>, <jeremy.linton@arm.com>
Subject: [RFC PATCH 1/3] ACPICA: ACPI 6.3: PPTT add additional fields in
 Processor Structure Flags
Date: Thu, 10 Oct 2019 21:29:50 +0800
Message-ID: <1570714192-236724-2-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1570714192-236724-1-git-send-email-john.garry@huawei.com>
References: <1570714192-236724-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_063335_725045_436C7C67 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: John Garry <john.garry@huawei.com>, gregkh@linuxfoundation.org,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-kernel@vger.kernel.org, linuxarm@huawei.com, linux-acpi@vger.kernel.org,
 wanghuiqiang@huawei.com, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Erik Schmauss <erik.schmauss@intel.com>

Commit b5eab512e7cffb2bb37c4b342b5594e9e75fd486 upstream.

ACPICA commit c736ea34add19a3a07e0e398711847cd6b95affd

Link: https://github.com/acpica/acpica/commit/c736ea34
Signed-off-by: Erik Schmauss <erik.schmauss@intel.com>
Signed-off-by: Bob Moore <robert.moore@intel.com>
Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Signed-off-by: John Garry <john.garry@huawei.com>
---
 include/acpi/actbl2.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/include/acpi/actbl2.h b/include/acpi/actbl2.h
index c50ef7e6b942..1d4ef0621174 100644
--- a/include/acpi/actbl2.h
+++ b/include/acpi/actbl2.h
@@ -1472,8 +1472,11 @@ struct acpi_pptt_processor {
 
 /* Flags */
 
-#define ACPI_PPTT_PHYSICAL_PACKAGE          (1)	/* Physical package */
-#define ACPI_PPTT_ACPI_PROCESSOR_ID_VALID   (2)	/* ACPI Processor ID valid */
+#define ACPI_PPTT_PHYSICAL_PACKAGE          (1)
+#define ACPI_PPTT_ACPI_PROCESSOR_ID_VALID   (1<<1)
+#define ACPI_PPTT_ACPI_PROCESSOR_IS_THREAD  (1<<2)	/* ACPI 6.3 */
+#define ACPI_PPTT_ACPI_LEAF_NODE            (1<<3)	/* ACPI 6.3 */
+#define ACPI_PPTT_ACPI_IDENTICAL            (1<<4)	/* ACPI 6.3 */
 
 /* 1: Cache Type Structure */
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
