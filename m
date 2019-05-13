Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6191B12B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 09:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NdUtskinIdqBfGHs55jtoxs9cC3iM39SUnbmreJeIjE=; b=fxDqQUduAtHBmW
	n09ZpHq1TdK8qOCA9qELUYvCLZ1p8t8tb2NCVG586tco6ha/ltx3oAN7y7geQsJlUYkv8z5P/F0mv
	5ND7M6VBXsSch1cK284OmShmU79dWABxL0KVZh7ywyjFwl4eBTlUuwDCd3jyua/ZfYhMGPwhoBQR0
	QK1KQRifi1wZ92RTqD0Pk+ghOv5KxscROLE759R1bPIXzc3j5opaUg5CGMmXIZktACzIFGcgQ4li/
	EzcphVjK/blHJteTShvgBy/b0MYXWMb2jaBynEAu9xB9Pv/OlAnVJ94RBq0qaPMXiHmWlkQAOPOlq
	g0v7wBvUowAcvYbts+Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5Pk-0002Xj-BR; Mon, 13 May 2019 07:30:24 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5Pc-0002XJ-Oc
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 07:30:18 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4D7QM1I009050; Mon, 13 May 2019 09:30:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=bURCBAue+7AyVWgZbYBJxzJiyLeB1d3yp/jM0DfADTU=;
 b=w5r30mezaFZfl7jNNnVNJBezsOhfZikY7nVPMZ+/ame+5Zq/sSr42IqClHXTF/tKMbFV
 nfxMdgOdbchEB8YQb43ZjMJG4oIMjRa37j4A14DHo0YfSNfRdroepmCd6TMMEqLIHs4a
 95nQX7fU16DnnEgaS+7ntboGSc+API5ZZTWcpvhDLYFyoaWyK8LoeHSf3acYFdLdBe6j
 85lgjymtnF4UNA13xo8WhhvCFjDlrFqAISR76q1OOISpK9iMhfggirL7LA+AXYf32kpB
 BI7GmjLUKV02lmCbNiD4LZOTR4cuahQBBfJYY3tKDuKBLDYm7ROFT2441a3Se5jM9YoE mw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sdn9fhe80-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 13 May 2019 09:30:09 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C69943A;
 Mon, 13 May 2019 07:30:08 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 987B5141A;
 Mon, 13 May 2019 07:30:08 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 13 May
 2019 09:30:08 +0200
Received: from localhost (10.201.20.5) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Mon, 13 May 2019 09:30:07 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Lee Jones <lee.jones@linaro.org>, Linus Walleij <linus.walleij@linaro.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH] pinctrl: stmfx: Fix comparison of unsigned expression warnings
Date: Mon, 13 May 2019 09:30:06 +0200
Message-ID: <1557732606-14662-1-git-send-email-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.20.5]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-13_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_003017_248558_BC463211 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Amelie Delaunay <amelie.delaunay@st.com>,
 Julia Lawall <julia.lawall@lip6.fr>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, kbuild-all@01.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch fixes the following warnings:

drivers/pinctrl/pinctrl-stmfx.c:225:5-8: WARNING: Unsigned expression
compared with zero: dir < 0
drivers/pinctrl/pinctrl-stmfx.c:231:5-9: WARNING: Unsigned expression
compared with zero: pupd < 0
drivers/pinctrl/pinctrl-stmfx.c:228:5-9: WARNING: Unsigned expression
compared with zero: type < 0

Fixes: 1490d9f841b1 ("pinctrl: Add STMFX GPIO expander Pinctrl/GPIO driver")
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Julia Lawall <julia.lawall@lip6.fr>
Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 drivers/pinctrl/pinctrl-stmfx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-stmfx.c b/drivers/pinctrl/pinctrl-stmfx.c
index bcd8126..3bd5d6f 100644
--- a/drivers/pinctrl/pinctrl-stmfx.c
+++ b/drivers/pinctrl/pinctrl-stmfx.c
@@ -213,7 +213,7 @@ static int stmfx_pinconf_get(struct pinctrl_dev *pctldev,
 	struct stmfx_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 	u32 param = pinconf_to_config_param(*config);
 	struct pinctrl_gpio_range *range;
-	u32 dir, type, pupd;
+	int dir, type, pupd;
 	u32 arg = 0;
 	int ret;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
