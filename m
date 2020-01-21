Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B6C143AD8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:23:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fYXA49SFXUZhX422VSYtSSAXMtcIN8F9kUftKOx4lJg=; b=lGzQJ19VoY2dOk
	jckkMEhGvELdU8alLCLSsrOCK7jlt5IADiKKujCzKPeJ6EO+QDw1oKNxdFFEvNox1hOcgAxSOyuMm
	zDFxMKmubaTVMlgKoj3BNEX42J8EufSyrwlvMIPhlMMk+LZ2Spali+0q5Qfxauxo/AEaJQeZ6BMC+
	9xPm5W1nAdwR05I+VHoxuM0lMHfZ7XOK353g2WaB3eAUqg7RzbCrzCXUoDHrIX6kpq/QR3WqcbtF0
	Kjb5Gz4N8lQNvn7EIKi/EDxtQ29E/kP9Yw2B59kh410srwNTDCRHJ9fmP5T0QoUu3NzlYGz3IszmB
	vVQX8HtAlVXjjAYb0M2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqh7-0002g1-B1; Tue, 21 Jan 2020 10:23:37 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqgD-0001x6-KV
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:22:43 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00LAI5KJ023923; Tue, 21 Jan 2020 11:22:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=B3TTFS6TV+4qGCCLZoDEuyQWL8QSogcND8mYP28OXXo=;
 b=iz8vTKO+yoxfwOZAs+1AMYyzsilnTsGUYNvdN2QWDxGqyG1ept7I8vIbbRFZ8D7hm6jh
 8YNirqrauCV5gR5JF+iTPIYpKeSCCjbe5Q7Ujl5PAlLop7CFm7z8zuiEXmCAXVFQNl/v
 Qd2gbJSgDLNcG6t48c/dmQukDDSSZygZn5RwEYl9xW813lyHc52TB0WXi2AoH0KOfYux
 ZxuffcTYVIRLWEqGvPa1cacCBJl0yHRD7zF58mvqZ+GyhS6JTdDv8JDCsifb+sSnb7aJ
 SdrHXG4tcll79g6wtuHuMbU2EeVDFJOd2sFTraofZL+ChO2hpxG2ca7+okhHGqv12+Bc 4w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkrp26338-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 21 Jan 2020 11:22:37 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3BC6D10002A;
 Tue, 21 Jan 2020 11:22:36 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2B6102B187E;
 Tue, 21 Jan 2020 11:22:36 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 21 Jan 2020 11:22:35 +0100
From: Yannick Fertre <yannick.fertre@st.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Yannick Fertre <yannick.fertre@st.com>, Etienne Carriere
 <etienne.carriere@st.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 <linux-media@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 Philippe Cornu <philippe.cornu@st.com>
Subject: [PATCH] media: platform: stm32: defer probe for auxiliary clock
Date: Tue, 21 Jan 2020 11:22:32 +0100
Message-ID: <1579602152-7432-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-21_02:2020-01-21,
 2020-01-21 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_022242_089294_3651D337 
X-CRM114-Status: GOOD (  14.59  )
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

Change stm32-cec driver to defer probe when auxiliary clock
"hdmi-cec" is registered in the system not has not been probed yet.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
---
 drivers/media/platform/stm32/stm32-cec.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/stm32/stm32-cec.c b/drivers/media/platform/stm32/stm32-cec.c
index 8a86b2c..543c9ec 100644
--- a/drivers/media/platform/stm32/stm32-cec.c
+++ b/drivers/media/platform/stm32/stm32-cec.c
@@ -302,10 +302,14 @@ static int stm32_cec_probe(struct platform_device *pdev)
 	}
 
 	cec->clk_hdmi_cec = devm_clk_get(&pdev->dev, "hdmi-cec");
+	if (IS_ERR(cec->clk_hdmi_cec) &&
+	    PTR_ERR(cec->clk_hdmi_cec) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
+
 	if (!IS_ERR(cec->clk_hdmi_cec)) {
 		ret = clk_prepare(cec->clk_hdmi_cec);
 		if (ret) {
-			dev_err(&pdev->dev, "Unable to prepare hdmi-cec clock\n");
+			dev_err(&pdev->dev, "Can't prepare hdmi-cec clock\n");
 			return ret;
 		}
 	}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
