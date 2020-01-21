Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02362143ADB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:24:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=21wsunuHgE5mkw+Y4iRs+DEuLujTNghe+zPEbXxQAXg=; b=IeaLdhXX6pF1e1
	SzJ7rjS5bjHQLj5jzmqStG1zvMg0E4ObvmQeJyGET1admK5BZ+gZlbtTNOggaCptG3OOOBdizDFl8
	wYuaC/SFhqQmyixE9jaMqkcOhwGepOi3uuGz2JmasrhMNT4V3K8MmdfC+uMJYjKWd0jjQXbwoWDms
	furYsOdzU1TB87wiEMdj3EEhKNLjbu04EqEQrU6oA5QcpTU0RzchimhjDV25OQ+QO1iH99FtvhAbH
	YwDBfFauYLdXfNDiYf+WzG7RNgpGjqSOYgXF+2Sijw1uwFbVAgKCPOeghYUm0Z2wOR8MDsZwdByW1
	eXNo7wiWP7x4NtU6vdEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqhS-0002zX-Jc; Tue, 21 Jan 2020 10:23:58 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqgZ-0002GI-DV
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:23:05 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00LAI5KS023923; Tue, 21 Jan 2020 11:22:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=uU66AWwrrnwTiw+9Nz6p8yTErkFbXxjMVakld76eCaU=;
 b=ifdQ74tWi+8zC2yp06a1zXl/PCGyzzeGxVAE8Nq7gnKObCqk7fc1T2/V1fo0iMYG486/
 tk9AwuGdAEa4r1KEB0ImcoELiPPrDTPPJp5vr8MpvIEwwDF//cyBFlPrFiPYwkziz9vd
 UF54khdkZ+NkfI+7jsfFK4iHieyyoaaB7ad/iWlQuI7aeIzdTRzmGHomDhYVMd+DNDWT
 s6mjLfqhIsdGLqoSGu1CTz9VXqCyCCYQTk7sKk7Qe4OQjMfLHtPnyAEQvotCcgaR4xq2
 ndlafA57DNH1YYpZGRuGf0VgdQ8GfQ/rwhaBBhS6CYYrh8mF2xbioFJeFHLSzyu7pqtr ow== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkrp2634v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 21 Jan 2020 11:22:59 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E33D910002A;
 Tue, 21 Jan 2020 11:22:51 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D7D222B187E;
 Tue, 21 Jan 2020 11:22:51 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 21 Jan 2020 11:22:51 +0100
From: Yannick Fertre <yannick.fertre@st.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Yannick Fertre <yannick.fertre@st.com>, Etienne Carriere
 <etienne.carriere@st.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 <linux-media@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 Philippe Cornu <philippe.cornu@st.com>
Subject: [PATCH] media: platform: stm32: don't print an error on probe deferral
Date: Tue, 21 Jan 2020 11:22:49 +0100
Message-ID: <1579602169-7484-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-21_02:2020-01-21,
 2020-01-21 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_022303_800180_476AE944 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Etienne Carriere <etienne.carriere@st.com>

Change stm32-cec driver to not print an error message when the
device probe operation is deferred.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
---
 drivers/media/platform/stm32/stm32-cec.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/stm32/stm32-cec.c b/drivers/media/platform/stm32/stm32-cec.c
index 8a86b2c..9c137f1 100644
--- a/drivers/media/platform/stm32/stm32-cec.c
+++ b/drivers/media/platform/stm32/stm32-cec.c
@@ -291,7 +291,9 @@ static int stm32_cec_probe(struct platform_device *pdev)
 
 	cec->clk_cec = devm_clk_get(&pdev->dev, "cec");
 	if (IS_ERR(cec->clk_cec)) {
-		dev_err(&pdev->dev, "Cannot get cec clock\n");
+		if (PTR_ERR(cec->clk_cec) != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Cannot get cec clock\n");
+
 		return PTR_ERR(cec->clk_cec);
 	}
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
