Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96145F73A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 13:14:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OyU7hxzx4TkhWb6GDF3Q5nT7N1NogQgwfvv0zNpsqqM=; b=fbfzdnXObiVOt1
	M0DWokCOc628oypkz9cWn0AZ9HIhMEfeaWaoby+OFblpeMbhRJzeGO6ONKDlm8o43nH162/ozjvn/
	mcDQSq+e6XvaXGd+KwlPoaacoA8p5EQaTCSk9CE2dKjuZbPu9Nnxfu8Ec1hPPefy9GQn1bZ/9eeoh
	r/Ii8JMagXRM1Qf1bP837hr7g21QBpxi4TgAYMm+TR0DD0PlCo2gnHg9q50YxVx1FY2vmVQ89jyie
	Dlza+Bj0g/gdA0C9FHqzrnfsWlKttmjO7PZ8aomoB5rSF1oAAsOUhFJYGfDu3THJu4ly2qe8qJ1Zy
	1XUheMYcd6FbP2Gc+Z6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU8aB-0003Gy-TT; Mon, 11 Nov 2019 12:14:11 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU8Zd-0002wY-1n
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 12:13:38 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 3vdZptGtOCmUpe4eyeIo3UeYY1EVj4duAGSJ8JzpSTS6YyX9IFxGSn5zHmMs6HXqGu+MNght/U
 Qcuc6O36rOVq3HJKYlFeVy9u1wcAIbxbWZm83vvH+M3QphCJNrTNa+gZz/lgnfi5OipRKQQTbs
 rFL4cY8DP3w6CrpelGRRmrCiOMy0SmoV1X+CAr0eJp1ruQKPrwlVP+ZNgNK49godjGhaQy6Fr0
 RQw+ng8JDLrzd2lyLPaMX2Mx3YDt81Xr3t/0M+IOlveKvufFeirnYW4xFd0EGvF4HPpKDLmu2j
 4Jw=
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="56481268"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Nov 2019 05:13:34 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 11 Nov 2019 05:13:33 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 11 Nov 2019 05:13:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cY6Rcn67HVAM0b1RnIX2Cw8P3VuBWziWmoXPdrHQsqtARUXHAzbzcCZrFXBhelkbGHbZLQ9sT7/MWM3ENSLVqi14bBvxp7XMaMQbulE4c84tVn+tf1yH/tUIesNwKo1GJpXmJqXN7J36PATZ7mITGRENgdG15kmWrtISUuJjoIDxfNdL5U0k5MEBPcXgVsaIcXXWC7YqR7oqhg+F06fDF04NfXv2p5esC34MPo+OELslvWd+p+7N8egZ8W4v5Sibia43Zj2kRnbK7xI5Vt1E0qpP3RCMhB42wLjJCoxO+qKIB/qVFRB15SUqi9vjGvfbeCrdGI6Jv+wRNHT8AzANtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hvK3Vb7gsUQMnOuGQN9Ormb8xgDwFzYQMWqiZ6uLioE=;
 b=JPOpAAN3PLjX4cFJTOuA56bu3Qo5E4K93FSwqWjPPYA+pG51XjiS1f0j1dyTWhySQMocLCZN6/KrBAnfZA/0USJIdCu4NFxJ5i82orvHpltH71siIFZEmYYMAp9vFMXuiBqz5DzMdIqcAMI7lUSEDvWiGhMQ8u9FF+YjS60KkDIIg5JkflGDFrFJszgPvT4xCwM1/THlyf5/g9B7nJVuCyPq14O2t11CyCQFJ3QOW3fOJWGvPayQ342d6nP8gmklGT0ef/5LbupMAnnvZBbmBfrkUzqnckYXEAyNdTTwc+jaeBJ6PMlAE7G+ubL5Fb3Fpy+U8r1B+YBetAjbZEMbIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hvK3Vb7gsUQMnOuGQN9Ormb8xgDwFzYQMWqiZ6uLioE=;
 b=O/JdrPV3YzYfMwffqUo0cg3+P+z/nDwf0uuwc2YpkkoiiYZzv5GFHJe/BsGaZJS5jS5+tysdadq0FWbmvIliMK/cx+RsOrJy7MkEkS96OT84ew3qV2pPyZsdabFxn12zy1YsiE4RAn2inGHkpCOr/fpMyt12M0MCaFptMUM00Kw=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0073.namprd11.prod.outlook.com (10.164.155.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.24; Mon, 11 Nov 2019 12:13:33 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8%4]) with mapi id 15.20.2430.027; Mon, 11 Nov 2019
 12:13:33 +0000
From: <Eugen.Hristev@microchip.com>
To: <robh+dt@kernel.org>, <linux@roeck-us.net>, <wim@linux-watchdog.org>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <linux-watchdog@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 2/3] dt-bindings: watchdog: sama5d4_wdt: add
 microchip,sam9x60-wdt compatible
Thread-Topic: [PATCH v3 2/3] dt-bindings: watchdog: sama5d4_wdt: add
 microchip,sam9x60-wdt compatible
Thread-Index: AQHVmIlwyvo69uPMcE+cGm1AIKjkAA==
Date: Mon, 11 Nov 2019 12:13:33 +0000
Message-ID: <1573474383-21915-2-git-send-email-eugen.hristev@microchip.com>
References: <1573474383-21915-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1573474383-21915-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR05CA0060.eurprd05.prod.outlook.com
 (2603:10a6:208:be::37) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 34ccb9c2-5155-44fc-162f-08d766a09256
x-ms-traffictypediagnostic: DM5PR11MB0073:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB007329513CBC922E8EDE4657E8740@DM5PR11MB0073.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:669;
x-forefront-prvs: 0218A015FA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(396003)(39860400002)(346002)(136003)(199004)(189003)(14454004)(6506007)(386003)(76176011)(110136005)(102836004)(66476007)(66556008)(64756008)(66446008)(478600001)(3846002)(99286004)(36756003)(6116002)(6436002)(66946007)(305945005)(66066001)(7736002)(5660300002)(25786009)(6486002)(86362001)(4744005)(52116002)(316002)(71200400001)(71190400001)(2201001)(6512007)(256004)(446003)(11346002)(2906002)(81166006)(81156014)(4326008)(186003)(50226002)(8936002)(8676002)(107886003)(476003)(2616005)(486006)(26005)(2501003)(14444005)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0073;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EMk3dza6zlq9fzGIIPX/VpQAKNkfiRAYXnsumg5kz5Z1u7wI5jsFV4fgHPp7jqFVfkvy3qUgREaHL5xqw3gAmAv9Q+fkl3fog0ExpgQ/r0jJCHTcSruUZE4ZQQlC35uXEuN+lsvs63R3wl1kPCua+ZrKaiq3WwQCU8JgoU+/3AqvFtMRqbT6z/dEiKI+gtCJvrtF/g54bMLbGopxReT5xQbDMwPef42KIhpmqGWdXDq9UK9VMVCP98akwPgm1oDqMuvKYM9zKy6spiR3fHQy+Frp/H8sLQkXs0ioX31oPM2A/nqHc0+WKD98ti/48+N2BJeFbxXlIBSE2AnlNTqy20QeaW3unG7qKTamVNt9itZURjae9V7DwFp2tamH12OllLQVuGF6DbJU7l3g25LmL5WCy+KbqgbuP8WiB9PAEUUEfdq1FGcZ489K9JHMZd3o
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 34ccb9c2-5155-44fc-162f-08d766a09256
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 12:13:33.6278 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UVqnDzvqjb+Df1w6o9zWum9t6MlPahhTijP0OLV9fTa+FUkNnn0Fe5LLxP8v/KVBB25Wa6V7IvQjiaX3FZ1/oaiqrjSe4/LVGnp4zeBd2Bk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_041337_099329_FA57B805 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

The Atmel sama5d4_wdt needs to be compatible with microchip,sam9x60-wdt
The sama5d4_wdt driver is updated to work with both hardware blocks
(sama5d4/sama5d2 and sam9x60 based blocks)

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
---
 Documentation/devicetree/bindings/watchdog/atmel-sama5d4-wdt.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/watchdog/atmel-sama5d4-wdt.txt b/Documentation/devicetree/bindings/watchdog/atmel-sama5d4-wdt.txt
index 4fec1e3..44727fc 100644
--- a/Documentation/devicetree/bindings/watchdog/atmel-sama5d4-wdt.txt
+++ b/Documentation/devicetree/bindings/watchdog/atmel-sama5d4-wdt.txt
@@ -1,7 +1,7 @@
 * Atmel SAMA5D4 Watchdog Timer (WDT) Controller
 
 Required properties:
-- compatible: "atmel,sama5d4-wdt"
+- compatible: "atmel,sama5d4-wdt" or "microchip,sam9x60-wdt"
 - reg: base physical address and length of memory mapped region.
 
 Optional properties:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
