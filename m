Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FF0CB9DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:06:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AOgLHtm+tkqussxvHcBvtElXQMW4QznDS8RtmJ+AGXQ=; b=XuUVeqD3Jyzpln
	lCYLRMJMprIolkkus4qLWdx3n7QPo/ljb182yhxclYQyi52ioz2qILv1JW4k1z8q0gpQrLkLrR9/i
	1ZRnliRcjJDH1vXELAWe1De3dFOUjxuGjTwELcxZKip80YdOI2u3EowSBcMnw96R0u1BoqOD6sHry
	XxiT8ySyyRysjVi66XqgrdMHkX3dfwVIReEf6ygZbjnwQ4FpMXZoVAycSYcP8RrXueojU565xc+vD
	wwwdt+vWyWNp+l94dbnm9bpWDENqQMl+0uWxpfOIFyyHC7E6sIrhsA4Dg28/qLVuPyx8xJvwi27jv
	9xTQbfU7ye+DLR4vkZlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMM7-0004Pt-FH; Fri, 04 Oct 2019 12:06:43 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMIL-0008T5-QP
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:02:51 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x94C15vH001012; Fri, 4 Oct 2019 14:02:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=4QY8SUtb7bnVdDKSVIQK8kgBMMlxRMq5qdwdZdxQHs0=;
 b=byb19n7NEEVN0ch3sez9/DSpvdvDNCnteUmmoE4ItEZ1o4rWNoWXO7Uoe89RaO6ovpQE
 yF8tmzfuLZC+2nvnmalonoMvVgT+Z2cr6Bb1ZtgArG+H5/U3cm6ay+XhHd+XR0ao+jji
 g4YCKwEsAvDsosw9a3eMejqVLyQf6HI7pwzbVa0kdkuuzeyQGBj957K2prZ4D8CMleKB
 W2uoVtkzBEnhu7LFLZPRdIW2tkSehMpUC5ND/GKH15BZRf07waAgBrwJjla3U1GF0sCY
 9Va3N6A/wgZI774l1ZkGnZfNhAfl1csCAPuGhHWHB/78gFgiA5HerHEBZY51NtUoEvs0 Qw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v9vnatu8j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 04 Oct 2019 14:02:44 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A6297100034;
 Fri,  4 Oct 2019 14:02:43 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 95CAF2BA5BC;
 Fri,  4 Oct 2019 14:02:43 +0200 (CEST)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 4 Oct 2019
 14:02:43 +0200
Received: from localhost (10.201.23.25) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 4 Oct 2019 14:02:43
 +0200
From: Fabien Dessenne <fabien.dessenne@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-remoteproc@vger.kernel.org>
Subject: [PATCH] remoteproc: stm32: fix probe error case
Date: Fri, 4 Oct 2019 14:02:35 +0200
Message-ID: <1570190555-12465-1-git-send-email-fabien.dessenne@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.25]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-04_06:2019-10-03,2019-10-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050250_335892_72BB3108 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Loic Pallardy <loic.pallardy@st.com>, Fabien Dessenne <fabien.dessenne@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If the rproc driver is probed before the mailbox driver and if the rproc
Device Tree node has some mailbox properties, the rproc driver probe
shall be deferred instead of being probed without mailbox support.

Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
---
 drivers/remoteproc/stm32_rproc.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 2cf4b29..410b794 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -310,7 +310,7 @@ static const struct stm32_mbox stm32_rproc_mbox[MBOX_NB_MBX] = {
 	}
 };
 
-static void stm32_rproc_request_mbox(struct rproc *rproc)
+static int stm32_rproc_request_mbox(struct rproc *rproc)
 {
 	struct stm32_rproc *ddata = rproc->priv;
 	struct device *dev = &rproc->dev;
@@ -328,11 +328,15 @@ static void stm32_rproc_request_mbox(struct rproc *rproc)
 		cl->dev = dev->parent;
 
 		ddata->mb[i].chan = mbox_request_channel_byname(cl, name);
-		if (IS_ERR(ddata->mb[i].chan)) {
+		if (PTR_ERR(ddata->mb[i].chan) == -EPROBE_DEFER) {
+			return -EPROBE_DEFER;
+		} else if (IS_ERR(ddata->mb[i].chan)) {
 			dev_warn(dev, "cannot get %s mbox\n", name);
 			ddata->mb[i].chan = NULL;
 		}
 	}
+
+	return 0;
 }
 
 static int stm32_rproc_set_hold_boot(struct rproc *rproc, bool hold)
@@ -596,7 +600,9 @@ static int stm32_rproc_probe(struct platform_device *pdev)
 	if (ret)
 		goto free_rproc;
 
-	stm32_rproc_request_mbox(rproc);
+	ret = stm32_rproc_request_mbox(rproc);
+	if (ret)
+		goto free_rproc;
 
 	ret = rproc_add(rproc);
 	if (ret)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
