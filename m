Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9320AD4BAB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 03:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VHkeOTfHVgAFkYN7K7KQ7gzrvz3QMjTNL3i5DSuFi3E=; b=cdT3uXgBC+Qrzq
	38NSn2UfDnBpuJuMURni7P5MjU7F5EoWet7EImoDzEaiJLGUy2uLACXYQnvCDZ7kHzupjxR5YsF03
	VsS0AvDe5pu49aI7Q7Ijv0peierx3DY6smmxxYPaPuLPP3CWNXcvDDbWOLwkRnM5gtqHU2bYTmaKb
	ASOxKu6+zpaJh0pcMXGNhKipZIejjGHA5PtD0xOwcImGWeWMhPNOpM7dN7+caD8ZZUyI3e6iEKrVT
	uQcq0Vw12+FWQVmmTRNELZbbDczFLYpx+/NBnd/mazpgb1ANtJTBvuSytAqwwHCVxusWIi01CxGkF
	eppqLLLZPpm/W+p60Ehw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ5qp-0000wh-CB; Sat, 12 Oct 2019 01:05:43 +0000
Received: from mail-eopbgr30048.outbound.protection.outlook.com ([40.107.3.48]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ5qh-0000vV-Eq
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 01:05:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NO18Jb/+dN+WzFBM8BGxCau4qUof8rAKKofOlv0fYBE751biz0+yp3EClAVHzKZUbrP4OwZ372azIghSp+S78d+ESMRrivcsryB+42TfaVzWaVsWaXvQUGDKBBaMWtGB1UQ58cyhh7c54dzcwPjFpnNFqwsqXJ0YDfO+BNiRIeI/2ztPtYVEY0UWK6pRn3hjtJsLhcBuM5ksT0lCxUKathI4V21Y42AKkYKjJx6GFx7ljmYOH0x9zYV8I0JXyZ3DvWOp20T5COzw9Qhstcz00NlsLP8VL7qnDI4Mky3JgZkVSlSPB39cg7SjYmsS96UCes/jiFhIkypBTwkK3PGA9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LWo4faJzEkT4GxWZ5n7/NhOplHUymKJep8C7lPGIWIM=;
 b=CRbs/LUaXO+UauLXiX6TK7YJdZPjMOpshR3ailDq9r7slVkv3Hz/BlbQnhf7fUd+5Lxw4+Z2BDJxtn0VbgTr/o4dh4sR9DfwqxYZmr4BIlxXXQI0yDv2vaGM6ZL+WVyXtmuuK7fPcwSEzNqZ82ZMsofsWqbl4jckfkmW7cCIvaAwOgivHDXpM3ZF3VZjObI2yt46FRdnonjRjpfWK9fF6EjK3ZLyDFKdWaHUUEPZQh6aSDsKOFEx8+P8DOiAgXnRr4uupMFQ4dTtpwCdcpUiBOTsooa58OJfTMQwrhkfD6aU3GH1ImXO6g006T3p8Pi/28n8cWCKVH2KPlIiKQsw8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LWo4faJzEkT4GxWZ5n7/NhOplHUymKJep8C7lPGIWIM=;
 b=GtegFQkea/vrhmLCDhTA5ch1fSz+BpWuulxYIk/vpPCMVM0gY/80aMbGxdFA7MOop/ME+qEwwic+SSqJPiXQJLu5az8W+hIzUJoZ9RaXs93sj15n8nLS1C7RawbFWg4jjIitwUkiFYAwfAmHyv4Icc3pSWZcV2G4sJabzlZ9dCg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3883.eurprd04.prod.outlook.com (52.134.71.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Sat, 12 Oct 2019 01:05:25 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2347.021; Sat, 12 Oct 2019
 01:05:24 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH] clk: imx7ulp: Correct system clock source option #7
Thread-Topic: [PATCH] clk: imx7ulp: Correct system clock source option #7
Thread-Index: AQHVgA9ej3vynbgG3Uu6u/KcnrPRNKdVSf+AgADmv2A=
Date: Sat, 12 Oct 2019 01:05:24 +0000
Message-ID: <DB3PR0402MB391628A077B9D689469D38E3F5960@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1570783006-28099-1-git-send-email-Anson.Huang@nxp.com>
 <CAOMZO5DUVv_cT59pTBmfa60TM0E9=6rFdpDw71g_6cQidOPW+A@mail.gmail.com>
In-Reply-To: <CAOMZO5DUVv_cT59pTBmfa60TM0E9=6rFdpDw71g_6cQidOPW+A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f9920703-6c63-4c1d-4b5a-08d74eb04385
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB3PR0402MB3883:|DB3PR0402MB3883:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3883D8C6ABBE58EC051E0683F5960@DB3PR0402MB3883.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0188D66E61
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(136003)(376002)(39860400002)(346002)(189003)(199004)(5660300002)(44832011)(53546011)(6506007)(3846002)(7696005)(76116006)(102836004)(186003)(26005)(99286004)(4326008)(66446008)(64756008)(66556008)(66476007)(66946007)(256004)(81156014)(81166006)(8936002)(6916009)(7736002)(6116002)(52536014)(305945005)(4744005)(71190400001)(71200400001)(7416002)(8676002)(76176011)(74316002)(229853002)(55016002)(14444005)(9686003)(1411001)(86362001)(476003)(6436002)(33656002)(2906002)(478600001)(446003)(486006)(54906003)(11346002)(66066001)(14454004)(316002)(25786009)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3883;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uDuBE67wUVwlO6HbLi8kDGMKwH5nNI7XdsN9we4SUJjqjl/JKhe7LkVOMFmCUtX+tsRJnQUAaAuImDB1lI4l2+FluEhrNUlkFz3yGr7rVUKJGOeDJupEwCqt7gYH+nYoyojbtYu+6En8+mEPVnPq6OJAt3+Y8NoL2Bw0AA/i/wxvgJpeM6E6XiD4MKNWJ350bbHz1CrqrKj7QgO2H0BHMAk/RbztuXWFssMOQKtd8lp4RJ81uAOQS2DF1GJTqDcGvm7Hb/upWelAkdmELP5QFUeo7UgUED5K/66SgCzqQ/2kvqCucaYMt8MuyKv7fwZOEs1GYtE0GNG3foyqiSoh6NywxfbEBbMglYgowlzm1tT3YXh6J8xk59tlzMc9Mu8xSDc4QcouOnDPGWJL0wU02lUNWxr2aygXpNUMKV0m1FY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9920703-6c63-4c1d-4b5a-08d74eb04385
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2019 01:05:24.6916 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FSHlgT2NV1NUMZzGKGQ4jNvT/IGKhpzNBCjzbmlimkHWKbiyh2B5hWP9qveUywknV5LSWJGYPAngVV5zZbTlOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3883
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_180535_500052_BA3E22B0 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.48 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, "moderated list:ARM/FREESCALE IMX /
 MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEZhYmlvDQoNCj4gT24gRnJpLCBPY3QgMTEsIDIwMTkgYXQgNTozOSBBTSBBbnNvbiBIdWFu
ZyA8QW5zb24uSHVhbmdAbnhwLmNvbT4NCj4gd3JvdGU6DQo+ID4NCj4gPiBJbiB0aGUgbGF0ZXN0
IHJlZmVyZW5jZSBtYW51YWwgUmV2LjAsMDYvMjAxOSwgdGhlIFNDRzEncyBzeXN0ZW0NCj4gDQo+
IFRoaXMgc2hvdWxkIGJlIFNDUyBpbnN0ZWFkIG9mIFNDRzEuDQoNClRoZSByZWZlcmVuY2Ugc3Rh
dGVzIFNDRyBzeXN0ZW0gY2xvY2ssIFNDUyBzdGFuZHMgZm9yIHN5c3RlbSBjbG9jayBzb3VyY2Us
IHNvIEkgdGhpbmsNCml0IGlzIGFjdHVhbGx5IG1lYW5pbmcgU0NHMSdzIHN5c3RlbSBjbG9jayBz
b3VyY2Xwn5iKIA0KDQpTZWxlY3RzIHRoZSBTQ0cgc3lzdGVtIGNsb2NrLg0KMDAwMGIgLSBSZXNl
cnZlZA0KMDAwMWIgLSBTeXN0ZW0gT1NDIChTT1NDX0NMSykNCjAwMTBiIC0gU2xvdyBJUkMgKFNJ
UkNfQ0xLKQ0KMDAxMWIgLSBGYXN0IElSQyAoRklSQ19DTEspDQowMTAwYiAtIFJlc2VydmVkDQow
MTAxYiAtIEF1eGlsaWFyeSBQTEwgKEFQTExfQ0xLKQ0KMDExMGIgLSBTeXN0ZW0gUExMIChTUExM
X0NMSykNCjAxMTFiIC0gUmVzZXJ2ZWQNCg0KPiANCj4gPiBjbG9jayBzb3VyY2Ugb3B0aW9uICM3
IGlzIG5vIGxvbmdlciBmcm9tIHVwbGwsIGl0IGlzIHJlc2VydmVkLCB1cGRhdGUNCj4gPiBjbG9j
ayBkcml2ZXIgYWNjb3JkaW5nbHkuDQo+ID4NCj4gPiBGaXhlczogYjEyNjAwNjdhYzNkICgiY2xr
OiBpbXg6IGFkZCBpbXg3dWxwIGNsayBkcml2ZXIiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6IEFuc29u
IEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAuY29tPg0KPiANCj4gUmV2aWV3ZWQtYnk6IEZhYmlvIEVz
dGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4NCg0KVGhhbmtzLA0KQW5zb24NCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
