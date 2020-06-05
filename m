Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F164A1EF95C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:36:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/Ppc7aaBgXFB3zOL9ZLWls9ClNf0Zxa1BwEPB8wdOs=; b=dQkclfEPMdbZAN
	1OvTqHwYCD0V6utPPXivW2VggAnQ2s1uRT+4BzFibdGCNGUaNQOWzV5Te0gP45DXvznrtVVQAVs4o
	jt+5EoSko2LKCy7eqNJrg3mVOOA+2FdLNkR7OQmJDWrtep3onkaVdxQTcixjjHlHgRTvQvDTPXW1M
	jgNZYuZP/gyqXtWDTYfvtDWQH+/7rEHd2mt0o84o4kCD4hMjr/Vc1Oy+41+CxxazL/KCRgLpbHbT7
	u26midpDyq8361vzEiCYWq0RmCvjxwZPsxU2fHNR9zqC/Iqd0F4kC1Vcvz3L1qgUsERkR6O5H/DUi
	Skz4mPajXL4954NM2feQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCVl-00005Y-U8; Fri, 05 Jun 2020 13:35:54 +0000
Received: from mail-db8eur05on2078.outbound.protection.outlook.com
 ([40.107.20.78] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCU0-0004w5-Nj
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:34:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f9lZWfZxJ2/XVLwyfyTomm6E7PRmaGaNADsPHRrAU48T/Y1c9X/fSb8wREbluRnf3FqdML/cKEBSMu6upQZaJaFPJVH/Q2D9gcD/9la2m85RYhSypEsQI6cCBXzbou1Ufdd5PCXuEHKhOWI0trLhpzSj7nzsMEdgqXDClRc8oF4bEQP1NiqQq75Jo+D+Ra/374X+YmDcmhvmZncr7yLeB20uQCwuvcb6tWMaQ3be+ySrwQvzGWZA8MGB0PKgHE7e9mvSN7G3OSTIzXPXQiW4ilu5as3EI+CS2ZGC7p+DIeWbhJs/MrLuzHaYaOeDSlk3BLr6J2MbHlGb4xwj8PiEhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M/ck4AeCjwv1t+XcVanhhgxvuofHKawX2tqytLZ7Mxg=;
 b=Iv0snFVJREnr1gk02Exxno2DFiVdHkdz3ds94PPnN4gv4v4qBCcUDULHqdBlIcnMXid9eKSvYlqq54mG8RJgt0lVZVPSUcTVtxq7FB2JtUSRJFJrIwk124rWPIVVPpyKvvaN4kXlsOhKH3+8dHC9pFn8znAPDSr7+QsudK58lX/rrUGeXRfTu/bDq7UK/Sbfvf1B3FA/7u2Kl4BM59oykzv7Sl6uE7YSqyX6/l5JA761hhZXEzFvRZVwicHpM4n2cfvpkBZ6C9EqGj3GeMdt0mRKnfXafW8Y5jIbnBhId9J087bujRX3dl25H73l4cu268/PgbxD76M6SPIgnKpd3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M/ck4AeCjwv1t+XcVanhhgxvuofHKawX2tqytLZ7Mxg=;
 b=eYLh1GfHovD4TSmmQiutschCRfXGqCWYqvv42YTQVzX609pbDRDvWMxVZBx7qWAkxXNHKVoWW7XDcjLNy6kiEqbQrQg+p8aMA54ZoSCg0lzSXLvc15OcWcbkrHdKFWNT+FwXjjYygoVpDFeY7ku5cyvXo73oQz2Dlk2MXi/jwWw=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6702.eurprd04.prod.outlook.com (2603:10a6:803:123::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Fri, 5 Jun
 2020 13:33:00 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.019; Fri, 5 Jun 2020
 13:33:00 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v9 06/14] spi: imx: add dma_sync_sg_for_device after fallback
 from dma
Date: Sat,  6 Jun 2020 05:32:27 +0800
Message-Id: <1591392755-19136-7-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591392755-19136-1-git-send-email-yibin.gong@nxp.com>
References: <1591392755-19136-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR02CA0048.apcprd02.prod.outlook.com
 (2603:1096:3:18::36) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR02CA0048.apcprd02.prod.outlook.com (2603:1096:3:18::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.20 via Frontend Transport; Fri, 5 Jun 2020 13:32:54 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ef92f22b-cb60-418a-ec2a-08d80954f71f
X-MS-TrafficTypeDiagnostic: VE1PR04MB6702:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB67026E0815F502FE1EBD54A589860@VE1PR04MB6702.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0425A67DEF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z/7KydArBbKRDJmPebLnAqWRm0aKCED73I/8TUjY9Cv8zhcjNkeTSs5iruOV4zDJSdps2FJO1TRgRazrxVHZo5V4Nuwgw1kZdHiTA4JcLO1SB0seyZZxLwJuc/kE6+wW4QYpNtZP59ROKYyWwqLAAFT7SJjYOY49gARJw0O5MjupPkrB1Z7TCq818cWF5l/9lEaBEWd4rmUaSXDfaCHmddf0ZW+Zy58QwjSrDNBnK0rxuHvbEBKQD+t8bc5V1yekaazMJ8PLs9hSLkOlKdbuSAaoHs/7cyYgKzOTdi/4gky9bY7x7dxZ405v5UAguLTyiSXyySmpo+Y0nOvQgmq9WLMZRV4g8jx/NRE3Ykj2zAOmpEmyYb3oyMO3qpYp2hl7jl4Q02iYTOUCTDSdpJw5+MjsNtoA1as70hQbEs2p0PC0M4p+MjxOw/rEr4JPk4B5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(396003)(136003)(366004)(6486002)(52116002)(2906002)(316002)(4326008)(6506007)(966005)(5660300002)(26005)(66946007)(2616005)(956004)(478600001)(66556008)(186003)(8676002)(16526019)(7416002)(6512007)(6666004)(36756003)(8936002)(83380400001)(86362001)(66476007)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: Hh6PGbtUz2rL+Ln3aj2ndN+rzl8fBl9pPtiCkH70bOfoDxXAvdL0MxW2oX/6wUHL9QY34xRlumSf1a1ucjS/SRS+lWeOZRCSSorQMNRPB/r6nZ4DuVJXWFMLqCPcgHA9vavXM/XQpE5FwT2KczHlxXTUWqDl/uqeDtpObdhM3oPX5zpLGr6cbrKoe31Hf8d3yXcFP87aIMhhUpKVseGTV+Ov89zRXa2/7W7GnWgJhb0GAoIcMxcl5TQcHJwa18wRcVndidhUFt3waMkKYyd0LrrnIlYRUUv2Tmda4jvH9I0Y5c6StUQGouG3i0g+UzbWg9S/O7p0rhcMm/YRocqIfQ+BALrAglu1bSYAgSFi0MWO2LNQt3sLD/s/z+XnvR6+31jsCA8GyNtX1l3bkS4HiYpWny7eO2S71flcnqPltcNgIlXsiQ+XYzGCKPYeyQ43RT3cJ0ZmE+UpQSaT3zznSWt6Nb13bf/hUr5HXFk5zZQ=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef92f22b-cb60-418a-ec2a-08d80954f71f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2020 13:33:00.3191 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JJNnO7AWZxSbkmOoPB8LtIWpdssbbHnD6IJ9kl0Ay4k6HdvSZ0dPr3EzeYnHvT4ZRSSFq6xIdWy6+NZYGuNeqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_063404_822768_A03F4387 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.78 listed in wl.mailspike.net]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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

In case dma transfer failed and fallback to pio, tx_buf/rx_buf need to be
taken care cache since they have already been maintained by spi.c

Fixes: bcd8e7761ec9("spi: imx: fallback to PIO if dma setup failure")
Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Reported-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Link: https://lore.kernel.org/linux-arm-kernel/5d246dd81607bb6e5cb9af86ad4e53f7a7a99c50.camel@ew.tq-group.com/

---
 drivers/spi/spi-imx.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/spi/spi-imx.c b/drivers/spi/spi-imx.c
index b7a85e3..c51cd3a 100644
--- a/drivers/spi/spi-imx.c
+++ b/drivers/spi/spi-imx.c
@@ -1456,6 +1456,13 @@ static int spi_imx_pio_transfer(struct spi_device *spi,
 		return -ETIMEDOUT;
 	}
 
+	if (transfer->rx_sg.sgl) {
+		struct device *rx_dev = spi->controller->dma_rx->device->dev;
+
+		dma_sync_sg_for_device(rx_dev, transfer->rx_sg.sgl,
+				       transfer->rx_sg.nents, DMA_TO_DEVICE);
+	}
+
 	return transfer->len;
 }
 
@@ -1521,10 +1528,15 @@ static int spi_imx_transfer(struct spi_device *spi,
 	 * firmware may not be updated as ERR009165 required.
 	 */
 	if (spi_imx->usedma) {
+		struct device *tx_dev = spi->controller->dma_tx->device->dev;
+
 		ret = spi_imx_dma_transfer(spi_imx, transfer);
 		if (ret != -EINVAL)
 			return ret;
 
+		dma_sync_sg_for_cpu(tx_dev, transfer->tx_sg.sgl,
+				    transfer->tx_sg.nents, DMA_FROM_DEVICE);
+
 		spi_imx->devtype_data->disable_dma(spi_imx);
 
 		spi_imx->usedma = false;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
