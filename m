Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0211991F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 09:43:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lm31GTW8x+oMUlEA930x3YOYB/EYGaByebA2/H/+uTQ=; b=ugJhQDkoi+a0tJ
	BbkaR888vtOmTq8zEfwj76nthVCy74FZ3s5sqxGJLnwKdeXvZvWp5fsrshIC+Ng0CdFVmxkGM1vF6
	Uq/ogtN3SlYF49Xejbgql7UORafgrCnj3aXjPapDhX8qpUX2NyVgabe2FnddtqdQQZviHxclL7/P0
	DKGvfaMTuGwHeiZ+Gm4ib/j5ISWREkAqE4jiwRzPeUn8EfpsjcfrmIp0086xFNbl6ldwKUiz/HL6c
	/zxaMZRBdVB3TSv5IjgumO6DMBEj6ifwLwkl861iljaPEnENwPVa1nAiQm2LMsv/Ofij67Nr2p5v8
	0aWmplArL3l1htKsUpdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP0BQ-0004G1-PG; Fri, 10 May 2019 07:43:08 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP0Ay-0003rt-3z
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 07:42:42 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4A7cWJe028672; Fri, 10 May 2019 09:42:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Q4CttDSeHlGs3NyMtzY/R45bn2jdu2ftuKzuZpOJ83E=;
 b=lhNNj13PJ8w6uEjIvetr4ONcJ5zGcFiLzeeEtym0o5IxMHTBS2FCLdhS2GbTtLYck3CL
 hXMv1hp2RwH0N8GXywkZPgbhNgLrQddNjHYhKL9jea1id2YGjfbNfIqH6jpSxicGn6bS
 XZzk/JxOpheseE5PiRMuges+urbv3NZji9r3RaDmkJauOhEaAAHWVDkz1iMBRmqARBtL
 jmm7lzlCvbAoxEmZTw/8btxLzwOmgtE4tIp8xX3xK9nnti2sisZBtMXV21pN/4lxU4ry
 W5KjYrVDYpeHwOPUskASybPKzyDenH1tliEuBQyvV98pW2czd3e/x2LZ4gH4tPXmWOu6 ZA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sc9s4gpn7-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 10 May 2019 09:42:38 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 69EEC3A;
 Fri, 10 May 2019 07:42:37 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 44F6315AB;
 Fri, 10 May 2019 07:42:37 +0000 (GMT)
Received: from localhost (10.75.127.47) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 10 May 2019 09:42:36
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Linus Walleij <linus.walleij@linaro.org>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>
Subject: [PATCH 2/2] pinctrl: stm32: Enable suspend/resume for stm32mp157c SoC
Date: Fri, 10 May 2019 09:42:30 +0200
Message-ID: <1557474150-19618-3-git-send-email-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557474150-19618-1-git-send-email-alexandre.torgue@st.com>
References: <1557474150-19618-1-git-send-email-alexandre.torgue@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_004240_454178_31E8309E 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-gpio@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Apply suspend/resume management for stm32mp157c MPU.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

diff --git a/drivers/pinctrl/stm32/pinctrl-stm32mp157.c b/drivers/pinctrl/stm32/pinctrl-stm32mp157.c
index 320544f..2ccb99d 100644
--- a/drivers/pinctrl/stm32/pinctrl-stm32mp157.c
+++ b/drivers/pinctrl/stm32/pinctrl-stm32mp157.c
@@ -2342,11 +2342,16 @@ static const struct of_device_id stm32mp157_pctrl_match[] = {
 	{ }
 };
 
+static const struct dev_pm_ops stm32_pinctrl_dev_pm_ops = {
+	 SET_LATE_SYSTEM_SLEEP_PM_OPS(NULL, stm32_pinctrl_resume)
+};
+
 static struct platform_driver stm32mp157_pinctrl_driver = {
 	.probe = stm32_pctl_probe,
 	.driver = {
 		.name = "stm32mp157-pinctrl",
 		.of_match_table = stm32mp157_pctrl_match,
+		.pm = &stm32_pinctrl_dev_pm_ops,
 	},
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
