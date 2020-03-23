Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AD8190014
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 22:14:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ys/JgpZjd270zMsogq8rtJ0gu18K2cNjI3DN6RX6i+4=; b=UH+rZiv8riebxI
	HTM54hu02iBDu9fe/uMRPW1tqMkZiyQpxaoELGx0dp6ZY6+bVJEd0Yuj1p0EFsJStWzZ7pzfdA8VN
	fb+Fg8UsmUJkok+wIvZaYZtmbq8g6k3U80i7PBw5DWfHpD+mAgxf8+bOlPl/YXgwslPBsSCgCU9bm
	niPKRstZdbAZVlMWc3xBPdYIt2c+SRUEcM5Oo8VRKySyl3UFzfuLLyYy3RSWy65c2Ff42brEB6Jd1
	azeGFOA/5WEQeCZtUg55PGnHBH+re+oyfIscq71GDOv6ohZ84eNNCYO3YcfzLEZZN2n2e8jrRB+/R
	3lwBvSVB3Cy440Yhck9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGUOd-0005Iw-6G; Mon, 23 Mar 2020 21:14:07 +0000
Received: from mail-dm6nam10on2072.outbound.protection.outlook.com
 ([40.107.93.72] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGUOV-0005I0-Cp
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 21:14:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TpxRbc/oaNw0Dwn8fqf3Pc9YxTu5Sr6P8kwqSEv2XbOpYhkdmgQ4XZL1c2DH7/o5VhbJPI0TOz/Rgx02ziaUa6MkoT5Uc1UwNDEdQahVWv4r/Nxr6VruxFs6oUMLicXqHFjYez9tKOY3e/Imqgy/DIMHXKmMUdTLmtFDbZHxQ88zuI8z3pQFmkgN4QdCblTG0cD4sNM7nJNvxkysJJuJ7BP31JuZzOzqjYJVucT4buUY2Q/P+IWaiJdPMLMrv4L0X3bKZ9dYIbIKYp1/LAGrydA5oWl9aQGfTRHTfgUuK0PM49vBY75N64e9YKxtv9XtJmHHY5Xor5jsSds2bvZ/uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iZsNde0WGieyvn/spbx9JFQCpMRcaDIUnjLgEba/HyQ=;
 b=BikM7IMXoYiOVwxOWW8GJzhB9Hj+Nj52Pvgmj9HLFSymC0lRq8xIfUf2YoQYj4mQEGZQi60NKWCfbA/u1BS4OJGb9Tx3d8kWKWJ/fGiQ/A9Kc77QCmHWcRgdgoKJEsjW1d51DWRCxy14xTDfLF4eKO7ol58fmyc2AQ7m50vnq/IWrYjrXRXRojxqqaC0kc/FbrkIr/SSy2H04J5KGgBLRh9Frw/IWYPgI/RMc/ZDXmInc2Yy4CsD7EGx4DT3KMlPUzE8uBweFZJAAwH+PCR61TGLdOn/P8RBl9cPTg2qXgF4zxNINoal6pvzegiBeYrCZEs0nzmbv0TsbiIKZVSTqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iZsNde0WGieyvn/spbx9JFQCpMRcaDIUnjLgEba/HyQ=;
 b=qlGTtLzDdg9Wo9458Ol8xJMuvwO7Nzqx5p8uqFNkGp17iZR1+Z8GNyJfb0slXAFBgj6tppSSW1caSuA3Im0Y4cDBPV9J0Ahgf8GTK9Gu6CptaknbjbqfgPDTLcF/PT0sqG2NFanCJ6CFxU02E/vQSACuzobylxr3zidX/vzIGTg=
Received: from BYAPR02MB5992.namprd02.prod.outlook.com (2603:10b6:a03:127::16)
 by BYAPR02MB4423.namprd02.prod.outlook.com (2603:10b6:a03:5f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20; Mon, 23 Mar
 2020 21:13:55 +0000
Received: from BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::653c:fb1e:61b9:8f00]) by BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::653c:fb1e:61b9:8f00%6]) with mapi id 15.20.2835.021; Mon, 23 Mar 2020
 21:13:55 +0000
From: Jolly Shah <JOLLYS@xilinx.com>
To: Jolly Shah <JOLLYS@xilinx.com>, "olof@lixom.net" <olof@lixom.net>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, Michal Simek <michals@xilinx.com>, "arm@kernel.org"
 <arm@kernel.org>, "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>
Subject: Re: [PATCH 0/4] Clock driver fixes
Thread-Topic: [PATCH 0/4] Clock driver fixes
Thread-Index: AQHV8NuptlXrLfHfkk+i2Lx5IRh3SahWWNoA
Date: Mon, 23 Mar 2020 21:13:55 +0000
Message-ID: <D2A3DCE1-1514-445D-B58E-E2EA31BAB0C2@xilinx.com>
References: <1583185414-20106-1-git-send-email-jolly.shah@xilinx.com>
In-Reply-To: <1583185414-20106-1-git-send-email-jolly.shah@xilinx.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.1a.0.190609
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=JOLLYS@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1e9298aa-7012-415f-5856-08d7cf6f1867
x-ms-traffictypediagnostic: BYAPR02MB4423:|BYAPR02MB4423:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB4423242EA24B792FF7C2637DB8F00@BYAPR02MB4423.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1107;
x-forefront-prvs: 0351D213B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(396003)(136003)(39860400002)(346002)(54906003)(26005)(2616005)(8676002)(36756003)(76116006)(81166006)(81156014)(478600001)(33656002)(5660300002)(6486002)(66446008)(66556008)(64756008)(66946007)(66476007)(86362001)(6506007)(4744005)(71200400001)(8936002)(110136005)(186003)(4326008)(2906002)(6512007)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4423;
 H:BYAPR02MB5992.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MdMHs6O4NIj/2TS3OBN+cNc1w797eimvt8Vos/H//4xVhTMgmR+pNyJPUrxVaJiksK8ZG9sKcLxCOnw//o/N5M6IreCu0aNsg3dyPjIHwyWtzy21PGmvq9YZ9O/PhsDx4X4Ll6OBZi8ZK+WFCITdUsQkpOhUcBzxOjv5ZoO6ZfZ6LMxuwclg8f0kGBfWRon6qFrz3N5ClTqm2LR8fRenW1DRUzBJEi+vucPs61szpuQSl3LC9Vd01qFNArieeUn7o7FxsJzQ2zIy/ERRUt6x/MoWPIobaHFoRNaGt67nQMlqFTb35GV60VPkDgqWat7+cqWz1ZPW58/lp6Hx+gwBhnU8roWPReiWs/gOxIDvBH+m/0Ll45soDd43Bx2DNSgugOWT+J1ceVKP776MkYozkG8M38yD28MQpp2Y1T1xKil4Mx3k7Te+Hka4me1ud6hO
x-ms-exchange-antispam-messagedata: DU68EgMU9FOVN+nLQN32yz7ZI6u+yJNgZKeoWYZrp1nn2HPMYntEChfUQzc+l65PEXlSpUwlHHK0k1sYjjbOAzqFfJWr4IEP9dwsiBDeedG9lABb5pgbMag6nGy4Qg8Qxc480euVJ5X1zCYhhBMFAw==
Content-ID: <DFC5C5FC00DAF049AAF83A561BD925BD@namprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e9298aa-7012-415f-5856-08d7cf6f1867
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2020 21:13:55.2420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PmQXxPzlhyMDx2+PKgiqPlMACOg4Hn/nJoMEvZ0gdglIugVjUwvBeeNykacUxeRPSTrmHduUBjMtI3UL6AZyPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4423
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_141359_441410_458448A3 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.72 listed in list.dnswl.org]
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
Cc: Rajan Vaja <RAJANV@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QSBnZW50bGUgcmVtaW5kZXIgZm9yIHJldmlldy4NCg0K77u/T24gMy8yLzIwLCAxOjQzIFBNLCAi
Sm9sbHkgU2hhaCIgPGpvbGx5LnNoYWhAeGlsaW54LmNvbT4gd3JvdGU6DQoNCiAgICBUaGlzIHBh
dGNoc2V0IGluY2x1ZGVzIGJlbG93IGZpeGVzIGZvciBjbG9jayBkcml2ZXINCiAgICAxPiBGaXgg
RGl2aWRlcjIgY2FsY3VsYXRpb24gDQogICAgMj4gTWVtb3J5IGxlYWsgaW4gY2xvY2sgcmVnaXN0
cmF0aW9uDQogICAgMz4gRml4IGludmFsaWQgbmFtZSBxdWVyaWVzDQogICAgND4gTGltaXQgYmVz
dGRpdiB3aXRoIG1heGRpdg0KICAgIA0KICAgIFF1YW55YW5nIFdhbmcgKDEpOg0KICAgICAgY2xr
OiB6eW5xbXA6IGZpeCBtZW1vcnkgbGVhayBpbiB6eW5xbXBfcmVnaXN0ZXJfY2xvY2tzDQogICAg
DQogICAgUmFqYW4gVmFqYSAoMik6DQogICAgICBjbGs6IHp5bnFtcDogTGltaXQgYmVzdGRpdiB3
aXRoIG1heGRpdg0KICAgICAgZHJpdmVyczogY2xrOiBGaXggaW52YWxpZCBjbG9jayBuYW1lIHF1
ZXJpZXMNCiAgICANCiAgICBUZWphcyBQYXRlbCAoMSk6DQogICAgICBkcml2ZXJzOiBjbGs6IHp5
bnFtcDogRml4IGRpdmlkZXIyIGNhbGN1bGF0aW9uDQogICAgDQogICAgIGRyaXZlcnMvY2xrL3p5
bnFtcC9jbGtjLmMgICAgfCAyMCArKysrKysrKysrKysrKy0tLS0tLQ0KICAgICBkcml2ZXJzL2Ns
ay96eW5xbXAvZGl2aWRlci5jIHwgMTkgKysrKysrKysrKysrKystLS0tLQ0KICAgICAyIGZpbGVz
IGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQ0KICAgIA0KICAgIC0t
IA0KICAgIDIuNy40DQogICAgDQogICAgDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
