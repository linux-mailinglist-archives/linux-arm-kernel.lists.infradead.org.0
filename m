Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BDB266E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 17:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cPFh7S0EwaHI1kaJwg05d9EHbAr+R05TiAAr5BR3CDQ=; b=gFBmROQ4NuIqQ2
	SRj+6AKez8jTGfAI3OD7Qt7PyKRF1UJ043w+K1y8+xT70QDafDJTMDYJm9LgKOreddC/8wlVZbZ6D
	ds6WBAW0/ucK8dBSQ0SlD15A7E28u1AavkDjB+wxEjOBhNevhirnPU4ZfKwLw6777cwx4ERDqwhnp
	X+p1iBtbj2n9sNz5D4RLAuSfwOkyPdWaycq2oL3RHUNMAXaUJDwvv152p2iredR5x0yaGQfd3Iqj3
	SKqOirzYrQVvPTpljtRNdBb6s56nEaeNMXuv4yHvBgJ0HtVF0UmFS6tXt7rCegR7dgouQmn8uafFZ
	cDIYj8G2zgcfViztUbUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTTC2-0004EM-LI; Wed, 22 May 2019 15:30:14 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTBT-0003Nq-2K
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 15:29:40 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4MFSLdn021231; Wed, 22 May 2019 17:29:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=B6DKjDnb7O5BR/R4BaH3RkAeSYESY1eQiVlZXH9oE8A=;
 b=Nsbzx5vOjEJkV6yl0J71Fvx548IwqVYr5OK+tf/R+yDwNL/jXPYF5cCRqDr/O99pgeYH
 0ozfyPcQkt6fT8zAvU1kfbBuNu90pOOEkOzQjh/KFw/OAAuwwg/Bry9j3ZzkAxvjmzTB
 S9cYHgLoffD6ew/N+GxezB5ZBZasKT/JVJpusP2/sWvqP93/T7zHcOgu4y6mYBlTeHEq
 0hr71YovpDRlVqBWpd6wZSqmxK/hmmIgDcx6Z4YXDXZXONzyegRzNWS2r8q8e4L5TR7T
 2Dpj+FLeOrndDydEazYRjwezPqxckX1Hssp03CO49DxgnkEfH4BkR1wPXqG9aX+Gnswu Kw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sj7h11b1j-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 22 May 2019 17:29:32 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3A46941;
 Wed, 22 May 2019 15:29:31 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EAEE42CD8;
 Wed, 22 May 2019 15:29:30 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 22 May
 2019 17:29:30 +0200
Received: from localhost (10.201.20.122) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 22 May 2019 17:29:30
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <linus.walleij@linaro.org>, <alexandre.torgue@st.com>,
 <amelie.delaunay@st.com>
Subject: [PATCH 2/2] pinctrl: stmfx: enable links creations
Date: Wed, 22 May 2019 17:29:25 +0200
Message-ID: <20190522152925.12419-3-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20190522152925.12419-1-benjamin.gaignard@st.com>
References: <20190522152925.12419-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.20.122]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-22_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_082939_402491_6BE37BDB 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, benjamin.gaignard@linaro.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Set create_link to inform pinctrl core that stmfx wants to create
link with its consumers.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 drivers/pinctrl/pinctrl-stmfx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/pinctrl-stmfx.c b/drivers/pinctrl/pinctrl-stmfx.c
index eba872ce4a7c..55a9f145b4d9 100644
--- a/drivers/pinctrl/pinctrl-stmfx.c
+++ b/drivers/pinctrl/pinctrl-stmfx.c
@@ -622,6 +622,7 @@ static int stmfx_pinctrl_probe(struct platform_device *pdev)
 	pctl->pctl_desc.pins = stmfx_pins;
 	pctl->pctl_desc.npins = ARRAY_SIZE(stmfx_pins);
 	pctl->pctl_desc.owner = THIS_MODULE;
+	pctl->pctl_desc.create_link = true;
 
 	ret = devm_pinctrl_register_and_init(pctl->dev, &pctl->pctl_desc,
 					     pctl, &pctl->pctl_dev);
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
