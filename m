Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A85FE1677
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 11:43:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IEetYlBy4B0fvfcCZUcBAAXajs8pJXX3PweUMqdiJEQ=; b=dwhs+vEMV/d+9a
	2JqkbQP6KPjnsd6tFiZI2yZBujfYe+gLPAOTTxnKHog1mK5hFW4S6o9+EpM1501a4wUwY97kjDbm0
	7TJ47rIwY0cbFfFxvxD8A6JVewC/A8aU7VV/K9FIKqvQC2yWeAYVe+KYLt4ZmfKMnnaOeVYlXKF+c
	kigH8+Tsahe4xHlpIoUGHxnpZKYqRMNapJeRqYlVgADKeBCZA8elPkIQQgJUC1iQqTjOFTx+G3dof
	d0kAA9Q/fvz58iQv4XoZN+18p9dyUoQ7AJNl5RfP/e3hRdpHytCB0tS3s5ZoUNDMt9UR8TGPEz9t8
	Bma301x5izuqlJlk4djg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDAT-0002Xl-77; Wed, 23 Oct 2019 09:43:01 +0000
Received: from mail-eopbgr20052.outbound.protection.outlook.com ([40.107.2.52]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDAJ-0002Wy-Al
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 09:42:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mTXE3jwTl9sWThKUvY3eM9AdBk/vXZireBVT5qIBP+/6fPAp0wAIojeI29nuQoURWzH/KP8TUzFYC/JPBU3CfyasoPYTSbFG/vI3h3du37vuYYh3H5CZyLinq08k/FEGlvRh3NAzQedkvlQ0pwv1nKBtWc3R/3gcLgxAbt/pmDDBH1gbORTQYuOTd6D0PWWZJgNanx4AR22KTn68mtMLTNB3f4TAUBhygfoX1/KXSASqshyt1ozZsYC7sXuV8ybs0XgEYqGBJ6Se7XwMkUSJC0p06sFgkRZap0N9HBgtwiPfl+hdm84ovjjsBe2A+KBHFuT46+OAuXOTxHUplkVN6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nd0122bT0bggbOWKO3dzgaiVb6kidz6dNtmzt+r/aSk=;
 b=j3TKgEtF4M3JXoVhhFl5FdvmAWFq/8alWffXmfym5W3ETml/M5ZZu6oI3nCdA7nGOR+NsghN5yUMOEyNjry1a+OwsEBz9nX9kD3t9G3sr68rll/HDB/MCqeZl5DsrES9h2CMwdKQO2QO9O0oU2M74pnVgsUbdbqCX9mJ55SHA5mUolrhFRbhnJoL2eLliwag7VAOd9OBNSIsW2WPcpBgVTuEkiMUTSByRNSVzEjogeJtT07AAs/CJHiwQsD7yshtC7647RYkLMUHCSD4vIesPWs7h9Mga1aIJypM8oob8Bt1yTGybOdJDSo/FTVqvSwigpNSGl/rMWRsQgesleZYpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nd0122bT0bggbOWKO3dzgaiVb6kidz6dNtmzt+r/aSk=;
 b=GhGkXWfxZCWgXzQ2uTk4npZMUybBQDqDvHu0LRbbGwJt1RyDZcprsmONFc54GSJcKzygjFl3kwg3obc9JzG7JlbRgA4RHCOKwZ9nY2ZkNdD+dfrPGhU1hFvHJZkBBb8KTSgRJ8TPFmq4MoeE2Q14U8JjbOWCHFtA6+sbDDo+lSQ=
Received: from DB8PR04MB6826.eurprd04.prod.outlook.com (52.133.243.14) by
 DB8PR04MB5931.eurprd04.prod.outlook.com (20.179.11.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 23 Oct 2019 09:42:45 +0000
Received: from DB8PR04MB6826.eurprd04.prod.outlook.com
 ([fe80::bcee:92dc:277f:6a78]) by DB8PR04MB6826.eurprd04.prod.outlook.com
 ([fe80::bcee:92dc:277f:6a78%7]) with mapi id 15.20.2387.021; Wed, 23 Oct 2019
 09:42:45 +0000
From: Ran Wang <ran.wang_1@nxp.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: RE: [PATCH v9 3/3] soc: fsl: add RCPM driver
Thread-Topic: [PATCH v9 3/3] soc: fsl: add RCPM driver
Thread-Index: AQHViXs93WsdxAf3IEa22DXFaDvA7Kdn8POAgAACqbA=
Date: Wed, 23 Oct 2019 09:42:45 +0000
Message-ID: <DB8PR04MB682655D179242325ED6EC1FDF16B0@DB8PR04MB6826.eurprd04.prod.outlook.com>
References: <20191023082423.12569-1-ran.wang_1@nxp.com>
 <20191023082423.12569-3-ran.wang_1@nxp.com>
 <CAJZ5v0i-gfRTzbDL5SBp_XfOYCkJPENpOjU+Pd3wi5aOjZd1HQ@mail.gmail.com>
In-Reply-To: <CAJZ5v0i-gfRTzbDL5SBp_XfOYCkJPENpOjU+Pd3wi5aOjZd1HQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ran.wang_1@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9a371491-ade7-4ea8-acc8-08d7579d5bdd
x-ms-traffictypediagnostic: DB8PR04MB5931:|DB8PR04MB5931:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB5931CA44F4F29CF853322568F16B0@DB8PR04MB5931.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(376002)(346002)(39860400002)(366004)(199004)(189003)(476003)(81166006)(99286004)(53546011)(7696005)(102836004)(76176011)(186003)(54906003)(446003)(52536014)(33656002)(11346002)(486006)(5660300002)(86362001)(26005)(6506007)(66066001)(71200400001)(229853002)(71190400001)(2906002)(6116002)(3846002)(6246003)(316002)(6436002)(9686003)(55016002)(14444005)(66556008)(76116006)(66946007)(66476007)(64756008)(66446008)(25786009)(7736002)(6916009)(8676002)(478600001)(14454004)(8936002)(74316002)(305945005)(7416002)(4326008)(81156014)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB5931;
 H:DB8PR04MB6826.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zNfNlbxH0s3WFB0MA6R7VBkktcj4nVNqvabprN3aU1iusnw16LVLay9rh3W0UZP7wr5aidG9MGC/rc9ZWwkqPwxkyA0wgnhR+8wmqUTNcnjti+OWbaC+SXQ4hcsM35wVt99seQXltpOFNcjLQu9/F+YMtQHAj4+bb/Yp4QHArpNDKGXoQczFuJd1Dcvg4tiMczO8MwYOjLOsl6e2cNisAtbTedt0ZQhN9UBinGwMezrKeyU7oIVtCKWrS8xhwLkB++9cE1jJWRu2iGQkIF9DxzwQ/AhLWzkPteiT5BWI85cVANG5OA/MyMYlerWxOKEyvqSGjUt80wQC4uA6QLB40KXUC70d8VcbpJcFtmuxMvWaoBSRw/vo4oxoRB110fDITMyyXmNXGt8IAMZIwiUK0i0pox5poCl+CVMNBdQuKGFR9KDVtjNkewM+VHi8GMBA
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a371491-ade7-4ea8-acc8-08d7579d5bdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 09:42:45.7586 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z7cYpci37/bNTSi4HFSxUjcYB2R1EBszf9RBiZ0/AA54LsQvz/Z1KB+l5ni5noxQ8XwtML8htkjGzLi6tVEQEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5931
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_024251_506511_150F494F 
X-CRM114-Status: GOOD (  25.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Biwen Li <biwen.li@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Len Brown <len.brown@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmFmYWVsLA0KDQpPbiBXZWRuZXNkYXksIE9jdG9iZXIgMjMsIDIwMTkgMTc6MTIsIFJhZmFl
bCBKLiBXeXNvY2tpIHdyb3RlOg0KPiANCj4gT24gV2VkLCBPY3QgMjMsIDIwMTkgYXQgMTA6MjQg
QU0gUmFuIFdhbmcgPHJhbi53YW5nXzFAbnhwLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBUaGUgTlhQ
J3MgUW9ySVEgUHJvY2Vzc29ycyBiYXNlZCBvbiBBUk0gQ29yZSBoYXZlIFJDUE0gbW9kdWxlIChS
dW4NCj4gPiBDb250cm9sIGFuZCBQb3dlciBNYW5hZ2VtZW50KSwgd2hpY2ggcGVyZm9ybXMgc3lz
dGVtIGxldmVsIHRhc2tzDQo+ID4gYXNzb2NpYXRlZCB3aXRoIHBvd2VyIG1hbmFnZW1lbnQgc3Vj
aCBhcyB3YWtldXAgc291cmNlIGNvbnRyb2wuDQo+ID4NCj4gPiBUaGlzIGRyaXZlciBkZXBlbmRz
IG9uIFBNIHdha2V1cCBzb3VyY2UgZnJhbWV3b3JrIHdoaWNoIGhlbHAgdG8NCj4gPiBjb2xsZWN0
IHdha2UgaW5mb3JtYXRpb24uDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBSYW4gV2FuZyA8cmFu
LndhbmdfMUBueHAuY29tPg0KPiA+IC0tLQ0KPiA+IENoYW5nZSBpbiB2OToNCj4gPiAgICAgICAg
IC0gQWRkIGtlcm5lbGRvYyBmb3IgcmNwbV9wbV9wcmVwYXJlKCkuDQo+ID4gICAgICAgICAtIFVz
ZSBwcl9kZWJ1ZygpIHRvIHJlcGxhY2UgZGV2X2luZm8oKSwgdG8gcHJpbnQgbWVzc2FnZSB3aGVu
IGRlY2lkZQ0KPiA+ICAgICAgICAgICBza2lwIGN1cnJlbnQgd2FrZXVwIG9iamVjdCwgdGhpcyBp
cyBtYWlubHkgZm9yIGRlYnVnZ2luZyAoaW4gb3JkZXINCj4gPiAgICAgICAgICAgdG8gZGV0ZWN0
IHBvdGVudGlhbCBpbXByb3BlciBpbXBsZW1lbnRhdGlvbiBvbiBkZXZpY2UgdHJlZSB3aGljaA0K
PiA+ICAgICAgICAgICBtaWdodCBjYXVzZSB0aGlzIHNraXApLg0KPiA+ICAgICAgICAgLSBSZWZh
Y3RvciBsb29waW5nIGltcGxlbWVudGF0aW9uIGluIHJjcG1fcG1fcHJlcGFyZSgpLCBhZGQgbW9y
ZQ0KPiA+ICAgICAgICAgICBjb21tZW50cyB0byBoZWxwIGNsYXJpZnkuDQo+ID4NCj4gPiBDaGFu
Z2UgaW4gdjg6DQo+ID4gICAgICAgICAtIEFkanVzdCByZWxhdGVkIEFQSSB1c2FnZSB0byBtZWV0
IHdha2V1cC5jJ3MgdXBkYXRlIGluIHBhdGNoIDEvMy4NCj4gPiAgICAgICAgIC0gQWRkIHNhbml0
eSBjaGVja2luZyBmb3IgdGhlIGNhc2Ugb2Ygd3MtPmRldiBvciB3cy0+ZGV2LT5wYXJlbnQNCj4g
PiAgICAgICAgICAgaXMgbnVsbC4NCj4gPg0KPHNuaXA+DQo+ID4gKw0KPiA+ICsgICAgICAgICAg
ICAgICAvKiAgV2FrZXVwIHNvdXJjZSBzaG91bGQgcmVmZXIgdG8gY3VycmVudCByY3BtIGRldmlj
ZSAqLw0KPiA+ICsgICAgICAgICAgICAgICBpZiAocmV0IHx8IChucC0+cGhhbmRsZSAhPSB2YWx1
ZVswXSkpIHsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBwcl9kZWJ1ZygiJXMgZG9lc24n
dCByZWZlciB0byB0aGlzIHJjcG1cbiIsDQo+ID4gKyB3cy0+bmFtZSk7DQo+IA0KPiBJJ20gc3Rp
bGwgcXVpdGUgdW5zdXJlIHdoeSBpdCBpcyB1c2VmdWwgdG8gcHJpbnQgdGhpcyBtZXNzYWdlIGlu
c3RlYWQgb2YgcHJpbnRpbmcgb25lDQo+IHdoZW4gdGhlIHdha2V1cCBzb3VyY2UgZG9lcyBtYXRj
aCAodGhlcmUgbWF5IGJlIG1hbnkgd2FrZXVwIHNvdXJjZQ0KPiBvYmplY3RzIHlvdSBkb24ndCBj
YXJlIGFib3V0IGluIHByaW5jaXBsZSksIGJ1dCB3aGF0ZXZlci4NCg0KT0ssIG15IHByZXZpb3Vz
IGlkZWEgd2FzIHRoYXQgdXNlciBtaWdodCBsaWtlbHkgbWlzLXVuZGVyc3RhbmQgcmVsYXRlZCBk
ZXNjcmlwdGlvbiBpbg0KYmluZGluZ3Mgd2hlbiBhZGRpbmcgbm9kZSBhbmQgcHJvcGVydHkgImZz
bCxyY3BtLXdha2V1cCIuIEFkZCB0aGlzIHByaW50IG1pZ2h0DQpoZWxwIGhpbS9oZXIgdG8gZ2V0
IGFsZXJ0ZWQgdGhhdCBSQ1BNIGRyaXZlciBkb2Vzbid0IHN1Y2Nlc3NmdWxseSBwYXJzaW5nIGlu
Zm8gd2hpY2gNCnRoZXkgZGlkbid0IGV4cGVjdC4gQ3VycmVudGx5IG9uIExTMTA4OEFSREIgYm9h
cmQsIEkgY2FuIG9ubHkgc2VlIG9uZSB3YWtldXAgc291cmNlDQp0aGUgUkNQTSBkcml2ZXIgZG9l
c27igJl0IG5lZWQgdG8gY2FyZS4NCg0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGNvbnRp
bnVlOw0KPiA+ICsgICAgICAgICAgICAgICB9DQo+ID4gKw0KPiA+ICsgICAgICAgICAgICAgICAv
KiBQcm9wZXJ0eSAiI2ZzbCxyY3BtLXdha2V1cC1jZWxscyIgb2YgcmNwbSBub2RlIGRlZmluZXMg
dGhlDQo+ID4gKyAgICAgICAgICAgICAgICAqIG51bWJlciBvZiBJUFBERVhQQ1IgcmVnaXN0ZXIg
Y2VsbHMsIGFuZCAiZnNsLHJjcG0td2FrZXVwIg0KPiA+ICsgICAgICAgICAgICAgICAgKiBvZiB3
YWtldXAgc291cmNlIElQIGNvbnRhaW5zIGFuIGludGVnZXIgYXJyYXk6IDxwaGFuZGxlIHRvDQo+
ID4gKyAgICAgICAgICAgICAgICAqIFJDUE0gbm9kZSwgSVBQREVYUENSMCBzZXR0aW5nLCBJUFBE
RVhQQ1IxIHNldHRpbmcsDQo+ID4gKyAgICAgICAgICAgICAgICAqIElQUERFWFBDUjIgc2V0dGlu
ZywgZXRjPi4NCj4gPiArICAgICAgICAgICAgICAgICoNCj4gPiArICAgICAgICAgICAgICAgICog
U28gd2Ugd2lsbCBnbyB0aG91Z2h0IHRoZW0gYW5kIGRvIHByb2dyYW1taW5nIGFjY29yZG5nbHku
DQo+ID4gKyAgICAgICAgICAgICAgICAqLw0KPiA+ICsgICAgICAgICAgICAgICBmb3IgKGkgPSAw
OyBpIDwgcmNwbS0+d2FrZXVwX2NlbGxzOyBpKyspIHsNCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICB1MzIgdG1wID0gdmFsdWVbaSArIDFdOw0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
IHZvaWQgX19pb21lbSAqYWRkcmVzcyA9IGJhc2UgKyBpICogNDsNCj4gPiArDQo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgaWYgKCF0bXApDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBjb250aW51ZTsNCj4gPiArDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgLyog
V2UgY2FuIG9ubHkgT1IgcmVsYXRlZCBiaXRzICovDQo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgaWYgKHJjcG0tPmxpdHRsZV9lbmRpYW4pIHsNCj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHRtcCB8PSBpb3JlYWQzMihhZGRyZXNzKTsNCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGlvd3JpdGUzMih0bXAsIGFkZHJlc3MpOw0KPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgIH0gZWxzZSB7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB0bXAgfD0gaW9yZWFkMzJiZShhZGRyZXNzKTsNCj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGlvd3JpdGUzMmJlKHRtcCwgYWRkcmVzcyk7DQo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgfQ0KPiA+ICsgICAgICAgICAgICAgICB9DQo+ID4gKyAgICAgICB9DQo+ID4gKw0K
PiA+ICsgICAgICAgd2FrZXVwX3NvdXJjZXNfcmVhZF91bmxvY2soaWR4KTsNCj4gPiArDQo+ID4g
KyAgICAgICByZXR1cm4gMDsNCj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIGNvbnN0IHN0cnVj
dCBkZXZfcG1fb3BzIHJjcG1fcG1fb3BzID0gew0KPiA+ICsgICAgICAgLnByZXBhcmUgPSAgcmNw
bV9wbV9wcmVwYXJlLA0KPiA+ICt9Ow0KPiANCj4gRm9yIHRoZSBhYm92ZToNCj4gDQo+IFJldmll
d2VkLWJ5OiBSYWZhZWwgSi4gV3lzb2NraSA8cmFmYWVsLmoud3lzb2NraUBpbnRlbC5jb20+DQoN
ClRoYW5rcyBmb3IgeW91ciB0aW1lLg0KDQpSZWdhcmRzLA0KUmFuDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
