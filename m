Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D784813105F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 11:20:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sBkaG19TYIglNO6RAev8kXuYlZm++W7QumrAZbDT/Oo=; b=A1HqF2Sw/8ko/I
	co/++NpUFbFpG9JEy/OCIVyeGk2BVdmlO6B8d0ovwsu1X4WbGtv1rMQ7Msfe0Z/041A0zjm3d0GCl
	no1MUu1m668X5k1BxLxvMJRGzNgv5v/gAuaiLM6rafkyyYXN96g5Eg4XuvybrAZoHCbrEpoGizOd4
	GsEVVVo4Jce/rak9dJHm68NlhfiCZDL453WtT12Diy5gRIoVOYZM47Y4uAE5EY8k2ejREz8YcbwNg
	syRzLN/HewmwlxciLT5rzNEzjDZ8LfM60lvLQgewKxId2TdE7xwJPWZEqBei0OW1R/XCeOfy5zUNL
	IhDI37Gc4KFV/M7An6Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioPUs-0007Cb-OG; Mon, 06 Jan 2020 10:20:30 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioPTd-0004xX-5E
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 10:19:14 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 006AJ6uw108484;
 Mon, 6 Jan 2020 04:19:06 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578305946;
 bh=Rc8YT4TU+I5HtgVac7UO4Rq0QTyfIQpD6Hq6n/QrUS8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=tWyEhCZEWRflcLFOCduVl9xPBawSnJV+tuNPJnqTblQsUXyAefuhSXEGtdQriBj0R
 4sXAlCb5rlDK7rIqPefCUXNLR9/YZtzu/USUHanaLBlZnWSvN8nhh8Q9ead0YMvV4d
 LxvtvixdtBN2VRctbaGqbPh5kBs4LFAsWAa0ygXE=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 006AJ6xS031889;
 Mon, 6 Jan 2020 04:19:06 -0600
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 6 Jan
 2020 04:19:06 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 6 Jan 2020 04:19:06 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 006AIqXt118652;
 Mon, 6 Jan 2020 04:19:03 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob
 Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Andrew Murray
 <andrew.murray@arm.com>
Subject: [PATCH v2 03/14] linux/kernel.h: Add PTR_ALIGN_DOWN macro
Date: Mon, 6 Jan 2020 15:50:47 +0530
Message-ID: <20200106102058.19183-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200106102058.19183-1-kishon@ti.com>
References: <20200106102058.19183-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_021913_246890_C419BCF1 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a macro for aligning down a pointer. This is useful to get an
aligned register address when a device allows only word access and
doesn't allow half word or byte access.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 include/linux/kernel.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 3adcb39fa6f5..888ad70a80aa 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -34,6 +34,7 @@
 #define ALIGN_DOWN(x, a)	__ALIGN_KERNEL((x) - ((a) - 1), (a))
 #define __ALIGN_MASK(x, mask)	__ALIGN_KERNEL_MASK((x), (mask))
 #define PTR_ALIGN(p, a)		((typeof(p))ALIGN((unsigned long)(p), (a)))
+#define PTR_ALIGN_DOWN(p, a)	((typeof(p))ALIGN_DOWN((unsigned long)(p), (a)))
 #define IS_ALIGNED(x, a)		(((x) & ((typeof(x))(a) - 1)) == 0)
 
 /* generic data direction definitions */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
