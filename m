Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 684E885AFF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 08:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Sr8z3KeAK6KvcEhgEL8H8WdeUEa3Mrg3V2ftiW4avQ=; b=ijsd+P04MAqj96
	pe3U7kX5+yPd7UVCQoy202Nowc9bLzdiIfgjW8XMp22+Gg0utKhOc9wJni1Evrz+MCDlG7h7QxukF
	JedWcarK+EdvaeOA1+WB7R/T4HzCIv5oBV0aOYHNYpa3ic0BD/a8HcRkZcuIhA0u8mbnDtZ30UBZl
	EecVz3J0oe6cLYyxqOxiAUBF1Peooz58Kv1SG5gViQrRy4Bd09jOHFBHzj/zNOUooWfnGDjEaQcpT
	jkY+ufunzsZAiNiPVbv5XvrUejhmZi4X4/yChfUo3T9vg3UcwtIWc/Dd4bK7gqHeFbmEWm+4jnxaE
	8EKozUqHWEMc+giPyQoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvcBk-0001Qk-Ox; Thu, 08 Aug 2019 06:46:16 +0000
Received: from mail-eopbgr70051.outbound.protection.outlook.com ([40.107.7.51]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvcB4-0000vm-7s
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 06:45:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dbY/G2NLAY1s4auGl9AHJwCuOia7ZT/OPdV2rnWHXEdD6Jozuy66W+9ZPs0fIEeHXkdS/f+/2dNC9O4NKRY5B36RawynVeZv2YmWp1XweVLeuXIM0C8WoYOsuiqPzTjZHR93wVvHZvVwWSreWR1C7VyTNmY4onbrGGi1TPD8GYPU+HjkdRaYimVPGKEGQl7pCOev97vPO3YrV2BiGZ/sqtFiEEaexJJqcLGA2OjKPcV51tXXiMQmX7tDA7RW1OxqULnYcU1RjLmutdQHXgqRa+MaELAL0sDl1eFrl5g/B3x2m+iM4JetJ1bzg0yqxnRJ+y3a3NQVl8T16/K7tI81Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wt8Gh0xhK8AZeFoyY2/5lpCWn4E2KxRsvfgv22G3GH8=;
 b=hoQIZ75TOWpKYzCQBkbC9ePS7mVNZMuUZHO6risKymFxnhZEvrQS6aHa6C1xj7vcY2QPBxxL0iG/rgmietbaU/sEQRirNNy2OHZFUUHr7SO+JOAXVE7+J9pGcfdih/iUdZMQ8ZvqhMcpu5v4JniUIHAwzK0ZM1cO7R1HQ2PBehidj3ONu0xrb32+/LZXXtbLYlIZFfDjw38T0CdYrzulo4lSByvYcAkuU2YnWWY1JRCXHtcN9kHnevyZv41Z1K3+g25+KnKktjEx6NqXRVF6iejdbtJ7ou6uvOMwFpf2BW6y5TUkHzsI+UGIMHeoNSKee7X0NpaDQbpzY3lptBxZ+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wt8Gh0xhK8AZeFoyY2/5lpCWn4E2KxRsvfgv22G3GH8=;
 b=Xz8k7xkV8ZmryVCCUn2lCjZ0AE2MryFWsBBigh1kjwyfheh5Q4CgqD8gxapI4H8A5uyvyP/QDKjAamoW6ftEsE+dE5ZEm9aO1pUL2bo2n2vqdEdle0mkDLJOWiS5rMPjPDA3BAWQ7Uay/LfKeyQr9yzAOJ0Zl0HSmMp2ouJ/B1I=
Received: from VI1PR04MB4622.eurprd04.prod.outlook.com (20.177.56.21) by
 VI1PR04MB5070.eurprd04.prod.outlook.com (20.177.50.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Thu, 8 Aug 2019 06:45:32 +0000
Received: from VI1PR04MB4622.eurprd04.prod.outlook.com
 ([fe80::f1df:2dd:501c:5986]) by VI1PR04MB4622.eurprd04.prod.outlook.com
 ([fe80::f1df:2dd:501c:5986%6]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 06:45:32 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "robin.murphy@arm.com" <robin.murphy@arm.com>, "will@kernel.org"
 <will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>
Subject: [PATCH V5 2/3] Documentation: admin-guide: perf: add i.MX8 ddr pmu
 user doc
Thread-Topic: [PATCH V5 2/3] Documentation: admin-guide: perf: add i.MX8 ddr
 pmu user doc
Thread-Index: AQHVTbTf/DA0gFFDiU+eeJKR6g/DdA==
Date: Thu, 8 Aug 2019 06:45:32 +0000
Message-ID: <20190808064216.6950-3-qiangqing.zhang@nxp.com>
References: <20190808064216.6950-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20190808064216.6950-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR02CA0085.apcprd02.prod.outlook.com
 (2603:1096:4:90::25) To VI1PR04MB4622.eurprd04.prod.outlook.com
 (2603:10a6:803:70::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 51a52ee3-a005-4162-057c-08d71bcc0256
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5070; 
x-ms-traffictypediagnostic: VI1PR04MB5070:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB50700E4C9B89439DBE3679C9E6D70@VI1PR04MB5070.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(376002)(396003)(366004)(346002)(54534003)(189003)(199004)(64756008)(66446008)(66556008)(110136005)(2201001)(52116002)(76176011)(66946007)(8936002)(66476007)(54906003)(26005)(25786009)(81166006)(99286004)(81156014)(316002)(8676002)(186003)(3846002)(6116002)(6436002)(66066001)(36756003)(53936002)(50226002)(256004)(14444005)(2906002)(4326008)(14454004)(486006)(446003)(6486002)(386003)(476003)(6506007)(5660300002)(11346002)(2616005)(1076003)(86362001)(6512007)(71190400001)(71200400001)(478600001)(305945005)(102836004)(7736002)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5070;
 H:VI1PR04MB4622.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: i0EVTNxHy3hBXRN5kqcnTDJvsKgolsQ9e+4uXPxSn0ycH1NDFzBKtBol60zh3Hr86clatWpn5srqsD0GpbdHvfr7hc4LSlG7Dr71rCyK5vbrwUiOOir938M/gri7R9gnXt/yVVLeqvT8lFJEZVG2e/2ehk73+rRaGNexCia8RSNma9hi+0Ztmkk25UkeEF9wyAPwwccxVA0LQKX2yHeQVh3WQnRQYnqmU/VwqkGfALUyFLjg5DJU4RqKmu6D9hZuD94v9ocdL1mmK3Mt5l94C7jId/XMxtvi9dxvj3nV0Tvpe+RutT1nw/XJ4tOyJGRnRFOCCV6BmhoAvdz8aK6oDfvKYvrw4QTjRSX4Wum9aq0+aYHCcTT+rakZYOkfYqjbzHDiNAUTfz5d7kW0/OX2HR7zv4m8+KMXLlyUQMoke5o=
Content-ID: <77781BB3ACFF564790EA722964B4DE52@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51a52ee3-a005-4162-057c-08d71bcc0256
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 06:45:32.4965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c/YFFIKkPOWWBssN+NdePMFgxp7DKS7LU/WTFLe4gylTIWLZHbA/U2HtD7tycisSd0h3Yi6/aCWuJegw4MJaSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_234534_314343_A29FF56E 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.51 listed in list.dnswl.org]
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
bmV3IGFkZCBpbiBWNC4NClY0IC0+IFY1Og0KCSogbm8gY2hhbmdlLg0KDQpTaWduZWQtb2ZmLWJ5
OiBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPg0KLS0tDQogRG9jdW1lbnRh
dGlvbi9hZG1pbi1ndWlkZS9wZXJmL2lteC1kZHIucnN0IHwgMzAgKysrKysrKysrKysrKysrKysr
KysrKw0KIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspDQogY3JlYXRlIG1vZGUgMTAw
NjQ0IERvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvcGVyZi9pbXgtZGRyLnJzdA0KDQpkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9wZXJmL2lteC1kZHIucnN0IGIvRG9jdW1l
bnRhdGlvbi9hZG1pbi1ndWlkZS9wZXJmL2lteC1kZHIucnN0DQpuZXcgZmlsZSBtb2RlIDEwMDY0
NA0KaW5kZXggMDAwMDAwMDAwMDAwLi44YWI1MGUyZGEyN2UNCi0tLSAvZGV2L251bGwNCisrKyBi
L0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvcGVyZi9pbXgtZGRyLnJzdA0KQEAgLTAsMCArMSwz
MCBAQA0KKz09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT0NCitGcmVlc2NhbGUgaS5NWDggRERSIFBlcmZvcm1hbmNlIE1vbml0b3JpbmcgVW5pdCAoUE1V
KQ0KKz09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0N
CisNCitUaGVyZSBhcmUgbm8gcGVyZm9ybWFuY2UgY291bnRlcnMgaW5zaWRlIHRoZSBEUkFNIGNv
bnRyb2xsZXIsIHNvIHBlcmZvcm1hbmNlDQorc2lnbmFscyBhcmUgYnJvdWdodCBvdXQgdG8gdGhl
IGVkZ2Ugb2YgdGhlIGNvbnRyb2xsZXIgd2hlcmUgYSBzZXQgb2YgNCB4IDMyIGJpdA0KK2NvdW50
ZXJzIGlzIGltcGxlbWVudGVkLiBUaGlzIGlzIGNvbnRyb2xsZWQgYnkgdGhlIFBlcmZvcm1hbmNl
IGxvZyBvbiBwYXJhbWV0ZXINCit3aGljaCBjYXVzZXMgYSBsYXJnZSBudW1iZXIgb2YgUEVSRiBz
aWduYWxzIHRvIGJlIGdlbmVyYXRlZC4NCisNCitTZWxlY3Rpb24gb2YgdGhlIHZhbHVlIGZvciBl
YWNoIGNvdW50ZXIgaXMgZG9uZSB2aWEgdGhlIGNvbmZpZyByZWdpc3RpZXJzLiBUaGVyZQ0KK2lz
IG9uZSByZWdpc3RlciBmb3IgZWFjaCBjb3VudGVyLiBDb3VudGVyIDAgaXMgc3BlY2lhbCBpbiB0
aGF0IGl0IGFsd2F5cyBjb3VudHMNCivigJx0aW1l4oCdIGFuZCB3aGVuIGV4cGlyZWQgY2F1c2Vz
IGEgbG9jayBvbiBpdHNlbGYgYW5kIHRoZSBvdGhlciBjb3VudGVycyBhbmQgYW4NCitpbnRlcnJ1
cHQgaWUgZW5hYmxlIG9mIGNvdW50ZXIgMCBpcyBhIGdsb2JhbCBmdW5jdGlvbi4NCisNCitUaGUg
ImZvcm1hdCIgZGlyZWN0b3J5IGRlc2NyaWJlcyBmb3JtYXQgb2YgdGhlIGNvbmZpZyAoZXZlbnQg
SUQpIGFuZCBjb25maWcxDQorKEFYSSBJRCBmaWx0ZXIpIGZpZWxkcyBvZiB0aGUgcGVyZl9ldmVu
dF9hdHRyIHN0cnVjdHVyZSwgc2VlIC9zeXMvYnVzL2V2ZW50X3NvdXJjZS8NCitkZXZpY2VzL2lt
eDhfZGRyMC9mb3JtYXQvLiBUaGUgImV2ZW50cyIgZGlyZWN0b3J5IGRlc2NyaWJlcyB0aGUgZXZl
bnRzIHR5cGVzDQoraGFyZHdhcmUgc3VwcG9ydGVkIHRoYXQgY2FuIGJlIHVzZWQgd2l0aCBwZXJm
IHRvb2wsIHNlZSAvc3lzL2J1cy9ldmVudF9zb3VyY2UvDQorZGV2aWNlcy9pbXg4X2RkcjAvZXZl
bnRzLy4NCisNCitBWEkgSUQgZmlsdGVyIGlzIG9ubHkgdXNlZCBieSBDU1YgbW9kZXMgMHg0MSAo
YXhpLWlkLXJlYWQpIGFuZCAweDQyIChheGktaWQtd3JpdGUpDQordG8gY291bnQgcmVhZGluZyBv
ciB3cml0aW5nIG1hdGNoZXMgZmlsdGVyIHNldHRpbmcuIFVzZXIgc2hvdWxkIHNwZWNpZnkgdGhp
cyB0d28NCitldmVudHMgd2l0aCB0aGUgc2FtZSBBWEkgSUQgZmlsdGVyIHZhbHVlIGlmIHdhbnQg
dG8gY291bnQgYXQgdGhlIHNhbWUgdGltZSwgYXMNCit0aGlzIGZpbHRlciByZWdpc3RlciBpcyBz
aGFyZWQgYmV0d2VlbiBjb3VudGVycy4NCisNCitFeGFtcGxlIGZvciBwZXJmIHRvb2wgdXNlOjoN
CisNCisgICAgICAgIHBlcmYgc3RhdCAtZSBpbXg4X2RkcjAvY3ljbGVzLyBzbGVlcCAxDQorICAg
ICAgICBwZXJmIHN0YXQgLWUgaW14OF9kZHIwL3JlYWQvLGlteDhfZGRyMC93cml0ZS8gc2xlZXAg
MQ0KKyAgICAgICAgcGVyZiBzdGF0IC1lIGlteDhfZGRyMC9heGktaWQtcmVhZCxheGlfaWQ9MHhN
TU1NRERERC8saW14OF9kZHIwL2F4aS1pZC13cml0ZSxheGlfaWQ9MHhNTU1NRERERC8gc2xlZXAg
MQ0KLS0gDQoyLjE3LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
