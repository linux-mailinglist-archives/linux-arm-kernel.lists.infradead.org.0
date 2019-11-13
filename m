Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA1BFAAE4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 08:25:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yEncx5UpxYmoJ8z6meE/FQyepkhij7cGk84HklDjmP0=; b=u4alq/b9NsJpzT
	e9XXhaCUqD6X/B6U5vHwnJbxuN/p9EYwu1jELgQqDWz7CbADHaXQ21f1/7fzlWRi0aBEIwBLHS+Q6
	jS7Eo6s0TcN+hPbt3s7XzbQ4lBptpQb/H7CUJefdSCOvAmI8Kkwh6VCyXwTga8q8Wy0gSLeSuF7cD
	gGVjQV6LDX7gJ9dtpsLm9FmmjmPyOVC/WmrjDTGGIZT2H9KhADf8Pau0/DxOhwfpMN6WYNXSwyk6X
	b3ig7hUdodYWL3ea3/j+JL9iVL2+1xiD8HoLuo0cA7ZRPPPqFa/hvRHnoJ6TwkUU3u9AN9/bBeuZA
	6FeTQ6AFuerhI3z3r+YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUn1Q-0002U4-Ax; Wed, 13 Nov 2019 07:25:00 +0000
Received: from mail-eopbgr00066.outbound.protection.outlook.com ([40.107.0.66]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUn1G-0002Sv-9T
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 07:24:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A+O256r6jvLNiLQERd6oPH3MWy98Vve+hIItwUU81XBO93qiEjU14F7O/c3o6FQTqzAM4+fIFN3xqhuz/UXYGRcmALTrUaV3rkaepKQtNadlEQnbn6mtAx/eLZH2eFNrB20UPW4pwH33Savv+MrTfukkQZzJcNXlU/V2aRpHDpHuPk9YpRVt6xfr+LwsOPCbOZBiR6KnsF4HVBrq4zWy5iYENH2NAKH5hJaylmO8SRFl2QOr0a/R3XeulI6dtmY/thk7j6i86bVkqxLikNHwjIy1M3OhOCO3fSR9iqpon1/bPMvd/tTwnaOXxlJM+EGlwnxTcQIZhO8oj63aUljG/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=df8qoSTm6Yxz5RdMiYoqAqGjfmaDv+qoblnoInHn9qY=;
 b=MpnrG/EGfWRoSM0wBwb5ot8rRr5jrHllambC6Qijz4uBWURFaUdw+/GVhxOqlHB0YqGQm76WYlsyobZjPbWgI/ErJHmT6Fq0MXfeBGtuPNQYwENidWSBaZ6/cryF0TdFmkj+pziObZ4ZpK7FPVLaBCcejd5rnpXJKShA8MDhlr6FZlAD8Mep4UuBoGyKPHB0sBr56BnHM7BoYgAkcbraUL4Yon5ZOnLwWr7CYf0q7e61WNo2UPvPC6NRBxOiR+4K3BaSS3QJdtFIoWUfnS6gTm/U2/hRCnd0ez1tzb/BMUpqU8Et3Q4/X/MUwhz4lrKFQWj5Uem1O+4Futii0SDRmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=df8qoSTm6Yxz5RdMiYoqAqGjfmaDv+qoblnoInHn9qY=;
 b=nA/5i5+CdbEi6k6XINEWlfKIdEnAjsIWzPGTuLgS4VNtlqE/thADOOHch+riEv7hqW37pQKRktKid8qzGpkD5QBfOoO3wnBCytPHsm1Kg6O3agCrFBWbN8D/pnhliu+8xNmGK06ol8DjotbSidR6DZISp6PnkV9jsKt1mXI2oJo=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4651.eurprd04.prod.outlook.com (52.135.138.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Wed, 13 Nov 2019 07:24:43 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::115f:1e4f:9ceb:2a2c]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::115f:1e4f:9ceb:2a2c%7]) with mapi id 15.20.2430.028; Wed, 13 Nov 2019
 07:24:43 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 0/2] clk: imx: pll14xx: io relaxed fix
Thread-Topic: [PATCH 0/2] clk: imx: pll14xx: io relaxed fix
Thread-Index: AQHVmfNrs+So0yeRFkOsHVVUwKE7Ow==
Date: Wed, 13 Nov 2019 07:24:42 +0000
Message-ID: <1573629763-18389-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0169.apcprd02.prod.outlook.com
 (2603:1096:201:1f::29) To DB7PR04MB4490.eurprd04.prod.outlook.com
 (2603:10a6:5:36::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 60a0233e-a66e-46b7-494e-08d7680a8d40
x-ms-traffictypediagnostic: DB7PR04MB4651:|DB7PR04MB4651:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB465111118375B8ED12F28FE488760@DB7PR04MB4651.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:849;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(396003)(39860400002)(346002)(199004)(189003)(54906003)(81156014)(81166006)(44832011)(8676002)(966005)(50226002)(14444005)(256004)(186003)(52116002)(6636002)(6486002)(66066001)(486006)(110136005)(2906002)(6306002)(8936002)(36756003)(6436002)(316002)(478600001)(6512007)(7736002)(305945005)(71200400001)(2616005)(386003)(102836004)(71190400001)(2501003)(6506007)(26005)(14454004)(476003)(4744005)(5660300002)(66476007)(66556008)(64756008)(66446008)(86362001)(25786009)(6116002)(66946007)(3846002)(99286004)(2201001)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4651;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 85QN5tMcgT7eU8K9Fw+il4vr5usyHBPQkNQ5F9aqIw6TUtJspOL73UbMDy2XE0yFjWdsuEzYQUyDM7hDTx8CbmTCnrYe+7btnqAvvnPo8k5YVAgUqEFIiatrM6Gu8aT2H/VmxLWixBbKgFqwlOyPCr8Bl3L+NusvH4AR/xwDQZ2xdeJiA9zNpX6k5wiRErM67Awqr71HmA+/Z8veFEoeN4PSH+oWyp2qtR+a09O/8+PR17KMvL8Poo8LwnEYFqTATS3/cQ4HDGv3cWfhBxl6UJoA+Z7YExJiE8hySb/p3zDDQfZJZQWSVHGF9iGMztrrm0XOfAQlDsxs3F43z9UIHk1kbA0wknaORyuExyFpEqjHfOxirlleKfjHvS6etRIwQ1H+cOt5+tzaNEvXqzE8c0gaI+IZCWJ71kXCnVmNgzz9Rc9nGEn8e82v96Ys/XvtIhMVIJNVkOdq/aDKm5GoHtlnZViTUg0LcOTuZHgUVWc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60a0233e-a66e-46b7-494e-08d7680a8d40
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 07:24:42.9573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A9c8hykDixRsaQks2gbEiVXdqRLxcHpZ7Yt4L8McSyiQzcFHyYviyo9NABKhAd6jWAJBkt+BeurvSoYw8f72nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4651
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_232450_332630_116E13A7 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.66 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

This patchset is insipred from Will Deacon's slide/video:
https://elinux.org/images/a/a8/Uh-oh-Its-IO-Ordering-Will-Deacon-Arm.pdf
https://www.youtube.com/watch?v=i6DayghhA8Q

Peng Fan (2):
  clk: imx: pll14xx: use writel_relaxed
  clk: imx: pll14xx: use readl to force write completed

 drivers/clk/imx/clk-pll14xx.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
