Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4D3D2C50
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 16:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XfGb6zUxxzrbIo+IAHX5ELJ9+Jh9A1mbQRw6/B45Lw=; b=ZOi10QRzvPiFuY
	AyTuJvPo5orpdwSl3mfihdpIk0UruyvDUPDVxz4w+mQFE6zj81pUgW6wRAHZjL7iTRhItEbXz76LW
	s2vjADeWMvVFinJPAtbRIRbVjs4rOAJtXeVC1XVPF3XmkSGKdlLQd7MCYiHyYN6wiR+Yfgs2a/1fy
	DbVa4wQYOUKtkn483FPBekQ7Bk3KSkw1jsG0/wSIQUgaWpVBEoJhIqge+qbetZegXv6t3aM0i3Y7K
	JDkRIeBm9FsCE6NXnTfrG/9IeFytm8gdPI/PeO6OfJyYmjR0BRViRofHUk31yQGOFNS0p5VUAFSqc
	Ks+pg3SCuB9rgL22slxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIZKZ-0005AT-Jh; Thu, 10 Oct 2019 14:22:15 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIZKS-00058l-Mc
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 14:22:10 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 07:22:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,280,1566889200"; d="scan'208";a="394056897"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga005.fm.intel.com with ESMTP; 10 Oct 2019 07:22:05 -0700
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 10 Oct 2019 07:22:04 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.139]) by
 ORSMSX162.amr.corp.intel.com ([169.254.3.170]) with mapi id 14.03.0439.000;
 Thu, 10 Oct 2019 07:22:04 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: John Garry <john.garry@huawei.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will@kernel.org" <will@kernel.org>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>, "lenb@kernel.org" <lenb@kernel.org>, 
 "Schmauss, Erik" <erik.schmauss@intel.com>, "sudeep.holla@arm.com"
 <sudeep.holla@arm.com>, "rrichter@marvell.com" <rrichter@marvell.com>,
 "jeremy.linton@arm.com" <jeremy.linton@arm.com>
Subject: RE: [RFC PATCH 1/3] ACPICA: ACPI 6.3: PPTT add additional fields in
 Processor Structure Flags
Thread-Topic: [RFC PATCH 1/3] ACPICA: ACPI 6.3: PPTT add additional fields
 in Processor Structure Flags
Thread-Index: AQHVf29d/i25bO8x9k+D8X4yzuUW7qdT65HA
Date: Thu, 10 Oct 2019 14:22:04 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B9691ADA@ORSMSX110.amr.corp.intel.com>
References: <1570714192-236724-1-git-send-email-john.garry@huawei.com>
 <1570714192-236724-2-git-send-email-john.garry@huawei.com>
In-Reply-To: <1570714192-236724-2-git-send-email-john.garry@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzczY2E1MzUtMmRkMS00MzhjLWEwZTgtNTAwODgxMGVmZjU4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoib2pcL3lzMk1yVGpXYVBIQVJcL3l5QnpSZHhMTGxLeDdxMkZnSzlWMFNKRGhSNGNLNVYwWW5xS1Y3cEd1SjF4cUdTIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_072208_779717_6CF1AE7A 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linuxarm@huawei.com" <linuxarm@huawei.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "wanghuiqiang@huawei.com" <wanghuiqiang@huawei.com>,
 "guohanjun@huawei.com" <guohanjun@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

John,
These #defines are all already in actbl2.h. Perhaps they didn't make it into Linux.
Bob


-----Original Message-----
From: John Garry <john.garry@huawei.com> 
Sent: Thursday, October 10, 2019 6:30 AM
To: catalin.marinas@arm.com; will@kernel.org; rjw@rjwysocki.net; lenb@kernel.org; Moore, Robert <robert.moore@intel.com>; Schmauss, Erik <erik.schmauss@intel.com>; sudeep.holla@arm.com; rrichter@marvell.com; jeremy.linton@arm.com
Cc: linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; linux-acpi@vger.kernel.org; linuxarm@huawei.com; gregkh@linuxfoundation.org; guohanjun@huawei.com; wanghuiqiang@huawei.com; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; John Garry <john.garry@huawei.com>
Subject: [RFC PATCH 1/3] ACPICA: ACPI 6.3: PPTT add additional fields in Processor Structure Flags

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

diff --git a/include/acpi/actbl2.h b/include/acpi/actbl2.h index c50ef7e6b942..1d4ef0621174 100644
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
