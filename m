Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 127049F892
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 05:06:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXdCBMDj7tRfWDsFAHOWyGqqoDpgI219i97NOjjb524=; b=cmOnJLv5qfzgnl
	ZYlXCrz2LOdWf05TMDnfmfrjbPFmEqOY7mwIA/G9sBCL9AF1NUNj7lJgacH/stVrvQH7Yp7/I9Idg
	aLTR9uJCZvGJ9z010tmnbJdfTpVT7xctb0gBwVAvwTUdUf4QsKHU7Gx/zgCFFsSH6x9OVdTK+MiIp
	TgbtFjctqxI1g1pa8eQg8Qt80jrBTBFcjKWjdQ7OSErWqDUTTo9uqFe6JKDMrw49CL7i9Gi899ICK
	VhlVBEia02Tt5vCvDmJg2ZWcNQ/RdniLUlimvVqEuJKHQYieTXO3WxjiS/E1ajanQHA1QBABHjyxK
	/EbGZz/t5Pyh/iGB4n+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2oHo-0005aR-Mr; Wed, 28 Aug 2019 03:06:16 +0000
Received: from mail-eopbgr30056.outbound.protection.outlook.com ([40.107.3.56]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2oHG-0005L5-BY
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 03:05:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nmgqp8MC71ajHnr2cb4vL3J514x1jf3Qur3xgzHoSVBliCFeHqV2VPIM40gnhcaK3ukrQw8E57GbiZw0YwVvIF+SgMSVu38EGTd4Q2N/mOSN9hPEHPd+yycq1joLzeGKrnf5+wI7Gc71RUx7lOqAUH9AfBWI5uPc2kOumAJfWNovzZeZcgbdg4ouSMde/RvWf/T65fRTxkeB8cSQqzXzgaW1gNXhBXVeM1Yg9EQO4W7/uQe6ui0ql7nCrx2Eu5bLn59W66gpOIGc9kcfWUnBXLwgTMpqYk09eUzxpdIz/cPz9VfyaZSEFPD40lPKp9DmiCePQheNjLpoPYz+kR7HKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UtfcC8K1zZKCBZL00ffQhG8V5YZgdlb/xPncRZY1wRg=;
 b=gMQU09b49AZ/T7jLiv7d90QWcTUAhZhphPYJ0xNuvGici5+VoETb1JVCJJ3w1Gt4QmnvOb1gDDE4RfinctrQUsLL1JhdDQIGLoM0UmLggHd12g7pQUo/kBNA5bpnwv55Xzz6C/FGntCfRMN20PLFweaayuUoldAZIO9YlGBOFMQdb84o6mZWzSri4yZRueGoehOE97dUohJ2+3id3rc6L49V4WuNWKwNwWSdvMkpSaqTIlcuT0bcSBNcmuldh6b6eLhj3aKdgfqzST95bBHRceh4mLamU+QxCbbb5VQ6GQWty6eQo5YWiZj23u0c688eY4vDbNziBgiwlTtGOZCSRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UtfcC8K1zZKCBZL00ffQhG8V5YZgdlb/xPncRZY1wRg=;
 b=YgdrSN0DmKxHQNAHADCNzHHd08jB5/W83txxNxUy1J9dB/8RCTHEuhQ4a0R+AgkXBXZWezp99MoaWeKcI1cn/i+o0D+AfyafJy/T0JckCSKOD9Kos6cwGNzxhnUViYceGx4xIK2C7HXiU7m8X59H5OQgPgLopvpKd6G+J/6LhEo=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4633.eurprd04.prod.outlook.com (52.135.138.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Wed, 28 Aug 2019 03:05:39 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f%4]) with mapi id 15.20.2199.021; Wed, 28 Aug 2019
 03:05:39 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "mark.rutland@arm.com" <mark.rutland@arm.com>, "will@kernel.org"
 <will@kernel.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH V8 2/3] Documentation: admin-guide: perf: add i.MX8 ddr pmu
 user doc
Thread-Topic: [PATCH V8 2/3] Documentation: admin-guide: perf: add i.MX8 ddr
 pmu user doc
Thread-Index: AQHVXU14VR6r+19rHEqH7pzjIUBnLA==
Date: Wed, 28 Aug 2019 03:05:39 +0000
Message-ID: <20190828030305.7190-2-qiangqing.zhang@nxp.com>
References: <20190828030305.7190-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20190828030305.7190-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR06CA0118.apcprd06.prod.outlook.com
 (2603:1096:1:1d::20) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 51cab373-ff7d-4388-e91e-08d72b649b3a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4633; 
x-ms-traffictypediagnostic: DB7PR04MB4633:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB46330EC529D74CBA8C2FEBC5E6A30@DB7PR04MB4633.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(54534003)(199004)(189003)(305945005)(6512007)(26005)(7736002)(36756003)(1076003)(2906002)(2616005)(6486002)(186003)(476003)(14454004)(53936002)(3846002)(6116002)(446003)(52116002)(11346002)(76176011)(478600001)(6436002)(5660300002)(386003)(6506007)(8936002)(2501003)(66946007)(2201001)(71190400001)(71200400001)(86362001)(66476007)(66556008)(64756008)(66446008)(25786009)(256004)(54906003)(8676002)(81166006)(110136005)(4326008)(50226002)(102836004)(66066001)(486006)(99286004)(316002)(81156014)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4633;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Kgf25IRqKFN8A9MPG00X+QcrDefIFoCIcuT9h1RydajCdL7yhCkEwp0S60E/vdngXTxNoLWP5Hh2MWMRwC6cwer3ADsR2O2DhQUzpD3wDaD1Pq23LB9a13o4BALCHstEsZ+JWy3JTvmtpkdAE9i0MWJdv4p6wvdBCq1+5h7dC1iNNGmygKzH4naJ/QG1B5rdRIruIIdCtmr1fOtmjRAGYCrGUpVxkJnf7bpY9GAIUkjYBHdEXwqU+kGo4x9Z+V4OL/Q9zGFfRCZ8zk4ewsJpCO41LKOPiewCAgb4D/R08VpOIBrwURPGxXBZ5Wh4X/JPkkADE3qtl/SMhIQMBdS9UfxRQHAZRQEMUAl6ZKH3dvxebg1B3Yip79jBqFLizz7+aDjRNyYCdw+ci0T3jRxR/5nDbUUCFyFPZhxv+ldGxN0=
Content-ID: <35DBCAC61293E64F80BF024E7D43E16A@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51cab373-ff7d-4388-e91e-08d72b649b3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 03:05:39.9206 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WlY50mlZmTyRJn+l3N1KbVIsuozcVFO+6+uBcPlrmLmpzChts3ur5b/KVbmWg9MubJ+pER2ZFhyCOKaKzhH6ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4633
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_200542_397301_E97C92E3 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Frank Li <frank.li@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Joakim Zhang <qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGkuTVg4IGRkciBwbXUgdXNlciBkb2MuDQoNCkNoYW5nZUxvZzoNClYxIC0+IFY0Og0KCSog
bmV3IGFkZCBpbiBWNC4NClY0IC0+IFY1Og0KCSogbm8gY2hhbmdlLg0KVjUgLT4gVjY6DQoJKiBj
aGFuZ2UgdGhlIGV2ZW50IG5hbWUNClY2IC0+IFY3Og0KCSogbm8gY2hhbmdlLg0KVjcgLT4gVjg6
DQoJKiBpbXByb3ZlIHRoZSBkb2MsIGFkZCBtb3JlIGRldGFpbHMuDQoNClNpZ25lZC1vZmYtYnk6
IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQotLS0NCiBEb2N1bWVudGF0
aW9uL2FkbWluLWd1aWRlL3BlcmYvaW14LWRkci5yc3QgfCA1MSArKysrKysrKysrKysrKysrKysr
KysrDQogMSBmaWxlIGNoYW5nZWQsIDUxIGluc2VydGlvbnMoKykNCiBjcmVhdGUgbW9kZSAxMDA2
NDQgRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9wZXJmL2lteC1kZHIucnN0DQoNCmRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL3BlcmYvaW14LWRkci5yc3QgYi9Eb2N1bWVu
dGF0aW9uL2FkbWluLWd1aWRlL3BlcmYvaW14LWRkci5yc3QNCm5ldyBmaWxlIG1vZGUgMTAwNjQ0
DQppbmRleCAwMDAwMDAwMDAwMDAuLjQzOGRlM2JlNjY3Yg0KLS0tIC9kZXYvbnVsbA0KKysrIGIv
RG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9wZXJmL2lteC1kZHIucnN0DQpAQCAtMCwwICsxLDUx
IEBADQorPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT0NCitGcmVlc2NhbGUgaS5NWDggRERSIFBlcmZvcm1hbmNlIE1vbml0b3JpbmcgVW5pdCAoUE1V
KQ0KKz09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
DQorDQorVGhlcmUgYXJlIG5vIHBlcmZvcm1hbmNlIGNvdW50ZXJzIGluc2lkZSB0aGUgRFJBTSBj
b250cm9sbGVyLCBzbyBwZXJmb3JtYW5jZQ0KK3NpZ25hbHMgYXJlIGJyb3VnaHQgb3V0IHRvIHRo
ZSBlZGdlIG9mIHRoZSBjb250cm9sbGVyIHdoZXJlIGEgc2V0IG9mIDQgeCAzMiBiaXQNCitjb3Vu
dGVycyBpcyBpbXBsZW1lbnRlZC4gVGhpcyBpcyBjb250cm9sbGVkIGJ5IHRoZSBQZXJmb3JtYW5j
ZSBsb2cgb24gcGFyYW1ldGVyDQord2hpY2ggY2F1c2VzIGEgbGFyZ2UgbnVtYmVyIG9mIFBFUkYg
c2lnbmFscyB0byBiZSBnZW5lcmF0ZWQuDQorDQorU2VsZWN0aW9uIG9mIHRoZSB2YWx1ZSBmb3Ig
ZWFjaCBjb3VudGVyIGlzIGRvbmUgdmlhIHRoZSBjb25maWcgcmVnaXN0aWVycy4gVGhlcmUNCitp
cyBvbmUgcmVnaXN0ZXIgZm9yIGVhY2ggY291bnRlci4gQ291bnRlciAwIGlzIHNwZWNpYWwgaW4g
dGhhdCBpdCBhbHdheXMgY291bnRzDQor4oCcdGltZeKAnSBhbmQgd2hlbiBleHBpcmVkIGNhdXNl
cyBhIGxvY2sgb24gaXRzZWxmIGFuZCB0aGUgb3RoZXIgY291bnRlcnMgYW5kIGFuDQoraW50ZXJy
dXB0IGllIGVuYWJsZSBvZiBjb3VudGVyIDAgaXMgYSBnbG9iYWwgZnVuY3Rpb24uDQorDQorVGhl
ICJmb3JtYXQiIGRpcmVjdG9yeSBkZXNjcmliZXMgZm9ybWF0IG9mIHRoZSBjb25maWcgKGV2ZW50
IElEKSBhbmQgY29uZmlnMQ0KKyhBWEkgZmlsdGVyaW5nKSBmaWVsZHMgb2YgdGhlIHBlcmZfZXZl
bnRfYXR0ciBzdHJ1Y3R1cmUsIHNlZSAvc3lzL2J1cy9ldmVudF9zb3VyY2UvDQorZGV2aWNlcy9p
bXg4X2RkcjAvZm9ybWF0Ly4gVGhlICJldmVudHMiIGRpcmVjdG9yeSBkZXNjcmliZXMgdGhlIGV2
ZW50cyB0eXBlcw0KK2hhcmR3YXJlIHN1cHBvcnRlZCB0aGF0IGNhbiBiZSB1c2VkIHdpdGggcGVy
ZiB0b29sLCBzZWUgL3N5cy9idXMvZXZlbnRfc291cmNlLw0KK2RldmljZXMvaW14OF9kZHIwL2V2
ZW50cy8uDQorICBlLmcuOjoNCisgICAgICAgIHBlcmYgc3RhdCAtYSAtZSBpbXg4X2RkcjAvY3lj
bGVzLyBjbWQNCisgICAgICAgIHBlcmYgc3RhdCAtYSAtZSBpbXg4X2RkcjAvcmVhZC8saW14OF9k
ZHIwL3dyaXRlLyBjbWQNCisNCitBWEkgZmlsdGVyaW5nIGlzIG9ubHkgdXNlZCBieSBDU1YgbW9k
ZXMgMHg0MSAoYXhpZC1yZWFkKSBhbmQgMHg0MiAoYXhpZC13cml0ZSkNCit0byBjb3VudCByZWFk
aW5nIG9yIHdyaXRpbmcgbWF0Y2hlcyBmaWx0ZXIgc2V0dGluZy4gRmlsdGVyIHNldHRpbmcgaXMg
dmFyaW91cw0KK2Zyb20gZGlmZmVyZW50IERSQU0gY29udHJvbGxlciBpbXBsZW1lbnRhdGlvbnMs
IHdoaWNoIGlzIGRpc3Rpbmd1aXNoZWQgYnkgcXVpcmtzDQoraW4gdGhlIGRyaXZlci4NCisNCisq
IFdpdGggRERSX0NBUF9BWElfSURfRklMVEVSIHF1aXJrLg0KKyAgRmlsdGVyIGlzIGRlZmluZWQg
d2l0aCB0d28gY29uZmlndXJhdGlvbiBwYXJ0czoNCisgIC0tQVhJX0lEIGRlZmluZXMgQXhJRCBt
YXRjaGluZyB2YWx1ZS4NCisgIC0tQVhJX01BU0tJTkcgZGVmaW5lcyB3aGljaCBiaXRzIG9mIEF4
SUQgYXJlIG1lYW5pbmdmdWwgZm9yIHRoZSBtYXRjaGluZy4NCisgICAgICAgIDDvvJpjb3JyZXNw
b25kaW5nIGJpdCBpcyBtYXNrZWQuDQorICAgICAgICAxOiBjb3JyZXNwb25kaW5nIGJpdCBpcyBu
b3QgbWFza2VkLCBpLmUuIHVzZWQgdG8gZG8gdGhlIG1hdGNoaW5nLg0KKw0KKyAgQVhJX0lEIGFu
ZCBBWElfTUFTS0lORyBhcmUgbWFwcGVkIG9uIERQQ1IxIHJlZ2lzdGVyIGluIHBlcmZvcm1hbmNl
IGNvdW50ZXIuDQorICBXaGVuIG5vbi1tYXNrZWQgYml0cyBhcmUgbWF0Y2hpbmcgY29ycmVzcG9u
ZGluZyBBWElfSUQgYml0cyB0aGVuIGNvdW50ZXIgaXMNCisgIGluY3JlbWVudGVkLiBQZXJmIGNv
dW50ZXIgaXMgaW5jcmVtZW50ZWQgaWYNCisgICAgICAgICAgQXhJRCAmJiBBWElfTUFTS0lORyA9
PSBBWElfSUQgJiYgQVhJX01BU0tJTkcNCisNCisgIFRoaXMgZmlsdGVyIGRvZXNuJ3Qgc3VwcG9y
dCBmaWx0ZXIgZGlmZmVyZW50IEFYSSBJRCBmb3IgYXhpZC1yZWFkIGFuZCBheGlkLXdyaXRlDQor
ICBldmVudCBhdCB0aGUgc2FtZSB0aW1lIGFzIHRoaXMgZmlsdGVyIGlzIHNoYXJlZCBiZXR3ZWVu
IGNvdW50ZXJzLg0KKyAgZS5nLjo6DQorICAgICAgICBwZXJmIHN0YXQgLWEgLWUgaW14OF9kZHIw
L2F4aWQtcmVhZCxheGlfbWFzaz0weE1NTU0sYXhpX2lkPTB4RERERC8gY21kDQorICAgICAgICBw
ZXJmIHN0YXQgLWEgLWUgaW14OF9kZHIwL2F4aWQtd3JpdGUsYXhpX21hc2s9MHhNTU1NLGF4aV9p
ZD0weEREREQvIGNtZA0KKw0KKyAgTk9URTogYXhpX21hc2sgaXMgaW52ZXJ0ZWQgaW4gdXNlcnNw
YWNlKGkuZS4gc2V0IGJpdHMgYXJlIGJpdHMgdG8gbWFzayksIGFuZA0KKyAgaXQgd2lsbCBiZSBy
ZXZlcnRlZCBpbiBkcml2ZXIgYXV0b21hdGljYWxseS4gc28gdGhhdCB0aGUgdXNlciBjYW4ganVz
dCBzcGVjaWZ5DQorICBheGlfaWQgdG8gbW9uaXRvciBhIHNwZWNpZmljIGlkLCByYXRoZXIgdGhh
biBoYXZpbmcgdG8gc3BlY2lmeSBheGlfbWFzay4NCisgIGUuZy46Og0KKyAgICAgICAgcGVyZiBz
dGF0IC1hIC1lIGlteDhfZGRyMC9heGlkLXJlYWQsYXhpX2lkPTB4MTIvIGNtZCwgd2hpY2ggd2ls
bCBtb25pdG9yIEFSSUQ9MHgxMg0KLS0gDQoyLjE3LjENCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
