Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4C71DA7D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 04:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kbGLQux7tShnl+iui9IG9ybIjqL6H8L+OCMaV6Iw0ZY=; b=Y+wstR1M1xOJyx
	uyNCyv916xR4ahMDLCqz9sUZHSHUqgzowso/4GOS+FvzittP0CqkBbjMVvWgyxaK6s+PyUWZYHGdx
	KM+yCKLiAmJqKFxO7p1upz0ZuVJhQWYKzHxGAlBvW7Co2BdMRipQ8i05MXvxKUAQMEDGv2dyF2V3F
	cD/r2EbkG+oPsu9nlNHjVM3tWmHKBNZIAB8IU2+thceBJtdETnudjwo9KVU/9R5gkri9TuRwmxkaD
	EskgY7oeJ0YzEh6tz9yK88EPergXmsmg31NezP6QvyNKwQCCGvGuj1Q+QoCJwuaxzNpPhXi8wFE8V
	Knml/OWf+E5mxFPKD+fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEGx-0003pq-OM; Wed, 20 May 2020 02:15:55 +0000
Received: from mail-eopbgr00076.outbound.protection.outlook.com ([40.107.0.76]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEG1-0000ri-Ad
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 02:14:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jAPiN1wNoiI0A8f8f4pZxBEFzE0tFwz1uj5sIeEZJLeCvpvd+dfRYwmO6QdhqQL5rdXZrHrHSX24nwM2lt5psBJom0CIHH7dW6ibHoapn9z1QhXTpH97kg4ZP6UwrjBew45+M1I7IcX3OTMUGjXn7Tlmp+Xmx1FPZQcsa9zN2g8ruIkRMv+XhLsnOnbemczeRZQxF98Y5p8T065oeJF+EYG7E3FSc79IqGf7wvD8t/0mrOpnNYieAIU5L4iXbObJtowF2OeUauffohBVW0l+88JkMIflVnp3f0xRia4KQlOVGQjSy5gq8c/NHaZ0YMTsoo1jsiBOqBRCSjvvZdgUZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xa86I+e1YZ03NSzt1iKqJNy4RVaAgUzTJ73cwnoGJDo=;
 b=WvM887IHJLw7wv5oW384BsV1fZiUe8epI43IUoUep5Xn2icerGvb2BLgIxbiJv/tcBQz5+ln+oNvsIipHoDJZ3I0I4sIklvYvSFXgFJSSZ8oq2fVqI8JxrrZCNosf8EnADtU6lK8g+/0vWL96TVDXAvVBl/9CUhg7xTzdYK0b5ESz/TrMwUOy5BdZvIn/9OXJvLORMYTrRmhgropNcoomPS93of2h6oaxBrTkZDdVxlsRXGrOZuyLejU8fW5i0K4a1VF9eRyvyBzjLbznqBTej930Y/qmGr/UyejRIo8I1Jer3kYpnstcWsKbGGpJyMn2cV5TCQzguB7hGSKFY4ppg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xa86I+e1YZ03NSzt1iKqJNy4RVaAgUzTJ73cwnoGJDo=;
 b=SOJX4DcVcztJqQBDDw2meyL7+g6sUacbkTmeoo/VyTH6B9wAGFnW49V8zl7o2xSNnm0yQ/riuHQAMpAaKPXlDYbUwA/L/1WSfRYrmDa8TTxo+Mv1uqpk69fFttPWD7OccomQA2rEnjHgA5yRYkcGYcIdfA5jXiGjG8YWgGU3XF0=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2741.eurprd04.prod.outlook.com (2603:10a6:4:98::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Wed, 20 May
 2020 02:14:53 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3021.020; Wed, 20 May 2020
 02:14:53 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, fabio.estevam@nxp.com, kernel@pengutronix.de,
 aisheng.dong@nxp.com, robh+dt@kernel.org, sboyd@kernel.org
Subject: [PATCH 3/3] arm64: dts: imx8mp: add mu node
Date: Wed, 20 May 2020 10:04:38 +0800
Message-Id: <1589940278-3680-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589940278-3680-1-git-send-email-peng.fan@nxp.com>
References: <1589940278-3680-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR0601CA0011.apcprd06.prod.outlook.com (2603:1096:3::21)
 To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR0601CA0011.apcprd06.prod.outlook.com (2603:1096:3::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3000.25 via Frontend Transport; Wed, 20 May 2020 02:14:48 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d668110f-6424-4603-dbc9-08d7fc639563
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2741:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2741EBFCFF2465FA6180632088B60@DB6PR0402MB2741.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:459;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sG1l6JCA0+jtdJ0/MfOkanERg4oSu6tc1mIEunnOKzhWrk8kOi8lOtjUp8Snp4hdxOLikgDRGIyI9wWIUZnopk1xgxgkLkvQo467BPpgXq8neCVogdd6EWi/Fd6j8aR5iieD/ndX1lQWAkWXDN7x/OwrlDoe6ndtMtZdAbSu9bwnyM7lbbmKq5NCB6OTc/gpk3ZXIebWAVmXYoWMTO/XJjLG4ZMHlN7oQoraxPtG2DORJDHzPLXQWZx9RkyOIujbVqch/TGgW6W7YytPm5lJVHVprqI9w5rNN25Bc8CrCLhVXTiIOUOnqke5XXu+mFWh7CZKEspvUjcDnZzSveFLt7ySgBTYKsa2djYoTeV6KDgowx/nnE7JTDzNRT7uSGS4ceWF15qr5ppfqLFtRpNe2T41pPsUfAJfO6A4YYMdjpOEHd5A4UsA8I7+VaOVk1ZWpUutCoqafGX4tL83rsecGaclmMRfM8Es+3YNugOg2xKCwSlJDZD119bdcmORTPMSsU05TKOEVnmrlSPzETfizQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(39860400002)(136003)(396003)(36756003)(8676002)(6512007)(86362001)(6666004)(52116002)(9686003)(66946007)(66556008)(66476007)(8936002)(478600001)(316002)(5660300002)(4744005)(26005)(6486002)(69590400007)(6506007)(4326008)(2616005)(956004)(2906002)(186003)(16526019)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: DtpdYJxo3a0GHyrMZf1+lhHtOYsLa4RE+8+Xz/Nz9t67GhH876TxjLGiTIxkMGOnAR5TsuOPxxf/M+uo5s+Z/QTb7ffgiy3bZbhDZR1JVL61z4x6GnmJcG51CyAh86Pk3VnrMRIvf/v6UGopxJNmdA7H55xtNJw9fOrsOFK5i0IT4CT83NIfzk13lb+dXq4Gf7I57HCOftru86f8pXoR20pNtUNOjwOSi+5YnOLSOSquFqSt1jpJuJZ+Zn4ZcsL8GUKRd++IT6wJeaJFVaLsneft2VE9DlSXh3BirPIWrf2okCTD3ANHRcuPTkSOI8G9/+sXzYBoGLZBl0rSuidBasAZSu+rEmSzLPQAEATu6Z+5haVhVWYLyInwEEzyFrdwhFbLT4AkQZsjGoqOczmOmLLKYnTHO8BdbgWc7wwVxrMebDZ05QYzridihzZPWNDNHkvk31nXlkJDOKAjCwBjgGAA9p/ifsKAwjk+M1ITElGMp5wYhIjO20EQInp44oGY
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d668110f-6424-4603-dbc9-08d7fc639563
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 02:14:53.8054 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LP64BNDLWOzXqybdiwQlsvja/kk5osgxq7TpxYzHsYYbhTWBhrTTiNrnVT82f7aGE1tXK9Q0C1SKVvL/vF9zLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2741
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_191457_377815_C731B256 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.76 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.76 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 daniel.baluta@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add mu node to let A53 could communicate with M Core.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 73535601261e..0b127a25657a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -621,6 +621,15 @@
 				status = "disabled";
 			};
 
+			mu: mailbox@30aa0000 {
+				compatible = "fsl,imx6sx-mu";
+				reg = <0x30aa0000 0x10000>;
+				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MP_CLK_MU_ROOT>;
+				clock-names = "mu";
+				#mbox-cells = <2>;
+			};
+
 			i2c5: i2c@30ad0000 {
 				compatible = "fsl,imx8mp-i2c", "fsl,imx21-i2c";
 				#address-cells = <1>;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
