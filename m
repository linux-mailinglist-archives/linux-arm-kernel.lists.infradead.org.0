Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA5FD0B61
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:36:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XWE9zQq3tRHiy1rumSaKuW5K78mbTZyqRv89HzLCfNo=; b=dhL/rj8MpduG6z
	u4iQK8iyXltywRh04fic3KCO7V0sxHsKciCXx4y9drbBvxtzBFm1hP0rRRxBNnxPI+g2yXPQ4YETH
	jVuSD388OEyt5VPzzIc/xSp0QpnbusVZponIs0YbH7Saziwg+G/wMMRy5P3HbhsXJDnr63ZG23n1S
	CkD5jzBPupwFZgLyBhLhxM9qTRFjSNFli5DyqoN9hQvebzE61QWpJ3bebboPK7lbF8eaJxtJTLxXm
	WzBvjVNt3hO7sCzPy+4vpvcrB5XTQjqAYLMn4wmC0pZv4L8nLJLCGAxhES4+X6SJfCd3FQGYNK7by
	coPFk/t7xe9IND9WmXBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI8Oq-0005zm-Mo; Wed, 09 Oct 2019 09:36:52 +0000
Received: from mail-eopbgr70077.outbound.protection.outlook.com ([40.107.7.77]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI8Ok-0005zJ-17
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 09:36:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BA4xlQP0xTGQ6PCoi4r1X58yQCPAWE7FGZi1riDuPAI6F+SsRhk0av3Xuv7aaEbKBGCs3AJlRstX4PKV5aqLX6r/DTt/XQVf8FHvjz/frwdAVEOrpJPNb0IjSRYfQphp6PzZA0qimzszk4+6LHoMctld0z9g5Aj4qfeeZ8s4qEfZCM43/UZqCcMPIVEeqOgze1OQtPAAwLT4GpZo64yZjALJ9iwWdAhxzdcKkJ/GTAciTR9RjXK5csXw6cjVDTzT2CqgXsclPbE9zLZb+w89ic7Ts5dt70VlmEEmox96CaEpmY4S5MbOtkiHAVUTSXUSlBTghceIXGGJ+eFC4ZrAag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tCW4u4cTVQufD2z2wU75Ak0Niq8DgcQPprcAbmmCVTk=;
 b=mo8vIld0ZvgaTeOKeK6MUzsJ++LZkULi6dh1HZlImiim7/OoxUG4jIVa29Nbo6QLMfrIBZhE/wBlkg1s0awJXJrCcLs4Em33Z6djHYuOjgfED5QquChlgR35BqtgJaQoiflENh1xpUvGT9IYsH/U9RSUTCodr/wkvqVs4wpnwZI7FGTISsNHkGdkpv/zZ7ERFHpKSw+lylUAPdozpVxkZWW+fJITsEFDXp2ihTOFFTUqB0jYXmn+7YcoEo4douLzX+5QQbYQeEgeNvQW27SLXwfs5XOQblB1v2Un1bGsM7aKJFo6mqqAmEvYo2cGmr91czYo1o2Y5g1hit7CVDTVgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tCW4u4cTVQufD2z2wU75Ak0Niq8DgcQPprcAbmmCVTk=;
 b=mfWWrmgqfQMA87UWm1U/M+/y4CKFtpVM46BooQc5kifMDNvG+Zi/MP62LNTvTVxBK24xE3z+hf+/kqUxQEkJYOdAJnyPwwY6L3mHIrEG18t5BmpehIlsDLnjt4RUciAZDfeO2s2ppFx9ZSRs3x8z+Nrv5GYBgTvL3F5Yx8gG3WU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3819.eurprd04.prod.outlook.com (52.134.71.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Wed, 9 Oct 2019 09:36:37 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2347.016; Wed, 9 Oct 2019
 09:36:36 +0000
From: Anson Huang <anson.huang@nxp.com>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>,
 Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: RE: [PATCH] tty: serial: imx: Only get second/third IRQ when there is
 more than one IRQ
Thread-Topic: [PATCH] tty: serial: imx: Only get second/third IRQ when there
 is more than one IRQ
Thread-Index: AQHVfmm1cibywjMA5UifVvn4HL9DWadR35+AgAAWGACAABWsAIAAAYTg
Date: Wed, 9 Oct 2019 09:36:36 +0000
Message-ID: <DB3PR0402MB3916361F60FA8ACBB434E7ADF5950@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1570601911-9162-1-git-send-email-Anson.Huang@nxp.com>
 <20191009065315.wgdvmkv6skteyul4@pengutronix.de>
 <CAHp75VcWXT+j5cfVzxPL+3YdgR+3uhFSb0qEDRr4YL+WenVKUQ@mail.gmail.com>
 <20191009092954.srlx5wjaqueps7nz@pengutronix.de>
In-Reply-To: <20191009092954.srlx5wjaqueps7nz@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 53d2e6b9-8a1f-4a32-7715-08d74c9c2e33
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB3PR0402MB3819:|DB3PR0402MB3819:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38196D4B4619CEC2F89CBD45F5950@DB3PR0402MB3819.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(376002)(136003)(366004)(199004)(189003)(76176011)(6506007)(186003)(316002)(102836004)(66574012)(9686003)(55016002)(5660300002)(86362001)(71200400001)(110136005)(7416002)(6436002)(7736002)(14454004)(256004)(53546011)(54906003)(8936002)(14444005)(305945005)(26005)(71190400001)(44832011)(81166006)(478600001)(81156014)(74316002)(486006)(33656002)(4744005)(7696005)(8676002)(66946007)(25786009)(99286004)(476003)(64756008)(2906002)(52536014)(4326008)(66446008)(76116006)(229853002)(6246003)(66066001)(66476007)(11346002)(446003)(3846002)(6116002)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3819;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6a2rFiUszuw8ynZa+e4o8ia2IwLUFW7AOdspivEjB06hMaV/rjZZhSYp2kdNx6gdvDm59cWmyvO87cOp4ZuFWQbu0fWTwk6IQqYTjzMk36FH1DYXWr1G944oG/HEKUiaVkOR/761IXU8To3oiHtFDmGjdt+sGDlQiG6s2QEDG2La7p/gP0FNcdjvdr/fH62D+BPQY2R8NfhSWkZr5ehpF8SrtPF10NQZMRMtc9NomhIVD6AGiS86EYXv6DQsxVYeXTf21ChbzkIvuifcgXGWnouxLkZ+5XIEQD1ymLhmqapMTECSbwn3UrtLK/q3DHbXUGfPSK1BlAe2py7YYvThKJ/ToMe8qQqA3SGu4G57Ar0Fj6sEbq1vwZ70EMmoNLjSFXLr9xSTcYJXa4E5HCiZovxU83PXa+BLEWrtqaw6r/s=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53d2e6b9-8a1f-4a32-7715-08d74c9c2e33
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 09:36:36.9458 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +rnmy4NrVGDGpidqGaueJ/izqGoOppwQoxJSJA5zuhavb19CTFljIEZNCmL4W7ogxftzZ7Etqb9fiVTYJlYF0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3819
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_023646_179599_FE47C691 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Fabio Estevam <festevam@gmail.com>, "open
 list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, "Rafael J.
 Wysocki" <rafael.j.wysocki@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Jiri Slaby <jslaby@suse.com>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gT24gV2VkLCBPY3QgMDksIDIwMTkgYXQgMTE6MTI6MjBBTSArMDMwMCwgQW5keSBTaGV2
Y2hlbmtvIHdyb3RlOg0KPiA+IE9uIFdlZCwgT2N0IDksIDIwMTkgYXQgOTo1MyBBTSBVd2UgS2xl
aW5lLUvDtm5pZw0KPiA+IDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOg0K
PiA+DQo+ID4gPiBUaGUgcGF0Y2ggaXMgZmluZSBnaXZlbiB0aGUgY2hhbmdlZCBiZWhhdmlvdXIg
b2YgcGxhdGZvcm1fZ2V0X2lycS4gSQ0KPiA+ID4gd29uZGVyIGlmIGl0IGlzIHNlbnNpYmxlIHRv
IGludHJvZHVjZSBhIHZhcmlhbnQgb2YgcGxhdGZvcm1fZ2V0X2lycQ0KPiA+ID4gKHNheQ0KPiA+
ID4gcGxhdGZvcm1fZ2V0X2lycV9ub3dhcm4pIHRoYXQgYmVoYXZlcyBsaWtlIF9fcGxhdGZvcm1f
Z2V0X2lycSBkb2VzDQo+ID4gPiB0b2RheS4gVGhlbiB0aGUgaW14IGRyaXZlciB3b3VsZCBqdXN0
IGNhbGwgcGxhdGZvcm1fZ2V0X2lycV9ub3dhcm4NCj4gPiA+IHdpdGhvdXQgaGF2aW5nIHRvIGNo
ZWNrIHRoZSBudW1iZXIgb2YgYXZhaWxhYmxlIGlycXMgZmlyc3QuDQo+ID4NCj4gPiBJdCdzIGJl
aW5nIGRpc2N1c3NlZCBpbiBwYXJhbGxlbCB0aHJlYWQgYWJvdXQNCj4gPiBwbGF0Zm9ybV9nZXRf
aXJxX29wdGlvbmFsKCkgd2hpY2ggd29uJ3QgaXNzdWUgYSB3YXJuaW5nLg0KPiANCj4gVGhpcyBp
cyBldmVuIGFscmVhZHkgaW4gNS40LXJjMSBhcw0KPiA4OTczZWE0NzkwMWM4MWExOTEyYmQwNWYx
NTc3YmVkOWI1YjUyNTA2Lg0KDQpHcmVhdCwgSSB3aWxsIHNlbmQgb3V0IGEgVjIgdXNpbmcgcGxh
dGZvcm1fZ2V0X2lycV9vcHRpb25hbCgpIGZvciBzZWNvbmQvdGhpcmQgSVJRLg0KDQpUaGFua3Ms
DQpBbnNvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
