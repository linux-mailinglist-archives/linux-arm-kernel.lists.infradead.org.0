Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B734AFA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 03:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Ceb0TbbFC3JLBp9WYDhIdRXiauROxzKFxZ/24C/mDM=; b=bB3M9MYA8qY8oo
	pXF7/KxDa3M3yK0U6X0ImsyCoWrEtvR2Y59KMm/Adg/WCPFH8Lpj2meY3FZ06camocZJsU4gPqN96
	aJHJLSUyE1OMO0HFeCRQ1xu9iDJv8ojQDA3KmjBkr2FlYPrbfgxw+B+C4u45J4SCxLuga9Et2int0
	ZjpmsNlQoAROdsUrsnoP9KbV77soHPqzHh5NM7E7fZgN6vIAIVCQvLJH/n0gapiZ+nNfq9QehvkNR
	JtK/nCNteoLbXF4pcTORhTEm7xkXzGMUHvAhdgOEngRgsdGt4+6KFHiV0ILHSvMG/YWvReGlyB4TD
	WF7p5WHiNg9Zggiaab2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdPh1-0005gX-Qc; Wed, 19 Jun 2019 01:47:19 +0000
Received: from mail-eopbgr70049.outbound.protection.outlook.com ([40.107.7.49]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdPgs-0005fJ-OQ
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 01:47:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bGXa4WrCD8TQEVnKH1RryCKp4f8zPcisns1ZAqBbS44=;
 b=LwizENaAFochjzGh1C6Y24fsM4rQh4WPOIsean7NNawOrE1O+TbywSYgnPSaYo0GaSjt28nOqXDVHyZL8Zvc2wqPJWVMruYfzI58mT+vGhRzqoFYPs3ohrHEzao/NSQpUoTnPXFd70fFaUqKcy+RAo5XRB8sOcuLgZMw+gyhOTM=
Received: from VI1PR04MB4431.eurprd04.prod.outlook.com (20.177.55.159) by
 VI1PR04MB4365.eurprd04.prod.outlook.com (52.134.123.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Wed, 19 Jun 2019 01:47:03 +0000
Received: from VI1PR04MB4431.eurprd04.prod.outlook.com
 ([fe80::20bb:da22:d5f2:f2ab]) by VI1PR04MB4431.eurprd04.prod.outlook.com
 ([fe80::20bb:da22:d5f2:f2ab%4]) with mapi id 15.20.1987.014; Wed, 19 Jun 2019
 01:47:03 +0000
From: Peng Ma <peng.ma@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [EXT] Re: [PATCH 2/4] arm64: dts: fsl: ls1028a: Add eDMA node
Thread-Topic: [EXT] Re: [PATCH 2/4] arm64: dts: fsl: ls1028a: Add eDMA node
Thread-Index: AQHVA+u0ElkbuyK2VkuLgcU0b4dih6ahp1sAgADSaZA=
Date: Wed, 19 Jun 2019 01:47:03 +0000
Message-ID: <VI1PR04MB4431D32CF8F6F430B58A56D9EDE50@VI1PR04MB4431.eurprd04.prod.outlook.com>
References: <20190506090344.37784-1-peng.ma@nxp.com>
 <20190506090344.37784-2-peng.ma@nxp.com> <20190618131319.GC1959@dragon>
In-Reply-To: <20190618131319.GC1959@dragon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.ma@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9ff89c74-17ac-4d5e-531a-08d6f4580716
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4365; 
x-ms-traffictypediagnostic: VI1PR04MB4365:
x-microsoft-antispam-prvs: <VI1PR04MB43651C9FC519CC652DF09B24EDE50@VI1PR04MB4365.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:187;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(346002)(396003)(376002)(13464003)(199004)(189003)(71200400001)(7736002)(486006)(68736007)(71190400001)(476003)(44832011)(446003)(5660300002)(66066001)(55016002)(11346002)(186003)(86362001)(478600001)(52536014)(53936002)(8676002)(14444005)(6116002)(3846002)(26005)(14454004)(316002)(8936002)(229853002)(256004)(6916009)(7696005)(9686003)(6506007)(25786009)(102836004)(99286004)(305945005)(33656002)(76116006)(6246003)(2906002)(74316002)(64756008)(66446008)(66556008)(66476007)(54906003)(81156014)(66946007)(4326008)(73956011)(76176011)(6436002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4365;
 H:VI1PR04MB4431.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mTikDezO+zmZQvJV+hbBThokhakqLMo66gA8Lvh6wvT6/wc2nHMXkwXrx24ctRTFQqgeuxNUkRBwtt3a/LfX+Bansf3yloLKjj3oXurQKw/Fu7z/TcNGR86KaIoitBfvgIEIXAwgBJjXH/qWbsWKq8pOtwuJgvrQzteY8tPca97OssWZDpwzNKA9tlGoNO1HefutFI/E1UtjEkm4oEhG7al0S72QaAGwHh6DRbvQeErdM8vJQk0oX/+CDqkuJzjDi6PRJG6t3uOC6Wq4PsKNo/dwsQGZl+4tyUWLQ7EHCAhy4y9XfwGla0FnwIbfntxiMcXEKIbO7HDCUx55N2RN/VcFl5MegOuzDNO4PvpET2kYgeacJRBwg8H/Neituw32tfYsyhc9b79ahBgiMgeElxHcHGzcFTaghO1AfsG8gMM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ff89c74-17ac-4d5e-531a-08d6f4580716
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 01:47:03.1947 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.ma@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4365
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_184710_799752_F110E39D 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFNoYXduIEd1byA8c2hhd25n
dW9Aa2VybmVsLm9yZz4NCj5TZW50OiAyMDE5xOo21MIxOMjVIDIxOjEzDQo+VG86IFBlbmcgTWEg
PHBlbmcubWFAbnhwLmNvbT4NCj5DYzogdmtvdWxAa2VybmVsLm9yZzsgcm9iaCtkdEBrZXJuZWwu
b3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgTGVvIExpDQo+PGxlb3lhbmcubGlAbnhwLmNvbT47
IGRhbi5qLndpbGxpYW1zQGludGVsLmNvbTsgZG1hZW5naW5lQHZnZXIua2VybmVsLm9yZzsNCj5k
ZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsN
Cj5saW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCj5TdWJqZWN0OiBbRVhUXSBS
ZTogW1BBVENIIDIvNF0gYXJtNjQ6IGR0czogZnNsOiBsczEwMjhhOiBBZGQgZURNQSBub2RlDQo+
DQo+Q2F1dGlvbjogRVhUIEVtYWlsDQo+DQo+T24gTW9uLCBNYXkgMDYsIDIwMTkgYXQgMDk6MDM6
NDJBTSArMDAwMCwgUGVuZyBNYSB3cm90ZToNCj4+IEFkZCB0aGUgZURNQSBkZXZpY2UgdHJlZSBu
b2RlcyBmb3IgTFMxMDI4QSBkZXZpY2VzDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogUGVuZyBNYSA8
cGVuZy5tYUBueHAuY29tPg0KPj4gLS0tDQo+PiAgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2Nh
bGUvZnNsLWxzMTAyOGEuZHRzaSB8ICAgMTUgKysrKysrKysrKysrKysrDQo+PiAgMSBmaWxlcyBj
aGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAwIGRlbGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNpDQo+Yi9h
cmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNpDQo+PiBpbmRleCA4
MTE2ZmIzLi43MWI4N2NiIDEwMDY0NA0KPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVl
c2NhbGUvZnNsLWxzMTAyOGEuZHRzaQ0KPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVl
c2NhbGUvZnNsLWxzMTAyOGEuZHRzaQ0KPj4gQEAgLTIzNSw2ICsyMzUsMjEgQEANCj4+ICAgICAg
ICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOw0KPj4gICAgICAgICAgICAgICB9
Ow0KPj4NCj4+ICsgICAgICAgICAgICAgZWRtYTA6IGVkbWFAMjJjMDAwMCB7DQo+PiArICAgICAg
ICAgICAgICAgICAgICAgI2RtYS1jZWxscyA9IDwyPjsNCj4+ICsgICAgICAgICAgICAgICAgICAg
ICBjb21wYXRpYmxlID0gImZzbCx2ZjYxMC1lZG1hIjsNCj4+ICsgICAgICAgICAgICAgICAgICAg
ICByZWcgPSA8MHgwIDB4MjJjMDAwMCAweDAgMHgxMDAwMD4sDQo+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgPDB4MCAweDIyZDAwMDAgMHgwIDB4MTAwMDA+LA0KPj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgIDwweDAgMHgyMmUwMDAwIDB4MCAweDEwMDAwPjsNCj4+ICsgICAgICAg
ICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNTYNCj5JUlFfVFlQRV9MRVZFTF9I
SUdIPiwNCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPEdJQ19TUEkgNTYN
Cj5JUlFfVFlQRV9MRVZFTF9ISUdIPjsNCj4+ICsgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1
cHQtbmFtZXMgPSAiZWRtYS10eCIsICJlZG1hLWVyciI7DQo+PiArICAgICAgICAgICAgICAgICAg
ICAgZG1hLWNoYW5uZWxzID0gPDMyPjsNCj4+ICsgICAgICAgICAgICAgICAgICAgICBjbG9jay1u
YW1lcyA9ICJkbWFtdXgwIiwgImRtYW11eDEiOw0KPj4gKyAgICAgICAgICAgICAgICAgICAgIGNs
b2NrcyA9IDwmY2xvY2tnZW4gNCAxPiwNCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICA8JmNsb2NrZ2VuIDQgMT47DQo+PiArICAgICAgICAgICAgIH07DQo+PiArDQo+DQo+VGhlIGVk
bWFAMjJjMDAwMCBub2RlIGhhZCBhbHJlYWR5IGJlZW4gYWRkZWQgYnkgY29tbWl0IGJlbG93Og0K
Pg0KPiAgZjU0ZjdiZTVjNWFjICgiYXJtNjQ6IGR0czogbHMxMDI4YTogQWRkIEF1ZGlvIERUIG5v
ZGVzIikNCj4NCltQZW5nIE1hXSBPSywgZ290IGl0LCB0aGFua3MuDQoNCkJlc3QgUmVnYXJkcywN
ClBlbmcNCj5TaGF3bg0KPg0KPj4gICAgICAgICAgICAgICBncGlvMTogZ3Bpb0AyMzAwMDAwIHsN
Cj4+ICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImZzbCxxb3JpcS1ncGlvIjsN
Cj4+ICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgwIDB4MjMwMDAwMCAweDAgMHgxMDAw
MD47DQo+PiAtLQ0KPj4gMS43LjENCj4+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
