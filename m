Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7F47A680
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 13:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eHSMjajYM9Fv+GqyNQ4qVp2NRfGzSldLCV1CbBIhdLo=; b=UOThj7PJO4WNDZ
	QClBVzXIkvJEC4NumwBuWAhgoYKU5MJTpSgO9cfZg1JQhOAaw8Lqbj44bNs1wz2YxOtuEOx99SN0v
	YpvREcEp7FQE1SmBMLC0iXjM5s9vKnTcQsnHorDEni60wQ/mXL2Cu7XWUHRx7CKtNRNbhh/YrM+68
	dLH8u40r4acuwNxGShqUoUAQt/osM9su2y37Sf7d4h7CpT87Vm1s31MT/SV7Yv2RzcBHoVmpJjr5Q
	flr7gvrDCKf5eqb1fLXQtECqQ77pNG2b/gcfZovIZ6Fqfr6sqsFcdQgJ/i+qcJmAeIBP2mBznU5iN
	zH1plrc58IXNV6eMzttg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsPxR-0006jb-Sh; Tue, 30 Jul 2019 11:06:17 +0000
Received: from mail-eopbgr00079.outbound.protection.outlook.com ([40.107.0.79]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsPxK-0006ir-GG
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 11:06:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YtEgqqNOK9grN+ixPrUZDvvGNHGJ5ob3le9VG7yBsZxQoJwAztczskn1Bw4r2YfeuWLlm/rYxiCd3i3tXuKeOOllo9P/3s4/uRZU/lWbCvZw3f4CGgOZo8xKL672oNBzW4MX0L5h2pfDcrPps7S3p+CUiCojbWShAfkvB64+Jki9fSyGXgM7o/KDkYJ6/hAcK8lkrYoYzH2WZps1RFzJudqoLbZNnaYGyhn0agC0GYUUOM942FzxQBpzLu8si2V/PtKvYSIdvn2+eS3ZlzwXWChl9cdqnEWeb9gM1nTHLzmTxI9kEbOc2a3N7BavxpB71XXqhdvZ/+zMPCKWWfJdUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TOVChCNPf03rt5vvBmjc4kH7HsT1pfWCIiaf7gC9Mew=;
 b=X/WRJ79485+/QEKOgZd0ybEQveCtYgKof9qxkp5oOWS6YEq3jGQvRDPvNzrVJ/o8+Jzfosuj2HNBaMFAXHoSt9f8KCs8sCvSF3IL0Mi/SepNaA8RwZlS0kTKSdUMg8rQlURSAt0xm8Sb90DNTRTv7rl6FWtSVB3FQG2opOFo/uT8eR8RBwYKziaRGv/lJAddQ516PQM44qPv6Wb9HJwsIQUZ/KcZKl5eD1neI4duCNi0AKZC4LsKOnzGp6bDpq+9AzF5YFsZ0O7nln1RqtmQYML/ljXHi2oZJNadEUfM65SEYzwhsVC10DBUCOgl3Udx5sfNigB4OXYfWPGiEexKIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=kococonnector.com;dmarc=pass action=none
 header.from=kococonnector.com;dkim=pass header.d=kococonnector.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KoCoConnector.onmicrosoft.com; s=selector2-KoCoConnector-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TOVChCNPf03rt5vvBmjc4kH7HsT1pfWCIiaf7gC9Mew=;
 b=P6Ts9oO00Gkb2ooiVlXSCZWNZnXcmlYQYPFgD/0ZsDBjtuQpx1VapFSAsJ4NcnfkZbufqxoEmUxml+NOzKJI/M9idmbAX3hpDK2Crruv9wUrg6x48TnHcT0RDA60bVtGk2AX4gZbY+90CrWlNLtMHaurKj3a3wb5Ys+KnjEn4Ss=
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com (10.170.212.23) by
 DB6PR0902MB1989.eurprd09.prod.outlook.com (10.170.212.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.12; Tue, 30 Jul 2019 11:06:05 +0000
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::c169:d07:269b:2980]) by DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::c169:d07:269b:2980%7]) with mapi id 15.20.2136.010; Tue, 30 Jul 2019
 11:06:04 +0000
From: Oliver Graute <oliver.graute@kococonnector.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: [PATCHv3 0/1] arm64: dts: add basic DTS for imx8qm-rom7720 board
Thread-Topic: [PATCHv3 0/1] arm64: dts: add basic DTS for imx8qm-rom7720 board
Thread-Index: AQHVRsbHlxi2ybX2Tka2yF2dw+gOyg==
Date: Tue, 30 Jul 2019 11:06:04 +0000
Message-ID: <20190730110140.17247-1-oliver.graute@kococonnector.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM7PR02CA0010.eurprd02.prod.outlook.com
 (2603:10a6:20b:100::20) To DB6PR0902MB2072.eurprd09.prod.outlook.com
 (2603:10a6:6:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oliver.graute@kococonnector.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [193.47.161.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e145148e-287c-4ee8-fe06-08d714ddea1c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB6PR0902MB1989; 
x-ms-traffictypediagnostic: DB6PR0902MB1989:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <DB6PR0902MB19891EB91C047CAD935E90D7EBDC0@DB6PR0902MB1989.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0114FF88F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(39840400004)(366004)(396003)(346002)(199004)(189003)(66556008)(966005)(4326008)(81166006)(8676002)(316002)(1730700003)(81156014)(14454004)(36756003)(52116002)(53936002)(2501003)(256004)(54906003)(86362001)(68736007)(4744005)(6916009)(508600001)(305945005)(7736002)(476003)(25786009)(50226002)(2906002)(64756008)(7416002)(6486002)(6506007)(71190400001)(6436002)(44832011)(102836004)(8936002)(5640700003)(66066001)(6512007)(6306002)(486006)(71200400001)(66946007)(186003)(26005)(3846002)(99286004)(66446008)(2616005)(1076003)(5660300002)(6116002)(386003)(66476007)(2351001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0902MB1989;
 H:DB6PR0902MB2072.eurprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kococonnector.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XiXxV9Zg9U4H26uZJ6J+RrYRIMk1FkdSBDJLNFbNzezTC9fo2XPa2KGTCM9iwkjkyiJuqTzMtKhzrKG/fODaWqUWNsFGEufav6ntyMoGstD9yEFFj7Ld1+VbkfxLfRg2EoGzvzgNwXgj0cRhBY/+oRO0hu98EoU5YPPcTzDLVPONPXZrwkE1SYtBkM4p2ROLCnZjPZqavAZe+Y/RhYxSAycbQnabWOeZELNvVY/tlxTwly73tsgo6e/NCwRvgjMLW98bF+526/lY6qw980d+8FOVGTTz7ulfNdCRVG42tGYoOcEqLz7QJt2j9GrXbanRO3HDrT+U8jd3ZvJrpPVo0QwfduoeZt9WSAIng255+Ld4HP8UOqo38BCzwz0fr4rnR5iZk74V7gP7211OcZTeTF15RQZt9kdZztjpEwgqObk=
MIME-Version: 1.0
X-OriginatorOrg: kococonnector.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e145148e-287c-4ee8-fe06-08d714ddea1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2019 11:06:04.7459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 59845429-0644-4099-bd7e-17fba65a2f2b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oliver.graute@kococonnector.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0902MB1989
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_040610_592334_5942985A 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>,
 Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Oliver Graute <oliver.graute@kococonnector.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is ontop of Aisheng Dongs clock driver and imx8 changes for the
imx8qm

https://patchwork.kernel.org/patch/11046313/
https://patchwork.kernel.org/patch/11046343/

This patch is based on next-20190716

I need some hints and review why the imx8qm-rom-7720 just stops at "Starting
kernel ..." with these changes. The device tree is similar to imx8qm-mek.dts.

Oliver Graute (1):
  arm64: dts: add basic DTS for imx8qm-rom7720-a1 board

 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8qm-rom7720-a1.dts  | 228 ++++++++++++++++++
 2 files changed, 229 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
