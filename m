Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421041AD397
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 02:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/mLtIsRZjglTDRQt4Nsv7eC/ACoshZ7P1mheXG9mx4=; b=NLNcgVAsFc+kw+
	2ajl7S/sgZTVGrTWeV5h11NuHvvlnAsho1uCItOEbjtdXVJY6uyCPQKTec0G/efh4aqixBSQsPWs5
	0/hVA9s9xHeeqhjJ4gpWFsGaXP5pa9ohQuV4OxF0XlGwQo+xAxqIAx084wn0WvTEoE5+xXwv5Fx/F
	xGT5C0vO6ElrvQHnYkvKYmgYvtpmnEdsN0qdHz7LwZMtTY7XHu/Z01dbi9i8vi+z/h2DfHCpmTc/K
	FXJbvkEK0wxsOv9HZJVZZz4+B4C5TuJlMCK0b5nXYmFlRhU9hH8BITHEaAeOPkvPVH1qKrOoc4ree
	5U19s3+rXN/qOLfWu02A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPEkg-0003h2-Vr; Fri, 17 Apr 2020 00:21:03 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPEkX-0003gJ-1b
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 00:20:55 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03H0KggD001366;
 Thu, 16 Apr 2020 19:20:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587082842;
 bh=oOw75QBlpG6pb5O0bLrWeNZVrUQRVB6S4zef2wEvNww=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=LYwsa1/ZbpUDLhWUwjm55cR6Go531gQBBWc/ZrEVGak8g7Vk1LXVfmnEUAwYavQBF
 JJYFGKFEQ8Ag+IsmPubwW/Ma1ay+/eH58ooTGiN08oGy5xVIImlnpD/atjdqfVcB2B
 JpSCuEENe6ryyqVu4S4cxntsDJs55jX25Rn6mpJQ=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03H0KgSR060172
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 16 Apr 2020 19:20:42 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 16
 Apr 2020 19:20:42 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 16 Apr 2020 19:20:41 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com
 [10.247.120.73])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03H0KfbN020917;
 Thu, 16 Apr 2020 19:20:41 -0500
Received: from localhost ([10.250.70.56])
 by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 03H0Kfkk060529;
 Thu, 16 Apr 2020 19:20:41 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Mathieu Poirier
 <mathieu.poirier@linaro.org>
Subject: [PATCH 2/2] remoteproc: Use a local copy for the name field
Date: Thu, 16 Apr 2020 19:20:36 -0500
Message-ID: <20200417002036.24359-3-s-anna@ti.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200417002036.24359-1-s-anna@ti.com>
References: <20200417002036.24359-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_172053_188280_067EF385 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Suman Anna <s-anna@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current name field used in the remoteproc structure is simply
a pointer to a name field supplied during the rproc_alloc() call.
The pointer passed in by remoteproc drivers during registration is
typically a dev_name pointer, but it is possible that the pointer
will no longer remain valid if the devices themselves were created
at runtime like in the case of of_platform_populate(), and were
deleted upon any failures within the respective remoteproc driver
probe function.

So, allocate and maintain a local copy for this name field to
keep it agnostic of the logic used in the remoteproc drivers.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
v1:
 - Patch baselined on top of Mathieu's rproc_alloc() refactor
   series, and so addresses Bjorn's simplified cleanup comments
 - Switch to {kstrdup/kfree}_const variants
v0: https://patchwork.kernel.org/patch/11456385/

 drivers/remoteproc/remoteproc_core.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index e38f627059ac..3cebface3f26 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -1984,6 +1984,7 @@ static void rproc_type_release(struct device *dev)
 
 	kfree(rproc->firmware);
 	kfree(rproc->ops);
+	kfree_const(rproc->name);
 	kfree(rproc);
 }
 
@@ -2069,7 +2070,6 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
 	if (!rproc)
 		return NULL;
 
-	rproc->name = name;
 	rproc->priv = &rproc[1];
 	rproc->auto_boot = true;
 	rproc->elf_class = ELFCLASS32;
@@ -2081,6 +2081,10 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
 	rproc->dev.driver_data = rproc;
 	idr_init(&rproc->notifyids);
 
+	rproc->name = kstrdup_const(name, GFP_KERNEL);
+	if (!rproc->name)
+		goto put_device;
+
 	if (rproc_alloc_firmware(rproc, name, firmware))
 		goto put_device;
 
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
