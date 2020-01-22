Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A21C3145D20
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 21:28:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EFBbVBHzrfnQWnwWsSofkum1ZrAnjXdDwKw8zzx/AZk=; b=tSg7aZ6ptopBG5
	lceLQ0h3uZzGOmpyd63mJxcKtFgLdL3L4cOy8gDJaT9pZNuD05+Ai+xfBYEtY6RHTkuFeXBgjoY/j
	UOMAQplR63IWUJah8CFDFAAuJTr2VFj+sjZXMZ/8hKc3HV2V35E8pxoedBzs/p/qJCTzIV6d62ROr
	z1Ct01wxxlPjIgBOQ0KbNrXO16RQR2MDXYefu3UZmNKFRcdN3Q/9GZXAPUvy/VtEwR8MaEk9YUVyn
	/8l5Z+VX4L7GYgECAa8C8AwPnRzcvY/nSmfpsGqyX0PzCkbOoX6qpp1/68Iwf81bWpZeP5a87J07B
	cBNfU/hbifmj5C9YeGtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuMcL-0005pD-IO; Wed, 22 Jan 2020 20:28:49 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuMcC-0005om-7G
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 20:28:41 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00MKRnCR003143;
 Wed, 22 Jan 2020 14:27:49 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579724869;
 bh=2FU5P01ZY091ON2H2bygulCb7TKRy/uYmsXy0jOAaA4=;
 h=From:To:CC:Subject:Date;
 b=ib6J3evVtYL8rgaM4RnzZ51gqsNYuhWPmtrnak8O4DC4ESrKjqStAq7vmLtIF2mRm
 UIz1ug8fLZ4QP2GWbJJG3PNXL/sRXA2fKqK73LZEFAFccDPbM9L+98UDMMR54Oo0B2
 77DbH170Dctx7eWvcxXeGXpxKz4cGVKZiXqy7bSw=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00MKRnsi088602
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 22 Jan 2020 14:27:49 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 22
 Jan 2020 14:27:49 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 22 Jan 2020 14:27:49 -0600
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00MKRnEr096008;
 Wed, 22 Jan 2020 14:27:49 -0600
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id 00MKRm304964; 
 Wed, 22 Jan 2020 14:27:48 -0600 (CST)
From: Suman Anna <s-anna@ti.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: [PATCH] mfd: syscon: Use a unique name with regmap_config
Date: Wed, 22 Jan 2020 14:27:46 -0600
Message-ID: <20200122202746.30703-1-s-anna@ti.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_122840_361468_76379227 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suman Anna <s-anna@ti.com>, David Lechner <david@lechnology.com>,
 Arnd Bergmann <arnd@arndb.de>, Tony Lindgren <tony@atomide.com>,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DT node full name is currently being used in regmap_config
which in turn is used to create the regmap debugfs directories.
This name however is not guaranteed to be unique and the regmap
debugfs registration can fail in the cases where the syscon nodes
have the same unit-address but are present in different DT node
hierarchies. Replace this logic using the syscon reg resource
address instead (inspired from logic used while creating platform
devices) to ensure a unique name is given for each syscon.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
Hi Lee,

I ran into this issue while trying to add multiple different instances
of the same IP using the ti-sysc node hierarchy on OMAP.

Not sure if you prefer to consider this as a fix or as an improvement.
So, haven't added a Fixes tag.

regards
Suman

 drivers/mfd/syscon.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index e22197c832e8..8915b35eef4f 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -101,12 +101,13 @@ static struct syscon *of_syscon_register(struct device_node *np, bool check_clk)
 		}
 	}
 
-	syscon_config.name = of_node_full_name(np);
+	syscon_config.name = kasprintf(GFP_KERNEL, "%pOFn@%llx", np, res.start);
 	syscon_config.reg_stride = reg_io_width;
 	syscon_config.val_bits = reg_io_width * 8;
 	syscon_config.max_register = resource_size(&res) - reg_io_width;
 
 	regmap = regmap_init_mmio(NULL, base, &syscon_config);
+	kfree(syscon_config.name);
 	if (IS_ERR(regmap)) {
 		pr_err("regmap init failed\n");
 		ret = PTR_ERR(regmap);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
