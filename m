Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C7E35538
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 04:25:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJWAhUU5lcS1WjIT8cFOmjOlk5eZSvenp94HSXpC4H4=; b=bg9olFxskTkqL7
	2rg+VKzwsm3W8lQthRfb44uTu22EpAJGls3dlBLP10nUIUPZgA/9LvxZSDaIe7iQ3cfLc/5sCMA20
	ckYh4lfgMid8wyEvx6zMBPkRKbA2J9V2iU9CJQcGr95XSBWaznwtGWPB6YvG+lOBoe7w8TWlSGjUa
	eeI4p32mOfKeDX8YzlaQMlUt1ZPoaXA14p11P29fqPVlPaqZ3619MtO4uC7JROQ0bZQZRnYLDWp8t
	3/avbxksaQbS/Oi4gCIbnH8k32OLhgc5BlNq55aX7iwQPyK9McJLbbCuosBLhd/WLE8z9BvJGZhs7
	4cwMlK80LwvHt0Un3BEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYLc5-00033Z-Um; Wed, 05 Jun 2019 02:25:17 +0000
Received: from mail-eopbgr60073.outbound.protection.outlook.com ([40.107.6.73]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYLby-00029t-PE
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 02:25:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WP44AFfGfS/Dl7DZmYj2i+WklCHcuM18wzZpVSFDxYQ=;
 b=gVFi7n4ON71QxbkKwLDJXJj6om0v8CQRKGo/IYx+dtF/dCx5amCP68KOpKxLJlP3b57qE3v4ZFD7mRZHT+eJ81c2yzoBzkIWlDPGw0M+jdPEBtNRt7Gv6aUGYGRaauekXLkxB0ltwbfhKimUj5dWkKyrrkiCbNdDkNCvFtv2lf8=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.235.81) by
 VE1PR04MB6670.eurprd04.prod.outlook.com (20.179.235.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.17; Wed, 5 Jun 2019 02:25:02 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::a13e:6f61:e9e6:16d7]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::a13e:6f61:e9e6:16d7%7]) with mapi id 15.20.1943.018; Wed, 5 Jun 2019
 02:25:02 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "vkoul@kernel.org" <vkoul@kernel.org>
Subject: Re: [PATCH v3 5/8] dmaengine: fsl-edma: add drvdata for vf610
Thread-Topic: [PATCH v3 5/8] dmaengine: fsl-edma: add drvdata for vf610
Thread-Index: AQHVFf3r7/Xb7jxz/ECdaeOw3gnZcaaLd3OAgAFveAA=
Date: Wed, 5 Jun 2019 02:25:02 +0000
Message-ID: <1559730524.24019.11.camel@nxp.com>
References: <20190529090848.34350-1-yibin.gong@nxp.com>
 <20190529090848.34350-6-yibin.gong@nxp.com>
 <20190604123331.GE15118@vkoul-mobl>
In-Reply-To: <20190604123331.GE15118@vkoul-mobl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.18.5.2-0ubuntu3.2 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5eef4971-2cef-41bc-4b97-08d6e95d03e7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6670; 
x-ms-traffictypediagnostic: VE1PR04MB6670:
x-microsoft-antispam-prvs: <VE1PR04MB66707006ABC29C7E5D7F474F89160@VE1PR04MB6670.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(366004)(136003)(376002)(199004)(189003)(14454004)(6246003)(53546011)(6436002)(25786009)(5660300002)(54906003)(229853002)(53936002)(6506007)(86362001)(11346002)(186003)(7416002)(76176011)(76116006)(1730700003)(64756008)(66476007)(66556008)(66446008)(5640700003)(81156014)(81166006)(6512007)(4326008)(6486002)(91956017)(8676002)(316002)(71190400001)(50226002)(8936002)(71200400001)(66066001)(66946007)(446003)(73956011)(6916009)(486006)(2351001)(7736002)(305945005)(2501003)(36756003)(99286004)(68736007)(2906002)(26005)(4744005)(256004)(3846002)(103116003)(102836004)(476003)(6116002)(478600001)(2616005)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6670;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: joe5DdmRg2PzTPEbrlGD/5ABWreANdEOZbZyYo60HQSZM2cAXEpSKBu4zFeGMcbU4xRjIc9WXfQI3I99QEEKFv9OU1HYjFxmemR/jtCrligbCxrHx6vkszxovrEcepjsXHtYROoLZVdXFO//+kA7V5URj3P32V6mO6+u6PNIlA6NuEoLrGys53zRpmqO8RmDGynKVvJ3iUQ3m++yFxA2TpRYOWWFOB+i/DFiCDi2K/O4KY92LkmEB0iPJH6m0ru6b1uNOFwZ7max7fwBwX7SXbPHqTJu4XYfgY2wjQmAmrtQPFHdmAm96xM7R4zSE02Wy7C7HSS7E7caLpKfQH2ete9i3SKrQLLriLyNryghiZ0BCLX/DpROm8ydCF7p3amvF30w8M8K2/G3hA6QTx2uIboznR1Jk5UNwS2U+EHMeoA=
Content-ID: <8D5076106775FA4C8D1276EB52B6257E@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eef4971-2cef-41bc-4b97-08d6e95d03e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2019 02:25:02.4774 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yibin.gong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6670
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_192510_822817_9EE29D85 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24g5LqMLCAyMDE5LTA2LTA0IGF0IDE4OjAzICswNTMwLCBWaW5vZCBLb3VsIHdyb3RlOg0KPiBP
biAyOS0wNS0xOSwgMTc6MDgsIHlpYmluLmdvbmdAbnhwLmNvbSB3cm90ZToNCj4gDQo+ID4gDQo+
ID4gQEAgLTIwNSw4ICsyMjgsOSBAQCBzdGF0aWMgaW50IGZzbF9lZG1hX3Byb2JlKHN0cnVjdA0K
PiA+IHBsYXRmb3JtX2RldmljZSAqcGRldikNCj4gPiDCoAlpZiAoIWZzbF9lZG1hKQ0KPiA+IMKg
CQlyZXR1cm4gLUVOT01FTTsNCj4gPiDCoA0KPiA+IC0JZnNsX2VkbWEtPnZlcnNpb24gPSB2MTsN
Cj4gPiAtCWZzbF9lZG1hLT5kbWFtdXhfbnIgPSBETUFNVVhfTlI7DQo+ID4gKwlmc2xfZWRtYS0+
ZHJ2ZGF0YSA9IGRydmRhdGE7DQo+ID4gKwlmc2xfZWRtYS0+dmVyc2lvbiA9IGRydmRhdGEtPnZl
cnNpb247DQo+ID4gKwlmc2xfZWRtYS0+ZG1hbXV4X25yID0gZHJ2ZGF0YS0+ZG1hbXV4czsNCj4g
QW5kIGNhbiB3ZSBhdm9pZCB0aGUgZHVwbGljYXRpb24gaGVyZSwgeW91IGhhdmUgdmVyc2lvbiBh
bmQgZG1hbXV4cw0KPiByZXByZXNlbnRlZCBpbiB0d28gcGxhY2VzLiBCdXQgcmlnaHQgbm93IGl0
IGxvb2tzIGxvZ2ljYWwgc28gdGhlDQo+IHJlbW92YWwNCj4gc2hvdWxkIGJlIGRvbmUgYWZ0ZXIg
dGhpcyBzZXJpZXMNClRvIGF2b2lkIG1vcmUgY29kZSBjaGFuZ2VzIGluIG90aGVyIGVkbWEgZHJp
dmVyIHN1Y2ggYXMgbWNmLWVkbWEuYyBhbmQNCmZzbC1lZG1hLWNvbW1vbi5jKHJlcGxhY2UgYWxs
IHZlcnNpb24vZG1hbXV4X25yIHdpdGggbmV3DQonZHJ2ZGF0YScpLG1lYW53aGlsZSwgbm8gYm9h
cmQgdG8gdGVzdCBtY2YtZWRtYSBzbyBJIGtlZXANCid2ZXJzaW9uJy8nZG1hbXV4JyBoZXJlIGlu
IHRoZSBsYXN0IG1pbnV0ZS4gQnV0IGlmIHlvdSBzdGljaywgSSB3b3VsZA0KdHJ5IHRvIHJlZmlu
ZSBpdCBpbiBuZXh0IHZlcnNpb24uwqANCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
