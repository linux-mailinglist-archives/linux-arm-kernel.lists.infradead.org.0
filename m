Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 448DF9D343
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:43:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EqIKD9+ETqtyMbUHfyN10Jk/W88aoUk71tfaAPOhPdA=; b=VM/5W6lv42XpzH
	daO2ZbnGzvwW1uDTsQG5+LTi2QLsjitRO469hi5NY73TlJPggippanJq3xC7GLZAqbqi5i6FDI3rf
	1aafpM53nvVzeDsx1cFiO+7Co1WwXOK+x8NRkmVe5qMObWWxc7DEUvfRVZkHMeGeCGTlKdtxuzZ6y
	g9DFCK94FzjiF0y4D/G4lBq7mvOtofmKD39HLQLj7fs6jy3/8z24fsdW34tGioauhdG7DSDTyGIDs
	aGc90c2qI8hLfnrlvwjGAbhKRnPjvjYfqnPQbjmyGD4UFq+w1R0bIaX69E4b8/aFHydgUq78reOIq
	XIhSmFNwoUiRwdxAiL5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2H90-0007HP-Uj; Mon, 26 Aug 2019 15:42:58 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2H5X-0003GQ-FP
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 15:39:25 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7QFPxev018386; Mon, 26 Aug 2019 17:39:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=tifbBOCihyi3euWjUK2dmnc9nxcr5SJrbcCSflAOoU8=;
 b=S8XFXpgE1a63XmxAh8nMqPjuQfMFYB2N3TTvQS7qbZkf0UHhuRkPfT/7MSJmwSjvX4Vu
 urGKqCn6XZWDEmTuZMPOvaky0r+BzIdAp432ZlS8I5OaiL1GYGoPg+lREiVMHHcozFXq
 37c1jw542Ti4bkCL2AQ698QSUNAMXgGT8QdNo38tgJVI6b1Sd6uIUv4P8c74Bxr1J22Q
 Rl2s74rsq11A1NwvdGVitQnt7bU8uvbGTCyPwS3o3Z9puxEk6+h0Zte8huY6PN9QW6cs
 ICY6B7TVjLa5ZjEUwI406HmBHMivWrUGFgTI2pk1GVi0oBX93QpYp3BHWHUQopwGyiZf mg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2uju0vmgja-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 26 Aug 2019 17:39:20 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6A9E918C;
 Mon, 26 Aug 2019 15:39:00 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BFD532BE677;
 Mon, 26 Aug 2019 17:38:34 +0200 (CEST)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 26 Aug
 2019 17:38:34 +0200
Received: from localhost (10.201.23.25) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 26 Aug 2019 17:38:31
 +0200
From: Fabien Dessenne <fabien.dessenne@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-remoteproc@vger.kernel.org>
Subject: [PATCH] remoteproc: stm32: manage the get_irq probe defer case
Date: Mon, 26 Aug 2019 17:38:29 +0200
Message-ID: <1566833909-16644-1-git-send-email-fabien.dessenne@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.25]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-26_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_083923_939804_AA70464A 
X-CRM114-Status: GOOD (  11.75  )
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

Manage the -EPROBE_DEFER error case for "wdg" IRQ.

Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
---
 drivers/remoteproc/stm32_rproc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 1c95913..2cf4b29 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -517,6 +517,9 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev)
 	int err, irq;
 
 	irq = platform_get_irq(pdev, 0);
+	if (irq == -EPROBE_DEFER)
+		return -EPROBE_DEFER;
+
 	if (irq > 0) {
 		err = devm_request_irq(dev, irq, stm32_rproc_wdg, 0,
 				       dev_name(dev), rproc);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
