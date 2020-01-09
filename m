Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D6E135990
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 13:55:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0Gc6L9YgEncIA2FpOQRj1EZv93z0Q2PvvDmCrELmajQ=; b=T1yx38RXm644Co
	AtuoKzsBLS2f+QdErmWznoRwOKoH/1p2J/xZ6mFvaYCnJwabrwE8Z6hRr+RpoOwwrzZH223cr36zs
	lHhb0FF2rDhQ6i1p3IRTdPK7mgN3CvxvaKemCxGX0Llzvvtid/ofXPtN0O2ZAu0k6gO/mQaH1HISg
	2C+cN483wwP+op2b7yHSchSyl/kl4z1zCg8OahXxsJ6NhhgX+lwsBtRmbE0se2/mJkyarLJ6nMWq1
	4m5THMrj4h6aeF7sBLrhFQs+HDuOiI57Cr3pg/SPYqiVrPZZQ4aqFZVQw54GSTBrYMLQ0s7/0U5JD
	20bk4T0g3QO14I/9D1Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipXLk-0003jI-HU; Thu, 09 Jan 2020 12:55:44 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipXLd-0003it-FK
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 12:55:38 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 009CrpZ4023407; Thu, 9 Jan 2020 13:55:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=UT3oqBVlL9AThQBvMMlQlr7Is6aALjGFQEcnqrsuo/Q=;
 b=hzK2ipcgMIwjDZ5tTXfWPHR0eOeYwzCOeKbh4XZZFw4Fe2+QJMLkZ0RCK7Z4CLa8ZAS3
 0J75IgAS3gTORzElWD0BjPLIZPr4n0/ImwQCYM5u4pridXC0gx8oDNl81DTJz6w+HmtD
 uzoJXbynnMbAx5uw9ESzY/olHjZBEu2l/rd6BEIhw674QSuwJQvk5AjN1wdRDYC1YPjG
 UM5h04JJ3kBQ+iUV6ZfPExnMcUqazPQbp81bGWTmSCQdKQoUTcYqYcm+BIN2o0DPpylq
 qgCWe2NyEdaJ1i0DpG7qEVEN7idYt79MTebPcy4KY0UQhEnEBXywTJ17ll/JHOKEmI7h xA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakm5sr71-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 09 Jan 2020 13:55:32 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3872E10002A;
 Thu,  9 Jan 2020 13:55:32 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 294312B3836;
 Thu,  9 Jan 2020 13:55:32 +0100 (CET)
Received: from localhost (10.75.127.50) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 9 Jan 2020 13:55:31
 +0100
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Kevin
 Hilman <khilman@baylibre.com>,
 <linux-arm-kernel@lists.infradead.org>, <soc@kernel.org>, <arm@kernel.org>
Subject: [PATCH] ARM: multi_v7_defconfig: enable STM32 PWR regulator
Date: Thu, 9 Jan 2020 13:55:31 +0100
Message-ID: <20200109125531.13610-1-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-09_02:2020-01-09,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_045537_812808_3D8101B6 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Amelie Delaunay <amelie.delaunay@st.com>

This enables the driver for STM32 PWR regulators found on stm32mp1.

Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

---

Hi Arnd, Olof and Kevin,

I only have this patch for STM32 configs part. So please consider it
as my pull request for v5.6.

Thanks

Alex

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 3f1b96dc7faa..8539da92f60a 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -591,6 +591,7 @@ CONFIG_REGULATOR_S2MPS11=y
 CONFIG_REGULATOR_S5M8767=y
 CONFIG_REGULATOR_STM32_BOOSTER=m
 CONFIG_REGULATOR_STM32_VREFBUF=m
+CONFIG_REGULATOR_STM32_PWR=y
 CONFIG_REGULATOR_STPMIC1=y
 CONFIG_REGULATOR_TI_ABB=y
 CONFIG_REGULATOR_TPS51632=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
