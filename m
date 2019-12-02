Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D91510E73D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 09:56:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PHUz85jnB9eG6lDCRKKfkofRxRENlv1raWkPT9ZiGC4=; b=soMJXCMe+eBDnh
	Mdei1QLBfib53XZ7xCDPpv+I+9T4boy+N4O2qiHV+XVUJpc5wUUMPy5Oj1A9itIVzzIaP3r6yXMCV
	sifO5LkPGoi2GaQvSEpbTkUPez8EiHfY24eiZWytFGKa3+YHuB2LrxuKyN28ABB7FMiMpXaqSQ6v2
	6MiqYzVqsyvxZNJi8V/WH8F2LXNVIXfogyfVlPCMVkijuZvKYJQIe6M/G8nx4i85A5kTJTctXXkgu
	medoYYQ8VaPqgsFWYSf+id0tXh5npY0TSjQ51KcHjcOiYNcQOlFCQ3BpmqFvrQAZ0sOMvXScHQ42z
	eo8RKbJ3ddU2dBM9FaMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibhVm-0002cJ-5Z; Mon, 02 Dec 2019 08:56:54 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibhVb-0002bV-78
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 08:56:45 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: TheEbjbVuoBPwYNFL8q8ktO9aQ/LtS0BlmyUmcU2uIPAFQQxVuGKhGtKGzXqtmuLx0+/QgV1VY
 +illVRzsS6+51HX4ZBeN0tKzL5nacU7FywnBlroM9wXQdPV5Txh3r5T1lZcEje1Q07quzknnN9
 hzABptK9eNAoMV/DPG/86lWKFRYMphktaYABkScisWcfOiRuaxMw69VBiOVpddthm+34cSx+RS
 dsinc4LYkG5GyFEzz7CJ8aDVj6eCHYZYKI6BDAPuhidukFt1SV2EjvmfbnuRE0qIB6A8wbl4MW
 0ws=
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; d="scan'208";a="57450838"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Dec 2019 01:56:39 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Dec 2019 01:56:38 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Dec 2019 01:56:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ha6mRad9TVy4w66cwqLXylWHrMTo/pYk9ozTbr4CJIUSV3uN0opGFBChGlHunYXHX7H/oNvaU/9cmgCPXzCz6mCYFbU2ufFC2Q6M2YjZhyFjdI+Yd/mCy3lw2l8+pgVY0fN3v8+4zjnln0SsjTpcRESIO461bK6Y7p5f3TKzqvwr0lOBxCfNsdgRKXjSxDAjwvbZy6nU6g/dJbh5AoLKjSUNSVXbIy+K+wME8zzMExcalOxUAz6X1ODTZYuHu8J8bfjmGWE+aEit86YZQ8287Q4jnS6BsDVaCFJvOyZz7p3R1Y9O/ZLFBWCT0w2kSgNh/coRteXWqPPvY+M9d1pzqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=scG65duMYj6zxPkrVo+dHca8qQNKPZFA8PWACuhzchQ=;
 b=Fm+q25srSsDZqWT7+doHYUGPHBcLeml26Vsk++VkD8p2iqHqjacD+joz7sqYkMJ8bvb3jleje0tTsLkVCZymxuPFje50Er37f7YXIrk++R3Ma2yHb+jFrSrw5Gwd561j7+MWPfdK9hCl2fD+0TMDg7fC0QCDXGRvUsQk9RQyKZGH+UT/PdzRnzfO41fD6GmJtmKgJSY3rqLGAvoP80AzLYhwsKRmJKZuttI3aqsXeVWLaQjNGsPlCo00gyyEIU/WcmQRfVABYeREJ1JIr5fhy3ZiUdVO8WomrsWYXTJIfC0IZS6MqKK2OlmbpLOjM3TmOWYHy9hWRKvQyNovifc4VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=scG65duMYj6zxPkrVo+dHca8qQNKPZFA8PWACuhzchQ=;
 b=JLr1bnhU41qzYbEA2ZsqzVUtZk7sXiSkO+U5u3bwI7zijWzHm20DlEi3aQ5UTVuiliP2J/FmEvH40EJ6m182NnI1k14vztnMr5qQ9AvGV5mbu01XlV1BRjpW6mZ5W+w5nCfUQN6imKoKXnynb1Bw4qMA6fE06efP9Ch+ucr6Ilg=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1482.namprd11.prod.outlook.com (10.172.34.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Mon, 2 Dec 2019 08:56:36 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 08:56:36 +0000
From: <Eugen.Hristev@microchip.com>
To: <robh+dt@kernel.org>, <Ludovic.Desroches@microchip.com>,
 <wsa@the-dreams.de>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <peda@axentia.se>
Subject: [PATCH 1/3] dt-bindings: i2c: at91: cosmetic formatting of compatible
 list
Thread-Topic: [PATCH 1/3] dt-bindings: i2c: at91: cosmetic formatting of
 compatible list
Thread-Index: AQHVqO5mfhsm9BhFXkuy2KXBFoWS5A==
Date: Mon, 2 Dec 2019 08:56:35 +0000
Message-ID: <1575276957-5615-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0037.eurprd02.prod.outlook.com
 (2603:10a6:208:d2::14) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 13cea678-c883-48f6-02cc-08d7770588fb
x-ms-traffictypediagnostic: DM5PR11MB1482:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1482AA396DE581538D7CCA7DE8430@DM5PR11MB1482.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0239D46DB6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(136003)(346002)(396003)(376002)(199004)(189003)(14454004)(305945005)(2906002)(6512007)(4326008)(54906003)(110136005)(316002)(71190400001)(71200400001)(5660300002)(6436002)(6486002)(2501003)(256004)(2201001)(36756003)(386003)(6506007)(102836004)(52116002)(2616005)(186003)(26005)(7736002)(86362001)(81156014)(50226002)(8676002)(8936002)(107886003)(25786009)(6116002)(81166006)(66556008)(66476007)(66446008)(64756008)(66946007)(99286004)(66066001)(478600001)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1482;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Z1jY+Nrbs6reBrYZ5IudK2ADo7Sjy/l+YIQ9qnZWS0pVGvn31c97NcCxyXrNqR8HYPZ7CnDkZHtmQWvJFud42Am5D+b2515y9a5/IFE0Gw0O9ykfSTpGjn/NCTfJtiT/hjSBQl/JleIRLB+jJPkWJSYffn4RdIbd21RrlK/p/gjhr5QS9l8fUlem+EYLOb025n/b3V71abnWn8YpoXQhBVD62bSuGEPW+Bpaku/TRTGzG1YfYyn9BvqqlCH3BR6KWhBXX2VBEC0+VhKABJUNgBYykl8tGC6m+MU/f5qZGy15F2OwEck65S2goIXsKmw0ChASC0yCwfyqUNwAbR79AO7Yz7bklwWe+SPjr/9r7KaE8J/c4H9AlNbpB3sQ1wm+Ju601T2/UplKHGEnIdnAxzkOQjcaCBjyjW42x1SBuJKSCHlO2DzK+BuiGT0qCZXI
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 13cea678-c883-48f6-02cc-08d7770588fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2019 08:56:35.7945 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ANPejSohsljpjZ+PjhPbz9vC+q2/uCRzQNRGyR9CvRvpA1ulL7c8b+PDrSY8m51IkEDugWU/e8nYHNog/T/cIY7vjr1M0LsOplXY2VUIGQo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1482
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_005643_301065_FC1ACA0C 
X-CRM114-Status: UNSURE (   6.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Eugen.Hristev@microchip.com, Codrin.Ciubotariu@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Format the list of compatibles with one compatible per line.

Suggested-by: Peter Rosin <peda@axentia.se>
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 Documentation/devicetree/bindings/i2c/i2c-at91.txt | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-at91.txt b/Documentation/devicetree/bindings/i2c/i2c-at91.txt
index 2210f43..d35cd63 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-at91.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-at91.txt
@@ -1,10 +1,16 @@
 I2C for Atmel platforms
 
 Required properties :
-- compatible : Must be "atmel,at91rm9200-i2c", "atmel,at91sam9261-i2c",
-     "atmel,at91sam9260-i2c", "atmel,at91sam9g20-i2c", "atmel,at91sam9g10-i2c",
-     "atmel,at91sam9x5-i2c", "atmel,sama5d4-i2c", "atmel,sama5d2-i2c" or
-     "microchip,sam9x60-i2c"
+- compatible : Must be one of:
+	"atmel,at91rm9200-i2c",
+	"atmel,at91sam9261-i2c",
+	"atmel,at91sam9260-i2c",
+	"atmel,at91sam9g20-i2c",
+	"atmel,at91sam9g10-i2c",
+	"atmel,at91sam9x5-i2c",
+	"atmel,sama5d4-i2c",
+	"atmel,sama5d2-i2c",
+	"microchip,sam9x60-i2c".
 - reg: physical base address of the controller and length of memory mapped
      region.
 - interrupts: interrupt number to the cpu.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
