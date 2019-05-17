Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36386216A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 12:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aGIpGzStihexzcZUgWo4qDkL78rnv5zTuVaLPWrb16U=; b=LsPCYEaNMa/kG0
	7G7Qq39WHcvd74NzUlQ7mRQgszVM9Ri605Lp6lic3XIqGGhTrM9rqwJqLJ9zS2jQkQacCiA+uKory
	XwnUcg3VH/iCEW9XwYNVWSoTY7oenCltBz9NBY7+BRyv+bZpptym43yqJv7lilu3hOVB+vuqZwym5
	CgWyXkAavPBVnch+Rkkp6p4FOGvuhIiqAq0VJnywtBJBFb3sKhaW5WVaCY81s1CN7+ax+YB3SAMO1
	NNPYlFuBTGT3+rbFTbzScNrqEPo5GZC7N/eyvK1+WWcB7BV6pvg+4YlD+stb0H4MQUmoz5wBu1y/i
	tB9JeQ+xzupvs1vH8HDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRZgb-0006Jd-4Q; Fri, 17 May 2019 10:01:57 +0000
Received: from mail-eopbgr20054.outbound.protection.outlook.com ([40.107.2.54]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRZgT-0006Iq-Dj
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 10:01:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xsWYX+LQ6+TTAsXvHqgH/Yc6JCQoQ3ScAu2622F7yRo=;
 b=sElC5dxoX76kegZSC65o65fhophQlAcpDfnCAoN/5uVmpQzRKiuyn6Ft1Iyk2tLNofTQ3bOfKdXKe2/IUaJtN9CjyJ9VddaezWcTPU7Sc0eWUe1fhXXKJqUIBHzpXBxfL/yGS+dgm3ssU/yBNJXUR7jWb8QKurgBHydxdJPyE6E=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2605.eurprd04.prod.outlook.com (10.168.65.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Fri, 17 May 2019 10:01:42 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::3d45:6b81:13ba:88cf]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::3d45:6b81:13ba:88cf%7]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 10:01:42 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Leo Li <leoyang.li@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH v2] arm64: defconfig: enable NXP FlexCAN driver
Thread-Topic: [PATCH v2] arm64: defconfig: enable NXP FlexCAN driver
Thread-Index: AQHVDJeG87Iu/WpLp0aB31mRVY0bxg==
Date: Fri, 17 May 2019 10:01:42 +0000
Message-ID: <20190517152513.23339-1-pankaj.bansal@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PN1PR0101CA0012.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:e::22) To VI1PR0401MB2496.eurprd04.prod.outlook.com
 (2603:10a6:800:56::10)
x-mailer: git-send-email 2.17.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [92.120.1.69]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 947d206a-8951-415f-8c0d-08d6daaea92b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2605; 
x-ms-traffictypediagnostic: VI1PR0401MB2605:
x-microsoft-antispam-prvs: <VI1PR0401MB2605ABAAFCE74E082AAFCCC0F10B0@VI1PR0401MB2605.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:751;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(366004)(39860400002)(136003)(346002)(189003)(199004)(68736007)(66066001)(6486002)(6436002)(86362001)(186003)(486006)(476003)(2616005)(44832011)(26005)(73956011)(316002)(6512007)(36756003)(66946007)(64756008)(66476007)(66556008)(66446008)(110136005)(81166006)(8676002)(2906002)(7736002)(50226002)(1076003)(6506007)(3846002)(53936002)(478600001)(81156014)(386003)(102836004)(52116002)(6116002)(99286004)(5660300002)(14454004)(71190400001)(71200400001)(305945005)(25786009)(256004)(4744005)(4326008)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2605;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OaPM8V7arQyO69pFTWDCFi6OhpGOK/rAWZSm5kvR1Z1aNagW0ebiWpcbM/Psi2WM0layn4XIOrdFkAPbgnuT9hvmExS84coeyvuk58BLryRT79E/+5dX71wxr1b03SCYg6jvLOU0oKnaIZyRLxanLElHtHhL63AzW281/KHz4SfjdIHTKnC8urHzcoYLfK3XiVvrh6OK8LXVEnRfmViUh4JM218LBLP2vC8G4PAQXVtLBmlkCn53h/jQL+5sEAawDzUPMVrqKkiqluObCftW4+w7VQFobBDfaEFmdT2HcnT4a6CSSnpuOe4/p8NSNa/hkmMy/z6ypVcfmzi7uWuHect5tG2dOCJvcJFzPPZFgIgiQp4eDT6+hG8uf9jt5dnVmv0FY8rTdvIaZ5Tm6/pwGqzI0fcFps/bxycNuiTvZdA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 947d206a-8951-415f-8c0d-08d6daaea92b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 10:01:42.2066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2605
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_030149_468273_547D8F7C 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable driver support of NXP FlexCAN controller.

Signed-off-by: Pankaj Bansal <pankaj.bansal@nxp.com>
---

Notes:
    V2:
    - Make CAN bus driver as well as FLEXCAN driver as modules

 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 2d9c39033c1a..2cc291077bed 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -180,6 +180,8 @@ CONFIG_QRTR=m
 CONFIG_QRTR_SMD=m
 CONFIG_QRTR_TUN=m
 CONFIG_BPF_JIT=y
+CONFIG_CAN=m
+CONFIG_CAN_FLEXCAN=m
 CONFIG_BT=m
 CONFIG_BT_HIDP=m
 # CONFIG_BT_HS is not set
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
