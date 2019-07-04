Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2064B5F4DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 10:47:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iAw5pfsD+JKKFiw9eXZYFkuZaYF1w7anXXpySB4yZYI=; b=U0/b2LhJ0IihtC
	nK5burriqMAXc0HM4QsSBsjnbyZfjpH3xEVpp8y8jJZOyk6aprkulNgwhLTMb6jva3kbzqCySv4rF
	vmm+9ZsXI+Fh5vNfbANr4wmfI4/p93Kr89e4b7/nejyCYH60UB79SS76e6SEnYn0TLj3ioniJf6wE
	tmcb//UFCGEPPUNuP+b4SDp8jSxalYMe69Z5/0RU+TcxH/OyK1dxCeh7k37B2cidUdFzco4pMeSxT
	We/wJwtgR+7g8o80DzWECr7lpWWLavyyQwNp0jneXxShOh1c0JM7J5fBphOVPpTZczKghZLJqgzsB
	ETwgM9YwMXJkJxIblCHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixOe-0005xw-Im; Thu, 04 Jul 2019 08:47:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hixOI-0005uU-BP
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 08:46:58 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 596202189E;
 Thu,  4 Jul 2019 08:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562230013;
 bh=8K68pvFL9h+6LZO5F69OG12auCpRKEuDDm/xOnAtw8o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QbBP8VG1VFVUwhmefeiJXSmmlNPYPuGYP+6ovUyulJhrnbwwfRC2O/z5Id1uvRDV2
 WSf0Y75LxmhuI6ohwEJFM7Q9roaJjtkR+SgxQX/xjIbpKqLzeYvk+R05qg3ydQSSx3
 g+wG2Awi8tL6a/V+jaUI7sd4hOM9oYABWOe2depI=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 04/11] firmware: arm_scpi: convert platform driver to use
 dev_groups
Date: Thu,  4 Jul 2019 10:46:10 +0200
Message-Id: <20190704084617.3602-5-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190704084617.3602-1-gregkh@linuxfoundation.org>
References: <20190704084617.3602-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_014654_425632_39128905 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Platform drivers now have the option to have the platform core create
and remove any needed sysfs attribute files.  So take advantage of that
and do not register "by hand" a sysfs group of attributes.

Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/firmware/arm_scpi.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/firmware/arm_scpi.c b/drivers/firmware/arm_scpi.c
index 725164b83242..2774ec886d60 100644
--- a/drivers/firmware/arm_scpi.c
+++ b/drivers/firmware/arm_scpi.c
@@ -1011,10 +1011,6 @@ static int scpi_probe(struct platform_device *pdev)
 				   scpi_info->firmware_version));
 	scpi_info->scpi_ops = &scpi_ops;
 
-	ret = devm_device_add_groups(dev, versions_groups);
-	if (ret)
-		dev_err(dev, "unable to create sysfs version group\n");
-
 	return devm_of_platform_populate(dev);
 }
 
@@ -1033,6 +1029,7 @@ static struct platform_driver scpi_driver = {
 	},
 	.probe = scpi_probe,
 	.remove = scpi_remove,
+	.dev_groups = versions_groups,
 };
 module_platform_driver(scpi_driver);
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
