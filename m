Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD84FF901C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:01:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KTic7GZ21nCRF3KMuZwKfodsFwRt5cIbS7DICukJH0=; b=HmJlg4vDb/4pur
	w43O2qRU6kkxvBKMlAUJBJ3rXgK9Okeg0qOX0AZGwlTGKjXjgwNeNSgXV81LfGz7YR9YhefID6bP/
	cp3OSbSgtjzB1OeQhbuuDqI6DbXaIcI3QRinDf6wGMVpAYOiH5qK+KHz6IvcL2C+KcTc9x/32fsEO
	S+FquVx0itOaXgPA+jQACDcBaKETbznPKabgPzK43ma8iQuFKLNNr+OQDXbTV5rLY9pNVvptE10qV
	j12C2KLgnaGRkfWzPsDEa15DvnAO+t3njt/axYt+HWt3oxw9TGoMMQYY6gzNR+zhPmIhgE0iG2P2a
	AL9GzcQao3CxZMWNNJRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUVnC-0000PS-3Y; Tue, 12 Nov 2019 13:01:10 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUVn3-0000Of-14
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:01:03 +0000
Received: from [199.195.250.187] (port=55888 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <icenowy@aosc.io>)
 id 1iUVmu-0006z7-K0; Tue, 12 Nov 2019 13:00:57 +0000
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id DB3C040E63;
 Tue, 12 Nov 2019 13:00:36 +0000 (UTC)
Date: Tue, 12 Nov 2019 20:59:56 +0800
In-Reply-To: <20191111123936.GM4345@gilmour.lan>
References: <BN8PR08MB57792366D78997180A698AF8897A0@BN8PR08MB5779.namprd08.prod.outlook.com>
 <20191111123936.GM4345@gilmour.lan>
MIME-Version: 1.0
Subject: Re: [PATCH] clk: sunxi-ng: v3s: Fix incorrect number of hw_clks.
To: linux-arm-kernel@lists.infradead.org, Maxime Ripard <mripard@kernel.org>,
 Tian Yunhao <t123yh@outlook.com>
From: Icenowy Zheng <icenowy@aosc.io>
Message-ID: <1FA73EE3-CED2-4241-839D-51C8C02531F5@aosc.io>
X-BlackCat-Spam-Score: 14
X-Spam-Status: No, score=1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_050101_068072_85C75D68 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:82:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgrkuo4gMjAxOeW5tDEx5pyIMTHml6UgR01UKzA4OjAwIOS4i+WNiDg6Mzk6MzYsIE1heGltZSBS
aXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4g5YaZ5YiwOgo+SGksCj4KPlRoYW5rcyBmb3IgeW91
ciBwYXRjaAo+Cj5PbiBTYXQsIE5vdiAwOSwgMjAxOSBhdCAwMzoxOTowOVBNICswMDAwLCBUaWFu
IFl1bmhhbyB3cm90ZToKPj4gVGhlIGh3cyBmaWVsZCBvZiBzdW44aV92M3NfaHdfY2xrcyBoYXMg
b25seSA3NAo+PiBtZW1iZXJzLiBIb3dldmVyLCB0aGUgbnVtYmVyIHNwZWNpZmllZCBieSBDTEtf
TlVNQkVSCj4+IGlzIDc3ICg9IENMS19JMlMwICsgMSkuIFRoaXMgbGVhZHMgdG8gcnVudGltZSBz
ZWdtZW50YXRpb24KPj4gZmF1bHQgdGhhdCBpcyBub3QgYWx3YXlzIHJlcHJvZHVjaWJsZS4KPj4K
Pj4gVGhpcyBwYXRjaCBhZGRzIGEgcHJvdGVjdGl2ZSBmaWVsZCBbQ0xLX05VTUJFUl0gd2hpY2gg
ZW5zdXJlcwo+PiBBUlJBWV9TSVpFKC5od3MpIGlzIGFsd2F5cyBncmVhdGVyIHRoYW4gLm51bSwg
dGh1cyBlbGltaW5hdGVzCj4+IHRoaXMgZXJyb3IuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFl1bmhh
byBUaWFuIDx0MTIzeWhAb3V0bG9vay5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9jbGsvc3VueGkt
bmcvY2N1LXN1bjhpLXYzcy5jIHwgMiArKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvc3VueGktbmcvY2N1LXN1bjhpLXYz
cy5jCj5iL2RyaXZlcnMvY2xrL3N1bnhpLW5nL2NjdS1zdW44aS12M3MuYwo+PiBpbmRleCA1Yzc3
OWVlYzQ1NGIuLmRlN2ZjZTdmMzJlNiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9jbGsvc3VueGkt
bmcvY2N1LXN1bjhpLXYzcy5jCj4+ICsrKyBiL2RyaXZlcnMvY2xrL3N1bnhpLW5nL2NjdS1zdW44
aS12M3MuYwo+PiBAQCAtNjE3LDYgKzYxNyw3IEBAIHN0YXRpYyBzdHJ1Y3QgY2xrX2h3X29uZWNl
bGxfZGF0YQo+c3VuOGlfdjNzX2h3X2Nsa3MgPSB7Cj4+ICAJCVtDTEtfQVZTXQkJPSAmYXZzX2Ns
ay5jb21tb24uaHcsCj4+ICAJCVtDTEtfTUJVU10JCT0gJm1idXNfY2xrLmNvbW1vbi5odywKPj4g
IAkJW0NMS19NSVBJX0NTSV0JCT0gJm1pcGlfY3NpX2Nsay5jb21tb24uaHcsCj4+ICsJCVtDTEtf
TlVNQkVSXSAgICA9IE5VTEwsCj4+ICAJfSwKPj4gIAkubnVtCT0gQ0xLX05VTUJFUiwKPj4gIH07
Cj4+IEBAIC02OTksNiArNzAwLDcgQEAgc3RhdGljIHN0cnVjdCBjbGtfaHdfb25lY2VsbF9kYXRh
Cj5zdW44aV92M19od19jbGtzID0gewo+PiAgCQlbQ0xLX0FWU10JCT0gJmF2c19jbGsuY29tbW9u
Lmh3LAo+PiAgCQlbQ0xLX01CVVNdCQk9ICZtYnVzX2Nsay5jb21tb24uaHcsCj4+ICAJCVtDTEtf
TUlQSV9DU0ldCQk9ICZtaXBpX2NzaV9jbGsuY29tbW9uLmh3LAo+PiArCQlbQ0xLX05VTUJFUl0g
ICAgPSBOVUxMLAo+PiAgCX0sCj4+ICAJLm51bQk9IENMS19OVU1CRVIsCj4KPkknZCByYXRoZXIg
aGF2ZSB0aGUgbnVtYmVyIG9mIGNsb2NrcyAoLm51bSkgYmVpbmcgcHJvcGVybHkgc2V0LgoKSG93
ZXZlciB0aGUgbWF4aW11bSBjbG9jayBpbmRpY2VzIG51bWJlciBpcyBkaWZmZXJlbnQgb24gVjNz
IGFuZCBWMywgYmVjYXVzZQpvbiBWM3MgdGhlIGxhc3QgY2xvY2sgaXMgbWlzc2luZy4KClNob3Vs
ZCB3ZSBkZWZpbmUgQ0xLX05VTUJFUl9WM1MgaGVyZT8KCj4KPk1heGltZQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
