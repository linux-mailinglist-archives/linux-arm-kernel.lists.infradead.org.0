Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D11C47C20A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+e8OHgQErMFmfM5euByLmy8cMuCzOsFaXs0QPGI5eZc=; b=N0h9hj/Tkuh7Hb
	tL7TQWgBwN1Fvqp5ueUk92y+lZXHgUvjEF20u6dp3Lm0RT7sdBqNH37Qo5q69McqC/3okLoMQf54S
	gOaDMjCmyDcfnqcpRocgeWc/K0GtJkZhZlSO2bXNw9A1s63vf5vlojmXDaOlFqioh5FWqQoN4XN8p
	OkynG2HbMvRoffHgBsqxteBmtojZl3M+rvrJghyrr7dhH65f9G2a1e2rVwVP2M8YiBpiB2oMbxHu0
	hlV//CpwBviBbaNbyMpHCDH9WT7XJIBH2Tx0EVIN2z3QqxcVGDjGF43MRN7zWHA8oqWe2qxEwdsxs
	Ruc5nP1roLLbBEoz62Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnzN-0000f2-CM; Wed, 31 Jul 2019 12:45:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnxo-0006Is-C4
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:44:17 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B0692089E;
 Wed, 31 Jul 2019 12:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564577055;
 bh=iNW8wNE5JHBZzgakkExMWkpVXk60TdQED+PTGb/g0pk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XFEeDO7GXMu8iFGWL3oPbd2aUKaueXO6WY/Y974vTpcBTA24h+pXl5qA8wo3dT2vt
 ctIKOx/+vIIwU8/IyHDhl43bxXiL8TCEJqKd+84WYwRVtH7kQsX97BB8ERfD8OuU8H
 boNTRZI86fCLVV+vdc2rsW1XJdOJ8pcHjwYasdpc=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org, Richard Gong <richard.gong@linux.intel.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: [PATCH v2 05/10] firmware: arm_scpi: convert platform driver to use
 dev_groups
Date: Wed, 31 Jul 2019 14:43:44 +0200
Message-Id: <20190731124349.4474-6-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731124349.4474-1-gregkh@linuxfoundation.org>
References: <20190731124349.4474-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_054416_440816_72B5EC00 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Acked-by: Sudeep Holla <sudeep.holla@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/firmware/arm_scpi.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/firmware/arm_scpi.c b/drivers/firmware/arm_scpi.c
index 725164b83242..a80c331c3a6e 100644
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
 
@@ -1030,6 +1026,7 @@ static struct platform_driver scpi_driver = {
 	.driver = {
 		.name = "scpi_protocol",
 		.of_match_table = scpi_of_match,
+		.dev_groups = versions_groups,
 	},
 	.probe = scpi_probe,
 	.remove = scpi_remove,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
