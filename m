Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44611F513D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8/rWcwxrS2Pkvew0ByMgwJ3N3mIo2NUJvQyyWZtV21Q=; b=o4sW7H2T9Faab0a5lqv5HZC/v
	YCuurfqcdzuiYEVip1+39gO8ZcRPNioX0A2JzUZ12rYgMrDo5h6FsHotUUQwAqngVfA/3r64e1F3b
	UHzpojKZ1+I01+HNTN0yfrOMulTuZ6bp5Yf30p5iWMZbm9YO4tqOAjsiLqPNNoSNZLR8gH/4/jG5O
	0/zclcrUEGpF871AyBTmlRREkCU/GK9AO45fTQ3fwrkwn7sf1jG/CLfQ9ZnI/g9IFvcIm9ydd2gG/
	45wRQS3BdAEUV69cRReOAel6Bg5VeTenxvSMrBdlbtioLzjvz/7x7qIdgL3gFErvpi2CFpCZwvvpW
	6km5xLQAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jix9F-0005o4-Mf; Wed, 10 Jun 2020 09:35:53 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jix91-0005kW-KS
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:35:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 930BDAD39;
 Wed, 10 Jun 2020 09:35:37 +0000 (UTC)
Subject: Re: [PATCH v2 1/5] dt-bindings: arm: Initial MStar vendor prefixes
 and compatible strings
To: Daniel Palmer <daniel@0x0f.com>
References: <20191014061617.10296-2-daniel@0x0f.com>
 <20200610090421.3428945-2-daniel@0x0f.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <cafee323-841d-92ed-b4ad-a1aaa136864d@suse.de>
Date: Wed, 10 Jun 2020 11:35:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200610090421.3428945-2-daniel@0x0f.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_023539_960028_43FB2E03 
X-CRM114-Status: GOOD (  21.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Nathan Huckleberry <nhuck15@gmail.com>,
 devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 allen <allen.chen@ite.com.tw>, tim.bird@sony.com,
 Maxime Ripard <mripard@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, Gregory Fong <gregory.0xf0@gmail.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, k@japko.eu,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRGFuaWVsLAoKQW0gMTAuMDYuMjAgdW0gMTE6MDMgc2NocmllYiBEYW5pZWwgUGFsbWVyOgo+
IEFkZHMgYSBwcmVmaXhlcyBmb3IgTVN0YXIsIHRoaW5neS5qcCwgNzBtYWkgYW5kIHRoZW4gZGVm
aW5lcyBjb21wYXRpYmxlCj4gc3RyaW5ncyBmb3IgdGhlIGZpcnN0IE1TdGFyIGJhc2VkIGJvYXJk
cy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgUGFsbWVyIDxkYW5pZWxAMHgwZi5jb20+Cj4g
LS0tCj4gICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vbXN0YXIueWFtbCAgICAgICAgfCAz
MCArKysrKysrKysrKysrKysrKysrCj4gICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3It
cHJlZml4ZXMueWFtbCAgfCAgNiArKysrCj4gICBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgNiArKysrCj4gICAzIGZpbGVzIGNoYW5nZWQsIDQyIGluc2Vy
dGlvbnMoKykKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvYXJtL21zdGFyLnlhbWwKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9tc3Rhci55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2FybS9tc3Rhci55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRl
eCAwMDAwMDAwMDAwMDAuLjA5ZTg3Y2Y2ZDZmMAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL21zdGFyLnlhbWwKPiBAQCAtMCwwICsx
LDMwIEBACj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNE
LTItQ2xhdXNlKQo+ICslWUFNTCAxLjIKPiArLS0tCj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUu
b3JnL3NjaGVtYXMvYXJtL21zdGFyLnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVl
Lm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6IE1TdGFyIHBsYXRmb3Jt
cyBkZXZpY2UgdHJlZSBiaW5kaW5ncwo+ICsKPiArbWFpbnRhaW5lcnM6Cj4gKyAgLSBEYW5pZWwg
UGFsbWVyIDxkYW5pZWxAdGhpbmd5LmpwPgo+ICsKPiArcHJvcGVydGllczoKPiArICAkbm9kZW5h
bWU6Cj4gKyAgICBjb25zdDogJy8nCj4gKyAgY29tcGF0aWJsZToKPiArICAgIG9uZU9mOgo+ICsg
ICAgICAtIGRlc2NyaXB0aW9uOiB0aGluZ3kuanAgQnJlYWRCZWUKPiArICAgICAgICBpdGVtczoK
PiArICAgICAgICAgIC0gY29uc3Q6IHRoaW5neWpwLGJyZWFkYmVlCj4gKyAgICAgICAgICAtIGNv
bnN0OiBtc3RhcixpbmZpbml0eTMKPiArCj4gKyAgICAgIC0gZGVzY3JpcHRpb246IHRoaW5neS5q
cCBCcmVhZEJlZSBDcnVzdAo+ICsgICAgICAgIGl0ZW1zOgo+ICsgICAgICAgICAgLSBjb25zdDog
dGhpbmd5anAsYnJlYWRiZWUtY3J1c3QKPiArICAgICAgICAgIC0gY29uc3Q6IG1zdGFyLGluZmlu
aXR5Cj4gKwo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiA3MG1haSBtaWRyaXZlIGQwOAo+ICsgICAg
ICAgIGl0ZW1zOgo+ICsgICAgICAgICAgLSBjb25zdDogNzBtYWksbWlkcml2ZWQwOAo+ICsgICAg
ICAgICAgLSBjb25zdDogbXN0YXIsbWVyY3VyeTUKCkkgd291bGQgYWR2aXNlIHRvIHJlc3RydWN0
dXJlIHRoZXNlIHRocmVlIGZvciBmb3J3YXJkIHBsYW5uaW5nOgoKVXNlIGNvbnN0IG9ubHkgZm9y
IHRoZSBTb0MgY29tcGF0aWJsZS4KCkZvciB0aGUgYm9hcmRzIHVzZSBhbiBlbnVtIHdpdGggKGZv
ciBub3cpIG9ubHkgdGhlIG9uZSBlbnRyeS4gVGhpcyAKYWZmZWN0cyB0aGUgZGVzY3JpcHRpb24s
IHdoaWNoIG1heSBtaXNsZWFkIHBlb3BsZSB0byBkdXBsaWNhdGUgdGhlc2UgCmJsb2NrcyBmb3Ig
ZWFjaCBib2FyZCByYXRoZXIgdGhhbiBqdXN0IGZvciBlYWNoIFNvQyBmYW1pbHkuIFRha2UgYSBs
b29rIAphdCBvdGhlciBleGlzdGluZyBmaWxlcyAoZS5nLiwgbXkgcmVhbHRlay55YW1sIGFuZCBh
Y3Rpb25zLnlhbWwsIGJ1dCAKbm90ZSB0aGV5IGRvbid0IGhhdmUgdGhlIG5ldy1zdHlsZSBkZXNj
cmlwdGlvbiBsaW5lIHlldCAtIEkgYXNzdW1lIGl0J2xsIAp3b3JrIHRoZSBzYW1lIGluIGVudW0g
YXMgaW4geW91ciBvbmVPZikuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKPiBpbmRleCBlZjZkNzViOTExM2EuLjE3
NzBmYzc5NDAyNyAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKPiBAQCAtMjMsNiArMjMsOCBAQCBwYXR0ZXJu
UHJvcGVydGllczoKPiAgICAgIl4oc2ltcGxlLWF1ZGlvLWNhcmR8c2ltcGxlLWdyYXBoLWNhcmR8
c3QtcGxncGlvfHN0LXNwaWNzfHRzKSwuKiI6IHRydWUKPiAgIAo+ICAgICAjIEtlZXAgbGlzdCBp
biBhbHBoYWJldGljYWwgb3JkZXIuCj4gKyAgIl43MG1haSwuKiI6Cj4gKyAgICBkZXNjcmlwdGlv
bjogNzBtYWkKCiI3MG1haSBDby4sIEx0ZC4iIHBsZWFzZSAtIGRvbid0IGp1c3QgcmVwZWF0IHRo
ZSBwcmVmaXguCgo+ICAgICAiXmFiaWxpcywuKiI6Cj4gICAgICAgZGVzY3JpcHRpb246IEFiaWxp
cyBTeXN0ZW1zCj4gICAgICJeYWJyYWNvbiwuKiI6Cj4gQEAgLTY3OCw2ICs2ODAsOCBAQCBwYXR0
ZXJuUHJvcGVydGllczoKPiAgICAgICBkZXNjcmlwdGlvbjogTWljcm9zZW1pIENvcnBvcmF0aW9u
Cj4gICAgICJebXNpLC4qIjoKPiAgICAgICBkZXNjcmlwdGlvbjogTWljcm8tU3RhciBJbnRlcm5h
dGlvbmFsIENvLiBMdGQuCj4gKyAgIl5tc3RhciwuKiI6Cj4gKyAgICBkZXNjcmlwdGlvbjogTVN0
YXIgU2VtaWNvbmR1Y3RvciwgSW5jLgo+ICAgICAiXm10aSwuKiI6Cj4gICAgICAgZGVzY3JpcHRp
b246IEltYWdpbmF0aW9uIFRlY2hub2xvZ2llcyBMdGQuIChmb3JtZXJseSBNSVBTIFRlY2hub2xv
Z2llcyBJbmMuKQo+ICAgICAiXm11bHRpLWlubm8sLioiOgo+IEBAIC0xMDMwLDYgKzEwMzQsOCBA
QCBwYXR0ZXJuUHJvcGVydGllczoKPiAgICAgICBkZXNjcmlwdGlvbjogVGhyZWUgRml2ZSBDb3Jw
Cj4gICAgICJedGhpbmUsLioiOgo+ICAgICAgIGRlc2NyaXB0aW9uOiBUSGluZSBFbGVjdHJvbmlj
cywgSW5jLgo+ICsgICJedGhpbmd5anAsLioiOgo+ICsgICAgZGVzY3JpcHRpb246IHRoaW5neS5q
cAo+ICAgICAiXnRpLC4qIjoKPiAgICAgICBkZXNjcmlwdGlvbjogVGV4YXMgSW5zdHJ1bWVudHMK
PiAgICAgIl50aWFubWEsLioiOgoKSWYgeW91IHNwbGl0IHRoZSB2ZW5kb3IgcHJlZml4ZXMgdG8g
YSBwcmVjZWRpbmcgcGF0Y2gsIHRoZXkgaGF2ZSBhIApjaGFuY2Ugb2YgZ2V0dGluZyBSZXZpZXdl
ZC1ieXMgbW9yZSBxdWlja2x5LiBZb3UgY2FuIHRoZW4gYWxzbyBDQyB0aGUgCnZlbmRvcnMgb24g
dGhlIHByZWZpeGVzIHlvdSdyZSBhc3NpZ25pbmcgZm9yIHRoZW0uCgo+IGRpZmYgLS1naXQgYS9N
QUlOVEFJTkVSUyBiL01BSU5UQUlORVJTCj4gaW5kZXggNzdhM2ZhNWUzZWRkLi4xY2E3N2Y5N2I4
ZWUgMTAwNjQ0Cj4gLS0tIGEvTUFJTlRBSU5FUlMKPiArKysgYi9NQUlOVEFJTkVSUwo+IEBAIC0y
MTEwLDYgKzIxMTAsMTIgQEAgTDoJbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
IChtb2RlcmF0ZWQgZm9yIG5vbi1zdWJzY3JpYmVycykKPiAgIFM6CU1haW50YWluZWQKPiAgIEY6
CWFyY2gvYXJtL21hY2gtcHhhL21pb2E3MDEuYwo+ICAgCj4gK0FSTS9NU3Rhci9TaWdtYXN0YXIg
QVJNdjcgU29DIHN1cHBvcnQKPiArTToJRGFuaWVsIFBhbG1lciA8ZGFuaWVsQHRoaW5neS5qcD4K
PiArTDoJbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnIChtb2RlcmF0ZWQgZm9y
IG5vbi1zdWJzY3JpYmVycykKPiArUzoJTWFpbnRhaW5lZAo+ICtGOglEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvYXJtL21zdGFyLnlhbWwKPiArCj4gICBBUk0vTkVDIE1PQklMRVBS
TyA5MDAvYyBNQUNISU5FIFNVUFBPUlQKPiAgIE06CU1pY2hhZWwgUGV0Y2hrb3Zza3kgPG1rcGV0
Y2hAaW50ZXJub2RlLm9uLm5ldD4KPiAgIFM6CU1haW50YWluZWQKCkluIHRoZW9yeSBpdCdzIHNw
ZWxsZWQgQXJtdjcgc2luY2UgMjAxNywgYnV0IE1BSU5UQUlORVJTLCBzdWJqZWN0IHByZWZpeCAK
Y29udmVudGlvbnMgYW5kIG1hbnkgb3RoZXIgcGxhY2VzIGluIExpbnV4IHN0aWxsIHVzZSB0aGUg
b2xkIHVwcGVyLWNhc2UgCnNwZWxsaW5nLCB0b28uLi4KClJlZ2FyZHMsCkFuZHJlYXMKCi0tIApT
VVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkg
TsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBO
w7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
