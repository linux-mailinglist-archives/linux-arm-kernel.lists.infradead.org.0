Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD2CE8550
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 11:16:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lUiCvPw72yqt96QI4P/o44OudwY5t6iEHf6aMTZ/Fbs=; b=YfeGoK+FUhbKvF
	fPrRtSUpa5CwiGeYXwcWoLUw4SZm0Jv9ha1aW3uACkrJPNcNLvOsnoYGEg1wUa1ydH+OzMMELKDej
	nGpACS5fJ0HesQ+jmsCcEk2FwqBVIzcziAigRUF+zJjkA/vlzLJHB+dHmPc2p3oOed17+/N+Drkco
	aHsdQVysTw3HM/51SQN3vNhIq0P9R05cX2ZBaWEdB6e40+W9lbgEYa3AW/BXaH18qdptPCcMI1pqZ
	6sbnuSabBgjA4qKeErVm6ImB74tAmiEFC5XsWe3yHsvwpdg/rRK6D44jBvaoSuVwxmcrYC23UidBH
	RqDT+8CaKPvSfSkAPLhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPOY0-0001ev-Vp; Tue, 29 Oct 2019 10:16:20 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPOWo-0007um-2S
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 10:15:09 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9TA7LNi016793; Tue, 29 Oct 2019 11:14:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=vyF/QISSJCb/iu6rS6wjZkpjt1WcfYY+i4OiL+tne44=;
 b=qIQo2JVuHs+ZDbVv72djizFIvb+d5Pos8AhK0LNs2Odq7Ol/N1kO3HUkk+vgIhkefnvk
 ZN1bs0iy4VzoxDNI+9XPHd8aep8s60diitpQFlb2wKgS84ilGrtqaBgyQJDkeVBH7J4i
 /XbnlY20Xp9KEiWycN7lUucLpA9i7v9P++arSatZ4YLSq89+KierJ6C4e2jQdKOsxV1A
 uMLJuofoBIYFqcw9C9LU8dEntlBkJqM8VKi03c1M24QdzL7ocY2F7VOvxNpV4x5+hqnf
 sN6OuZ64mvJr1kIHWSDDOxqpPFcu7GlzzyC+8baii5oqsT1ul06ehR4mxMf92qy8sACe QQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vvbm0f1y9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 29 Oct 2019 11:14:52 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8355D100038;
 Tue, 29 Oct 2019 11:14:51 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 734CB2B28DA;
 Tue, 29 Oct 2019 11:14:51 +0100 (CET)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 29 Oct
 2019 11:14:51 +0100
Received: from localhost (10.201.22.222) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 29 Oct 2019 11:14:50
 +0100
From: Christophe Roullier <christophe.roullier@st.com>
To: <robh@kernel.org>, <davem@davemloft.net>, <joabreu@synopsys.com>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <peppe.cavallaro@st.com>
Subject: [net: ethernet: stmmac: some fixes and optimizations 1/5] net:
 ethernet: stmmac: Add support for syscfg clock
Date: Tue, 29 Oct 2019 11:14:37 +0100
Message-ID: <20191029101441.17290-2-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029101441.17290-1-christophe.roullier@st.com>
References: <20191029101441.17290-1-christophe.roullier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.22.222]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-29_03:2019-10-28,2019-10-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_031506_449155_0DC6155C 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 .../net/ethernet/stmicro/stmmac/dwmac-stm32.c | 36 +++++++++++++------
 1 file changed, 25 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
index 4ef041bdf6a1..7e6619868cc1 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
@@ -152,23 +152,32 @@ static int stm32mp1_clk_prepare(struct stm32_dwmac *dwmac, bool prepare)
 	int ret = 0;
 
 	if (prepare) {
-		ret = clk_prepare_enable(dwmac->syscfg_clk);
-		if (ret)
-			return ret;
-
+		if (dwmac->syscfg_clk) {
+			ret = clk_prepare_enable(dwmac->syscfg_clk);
+			if (ret)
+				return ret;
+		}
 		if (dwmac->clk_eth_ck) {
 			ret = clk_prepare_enable(dwmac->clk_eth_ck);
 			if (ret) {
-				clk_disable_unprepare(dwmac->syscfg_clk);
+				if (dwmac->syscfg_clk)
+					goto unprepare_syscfg;
 				return ret;
 			}
 		}
 	} else {
-		clk_disable_unprepare(dwmac->syscfg_clk);
+		if (dwmac->syscfg_clk)
+			clk_disable_unprepare(dwmac->syscfg_clk);
+
 		if (dwmac->clk_eth_ck)
 			clk_disable_unprepare(dwmac->clk_eth_ck);
 	}
 	return ret;
+
+unprepare_syscfg:
+	clk_disable_unprepare(dwmac->syscfg_clk);
+
+	return ret;
 }
 
 static int stm32mp1_set_mode(struct plat_stmmacenet_data *plat_dat)
@@ -296,7 +305,7 @@ static int stm32mp1_parse_data(struct stm32_dwmac *dwmac,
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct device_node *np = dev->of_node;
-	int err = 0;
+	int err;
 
 	/* Gigabit Ethernet 125MHz clock selection. */
 	dwmac->eth_clk_sel_reg = of_property_read_bool(np, "st,eth-clk-sel");
@@ -320,13 +329,17 @@ static int stm32mp1_parse_data(struct stm32_dwmac *dwmac,
 		return PTR_ERR(dwmac->clk_ethstp);
 	}
 
-	/*  Clock for sysconfig */
+	/*  Optional Clock for sysconfig */
 	dwmac->syscfg_clk = devm_clk_get(dev, "syscfg-clk");
 	if (IS_ERR(dwmac->syscfg_clk)) {
-		dev_err(dev, "No syscfg clock provided...\n");
-		return PTR_ERR(dwmac->syscfg_clk);
+		err = PTR_ERR(dwmac->syscfg_clk);
+		if (err != -ENOENT)
+			return err;
+		dwmac->syscfg_clk = NULL;
 	}
 
+	err = 0;
+
 	/* Get IRQ information early to have an ability to ask for deferred
 	 * probe if needed before we went too far with resource allocation.
 	 */
@@ -436,7 +449,8 @@ static int stm32mp1_suspend(struct stm32_dwmac *dwmac)
 		return ret;
 
 	clk_disable_unprepare(dwmac->clk_tx);
-	clk_disable_unprepare(dwmac->syscfg_clk);
+	if (dwmac->syscfg_clk)
+		clk_disable_unprepare(dwmac->syscfg_clk);
 	if (dwmac->clk_eth_ck)
 		clk_disable_unprepare(dwmac->clk_eth_ck);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
