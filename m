Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F7CBC270
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 09:19:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Y2CAK8dGtt2zZjgRNFifHcQF341U47ZPQuY2gFvIjdg=; b=DZQowmB1mOuHLi
	JF7W35QAxVvzHhT7HpzInMvjZ7a/bGj2jB84ThoMr8jUguWbiO/as68T+fTcA4AnhST/we+x+Fzkb
	xOd/GFVeGqgAWYdf2NmVaQNtGgth3pd6UIE5N8B4zU5zZxCDq84gX18qWCa8ISP4KhI4vx3sop6xO
	J9Tipo/0lE8zyfHeW6/soYd37RACmlWlzo741NbjhueU4igEgrISYCBLxjBoxXd1bsjM56K0h55Za
	tAmsoYyEpEvTJ9pXYhkpyfNQZVq7xaBGkawfi3ANelYjw8xG/+dgH5gBGUO4KFGJkL/ADZusydIuy
	01B8umDBrkw6LqlKlXNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCf67-0007qQ-3Y; Tue, 24 Sep 2019 07:18:55 +0000
Received: from mail-eopbgr50085.outbound.protection.outlook.com ([40.107.5.85]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCf52-0007pi-9E
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 07:17:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kIS9Q6YvSXyXLiEj+VVDiJ0uOst+3+Lseh4C2NZglUiFt7mgWAw4DeT3Igfj9Bdz9VMWSlyXxPoPG3FH8yOphZ9q46KL66N5VoxIuXlFNAQw88yXwVx7r+XkTrmunyt8a1w7sq/bP2iR8WYQGF4XBQbBNXf/8/daNeWtOPywLpV2r+kwQ2pqePEmIoULHqRVUA2uHdSC34Z74y/NQE/95TubgzaFGCxz8Pk1lAJc0e+8ATTyw4Tz3z/pRclF/iP/nSAkGcTf/RXT/4AgvwXl4LeIlElGBGbn2gmwLPHmv1/kp6XkO3IlQkdYijncIgN05WPqcRk4ZiaeqvU8+KfhPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VdATLSxLm/2W/0Xy63MzPr78VFFj0r8aX3R2x4kxh7o=;
 b=OUSaMtNdKV8q7jAbjje99fHbmJ7A6LpJouVdpBa8jYWfNAQu3DB4u42P9v2j8YtC5thglVGZVxXQOnMsJjXnY4it5shO+1Wu2jWg+xd0OIg1nOU6zsxwvs8V+sZtgAAdVSClxkYrcYTX/yr2h3HmY9WlU9fc61pMoIi86kMRREJhJzD5CMs+XrSE0HJW4oGnXlgrv6R+L9BgT9wEzpAu4Qd2vYbWnDwe1PJ4xCEfeYYLyZRIT0beZZgLYdj5vSqi9J46ozZeAzCq7zsHzK+2HlqIzt/N2PqjF2PJhrMjp5rH60hK5uRjxEmqNeoG3CsdjxyEk8hfPs5nR1xeYgRsNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VdATLSxLm/2W/0Xy63MzPr78VFFj0r8aX3R2x4kxh7o=;
 b=KgdSjVeGyyfGwa/1YLKhO+mJkCqceY8l5Y1Da+lYFe9ew5SakXEJ0p8jylODIOGNgviaSdNiJgNSH1KdY+0dkiQExHQ9qkqFrgwbU7qhPsESqiO5ft+ggjAfkU9CVP8Cox1iPQhfe/GEsC/OI9gCS15XRPTfmjo6ddodAy4eG2o=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1SPR01MB028.eurprd04.prod.outlook.com (52.134.2.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.19; Tue, 24 Sep 2019 07:17:45 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 07:17:45 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke
 <mka@chromium.org>, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>
Subject: Re: [PATCH] PM / devfreq: Check NULL governor in
 available_governors_show
Thread-Topic: [PATCH] PM / devfreq: Check NULL governor in
 available_governors_show
Thread-Index: AQHVcnrHhFwxXYiwt0GfXJjRZY7SJg==
Date: Tue, 24 Sep 2019 07:17:45 +0000
Message-ID: <VI1PR04MB70231013FC39AA9A4AD46AC0EE840@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <CGME20190923163453epcas4p1f9cff7d9f1a33fabcf4c980560d6c27d@epcas4p1.samsung.com>
 <96f459015e6418cee4fa20fdbdb80c4caf417c19.1569256298.git.leonard.crestez@nxp.com>
 <d6ea004f-4fbb-9a16-407e-ad8542abe1dc@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2962747f-9438-4996-ef42-08d740bf4bfe
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1SPR01MB028; 
x-ms-traffictypediagnostic: VI1SPR01MB028:
x-microsoft-antispam-prvs: <VI1SPR01MB02864DCE4A688F70A46778FEE840@VI1SPR01MB028.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(376002)(39860400002)(396003)(189003)(199004)(256004)(71200400001)(4326008)(74316002)(7736002)(33656002)(66066001)(64756008)(6246003)(66446008)(305945005)(14444005)(66476007)(66556008)(110136005)(316002)(55016002)(6116002)(66946007)(76116006)(86362001)(9686003)(71190400001)(91956017)(54906003)(99286004)(7696005)(25786009)(53546011)(76176011)(6436002)(3846002)(8676002)(26005)(52536014)(6506007)(81166006)(81156014)(446003)(2906002)(186003)(102836004)(8936002)(486006)(44832011)(229853002)(5660300002)(478600001)(14454004)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1SPR01MB028;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1LV2QoznW+s73BA8vbubUeKpUEyA6MSvPScwgAQWzOTZpUf6ybo7m5olGqmgt4WYWL8gjwnNzMqwzDfIMRwNAEA4cnjeQMvKLklsOOSSXy5awrc9EZN2mtCYIZFwTJ4uyfFuezgJy7wXGSf0XXL44U/hN3U6fKY6kLbvnuLzpnfbzfYcUk3zxiwzsbXVDST8mp/zr49G0xTfAHBmkRRlQqty+Jd0zAYnp8jn80xDpvMsWZTenBaGChDYfVZ6p2lnZ4X3lKg9LEYsrF/XWpfJGmILARo+OWHIzxUu+Ct9hE3oe/d6B0iKkDNnr7wmGoy/AbicPiS4uwJYjASmWnX5CStTY7qo2R/+e89GhaE7TPVUow4TJNyUJ3yYCiR+BuOYFQzh/D5q7ioLbXAKM/VSfY0k7bfj9XNtO4gagVIHamQ=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2962747f-9438-4996-ef42-08d740bf4bfe
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 07:17:45.3213 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j7vtJGRvZrjfQTOWESEIk4H6BhkuIQGk3XAlNnGD9/JCMckGpZ624p5GXnfja/jl26QiypoPPRoQr75sE7TFkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1SPR01MB028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_001749_093431_E02B84A1 
X-CRM114-Status: GOOD (  20.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?utf-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0wOS0yNCA0OjQ4IEFNLCBDaGFud29vIENob2kgd3JvdGU6Cj4gT24gMTkuIDkuIDI0
LiDsmKTsoIQgMTozNCwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+PiBUaGUgZ292ZXJub3IgaXMg
aW5pdGlhbGl6ZWQgYWZ0ZXIgc3lzZnMgYXR0cmlidXRlcyBiZWNvbWUgdmlzaWJsZSBzbyBpbgo+
PiB0aGVvcnkgdGhlIGdvdmVybm9yIGZpZWxkIGNhbiBiZSBOVUxMIGhlcmUuCj4+Cj4+IFNpZ25l
ZC1vZmYtYnk6IExlb25hcmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+Cj4+IC0t
LQo+PiAgIGRyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMgfCAyICstCj4+ICAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IEZvdW5kIHRoaXMgYnkgaGFj
a2luZyBkZXZpY2UgY29yZSB0byBjYWxsIGF0dHJpYnV0ZSAic2hvdyIgZnVuY3Rpb25zCj4+IGZy
b20gaW5zaWRlIGRldmljZV9hZGQuCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEv
ZGV2ZnJlcS5jIGIvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+PiBpbmRleCAwMGZjMjNmZWE1
YjIuLjg5NmZiMjMxMmYyZiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEu
Ywo+PiArKysgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4+IEBAIC0xMzIyLDExICsxMzIy
LDExIEBAIHN0YXRpYyBzc2l6ZV90IGF2YWlsYWJsZV9nb3Zlcm5vcnNfc2hvdyhzdHJ1Y3QgZGV2
aWNlICpkLAo+PiAgIAo+PiAgIAkvKgo+PiAgIAkgKiBUaGUgZGV2ZnJlcSB3aXRoIGltbXV0YWJs
ZSBnb3Zlcm5vciAoZS5nLiwgcGFzc2l2ZSkgc2hvd3MKPj4gICAJICogb25seSBvd24gZ292ZXJu
b3IuCj4+ICAgCSAqLwo+PiAtCWlmIChkZi0+Z292ZXJub3ItPmltbXV0YWJsZSkgewo+PiArCWlm
IChkZi0+Z292ZXJub3IgJiYgZGYtPmdvdmVybm9yLT5pbW11dGFibGUpIHsKPj4gICAJCWNvdW50
ID0gc2NucHJpbnRmKCZidWZbY291bnRdLCBERVZGUkVRX05BTUVfTEVOLAo+PiAgIAkJCQkgICIl
cyAiLCBkZi0+Z292ZXJub3JfbmFtZSk7Cj4+ICAgCS8qCj4+ICAgCSAqIFRoZSBkZXZmcmVxIGRl
dmljZSBzaG93cyB0aGUgcmVnaXN0ZXJlZCBnb3Zlcm5vciBleGNlcHQgZm9yCj4+ICAgCSAqIGlt
bXV0YWJsZSBnb3Zlcm5vcnMgc3VjaCBhcyBwYXNzaXZlIGdvdmVybm9yIC4KPj4KPiAKPiBBcyB5
b3UgbWVudGlvbmVkLCBpdCBjcmVhdGUgc3lzZnMgYW5kIHRoZW4gaW5pdGlhbGl6ZSB0aGUgZ292
ZXJub3IgaW5zdGFuY2UKPiBhcyBmb2xsb3dpbmc6Cj4gCj4gCWRldmljZV9yZWdpc3RlcigpCj4g
CQlkZXZpY2VfYWRkKCkKPiAJCQlkZXZpY2VfYWRkX2F0dHJzKCkKPiAJCQkJY3JlYXRpbmcgc3lz
ZnMgZW50cmllcy4KPiAJZ292ZXJub3IgPSB0cnlfdGhlbl9yZXF1ZXN0X2dvdmVybm9yKC4uLikK
PiAKPiAKPiBUaGFua3MgZm9yIGZpeC11cC4KPiBSZXZpZXdlZC1ieTogQ2hhbndvbyBDaG9pIDxj
dzAwLmNob2lAc2Ftc3VuZy5jb20+Cj4gCj4gQWRkaXRpb25hbGx5LCB5b3UgaGF2ZSB0byBhZGQg
dGhlIGZvbGxvd2luZyAnZml4ZXMnIHRhZwo+IGFuZCB0aGVuIHNlbmQgaXQgdG8gc3RhYmxlIG1h
aWxpbmcgbGlzdChzdGFibGVAdmdlci5rZXJuZWwub3JnKS4KPiAtIEZpeGVzOiBiY2YyM2M3OWM0
ZTQ2ICgiUE0gLyBkZXZmcmVxOiBGaXggYXZhaWxhYmxlX2dvdmVybm9yIHN5c2ZzIikKCk9LLCBi
dXQgSSdtIG5vdCBzdXJlIHRoaXMgbWVldHMgdGhlIGNyaXRlcmlhIGZvciBpbmNsdXNpb24gaW50
byBsaW51eCAKc3RhYmxlOgoKKiBJdCBtdXN0IGZpeCBhIHJlYWwgYnVnIHRoYXQgYm90aGVycyBw
ZW9wbGUgKG5vdCBhLCAiVGhpcyBjb3VsZCBiZSBhIApwcm9ibGVtLi4uIiB0eXBlIHRoaW5nKS4K
KiBObyAidGhlb3JldGljYWwgcmFjZSBjb25kaXRpb24iIGlzc3VlcywgdW5sZXNzIGFuIGV4cGxh
bmF0aW9uIG9mIGhvdyAKdGhlIHJhY2UgY2FuIGJlIGV4cGxvaXRlZCBpcyBhbHNvIHByb3ZpZGVk
LgoKVGhpcyBwYXRjaCBmaXhlcyBhIHRoZW9yZXRpY2FsIHJhY2UgY29uZGl0aW9uIHdoaWNoIGhh
cyBiZWVuIHRoZXJlIHNpbmNlIAp0aGUgc3RhcnQuCgotLQpSZWdhcmRzLApMZW9uYXJkCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
