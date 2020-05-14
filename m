Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3951A1D27D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 08:29:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V7iwW73vQPo/j7LinNtzgr/WHYFf/tU6MrQQOtjnIs8=; b=E9V8GmxSYZAWCk
	dwpDxahCSmwlNjjJxOOJv5di0wTtvQxVDLT6urbpvPwpNdqWultnxVnVKflcUNyAYlRZ2LVsjBveX
	eeYzK1tDWy6BcgmBMV8N8Z/Lg7GHX2QJfyN5spGQ9C8gLeqPbaEgyRiXCvisBW07TfNLZh50UxWsA
	ox0Pdiw+dt0emu2eJQNAm0e6nPhZGVlQvPBkcETa+VzNm9B/ZXhdRG3UEjEW06W/RB2zng/9nU9E6
	xrR2iV+L/op63PweF3xRhaXn0/jeS3KHOiAYrARsoutMKSD0Z3EmC5TKt8rQ4VcvcnDgzo7iVT1Tq
	pYt5urlnaNVAvQjl0qDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ7Mg-00028I-Kv; Thu, 14 May 2020 06:29:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ7MX-00027q-Jf
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 06:28:58 +0000
Received: from localhost.localdomain (unknown [122.182.193.86])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5DDC2206B6;
 Thu, 14 May 2020 06:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589437736;
 bh=lUAkt5vJrfMpmMe8Jkqe96oDcybwBYVt4NwetVO5JMg=;
 h=From:To:Cc:Subject:Date:From;
 b=LVOE+Q9kRqSXL+zg+mFOQWp0z1vhkEjTU3aiJJRAlJNkxvWsxcaOLvltVzJf+GN1M
 7quwf51+Y+6tUMPit972YNYW7NVoTnlQEL6sMdyszSJe6wBDLDLvlF7TJ6sHnHTlyq
 y+ZS+BEosD8Ow5FNXjZenaPm150g5T/sMoGHUT+4=
From: Vinod Koul <vkoul@kernel.org>
To: "David S. Miller" <davem@davemloft.net>
Subject: [PATCH] net: stmmac: fix num_por initialization
Date: Thu, 14 May 2020 11:58:36 +0530
Message-Id: <20200514062836.190194-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_232857_668333_0733A2C7 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rahul Ankushrao Kawadgave <rahulak@qti.qualcomm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Driver missed initializing num_por which is por values that driver
configures to hardware. In order to get this values, add a new structure
ethqos_emac_driver_data which holds por and num_por values and populate
that in driver probe.

Fixes: a7c30e62d4b8 ("net: stmmac: Add driver for Qualcomm ethqos")
Reported-by: Rahul Ankushrao Kawadgave <rahulak@qti.qualcomm.com>
Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index e0a5fe83d8e0..bfc4a92f1d92 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -75,6 +75,11 @@ struct ethqos_emac_por {
 	unsigned int value;
 };
 
+struct ethqos_emac_driver_data {
+	const struct ethqos_emac_por *por;
+	unsigned int num_por;
+};
+
 struct qcom_ethqos {
 	struct platform_device *pdev;
 	void __iomem *rgmii_base;
@@ -171,6 +176,11 @@ static const struct ethqos_emac_por emac_v2_3_0_por[] = {
 	{ .offset = RGMII_IO_MACRO_CONFIG2,	.value = 0x00002060 },
 };
 
+static const struct ethqos_emac_driver_data emac_v2_3_0_data = {
+	.por = emac_v2_3_0_por,
+	.num_por = ARRAY_SIZE(emac_v2_3_0_por),
+};
+
 static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 {
 	unsigned int val;
@@ -442,6 +452,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	struct device_node *np = pdev->dev.of_node;
 	struct plat_stmmacenet_data *plat_dat;
 	struct stmmac_resources stmmac_res;
+	const struct ethqos_emac_driver_data *data;
 	struct qcom_ethqos *ethqos;
 	struct resource *res;
 	int ret;
@@ -471,7 +482,9 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 		goto err_mem;
 	}
 
-	ethqos->por = of_device_get_match_data(&pdev->dev);
+	data = of_device_get_match_data(&pdev->dev);
+	ethqos->por = data->por;
+	ethqos->num_por = data->num_por;
 
 	ethqos->rgmii_clk = devm_clk_get(&pdev->dev, "rgmii");
 	if (IS_ERR(ethqos->rgmii_clk)) {
@@ -526,7 +539,7 @@ static int qcom_ethqos_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id qcom_ethqos_match[] = {
-	{ .compatible = "qcom,qcs404-ethqos", .data = &emac_v2_3_0_por},
+	{ .compatible = "qcom,qcs404-ethqos", .data = &emac_v2_3_0_data},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_ethqos_match);
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
