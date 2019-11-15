Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4035FDB08
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 11:18:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9Lx+mT521iP2sk+RXdmk2NayTpMO2ijwLTVT3mQmkdk=; b=haMy1fKpfWEVEr
	s/pCIz3RHeWMS7GD46znZJSgLa9OpcJfzGlh7NB3idfyEYr7kxK8lgiWwoLDoJiySshV/9UzTvbux
	YSjDG695SxVeWaaGA7ogTb9xJVAtlg8/cet22U7oJe47lyw1MZlEOuZOjW73H4h0wPFcyZe/ZcGx4
	0gHiGCaK6DkSa17dEr11Y4Klilua3NPLBDKjk7b5dmqBv/enw8RY7C7Ea+gO8eLLgJWI7Jf2hSgRq
	4WPu6FLbuldS513Ra/14avFAoP81XXVjmLe5NqSQrE6snZqvAB0wO9ByLeJD9OaOajGLgCKVIYYvW
	gseOqsI6/ojZnHN8Z3cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVYgC-0000M0-SE; Fri, 15 Nov 2019 10:18:16 +0000
Received: from mail-eopbgr10070.outbound.protection.outlook.com ([40.107.1.70]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVYfu-0000Ki-Ip
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 10:18:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fcnZklfBnrpJeaG1O034/vm8J/Zpl2JiVrQeTAPoDJcf9W402QS7lH3ccqlhsqPzjetO0ystHkqnNfU1qQOltUGX7twLwYlbmq1EbjKX3NHiXztQqAJuQxPJKGDImimKlDSF8U9mRtU89IHA8ZkEuhqai3fFsAtXyWPdib1fmiq8OwL7QUisWQapKOdlew4qX1FDA9ipHvk1R2WL3WLMp5622NJK2S2+jDHWpm1fcymeGfKrCgRCRfNLqbB2RAWdipjcbmD1CxT4kR9v8jzCIFK0sTfvD/pDFYDk6XfpCjECsimpqkrpULrcwI6Gx7XICPxWmPHDHqsyt+fLrocFVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ORHQ659aoEtcRnPnkP0sXH/YF5tOtOqc4+oMh2DDYs8=;
 b=LEB50cZmVNHpEgN/pV57q4z2cjNkX+2SmHm4Jk6y/7Yq8EgxKV9WlocFHLdmdwJo0syuumog3bEfwOgZfeWyFEWSRrQTYYpMWqKC40XAgPetqaFh2ejwYPcx80qUGLQ6j+BlSA2ToB/Um8Ry7W9GtG0+B167DBJFi5Y2WNnUymzDHkmiyUItX/8g86BC1LdGshCeVWJOBzd3nUeixa+MsUKt0YANT+zxRolRS8/8lTeWu+/fX+DYBuo/SgfKtYWoWBF+oLFqCu80uto3/pPAIHxHS5GJhuanBHiE9FUSNDKlrHK+G98vIF0N1csx3PnjIJ75cKfOUN9IBnJj2TDmog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ORHQ659aoEtcRnPnkP0sXH/YF5tOtOqc4+oMh2DDYs8=;
 b=UC5CBGGcJSKT6sOr0W5WuORevxedHRPn0u8HRNZ7bTTuOnOrRKMllhyb+tOVhD9b4Lec0bp0QNGpdTi3lr/sNyxcirBJd4HAe89Bike5l8DCWu484LNdWWv5TnL/rK/uh9LF5wn3w9Czr7UepcaQsckyKBA2t/YzKQRMkyaCGWw=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5395.eurprd04.prod.outlook.com (20.178.113.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.26; Fri, 15 Nov 2019 10:17:54 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2451.024; Fri, 15 Nov 2019
 10:17:54 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "linux@armlinux.org.uk"
 <linux@armlinux.org.uk>
Subject: [PATCH] clk: clkdev: Replace strlcpy with strscpy
Thread-Topic: [PATCH] clk: clkdev: Replace strlcpy with strscpy
Thread-Index: AQHVm53x+DXjeUQoqE+Ge0GGT57azw==
Date: Fri, 15 Nov 2019 10:17:53 +0000
Message-ID: <1573812819-5030-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0031.apcprd03.prod.outlook.com
 (2603:1096:203:2f::19) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7f884cdf-06ce-4738-5d4f-08d769b513aa
x-ms-traffictypediagnostic: AM0PR04MB5395:|AM0PR04MB5395:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5395FCD25E55205FA00C276388700@AM0PR04MB5395.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 02229A4115
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(376002)(396003)(366004)(346002)(199004)(189003)(66446008)(14454004)(2906002)(86362001)(52116002)(6116002)(3846002)(66066001)(7736002)(305945005)(14444005)(71200400001)(71190400001)(256004)(2501003)(6512007)(99286004)(6436002)(6486002)(478600001)(102836004)(110136005)(54906003)(386003)(6506007)(26005)(316002)(186003)(8936002)(25786009)(486006)(44832011)(36756003)(50226002)(4326008)(8676002)(81156014)(81166006)(66476007)(2616005)(476003)(64756008)(66556008)(5660300002)(66946007)(156123004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5395;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kMvi4djVH0GjPZ+Wzlu/K2CD7lMsQBhX6n51JJTh4RByGU6keid38QOu663jTgJHVm6WhwVoevgfGCluRuE8+y7UazMcrHDn01TAF8+KyjUaa5Qx8V8YCfN9trKnijW+RhuaEDzKIXKoQK3obsFKxw09Qigy3AlP3MMjbXTtHOG/PqwwXJXxa6K5eOKY/4pSQnM2/kpgXqhhaLpsCnMugrG9T7vG29F0ymUKQQ5J24lZGYcQA+JBP/8DpWMqKGOW9/UQ+v34p0K3P1nZazbAuY/6icMTKtB2vGTbcS4IgrFv7nZxG5we7ZWmNBFslhJc0pLxpDqGleXpg+9xGS9LKakWStk9MRFPlOvM+6tWzKnoJDiELxRfXWfK98XH567IFL5PmvlAeQVlEgrkBDaov2A9O4MI4fX7jaZgInsCHs5oxdiFd5t7V7Ip0UCkGxVM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f884cdf-06ce-4738-5d4f-08d769b513aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2019 10:17:54.0191 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jdJglKf7R/U4zV+fuVmD2OS+As4W3z+4ki+1K8hy5Drhi8cUhQKJaCRbl3gxPdtSzrSyPz6pkoP2UwgHn5iGIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5395
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_021758_626023_0D0EDD1B 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Kees Cook <keescook@chromium.org>,
 Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The implementation of strscpy() is more robust and safer.

The strscpy was introduced to fix some API problems around strlcpy.
strscpy is preferred to strlcpy() since the API doesn't require
reading memory from the src string beyond the specified "count" bytes,
and since the return value is easier to error-check than strlcpy()'s.
In addition, the implementation is robust to the string changing out
from underneath it, unlike the current strlcpy() implementation.

Cc: Kees Cook <keescook@chromium.org>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/clkdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index 0f2e3fcf0f19..ee56109bc0b4 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -165,7 +165,7 @@ vclkdev_alloc(struct clk_hw *hw, const char *con_id, const char *dev_fmt,
 
 	cla->cl.clk_hw = hw;
 	if (con_id) {
-		strlcpy(cla->con_id, con_id, sizeof(cla->con_id));
+		strscpy(cla->con_id, con_id, sizeof(cla->con_id));
 		cla->cl.con_id = cla->con_id;
 	}
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
