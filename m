Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFA7C38AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 17:14:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=hiKOvkMr6RsVxHX3cLFuFm+e0s754DPcwtbFrRMLK9U=; b=qbNAtRtLbVy9ib
	07Bq0V1sxq3TKoBPPiIwq/dURG4wBM0wqHuLhmfAZK78oiD+njV/Ve6URcKqkxA2d50vZRf45opGK
	XftgMusU67T7BSW5e5kV+7zoEwoR1eq1544E2J3ApYoSjtUU4NdbToC9ZRv8JvKV5XzB8yGG4Gd8+
	abaWm0uYONK/TPkzQWg2cVrJon4bIHUjAhOJ/02V0kKAA6TLfj642V7puI+YOjYizqEGdO7bzjAVF
	cQWaoUVxkl9SaPZLAONlTThu9fLwe6FnQI5IsFZfm50HM+atP/19f4XG9wC/gNkE3aFJikvuEIdtO
	hhFepDl2luzLWQK4zs+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJqz-00029Y-AR; Tue, 01 Oct 2019 15:14:17 +0000
Received: from mail-vi1eur04on0624.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::624]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJqq-00028w-Nd
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 15:14:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SlczX2FdFtHopMcRhMhcfbh64KhQa8XWIhzqXUSxtdkKjLppRuj4rLS11Rhc8+402SApFESkdNFPq6oPWKU0qgYCGfQ7N1wlAJe6i8P3OD0/EsizKevKMk/QYLCYIHvhgbaoAl7f3rs0OPp3h/zChQu2mkXzUm7jx5+XyDIetzttf9mdyhzcENH4NKZ2bnyj+atOoN0YI6D1Q3gXdgo4Hy8bFy3WVLVnVU6e1mPKrAe0kE12qsgIi4ZdmE9eQEeg0+Zo7xQ7akWc3MhpqZEOSGdRKSybsACMDbvbNo8MosKr7B/zvmHjjDEe5UUC7qmmP80eceTtGTXsQpddA1KtDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YcQw5ACZ7v2oHAHwLTLzyv0nA8q9GUT0WE+BxCbB29M=;
 b=Xenmb0CczW/NSejxy2TvrDhGh4FY/LEMlcB1Qj1pJM8qX6m+eb4Xzx14RCu19JPg9JRLRTFG6MRpKPhXI7biaNKKc57IYNnqCAuOfm62EBTNSa/tvPMbLxQd4XCiiy7omJkaXWwGurmmtQaVQTEdUWTHhdGbWt2iMrW9231GLkWutV5nbmgDAD3aOW/t/L0wuqoxi6Ay1cxo/mpRi/YiIT+ds7jZcojaj5/A+1W3pQ/v/OlOi5iPScjiTsPQq2hxERuuYU00ZK5avh7fds2P2mU9pFCz2aKQhpd3oqydHJQst0iwzOFkC3JIwWRy86svsLFt72PF5RBv9T/Z5QfsZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YcQw5ACZ7v2oHAHwLTLzyv0nA8q9GUT0WE+BxCbB29M=;
 b=o7fTUHx9u5Ni/pZPQg15K4btEFyg+hAMgq9XkVW2qBDudbREwmIvIiWSikunV3YerAxrHJN2nGINUQrxpJbtH/gHh5Xts+e4vQtY5quQOhe/EYG99sbstfSERjVwXm4w+8MbOVjscqijeLwu40GxUJ/AIDtfgPIv71bTLH67aKw=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6208.eurprd04.prod.outlook.com (20.179.24.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Tue, 1 Oct 2019 15:14:05 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2ce6:267:b2a6:9902]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2ce6:267:b2a6:9902%2]) with mapi id 15.20.2305.017; Tue, 1 Oct 2019
 15:14:05 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH 8/8] PM / devfreq: Move opp notifier registration to core
Thread-Topic: [PATCH 8/8] PM / devfreq: Move opp notifier registration to core
Thread-Index: AQHVd9hI2MYEj8DiCUCY4dxTB6pJ8A==
Date: Tue, 1 Oct 2019 15:14:04 +0000
Message-ID: <VI1PR04MB7023312B8B8B1D8CC48ABA97EE9D0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
 <CGME20190918001840epcas5p4a5194b71b19dac73873794b3cefd8cb6@epcas5p4.samsung.com>
 <974c2bd6d6e622e47c85af65a200b4079d25002b.1568764439.git.leonard.crestez@nxp.com>
 <efdec5cf-c434-0b53-93c2-d39d5f264fae@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 519e3884-7f42-45e6-230e-08d74681ffb4
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR04MB6208:|VI1PR04MB6208:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB62089BA85ABE858556B3880AEE9D0@VI1PR04MB6208.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0177904E6B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(376002)(346002)(136003)(39860400002)(189003)(199004)(110136005)(33656002)(6506007)(14444005)(6116002)(91956017)(66946007)(66556008)(3846002)(4326008)(54906003)(66476007)(5660300002)(25786009)(76116006)(86362001)(64756008)(26005)(256004)(53546011)(66446008)(6436002)(316002)(478600001)(14454004)(55016002)(9686003)(52536014)(71200400001)(102836004)(7696005)(76176011)(81166006)(6246003)(229853002)(486006)(71190400001)(74316002)(8676002)(2906002)(44832011)(8936002)(305945005)(7736002)(476003)(81156014)(186003)(446003)(7416002)(66066001)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6208;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RnglLZ0AQGw/iXjkc2KFqs3/OdbM+hGciUPEa0QMzODBgf/BmA+Iq5ZN7aeXU1mucSO1bKWoVkYJoyOvPexgerbKY87G1M4wA/8Kz+oFNXIar1D/fKyrn8DsAFuE0D6olCyyaMc7pup1FSEvwibk2a4QJjqhz0VYwqgPH9q2kFIxpdJMsXYkgG4rwOb1i8C3RTByOtI401G4nibcSCcLiuo3Bt/LvsxqlqOR21RpVd7hBQJmjttJmPhR6liVJpXLtxq5zu568WU9B6c9lfr2lyuDUuHi5+00Vc8GWbzccp4P8Xw1aINIWv5vh5CzXnNcwwDBT53SK60EEkF2HKUVoFkLIjKxUAfh5+zaUD6uTS8OIETkeqsrd9QhlopHiT23YDMI/xNL4eERcKKEnaA4mcuWQh2ZdiAylx+6iJLT/A8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 519e3884-7f42-45e6-230e-08d74681ffb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2019 15:14:04.9954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RbLkpvDy7jgC53lRsvwlsvn/aOG4PkvBI2+1ZNMyAhkCQWgUypCQLEoBQlcXZX8VKshgMzkcel9iDcQWgr/iiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6208
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_081408_928121_55BAEBD3 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:624 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Viresh Kumar <viresh.kumar@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDEuMTAuMjAxOSAwMDo0NCwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+IE9uIDE5LiA5LiAxOC4g
7Jik7KCEIDk6MTgsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPj4gQW4gb3BwIG5vdGlmaWVyIGNh
biBiZSByZWdpc3RlcmVkIGJ5IGRldmZyZXEgaW4gb3JkZXIgdG8gcmVzcG9uZCB0byBPUFBzCj4+
IGJlaW5nIGVuYWJsZWQgb3IgZGlzYWJsZWQgYXQgcnVudGltZSAoZm9yIGV4YW1wbGUgYnkgdGhl
cm1hbCkuIFRoaXMgaXMKPj4gY3VycmVudGx5IGhhbmRsZWQgZXhwbGljaXRseSBieSBkcml2ZXJz
Lgo+Pgo+PiBNb3ZlIG5vdGlmaWVyIGhhbmRsaW5nIHRvIGRldmZyZXFfYWRkX2RldmljZSBiZWNh
dXNlIHRoaXMgc2hvdWxkbid0IGJlCj4+IGhhcmR3YXJlLXNwZWNpZmljLgo+Pgo+PiBIYW5kbGlu
ZyB0aGlzIGluc2lkZSB0aGUgY29yZSBhbHNvIHRha2VzIGxlc3MgY29kZS4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogTGVvbmFyZCBDcmVzdGV6IDxsZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT4KPj4gLS0t
Cj4+ICAgZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYyAgICB8IDg0ICsrKy0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+PiAgIGRyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgfCAg
NyAtLS0KPj4gICBkcml2ZXJzL2RldmZyZXEvcmszMzk5X2RtYy5jIHwgIDYgLS0tCj4+ICAgaW5j
bHVkZS9saW51eC9kZXZmcmVxLmggICAgICB8ICA4IC0tLS0KPj4gICA0IGZpbGVzIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKSwgOTkgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2RldmZyZXEvZGV2ZnJlcS5jIGIvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+PiBpbmRl
eCA3OTc3YmFkOTM5NDkuLmI5MTc3NDMwYWU4ZiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9kZXZm
cmVxL2RldmZyZXEuYwo+PiArKysgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4+IEBAIC02
NjMsMTAgKzY2MywxMSBAQCBzdGF0aWMgdm9pZCBkZXZmcmVxX2Rldl9yZWxlYXNlKHN0cnVjdCBk
ZXZpY2UgKmRldikKPj4gICAKPj4gICAJbXV0ZXhfbG9jaygmZGV2ZnJlcV9saXN0X2xvY2spOwo+
PiAgIAlsaXN0X2RlbCgmZGV2ZnJlcS0+bm9kZSk7Cj4+ICAgCW11dGV4X3VubG9jaygmZGV2ZnJl
cV9saXN0X2xvY2spOwo+PiAgIAo+PiArCWRldl9wbV9vcHBfdW5yZWdpc3Rlcl9ub3RpZmllcihk
ZXZmcmVxLT5kZXYucGFyZW50LCAmZGV2ZnJlcS0+bmIpOwo+PiAgIAlkZXZfcG1fcW9zX3JlbW92
ZV9ub3RpZmllcihkZXZmcmVxLT5kZXYucGFyZW50LCAmZGV2ZnJlcS0+bmJfbWF4LAo+PiAgIAkJ
CURFVl9QTV9RT1NfTUFYX0ZSRVFVRU5DWSk7Cj4+ICAgCWRldl9wbV9xb3NfcmVtb3ZlX25vdGlm
aWVyKGRldmZyZXEtPmRldi5wYXJlbnQsICZkZXZmcmVxLT5uYl9taW4sCj4+ICAgCQkJREVWX1BN
X1FPU19NSU5fRlJFUVVFTkNZKTsKPj4gICAKPj4gQEAgLTcyOCwxMSArNzI5LDEwIEBAIHN0cnVj
dCBkZXZmcmVxICpkZXZmcmVxX2FkZF9kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2LAo+PiAgIAlk
ZXZmcmVxLT5wcm9maWxlID0gcHJvZmlsZTsKPj4gICAJc3RybmNweShkZXZmcmVxLT5nb3Zlcm5v
cl9uYW1lLCBnb3Zlcm5vcl9uYW1lLCBERVZGUkVRX05BTUVfTEVOKTsKPj4gICAJZGV2ZnJlcS0+
cHJldmlvdXNfZnJlcSA9IHByb2ZpbGUtPmluaXRpYWxfZnJlcTsKPj4gICAJZGV2ZnJlcS0+bGFz
dF9zdGF0dXMuY3VycmVudF9mcmVxdWVuY3kgPSBwcm9maWxlLT5pbml0aWFsX2ZyZXE7Cj4+ICAg
CWRldmZyZXEtPmRhdGEgPSBkYXRhOwo+PiAtCWRldmZyZXEtPm5iLm5vdGlmaWVyX2NhbGwgPSBk
ZXZmcmVxX25vdGlmaWVyX2NhbGw7Cj4+ICAgCj4+ICAgCWlmICghZGV2ZnJlcS0+cHJvZmlsZS0+
bWF4X3N0YXRlICYmICFkZXZmcmVxLT5wcm9maWxlLT5mcmVxX3RhYmxlKSB7Cj4+ICAgCQllcnIg
PSBzZXRfZnJlcV90YWJsZShkZXZmcmVxKTsKPj4gICAJCWlmIChlcnIgPCAwKQo+PiAgIAkJCWdv
dG8gZXJyX2RldjsKPj4gQEAgLTgxMCwxMCArODEwLDE1IEBAIHN0cnVjdCBkZXZmcmVxICpkZXZm
cmVxX2FkZF9kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2LAo+PiAgIAllcnIgPSBkZXZfcG1fcW9z
X2FkZF9ub3RpZmllcihkZXZmcmVxLT5kZXYucGFyZW50LCAmZGV2ZnJlcS0+bmJfbWF4LAo+PiAg
IAkJCQkgICAgICBERVZfUE1fUU9TX01BWF9GUkVRVUVOQ1kpOwo+PiAgIAlpZiAoZXJyKQo+PiAg
IAkJZ290byBlcnJfZGV2ZnJlcTsKPj4gICAKPj4gKwlkZXZmcmVxLT5uYi5ub3RpZmllcl9jYWxs
ID0gZGV2ZnJlcV9ub3RpZmllcl9jYWxsOwo+PiArCWVyciA9IGRldl9wbV9vcHBfcmVnaXN0ZXJf
bm90aWZpZXIoZGV2ZnJlcS0+ZGV2LnBhcmVudCwgJmRldmZyZXEtPm5iKTsKPj4gKwlpZiAoZXJy
KQo+PiArCQlnb3RvIGVycl9kZXZmcmVxOwo+PiArCj4+ICAgCW11dGV4X2xvY2soJmRldmZyZXFf
bGlzdF9sb2NrKTsKPj4gICAKPj4gICAJZ292ZXJub3IgPSB0cnlfdGhlbl9yZXF1ZXN0X2dvdmVy
bm9yKGRldmZyZXEtPmdvdmVybm9yX25hbWUpOwo+PiAgIAlpZiAoSVNfRVJSKGdvdmVybm9yKSkg
ewo+PiAgIAkJZGV2X2VycihkZXYsICIlczogVW5hYmxlIHRvIGZpbmQgZ292ZXJub3IgZm9yIHRo
ZSBkZXZpY2VcbiIsCj4+IEBAIC0xNjI0LDg3ICsxNjI5LDEwIEBAIHN0cnVjdCBkZXZfcG1fb3Bw
ICpkZXZmcmVxX3JlY29tbWVuZGVkX29wcChzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+ICAgCj4+ICAg
CXJldHVybiBvcHA7Cj4+ICAgfQo+PiAgIEVYUE9SVF9TWU1CT0woZGV2ZnJlcV9yZWNvbW1lbmRl
ZF9vcHApOwo+PiAgIAo+PiAtLyoqCj4+IC0gKiBkZXZmcmVxX3JlZ2lzdGVyX29wcF9ub3RpZmll
cigpIC0gSGVscGVyIGZ1bmN0aW9uIHRvIGdldCBkZXZmcmVxIG5vdGlmaWVkCj4+IC0gKgkJCQkg
ICAgIGZvciBhbnkgY2hhbmdlcyBpbiB0aGUgT1BQIGF2YWlsYWJpbGl0eQo+PiAtICoJCQkJICAg
ICBjaGFuZ2VzCj4+IC0gKiBAZGV2OglUaGUgZGV2ZnJlcSB1c2VyIGRldmljZS4gKHBhcmVudCBv
ZiBkZXZmcmVxKQo+PiAtICogQGRldmZyZXE6CVRoZSBkZXZmcmVxIG9iamVjdC4KPj4gLSAqLwo+
PiAtaW50IGRldmZyZXFfcmVnaXN0ZXJfb3BwX25vdGlmaWVyKHN0cnVjdCBkZXZpY2UgKmRldiwg
c3RydWN0IGRldmZyZXEgKmRldmZyZXEpCj4+IC17Cj4+IC0JcmV0dXJuIGRldl9wbV9vcHBfcmVn
aXN0ZXJfbm90aWZpZXIoZGV2LCAmZGV2ZnJlcS0+bmIpOwo+PiAtfQo+PiAtRVhQT1JUX1NZTUJP
TChkZXZmcmVxX3JlZ2lzdGVyX29wcF9ub3RpZmllcik7Cj4+IC0KPj4gLS8qKgo+PiAtICogZGV2
ZnJlcV91bnJlZ2lzdGVyX29wcF9ub3RpZmllcigpIC0gSGVscGVyIGZ1bmN0aW9uIHRvIHN0b3Ag
Z2V0dGluZyBkZXZmcmVxCj4+IC0gKgkJCQkgICAgICAgbm90aWZpZWQgZm9yIGFueSBjaGFuZ2Vz
IGluIHRoZSBPUFAKPj4gLSAqCQkJCSAgICAgICBhdmFpbGFiaWxpdHkgY2hhbmdlcyBhbnltb3Jl
Lgo+PiAtICogQGRldjoJVGhlIGRldmZyZXEgdXNlciBkZXZpY2UuIChwYXJlbnQgb2YgZGV2ZnJl
cSkKPj4gLSAqIEBkZXZmcmVxOglUaGUgZGV2ZnJlcSBvYmplY3QuCj4+IC0gKgo+PiAtICogQXQg
ZXhpdCgpIGNhbGxiYWNrIG9mIGRldmZyZXFfZGV2X3Byb2ZpbGUsIHRoaXMgbXVzdCBiZSBpbmNs
dWRlZCBpZgo+PiAtICogZGV2ZnJlcV9yZWNvbW1lbmRlZF9vcHAgaXMgdXNlZC4KPj4gLSAqLwo+
PiAtaW50IGRldmZyZXFfdW5yZWdpc3Rlcl9vcHBfbm90aWZpZXIoc3RydWN0IGRldmljZSAqZGV2
LCBzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSkKPj4gLXsKPj4gLQlyZXR1cm4gZGV2X3BtX29wcF91
bnJlZ2lzdGVyX25vdGlmaWVyKGRldiwgJmRldmZyZXEtPm5iKTsKPj4gLX0KPj4gLUVYUE9SVF9T
WU1CT0woZGV2ZnJlcV91bnJlZ2lzdGVyX29wcF9ub3RpZmllcik7Cj4+IC0KPj4gLXN0YXRpYyB2
b2lkIGRldm1fZGV2ZnJlcV9vcHBfcmVsZWFzZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHZvaWQgKnJl
cykKPj4gLXsKPj4gLQlkZXZmcmVxX3VucmVnaXN0ZXJfb3BwX25vdGlmaWVyKGRldiwgKihzdHJ1
Y3QgZGV2ZnJlcSAqKilyZXMpOwo+PiAtfQo+PiAtCj4+IC0vKioKPj4gLSAqIGRldm1fZGV2ZnJl
cV9yZWdpc3Rlcl9vcHBfbm90aWZpZXIoKSAtIFJlc291cmNlLW1hbmFnZWQKPj4gLSAqCQkJCQkg
IGRldmZyZXFfcmVnaXN0ZXJfb3BwX25vdGlmaWVyKCkKPj4gLSAqIEBkZXY6CVRoZSBkZXZmcmVx
IHVzZXIgZGV2aWNlLiAocGFyZW50IG9mIGRldmZyZXEpCj4+IC0gKiBAZGV2ZnJlcToJVGhlIGRl
dmZyZXEgb2JqZWN0Lgo+PiAtICovCj4+IC1pbnQgZGV2bV9kZXZmcmVxX3JlZ2lzdGVyX29wcF9u
b3RpZmllcihzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+IC0JCQkJICAgICAgIHN0cnVjdCBkZXZmcmVx
ICpkZXZmcmVxKQo+PiAtewo+PiAtCXN0cnVjdCBkZXZmcmVxICoqcHRyOwo+PiAtCWludCByZXQ7
Cj4+IC0KPj4gLQlwdHIgPSBkZXZyZXNfYWxsb2MoZGV2bV9kZXZmcmVxX29wcF9yZWxlYXNlLCBz
aXplb2YoKnB0ciksIEdGUF9LRVJORUwpOwo+PiAtCWlmICghcHRyKQo+PiAtCQlyZXR1cm4gLUVO
T01FTTsKPj4gLQo+PiAtCXJldCA9IGRldmZyZXFfcmVnaXN0ZXJfb3BwX25vdGlmaWVyKGRldiwg
ZGV2ZnJlcSk7Cj4+IC0JaWYgKHJldCkgewo+PiAtCQlkZXZyZXNfZnJlZShwdHIpOwo+PiAtCQly
ZXR1cm4gcmV0Owo+PiAtCX0KPj4gLQo+PiAtCSpwdHIgPSBkZXZmcmVxOwo+PiAtCWRldnJlc19h
ZGQoZGV2LCBwdHIpOwo+PiAtCj4+IC0JcmV0dXJuIDA7Cj4+IC19Cj4+IC1FWFBPUlRfU1lNQk9M
KGRldm1fZGV2ZnJlcV9yZWdpc3Rlcl9vcHBfbm90aWZpZXIpOwo+PiAtCj4+IC0vKioKPj4gLSAq
IGRldm1fZGV2ZnJlcV91bnJlZ2lzdGVyX29wcF9ub3RpZmllcigpIC0gUmVzb3VyY2UtbWFuYWdl
ZAo+PiAtICoJCQkJCSAgICBkZXZmcmVxX3VucmVnaXN0ZXJfb3BwX25vdGlmaWVyKCkKPj4gLSAq
IEBkZXY6CVRoZSBkZXZmcmVxIHVzZXIgZGV2aWNlLiAocGFyZW50IG9mIGRldmZyZXEpCj4+IC0g
KiBAZGV2ZnJlcToJVGhlIGRldmZyZXEgb2JqZWN0Lgo+PiAtICovCj4+IC12b2lkIGRldm1fZGV2
ZnJlcV91bnJlZ2lzdGVyX29wcF9ub3RpZmllcihzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+IC0JCQkJ
CSBzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSkKPj4gLXsKPj4gLQlXQVJOX09OKGRldnJlc19yZWxl
YXNlKGRldiwgZGV2bV9kZXZmcmVxX29wcF9yZWxlYXNlLAo+PiAtCQkJICAgICAgIGRldm1fZGV2
ZnJlcV9kZXZfbWF0Y2gsIGRldmZyZXEpKTsKPj4gLX0KPj4gLUVYUE9SVF9TWU1CT0woZGV2bV9k
ZXZmcmVxX3VucmVnaXN0ZXJfb3BwX25vdGlmaWVyKTsKPj4gLQo+PiAgIC8qKgo+PiAgICAqIGRl
dmZyZXFfcmVnaXN0ZXJfbm90aWZpZXIoKSAtIFJlZ2lzdGVyIGEgZHJpdmVyIHdpdGggZGV2ZnJl
cQo+PiAgICAqIEBkZXZmcmVxOglUaGUgZGV2ZnJlcSBvYmplY3QuCj4+ICAgICogQG5iOgkJVGhl
IG5vdGlmaWVyIGJsb2NrIHRvIHJlZ2lzdGVyLgo+PiAgICAqIEBsaXN0OglERVZGUkVRX1RSQU5T
SVRJT05fTk9USUZJRVIuCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1
cy5jIGIvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+PiBpbmRleCBjODMyNjczMjczYTIu
LjI5ZjQyMjQ2OTk2MCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMu
Ywo+PiArKysgYi9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4+IEBAIC0zNTYsMTcgKzM1
NiwxMCBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKPj4gICAJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGFkZCBkZXZmcmVxIGRldmlj
ZVxuIik7Cj4+ICAgCQlyZXQgPSBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7Cj4+ICAgCQlnb3RvIGVy
cjsKPj4gICAJfQo+PiAgIAo+PiAtCS8qIFJlZ2lzdGVyIG9wcF9ub3RpZmllciB0byBjYXRjaCB0
aGUgY2hhbmdlIG9mIE9QUCAgKi8KPj4gLQlyZXQgPSBkZXZtX2RldmZyZXFfcmVnaXN0ZXJfb3Bw
X25vdGlmaWVyKGRldiwgYnVzLT5kZXZmcmVxKTsKPj4gLQlpZiAocmV0IDwgMCkgewo+PiAtCQlk
ZXZfZXJyKGRldiwgImZhaWxlZCB0byByZWdpc3RlciBvcHAgbm90aWZpZXJcbiIpOwo+PiAtCQln
b3RvIGVycjsKPj4gLQl9Cj4+IC0KPj4gICAJLyoKPj4gICAJICogRW5hYmxlIGRldmZyZXEtZXZl
bnQgdG8gZ2V0IHJhdyBkYXRhIHdoaWNoIGlzIHVzZWQgdG8gZGV0ZXJtaW5lCj4+ICAgCSAqIGN1
cnJlbnQgYnVzIGxvYWQuCj4+ICAgCSAqLwo+PiAgIAlyZXQgPSBleHlub3NfYnVzX2VuYWJsZV9l
ZGV2KGJ1cyk7Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvcmszMzk5X2RtYy5jIGIv
ZHJpdmVycy9kZXZmcmVxL3JrMzM5OV9kbWMuYwo+PiBpbmRleCAyZTY1ZDcyNzlkNzkuLmY2NjBk
MjAzMWU4YSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9kZXZmcmVxL3JrMzM5OV9kbWMuYwo+PiAr
KysgYi9kcml2ZXJzL2RldmZyZXEvcmszMzk5X2RtYy5jCj4+IEBAIC00NTQsMTIgKzQ1NCwxMCBA
QCBzdGF0aWMgaW50IHJrMzM5OV9kbWNmcmVxX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCj4+ICAgCWlmIChJU19FUlIoZGF0YS0+ZGV2ZnJlcSkpIHsKPj4gICAJCXJldCA9IFBU
Ul9FUlIoZGF0YS0+ZGV2ZnJlcSk7Cj4+ICAgCQlnb3RvIGVycl9mcmVlX29wcDsKPj4gICAJfQo+
PiAgIAo+PiAtCWRldm1fZGV2ZnJlcV9yZWdpc3Rlcl9vcHBfbm90aWZpZXIoZGV2LCBkYXRhLT5k
ZXZmcmVxKTsKPj4gLQo+PiAgIAlkYXRhLT5kZXYgPSBkZXY7Cj4+ICAgCXBsYXRmb3JtX3NldF9k
cnZkYXRhKHBkZXYsIGRhdGEpOwo+PiAgIAo+PiAgIAlyZXR1cm4gMDsKPj4gICAKPj4gQEAgLTQ3
MCwxNCArNDY4LDEwIEBAIHN0YXRpYyBpbnQgcmszMzk5X2RtY2ZyZXFfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPj4gICAKPj4gICBzdGF0aWMgaW50IHJrMzM5OV9kbWNmcmVx
X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+PiAgIHsKPj4gICAJc3RydWN0
IHJrMzM5OV9kbWNmcmVxICpkbWNmcmVxID0gZGV2X2dldF9kcnZkYXRhKCZwZGV2LT5kZXYpOwo+
PiAgIAo+PiAtCS8qCj4+IC0JICogQmVmb3JlIHJlbW92ZSB0aGUgb3BwIHRhYmxlIHdlIG5lZWQg
dG8gdW5yZWdpc3RlciB0aGUgb3BwIG5vdGlmaWVyLgo+PiAtCSAqLwo+PiAtCWRldm1fZGV2ZnJl
cV91bnJlZ2lzdGVyX29wcF9ub3RpZmllcihkbWNmcmVxLT5kZXYsIGRtY2ZyZXEtPmRldmZyZXEp
Owo+PiAgIAlkZXZfcG1fb3BwX29mX3JlbW92ZV90YWJsZShkbWNmcmVxLT5kZXYpOwo+PiAgIAo+
PiAgIAlyZXR1cm4gMDsKPj4gICB9Cj4+ICAgCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4
L2RldmZyZXEuaCBiL2luY2x1ZGUvbGludXgvZGV2ZnJlcS5oCj4+IGluZGV4IDRiNWNjODBhYmJl
My4uYmY2ZWJmYmMxZThhIDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RldmZyZXEuaAo+
PiArKysgYi9pbmNsdWRlL2xpbnV4L2RldmZyZXEuaAo+PiBAQCAtMjIwLDE4ICsyMjAsMTAgQEAg
ZXh0ZXJuIHZvaWQgZGV2ZnJlcV9yZXN1bWUodm9pZCk7Cj4+ICAgZXh0ZXJuIGludCB1cGRhdGVf
ZGV2ZnJlcShzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSk7Cj4+ICAgCj4+ICAgLyogSGVscGVyIGZ1
bmN0aW9ucyBmb3IgZGV2ZnJlcSB1c2VyIGRldmljZSBkcml2ZXIgd2l0aCBPUFAuICovCj4+ICAg
ZXh0ZXJuIHN0cnVjdCBkZXZfcG1fb3BwICpkZXZmcmVxX3JlY29tbWVuZGVkX29wcChzdHJ1Y3Qg
ZGV2aWNlICpkZXYsCj4+ICAgCQkJCQkgICB1bnNpZ25lZCBsb25nICpmcmVxLCB1MzIgZmxhZ3Mp
Owo+PiAtZXh0ZXJuIGludCBkZXZmcmVxX3JlZ2lzdGVyX29wcF9ub3RpZmllcihzdHJ1Y3QgZGV2
aWNlICpkZXYsCj4+IC0JCQkJCSBzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSk7Cj4+IC1leHRlcm4g
aW50IGRldmZyZXFfdW5yZWdpc3Rlcl9vcHBfbm90aWZpZXIoc3RydWN0IGRldmljZSAqZGV2LAo+
PiAtCQkJCQkgICBzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSk7Cj4+IC1leHRlcm4gaW50IGRldm1f
ZGV2ZnJlcV9yZWdpc3Rlcl9vcHBfbm90aWZpZXIoc3RydWN0IGRldmljZSAqZGV2LAo+PiAtCQkJ
CQkgICAgICBzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSk7Cj4+IC1leHRlcm4gdm9pZCBkZXZtX2Rl
dmZyZXFfdW5yZWdpc3Rlcl9vcHBfbm90aWZpZXIoc3RydWN0IGRldmljZSAqZGV2LAo+PiAtCQkJ
CQkJc3RydWN0IGRldmZyZXEgKmRldmZyZXEpOwo+PiAgIGV4dGVybiBpbnQgZGV2ZnJlcV9yZWdp
c3Rlcl9ub3RpZmllcihzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSwKPj4gICAJCQkJCXN0cnVjdCBu
b3RpZmllcl9ibG9jayAqbmIsCj4+ICAgCQkJCQl1bnNpZ25lZCBpbnQgbGlzdCk7Cj4+ICAgZXh0
ZXJuIGludCBkZXZmcmVxX3VucmVnaXN0ZXJfbm90aWZpZXIoc3RydWN0IGRldmZyZXEgKmRldmZy
ZXEsCj4+ICAgCQkJCQlzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm5iLAo+Pgo+IAo+IEl0IGxvb2tz
IGdvb2QgdG8gbWUuCj4gQnV0LCB0aGlzIHBhdGNoIGRvbid0IHJlbW92ZSB0aGUgaW5saW5lIGZ1
bmN0aW9ucyBpbiBkZXZmcmVxLmguCj4gLSBkZXZmcmVxX3JlZ2lzdGVyX29wcF9ub3RpZmllcgo+
IC0gZGV2ZnJlcV91bnJlZ2lzdGVyX29wcF9ub3RpZmllcgo+IC0gZGV2bV9kZXZmcmVxX3JlZ2lz
dGVyX29wcF9ub3RpZmllcgo+IC0gZGV2bV9kZXZmcmVxX3VucmVnaXN0ZXJfb3BwX25vdGlmaWVy
CgpXaWxsIGZpeC4KCkkgZHJvcHBlZCB0aGlzIHBhdGNoIGZyb20gbGF0ZXIgdmVyc2lvbnMgb2Yg
dGhlICdQTSBRb1MnIHNlcmllcyBiZWNhdXNlIAppdCdzIG5vdCByZXF1aXJlZCBmb3IgUE0gUW9T
LiBJdCBkb2VzIGhvd2V2ZXIgdG91Y2ggZGV2ZnJlcV9hZGRfZGV2aWNlIAppbiBhIHdheSB0aGF0
IGNhbiBjYXVzZSBhIGNvbmZsaWN0LgoKLS0KUmVnYXJkcywKTGVvbmFyZApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
