Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8D9ED8ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 07:20:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6cLJ3qRbYkOyojeF4asVv5Hjy0PF3pZWwZAacSdHq3Y=; b=Rz2PyUaY530SzV
	w+7ehUkre8BwXEuSpsOtWrmaArAwW/mSEbaxxQWm7k/60v7VyNnoat2EdqO6S1j9qdrRvqxBRnC3q
	ys9QYRpgGoZ5638khRkmVLMsKPVvEl6bO2nFt3O89ARAxZxkzYbmTBZS374tEEK7LqEIHyuas6RVm
	p7lUaG3XLjSYO0Eh9QyTfM/qfR8tGnr+NwCqQDBKK8diuwWqhAldaxlKeXL/5XYTMNRNvdGXN+NlY
	QQXKGeot/pUEZxGYHXNrrH2hIDZVaBaHsbELQUm+IYTAEYJDoA7yo6wPbqDPbI82sL6v/wKv/EiJd
	+ZJz2I24fHBADCDetUyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRViM-0000Gs-B2; Mon, 04 Nov 2019 06:19:46 +0000
Received: from mail-eopbgr30075.outbound.protection.outlook.com ([40.107.3.75]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRViF-0000Fq-BJ
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 06:19:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fGrkTwCyj3yH31BTMFcvODLjEAtOTUN2c/vQ0xYOnqGfon7xyRADAsT67IaiVmlOCLTtfSKQgS2h4KYnZPNK2svrQedXVrwHtjAhaOwaBDOhEVjcZHOieFBMDrvU/8jCR+ArrD7aC/rPmoqMaWTKtskMhJEbbFUNGomLzJyj8GMVWFZ6FaiYWnQjLZDD9uiqm0NDNJeRSmvzJYFb+uIEg8dh1fcc6O8H1w1dHq7tbNDJZ0ZDT3AnqrIVEZpoDqqw8N0rh0E9QKpmzAHmmyESFOenppalKEepSKjWk17om7GzmTp7LBEX9/ZxMhCNwRcLc+UnkU2ajfCx9B4rAIasCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tjZpky3E6BDCN4IEzZ/CJX5O1KQ96TJj5pdRVr/NdUs=;
 b=dgKHlH+x6dbL19OK15gAosLoVnhi6egA4cw16gYWM76Zw2zkmrGyGT3d9+upVxRnLJnL19gVY5IkSmzNDbGksK+jyyOVIWywkieUJNuCENzxMgqZvW9klk4+HY8SETRzE9GGtaopkPHrvFgXJYz8jtxmkYw8BugTIJwerDEGbsUXkBTRSkXtpA2u7JXtHVVzVd8HZWGDaJA6McbgN+PtntNFA3pnbom9Otph6+jkVXkrYVyRnAaBm4kxbbLxSdtdNmpUmlIBvwQ25TgESNLscPaCJh8u9AKf3S4o4/5N2RKCDbWCG5P7QhD7JF8v5yu5xcjcd7/923SCySxU6w/oyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tjZpky3E6BDCN4IEzZ/CJX5O1KQ96TJj5pdRVr/NdUs=;
 b=cKlEHy2gQzUNEPyOFwqdZm/dUVKWtFvOK1uRWQkkygEGCFrnbeBoLuoOOX0G/CyVOhZo+wvlM6OmOvbPpbi2DOH3QOIimeI8Dyi/vROXE9jE2++4Imp4H/TEu/6qYOaOAfNT8b++6OJxu3jB2h/qZ50mpoiOsoW+aImorwAjXUg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4578.eurprd04.prod.outlook.com (52.135.149.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Mon, 4 Nov 2019 06:19:30 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2408.024; Mon, 4 Nov 2019
 06:19:30 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>
Subject: [PATCH] arm64: defconfig: Change CONFIG_AT803X_PHY from m to y
Thread-Topic: [PATCH] arm64: defconfig: Change CONFIG_AT803X_PHY from m to y
Thread-Index: AQHVktfR/Cqvx9J0xkqO2kYL/+zNUw==
Date: Mon, 4 Nov 2019 06:19:30 +0000
Message-ID: <1572848275-30941-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0046.apcprd03.prod.outlook.com
 (2603:1096:203:2f::34) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 215918d0-a177-4d9e-3854-08d760eef397
x-ms-traffictypediagnostic: AM0PR04MB4578:|AM0PR04MB4578:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4578554F493FD9F20523C7D5887F0@AM0PR04MB4578.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 0211965D06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(366004)(39860400002)(396003)(199004)(189003)(81156014)(8676002)(14454004)(8936002)(305945005)(71190400001)(81166006)(71200400001)(86362001)(50226002)(66946007)(66476007)(66556008)(476003)(2616005)(64756008)(66446008)(486006)(36756003)(52116002)(26005)(6436002)(186003)(316002)(54906003)(102836004)(110136005)(6506007)(386003)(3846002)(6116002)(14444005)(7736002)(6486002)(25786009)(99286004)(2906002)(478600001)(66066001)(44832011)(4326008)(4744005)(5660300002)(2501003)(6512007)(256004)(129723003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4578;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lVOJ8QJbD08GG6RRbWVCekGRue/Ssl+ONVvEjv8KLqdCnUJvmnOrCX0spyRznEsZRUzz+9JjBCBqfH/hoParLVIgGxMobv/cMjLDS0P/zA7o+qvE0prIyRB19Q3cjJql8plNBx3ZrNTFM2YzREA10HceNVHqH6rsd0mUI6MuJJ4u0VGzM+hn08zTRDYb4NXgUFfKCUu6B3+M3zaeet0YVh+44X7jz/zMUbvx2bNuKE+tBfx2hhDTbC3h73DtmIGY2ok0GZpoopkhj/Qt372bB+Ad6YMIqAuk6ahNAz9eKqdLVR1Bvm7r4ZhKavuJPoB35PCFirYtPx+sGfe7oB2QR/1pxZkd9dy3hFiH3tvz9yTGemUSZDkJSk+2yEdJt9/mAgBBce7goo17P2ts89HzXBJle1lAxbik8bQmk3R+KLXC5DJhZaIPsiZMwmFHxyJD
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 215918d0-a177-4d9e-3854-08d760eef397
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2019 06:19:30.5608 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 114IAHUJbLMejAqq65gdWV/GMxuxhM3i5Jf7EjsfV4j9zg+Yyr+o4P2F8xPJPHN0hAE2IM6nA9wzbjXzZVjBzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4578
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_221939_391509_CFDB5E28 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "olof@lixom.net" <olof@lixom.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

With phy-reset-gpios are enabled for i.MX8MM-EVK board, phy
will be reset. Without CONFIG_AT803X_PHY as y, board will stop
booting in NFS DHCP, because phy is not ready. So mark
CONFIG_AT803X_PHY from m to y to make board boot when using nfs rootfs.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/configs/defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c9a867ac32d4..cd778c9ea8a4 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -285,7 +285,7 @@ CONFIG_SNI_AVE=y
 CONFIG_SNI_NETSEC=y
 CONFIG_STMMAC_ETH=m
 CONFIG_MDIO_BUS_MUX_MMIOREG=y
-CONFIG_AT803X_PHY=m
+CONFIG_AT803X_PHY=y
 CONFIG_MARVELL_PHY=m
 CONFIG_MARVELL_10G_PHY=m
 CONFIG_MESON_GXL_PHY=m
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
