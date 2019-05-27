Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1A92AF65
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 09:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tKTedTbo6mEhU7k/SUOym00xFs507RZggaD6TlLqvTo=; b=JK4BgeiAtpcycV
	JGOdfnUJabjX35qCz6DNXNLjXjfKJKjWQ/izRsaMNXr9v9b54p8O/PpDCijOKB76tAYGvT9wNChRB
	C2ZRDzED6YrAFLqG1LhWjmMMO4qjuZ00cq8mrRBZqMiGqgm4jEmmSztCBVTXkP8Pu5iywCAunyYTE
	itZ40LQawGmWZjHZ5X7gZfESe72kkciaBZLQ8647pOKVeMwFxTd/mn7oEa3xuiSgClxmo3rNjkeke
	26W4rHvhwnLyFxuNOeZV628yLwa78vvu0UEbuUCpjAIQ1oDxTYS0XXQZVq/lGY+iraPg72KPB570X
	USUt+MngC5mJNQpkd2EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVA6E-000864-IS; Mon, 27 May 2019 07:31:14 +0000
Received: from mail-eopbgr30077.outbound.protection.outlook.com ([40.107.3.77]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVA67-00085Y-DB
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 07:31:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=79ZjyipAqebJuZXJXJz7EtcewtV9LhALiwRnr28aT5U=;
 b=KOFBijN4t3ebtlVA0HuyOLXWruv5+ska5nzSTGyEsm5RpCekX6r7LRqQsh8Hk5J0ygDpks0Wvr+Xzk5WppTpXvsiDGyjf5AcoQXzRH1Xlq2IbDqLZeTKz6tJd5iN6pFMbgq1KuMA5ZHqF8KQuRWcwlNaXdMo/FN46p78w0ErAd8=
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com (20.177.55.90) by
 VI1PR04MB3246.eurprd04.prod.outlook.com (10.170.229.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.19; Mon, 27 May 2019 07:31:01 +0000
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5062:df97:a70b:93f8]) by VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5062:df97:a70b:93f8%7]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 07:31:01 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "vkoul@kernel.org" <vkoul@kernel.org>
Subject: Re: [PATCH v1 4/6] dmaengine: fsl-edma: add i.mx7ulp edma2 version
 support
Thread-Topic: [PATCH v1 4/6] dmaengine: fsl-edma: add i.mx7ulp edma2 version
 support
Thread-Index: AQHVBxkiWq7ELKRpKk+QnDmvsVTzcqZ+nkiAgACW+IA=
Date: Mon, 27 May 2019 07:31:01 +0000
Message-ID: <1558971291.19282.3.camel@nxp.com>
References: <1557512248-8440-1-git-send-email-yibin.gong@nxp.com>
 <1557512248-8440-5-git-send-email-yibin.gong@nxp.com>
 <20190527063431.GC15118@vkoul-mobl>
In-Reply-To: <20190527063431.GC15118@vkoul-mobl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.18.5.2-0ubuntu3.2 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 09b42a95-d862-45b3-3036-08d6e27544e9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3246; 
x-ms-traffictypediagnostic: VI1PR04MB3246:
x-microsoft-antispam-prvs: <VI1PR04MB324607F1CDA7C6106DD4B93F891D0@VI1PR04MB3246.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(376002)(136003)(39860400002)(366004)(346002)(396003)(199004)(189003)(6246003)(2906002)(229853002)(5640700003)(81166006)(91956017)(8676002)(7416002)(81156014)(1730700003)(66066001)(53936002)(6116002)(3846002)(36756003)(486006)(14444005)(256004)(4326008)(25786009)(6436002)(6916009)(478600001)(6486002)(6512007)(14454004)(2616005)(476003)(11346002)(64756008)(186003)(54906003)(446003)(26005)(99286004)(68736007)(71190400001)(53546011)(71200400001)(6506007)(102836004)(86362001)(76176011)(305945005)(7736002)(76116006)(2351001)(4744005)(66556008)(103116003)(316002)(66446008)(66946007)(73956011)(66476007)(8936002)(2501003)(50226002)(5660300002)(99106002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3246;
 H:VI1PR04MB4543.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sV2iTP617LRhCsZGbR4LQIRUFeEQ+78B+bWWXATWplo5BjX/5Pyj8ds0InC5msq0IKEHwDx7+jeyXUA/CAK211HzYvX0lmacIKcZ3SgKfkJYcRTr/F+wVRsMpdE9y7/AZv9W7IXP5EnK+wGWCcTqA3D8ct4x9PaesKr4iYdyW8kakrM1dNCFl3fGG+SA9I6zPvZ6/1bqkmPSXnVQzeZHCn6T+X/JMOfCs/jYGMVhtuitqucv62nB3Nixbwh2/pYFsnFdEMUOJRO3j7pU3iQpXGSkFDphOZX3BlS+wiuJPk/tv/4tCjWf4e9QKY44ha5Ln6Hpj75RreoiQY0WvGm6OqiLgPsSK7FMBq2gvgCBpOZz5Fpk6XAh2J5q1Mvwl0b8kgvuaHEF16fJcXbjkDczxu7NKbC4oMmxGkXgYd/uRV4=
Content-ID: <25F6E151E044984DB1AEB174A2075C0B@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09b42a95-d862-45b3-3036-08d6e27544e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 07:31:01.3618 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yibin.gong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3246
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_003107_468543_2CBE40EA 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

T24gMjAxOS0wNS0yNyBhdCAwNjozNCArMDAwMCwgVmlub2QgS291bCB3cm90ZToNCj4gT24gMTAt
MDUtMTksIDEwOjE0LCBSb2JpbiBHb25nIHdyb3RlOg0KPiA+IA0KPiA+IMKgDQo+ID4gKwlpZiAo
b2ZfZGV2aWNlX2lzX2NvbXBhdGlibGUobnAsICJmc2wsaW14N3VscC1lZG1hIikpIHsNCj4gPiAr
CQlmc2xfZWRtYS0+ZG1hbXV4X25yID0gMTsNCj4gPiArCQlmc2xfZWRtYS0+dmVyc2lvbiA9IHYz
Ow0KPiB3ZWxsIHRoaXMgaXMgbm90IHJlYWxseSBzY2FsYWJsZSwgd2Ugd2lsbCBrZWVwIGFkZGlu
ZyB2ZXJzaW9ucyBhbmQNCj4gY29tcGF0aWJsZSBhbmQgZXhwYW5kaW5nIHRoaXMgY2hlY2suIFNv
IGl0IHdvdWxkIG1ha2Ugc2Vuc2UgdG8gY3JlYXRlDQo+IGENCj4gZHJpdmVyIGRhdGEgdGFibGUg
d2hpY2ggY2FuIGJlIHNldCBmb3IgY29tcGF0aWJsZSBhbmQgd2UgdXNlIHRob3NlDQo+IHZhbHVl
cyBhbmQgYXZvaWQgdGhlc2UgcnVudGltZSBjaGVja3MgZm9yIGNvbXBhdGlibGUuDQo+IA0KPiBC
dHcgdGhlIGJpbmRpbmcgZG9jdW1lbnRhdGlvbiBzaG91bGQgcHJlY2VkZSB0aGUgY29kZSB1c2Fn
ZSwgc28gdGhpcw0KPiBwYXRjaCBzaG91bGQgY29tZSBhZnRlciB0aGF0DQo+IA0KT2theSwgd2ls
bCB1cGRhdGUgaW4gdjIuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
