Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC8D1CA1C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 06:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8ez/NNEqYORxmmmA+Jn46XqeXt/4mvqcYhhUYWWI+ds=; b=pDJhJ/wOncDh2t
	7gcuCf22o9qcRoK/SsQe4GrISWxAZLg0NDVoHloVgntJzjuAvAJPqXE+Gd/TKrpiqfm+VJu1KrSjN
	JvvL8G0BXC5IvCCY3CQC66FQ3i55GDPBCOFVfBlGTn4/ytWzsLNKSEXGzRxwhfYtoMEE6SI3jIN3+
	O1k22T6w5SHWILSVzHtNZCjFjKObqD1Evdvl4fbtrni6kXtlYfp3BpdjAUPEF4mVqUg6lKMZucANP
	HrkO7e5gS+LPis6OKgyGx/CiZ6Ta4vfQmQo9vD9Rm9H2uDrnwUSTyEmoFXhsN6JCs5sNTKQgIWKGQ
	gM0+IwLafDkccOyUXnDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWuId-0002bK-1z; Fri, 08 May 2020 04:07:47 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWuIV-0002ah-Gp
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 04:07:41 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 09A5D6B05BE399D5515D;
 Fri,  8 May 2020 12:07:33 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS406-HUB.china.huawei.com (10.3.19.206) with Microsoft SMTP Server id
 14.3.487.0; Fri, 8 May 2020 12:07:25 +0800
From: Hanjun Guo <guohanjun@huawei.com>
To: Ard Biesheuvel <ardb@kernel.org>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "Sudeep Holla" <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v2] ACPI: IORT: Add extra message "applying workaround" for
 off-by-1 issue
Date: Fri, 8 May 2020 11:56:38 +0800
Message-ID: <1588910198-8348-1-git-send-email-guohanjun@huawei.com>
X-Mailer: git-send-email 1.7.12.4
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_210739_726660_BA5858B1 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
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
Cc: linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As we already applied a workaround for the off-by-1 issue,
it's good to add extra message "applying workaround" to make
people less uneasy to see FW_BUG message in the boot log.

Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
---

v2:
 - Print the extra message only for rid_in == map->input_base;
 - Still based on top of for-next/acpi branch of ARM64 repo

 drivers/acpi/arm64/iort.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index b011d25..6e445bc 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -332,6 +332,8 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
 		       map, rid_in);
 		if (rid_in != map->input_base)
 			return -ENXIO;
+
+		pr_err(FW_BUG "applying workaround.\n");
 	}
 
 	*rid_out = map->output_base + (rid_in - map->input_base);
-- 
1.7.12.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
