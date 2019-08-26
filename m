Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7613C9D33C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IS4sRdyPoztDTVyACB4+KAvrWI2g+Xro8zn3mooOs4k=; b=EE0FBvIVdhx8pH
	YLizgiAEtNSXRo5ZYRqTk4B5MbifIbj/RUJcb88j3Ko6i/jJYVVTX26s8s2ddZ5PfFabc1qZiwoxd
	4GPUqwP0+e7m9NO91KMMHu77e+CiT1adhzwRh9161bfP5/hKhjQ2ayOrTDaBXk3nzwRtZXVp7jfZZ
	9N61fxExe99i7jLmE0mAdhxs6DiP2RUT1MnAUvF1UCxuYbF1/PvUAyN87t9UC7Z0uLkNw7tLbDu5M
	+2HI+NjG82izovDOKFrIxWXeae/hp1IQMThG7MviXqH8LakfU5WhRJaGjC1gKKwGCSyAflrmZ41Fc
	U/9/obO/MC4L3CQS4TYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2H8i-00070T-MB; Mon, 26 Aug 2019 15:42:40 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2H5R-0003B5-Jj
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 15:39:19 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7QFPrA8018373; Mon, 26 Aug 2019 17:39:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=C0FjddlLz1tmGjWDBbox9NlNRBYo5AeX1gKNZtaLU5g=;
 b=Uy9YJ97HWifGqiNE2bZDoI7Goq6JnRM7BYzJuFG+KghxPxQpMXRocx54nTa7JjhnaXH9
 pPWn55lKtkr86gbQ0Q9xTfq9ue4Wjj5DBRFvLb27ZNa0aCBE5vLQSpdGoU60SWHC7SyC
 gs/+4Co71mrbqGPctuDkriAajhGNNVpk9F4B/x4ANnsPksHO8u/LErIQhrgi1ivgQF2r
 XUKzG4wyUm7W+TJra1/zVOWlAG4wmBJlFNv5hr8ScymlZn083D4mrfcRXizwk5EOwODd
 zxciaIIANo/FGysi1csooiGWhF0x27CYRUjUZgz4fXC6xHuItnr3v7GXNnUEfyz1+wJr KA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2uju0vmgf6-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 26 Aug 2019 17:39:14 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 274E01D1;
 Mon, 26 Aug 2019 15:38:42 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A29F52D3762;
 Mon, 26 Aug 2019 17:38:25 +0200 (CEST)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 26 Aug
 2019 17:38:25 +0200
Received: from localhost (10.201.23.25) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 26 Aug 2019 17:38:21
 +0200
From: Fabien Dessenne <fabien.dessenne@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-remoteproc@vger.kernel.org>
Subject: [PATCH] remoteproc: stm32: clear MCU PDDS at firmware start
Date: Mon, 26 Aug 2019 17:38:06 +0200
Message-ID: <1566833886-16571-1-git-send-email-fabien.dessenne@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.25]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-26_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_083918_177017_1202B39D 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

When remoteproc stops a firmware, it sets the MCU PDDS flag, allowing
the platform to reach the Standby power mode if needed.
Symmetrically, clear this flag before running a firmware.
This fixes the issue where the system goes to Standby mode when the
MCU crashes while MPU is in CSTOP mode.

Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
---
 drivers/remoteproc/stm32_rproc.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index e2da719..1c95913 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -383,10 +383,21 @@ static void stm32_rproc_add_coredump_trace(struct rproc *rproc)
 
 static int stm32_rproc_start(struct rproc *rproc)
 {
+	struct stm32_rproc *ddata = rproc->priv;
 	int err;
 
 	stm32_rproc_add_coredump_trace(rproc);
 
+	/* clear remote proc Deep Sleep */
+	if (ddata->pdds.map) {
+		err = regmap_update_bits(ddata->pdds.map, ddata->pdds.reg,
+					 ddata->pdds.mask, 0);
+		if (err) {
+			dev_err(&rproc->dev, "failed to clear pdds\n");
+			return err;
+		}
+	}
+
 	err = stm32_rproc_set_hold_boot(rproc, false);
 	if (err)
 		return err;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
