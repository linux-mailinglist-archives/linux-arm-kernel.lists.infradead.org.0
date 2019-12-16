Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3C31209F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 16:41:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IcLkxsZeFyso5Ef5+sZYAKRRg+EFWlpHvtWv2azBbuQ=; b=IWlJBIVK5uj+u9
	dCwOt7iJwIpPTn9UhF7sSu/ikrC0+TWe95FntwbSnnjjiyJ61+ge/FsHqpxev+ch2FJJ4hSMrWXp/
	hbQCFrc+6NnkY32p3JdJFWNuoq30+1mwJQ+KisTIXhJN9okSYRdS7KNreWcDCvYQCo4CGnr2BKFUJ
	ToteL0A7DEsv5CkJH9jgeTP/w8dozd2IqLNFWQhEosmrdfzBf8MNgpAbHDu9H4aVMVcmhfXnNfTfh
	EmN/J1llYllHd5Z9mrT7ALkBpnkuBRyKmXZrkNDyo/2W5wTvpJQSxMKDkq5lFrGNtZMbQ4xKiNm/6
	QX5c84erMejFfX0OkTkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igsV9-0006ce-LV; Mon, 16 Dec 2019 15:41:39 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igsT6-0003o9-Ig
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 15:39:35 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B4EE5CC4E77E0A584EE6;
 Mon, 16 Dec 2019 23:39:28 +0800 (CST)
Received: from lhrphicprd00229.huawei.com (10.123.41.22) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.439.0; Mon, 16 Dec 2019 23:39:18 +0800
From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
To: <linux-mm@kvack.org>, <linux-acpi@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <x86@kernel.org>
Subject: [PATCH V6 7/7] docs: mm: numaperf.rst Add brief description for
 access class 1.
Date: Mon, 16 Dec 2019 23:38:09 +0800
Message-ID: <20191216153809.105463-8-Jonathan.Cameron@huawei.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191216153809.105463-1-Jonathan.Cameron@huawei.com>
References: <20191216153809.105463-1-Jonathan.Cameron@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.123.41.22]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_073933_275834_1B2F9B2A 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Brice Goglin <brice.goglin@gmail.com>, Tao Xu <tao3.xu@intel.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "Rafael J .
 Wysocki" <rjw@rjwysocki.net>, linuxarm@huawei.com,
 Keith Busch <keith.busch@intel.com>, jglisse@redhat.com,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Hanjun Guo <guohanjun@huawei.com>, Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Try to make minimal changes to the document which already describes
access class 0 in a generic fashion (including IO initiatiors that
are not CPUs).

Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
---
 Documentation/admin-guide/mm/numaperf.rst | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/admin-guide/mm/numaperf.rst b/Documentation/admin-guide/mm/numaperf.rst
index a80c3c37226e..327c0d72692d 100644
--- a/Documentation/admin-guide/mm/numaperf.rst
+++ b/Documentation/admin-guide/mm/numaperf.rst
@@ -56,6 +56,11 @@ nodes' access characteristics share the same performance relative to other
 linked initiator nodes. Each target within an initiator's access class,
 though, do not necessarily perform the same as each other.
 
+The access class "1" is used to allow differentiation between initiators
+that are CPUs and hence suitable for generic task scheduling, and
+IO initiators such as GPUs and CPUs.  Unlike access class 0, only
+nodes containing CPUs are considered.
+
 ================
 NUMA Performance
 ================
@@ -88,6 +93,9 @@ The latency attributes are provided in nanoseconds.
 The values reported here correspond to the rated latency and bandwidth
 for the platform.
 
+Access class 0, takes the same form, but only includes values for CPU to
+memory activity.
+
 ==========
 NUMA Cache
 ==========
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
