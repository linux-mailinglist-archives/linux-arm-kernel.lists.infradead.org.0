Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F15094BFC6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:36:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1/DsfR8o8CLWuMNPXn9BiLJ3vn+DCaUU7w9U1HwWTIY=; b=DWYE5U6HBccEDTEZtTbVpIKg+S
	++OCR3MC/wZ6dG60oR7yoqYWL+P/IFr4EcNXzK06n7UeG0Whc5F0Z4DtXuOwhhsiWLCisvDfdwScU
	bs4AEtYvwFfa53NYvmbzPXDrpVaw4eWLwCTtppg4BQlgtkMWejXiKTLBluS1Gq0g0XGN5LWDj2rwh
	hfCN81B3d9+9pYjStraQaNlC3K4KL56M59HQweHjfsW7FAu8Us6pbAx/TWBruA/qHksvvqCnsW0+8
	adHAgL+bo4SAaRRpR++t+kc0OM8Nb3TMmOfNIR+SCHuMenbQnnuX9F7150YMzUC9aQP4NkDFPuynD
	N7TE5kRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeVm-0005vm-VL; Wed, 19 Jun 2019 17:36:43 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePT-0007qf-Is
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:16 +0000
Received: by mail-pg1-x541.google.com with SMTP id v11so49258pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=f0OEP82lk9pN05bJgvTcbMJBT6vO9afCPfXu5DFNwE8=;
 b=fN6+0lL9DoTPEw6XbkRt0gDsma+YO28KxU2llsh5uwvJgI5XTddd0XHrdoXDmOvGVK
 r7GeE1KvK63FR5YZDEYi0BJx2boyPL+9yTDz1abKzVBXxzdSa+AQNi1SxsvSpTji+MLX
 fhbEQALRbn8O1XJF+aAqIZTX7sO9NbaaLHqVmPe7kEYdcDaz7dfnrQXlDDqPIJ0ZZgJG
 vcHkRYByd8Ot+sKQqObB/wQQs6AdZhd+5zPNT0w+tvH2bXtO4GFnJFY7HV/9PetDT5wC
 BcwtkAgLXX34hyrhMgWXmsbucsx71zFWkf5FOjT4xRnbXtvJ7iqYSyYPA64XBLrY5Pk8
 f5Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=f0OEP82lk9pN05bJgvTcbMJBT6vO9afCPfXu5DFNwE8=;
 b=W2kwTs0h0rYSNFFT0WZ5taV1xs98rnd8z/R0k5JqT7/gpl90lep75CN8t6d7sIF/Ri
 auP1LplFXKpp3VVIA5RJJCM/oZCe2ZW1ynke3aWUEWBgeuJjSTzoDvHRdIqmCzlGAgny
 TFrNTehueOTCUd3ShilIAZnEBK32C4B19y+gjeqpU1LbUKkJ0xHKcO8qVbioh9ggs5rI
 db6bZbTACrtyWglxYma6kMyplQeT2bVtCvk2PiUvh+34W1t5jD9lCSlBGboZU7Kaeoy+
 Q7mv0AuOYAjL/Y2XeARx/Kj0jZn/DVy1kn5PZ5Mahj+8MJyUAU8+OdZ5+yoKi0uVSJ+N
 P4yw==
X-Gm-Message-State: APjAAAVaxEDbTHg0QkBendIATIu7BwHcCb3uG7cIUGNZUXuS+LZ12eS3
 DQV1HdHdMU2y4zHuxeCwGvPIPg==
X-Google-Smtp-Source: APXvYqxEQNTxospyi5LZA9x+QYioaJ/Nki48e9z/nrANNd64z4iPi0efySfVH6Tyd7KRWnCFhT4Yhw==
X-Received: by 2002:a62:e806:: with SMTP id c6mr16449905pfi.158.1560965408517; 
 Wed, 19 Jun 2019 10:30:08 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:07 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 18/45] coresight: tmc-etr: Rearrange probing default buffer
 size
Date: Wed, 19 Jun 2019 11:29:22 -0600
Message-Id: <20190619172949.4522-19-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103012_129652_57357B25 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

As we are about to refactor the platform specific handling,
make the default buffer size probing generic.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tmc.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
index 3b39f43c583d..9c5e615c1486 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.c
+++ b/drivers/hwtracing/coresight/coresight-tmc.c
@@ -378,6 +378,15 @@ static int tmc_etr_setup_caps(struct device *parent, u32 devid, void *dev_caps)
 	return rc;
 }
 
+static u32 tmc_etr_get_default_buffer_size(struct device *dev)
+{
+	u32 size;
+
+	if (fwnode_property_read_u32(dev->fwnode, "arm,buffer-size", &size))
+		size = SZ_1M;
+	return size;
+}
+
 static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 {
 	int ret = 0;
@@ -423,16 +432,10 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 	/* This device is not associated with a session */
 	drvdata->pid = -1;
 
-	if (drvdata->config_type == TMC_CONFIG_TYPE_ETR) {
-		if (np)
-			ret = of_property_read_u32(np,
-						   "arm,buffer-size",
-						   &drvdata->size);
-		if (ret)
-			drvdata->size = SZ_1M;
-	} else {
+	if (drvdata->config_type == TMC_CONFIG_TYPE_ETR)
+		drvdata->size = tmc_etr_get_default_buffer_size(dev);
+	else
 		drvdata->size = readl_relaxed(drvdata->base + TMC_RSZ) * 4;
-	}
 
 	desc.pdata = pdata;
 	desc.dev = dev;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
