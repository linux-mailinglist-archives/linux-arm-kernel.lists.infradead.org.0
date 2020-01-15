Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8721013C119
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:34:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZO+aDbrypE4ZM5t+ECWyOxovoQMv+AnyCCzKuecKn0=; b=cyjFCBVaFj5ShB
	nI50h2hvkSvJ2eswqED3SRmU36M88kyRzmeztLjGuQQRYHhqYz5bATrsmtEL6abO2QMzOp1J+Z1eX
	D/yJhcLmlkb9by7DPhCFnMwDFRwCewYRTGI49vqzxOxzJLkrPFspru3y8E2Azkv3cSP5MNazQ89cZ
	sUgaP6XktmaaYmBCiUFWA+SiOEY7Vi2vDOhLA6P34+hSNHopiMB1scMiHkAR2wiPP4IJRAQRedl3m
	9nmu9plB7k3cJ5fD6p2UXkKRCiPFjjwdxUDi6Jvv06emRwrW2ux9Xqc43WoJcNlpgJarrAFJ6HOpb
	3qW2ytpD1h9yQvBnZphw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irhsi-0004Yt-LV; Wed, 15 Jan 2020 12:34:44 +0000
Received: from mail-eopbgr80133.outbound.protection.outlook.com
 ([40.107.8.133] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irhsP-0004P3-Rc
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:34:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HpxlPHKwkbD4dSz/pVZk7Uf2WKtJnPPeuQzoKV1fNtmI5pToTLE3Wf1nAVWchu4+YeP1CQqX2pp+iD4p5o7pqaLv0F0SKdqMylkRrxTEirnED/u4H1DGbCo1GFeQq7HwLFqQ9RfPmWLUt03ZPzU+X7S9YJNy/3us8DgRxX4pUQ1jZ2E1A29yv8w5wq4P9f5ezp/uYdecQ2K2CSaJdeidxYIPsIbNlRFb2kEy1Ab9Q6dazf6Xf15JOmyM44RF2ai+M5HBUNcs6janHWSXI1pp3VSwXfZPVfg+skxKeuewpmi0oy5kUtc1jgSNsWsjeO87VjI9dvBTde6q7rWm78f7sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b0e5hvsKVP4k1Kk56nRQhdu/kgSOJ9v30lY9F0Pwy1A=;
 b=DgUwYW5RUW21YlhoIyaq1eSt9d4TKexkn+gku7AvmcXuy9ycjv4iZcVBdTnAOgpcKoSonQumP0YtglQI0UoaVIvvU804Mqr+n0mDV73iUCS8jdSdgNvBD3L37xGdjZc838YlaiqFB4uflaHUYAXaEePFu8DvnkWCxeZR/KndEhAh6MnQIWxFR0zLEpapr9GVjwufdjXkvaijsU69oVWy4+1chJZBIEXu0AGjJK8FM2ZnK2RRsS3PR2nq4WxbtnY1U1b0+X9JVWXHdDUkwKVwCdRUwPe4GBb5LUIeIhri5i2IvH/fBkCZm4gnb0lS7FF+M/OB1AzxDarUYZJw8anZjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b0e5hvsKVP4k1Kk56nRQhdu/kgSOJ9v30lY9F0Pwy1A=;
 b=Ij75ESAPg8DsarfpGQibTAo5GgXs4jeXXYNuxpxDmsn6nNyr3w4/iOKWfITkeQWoCwE+T135COraY/B9FjIAsjuAQurhmDhxxpGcwVotrvS4OIn9GKPI79ch2IrduxMcBGhE6+SJFEE/sBZvN3kTlc29R3Aj8H3k3QPQPL4vG0k=
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 AM6SPR01MB0060.eurprd05.prod.outlook.com (10.255.22.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Wed, 15 Jan 2020 12:34:21 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52%7]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 12:34:21 +0000
Received: from localhost (194.105.145.90) by
 PR2P264CA0019.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19 via Frontend Transport; Wed, 15 Jan 2020 12:34:20 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [PATCH 3/3] ARM: dts: imx7-colibri: add generic RGB (DPI) panel
Thread-Topic: [PATCH 3/3] ARM: dts: imx7-colibri: add generic RGB (DPI) panel
Thread-Index: AQHVy6Ac56X4lthwbEG5Llfds1xgWw==
Date: Wed, 15 Jan 2020 12:34:21 +0000
Message-ID: <20200115123401.2264293-4-oleksandr.suvorov@toradex.com>
References: <20200115123401.2264293-1-oleksandr.suvorov@toradex.com>
In-Reply-To: <20200115123401.2264293-1-oleksandr.suvorov@toradex.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR2P264CA0019.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::31)
 To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.24.1
x-originating-ip: [194.105.145.90]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 30637859-925a-4466-8881-08d799b73ee0
x-ms-traffictypediagnostic: AM6SPR01MB0060:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6SPR01MB00600399F936FD98B11B93ADF9370@AM6SPR01MB0060.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1107;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(136003)(396003)(346002)(376002)(366004)(189003)(199004)(54906003)(52116002)(6496006)(6916009)(81156014)(316002)(66556008)(64756008)(8676002)(66446008)(66946007)(7416002)(86362001)(71200400001)(44832011)(66476007)(4326008)(36756003)(16526019)(26005)(478600001)(2906002)(5660300002)(81166006)(8936002)(186003)(1076003)(6486002)(956004)(2616005)(41533002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM6SPR01MB0060;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WhYFIsF4VjdBUzIJUPqeeVo1gjQuQmPw9zQMEBh+CMQHCv9yqFQiaIvZTCZjA39nwh8mxjiZdVFdv9+ar0v0kGeYpZMbrkuG2Ko5E5/UVVFNB52eZyQ3PWRAAC4PxrqZ1GYQOTt6MCyiNkaz4cC0tKrpQSunAB/+bjbObAI9NU89p2WQz66Tgvl0MDZqSrw9Q0ilLRpcqbGsJZwQViQptr/i7iA+/0iGhBBE4CHe0P8MQS+1frO1IH8798aIdUMz9rPy6F94Q3N+AFGhTUKCdnUGZYYDjLdwGQ41T7qB01Nk+VUh/9aySbgSngQTsWYoNx38SHWLMaZZrmFsxHP7HTPF88DnL8KD6HxTUqaKRK0+70AaamvHMU0EimA6FzQFpwnjnM4LIJ/gM/eM53on6+GIO4QHK1KG50aO4zRFStS9oGMhifQgKnk/GaXWDVYjXZdiLN1DTFO5KI1Bc74VGLq1Bo53//C6g+ZHNBSFEM8Pw55w3Gd14sOQbCJRo00t
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30637859-925a-4466-8881-08d799b73ee0
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 12:34:21.1240 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cNARAofJ42mt1LwnIXiv6Ji3jX4K/sNtc9bhqzIM5F4O+HIZw7W5BkmLLCigeeC597b5bc6RrG2/89Kwhr7nIjYZNuBqyMsTNoLhdOq6YcA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6SPR01MB0060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_043425_895699_AEAFF0A6 
X-CRM114-Status: GOOD (  10.45  )
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
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Igor Opanyuk <igor.opanyuk@toradex.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make panel definition generic and default to VESA VGA display timings.

Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

---

 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 29 ++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
index 6aa123cbdadb..af043526852e 100644
--- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
@@ -67,9 +67,36 @@ power {
 	};
 
 	panel: panel {
-		compatible = "edt,et057090dhu";
+		/*
+		 * edt,et057090dhu: EDT 5.7" LCD TFT
+		 * edt,et070080dh6: EDT 7.0" LCD TFT
+		 * logictechno,lt161010-2nhc: Cap. Touch Display 7" Parallel
+		 * logictechno,lt161010-2nhr: Res. Touch Display 7" Parallel
+		 * logictechno,lt170410-2whc: Cap. Touch Display 10.1" LVDS
+		 * tpk,f07a-0102: Capacitive Multi-Touch Display Fusion 7"
+		 * tpk,f10a-0102: Capacitive Multi-Touch Display Fusion 10"
+		 */
+		compatible = "panel-dpi";
 		backlight = <&bl>;
 		power-supply = <&reg_3v3>;
+		width-mm = <217>;
+		height-mm = <136>;
+
+		data-mapping = "bgr666";
+
+		panel-timing {
+			/* Default VESA VGA display timings */
+			clock-frequency = <25175000>;
+			hactive = <640>;
+			hback-porch = <48>;
+			hfront-porch = <16>;
+			hsync-len = <96>;
+			vactive = <480>;
+			vback-porch = <31>;
+			vfront-porch = <11>;
+			vsync-len = <2>;
+			pixelclk-active = <0>;
+		};
 
 		port {
 			panel_in: endpoint {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
