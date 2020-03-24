Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0DF191AD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 21:19:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GSzXYOfG+DLNoLwwCyx/eB+gCgHx9V/TXMWBKZMshdk=; b=cg2r6C62F0O8i2
	LDoxNhh4AzUnpKVGJTul5p83MdYWlH2OlZcGi5/reJWHmcszQI3mRukmodz3aziJtpxLqlkSZTNeF
	p3Ly/y1s34XRcS6V+Yj/teNvVIDaerQ4k62jPDsH13qDEt7PThCgHTqJ8F4yparFsyCxhWwtJ3Fhu
	ToqIXonxFj4GYlmyk+hPNWMGD90sSDwpwfTNVC1UPjbxrbYtZzoc1XzUK265/cTCk4NW2G2pyzvpb
	MNpQR14OWNCoMRAorpLli1rtUfESgDxMRPftBDTjyqNg6TUy6NlEh5lFBesD98gzIW8eq4XVgZsq+
	1f0c1j5bIn32DVMuLkPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGq18-0003lO-DR; Tue, 24 Mar 2020 20:19:18 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGq0M-0003Im-PP
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 20:18:32 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02OKIQ1j104165;
 Tue, 24 Mar 2020 15:18:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585081106;
 bh=Yjhl9EQ14R/kACUXumM+AqugWYYqz1aQVf2tw0BsJh4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=rnjQeB+exVSr4M4lObIpZlugcIYzXomQxbjz12iVw5J1x2A9D5GRSXbR47+tCzhLb
 YZLJXPYIM5OJlnQtbgY0OG+zPWmosPtk14JDryoPL2YgqEG8QKSMcXeyvW05oEXLxs
 MZBZz9PyjwJqSwOUbF1u5jSFfveLLfEBLDeZvKfg=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02OKIQ12013610
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 24 Mar 2020 15:18:26 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 24
 Mar 2020 15:18:26 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 24 Mar 2020 15:18:26 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com
 [10.247.120.73])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02OKIPGj124170;
 Tue, 24 Mar 2020 15:18:25 -0500
Received: from localhost ([10.250.35.147])
 by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 02OKIPpq084965;
 Tue, 24 Mar 2020 15:18:25 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Mathieu Poirier
 <mathieu.poirier@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/7] remoteproc: use a local copy for the name field
Date: Tue, 24 Mar 2020 15:18:14 -0500
Message-ID: <20200324201819.23095-3-s-anna@ti.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200324201819.23095-1-s-anna@ti.com>
References: <20200324201819.23095-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_131831_000237_A5864A49 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
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
 drivers/remoteproc/remoteproc_core.c | 9 ++++++++-
 include/linux/remoteproc.h           | 2 +-
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index aca6d022901a..6e0b91fa6f11 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -1989,6 +1989,7 @@ static void rproc_type_release(struct device *dev)
 
 	kfree(rproc->firmware);
 	kfree(rproc->ops);
+	kfree(rproc->name);
 	kfree(rproc);
 }
 
@@ -2061,7 +2062,13 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
 	}
 
 	rproc->firmware = p;
-	rproc->name = name;
+	rproc->name = kstrdup(name, GFP_KERNEL);
+	if (!rproc->name) {
+		kfree(p);
+		kfree(rproc->ops);
+		kfree(rproc);
+		return NULL;
+	}
 	rproc->priv = &rproc[1];
 	rproc->auto_boot = true;
 	rproc->elf_class = ELFCLASS32;
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index ddce7a7775d1..77788a4bb94e 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -490,7 +490,7 @@ struct rproc_dump_segment {
 struct rproc {
 	struct list_head node;
 	struct iommu_domain *domain;
-	const char *name;
+	char *name;
 	char *firmware;
 	void *priv;
 	struct rproc_ops *ops;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
