Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B3112939F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 10:29:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i1EdvKGOpIJ9/2muKk97jUSondsGa/Gt9E5+LlArfgQ=; b=PrpOsBb52WbmYh
	tdQ7pWmQe6Q96ncjaQi4K7Ycy8AauLi6DWfEFAE/vou1So78mh3faCsY2CtHSJThmRg0xzVeukaRo
	Z7ZwykzR3su65d7iMirfYAE/WXA0nBZhugo9RnoDVewMQJIZi6VCIvI6Bu+mqSbLuRL3TAjNIzozM
	6LyKTSgeLkJZNTNBu6So+RFALoJ0Dh1prDbaMx9sFRUl6QV6T1RsmiQCNcD1pzRRmmXi6cblXoTEt
	ETl4/jTR8AqX43bsTU1qAyKurVRZVdKdVkKx2JvbqA9M9+tQVspFjG0VHoLUC3OgNnDFflpF0iqUc
	YYiNyjfFahwEc/cI8mfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijK1D-0000rH-9y; Mon, 23 Dec 2019 09:28:51 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijK0z-0000qB-FK
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 09:28:39 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E6CCE65D4C28A1E9BEFB;
 Mon, 23 Dec 2019 17:28:23 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS406-HUB.china.huawei.com (10.3.19.206) with Microsoft SMTP Server id
 14.3.439.0; Mon, 23 Dec 2019 17:28:17 +0800
From: Hanjun Guo <guohanjun@huawei.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Sudeep Holla
 <sudeep.holla@arm.com>, "Rafael J. Wysocki" <rafael@kernel.org>, "Pankaj
 Bansal" <pankaj.bansal@nxp.com>, Erik Schmauss <erik.schmauss@intel.com>
Subject: [RFC PATCH 1/2] ACPICA/IORT: Correct the comment for id_count
Date: Mon, 23 Dec 2019 17:23:16 +0800
Message-ID: <1577092997-9852-1-git-send-email-guohanjun@huawei.com>
X-Mailer: git-send-email 1.7.12.4
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_012837_671672_9EC449D5 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-acpi@vger.kernel.org, linuxarm@huawei.com,
 linux-arm-kernel@lists.infradead.org, Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In IORT spec
(http://infocenter.arm.com/help/topic/com.arm.doc.den0049d/DEN0049D_IO_Remapping_Table.pdf),
id_num means Number of IDs minus one, update the comment.

Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
---

This patch just for comments, needs to be upstream in ACPICA first.

 include/acpi/actbl2.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/acpi/actbl2.h b/include/acpi/actbl2.h
index e45ced2..382642f 100644
--- a/include/acpi/actbl2.h
+++ b/include/acpi/actbl2.h
@@ -104,7 +104,7 @@ enum acpi_iort_node_type {
 
 struct acpi_iort_id_mapping {
 	u32 input_base;		/* Lowest value in input range */
-	u32 id_count;		/* Number of IDs */
+	u32 id_count;		/* Number of IDs in the range minus one */
 	u32 output_base;	/* Lowest value in output range */
 	u32 output_reference;	/* A reference to the output node */
 	u32 flags;
-- 
1.7.12.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
