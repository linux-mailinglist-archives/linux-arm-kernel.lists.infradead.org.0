Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6FD1E19A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 04:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHYqREGiOuq7pgRN9P+l7NskOK2/RK1K0kXo6aBbRys=; b=BIMASR3HDlY9Jb
	8PF3ZVCy4zXFWRjhdrKLF25pFNJWUw8eDa/c8S2Ptd8mU/iFVO1gqLCx3j/XutBDW/aYYtH6OEKg3
	BsUMLJQA9ig8gzZQprOXUGFu70U8517/qS8zJWy5SX90vttGf68kWfMSpnOCEPzmAzEFPksgtELnY
	kjqJihCkq7OXOUzv2IJwADrhNsnTxvUDxhS24TBzpEgiW4aHGRSPrL6VIZcWkKxZCIpT1StfdM/Gg
	nRMhsn3SvGf6bIRBds+u+D5joscLH/4lP1R7J1jOEUu77eLJ/NFQZCSdxt6FHl+WrHJagnRVt+i1p
	Rex0xUJ/k5VqLoq64O4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdPal-0002g6-5X; Tue, 26 May 2020 02:45:23 +0000
Received: from mail-vi1eur05on2058.outbound.protection.outlook.com
 ([40.107.21.58] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdPaX-0000zB-Nm
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 02:45:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TePn3XvWwYqCTz4gaEhidu/J0FL/Kj3hLkVkag8rqbJKp6X6rY6KKgAClUeWo1v24+S9UYgNOJHNC13XGQWbf8qImN3SivGwhim21DVVxGkhVIbRICXA+uJ0EK73//jQRcKwSeNoAoAuHee2vV63qyjkDQGO3RbU6kHoam60pal/n32CqNTfGE5tQfhpTOnBlPPYd6aZZpXM+mkibJcYhgEbx9MmeLAHZkQ7rsXOKBUjMekImfXwm8ZwAEw9qVDn8NvTmIeD+BYFtcenduUkp6A6UxOoKDXRJ4AKf/PBcvutIaQPMe+69/Jy2Gf0gxJ+V/Jqe8p3Z4ezbNTou7K5BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aApAKKkPQWDeYTgxVwEVnM78LUMJ+zuZCnW9znLsTqc=;
 b=CaGSX1iTFqWrfhsBZGGox2junytq+uvQfrcq+Rq2P7CYPeB4qEN6RV8DD4acw3M8sdfeK8ziC/2UQVAHoiv+jnX8DJ0VkJwlv3TVMNgxd0V4+f4Z3kcG33D+6pzDk4HK7W/CGzqyNw8/V/c/sYbzV3b3fkM4BjptWld5AmTcLyVcBQO/oRWyugYg+TbSP6WRONWiAE2RiZg7kx9jkD/2w/43HN+ClKMAe8muhL0r3IC9S9+BAqnVOgNNGzv1sC+QYCwWQ//hrYRpSYaY173swPNjTnwuvxdN4REVoYfym82T1Kp3AU66rLWBCHSDXPoB2u3OcwoTn8sYAT5mETHRwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aApAKKkPQWDeYTgxVwEVnM78LUMJ+zuZCnW9znLsTqc=;
 b=hKiKRSGdJmCV4S2dek1lvEUZaUYlQbXgKxQkoO8joKH9c6bv5pKu10J86BEg4dCMHqAPz04hGM689tPt+iMmWnH7Ly/NCaN70GXko0yhXiEhcO5bH8PT+RRtGazAuykRe5CPcCr6CqTLp1/W36Q/Vf5zbSgzoIESPNF12f1bOD0=
Received: from DBBPR04MB6090.eurprd04.prod.outlook.com (2603:10a6:10:c4::22)
 by DBBPR04MB6235.eurprd04.prod.outlook.com (2603:10a6:10:c4::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Tue, 26 May
 2020 02:45:05 +0000
Received: from DBBPR04MB6090.eurprd04.prod.outlook.com
 ([fe80::107d:2130:2140:23ec]) by DBBPR04MB6090.eurprd04.prod.outlook.com
 ([fe80::107d:2130:2140:23ec%5]) with mapi id 15.20.3021.029; Tue, 26 May 2020
 02:45:05 +0000
From: Andy Tang <andy.tang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>
Subject: RE: [EXT] Re: [PATCH] arm64: dts: ls1028a: add one more thermal zone
 support
Thread-Topic: [EXT] Re: [PATCH] arm64: dts: ls1028a: add one more thermal zone
 support
Thread-Index: AQHWMmmYEorz7tP6Ik++IHVEgSnNoKi4pLQAgAEFSzA=
Date: Tue, 26 May 2020 02:45:05 +0000
Message-ID: <DBBPR04MB60908EAB2DB840CF87C79B84F3B00@DBBPR04MB6090.eurprd04.prod.outlook.com>
References: <20200525073827.13272-1-andy.tang@nxp.com>
 <bdfd7018-aed8-ddbe-8bd2-2fa834013218@linaro.org>
In-Reply-To: <bdfd7018-aed8-ddbe-8bd2-2fa834013218@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0169d2c1-0f5b-4c5d-2420-08d8011ecbee
x-ms-traffictypediagnostic: DBBPR04MB6235:
x-microsoft-antispam-prvs: <DBBPR04MB6235F1C7629A8D9269B1F91FF3B00@DBBPR04MB6235.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jh8uTgLOtkwhsCUMJjOzCs07XwgLdkYMrHju5si1KGF3jdAVEpPmt7zXCnd3ke3NTxAar8idM8xbO1NpEnVm1mC4cwBOu9QU3N5tiT6yCgnGdqGwj7jN8hq4Vs2eo1e7ZTUFZ6ICDR/sMjeL0Zfez+9sZv8FifxdxLw1PdF/9sP1CmCU6jy1cmw6nDZQlIBCJ7QqrD5TuzGzgSAsw2QwmsqOMqOMqre+auir89DUaaWladKfb1WMJkQoJ6V9v0poSwzaz6KGZvmkSGvv0Q3Prz0DPbithi8yUHoIVLAoHSFrAjXU6aXPJpSsS20b/sTt3nhp8u+OLa9vCOWfmSg3EdNs/YOFInGWaF+gcOjwMADsjdni9dVpC1T3xhaYwQB4paGbVhBQyr93gkM0Ra+7ig==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR04MB6090.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(366004)(39850400004)(396003)(136003)(110136005)(76116006)(66946007)(26005)(71200400001)(52536014)(316002)(8936002)(478600001)(2906002)(66556008)(33656002)(66476007)(64756008)(186003)(44832011)(66446008)(54906003)(86362001)(6506007)(8676002)(53546011)(4326008)(9686003)(55016002)(5660300002)(7696005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: X4hGDJA7sYfJbU4dQ0skVqz6P8ld+3n1ptJl3hn3OTJEhmThEVH2y83NDh0FvI0Q4FALsvz9SGTM1YGwAOGfN/uhLyEGbIhqcr5hvBHivjAkwkpoRoDSvSPaibUpiHXr+V6zVsKo8U8gjj5F5qWBVuDfj2WUKVRGRkLPIx8PusfDd3QIZRZLCkWuUmDCyicaeLkayNV5kc+7ixOQnoIzNxVfOVoTvOxUW04GRgISpGblh+Zj5IJFF6iRaxEn6E60kh0uhaPboFeJDHCGp2cQFUkKfHiMPbYGIT7sioaGXu6CO2q/zc1OrxODGgHDdl6Hm85xRA9Yhdn5bWlSR+0vC42Gaqgc5lUwpEY3i/w1+mTSPGC5DpUeC07+y28CBXUkTOPT6HjkgxFbQRlnTkSs8OQM77bqPEWD0PH47peaO/PQxXLn7kNgp60CLaG/W5z9Lo4OS6PvFmnqOSDtY8fGdnTZdlceAhjkA/bWs0lc84k=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0169d2c1-0f5b-4c5d-2420-08d8011ecbee
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 02:45:05.3214 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E/ZZdFrg4ck9zvHoAXsd/lHcKI6B8YwhH7yPyRgnrdrZ4I83/fMJEpfN4Ib2bziIpr+p6Y/Xtzdx0qrc68G1UQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB6235
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_194509_785720_15FA7E67 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.58 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.58 listed in wl.mailspike.net]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBEYW5pZWwgTGV6Y2FubyA8ZGFu
aWVsLmxlemNhbm9AbGluYXJvLm9yZz4gDQpTZW50OiAyMDIw5bm0NeaciDI15pelIDE5OjA4DQpU
bzogQW5keSBUYW5nIDxhbmR5LnRhbmdAbnhwLmNvbT47IHNoYXduZ3VvQGtlcm5lbC5vcmc7IHJv
YmgrZHRAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb207IGNhdGFsaW4ubWFyaW5hc0Bh
cm0uY29tOyB3aWxsLmRlYWNvbkBhcm0uY29tDQpDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5v
cmc7IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGludXgta2VybmVsQHZn
ZXIua2VybmVsLm9yZw0KU3ViamVjdDogW0VYVF0gUmU6IFtQQVRDSF0gYXJtNjQ6IGR0czogbHMx
MDI4YTogYWRkIG9uZSBtb3JlIHRoZXJtYWwgem9uZSBzdXBwb3J0DQoNCkNhdXRpb246IEVYVCBF
bWFpbA0KDQpPbiAyNS8wNS8yMDIwIDA5OjM4LCBZdWFudGlhbiBUYW5nIHdyb3RlOg0KPiBUaGVy
ZSBhcmUgMiB0aGVybWFsIHpvbmVzIGluIGxzMTAyOGEgc29jLiBDdXJyZW50IGR0cyBvbmx5IGlu
Y2x1ZGVzIA0KPiBvbmUuIFRoaXMgcGF0Y2ggYWRkcyB0aGUgb3RoZXIgdGhlcm1hbCB6b25lIG5v
ZGUgaW4gZHRzIHRvIGVuYWJsZSBpdC4NCg0KRm9yIG15IHBlcnNvbmFsIGluZm9ybWF0aW9uLCBp
cyB0aGVyZSBhIGNvb2xpbmcgZGV2aWNlIGZvciB0aGUgRERSPw0KDQpBOiBUaGVyZSBpcyBvbmx5
IG9uZSBjb29saW5nIGRldmljZSB3aGljaCBpcyB1c2VkIGJ5IGNvcmUtY2x1c3RlciBzZW5zb3Ig
em9uZS4NClNvIHRoZXJlIGlzIG5vIGNvb2xpbmcgZGV2aWNlIGZvciBERFIuDQoNCkJSLA0KQW5k
eSANCg0KPiBTaWduZWQtb2ZmLWJ5OiBZdWFudGlhbiBUYW5nIDxhbmR5LnRhbmdAbnhwLmNvbT4N
Cj4gLS0tDQo+ICAuLi4vYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kg
fCAyMiANCj4gKysrKysrKysrKysrKysrKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIxIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kgDQo+IGIvYXJjaC9hcm02NC9ib290L2R0
cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaQ0KPiBpbmRleCAwNTVmMTE0Y2Y4NDguLmJjNmYw
YzBmODVkYSAxMDA2NDQNCj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNs
LWxzMTAyOGEuZHRzaQ0KPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wt
bHMxMDI4YS5kdHNpDQo+IEBAIC0xMjksMTEgKzEyOSwzMSBAQA0KPiAgICAgICB9Ow0KPg0KPiAg
ICAgICB0aGVybWFsLXpvbmVzIHsNCj4gLSAgICAgICAgICAgICBjb3JlLWNsdXN0ZXIgew0KPiAr
ICAgICAgICAgICAgIGRkci1jb250cm9sbGVyIHsNCj4gICAgICAgICAgICAgICAgICAgICAgIHBv
bGxpbmctZGVsYXktcGFzc2l2ZSA9IDwxMDAwPjsNCj4gICAgICAgICAgICAgICAgICAgICAgIHBv
bGxpbmctZGVsYXkgPSA8NTAwMD47DQo+ICAgICAgICAgICAgICAgICAgICAgICB0aGVybWFsLXNl
bnNvcnMgPSA8JnRtdSAwPjsNCj4NCj4gKyAgICAgICAgICAgICAgICAgICAgIHRyaXBzIHsNCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGRyLWN0cmxlci1hbGVydCB7DQo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdGVtcGVyYXR1cmUgPSA8ODUwMDA+Ow0K
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGh5c3RlcmVzaXMgPSA8MjAw
MD47DQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdHlwZSA9ICJwYXNz
aXZlIjsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsNCj4gKw0KPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBkZHItY3RybGVyLWNyaXQgew0KPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHRlbXBlcmF0dXJlID0gPDk1MDAwPjsNCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBoeXN0ZXJlc2lzID0gPDIwMDA+Ow0KPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHR5cGUgPSAiY3JpdGljYWwiOw0K
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Ow0KPiArICAgICAgICAgICAgICAgICAg
ICAgfTsNCj4gKyAgICAgICAgICAgICB9Ow0KPiArDQo+ICsgICAgICAgICAgICAgY29yZS1jbHVz
dGVyIHsNCj4gKyAgICAgICAgICAgICAgICAgICAgIHBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwx
MDAwPjsNCj4gKyAgICAgICAgICAgICAgICAgICAgIHBvbGxpbmctZGVsYXkgPSA8NTAwMD47DQo+
ICsgICAgICAgICAgICAgICAgICAgICB0aGVybWFsLXNlbnNvcnMgPSA8JnRtdSAxPjsNCj4gKw0K
PiAgICAgICAgICAgICAgICAgICAgICAgdHJpcHMgew0KPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBjb3JlX2NsdXN0ZXJfYWxlcnQ6IGNvcmUtY2x1c3Rlci1hbGVydCB7DQo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdGVtcGVyYXR1cmUgPSA8ODUwMDA+Ow0K
Pg0KDQoNCi0tDQo8aHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNv
bS8/dXJsPWh0dHAlM0ElMkYlMkZ3d3cubGluYXJvLm9yZyUyRiZhbXA7ZGF0YT0wMiU3QzAxJTdD
YW5keS50YW5nJTQwbnhwLmNvbSU3Q2ZiMTJlZDQ3ZGIzYzQ5MTJiZjFiMDhkODAwOWJlN2QwJTdD
Njg2ZWExZDNiYzJiNGM2ZmE5MmNkOTljNWMzMDE2MzUlN0MwJTdDMCU3QzYzNzI2MDAxNjg5MjUw
OTEzMiZhbXA7c2RhdGE9V1VuYkhzM08xeUxmb1JaMnVzUFhBdTdFR0JvU0w3dnlwbm1yaFRHSGFH
SSUzRCZhbXA7cmVzZXJ2ZWQ9MD4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUg
Zm9yIEFSTSBTb0NzDQoNCkZvbGxvdyBMaW5hcm86ICA8aHR0cHM6Ly9ldXIwMS5zYWZlbGlua3Mu
cHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHAlM0ElMkYlMkZ3d3cuZmFjZWJvb2suY29t
JTJGcGFnZXMlMkZMaW5hcm8mYW1wO2RhdGE9MDIlN0MwMSU3Q2FuZHkudGFuZyU0MG54cC5jb20l
N0NmYjEyZWQ0N2RiM2M0OTEyYmYxYjA4ZDgwMDliZTdkMCU3QzY4NmVhMWQzYmMyYjRjNmZhOTJj
ZDk5YzVjMzAxNjM1JTdDMCU3QzAlN0M2MzcyNjAwMTY4OTI1MDkxMzImYW1wO3NkYXRhPVc0azhW
czN3VlZ2ZmVHTjR4VnhLZ0JsM21HMmolMkZqTUpqMDdORUFxcEFjayUzRCZhbXA7cmVzZXJ2ZWQ9
MD4gRmFjZWJvb2sgfCA8aHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29r
LmNvbS8/dXJsPWh0dHAlM0ElMkYlMkZ0d2l0dGVyLmNvbSUyRiUyMyElMkZsaW5hcm9vcmcmYW1w
O2RhdGE9MDIlN0MwMSU3Q2FuZHkudGFuZyU0MG54cC5jb20lN0NmYjEyZWQ0N2RiM2M0OTEyYmYx
YjA4ZDgwMDliZTdkMCU3QzY4NmVhMWQzYmMyYjRjNmZhOTJjZDk5YzVjMzAxNjM1JTdDMCU3QzAl
N0M2MzcyNjAwMTY4OTI1MDkxMzImYW1wO3NkYXRhPU9lRkxQQTBsWkh1dkdrbTFPdVQzOFB4QVVw
TE1zcjdmQlhFQmtFR1dYYzglM0QmYW1wO3Jlc2VydmVkPTA+IFR3aXR0ZXIgfCA8aHR0cHM6Ly9l
dXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHAlM0ElMkYlMkZ3
d3cubGluYXJvLm9yZyUyRmxpbmFyby1ibG9nJTJGJmFtcDtkYXRhPTAyJTdDMDElN0NhbmR5LnRh
bmclNDBueHAuY29tJTdDZmIxMmVkNDdkYjNjNDkxMmJmMWIwOGQ4MDA5YmU3ZDAlN0M2ODZlYTFk
M2JjMmI0YzZmYTkyY2Q5OWM1YzMwMTYzNSU3QzAlN0MwJTdDNjM3MjYwMDE2ODkyNTA5MTMyJmFt
cDtzZGF0YT1hWVIlMkZhVXpjRnhzTURHOVFhSDBHZTdBS2cwa0puaVNPU1BFNmZYb0pwenclM0Qm
YW1wO3Jlc2VydmVkPTA+IEJsb2cNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
