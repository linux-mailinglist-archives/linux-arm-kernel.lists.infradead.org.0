Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 283FDBFD28
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 04:24:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lq8SW6yFNpvlf2GWsNFbn7EwgMqGT11RwC4JB3jHM30=; b=ojdvrvTNMgLHrc
	1Su04kAAzA8Ocq8dPcWr5/Ty6QRa6XjmrsHPuZmeH855ozv/oCaPFYpJEBeVdOacz+tUMXR/kTGx4
	EKnhNhHC8uhEznzZ2ufQj4eGWkXdNV1QnOAwSNuFGUqKAe6JYBxP9rEf6kyWDPODPl3GGAz25dJm0
	+Dt3/4p5rN1/L2kYvQfxwoEhnqTl2aPfcoPxUmokCJzTdx8bAiG53r8+EqHIKIFdBhOdvU/lNHQ5j
	nUyqpNXa/uT0+sn2GB/rOWYDyikh4l2FL+4HGsuF9//sZbl42mGkn/8n1OnMbiI1K3jfjanOr4j25
	ZIt2cytJ95flxc/q8x8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDfvG-0003Jf-SR; Fri, 27 Sep 2019 02:23:54 +0000
Received: from mail-eopbgr130088.outbound.protection.outlook.com
 ([40.107.13.88] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDfv6-0003J4-6a
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 02:23:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FWTGtQm4fkZ0aCyUoo6YP/kBCU/Bwp0fT0p547oCWJzIaXqiYsenAWXQqX7n1hfFESU198eZGgJ/ZIGs8hCCYA2lySKND2ikM6wSOvn/DMaUISeq9VIGl3a9IIcXC926vVh2pE0VV8E00k1kDpq0KGEZrhAsSOYDixURzF5Bm6yHa9z0e9cMHMmBhQw0qaNMnX7w9Zl9ApHKxFRDXTD8uDmahEbhtZla2RyOZIt4X/+62YUqgg5HNFNTXjnmOE2EduyY3CsOMKCDeWWoMeFA+CNYlS76KOzsv3gqaNceDDhwqYZjOJexvzutz9hwdtFSBg//X7pbxs4ebWIL1Tzoew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lx05gsKG28o2amlhGhMrgN0keLE9klZMa40p9JDiAXY=;
 b=nHnNWOF1pCBNJ6QvW6hyP2edYqOm+GqeX4GGkY3aLgBSmi+fFrkZJANQKcRFDATKqGHFyK8OiQvazv58cd/Zm3FemlRPfjKIoUu/m79JU8Hqs8K0yXpeLRzQo5WkpFjUlhc4ceHBL9sUBajKRaGHSerdc5QlWnjHF98kURN4OKe8k0CB1zxOtIKquvHzkw4KgVbz2kroUV3ZuXDKj8gSRnzZ/DXwoY8LC6O2p9oYS78Z/wGZYWRu3Rj/hoZ7/f8Cvt6y6B2jH9lrNX5ewez5ESSJZDShcusqD+0IL+arbC4qJalbX0EjW+QIkeIqNFqMNZLV6GeangJOWL49sqFMRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lx05gsKG28o2amlhGhMrgN0keLE9klZMa40p9JDiAXY=;
 b=LN0WFAi7kYlHiGZYfhKpC9V7XJYpno6+VWo7cGW7NeiWUyjBv5kAra/ZrMlsV7VHfgThGgp/EnqnBlDspnoRWn50g8nhdyxxCkX/US7xxIi33JYqrFyqOno5JWFID0WDe1V+s5v8lAMEXeaKWfMxww62dBfgXPhcfCn9wqW3SJk=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB5338.eurprd04.prod.outlook.com (52.135.128.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Fri, 27 Sep 2019 02:23:41 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4427:96f2:f651:6dfa]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4427:96f2:f651:6dfa%5]) with mapi id 15.20.2284.023; Fri, 27 Sep 2019
 02:23:41 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: [PATCH V2 1/2] nvmem: imx: scu: support hole region check
Thread-Topic: [PATCH V2 1/2] nvmem: imx: scu: support hole region check
Thread-Index: AQHVdNqTeL3qiyvuR0mH+QIEq+72lw==
Date: Fri, 27 Sep 2019 02:23:41 +0000
Message-ID: <1569550913-10176-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0021.apcprd04.prod.outlook.com
 (2603:1096:202:2::31) To DB7PR04MB4490.eurprd04.prod.outlook.com
 (2603:10a6:5:36::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 12b17aef-c8ea-4f89-a52d-08d742f1b65d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB5338; 
x-ms-traffictypediagnostic: DB7PR04MB5338:|DB7PR04MB5338:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5338153CBDA7566958BE1E2288810@DB7PR04MB5338.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(39860400002)(136003)(396003)(346002)(43544003)(199004)(189003)(54906003)(6436002)(110136005)(6486002)(81166006)(81156014)(50226002)(8676002)(2501003)(64756008)(8936002)(2201001)(66446008)(186003)(66556008)(66476007)(6512007)(6506007)(52116002)(478600001)(386003)(99286004)(4326008)(6116002)(86362001)(26005)(102836004)(256004)(44832011)(7736002)(5660300002)(305945005)(36756003)(66946007)(3846002)(316002)(2616005)(14454004)(486006)(2906002)(66066001)(476003)(71190400001)(71200400001)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5338;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: i9tWJR9lbvzZ5SjzxhZL2wreggZ6xooxAYQ+mW5cx8YbTjEDe7B4ZkWDL4sfBA/LLSPD/UgPwtlQb6ilKpOe35+FYf74EZs7BwJbzr+xU/j7dkuuu0uJzOVOfFUszRNtTZeWU3hhFwY6b30gfUQQFMuoQVWZgzbVzxHePrU69DL69wmo/xLmmsJ4yTj9Ntu0gHXZE4QZiAd+hNwL5vfqciQRJoUbwN0ftR1Q/j4Bsm5oVf71BZtjb+trOO2jNu7fZtktWn8ZQgkWJigD/PlWv0BGOIo9foPMaPsHleGWWjD5crTWNgBoyBS+DgcXkELoeq4Lm/7YBuWOpTRs7ijFOU5sNoPSPRkWf7AtLo8GONqJCG54lcAztD64uRLTFwRfF14exu8GY15zaOpcCuLVZANcuvqxREb8OxzOb38cuAU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12b17aef-c8ea-4f89-a52d-08d742f1b65d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 02:23:41.1655 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XTKDOCU5zzGx2EkQF9dNTx4yB14/V/Yzp2l4Q6eLdCso9G+q8Z7Z6ueodJbX3GciSFudVmuAMlatLBG5nXlQBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5338
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_192344_417702_E6571DD9 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Introduce HOLE/ECC_REGION flag and in_hole helper to ease the check
of hole region. The ECC_REGION is also introduced here which is
preparing for programming support. ECC_REGION could only be programmed
once, so need take care.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 Rebased on latest linux-next

 drivers/nvmem/imx-ocotp-scu.c | 47 ++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 42 insertions(+), 5 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp-scu.c b/drivers/nvmem/imx-ocotp-scu.c
index 61a17f943f47..030e27ba4dfb 100644
--- a/drivers/nvmem/imx-ocotp-scu.c
+++ b/drivers/nvmem/imx-ocotp-scu.c
@@ -19,9 +19,20 @@ enum ocotp_devtype {
 	IMX8QM,
 };
 
+#define ECC_REGION	BIT(0)
+#define HOLE_REGION	BIT(1)
+
+struct ocotp_region {
+	u32 start;
+	u32 end;
+	u32 flag;
+};
+
 struct ocotp_devtype_data {
 	int devtype;
 	int nregs;
+	u32 num_region;
+	struct ocotp_region region[];
 };
 
 struct ocotp_priv {
@@ -38,13 +49,41 @@ struct imx_sc_msg_misc_fuse_read {
 static struct ocotp_devtype_data imx8qxp_data = {
 	.devtype = IMX8QXP,
 	.nregs = 800,
+	.num_region = 3,
+	.region = {
+		{0x10, 0x10f, ECC_REGION},
+		{0x110, 0x21F, HOLE_REGION},
+		{0x220, 0x31F, ECC_REGION},
+	},
 };
 
 static struct ocotp_devtype_data imx8qm_data = {
 	.devtype = IMX8QM,
 	.nregs = 800,
+	.num_region = 2,
+	.region = {
+		{0x10, 0x10f, ECC_REGION},
+		{0x1a0, 0x1ff, ECC_REGION},
+	},
 };
 
+static bool in_hole(void *context, u32 index)
+{
+	struct ocotp_priv *priv = context;
+	const struct ocotp_devtype_data *data = priv->data;
+	int i;
+
+	for (i = 0; i < data->num_region; i++) {
+		if (data->region[i].flag & HOLE_REGION) {
+			if ((index >= data->region[i].start) &&
+			    (index <= data->region[i].end))
+				return true;
+		}
+	}
+
+	return false;
+}
+
 static int imx_sc_misc_otp_fuse_read(struct imx_sc_ipc *ipc, u32 word,
 				     u32 *val)
 {
@@ -91,11 +130,9 @@ static int imx_scu_ocotp_read(void *context, unsigned int offset,
 	buf = p;
 
 	for (i = index; i < (index + count); i++) {
-		if (priv->data->devtype == IMX8QXP) {
-			if ((i > 271) && (i < 544)) {
-				*buf++ = 0;
-				continue;
-			}
+		if (in_hole(context, i)) {
+			*buf++ = 0;
+			continue;
 		}
 
 		ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, i, buf);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
