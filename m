Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BA11F63F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 10:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SomQVB1fuQLlEKiNhk7Lek2j9YrsB1ZFXWwm4ulmkiY=; b=MtrfULnpXxtj57
	tVp/HLOMwXxyebGZcQOC4Kxv+j53x5ced7BFFxeraSiMzdzuDRmAXmTtttD7XUlI7N2rahFg+VAQB
	Gb9Kn0ugjLDa4mVBGhyIoDjbHT592eaoCDP7GM23/mtTUGXBxZGh1r06Sl6b8JHA9cOjHm376E4R9
	SCVS5HgSFsb0hx73gkuxXZp6VfsY+nHptl1V1Z3N8+mCr16t4vXJkwWqscAwgm0YwJjgZa9yvxUaa
	kRWMCHcHCmj/aRpLL2wzGJLqcoTATava8cxcg1xgcn0d3utICCYJ33CtLmSMhqLkI067IC2JFztKB
	RZtwHGJ12xMWU1zFk6DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjItJ-0007iT-OV; Thu, 11 Jun 2020 08:48:53 +0000
Received: from mail-db8eur05on2077.outbound.protection.outlook.com
 ([40.107.20.77] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjItB-0007hF-14
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 08:48:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=occMMgj3v4Hu5Qfh2YSdJwv62DPR4l/wyBhROZZZ05hiHl7vdYkYJwbh5zsX4A3HiTvt04395icUkvBVHylHCioFuu3qVPaA6cJ/NsThrLYcYBV7YtS+rCqZaEhWr389qo0tw3wKOy0IUjh6UUyMRcU6yuwv0xflnMbTT0fe5O/MWzQRLN5ntnjMiRzKxjJy8LeZeqBojgcTBnT2sbuSa9b8/u4rS2FQ/VyCEmh+WMnxjvTuvRi2fg/uaJTJdNYwjnE+lCHzE9c7OouZn2ErrDQS+wTH3zNwAIQJ0BWd90XJxNXn9+UGcOggQkLDPCpu6GUPs+LGVGkfG7CnWMFuow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ne4h7Q4g8TC3dfxiers990ULr3iwfunLrVKpImjF05s=;
 b=A6ML7rdV1u2KEONofITuuALSe6xv50E31o7sO37l0XsxfSmO5bk+zeYyu+mL8hRjFcTkpnCG6XgU6vMaL3XdoaiVZO3sJTidi/HWMhWIUk0dJAqVWmHOZkbxdyEKd/o8KcODh2sZzy5OI27rUw4C8Wlw7AuhJrnbmTD5fj4xuH4Yo89yRyZHowp/s4alv5pevvX8mCXN2ioRfy51t9sHp7gZpbkfqSfyZYJYBGU6e7Nv6h+l4/aA556WRvAvnM2SZw0fadp8aZulbJiv2bYYMGa6TH8Ag2LcuLsld+p3iWgu7pxjAj61wx/g5ENA1wDGUmREEoei8YMyj2r2FLNM6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ne4h7Q4g8TC3dfxiers990ULr3iwfunLrVKpImjF05s=;
 b=MqlAuPzpn6OFy+H4B42vkm4yXB8tiTR1DD8l6TVZ69fmJnYCFw7cTaCGlgHx9K/2a0PrBETt74cfJ0GJnf5zsRzepW/KriVJtJL4rixJcanoXvA2xzUahVF2eXb6tYj4CDNqi7ldM2eLPdFuASTXCAgJLAf/go7puOElkHdfUUc=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3643.eurprd04.prod.outlook.com (2603:10a6:8:5::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Thu, 11 Jun
 2020 08:48:40 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3088.018; Thu, 11 Jun 2020
 08:48:40 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Baluta <daniel.baluta@nxp.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "stefan@agner.ch"
 <stefan@agner.ch>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH V4 4/9] pinctrl: imx8mn: Support building as module
Thread-Topic: [PATCH V4 4/9] pinctrl: imx8mn: Support building as module
Thread-Index: AQHWPv5eaFqWaY1epEyUZw+zhd38iajTGmwAgAABCWA=
Date: Thu, 11 Jun 2020 08:48:40 +0000
Message-ID: <DB3PR0402MB391645F95B19B2438736B546F5800@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1591775865-26872-1-git-send-email-Anson.Huang@nxp.com>
 <1591775865-26872-5-git-send-email-Anson.Huang@nxp.com>
 <33292cab-c49d-0878-dd8c-1166258e089b@nxp.com>
In-Reply-To: <33292cab-c49d-0878-dd8c-1166258e089b@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a8edbe45-0da7-4f09-7f44-08d80de43d73
x-ms-traffictypediagnostic: DB3PR0402MB3643:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3643EF06D8EBC09338F0D41CF5800@DB3PR0402MB3643.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0431F981D8
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /O5czJs+dqBQReN7igZd1VYG9DMXDkU95AXbJ5taAEGbO54K92xh5ZFE49ejwMdssYmue4YhrymOqJSv/puAHV8fvljtLAmPxGihynth07aneZ8uMH7KrqXO27opll2uL30ZSRZrYbaq4GjEM6eed0p7hP7d3nyArv3Liat/7a5YepzNmPbdoNoNom6quO4vFcpdJ3XBD8vvdCD+sn+6O0019oYwfYfVwQI5n9PtFL5WTeNoOvC+ntPshMsH4iKv+dizfiZCRAxIaXtABtVZnTIBfRPzI4yvvF07HtUx6YPnLvhhNqReJt3TSPFthJQvOupB1rsrDgs1BTnkc9Ptz9f0Bfw4CFIlmIjSR/xSxgZPm8Lkm/yWG9ByLD4KzhF9007kGZSwzgViJdZCg8Norg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(39860400002)(346002)(396003)(136003)(110136005)(83380400001)(76116006)(33656002)(66946007)(26005)(186003)(7696005)(66446008)(44832011)(4744005)(64756008)(71200400001)(6506007)(86362001)(478600001)(66476007)(8936002)(52536014)(4326008)(5660300002)(9686003)(8676002)(2906002)(316002)(55016002)(66556008)(32563001)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ix/nUQjypFVvvdMFBGDHWrG+ZUrGhMEAcv5Hubnv/E2fQBugGwZfhvnCYibOsyaTA1rdyHJ57Cb2yOIvjlIwpVpBrETs0VsRCp4CZGnLqMq4RcW9tL2hM0MbZO1RBrUngkHLDyRZ0kXUSDEjgPnohfOHhUzdDYGIh1dNkisxf0yb5blOkFRGj6yy9RkLblgE1hA8V6wMfvp84znJzotWfiBIlsZQ0GM7I2SMOvsxxJF86f8XTL0rwBS6MZWsdzMrY+SRkKVY4ms+VBuHmiSul8Bc4jgZ5Ys6I3rNoWnq+HwdC6TGNLJSWVlbAocYVY6d0inwQ2F7KigF51Ow4a2wuGOXJZQtVU2TAsigzJ+zv/9Syn1wxTOkBNoYtvClsn7lYRQQPUxJAfveqtWJRGyao5anTmIfWp7KeNbXsGSQ1Q2P579/eS4Lzz2gU3NjzzYFh7AG5Dgp842Cvg/78isIp7gSu5XJ5JWGo+v2fbjH9D8uotsl0HWBLRFrpTlo85Tj
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8edbe45-0da7-4f09-7f44-08d80de43d73
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2020 08:48:40.6639 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s8cUevcGnlX4d/eu+eI0goUA9ef+ZMlON+EkNzBqVTSGQqh52WRqU7FCzm2VvyQxU3APS8UoRIf5mbtueGSauQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3643
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_014845_074460_C982FBF7 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.77 listed in wl.mailspike.net]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIERhbmllbA0KDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggVjQgNC85XSBwaW5jdHJsOiBpbXg4
bW46IFN1cHBvcnQgYnVpbGRpbmcgYXMgbW9kdWxlDQo+IA0KPiBNYXliZSB0aGlzIGlzIG9idmlv
dXMgYnV0IEkgd291bGQgcmVhbGx5IGxpa2UgdG8gc2VlIGFuIGV4cGxhbmF0aW9uDQo+IA0KPiBv
ZiB3aHkgd2UgYXJlIHN3aXRjaGluZyBmcm9tIGFyY2hfaW5pdGNhbGwgdG8gcGxhdGZvcm1faW5p
dC4NCj4gDQo+IENvbW1pdCBtZXNzYWdlIGFjdCBhcyBkb2N1bWVudGF0aW9uwqAgZm9yIHRoZSBy
ZXZpZXdlcnMuDQoNClllcywgSSBub3RpY2VkIHRoaXMsIGFuZCBpdCBsb29rcyBsaWtlIHVubmVj
ZXNzYXJ5IGNoYW5nZSwgYW5kIEkganVzdCByZXBsaWVkIGluDQptYWlsIHRoYXQgSSB3aWxsIGNo
YW5nZSBpdCBiYWNrIHRvIGFyY2hfaW5pdGNhbGwoKSBpbiBvcmRlciB0byBtYWtlIHN1cmUgbm90
aGluZw0KY2hhbmdlZCBmb3IgYnVpbHQtaW4gY29uZmlnLiBCZWxvdyBpcyB3aGF0IEkgcmVwbGll
ZCBpbiBjb3Zlci1sZXR0ZXIgbWFpbDoNCg0KIiBJIHdpbGwga2VlcCB0aGUgYXJjaF9pbml0Y2Fs
bCgpIHRoZXJlIGluIG5leHQgdmVyc2lvbiBwYXRjaCBzZXJpZXMsIGl0IGNhbiBtYWtlIHN1cmUN
CnRoZSBjaGFuZ2UgZG9lcyBOT1QgaW1wYWN0IGJ1aWx0LWluIGNvbmZpZy4gRm9yIG1vZHVsZSBi
dWlsZCwgdGhlIGFyY2hfaW5pdGNhbGwoKQ0Kd2lsbCBiZSBzYW1lIGFzIG1vZHVsZV9pbml0KCks
IHVzZXIgbmVlZHMgdG8gaW5zbW9kIHRoZSAua28gd2l0aCBjb3JyZWN0IHNlcXVlbmNlLiINCg0K
VGhhbmtzLA0KQW5zb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
