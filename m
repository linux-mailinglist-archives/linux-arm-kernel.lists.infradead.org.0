Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C00A5125ED1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 11:24:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=05g1JJWCrD/DgfhjsGxgu7J/5uyAZOV2bRBnIzgcp2c=; b=XJ
	6+cFtd3x003O0TnD6NCCjVkhoJGCabb5eWSDDDfoYWAXTggnZ3bD7NLya8UxfhFXK4euCheDCRY0H
	RkYhFYu05g1iSavhh27vhPGZvvDymYX1YRP8rw8bYszqBEKqQAbyk8ydpWRMo1W7Hznkm+i0llVWh
	U6WnhnC9A74hE6/qKIE/L5jsN0dAoEPJBxN+sZuQzf1KVbjhAD+aqWFGhGrShANeawofkXLra9Twr
	HhqUrReD/qixfFu+xAd0LVG3TBRaRfvtNPbEGpmYZFLpwOPxGBezWvIELYoMC2ycfcOO2yJ/ImlZc
	4rgfftLT1JJysC1yZBwQRplYQYPC6UaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihsyi-0007yM-Bg; Thu, 19 Dec 2019 10:24:20 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihsyZ-0007xg-7d
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 10:24:13 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191219102408epoutp0462bb1c69e73081c0ee04adebb0f86edf~hvrljU9Zt0525705257epoutp04D
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 10:24:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191219102408epoutp0462bb1c69e73081c0ee04adebb0f86edf~hvrljU9Zt0525705257epoutp04D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576751048;
 bh=lNrhRejjZJSzCkKB4e9oz198En7AGkhdGjzwETzjwSA=;
 h=From:To:Cc:Subject:Date:References:From;
 b=KRYEj2JzULwya/Lqwzr7vEUGg8ieaFAf3rPegr29B0PVUF3SyMCsP9klN81Hb1v0F
 ECc7o8e5so/QQv3UuwVcxFPji6Ab/CxyYfVztMOTNtOYbFxz8BKojI0vtLkS7M66Ta
 3ZaPRb8yNlIUrnHGCUZ5g5Hn6i5XMQy/gom60bkg=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20191219102407epcas5p1b5c225f18bdc03ded34454fd31c43f6f~hvrlMFaTh0414504145epcas5p1y;
 Thu, 19 Dec 2019 10:24:07 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 84.91.20197.7CF4BFD5; Thu, 19 Dec 2019 19:24:07 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20191219102407epcas5p103b26e6fb191f7135d870a3449115c89~hvrktDiNf1266012660epcas5p1U;
 Thu, 19 Dec 2019 10:24:07 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191219102407epsmtrp176085784dc461fe6da3d95f7ca863b62~hvrksUUAR2283122831epsmtrp1j;
 Thu, 19 Dec 2019 10:24:07 +0000 (GMT)
X-AuditID: b6c32a4a-781ff70000014ee5-d8-5dfb4fc75a10
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 41.F3.06569.6CF4BFD5; Thu, 19 Dec 2019 19:24:07 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191219102405epsmtip2fd5ad69fdeaf24c9021b65c50e814a81~hvri16nI00195201952epsmtip2W;
 Thu, 19 Dec 2019 10:24:04 +0000 (GMT)
From: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>
To: netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] net: stmmac: platform: Fix MDIO init for platforms without PHY
Date: Thu, 19 Dec 2019 15:47:01 +0530
Message-Id: <1576750621-78066-1-git-send-email-p.rajanbabu@samsung.com>
X-Mailer: git-send-email 2.7.4
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpgleLIzCtJLcpLzFFi42LZdlhTS/e4/+9Yg6/PlC02PjnNaDHnfAuL
 xZFTS5gs7v35wGqx6fE1VovLu+awWXRde8JqcWyBmMXRjcEWi7Z+Ybf4/3oro8WsCztYLW6s
 Z7dYsPERowOfx5aVN5k8Ni+p9+jbsorR4+A+Q4+nP/Yye2zZ/5nR4/MmuQD2KC6blNSczLLU
 In27BK6MVZMa2Qs2clb8n7+QrYGxjaOLkYNDQsBEYsqyoC5GLg4hgd2MEmd3/mOBcD4xSmxb
 s5+1i5ETyPnGKLFnoQ2IDdIw6/htNoiivYwSSx5OYIJwWpgkbk1+ygxSxSZgKrFqTiMrSEJE
 oItRYteBOWCjmAUWMkm82GcJYgsLBEp82dbNAmKzCKhKbHlwhhHE5hVwl/j7dx0rxDo5iZvn
 Opkh7CNsEl9XaELYLhLvlz9ng7CFJV4d38IOYUtJvOxvg7LLJV5+Wgx2qoRAA6PEzInTGSES
 9hIHrsxhAQUAs4CmxPpd+hC38Un0/n7CBAkXXomONiGIalWJ9cs3QXVKS+y7vhfK9pDoubqB
 BRJCsRKT1xxhnsAoMwth6AJGxlWMkqkFxbnpqcWmBUZ5qeV6xYm5xaV56XrJ+bmbGMHpQstr
 B+Oycz6HGAU4GJV4eH+4/ooVYk0sK67MPcQowcGsJMJ7u+NnrBBvSmJlVWpRfnxRaU5q8SFG
 aQ4WJXHeSaxXY4QE0hNLUrNTUwtSi2CyTBycUg2MtgKXHZhlDwa5b13vK+t5rXEtX7X5Tr7X
 ew7NszL866pvqH72wbIZvV6pLjp/Ze68S2SMO/nw+ax77G4F710djOwEn1/0tnF5sT8yfi9j
 2IX+n1sWf2n97WqUfP33xaT8r2+W/q9/ZWM4PVXLN13UKDvgnulymb939sxRCtaffrOgpSe5
 TNpAiaU4I9FQi7moOBEANvs2axMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGLMWRmVeSWpSXmKPExsWy7bCSvO5x/9+xBru6GS02PjnNaDHnfAuL
 xZFTS5gs7v35wGqx6fE1VovLu+awWXRde8JqcWyBmMXRjcEWi7Z+Ybf4/3oro8WsCztYLW6s
 Z7dYsPERowOfx5aVN5k8Ni+p9+jbsorR4+A+Q4+nP/Yye2zZ/5nR4/MmuQD2KC6blNSczLLU
 In27BK6MVZMa2Qs2clb8n7+QrYGxjaOLkZNDQsBEYtbx22xdjFwcQgK7GSV+LpzNBpGQlpje
 vwfKFpZY+e85O0RRE5NE98UtYAk2AVOJVXMaWUESIgJ9jBL/F/1hAnGYBVYzSexY08IEUiUs
 4C9x//4LFhCbRUBVYsuDM4wgNq+Au8Tfv+tYIVbISdw818k8gZFnASPDKkbJ1ILi3PTcYsMC
 o7zUcr3ixNzi0rx0veT83E2M4NDU0trBeOJE/CFGAQ5GJR7eH66/YoVYE8uKK3MPMUpwMCuJ
 8N7u+BkrxJuSWFmVWpQfX1Sak1p8iFGag0VJnFc+/1ikkEB6YklqdmpqQWoRTJaJg1OqgXGZ
 bP8snY0e68QWK7Kq80bprA/YcKM3K0EhI73gvVDxo8C5NWJ7Xtkm1P+t29F7+rRuwBYTFaPj
 zofvSPscrcgI8dwmEMrtHr+kz/LLI93mvh1ft9x/+CxVhi9i3qPoRzd36q9hXf/z4d8zlZEp
 Nz2X7hFOdXhuPm/yghOWrX9u/d+0Kt85+IASS3FGoqEWc1FxIgDJWKlXSQIAAA==
X-CMS-MailID: 20191219102407epcas5p103b26e6fb191f7135d870a3449115c89
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20191219102407epcas5p103b26e6fb191f7135d870a3449115c89
References: <CGME20191219102407epcas5p103b26e6fb191f7135d870a3449115c89@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_022411_670782_A70A1400 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jose.Abreu@synopsys.com, jayati.sahu@samsung.com, alexandre.torgue@st.com,
 rcsekar@samsung.com, pankaj.dubey@samsung.com,
 Sriram Dash <sriram.dash@samsung.com>, stable@vger.kernel.org,
 Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>, peppe.cavallaro@st.com,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current implementation of "stmmac_dt_phy" function initializes
the MDIO platform bus data, even in the absence of PHY. This fix
will skip MDIO initialization if there is no PHY present.

Fixes: 7437127 ("net: stmmac: Convert to phylink and remove phylib logic")
Acked-by: Jayati Sahu <jayati.sahu@samsung.com>
Signed-off-by: Sriram Dash <sriram.dash@samsung.com>
Signed-off-by: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index bedaff0..cc8d7e7 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -320,7 +320,7 @@ static int stmmac_mtl_setup(struct platform_device *pdev,
 static int stmmac_dt_phy(struct plat_stmmacenet_data *plat,
 			 struct device_node *np, struct device *dev)
 {
-	bool mdio = true;
+	bool mdio = false;
 	static const struct of_device_id need_mdio_ids[] = {
 		{ .compatible = "snps,dwc-qos-ethernet-4.10" },
 		{},
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
