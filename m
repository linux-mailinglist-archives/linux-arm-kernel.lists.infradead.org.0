Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D8E13C118
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:34:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4j+Dd1Ib9UQMrhy8JmeToaLyFuFgm7mtcclhD6PK1+E=; b=XUihiLxTgYS0Fc
	HLh0IfDkiwVEjeZdDtmjrrR8wHtQb+uUe4b0oBw+SATH8NXOt8AbclXYTNgPez7dsGyyc2WxKtOdF
	6q4OX9sIYph1qnzful/YN3D1n3XOw+JzduIZTR7Z6RoxcnCLRiNLMJ23eHTpb7Da1MnDTia5VXI2/
	Ax893cmOjFOEM5GYfJ5ZIK51q9kzw6TBEazgkdWbc45aPRU/VTYvUsnA/8+wJI9Hd/jRbygXTZgVL
	2HaugATHFez2Lbb62h7+olN9dLzbu1uT2aT2StE2BbII9rHa0xrkhwYt478g8ODOVwaWvO6FipsB7
	96RohWXvydRqFWr2Ybag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irhsY-0004QN-FF; Wed, 15 Jan 2020 12:34:34 +0000
Received: from mail-eopbgr80133.outbound.protection.outlook.com
 ([40.107.8.133] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irhsK-0004P3-Va
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:34:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VfdIlJBflney3DA29PyG57UaWjXZwVmqUBU6D5PnnZGoztzlsAlvf0TJERs9FHwLqId4owEXsi3DEcE2K8jPFNDua0WSWepdntnqLmF2NfCbFzwwzxfXTaD/35Dz+CwPnMmcFkIEU1mcWVfmuLldK8b7NMKCiw5Ws+OtecT6ReO4tjknDgqgZGReU1PjDNhK4lwZycBFALYQW0pdIHAyEKHrYOm4D0doibNOVy245CmfQpHjDRSox9B74pbwdrPikvE3fonwSk4EZ7thmIV154BfewAHtedZdaqLLBBQeLXlU84IHaXOkYBUVGOP6KVKi1E2m+a7D6+ralGoLS5ldw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0++l4pSV8qZSWWEAowIEmfkLXv+gRwGYOHzBbZd84Jg=;
 b=N92ibGyQGvA0+LYCrDsxtGhkt4NJRYQOAeiJIZGMg3RFKqo6l51QQaIvNC8OmL3ytsG6+k+zOigzGcScGzUFOQP7iaPiMtxnUQMeIaWuwBS67CaXrRC+EJV4aB/WX33qpBns01mnEBENSTj4F82JfP9ShpUWbcIwdahz7Fy66Xpa8eyOMl6RZ4cQ9rEuk40xwZcg+guMgS2zs+Ub2T1PHJarMvYQeeb6iATmV6F9SMzyRnPx0InbgwoxHJhsuvVtwFYtl4k3BvPsZrC5FXrc7fc1TtuO5Ip8hOx16jQxo9HJLpMr6R/YuXns+r0gDKmxPk+X8YWJQRvIAV4gn4VXKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0++l4pSV8qZSWWEAowIEmfkLXv+gRwGYOHzBbZd84Jg=;
 b=BBgb5dj3EX6ycRbGjwdEVJHdKcHHfy4A+W87RDxu4R0nN1q/ZvIsnsveWx0UJ/gKGTJqkbBNQNT/5dj4T3z1w4c4pdq/YO0PWmyKWCycCHLVnxxvmqQJVM/r2rJ7hKTa2Cwx6CEKVrqNpMDxA8LFQGM24QrdaRyOJbo5NMay4mM=
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 AM6SPR01MB0060.eurprd05.prod.outlook.com (10.255.22.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Wed, 15 Jan 2020 12:34:15 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52%7]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 12:34:15 +0000
Received: from localhost (194.105.145.90) by
 PR2P264CA0024.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Wed, 15 Jan 2020 12:34:14 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/3] Generic DPI panel on Colibri iMX7 / Col.Eval.board
Thread-Topic: [PATCH 0/3] Generic DPI panel on Colibri iMX7 / Col.Eval.board
Thread-Index: AQHVy6AYaTiOcgTuZUi7icglqlQMCA==
Date: Wed, 15 Jan 2020 12:34:15 +0000
Message-ID: <20200115123401.2264293-1-oleksandr.suvorov@toradex.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR2P264CA0024.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::36)
 To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.24.1
x-originating-ip: [194.105.145.90]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5284854c-c217-43e0-06e5-08d799b73b5c
x-ms-traffictypediagnostic: AM6SPR01MB0060:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6SPR01MB0060BE1A99E10CCB7FB9FB25F9370@AM6SPR01MB0060.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(136003)(396003)(346002)(376002)(366004)(189003)(199004)(54906003)(52116002)(6496006)(6916009)(81156014)(316002)(66556008)(64756008)(8676002)(66446008)(66946007)(7416002)(86362001)(71200400001)(44832011)(66476007)(4326008)(36756003)(16526019)(26005)(478600001)(2906002)(5660300002)(4744005)(81166006)(8936002)(186003)(1076003)(6486002)(956004)(2616005)(41533002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM6SPR01MB0060;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kakSYJMVOxE9VbR1+D54jv6izu3sKMdlQQ8M+URcoL3tYTvbJ6kjDj/95u0LoE8TQC+lCqN2FQTcF5oKdC8HOZ7zdNefgDT3nnIuqgf8xne5o455v5e0ZNpauIkTsAOL5EtC/wDWXtfNUhVyps0B4truiau9z5zaogs+dTCXyxuqQVcUrtp2Szz/v8iIdGPbZ1Zr5/Ue3UZ/GN2WQL6WEQnycSJhEvROp6x7P4znn6RBRaKu9DNcbFXTW/wZHwbyE9nDw2m90IePzu2LTUBfhPE2EMYqvzctCAZNfG7/YtP0wqileYTc1YCMiiU2Yy2Vp9B/mkAWLV/U94N6v0xGVFzW5ljhwzwOe/nLnx3kCiWe7sh0k/8MK6xRidsljNQGTYzDwHt1EiTF/3MaHs6Fhw0rB1MCh+KowihHvMpsGcj5zE2JoOTXZ60txyDXc8+DqrSbwCkbfAS/9PJbbwYK7BNNUM0kER0Xucoqlk1Zw0sY27aukkDETvHpXd9iT4Jg
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5284854c-c217-43e0-06e5-08d799b73b5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 12:34:15.4183 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jNlSyCzsKh9xGdPHH9zaVp3g9CMs/vC9Vmixt5BVahDrUsJZnAOY21q2+RvM6ke3lyFykvbuGFMkeIpmrQqkRixLUTd8CtGY6dFFLhCGwOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6SPR01MB0060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_043421_046981_CCEF75C9 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.133 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, Sam Ravnborg <sam@ravnborg.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 David Airlie <airlied@linux.ie>, Igor Opanyuk <igor.opanyuk@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Make LVDS panel driver DPI capable and use it to add generic
RGB (DPI) panel support for Colibri iMX7 SoM on Colibri Evaluation Board.


Oleksandr Suvorov (1):
  ARM: dts: imx7-colibri: add generic RGB (DPI) panel

Stefan Agner (2):
  drm/panel: make LVDS panel driver DPI capable
  drm/panel: pass video modes bus_flags

 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 29 +++++++++++++-
 drivers/gpu/drm/panel/panel-lvds.c          | 44 ++++++++++++++++-----
 2 files changed, 62 insertions(+), 11 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
