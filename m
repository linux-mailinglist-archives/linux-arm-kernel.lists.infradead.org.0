Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0338C17EF51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 04:33:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DbH8t6XFv0tK6iN94f9qx7enXyVC7qFbnkIZR/rI224=; b=UY9Lodpx6gi5w6
	sMfTcbUbcV0wx/Fy1HdKxSAOgcFTgaUXnMGdwZNXwQzI12VGzEELM/6MgUW3a3ami+IlwV7DDxqdy
	kS2mjQetZjhl/j/E5UcrujcalFp8ttrUiMIVwwifzIBb1Vx84VmhqtG4hEAj/wy6rcYurlZr6boMS
	0VFLMKNgvah4CuN2G4jpsIBDmcGGwr+X3kSRqOM8yRAEVD8ex1Evz2At5UfGrQ4LKuvNouu4TPqVI
	QBHgNk5jsfWPlH0t33Wf295xAOPCOEqrzYzqiNCvgcXAVN25R+lUwAHxwCFqS69QgxI2/kLitucm1
	CSsQANFpk82nhGL4awOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBVdw-0004EK-13; Tue, 10 Mar 2020 03:33:20 +0000
Received: from mail-vi1eur04on061a.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::61a]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBVbz-0001WK-Ef
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 03:31:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cKuwcbfdkLvb+DrSSPEYbIJIDJ+oCPFk5RmrkmtBoicvI8kI6w2MyDMz32af6HdYQtVLxEgYKDZJIFbrYp3X+kIHe2/PRzipiCbsCn4cPgB4mOeVNmQkDu534pCOpx2Ij6UvYJaUeyQSuxEV4OAacgDvSt/Gqzfbt+NRXzh2w3BxkQuvsIfDHKnNl9JxDS0HXsPJfxk31MLKpbu2NVyhZsk9Fxf3znT88PhsbjGgrxEIQuaTfa9eGvKENpMcdUOjTsqU9oUPNb9zwNX1kRRkiWdFTXVCVaEoabwwwmwNIQa1Ub8A4SBq3iNDQjpKGjhVoPNmPB8rg0yFbyCfIuV2Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fr+Vq0ok/0nWx2aQFY3cQr+W/uqPqS6dcv3qIY2SH9k=;
 b=idwiZiaDdTI2mOPJIRJquOCX3Vp0T0ahByJuQkusl21WjoLGZmlv9WfR3Fdp3dn2omG85tBXARomjcYZ+YjD875KocaQdb40laKpSjP507JGgWTNv+VKUUkr0oucVEfWXxbtqOddBYRn8SUDXfdyNjtwCAk/0CnBSl8Lop2qH91uBD3mUFy6jDrIWgjVhMe+F4H3hgyK/Dhw082KplBOgfKr7z0sX4iIVzC2RrOdICo/eRA3OBIj2GgKl9emSU5NHVjPaeu5WG61CGHRTuViLcOvLwJZQWyiLSM1qad1X12rOFKRvQTEggw2Ys19bvVKKrP3/p6xDnsmLkGWXN4JjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fr+Vq0ok/0nWx2aQFY3cQr+W/uqPqS6dcv3qIY2SH9k=;
 b=Njsfu6pbsnT5vVcnQE92xiqj4+un9t4dXwhoHo/tlDgORK9T0eBhlsk52ZkSZE8svWH8vBKLITQQT6YQHuQb+zm07LbaUkM50MRfQSgGthua2eDbhTLz/+EHEioTBkeQbpc+joLRAq3Dg2aXWCCDWvJU8V/T8YgW216neMee67o=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6621.eurprd04.prod.outlook.com (20.179.234.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Tue, 10 Mar 2020 03:31:16 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 03:31:16 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [RESEND v6  07/13] spi: imx: remove ERR009165 workaround on i.mx6ul
Date: Tue, 10 Mar 2020 19:31:56 +0800
Message-Id: <1583839922-22699-8-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
References: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR06CA0241.apcprd06.prod.outlook.com
 (2603:1096:4:ac::25) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0241.apcprd06.prod.outlook.com (2603:1096:4:ac::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2793.15 via Frontend Transport; Tue, 10 Mar 2020 03:31:11 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 857467ca-7668-4358-b610-08d7c4a37dbe
X-MS-TrafficTypeDiagnostic: VE1PR04MB6621:|VE1PR04MB6621:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB662178EDE7B68157E01A3EF489FF0@VE1PR04MB6621.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 033857D0BD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(366004)(376002)(396003)(199004)(189003)(4326008)(8936002)(6666004)(8676002)(81156014)(81166006)(2906002)(5660300002)(2616005)(7416002)(36756003)(66556008)(66946007)(6506007)(52116002)(316002)(956004)(966005)(26005)(478600001)(16526019)(186003)(66476007)(86362001)(6486002)(6512007)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6621;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9hnAdx6pWdNgAX3xN1ESzll3LPMlzdsaEwdRSMlR6gJxdegVfDE17U67WcZsnm3dSW5cLJzUSF3cQKX0CaAvqwD/1KGo5ZB/FzWzoqxBNjgpJOZH98HrMIxQbTznTcOD5VgW2erdhvYDVgIzCZTX07QIe399toxE8YVzoNaqBokOM3nToPJRvOsHqJic2eakTpuZefF3lLZqwUEozHSSkzszZPE9UqEEaE3CNVptPgH8WXTiASZ0AbQCIky3xpleFILdkhH8wUnQlGn+PemRVM4dONrw6yQTiRoYdn4I3zW13QhxA4qJmcsdIj/yYoa2wG3t+PhmolwzVzBYpT6kc8S1YZlts8SLOdrrFdDj9yNmoTL4rc+Qn1/y+eRt7m2AaDFbesQdGtwehBJLd1tkhXvSGFc9BS0r5a4AUJMOsfWF1L+izjTQnSJyNHjzGWZCmHAVpUL/DXCrM79lCm16YTXDcjqmqqjXjvwzjfe78FMbQSsRSoXXvJvcjHdXi6F4XHyDj2ksPMTyNnl56FqVUHiXqRRXwqKMO3Uta3lohG7qWDeYdWhyNFkICuYz3cebiBEClg/UWeZ9Ke9Tkn4G5Q==
X-MS-Exchange-AntiSpam-MessageData: ngaT9G69ReTFTij/yjFqrSlzMhiIRRSUSmSrzRT47CUh1e9+/qfgNJqIQNfPgPhfdylnF/FLy+B+oqPI/RZc018ivmC3BU0yfBeZDcQIxYr+Hd2cHhdDZkJIPga6djpA68H/pPxa9UQSKpoJA/KbEQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 857467ca-7668-4358-b610-08d7c4a37dbe
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2020 03:31:16.7916 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uZpmTaKWSp/sV2TElvJJ7vQbDdcmv6hfzkuKQ0OQU1avRo713ZoyQq+WTh4iuvYRSYpCeqs3WG8pS86eLbZG4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6621
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_203119_558398_D6095D51 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:61a listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ERR009165 fixed on i.mx6ul/6ull/6sll. All other i.mx6/7 and
i.mx8m/8mm still need this errata. Please refer to nxp official
errata document from https://www.nxp.com/ .

For removing workaround on those chips. Add new i.mx6ul type.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-imx.c | 50 +++++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 45 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi-imx.c b/drivers/spi/spi-imx.c
index 842a86e..f7ee2ec 100644
--- a/drivers/spi/spi-imx.c
+++ b/drivers/spi/spi-imx.c
@@ -57,6 +57,7 @@ enum spi_imx_devtype {
 	IMX35_CSPI,	/* CSPI on all i.mx except above */
 	IMX51_ECSPI,	/* ECSPI on i.mx51 */
 	IMX53_ECSPI,	/* ECSPI on i.mx53 and later */
+	IMX6UL_ECSPI,	/* ERR009165 fix from i.mx6ul */
 };
 
 struct spi_imx_data;
@@ -75,6 +76,11 @@ struct spi_imx_devtype_data {
 	bool has_slavemode;
 	unsigned int fifo_size;
 	bool dynamic_burst;
+	/*
+	 * ERR009165 fixed or not:
+	 * https://www.nxp.com/docs/en/errata/IMX6DQCE.pdf
+	 */
+	bool tx_glitch_fixed;
 	enum spi_imx_devtype devtype;
 };
 
@@ -128,7 +134,8 @@ static inline int is_imx35_cspi(struct spi_imx_data *d)
 
 static inline int is_imx51_ecspi(struct spi_imx_data *d)
 {
-	return d->devtype_data->devtype == IMX51_ECSPI;
+	return d->devtype_data->devtype == IMX51_ECSPI ||
+	       d->devtype_data->devtype == IMX6UL_ECSPI;
 }
 
 static inline int is_imx53_ecspi(struct spi_imx_data *d)
@@ -585,9 +592,16 @@ static int mx51_ecspi_prepare_transfer(struct spi_imx_data *spi_imx,
 	ctrl |= mx51_ecspi_clkdiv(spi_imx, t->speed_hz, &clk);
 	spi_imx->spi_bus_clk = clk;
 
-	/* ERR009165: work in XHC mode as PIO */
-	if (spi_imx->usedma)
-		ctrl &= ~MX51_ECSPI_CTRL_SMC;
+	/*
+	 * ERR009165: work in XHC mode instead of SMC as PIO on the chips
+	 * before i.mx6ul.
+	 */
+	if (spi_imx->usedma) {
+		if (spi_imx->devtype_data->tx_glitch_fixed)
+			ctrl |= MX51_ECSPI_CTRL_SMC;
+		else
+			ctrl &= ~MX51_ECSPI_CTRL_SMC;
+	}
 
 	writel(ctrl, spi_imx->base + MX51_ECSPI_CTRL);
 
@@ -615,6 +629,8 @@ static void mx51_setup_wml(struct spi_imx_data *spi_imx)
 {
 	u32 tx_wml = 0;
 
+	if (spi_imx->devtype_data->tx_glitch_fixed)
+		tx_wml = spi_imx->wml;
 	/*
 	 * Configure the DMA register: setup the watermark
 	 * and enable DMA request.
@@ -1012,6 +1028,23 @@ static struct spi_imx_devtype_data imx53_ecspi_devtype_data = {
 	.devtype = IMX53_ECSPI,
 };
 
+static struct spi_imx_devtype_data imx6ul_ecspi_devtype_data = {
+	.intctrl = mx51_ecspi_intctrl,
+	.prepare_message = mx51_ecspi_prepare_message,
+	.prepare_transfer = mx51_ecspi_prepare_transfer,
+	.trigger = mx51_ecspi_trigger,
+	.rx_available = mx51_ecspi_rx_available,
+	.reset = mx51_ecspi_reset,
+	.setup_wml = mx51_setup_wml,
+	.fifo_size = 64,
+	.has_dmamode = true,
+	.dynamic_burst = true,
+	.has_slavemode = true,
+	.tx_glitch_fixed = true,
+	.disable = mx51_ecspi_disable,
+	.devtype = IMX6UL_ECSPI,
+};
+
 static const struct platform_device_id spi_imx_devtype[] = {
 	{
 		.name = "imx1-cspi",
@@ -1035,6 +1068,9 @@ static const struct platform_device_id spi_imx_devtype[] = {
 		.name = "imx53-ecspi",
 		.driver_data = (kernel_ulong_t) &imx53_ecspi_devtype_data,
 	}, {
+		.name = "imx6ul-ecspi",
+		.driver_data = (kernel_ulong_t) &imx6ul_ecspi_devtype_data,
+	}, {
 		/* sentinel */
 	}
 };
@@ -1047,6 +1083,7 @@ static const struct of_device_id spi_imx_dt_ids[] = {
 	{ .compatible = "fsl,imx35-cspi", .data = &imx35_cspi_devtype_data, },
 	{ .compatible = "fsl,imx51-ecspi", .data = &imx51_ecspi_devtype_data, },
 	{ .compatible = "fsl,imx53-ecspi", .data = &imx53_ecspi_devtype_data, },
+	{ .compatible = "fsl,imx6ul-ecspi", .data = &imx6ul_ecspi_devtype_data, },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, spi_imx_dt_ids);
@@ -1178,7 +1215,10 @@ static int spi_imx_dma_configure(struct spi_master *master)
 	 * For ERR009165 with tx_wml = 0 could enlarge burst size to fifo size
 	 * to speed up fifo filling as possible.
 	 */
-	tx.dst_maxburst = spi_imx->devtype_data->fifo_size;
+	if (spi_imx->devtype_data->tx_glitch_fixed)
+		tx.dst_maxburst = spi_imx->wml;
+	else
+		tx.dst_maxburst = spi_imx->devtype_data->fifo_size;
 	ret = dmaengine_slave_config(master->dma_tx, &tx);
 	if (ret) {
 		dev_err(spi_imx->dev, "TX dma configuration failed with %d\n", ret);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
