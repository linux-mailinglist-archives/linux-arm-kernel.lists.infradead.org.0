Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AF41CB2BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 17:23:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tweHm9CTeLBABbd4mgh9XB2SqX9k42h4VG5PQby9FQQ=; b=LsqBwLQp5Eyfo8
	kDLo5EMZreaZDr8af5BNgwdAS5LlEPebwkWFcdqBGCUx+jE7etf7YG8ow/sHYq9S2OMmeDzA8a4Ra
	iaDEeYWwpjNqcvuf0jbI8Uo6CZczAoI74Jx3s2QJI3HRKrz5CrmN6VFBt8DIDFcriWeS8XE9yIlG5
	9F91s7TnxOA0Uy4DkD21BLosUZqSAzCdQ5PyeKjFcqlAQxVVZoi+/2CqE5YHYSIY48VOh5dw6pOnq
	ojgJPAQ0YPcmWGAuhmoz2ZmtHcaIPjvxuprZdT76LhcmOmY0xBI/CcSmHPny1DDQ6O+6EILIP7JvI
	7sMH/2rYJzkRCgBWDJNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX4qd-00017b-PE; Fri, 08 May 2020 15:23:35 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX4qW-00015b-MP
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 15:23:30 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 1960F3345A7098F8FCCE;
 Fri,  8 May 2020 23:23:08 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Fri, 8 May 2020 23:22:58 +0800
From: Kefeng Wang <wangkefeng.wang@huawei.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Hanjun Guo
 <guohanjun@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>,
 <linux-acpi@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH -next] arm64: gtdt: Fix section mismatch in
 next_platform_timer()
Date: Fri, 8 May 2020 23:26:53 +0800
Message-ID: <20200508152653.157663-1-wangkefeng.wang@huawei.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_082328_898087_973871BF 
X-CRM114-Status: UNSURE (   9.61  )
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
Cc: Hulk Robot <hulkci@huawei.com>, Kefeng Wang <wangkefeng.wang@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop the __initdata for acpi_gtdt_desc variable to fix the section mismatch,

WARNING: modpost: vmlinux.o(.text.unlikely+0x95ac): Section mismatch in reference from the function next_platform_timer() to the variable .init.data:acpi_gtdt_desc
The function next_platform_timer() references
the variable __initdata acpi_gtdt_desc.
This is often because next_platform_timer lacks a __initdata
annotation or the annotation of acpi_gtdt_desc is wrong.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
---
 drivers/acpi/arm64/gtdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/acpi/arm64/gtdt.c b/drivers/acpi/arm64/gtdt.c
index 01962c63a711..6a327616a299 100644
--- a/drivers/acpi/arm64/gtdt.c
+++ b/drivers/acpi/arm64/gtdt.c
@@ -34,7 +34,7 @@ struct acpi_gtdt_descriptor {
 	void *platform_timer;
 };
 
-static struct acpi_gtdt_descriptor acpi_gtdt_desc __initdata;
+static struct acpi_gtdt_descriptor acpi_gtdt_desc;
 
 static inline void *next_platform_timer(void *platform_timer)
 {
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
