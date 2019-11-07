Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C1CF29B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 09:49:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJCQnkw6NQal+wXMEri5QNcWSJTwWTpLO1Fox+8ECNk=; b=lrudDVZdw3NId2
	D4ljluElCv4qyI7uF6xxHr9HJQ1XWNlr/6xPkfU32bKjDXXSdlFndSpufV64BS+w2IpJD7dDFkcpe
	faHAyoZAgpnSDb0/7bvVo4b+n8ISOtjB7YjUwMIR1h0u/PX7Rze2+Fr197yO4Eb7JcsA9W2xG8ujS
	gO3/GqB40AgEPwvfLwFp9U/M81e0caesNMhwLUi9oKJiX9sRIQjgcTsSeS9WMDxnGUMo24p6LqoOI
	ruMygcuw88A6TYV/8Y0Mwc7beAs6lx4q9h8GaJAfCRqmMdDfnEKbKgxFxizqWMjkQa9FR64ibs5F+
	VNC7xgmJdVknxWvb0jXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdTl-00037t-VH; Thu, 07 Nov 2019 08:49:21 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdT0-0002R7-C2
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 08:48:37 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA78l9gv010906; Thu, 7 Nov 2019 09:48:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=ybkcAM5LsQb8gc2xuJG0a/Fx63v9jUphoWie5360mak=;
 b=lVwllBubjnKEEMR9vCKj8OGNj9b+uJ87wkg4Im62bCWgsS2qFRzrhkrq2Yf3U+LRBoF+
 QZpaZxoidQM42ktvLqqLhdbvYwj7RuFY7o788hY4vQ59z15RNKBmJzUhYSFDkSQW08vV
 TjWwhp+EjXnTLY+DTHUXXn6+EKzbuLVHdG57pUgc9YAoNFoLcVHmvn4j4VdxLRgQvRR5
 cSA/4xB59kQAvP8H1IdnkBOs9R8AoOOzEgTFadoBbklCh0MFJpiWeJWg6qnPYuCAsjvI
 6DF4MHm7yzZY7eXz1zprJbug/Suaai1htVzjz8UDBRGoq9OUDZPFNaAZQ7PLMdbhy2rs 6A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w41vduy7v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 Nov 2019 09:48:23 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D1AA110006A;
 Thu,  7 Nov 2019 09:48:03 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C2C2A2AA977;
 Thu,  7 Nov 2019 09:48:03 +0100 (CET)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 7 Nov 2019
 09:48:03 +0100
Received: from localhost (10.201.22.222) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 7 Nov 2019 09:48:03
 +0100
From: Christophe Roullier <christophe.roullier@st.com>
To: <robh@kernel.org>, <davem@davemloft.net>, <joabreu@synopsys.com>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <peppe.cavallaro@st.com>
Subject: [PATCH V4 net-next 1/4] net: ethernet: stmmac: Add support for syscfg
 clock
Date: Thu, 7 Nov 2019 09:47:54 +0100
Message-ID: <20191107084757.17910-2-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191107084757.17910-1-christophe.roullier@st.com>
References: <20191107084757.17910-1-christophe.roullier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.22.222]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-07_02:2019-11-07,2019-11-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_004834_792711_CFC1743E 
X-CRM114-Status: GOOD (  16.86  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, andrew@lunn.ch, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 christophe.roullier@st.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add optional support for syscfg clock in dwmac-stm32.c
Now Syscfg clock is activated automatically when syscfg
registers are used

Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
---
 .../net/ethernet/stmicro/stmmac/dwmac-stm32.c | 23 +++++++------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
index 4ef041bdf6a1..9e4180e1683f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
@@ -155,18 +155,14 @@ static int stm32mp1_clk_prepare(struct stm32_dwmac *dwmac, bool prepare)
 		ret = clk_prepare_enable(dwmac->syscfg_clk);
 		if (ret)
 			return ret;
-
-		if (dwmac->clk_eth_ck) {
-			ret = clk_prepare_enable(dwmac->clk_eth_ck);
-			if (ret) {
-				clk_disable_unprepare(dwmac->syscfg_clk);
+		ret = clk_prepare_enable(dwmac->clk_eth_ck);
+		if (ret) {
+			clk_disable_unprepare(dwmac->syscfg_clk);
 				return ret;
-			}
 		}
 	} else {
 		clk_disable_unprepare(dwmac->syscfg_clk);
-		if (dwmac->clk_eth_ck)
-			clk_disable_unprepare(dwmac->clk_eth_ck);
+		clk_disable_unprepare(dwmac->clk_eth_ck);
 	}
 	return ret;
 }
@@ -320,12 +316,10 @@ static int stm32mp1_parse_data(struct stm32_dwmac *dwmac,
 		return PTR_ERR(dwmac->clk_ethstp);
 	}
 
-	/*  Clock for sysconfig */
+	/*  Optional Clock for sysconfig */
 	dwmac->syscfg_clk = devm_clk_get(dev, "syscfg-clk");
-	if (IS_ERR(dwmac->syscfg_clk)) {
-		dev_err(dev, "No syscfg clock provided...\n");
-		return PTR_ERR(dwmac->syscfg_clk);
-	}
+	if (IS_ERR(dwmac->syscfg_clk))
+		dwmac->syscfg_clk = NULL;
 
 	/* Get IRQ information early to have an ability to ask for deferred
 	 * probe if needed before we went too far with resource allocation.
@@ -437,8 +431,7 @@ static int stm32mp1_suspend(struct stm32_dwmac *dwmac)
 
 	clk_disable_unprepare(dwmac->clk_tx);
 	clk_disable_unprepare(dwmac->syscfg_clk);
-	if (dwmac->clk_eth_ck)
-		clk_disable_unprepare(dwmac->clk_eth_ck);
+	clk_disable_unprepare(dwmac->clk_eth_ck);
 
 	return ret;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
