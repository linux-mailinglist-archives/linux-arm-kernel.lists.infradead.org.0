Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C3C1E9BA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 04:17:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=at5Cf0jqSNcaksetjnI5Fy4GsXHop7Haz4OYS50VFoM=; b=UGcvU40sJ32aLc
	T9pFzKRz3cGiWo3xDKXbRJG0y9rN74nhq/E4xI/4YCbhlLBMCyKCrP1u4ZfYtdCSkGBv2g2pdwqtV
	zUS8fghaLxjOWG4bqxr00JSIu3o0+Ic8aK/x18FoptbdeEXq70s+xAO8zyRqf7kOJ8LD2slNilTV9
	CfnzWl1rIgBXVxbw6k4OTDapTYoBnYFDlwvU2MtnKA/VJAw/gBc690JYEL+qzE5j98AVpQ1dx/MGh
	k1v+8/Q6WTcOzu/0RxTQ5d/8+n2P9n7Cc9762oZ4bMVrtEE5Bb7273i/Hyo1yhk9SgzhEYaax8JAZ
	CnIb3YM27Asc0EIddEBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfa1O-00032Z-JG; Mon, 01 Jun 2020 02:17:50 +0000
Received: from mail-eopbgr140083.outbound.protection.outlook.com
 ([40.107.14.83] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfa0c-0002b3-Di
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 02:17:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WaZ6H+W2v2YQVr64M6cyiDsBQlQEO9kQOTJ7B+AyW0uijgnFjK6BP0mMxAcBYaS1YoaHy7fBWInPJtAGs7Ql1RDDeKhH0N90UB+4Cals8gPS+qEAn/tDa0DM9r0g14aEuWJUCTGBoxt9D9S2Ik739YmeUSZQV2XNAIK13Hmdmtl+i6iF6WNGTXWl0GiWHtleiztUUzB6SaYXsd2f7wh8r4NVXlt+/43/UoqMFl3cB3MyOaD7lnQEbqpVqbHIbSzj9IfSd2Tab+CZukeAVs80QJK6brnsZedHURTJp6NYVZK9w1F7xCmqylWuanff2FOI7rjGKKXIuhghj6HlEeMUZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X/uCrrf8eXSNnP3fRBRNZyue5G0xVLa5q6XIiRQDvbk=;
 b=SGrZN1gjXC1YdDtxc3ZHZmNS87BavIl/eiG2Nb7Q2Qj665kPJbb9MQhNzYHIxKQX6mLlbckrTbgwdgtpF688zpblDVwlGmd9+Kg47bke1Z0iS+zYjWwpyDeTaY0DSUlyhziU0x0vkTW9wKSQ70FZF8n+5i/4X97e7bPtFhh/kK97n4nxiGq8Jheh+gtt601I+6YqHPboXalfjDC+FpuWvjTdJ7OZ3ZliMXFZKha7wC+i3XdECKDBBp9m5mKlSfTimA4/ozaQIRVxAW4ObxCj7fi98VdpjAu0E5upc2AFnVicNKFIp/uk+nJgawkD+XPm8wpMmagYC6OQYuRl42YrHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X/uCrrf8eXSNnP3fRBRNZyue5G0xVLa5q6XIiRQDvbk=;
 b=H/Wj+9h5aiKRGy/bL+cUR4acKOelBM1lDAdN47Ws6Ivux+zhATRqlAFuerF5xy7zHK/lWfGJvZHwUlbn9OHX5BZ9XIyVHq395847X8l/xC2wDDItm7K4bXZiIBJWRIxfXQoA4jElN1kwpbIfWG6u1bCjdfLsj4xBcjXD4n8dChI=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2744.eurprd04.prod.outlook.com (2603:10a6:4:94::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Mon, 1 Jun
 2020 02:17:01 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3045.022; Mon, 1 Jun 2020
 02:17:01 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, fabio.estevam@nxp.com, kernel@pengutronix.de,
 aisheng.dong@nxp.com
Subject: [PATCH 2/3] arm64: dts: imx8qxp: add i2c aliases
Date: Mon,  1 Jun 2020 10:06:19 +0800
Message-Id: <1590977180-9957-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590977180-9957-1-git-send-email-peng.fan@nxp.com>
References: <1590977180-9957-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR06CA0157.apcprd06.prod.outlook.com
 (2603:1096:1:1e::11) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0157.apcprd06.prod.outlook.com (2603:1096:1:1e::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3045.17 via Frontend Transport; Mon, 1 Jun 2020 02:16:57 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f3af68e2-2845-4ecf-6a19-08d805d1de16
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2744:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2744F6CA340D830718970F0B888A0@DB6PR0402MB2744.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:546;
X-Forefront-PRVS: 0421BF7135
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PJOKYqp7YG8lwygDWMr/+FTsLVu6sMWtBPoqylWYvnfV6ADsKxp0CgFua3zwjvdHmCwj2YKquR7rtIWciw1lZcd3EBHmNcCyklNADxS0Z81IyLIB4dDtjKGWC0OBPgVAat60HRivsU+wNfwivwnJ+9U2etQYYbPk6yyMnnvrkZ8FX0OOLG98ME0J6uE3tQ10WigRIWOosXkTX2ROEKzKoRPUN9iASrVdjvwK79DnPQkyojjVLJIrIXExxPe29yMNPV1mMQLBZhUPkxmxc0Ig8lEHse93ZUZbggLHPS3SvDZuM5gwVGowVoSGdYclMquhR1ItZ3SpVpAsEabJLjeOBLChguVTcz+pYzW5n6MS7rLcout6txBdzCHstt48AUtkTf9Pns08gdMA0vMIQViRyHCXXPSkeTy7RAdas67/OTo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(136003)(346002)(396003)(39860400002)(26005)(316002)(52116002)(6666004)(186003)(16526019)(6506007)(8676002)(6512007)(9686003)(478600001)(6486002)(8936002)(4326008)(69590400007)(2906002)(36756003)(66946007)(66476007)(66556008)(2616005)(956004)(86362001)(4744005)(5660300002)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: rzT9m8S7kh87dFWVmpEGoDwa1tPFvk0RPQc48QyYY1FZSj6uXobhEIvVF1Sa/XekCAIVY9hmyImPai11mdZvrVYBjTz3wvj7iTfA2/1xXszHMf+/ksVr8IGR3dXNbMZoZleIN8CaWSJADBhmUbxmlhJ2AwH99bv8GmJDqzty5zOvgDqJRAtnGv660jiOgR4kbn1+cbtrLmt7I3OaN0qCagJXFmxvzsRFJc5ZXRag2Zr6McPqLeDCTC4zbrzRChE4LdCjtf6JcWWkH8EeHbF39O9S9hiEVkNryb4p1vE46AO396eMhnSzPdSsGaVZH7mlm05b/DQOKSTQQCMA/IzXpY1MI5HQQtovw+YtITZATnJPdtVqTjLcAcE8BlE7uTrZ9Qz9AlYFeqhF4sj84yQ12honuuVGe2Ihv2xwhZiBy7PJ+eES0y2rHNI+Lan4weZv3bxTcJyjfWABRRcSQ5w6hnJXWj44H/NIXGJPabJziTg=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3af68e2-2845-4ecf-6a19-08d805d1de16
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2020 02:17:00.9387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZpQ7pv92OloIwlLbTQcqy5rGyZbTSg8pq1Ml3g8XFcGyLMR6Q1qiGfTqylXf+0ZsRoFs6pFJ3fR75hF40ADsLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2744
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_191702_469917_F9A8797F 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.83 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The devices could be enumerated properly with aliases.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 33363c127478..8ce997110cd6 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -19,6 +19,10 @@
 	#size-cells = <2>;
 
 	aliases {
+		i2c0 = &adma_i2c0;
+		i2c1 = &adma_i2c1;
+		i2c2 = &adma_i2c2;
+		i2c3 = &adma_i2c3;
 		gpio0 = &lsio_gpio0;
 		gpio1 = &lsio_gpio1;
 		gpio2 = &lsio_gpio2;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
