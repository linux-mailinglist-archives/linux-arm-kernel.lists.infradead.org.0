Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4904817A6BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 14:50:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Eiehg2WW9dk08QupDkShAsNVKlZ62+0lA7gpXhky61Q=; b=g1eOwd1WEz17Af
	OffUQxIasL1o5hoYf1h1cjJxKfDNbpj6Es8w2rGzU/Jy70uPGFlC/i0AFGYOhR6NmFHGITwMoHrst
	j9/Ad2DQXk2ZI9hLBt/V21Y9yk+dT3vd9encqbMUTHAsMRTCxsUGjPq4l9GHWAcNA6WP/A8VKW9zN
	jLx2JB7BkvOgiD452gMLiroeKW0mJWh0sTbIzcyKsOAFOLKZ8t9hmbedR1kxAGKV3WyeGy5C6V7HQ
	L9rkUdUl/rvZ4rflR5gPAcahR030bzfsgvQWPOdv+j6LPOYF8kxlQAlSoC1kGtsQzUf9A9NDadp8Q
	ZmX1l8fk8GAyTnaQ7n2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9qsw-0000FI-1M; Thu, 05 Mar 2020 13:49:58 +0000
Received: from mail-db8eur05on2138.outbound.protection.outlook.com
 ([40.107.20.138] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9qsp-0000EC-2Q
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 13:49:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=feS2qpXya8n9Pe7pOybAII4I8gLB3D97eHcsvcw+Lj70sJpCuwiSSGJBtQ6TdX66OmVZ+MdOuk5ZCJaFYP3ct0AHG7aTqaVnILILOFw7UuljyU5moGDAWDth3GlmJAqc9YUPDebY8g2X4tLouVrN1bdxvor2EJjdrkIqTvABwK8dUwmLfnSpOdpaaCxxbr6lgXC+5lXoAugNSoBJ7mbecZpiOvEKUcArptNA/KUFO0YfpcA9gwKRalsQVRJ1BM7tsgdFCaCgYgNhu7MFGe1HVEkbymhuIfWO0gBVaDcwGkBakug7NS8T4PdXT2m0ljQ7LewKgPu7zamqOXKoa52ghQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qJEMiP3awu4DmT/LEm3wuxisEf3MLT3TN03jKeXyYgQ=;
 b=lREIVuGZDc5goe2TdrcvokmU+lwCj6oYv7W8j3whRp/TBO72QYBcswd+O/SyjJH3vFkMW6d2V/2HVQHODAv9wP+36ETQGQ/bllIjBLEVMzHEn9YELwyFHUtAbW41vxBw4vCk24rZ74PIQzdltJJA4m5ntOLVlQ2N1UOKRFWfiR+gGzEqsoo6oeMyyUp0rxtjAFauT0TDt/SEuvCEUJ6/EjqYqPoNUJsnVQTUH9Y5M7aeo4Dr6TtbgEYjFZ94Gug6sTBDC2tHI+HwvTC0dft5gqGnWqfOIC8Hyc9RcK869FZde9WKr51klpnIUyMs8VDJkT0HQQBSuT5ec+96MzqIAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qJEMiP3awu4DmT/LEm3wuxisEf3MLT3TN03jKeXyYgQ=;
 b=QcI2FXdlPBn3hyzZ9qpxUBklPoL0/1DhJ7H5/BIW8loIalpXnJCMWzbJSbU6rsZz6lEFiSsJjGh/Vpb+UsG2HSesCf6jyMcJxfnetrUjaUjwPyrWGUBvQ7s/O17IRQkC5YxjB/51G8uoGy6Lv/SxSPy0deajW5M5LgMm69LY40M=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com (20.179.1.217) by
 AM6PR05MB5569.eurprd05.prod.outlook.com (20.177.119.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Thu, 5 Mar 2020 13:49:44 +0000
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::dee:ffa2:1d09:30e]) by AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::dee:ffa2:1d09:30e%4]) with mapi id 15.20.2772.019; Thu, 5 Mar 2020
 13:49:43 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
Date: Thu,  5 Mar 2020 14:49:28 +0100
Message-Id: <20200305134928.19775-1-philippe.schenker@toradex.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: PR2PR09CA0014.eurprd09.prod.outlook.com
 (2603:10a6:101:16::26) To AM6PR05MB6120.eurprd05.prod.outlook.com
 (2603:10a6:20b:a8::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from philippe-pc.toradex.int (31.10.206.124) by
 PR2PR09CA0014.eurprd09.prod.outlook.com (2603:10a6:101:16::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18 via Frontend Transport; Thu, 5 Mar 2020 13:49:43 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [31.10.206.124]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9d4e8cd1-94be-42a0-aba0-08d7c10c0f54
X-MS-TrafficTypeDiagnostic: AM6PR05MB5569:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR05MB55699F71D197820F7C97B03AF4E20@AM6PR05MB5569.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 03333C607F
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(396003)(39850400004)(366004)(136003)(189003)(199004)(6512007)(66946007)(1076003)(8676002)(8936002)(66476007)(5660300002)(4326008)(66556008)(316002)(86362001)(6506007)(16526019)(110136005)(54906003)(44832011)(26005)(956004)(7416002)(6486002)(81166006)(6666004)(2906002)(2616005)(81156014)(478600001)(36756003)(186003)(52116002)(16060500001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR05MB5569;
 H:AM6PR05MB6120.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y4GJyYtrBHV1Se3ykurNeZkMp31FU7l3msNHj6qsQ/LYWHgMwBDp0cVOuz3+irYJgiud5q/0RMPbZXwF8sQ3U+GL4xqOUT2iFxCwm668L6Mb2QlcGNa3X1b4kNu+mWrsQdYQk/SP0RF2lei4OVyMY8wIyjjyO8wSnOXS/obBG5clsASoWzb26zsDnzt0UlyNWSqfWh0p5yruPwTnxXVWrUgBE58n5y8Qk+feA0D1zsheVmO52Vd7xxZUSsJ2kpuKY8w73tTNi0zbCtIRi62lf5VMbyZzQ45sXqPoAGBIErYjAW2zK+XnafjXEFVTF49CrBqHWvjLA3DHycHQ8Lqakg2TSSt/yIzknfAgD9Gi70lzmjJcsprsF1VIaxxMheXe2EmFDzoWcIiL0uW0atq6dvFS4g2+GMmH/782y4F+YHL63ob2en29lGRZ/ywKvtx+SAeBlnFPr7YALgQA/T7d/Th30fYnDHUitKMujensLJCFLPkS+9d39aMX/2QHq2Ia
X-MS-Exchange-AntiSpam-MessageData: 3794z509fEL4sYzFOaEEr+Aea19RoFaYPF8/F31p7ZT9al3ODDqhlZ1QS6oAx69zxnPQfaObUezhX7eKLqIDiws4Voc/xfTOL8raKAqBzlPxrF7eRvugiWtemd0pCbJUkA0Bz/OMXFkZACn5ogi60g==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d4e8cd1-94be-42a0-aba0-08d7c10c0f54
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2020 13:49:43.8809 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TtHkd1/DxSlZ5DG82Iu4IL3CgfwmLk5tPGErdICS/3Gky98xBwuooGXuZknBfHoIxiqq43v+Mv5996uiGjcGGTH/CqIbEoInAm9dBhHMj6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB5569
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_054951_207647_FD406053 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.138 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MAC of the i.MX6 SoC is compliant with RGMII v1.3. The KSZ9131 PHY
is like KSZ9031 adhering to RGMII v2.0 specification. This means the
MAC should provide a delay to the TXC line. Because the i.MX6 MAC does
not provide this delay this has to be done in the PHY.

This patch adds by default ~1.6ns delay to the TXC line. This should
be good for all boards that have the RGMII signals routed with the
same length.

The KSZ9131 has relatively high tolerances on skew registers from
MMD 2.4 to MMD 2.8. Therefore the new DLL-based delay of 2ns is used
and then as little as possibly subtracted from that so we get more
accurate delay. This is actually needed because the i.MX6 SoC has
an asynchron skew on TXC from -100ps to 900ps, to get all RGMII
values within spec.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

---

 arch/arm/mach-imx/mach-imx6q.c | 37 ++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm/mach-imx/mach-imx6q.c b/arch/arm/mach-imx/mach-imx6q.c
index edd26e0ffeec..8ae5f2fa33e2 100644
--- a/arch/arm/mach-imx/mach-imx6q.c
+++ b/arch/arm/mach-imx/mach-imx6q.c
@@ -61,6 +61,14 @@ static void mmd_write_reg(struct phy_device *dev, int device, int reg, int val)
 	phy_write(dev, 0x0e, val);
 }
 
+static int mmd_read_reg(struct phy_device *dev, int device, int reg)
+{
+	phy_write(dev, 0x0d, device);
+	phy_write(dev, 0x0e, reg);
+	phy_write(dev, 0x0d, (1 << 14) | device);
+	return phy_read(dev, 0x0e);
+}
+
 static int ksz9031rn_phy_fixup(struct phy_device *dev)
 {
 	/*
@@ -74,6 +82,33 @@ static int ksz9031rn_phy_fixup(struct phy_device *dev)
 	return 0;
 }
 
+#define KSZ9131_RXTXDLL_BYPASS	12
+
+static int ksz9131rn_phy_fixup(struct phy_device *dev)
+{
+	int tmp;
+
+	tmp = mmd_read_reg(dev, 2, 0x4c);
+	/* disable rxdll bypass (enable 2ns skew delay on RXC) */
+	tmp &= ~(1 << KSZ9131_RXTXDLL_BYPASS);
+	mmd_write_reg(dev, 2, 0x4c, tmp);
+
+	tmp = mmd_read_reg(dev, 2, 0x4d);
+	/* disable txdll bypass (enable 2ns skew delay on TXC) */
+	tmp &= ~(1 << KSZ9131_RXTXDLL_BYPASS);
+	mmd_write_reg(dev, 2, 0x4d, tmp);
+
+	/*
+	 * Subtract ~0.6ns from txdll = ~1.4ns delay.
+	 * leave RXC path untouched
+	 */
+	mmd_write_reg(dev, 2, 4, 0x007d);
+	mmd_write_reg(dev, 2, 6, 0xdddd);
+	mmd_write_reg(dev, 2, 8, 0x0007);
+
+	return 0;
+}
+
 /*
  * fixup for PLX PEX8909 bridge to configure GPIO1-7 as output High
  * as they are used for slots1-7 PERST#
@@ -167,6 +202,8 @@ static void __init imx6q_enet_phy_init(void)
 				ksz9021rn_phy_fixup);
 		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
 				ksz9031rn_phy_fixup);
+		phy_register_fixup_for_uid(PHY_ID_KSZ9131, MICREL_PHY_ID_MASK,
+				ksz9131rn_phy_fixup);
 		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffef,
 				ar8031_phy_fixup);
 		phy_register_fixup_for_uid(PHY_ID_AR8035, 0xffffffef,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
