Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC97A29233
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 09:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GLaBKba4MMZHWDpJmSjga4JSJkzHGcUa952NX0mn46Y=; b=nQAQH+QJaoefX9
	jGjrKJkPt+mtu6IofitFuHTb5by7mrDab12v8U38Kw64OtGH5P/NtUyskPB2WaYN1BmpOXm/7a9iR
	xBU8C0cGJ4YA/ZfZ1c9vNiMZAB389CI6XFCCoWSJ3kbicgM/y3Fohn8eW942Q5OZSdGSrPln/mcJn
	8qQ80NeK9FIWPekR1uxjzBRNTlFBf2iFwtwahqJuhkxzAD/xkOXN4ReDc88CziGsqLF/Qa/j46aOC
	Zir1/Ql2mgFvj1SnwfrOxCBuqEtauLWsa6RT8GP1OD1DkybkZ4rJc5PbrmvQogyliWVPHRnmc1G9V
	jeh5yTjySbFeR7nt4E+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU56E-0002S0-6V; Fri, 24 May 2019 07:58:46 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU565-0002R3-65
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 07:58:39 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,506,1549954800"; d="scan'208";a="34294288"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 24 May 2019 00:58:33 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.108) with Microsoft SMTP Server (TLS)
 id 14.3.352.0; Fri, 24 May 2019 00:57:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lyr5m/5RftE8r2nFYQaJCpEXnIo72l8HmQKzK8vOaOs=;
 b=Bl3y/gyeuLUfcC5d2aJEP1aslMGPJ1UFx/4MDkB/32/lzKFyDiJ49ozqNM6K5JCu4x2xuQirHHZayS9w9r/Yx2r1FmFOwLa/jOR+Ehf5WCAAKyjoIbGHed2znz89gDbeTnnNrDzLKmI4p/SdRJOAZxDoJKvzTN5YvCfBcZwVvUE=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1996.namprd11.prod.outlook.com (10.168.107.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Fri, 24 May 2019 07:11:25 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::2807:f606:3b7c:cce9]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::2807:f606:3b7c:cce9%9]) with mapi id 15.20.1922.018; Fri, 24 May 2019
 07:11:25 +0000
From: <Eugen.Hristev@microchip.com>
To: <b29396@freescale.com>, <Nicolas.Ferre@microchip.com>,
 <mkl@pengutronix.de>, <davem@davemloft.net>, <linux-can@vger.kernel.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <wg@grandegger.com>, <linux-arm-kernel@lists.infradead.org>,
 <Ludovic.Desroches@microchip.com>, <alexandre.belloni@bootlin.com>
Subject: [PATCH RESEND RESEND] can: m_can: implement errata "Needless
 activation of MRAF irq"
Thread-Topic: [PATCH RESEND RESEND] can: m_can: implement errata "Needless
 activation of MRAF irq"
Thread-Index: AQHVEf/m6PobHKfYsEKffOeARNkxQA==
Date: Fri, 24 May 2019 07:11:25 +0000
Message-ID: <1558681595-15736-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LNXP265CA0080.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:76::20) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ba66e6f0-b241-43f3-3855-08d6e0170885
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:DM5PR11MB1996; 
x-ms-traffictypediagnostic: DM5PR11MB1996:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <DM5PR11MB1996254C790B31EBDF720277E8020@DM5PR11MB1996.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0047BC5ADE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(366004)(346002)(39860400002)(376002)(189003)(199004)(110136005)(73956011)(25786009)(99286004)(186003)(52116002)(66946007)(66446008)(64756008)(68736007)(26005)(66556008)(66476007)(6436002)(102836004)(3846002)(6116002)(4326008)(386003)(6506007)(7736002)(8676002)(6306002)(81166006)(81156014)(5660300002)(8936002)(305945005)(50226002)(316002)(6486002)(2906002)(6512007)(476003)(66066001)(53936002)(966005)(72206003)(2201001)(86362001)(486006)(2616005)(14454004)(478600001)(71200400001)(71190400001)(2501003)(14444005)(36756003)(256004)(107886003)(921003)(1121003)(6606295002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1996;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 22F0XjZuDjn12NcyRn2x29UyANMEIcfMaCuWdv57ZdX6davSlQHEDQCFR+dmij//uGJrZQSil0SaGk4Q8AWdv72TzGmeP1niacmTZe+pW8OOPwCcmmYyrgm3MMcp722WMFQmmmx/Pwm2gINJZMqqM2SNEV7D4mMjU5zGZOxtxp12kLUDNs6E0SOvL4aqjTOX4wNTIYF5J5RNRleD+pZWtvHjaHE+yWNvd7GGm1q982EgyujZtbZh+NVvYwIkYlqhTGnpFWtNM9xwZVNunrhRDoydD8FJ5UW0FZsXi73pUKKPyOn9xO5KfxzoEQAf031EYAyWGmx7z1HtZwqDpVmMdKdfJt5UWUWIvfFo7fy1RLGaSBk8C95X+NN8Zf7LEN3Eksszv4eL58xM02HYzZHp8wAHTpwlDCOH7Nfxa3gjEt0=
Content-ID: <097912EB2D7BE74C9D3E6CCA42B7A573@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ba66e6f0-b241-43f3-3855-08d6e0170885
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2019 07:11:25.4294 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1996
X-OriginatorOrg: microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_005837_261930_77EC1CE7 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRXVnZW4gSHJpc3RldiA8ZXVnZW4uaHJpc3RldkBtaWNyb2NoaXAuY29tPg0KDQpEdXJp
bmcgZnJhbWUgcmVjZXB0aW9uIHdoaWxlIHRoZSBNQ0FOIGlzIGluIEVycm9yIFBhc3NpdmUgc3Rh
dGUNCmFuZCB0aGUgUmVjZWl2ZSBFcnJvciBDb3VudGVyIGhhcyB0aGV2YWx1ZSBNQ0FOX0VDUi5S
RUMgPSAxMjcsIGl0IG1heSBoYXBwZW4NCnRoYXQgTUNBTl9JUi5NUkFGIGlzIHNldCBhbHRob3Vn
aCB0aGVyZSB3YXMgbm8gTWVzc2FnZSBSQU0gYWNjZXNzIGZhaWx1cmUuDQpJZiBNQ0FOX0lSLk1S
QUYgaXMgZW5hYmxlZCwgYW4gaW50ZXJydXB0IHRvIHRoZSBIb3N0IENQVSBpcyBnZW5lcmF0ZWQu
DQpXb3JrIGFyb3VuZDoNClRoZSBNZXNzYWdlIFJBTSBBY2Nlc3MgRmFpbHVyZSBpbnRlcnJ1cHQg
cm91dGluZSBuZWVkcyB0byBjaGVjayB3aGV0aGVyDQogTUNBTl9FQ1IuUlAgPSAnMScgYW5kIE1D
QU5fRUNSLlJFQyA9ICcxMjcnLg0KSW4gdGhpcyBjYXNlLCByZXNldCBNQ0FOX0lSLk1SQUYuIE5v
IGZ1cnRoZXIgYWN0aW9uIGlzIHJlcXVpcmVkLg0KVGhpcyBhZmZlY3RzIHZlcnNpb25zIG9sZGVy
IHRoYW4gMy4yLjANCg0KRXJyYXRhIGV4cGxhaW5lZCBvbiBTYW1hNWQyIFNvQyB3aGljaCBpbmNs
dWRlcyB0aGlzIGhhcmR3YXJlIGJsb2NrOg0KaHR0cDovL3d3MS5taWNyb2NoaXAuY29tL2Rvd25s
b2Fkcy9lbi9EZXZpY2VEb2MvU0FNQTVEMi1GYW1pbHktU2lsaWNvbi1FcnJhdGEtYW5kLURhdGEt
U2hlZXQtQ2xhcmlmaWNhdGlvbi1EUzgwMDAwODAzQi5wZGYgY2hhcHRlciA2LjINCg0KUmVwcm9k
dWNpYmlsaXR5OiBJZiAyIGRldmljZXMgd2l0aCBtX2NhbiBhcmUgY29ubmVjdGVkIGJhY2sgdG8g
YmFjaywNCmNvbmZpZ3VyaW5nIGRpZmZlcmVudCBiaXRyYXRlIG9uIHRoZW0gd2lsbCBsZWFkIHRv
IGludGVycnVwdCBzdG9ybSBvbiB0aGUNCnJlY2VpdmluZyBzaWRlLCB3aXRoIGVycm9yICJNZXNz
YWdlIFJBTSBhY2Nlc3MgZmFpbHVyZSBvY2N1cnJlZCIuDQpBbm90aGVyIHdheSBpcyB0byBoYXZl
IGEgYmFkIGhhcmR3YXJlIGNvbm5lY3Rpb24uIEJhZCB3aXJlIGNvbm5lY3Rpb24gY2FuIGxlYWQN
CnRvIHRoaXMgaXNzdWUgYXMgd2VsbC4NCg0KVGhpcyBwYXRjaCBmaXhlcyB0aGUgaXNzdWUgYWNj
b3JkaW5nIHRvIHByb3ZpZGVkIHdvcmthcm91bmQuDQoNClJldmlld2VkLWJ5OiBMdWRvdmljIERl
c3JvY2hlcyA8bHVkb3ZpYy5kZXNyb2NoZXNAbWljcm9jaGlwLmNvbT4NClNpZ25lZC1vZmYtYnk6
IEV1Z2VuIEhyaXN0ZXYgPGV1Z2VuLmhyaXN0ZXZAbWljcm9jaGlwLmNvbT4NCi0tLQ0KDQpIZWxs
bywNCg0KVGhpcyBwYXRjaCB3YXMgaW5pdGlhbGx5IHNlbnQgb24gTWFyY2ggNHRoOg0KaHR0cHM6
Ly9tYXJjLmluZm8vP2w9bGludXgtY2FuJm09MTU1MTcxMDY2MDAzNzIzJnc9Mg0KUmVzZW5kIG9u
IEFwcmlsIDJuZDoNCmh0dHBzOi8vbWFyYy5pbmZvLz9sPWxpbnV4LWNhbiZtPTE1NTYxNzQwOTgy
NjI3MSZ3PTINCg0KSXMgdGhlcmUgYW55IHJlYXNvbiB3aHkgdGhlcmUgaXMgbm8gYW5zd2VyID8g
QW0gSSBub3Qgc2VuZGluZyB0aGlzIHBhdGNoDQp0byB0aGUgcmlnaHQgcGVvcGxlPw0KDQpUaGFu
ayB5b3UsDQpFdWdlbg0KDQogZHJpdmVycy9uZXQvY2FuL21fY2FuL21fY2FuLmMgfCAyMSArKysr
KysrKysrKysrKysrKysrKysNCiAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKQ0KDQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvY2FuL21fY2FuL21fY2FuLmMgYi9kcml2ZXJzL25ldC9j
YW4vbV9jYW4vbV9jYW4uYw0KaW5kZXggOWI0NDk0MC4uZGViMjc0YSAxMDA2NDQNCi0tLSBhL2Ry
aXZlcnMvbmV0L2Nhbi9tX2Nhbi9tX2Nhbi5jDQorKysgYi9kcml2ZXJzL25ldC9jYW4vbV9jYW4v
bV9jYW4uYw0KQEAgLTgyMiw2ICs4MjIsMjcgQEAgc3RhdGljIGludCBtX2Nhbl9wb2xsKHN0cnVj
dCBuYXBpX3N0cnVjdCAqbmFwaSwgaW50IHF1b3RhKQ0KIAlpZiAoIWlycXN0YXR1cykNCiAJCWdv
dG8gZW5kOw0KIA0KKwkvKiBFcnJhdGEgd29ya2Fyb3VuZCBmb3IgaXNzdWUgIk5lZWRsZXNzIGFj
dGl2YXRpb24gb2YgTVJBRiBpcnEiDQorCSAqIER1cmluZyBmcmFtZSByZWNlcHRpb24gd2hpbGUg
dGhlIE1DQU4gaXMgaW4gRXJyb3IgUGFzc2l2ZSBzdGF0ZQ0KKwkgKiBhbmQgdGhlIFJlY2VpdmUg
RXJyb3IgQ291bnRlciBoYXMgdGhlIHZhbHVlIE1DQU5fRUNSLlJFQyA9IDEyNywNCisJICogaXQg
bWF5IGhhcHBlbiB0aGF0IE1DQU5fSVIuTVJBRiBpcyBzZXQgYWx0aG91Z2ggdGhlcmUgd2FzIG5v
DQorCSAqIE1lc3NhZ2UgUkFNIGFjY2VzcyBmYWlsdXJlLg0KKwkgKiBJZiBNQ0FOX0lSLk1SQUYg
aXMgZW5hYmxlZCwgYW4gaW50ZXJydXB0IHRvIHRoZSBIb3N0IENQVSBpcyBnZW5lcmF0ZWQNCisJ
ICogVGhlIE1lc3NhZ2UgUkFNIEFjY2VzcyBGYWlsdXJlIGludGVycnVwdCByb3V0aW5lIG5lZWRz
IHRvIGNoZWNrDQorCSAqIHdoZXRoZXIgTUNBTl9FQ1IuUlAgPSDigJkx4oCZIGFuZCBNQ0FOX0VD
Ui5SRUMgPSAxMjcuDQorCSAqIEluIHRoaXMgY2FzZSwgcmVzZXQgTUNBTl9JUi5NUkFGLiBObyBm
dXJ0aGVyIGFjdGlvbiBpcyByZXF1aXJlZC4NCisJICovDQorCWlmICgocHJpdi0+dmVyc2lvbiA8
PSAzMSkgJiYgKGlycXN0YXR1cyAmIElSX01SQUYpICYmDQorCSAgICAobV9jYW5fcmVhZChwcml2
LCBNX0NBTl9FQ1IpICYgRUNSX1JQKSkgew0KKwkJc3RydWN0IGNhbl9iZXJyX2NvdW50ZXIgYmVj
Ow0KKw0KKwkJX19tX2Nhbl9nZXRfYmVycl9jb3VudGVyKGRldiwgJmJlYyk7DQorCQlpZiAoYmVj
LnJ4ZXJyID09IDEyNykgew0KKwkJCW1fY2FuX3dyaXRlKHByaXYsIE1fQ0FOX0lSLCBJUl9NUkFG
KTsNCisJCQlpcnFzdGF0dXMgJj0gfklSX01SQUY7DQorCQl9DQorCX0NCisNCiAJcHNyID0gbV9j
YW5fcmVhZChwcml2LCBNX0NBTl9QU1IpOw0KIAlpZiAoaXJxc3RhdHVzICYgSVJfRVJSX1NUQVRF
KQ0KIAkJd29ya19kb25lICs9IG1fY2FuX2hhbmRsZV9zdGF0ZV9lcnJvcnMoZGV2LCBwc3IpOw0K
LS0gDQoyLjcuNA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
