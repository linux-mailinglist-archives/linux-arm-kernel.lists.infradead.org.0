Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A69A5EFA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 03:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RUQM+UZ7GGzzi6qxhTPoW/hoJcsXZSV7wrbu4R15ylU=; b=kpPwndCT1m52SG
	2QylRrY61QNz7Y5AgWtMmYSysx60SdP2pnKlY6eMxYw5FHxRjNXoShJXoaSGcEm7lya2/QTWqlUdo
	bqK3DBi112GzG8RDg2Oy9XDTbhAX0odKgOJFvPhHAm98qjDpqToWXz0izU3u0CzBjt+v/PjeHlNXQ
	y1hTR7j9niU0esTJ3DnM5IleT7/BN4NhZrJ7GcT3PrkSuz5nzc63EOEfqeegzsEsjmABaaywbwQ1o
	3RDew6cPFFOVMHES9ROtURAYBEc+BBTNYmxfA58F1s3fs0mFEVLG1Av/DKb0bgV8gSfDm3jo9EbvU
	yahQhj/qb63PD1lloQlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4xzz-0006MJ-8v; Tue, 03 Sep 2019 01:52:47 +0000
Received: from mail-eopbgr70081.outbound.protection.outlook.com ([40.107.7.81]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4xzl-0006Lo-T0
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 01:52:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jy2UdIQQSQ9G5kEyC0C6ny6dGGiYKrOpcs9BijwcpsJAax3ACjqyMZH5k650xJeH61MV2RwxyqQx3VC7bir2uQwu71xhm5Ypo8JTCYi/7/emx/rk4nriuq2H+VsfKVJjrsMMrhVI3YJySOePmeMs2swsudNxFV4zc+xLe85CW0RrrcTKWQzt9vR01gKrXtQfW450wj7Qb4n4dk8itHS1TvVvLBbMFH5Mdf65dm4WW2nkupum6QXSTrheZ2K1FduKTcbR0s5RZz1wMfwgdC7qKCTgg8Qj1KSu7ACcqntM9a1hQX1oGbIyrFP7GuzJ+YFT/53CeSkyHzInE/tJlN1upg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u2KCzUsLh99JcTh+aINqPXRfHG3CRRPEUbdOM71Bgn4=;
 b=Xk2HXqBfdkVFBUhgZf/02GQn2FN1IHNH3t3VY7KSvSHMxfCgqKWKrWM08bpUNYf5caSwM6Bsw/JZqHcJeuoSPMSdcPR6GFBEGn7Pe+uxLZqoDHcx4tJTI9Sf7WEtk2d6of7Rmus8YnqPunG4Ps4K3Uq2/Ob1pJmYCg6wSqyVlLj3Pr9DXN8vNFXwQpgsb2mlDEcqXLAsGY6qXjW9tTbH/SCKi17TJLSrFjAMjvAE+IdjReaH1wf6O6wYqakM6ls7LBl+63gsMKGvBsSGytz7D1WiXp8mWj8zVUCRf+M/B6Tv+kQtwSsipZIj1mgoRUN4L6FovwutmCan0C8qoa427Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u2KCzUsLh99JcTh+aINqPXRfHG3CRRPEUbdOM71Bgn4=;
 b=YGpZDlwPJLrFpz7fU2qi3R/jAFqgHJe5VbKpwEqmyvFwM394HW/M94nU6jCeuoeO8k1gzY9vdHbvJu8IZFNrZmuvAA9jUx4DtZkMy3vRxAX4PPlR973svn7AKNsYaUbQismznjaeIvmVem7aEMvDtnFX3mbRaMMH3YXCCRpTl3Y=
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com (10.173.255.158) by
 AM5PR04MB3028.eurprd04.prod.outlook.com (10.167.170.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Tue, 3 Sep 2019 01:52:30 +0000
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::5dd3:ddc9:411a:db41]) by AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::5dd3:ddc9:411a:db41%3]) with mapi id 15.20.2220.022; Tue, 3 Sep 2019
 01:52:30 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: RE: [PATCH v3 11/11] misc: pci_endpoint_test: Add LS1088a in
 pci_device_id table
Thread-Topic: [PATCH v3 11/11] misc: pci_endpoint_test: Add LS1088a in
 pci_device_id table
Thread-Index: AQHVYT5qk2ZfW7svpUGDLJ0EtdcJHacYWL4AgADX6sA=
Date: Tue, 3 Sep 2019 01:52:30 +0000
Message-ID: <AM5PR04MB3299D598229952C13C492B48F5B90@AM5PR04MB3299.eurprd04.prod.outlook.com>
References: <20190902031716.43195-1-xiaowei.bao@nxp.com>
 <20190902031716.43195-12-xiaowei.bao@nxp.com>
 <20190902125454.GK9720@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190902125454.GK9720@e119886-lin.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 947cf303-db21-4008-0d87-08d730116168
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR04MB3028; 
x-ms-traffictypediagnostic: AM5PR04MB3028:|AM5PR04MB3028:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR04MB30283125427A491665E0B524F5B90@AM5PR04MB3028.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(39860400002)(376002)(346002)(189003)(199004)(13464003)(316002)(33656002)(256004)(99286004)(305945005)(7736002)(66066001)(8936002)(2906002)(486006)(446003)(11346002)(81166006)(476003)(81156014)(8676002)(44832011)(66946007)(66446008)(76116006)(7416002)(66476007)(66556008)(64756008)(54906003)(229853002)(76176011)(7696005)(6916009)(71200400001)(71190400001)(102836004)(53546011)(186003)(6506007)(26005)(55016002)(6436002)(74316002)(9686003)(3846002)(6116002)(25786009)(4326008)(5660300002)(14454004)(53936002)(6246003)(86362001)(52536014)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR04MB3028;
 H:AM5PR04MB3299.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6UmghHag1Pu8mrDpJgeEEu4336DGx7YIiXnTfd100QtG4P25ECBB1Rf51p0OfrZwvC/trx/PiwoGDrkozY6gJbF+eJufsxvULwlmsYtSSVc3D4ES95D+3L0clTc9sR6E9vUcpTcztKnVVSXNW0LLTrqfHMG94D+r+fyXaqwz0ZeG4g0RT3VcsaZgxLeaIS3Ijpv7dmiBMIWXxrrAoCeROH366Ya3okdgGOEeEa53QVZZtsOx6I7TbrZvUHFl/B38K8jBQWu7QA9P1lhUpwFoVlStEiQ6ZT/kdKaUE9sCbJOM/92tuygmGReLKAgQ7LFc8AnLRKgrTH5oBdHzT4U7UUe41ADAkQtJgYTqtVXK9RT7AmkqLZIC0tba4hbnrPrT1P+K4zAF0l8g49Y4VfqrrUy0rfmETr8exh2EXorRzVI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 947cf303-db21-4008-0d87-08d730116168
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 01:52:30.2011 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LT0F11TPV7kOOu9WoVEIlU7JzAZhQMA/uGmaFLLWu1l0FejQ4Lq0fNbPVTZ1no8bCPB6AKdL6u5qRMFSdDTtRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_185233_942004_2A1729FC 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.81 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Roy Zang <roy.zang@nxp.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
 Leo Li <leoyang.li@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQW5kcmV3IE11cnJheSA8
YW5kcmV3Lm11cnJheUBhcm0uY29tPg0KPiBTZW50OiAyMDE5xOo51MIyyNUgMjA6NTUNCj4gVG86
IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPg0KPiBDYzogcm9iaCtkdEBrZXJuZWwu
b3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgc2hhd25ndW9Aa2VybmVsLm9yZzsgTGVvDQo+IExp
IDxsZW95YW5nLmxpQG54cC5jb20+OyBraXNob25AdGkuY29tOyBsb3JlbnpvLnBpZXJhbGlzaUBh
cm0uY29tOyBNLmguDQo+IExpYW4gPG1pbmdodWFuLmxpYW5AbnhwLmNvbT47IE1pbmdrYWkgSHUg
PG1pbmdrYWkuaHVAbnhwLmNvbT47IFJveQ0KPiBaYW5nIDxyb3kuemFuZ0BueHAuY29tPjsgamlu
Z29vaGFuMUBnbWFpbC5jb207DQo+IGd1c3Rhdm8ucGltZW50ZWxAc3lub3BzeXMuY29tOyBsaW51
eC1wY2lAdmdlci5rZXJuZWwub3JnOw0KPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGlu
dXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsNCj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnOyBsaW51eHBwYy1kZXZAbGlzdHMub3psYWJzLm9yZzsNCj4gYXJuZEBhcm5kYi5k
ZTsgZ3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc7IFoucS4gSG91DQo+IDx6aGlxaWFuZy5ob3VA
bnhwLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MyAxMS8xMV0gbWlzYzogcGNpX2VuZHBv
aW50X3Rlc3Q6IEFkZCBMUzEwODhhIGluDQo+IHBjaV9kZXZpY2VfaWQgdGFibGUNCj4gDQo+IE9u
IE1vbiwgU2VwIDAyLCAyMDE5IGF0IDExOjE3OjE2QU0gKzA4MDAsIFhpYW93ZWkgQmFvIHdyb3Rl
Og0KPiA+IEFkZCBMUzEwODhhIGluIHBjaV9kZXZpY2VfaWQgdGFibGUgc28gdGhhdCBwY2ktZXBm
LXRlc3QgY2FuIGJlIHVzZWQNCj4gPiBmb3IgdGVzdGluZyBQQ0llIEVQIGluIExTMTA4OGEuDQo+
ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5iYW9AbnhwLmNvbT4N
Cj4gPiAtLS0NCj4gPiB2MjoNCj4gPiAgLSBObyBjaGFuZ2UuDQo+ID4gdjM6DQo+ID4gIC0gTm8g
Y2hhbmdlLg0KPiA+DQo+ID4gIGRyaXZlcnMvbWlzYy9wY2lfZW5kcG9pbnRfdGVzdC5jIHwgMSAr
DQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KPiA+DQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbWlzYy9wY2lfZW5kcG9pbnRfdGVzdC5jDQo+ID4gYi9kcml2ZXJzL21pc2Mv
cGNpX2VuZHBvaW50X3Rlc3QuYw0KPiA+IGluZGV4IDZlMjA4YTAuLmQ1MzE5NTEgMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9taXNjL3BjaV9lbmRwb2ludF90ZXN0LmMNCj4gPiArKysgYi9kcml2
ZXJzL21pc2MvcGNpX2VuZHBvaW50X3Rlc3QuYw0KPiA+IEBAIC03OTMsNiArNzkzLDcgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkDQo+IHBjaV9lbmRwb2ludF90ZXN0X3RibFtd
ID0gew0KPiA+ICAJeyBQQ0lfREVWSUNFKFBDSV9WRU5ET1JfSURfVEksIFBDSV9ERVZJQ0VfSURf
VElfRFJBNzR4KSB9LA0KPiA+ICAJeyBQQ0lfREVWSUNFKFBDSV9WRU5ET1JfSURfVEksIFBDSV9E
RVZJQ0VfSURfVElfRFJBNzJ4KSB9LA0KPiA+ICAJeyBQQ0lfREVWSUNFKFBDSV9WRU5ET1JfSURf
RlJFRVNDQUxFLCAweDgxYzApIH0sDQo+ID4gKwl7IFBDSV9ERVZJQ0UoUENJX1ZFTkRPUl9JRF9G
UkVFU0NBTEUsIDB4ODBjMCkgfSwNCj4gDQo+IFRoZSBGcmVlc2NhbGUgUENJIGRldmljZXMgYXJl
IHRoZSBvbmx5IGRldmljZXMgaW4gdGhpcyB0YWJsZSB0aGF0IGRvbid0IGhhdmUgYQ0KPiBkZWZp
bmUgZm9yIHRoZWlyIGRldmljZSBJRC4gSSB0aGluayBhIGRlZmluZSBzaG91bGQgYmUgY3JlYXRl
ZCBmb3IgYm90aCBvZiB0aGUNCj4gZGV2aWNlIElEcyBhYm92ZS4NCg0KT0ssIGJ1dCBJIG9ubHkg
ZGVmaW5lIGluIHRoaXMgZmlsZSwgSSBhbSBub3Qgc3VyZSB0aGlzIGNhbiBkZWZpbmUgaW4gaW5j
bHVkZS9saW51eC9wY2lfaWRzLmgNCmZpbGUgDQoNClRoYW5rcyANClhpYW93ZWkNCg0KPiANCj4g
VGhhbmtzLA0KPiANCj4gQW5kcmV3IE11cnJheQ0KPiANCj4gPiAgCXsgUENJX0RFVklDRV9EQVRB
KFNZTk9QU1lTLCBFRERBLCBOVUxMKSB9LA0KPiA+ICAJeyBQQ0lfREVWSUNFKFBDSV9WRU5ET1Jf
SURfVEksIFBDSV9ERVZJQ0VfSURfVElfQU02NTQpLA0KPiA+ICAJICAuZHJpdmVyX2RhdGEgPSAo
a2VybmVsX3Vsb25nX3QpJmFtNjU0X2RhdGENCj4gPiAtLQ0KPiA+IDIuOS41DQo+ID4NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
