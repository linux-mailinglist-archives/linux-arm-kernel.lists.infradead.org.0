Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2D4BE5CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 21:38:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=0oOI6xEzSEmofjQIcd5KYp4q0Em5IHvKa7+e7Y8tefA=; b=BEWae0EaH3chL8
	dY9NA8dz4WFpiGZExGALaKsTnqCDxjzJfz1Ib4rqlzKntR81GzFhStqzVMt8JFWDGtFJty1pl9SgT
	VBMnGnVg2Wi3SXBoLdklfv9KhVD92EUZBXOcGRHBI1t0kJ+VAotCQObzxCJf77KkSP+3Yx9GpYTw2
	eES9Y8xCQnn15+aVSBBdMeXUQ+u9D9ny6ftdxSF9z7X5VXO01hnbVVqZ/TsUnn8x625HdNWTFWQm6
	tXlBRkquXk1qFTV3MufSWz+SHNWPXDoZ8amn/Bd2D2R0wUknRbFuYwp6LnCr1rkRIdbE04WwYp0O1
	bCGuiG3ZxRVsYm8aQEeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDD70-0003UC-UY; Wed, 25 Sep 2019 19:38:07 +0000
Received: from mail-ve1eur02on062a.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::62a]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDD6m-0003TO-5n
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 19:37:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kkkrLrKZNkWgR7Y5e+1MAT+/ednmGUNHA+UeBNhOCTg/4klieoahiRkDNqqsUMVl+chpcLdNwqhXGoK+4KfQliU+ZCRBYrdnlzPmUV8XBNdXYXTiocm7b9CmevTEXSfHjqXaI+vVO+VDucy37f6dMKx/YlK6oOAZ5NouxpZka1CLcra5y7imRuWukODFGnB3L9q+DG7AqqkJupEHqH6tsay5ABKMDvTOhgT/N+L8/5fc81dqmmDgqvHEql7ByMl1ZEcxuQRrI5j6Yk6v5CTZII0R6E+sTn/4SYUnuLS8W97QfAclhqEHi1pKDilw6Zdpxio8exAbOEx8ZQYfRf+M1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JamBg9EWCTHJ8Ggs8d3RfFX5r+0tE/vZ0xItB0ddtYs=;
 b=QQH8VgjUPMzK7LduO4QmOD98j9CBtiWgJEqGOznubSFb/Q+foklhhTs36SCRIJPUE0Ig2Xa+pdU7QACToI6l7TGfTP/krcp+m/SJF+KqWqHIIFuQ3C7F5sdTBBlBKyDazAgn+iPPK4Z1JtXCNArwdoOSQP5tZFdZ1DQuNUnkb+reFCH2Q6bxZj7WePi0L+OkIeFLbx1k1lssY5fOLjvMk0mFTzIQRYCNRL+6z7Em79qBa5pmbngAJpC1/2bYbLQAQztAZDue2sR6PirWsYk1Has6rt/VjH+h95azBoIs9uDijvoDWIawMJ0HizGzykWeAwQGA2kU819G/vT19/Hsbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JamBg9EWCTHJ8Ggs8d3RfFX5r+0tE/vZ0xItB0ddtYs=;
 b=nrlcsekCBM9SOwF9nPSp4yZu46zB9WiK1OP9SbWezJ6lfJ/d0fJCbxfEdrAMUDazIv5QwqYZEgC133TdKY1xCUhvXiCuTY+gJl4hqkqIpNYllgykZZuUx/m6TOsN35HgxgrV4s+Y5K6AC4LbXMr9Wsnyv2wVqp916ZjIpVrIM3U=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4223.eurprd04.prod.outlook.com (52.134.31.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Wed, 25 Sep 2019 19:37:49 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 19:37:49 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v8 0/6] PM / devfreq: Add dev_pm_qos support
Thread-Topic: [PATCH v8 0/6] PM / devfreq: Add dev_pm_qos support
Thread-Index: AQHVcsByiYFJ3h7rCkeoHj8wY+0Umw==
Date: Wed, 25 Sep 2019 19:37:49 +0000
Message-ID: <VI1PR04MB7023958671B3C4C25E91888DEE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <CGME20190924101140epcas1p4abeedf42f223e65f58c88a0ddf1e4e56@epcas1p4.samsung.com>
 <cover.1569319738.git.leonard.crestez@nxp.com>
 <b0cb5290-7b85-b803-2264-89d7d572fd1c@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1f736204-f432-415c-af37-08d741efd92f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB4223; 
x-ms-traffictypediagnostic: VI1PR04MB4223:|VI1PR04MB4223:
x-ms-exchange-purlcount: 7
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB422335AF1B13A5FD26F3EC64EE870@VI1PR04MB4223.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01713B2841
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(346002)(366004)(376002)(51444003)(189003)(199004)(5660300002)(7416002)(229853002)(6436002)(110136005)(76176011)(66066001)(966005)(478600001)(14454004)(7696005)(45080400002)(71190400001)(9686003)(25786009)(71200400001)(99286004)(86362001)(186003)(486006)(14444005)(256004)(446003)(53546011)(6506007)(44832011)(91956017)(76116006)(33656002)(66476007)(66556008)(64756008)(66446008)(4326008)(66946007)(55016002)(102836004)(6246003)(6306002)(81166006)(81156014)(476003)(26005)(2906002)(54906003)(74316002)(8936002)(6116002)(3846002)(7736002)(305945005)(52536014)(316002)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4223;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tLAQvMgQ//XN6sxW7WSbbFSQqnao6EyVtonb/fFRzn+R4yGuBvtqxRbfQ1T4DPJHuSZOqFPleaJCiXeOdvj6POyAsQ7M2tJDVd5xZEVL/jpDNnbMy4O0ZafQnWmUrHXJMRruMhsBQu/qvTOCCseUDn/W+3YLE2/Iwdrz7Uqzqu8x7ccOIioRJoScIkkFS8O8UqrX/ObusN8xjbxvJ+tzfmMvKe869LGIUH7OgL00pZqk4ysOiWUYC16xRgisy0m6eowHhbdQCJfmaKsbHE2bu4UrwXbUytruw/24rARGwJL+gKHUHLyS6sdK3RQfjs3hM6k4WSHYBbopfIHy7ax+C88dHS00znzcv0DPYJmue29lywa1kzXZrlDqd8o/uWwesgDlm9i3QKS0Wtl4Tb08JXtm+pyMexQze/bbWvujQ6Vetuka/VqMtlPOnjDwj1yLqQQFGU//vnXtw4NTfDVrhQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f736204-f432-415c-af37-08d741efd92f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2019 19:37:49.1523 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8Iy4vK7rOG/INv9svHGBzpL2TLX/VGm2W919sUlwLscPMnAKQdfKjDUOdxnY8KYpyPX4JFRwy0tD8td0oLkxLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4223
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_123752_373432_38035602 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:62a listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: =?utf-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, dl-linux-imx <linux-imx@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjUuMDkuMjAxOSAwNDo0MCwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+IEhpIExlb25hcmQsCj4g
Cj4gQmFzaWNhbGx5LCBJIHRoaW5rIHRoYXQgdGhlc2Ugc2VyaWVzIGFyZSB2ZXJ5IGltcG9ydGFu
dC4KPiAKPiBCdXQsIHlvdSBiZXR0ZXIgdG8gc2VuZCB0aGUgbmV4dCB2ZXJzaW9uIHBhdGNoCj4g
YWZ0ZXIgZmluaXNoaW5nIHRoZSByZXZpZXcvZGlzY3Vzc2lvbiBvbiBwcmV2aW91cyB2ZXJzaW9u
Lgo+IAo+IEkgcmV2aWV3ZWQgdGhlIHY3IGFuZCB0aGVuIHlvdSByZXBsaWVkIHlvdXIgY29tbWVu
dC4KPiBJdCBpcyBPSy4gQnV0LCB5b3UganVzdCBzZW5kIHY4IHdpdGhvdXQgd2FpdGluZyBteSBj
b21tZW50Cj4gZnJvbSB5b3VyIHJlcGx5LiBJdCBpcyBub3QgZWZmaWNpZW50IGRpc2N1c3Npb24g
bWV0aG9kLgo+IAo+IElmIHdlIGZpbmlzaCB0aGUgcmV2aWV3IG9mIHNvbWUgcG9pbnQgaW4gdGhl
IHY3LAo+IGl0IGRvZXNuJ3QgbmVlZCB0byBkaXNjdXNzIHRoZSBzYW1lIGNvbW1lbnQgb24gdjgu
Cj4gCj4gUGxlYXNlIHdhaXQgdGhlIHJlcGx5IGZvciByZXZpZXcuIEkgdGhpbmsgdGhhdAo+IGl0
IGNhbiBzYXZlIHRoZSBvdXIgdGltZSBmb3IgdGhlIHJldmlldyBhbmQgY29udHJpYnV0aW9uLgoK
U29ycnkuCgpJIGFscmVhZHkgaW5jb3Jwb3JhdGVkIGEgbGFyZ2UgbnVtYmVyIG9mIHRoZSBjaGFu
Z2VzIGluIHY3IHNvIEkgdGhvdWdodCAKSSdkIHBvc3QgdGhlIG5ldyB2ZXJzaW9uIGFscmVhZHku
Cgo+IE9uIDE5LiA5LiAyNC4g7Jik7ZuEIDc6MTEsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPj4g
QWRkIGRldl9wbV9xb3Mgbm90aWZpZXJzIHRvIGRldmZyZXEgY29yZSBpbiBvcmRlciB0byBzdXBw
b3J0IGZyZXF1ZW5jeQo+PiBsaW1pdHMgdmlhIGRldl9wbV9xb3NfYWRkX3JlcXVlc3QuCj4+Cj4+
IFVubGlrZSB0aGUgcmVzdCBvZiBkZXZmcmVxIHRoZSBkZXZfcG1fcW9zIGZyZXF1ZW5jeSBpcyBt
ZWFzdXJlZCBpbiBLaHosCj4+IHRoaXMgaXMgY29uc2lzdGVudCB3aXRoIGN1cnJlbnQgZGV2X3Bt
X3FvcyB1c2FnZSBmb3IgY3B1ZnJlcSBhbmQKPj4gYWxsb3dzIGZyZXF1ZW5jaWVzIGFib3ZlIDJH
aHogKHBtX3FvcyBleHByZXNzZXMgbGltaXRzIGFzIHMzMikuCj4+Cj4+IExpa2Ugd2l0aCBjcHVm
cmVxIHRoZSBoYW5kbGluZyBvZiBtaW5fZnJlcS9tYXhfZnJlcSBpcyBtb3ZlZCB0byB0aGUKPj4g
ZGV2X3BtX3FvcyBtZWNoYW5pc20uIENvbnN0cmFpbnRzIGZyb20gdXNlcnNwYWNlIGFyZSBubyBs
b25nZXIgY2xhbXBlZCBvbgo+PiBzdG9yZSwgaW5zdGVhZCBhbGwgdmFsdWVzIGNhbiBiZSB3cml0
dGVuIGFuZCB3ZSBvbmx5IGNoZWNrIGFnYWluc3QgT1BQcyBpbiBhCj4+IG5ldyBkZXZmcmVxX2dl
dF9mcmVxX3JhbmdlIGZ1bmN0aW9uLiBUaGlzIGlzIGNvbnNpc3RlbnQgd2l0aCB0aGUgZGVzaWdu
IG9mCj4+IGRldl9wbV9xb3MuCj4+Cj4+IE5vdGlmaWVycyBmcm9tIHBtX3FvcyBhcmUgZXhlY3V0
ZWQgdW5kZXIgYSBzaW5nbGUgZ2xvYmFsIGRldl9wbV9xb3NfbXR4IGFuZAo+PiBuZWVkIHRvIHRh
a2UgZGV2ZnJlcS0+bG9jay4gTm90aWZpZXIgcmVnaXN0cmF0aW9uIHRha2VzIHRoZSBzYW1lIGRl
dl9wbV9xb3NfbXR4Cj4+IHNvIGluIG9yZGVyIHRvIHByZXZlbnQgbG9ja2RlcCB3YXJuaW5ncyBp
dCBtdXN0IGJlIGRvbmUgb3V0c2lkZSBkZXZmcmVxLT5sb2NrLgo+PiBDdXJyZW50IGRldmZyZXFf
YWRkX2RldmljZSBkb2VzIGFsbCBpbml0aWFsaXphdGlvbiB1bmRlciBkZXZmcmVxLT5sb2NrIGFu
ZCB0aGF0Cj4+IG5lZWRzIHRvIGJlIHJlbGF4ZWQuCj4+Cj4+IC0tLQo+PiBDaGFuZ2VzIHNpbmNl
IHY3Ogo+PiAqIE9ubHkgI2RlZmluZSBIWl9QRVJfS0haIGluIHBhdGNoIHdoZXJlIGl0J3MgdXNl
ZC4KPj4gKiBEcm9wIGRldmZyZXFfIHByZWZpeCBmb3Igc29tZSBpbnRlcm5hbCBmdW5jdGlvbnMu
Cj4+ICogSW1wcm92ZSBxb3MgdXBkYXRlIGVycm9yIG1lc3NhZ2UuCj4+ICogUmVtb3ZlIHNvbWUg
dW5uZWNlc3NhcnkgY29tbWVudHMuCj4+ICogQ29sbGVjdCByZXZpZXdzCj4+IExpbmsgdG8gdjc6
IGh0dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRw
cyUzQSUyRiUyRnBhdGNod29yay5rZXJuZWwub3JnJTJGY292ZXIlMkYxMTE1NzY0OSUyRiZhbXA7
ZGF0YT0wMiU3QzAxJTdDbGVvbmFyZC5jcmVzdGV6JTQwbnhwLmNvbSU3Q2I0ZTg3ZGM4ODVjNjRj
N2ZlODNkMDhkNzQxNTk0ZGNiJTdDNjg2ZWExZDNiYzJiNGM2ZmE5MmNkOTljNWMzMDE2MzUlN0Mw
JTdDMCU3QzYzNzA0OTcyNDEzOTI0MjA1OCZhbXA7c2RhdGE9bWJ4R0hTRmlMeWxCTWN1b0E0QUJv
eUNsSnEwRUxpWnRyOVF5dE1uUFQ3dyUzRCZhbXA7cmVzZXJ2ZWQ9MAo+Pgo+PiBDaGFuZ2VzIHNp
bmNlIHY2Ogo+PiAqIERvbid0IHJldHVybiBlcnJubyBmcm9tIGRldmZyZXFfcW9zX25vdGlmaWVy
X2NhbGwsIHJldHVybiBOT1RJRllfRE9ORQo+PiBhbmQgcHJpbnQgdGhlIGVycm9yLgo+PiAqIE1v
cmUgc3BlbGxpbmcgYW5kIHB1bmN0dWF0aW9uIG5pdHMKPj4gTGluayB0byB2NjogaHR0cHM6Ly9l
dXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJG
cGF0Y2h3b3JrLmtlcm5lbC5vcmclMkZjb3ZlciUyRjExMTU3MjAxJTJGJmFtcDtkYXRhPTAyJTdD
MDElN0NsZW9uYXJkLmNyZXN0ZXolNDBueHAuY29tJTdDYjRlODdkYzg4NWM2NGM3ZmU4M2QwOGQ3
NDE1OTRkY2IlN0M2ODZlYTFkM2JjMmI0YzZmYTkyY2Q5OWM1YzMwMTYzNSU3QzAlN0MwJTdDNjM3
MDQ5NzI0MTM5MjQyMDU4JmFtcDtzZGF0YT1yeTFoQUo4R2I1em1lZlZEUk1PdXA1RTJhZ1E4bHJo
YTRNeFU2NmtOMjdVJTNEJmFtcDtyZXNlcnZlZD0wCj4+Cj4+IENoYW5nZXMgc2luY2UgdjU6Cj4+
ICogRHJvcCBwYXRjaGVzIHdoaWNoIGFyZSBub3Qgc3RyaWN0bHkgcmVsYXRlZCB0byBQTSBRb1Mu
Cj4+ICogQWRkIGEgY29tbWVudCBleHBsYWluaW5nIHdoeSBkZXZmcmVxX2FkZF9kZXZpY2UgbmVl
ZHMgdHdvIGNsZWFudXAgcGF0aHMuCj4+ICogUmVtb3ZlIHt9IGZvciBzaW5nbGUgbGluZS4KPj4g
KiBSZW5hbWUge21pbixtYXh9X2ZyZXFfcmVxIHRvIHVzZXJfe21pbixtYXh9X2ZyZXFfcmVxCj4+
ICogQ29sbGVjdCByZXZpZXdzCj4+IExpbmsgdG8gdjU6IGh0dHBzOi8vZXVyMDEuc2FmZWxpbmtz
LnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRnBhdGNod29yay5rZXJu
ZWwub3JnJTJGY292ZXIlMkYxMTE0OTQ5NyUyRiZhbXA7ZGF0YT0wMiU3QzAxJTdDbGVvbmFyZC5j
cmVzdGV6JTQwbnhwLmNvbSU3Q2I0ZTg3ZGM4ODVjNjRjN2ZlODNkMDhkNzQxNTk0ZGNiJTdDNjg2
ZWExZDNiYzJiNGM2ZmE5MmNkOTljNWMzMDE2MzUlN0MwJTdDMCU3QzYzNzA0OTcyNDEzOTI0MjA1
OCZhbXA7c2RhdGE9U2huZVlvbXhYQzFnVXQ1aFU0YWdzWkglMkZMZnNIdnhPJTJGaWFDTkRHS3N2
OTQlM0QmYW1wO3Jlc2VydmVkPTAKPj4KPj4gU29ycnkgZm9yIGZvcmdldHRpbmcgdG8gcHJvcGVy
bHkgbGFiZWwgdjUuIEkga25vdyB0aGlzIGlzIGluc2lkZSB0aGUKPj4gbWVyZ2Ugd2luZG93IGJ1
dCByZXZpZXcgd291bGQgc3RpbGwgYmUgYXBwcmVjaWF0ZWQuCj4+Cj4+IENoYW5nZXMgc2luY2Ug
djQ6Cj4+ICogTW92ZSBtb3JlIGRldmZyZXFfYWRkX2RldmljZSBpbml0IGFoZWFkIG9mIGRldmlj
ZV9yZWdpc3Rlci4KPj4gKiBNYWtlIGRldmZyZXFfZGV2X3JlbGVhc2UgY2xlYW51cCBkZXZpY2Vz
IG5vdCB5ZXQgaW4gZGV2ZnJlcV9saXN0LiBUaGlzIGlzCj4+IHNpbXBsZXIgdGhhbiBwcmV2aW91
cyBhdHRlbXB0IHRvIGFkZCB0byBkZXZmcmVxX2xpc3Qgc29ubmVyLgo+PiAqIFRha2UgZGV2ZnJl
cS0+bG9jayBpbiB0cmFuc19zdGF0X3Nob3cKPj4gKiBSZWdpc3RlciBkZXZfcG1fb3BwIG5vdGlm
aWVyIG9uIGRldmZyZXEgcGFyZW50IGRldiAod2hpY2ggaGFzIE9QUHMpCj4+IExpbmsgdG8gdjQ6
IGh0dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRw
cyUzQSUyRiUyRnBhdGNod29yay5rZXJuZWwub3JnJTJGY292ZXIlMkYxMTExNDY1NyUyRiZhbXA7
ZGF0YT0wMiU3QzAxJTdDbGVvbmFyZC5jcmVzdGV6JTQwbnhwLmNvbSU3Q2I0ZTg3ZGM4ODVjNjRj
N2ZlODNkMDhkNzQxNTk0ZGNiJTdDNjg2ZWExZDNiYzJiNGM2ZmE5MmNkOTljNWMzMDE2MzUlN0Mw
JTdDMCU3QzYzNzA0OTcyNDEzOTI0MjA1OCZhbXA7c2RhdGE9bjNmJTJGZDg2anpXVEcwMDVTUHJp
a2JVT2clMkZhR3BmN0xNWlJvVnJ3eWJxU2slM0QmYW1wO3Jlc2VydmVkPTAKPj4KPj4gQ2hhbmdl
cyBzaW5jZSB2NDoKPj4gKiBNb3ZlIG1vcmUgZGV2ZnJlcV9hZGRfZGV2aWNlIGluaXQgYWhlYWQg
b2YgZGV2aWNlX3JlZ2lzdGVyLgo+PiAqIE1ha2UgZGV2ZnJlcV9kZXZfcmVsZWFzZSBjbGVhbnVw
IGRldmljZXMgbm90IHlldCBpbiBkZXZmcmVxX2xpc3QuIFRoaXMgaXMKPj4gc2ltcGxlciB0aGFu
IHByZXZpb3VzIGF0dGVtcHQgdG8gYWRkIHRvIGRldmZyZXFfbGlzdCBzb25uZXIuCj4+ICogVGFr
ZSBkZXZmcmVxLT5sb2NrIGluIHRyYW5zX3N0YXRfc2hvdwo+PiAqIFJlZ2lzdGVyIGRldl9wbV9v
cHAgbm90aWZpZXIgb24gZGV2ZnJlcSBwYXJlbnQgZGV2ICh3aGljaCBoYXMgT1BQcykKPj4gTGlr
ZSB0byB2NDogaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/
dXJsPWh0dHBzJTNBJTJGJTJGcGF0Y2h3b3JrLmtlcm5lbC5vcmclMkZjb3ZlciUyRjExMTE0NjU3
JTJGJmFtcDtkYXRhPTAyJTdDMDElN0NsZW9uYXJkLmNyZXN0ZXolNDBueHAuY29tJTdDYjRlODdk
Yzg4NWM2NGM3ZmU4M2QwOGQ3NDE1OTRkY2IlN0M2ODZlYTFkM2JjMmI0YzZmYTkyY2Q5OWM1YzMw
MTYzNSU3QzAlN0MwJTdDNjM3MDQ5NzI0MTM5MjQyMDU4JmFtcDtzZGF0YT1uM2YlMkZkODZqeldU
RzAwNVNQcmlrYlVPZyUyRmFHcGY3TE1aUm9Wcnd5YnFTayUzRCZhbXA7cmVzZXJ2ZWQ9MAo+Pgo+
PiBDaGFuZ2VzIHNpbmNlIHYzOgo+PiAqIENsZWFudXAgbG9ja2luZyBhbmQgZXJyb3ItaGFuZGxp
bmcgaW4gZGV2ZnJlcV9hZGRfZGV2aWNlCj4+ICogUmVnaXN0ZXIgbm90aWZpZXJzIGFmdGVyIGRl
dmljZSByZWdpc3RyYXRpb24gYnV0IGJlZm9yZSBnb3Zlcm5vciBzdGFydAo+PiAqIEtlZXAgdGhl
IGluaXRpYWxpemF0aW9uIG9mIG1pbl9yZXEvbWF4X3JlcSBhaGVhZCBvZiBkZXZpY2VfcmVnaXN0
ZXIKPj4gYmVjYXVzZSBpdCdzIHVzZWQgZm9yIHN5c2ZzIGhhbmRsaW5nCj4+ICogVXNlIEhaX1BF
Ul9LSFogaW5zdGVhZCBvZiAxMDAwCj4+ICogQWRkIGtlcm5lbC1kb2MgY29tbWVudHMKPj4gKiBN
b3ZlIE9QUCBub3RpZmllciB0byBjb3JlCj4+IExpbmsgdG8gdjM6IGh0dHBzOi8vZXVyMDEuc2Fm
ZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRnBhdGNod29y
ay5rZXJuZWwub3JnJTJGY292ZXIlMkYxMTEwNDA2MSUyRiZhbXA7ZGF0YT0wMiU3QzAxJTdDbGVv
bmFyZC5jcmVzdGV6JTQwbnhwLmNvbSU3Q2I0ZTg3ZGM4ODVjNjRjN2ZlODNkMDhkNzQxNTk0ZGNi
JTdDNjg2ZWExZDNiYzJiNGM2ZmE5MmNkOTljNWMzMDE2MzUlN0MwJTdDMCU3QzYzNzA0OTcyNDEz
OTI0MjA1OCZhbXA7c2RhdGE9WFh6YWJPalYyNktCc283ajdCQyUyQkdUZElpS3hpRlVObWYzUDVx
MXZYZ2JzJTNEJmFtcDtyZXNlcnZlZD0wCj4+Cj4+IENoYW5nZXMgc2luY2UgdjI6Cj4+ICogSGFu
ZGxlIHN5c2ZzIHZpYSBkZXZfcG1fcW9zIChpbiBzZXBhcmF0ZSBwYXRjaCkKPj4gKiBBZGQgbG9j
a2luZyB0byB7bWluLG1heH1fZnJlcV9zaG93Cj4+ICogRml4IGNoZWNrcGF0Y2ggaXNzdWVzIChs
b25nIGxpbmVzIGV0YykKPj4gTGluayB0byB2MjogaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJv
dGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGcGF0Y2h3b3JrLmtlcm5lbC5v
cmclMkZwYXRjaCUyRjExMDg0Mjc5JTJGJmFtcDtkYXRhPTAyJTdDMDElN0NsZW9uYXJkLmNyZXN0
ZXolNDBueHAuY29tJTdDYjRlODdkYzg4NWM2NGM3ZmU4M2QwOGQ3NDE1OTRkY2IlN0M2ODZlYTFk
M2JjMmI0YzZmYTkyY2Q5OWM1YzMwMTYzNSU3QzAlN0MwJTdDNjM3MDQ5NzI0MTM5MjQyMDU4JmFt
cDtzZGF0YT0zQ0IlMkZEODJOb0JLZCUyRkFSRVdhSSUyRlRsOXVJUExYeHo2ZSUyRmh6ZDNtc1JH
Y3clM0QmYW1wO3Jlc2VydmVkPTAKPj4KPj4gQ2hhbmdlcyBzaW5jZSB2MToKPj4gKiBBZGQgZG94
eWdlbiBjb21tZW50cyBmb3IgbWluX25iL21heF9uYgo+PiAqIFJlbW92ZSBub3RpZmllcnMgb24g
ZXJyb3IvY2xlYW51cCBwYXRocy4gS2VlcCBnb3RvcyBzaW1wbGUgYnkgcmVseWluZyBvbgo+PiBk
ZXZfcG1fcW9zX3JlbW92ZV9ub3RpZmllciBpZ25vcmluZyBub3RpZmllcnMgd2hpY2ggd2VyZSBu
b3QgYWRkZWQuCj4+IExpbmsgdG8gdjE6IGh0dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rp
b24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRnBhdGNod29yay5rZXJuZWwub3JnJTJG
cGF0Y2glMkYxMTA3ODQ3NSUyRiZhbXA7ZGF0YT0wMiU3QzAxJTdDbGVvbmFyZC5jcmVzdGV6JTQw
bnhwLmNvbSU3Q2I0ZTg3ZGM4ODVjNjRjN2ZlODNkMDhkNzQxNTk0ZGNiJTdDNjg2ZWExZDNiYzJi
NGM2ZmE5MmNkOTljNWMzMDE2MzUlN0MwJTdDMCU3QzYzNzA0OTcyNDEzOTI0MjA1OCZhbXA7c2Rh
dGE9dHFPVjZ0MEtVdkZ0VVd4SHJ6QXdWb3paNHNLcnlsbXV2ZHRpRlNXM0ZWNCUzRCZhbXA7cmVz
ZXJ2ZWQ9MAo+Pgo+PiBMZW9uYXJkIENyZXN0ZXogKDYpOgo+PiAgICBQTSAvIGRldmZyZXE6IERv
bid0IGZhaWwgZGV2ZnJlcV9kZXZfcmVsZWFzZSBpZiBub3QgaW4gbGlzdAo+PiAgICBQTSAvIGRl
dmZyZXE6IE1vdmUgbW9yZSBpbml0aWFsaXphdGlvbiBiZWZvcmUgcmVnaXN0cmF0aW9uCj4+ICAg
IFBNIC8gZGV2ZnJlcTogRG9uJ3QgdGFrZSBsb2NrIGluIGRldmZyZXFfYWRkX2RldmljZQo+PiAg
ICBQTSAvIGRldmZyZXE6IEludHJvZHVjZSBnZXRfZnJlcV9yYW5nZSBoZWxwZXIKPj4gICAgUE0g
LyBkZXZmcmVxOiBBZGQgUE0gUW9TIHN1cHBvcnQKPj4gICAgUE0gLyBkZXZmcmVxOiBVc2UgUE0g
UW9TIGZvciBzeXNmcyBtaW4vbWF4X2ZyZXEKPj4KPj4gICBkcml2ZXJzL2RldmZyZXEvZGV2ZnJl
cS5jIHwgMjY4ICsrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tCj4+ICAgaW5j
bHVkZS9saW51eC9kZXZmcmVxLmggICB8ICAxNCArLQo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMTkx
IGluc2VydGlvbnMoKyksIDkxIGRlbGV0aW9ucygtKQo+Pgo+IAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
