Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC86FED4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 19:27:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fKtHy/96GO/bscnAMmTfoCc8SMy5J77nIx2tTb2brLk=; b=Fdm7FROp5hJyKKfckdvdnuYvn
	LgTCZ6CTKyBWlQzPdidVyCI8kM+MUUoQgGYUXA5UdYBzHJVUI7EuvRRrGeVIChzBLCO4vwtyPh2MU
	Jv5UT/IS9aBK+ODFn12cAS6zW+GLxHgRG2KbisBl6CGzgRvPIOAlRxMcRaGsrn3PlvmmtWK47TkFb
	Wn6nGBsKe3rZwNQLYBE/gfaprWZ3YE+JRCthBVD2VhAuLFjDgcip+AAttmRPX0BrxjdoKzuMdxyfh
	yi14ucX4C9ivNsVMEAX15Rz8sA5fBi9FNxsgGgOj/ZmmSZt6Iw31vJZqB27r65wDGCYslyMz3057o
	f7KQjLrQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLWXQ-00077D-AI; Tue, 30 Apr 2019 17:27:28 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLWXI-00076S-W7
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 17:27:22 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 44tpPF1kWvz9vB2f;
 Tue, 30 Apr 2019 19:27:13 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=ujTQdwmK; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id SKPy5gPho9In; Tue, 30 Apr 2019 19:27:13 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 44tpPF0PWvz9vB2d;
 Tue, 30 Apr 2019 19:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1556645233; bh=CiyJsTqHm5VKfq00rEpHJAK9KzqoqbhlzPXSaD1Lpgg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=ujTQdwmKpxAV2UodghfYbrsSATH3/PVUAoOrjQfQUYNrxXSxkIp4zrCYatyJo5LNR
 9hZz+mTp+IkfkVh4yB6psaCKP1wkDe9JZFK65y9UmS3QTr+rtd7eAWziXs7ROr3wb3
 UQUC/+jpg8SYsMhJp94oYo+R5SCpGUxeEyPcAXPU=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id B88F98B8F3;
 Tue, 30 Apr 2019 19:27:14 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id ch6gyJW-WEhM; Tue, 30 Apr 2019 19:27:14 +0200 (CEST)
Received: from PO15451 (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 100C68B8DF;
 Tue, 30 Apr 2019 19:27:14 +0200 (CEST)
Subject: Re: [PATCH 5/5] soc/fsl/qe: qe.c: fold qe_get_num_of_snums into
 qe_snums_init
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
 <20190430133615.25721-6-rasmus.villemoes@prevas.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <35a50a5b-061c-236a-16ff-0389bf34d736@c-s.fr>
Date: Tue, 30 Apr 2019 19:27:13 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190430133615.25721-6-rasmus.villemoes@prevas.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_102721_323170_5A58BF1A 
X-CRM114-Status: GOOD (  23.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Scott Wood <oss@buserror.net>, Rasmus Villemoes <Rasmus.Villemoes@prevas.se>,
 Rob Herring <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAzMC8wNC8yMDE5IMOgIDE1OjM2LCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6Cj4g
VGhlIGNvbW1lbnQgIk5vIFFFIGV2ZXIgaGFzIGZld2VyIHRoYW4gMjggU05VTXMiIGlzIGZhbHNl
OyBlLmcuIHRoZQo+IE1QQzgzMDkgaGFzIDE0LiBUaGUgY29kZSBwYXRoIHJldHVybmluZyAtRUlO
VkFMIGlzIGFsc28gYSByZWNpcGUgZm9yCj4gaW5zdGFudCBkaXNhc3Rlciwgc2luY2UgdGhlIGNh
bGxlciAocWVfc251bXNfaW5pdCkgdW5jcml0aWNhbGx5Cj4gYXNzaWducyB0aGUgcmV0dXJuIHZh
bHVlIHRvIHRoZSB1bnNpZ25lZCBxZV9udW1fb2Zfc251bSwgYW5kIHdvdWxkCj4gdGh1cyBwcm9j
ZWVkIHRvIGF0dGVtcHQgdG8gY29weSA0R0IgZnJvbSBzbnVtX2luaXRfNDZbXSB0byB0aGUgc251
bVtdCj4gYXJyYXkuCj4gCj4gU28gZm9sZCB0aGUgaGFuZGxpbmcgb2YgdGhlIGxlZ2FjeSBmc2ws
cWUtbnVtLXNudW1zIGludG8KPiBxZV9zbnVtc19pbml0LCBhbmQgbWFrZSBzdXJlIHdlIGRvIG5v
dCBlbmQgdXAgdXNpbmcgdGhlIHNudW1faW5pdF80Ngo+IGFycmF5IGluIGNhc2VzIG90aGVyIHRo
YW4gdGhlIHR3byB3aGVyZSB3ZSBrbm93IGl0IG1ha2VzIHNlbnNlLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFJhc211cyBWaWxsZW1vZXMgPHJhc211cy52aWxsZW1vZXNAcHJldmFzLmRrPgo+IC0tLQo+
ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxlL3VjY19nZXRoLmMgfCAgMiArLQo+ICAg
ZHJpdmVycy9zb2MvZnNsL3FlL3FlLmMgICAgICAgICAgICAgICAgICAgfCA1NCArKysrKysrLS0t
LS0tLS0tLS0tLS0tLQo+ICAgaW5jbHVkZS9zb2MvZnNsL3FlL3FlLmggICAgICAgICAgICAgICAg
ICAgfCAgMiArLQo+ICAgMyBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAzOSBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxl
L3VjY19nZXRoLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9mcmVlc2NhbGUvdWNjX2dldGguYwo+
IGluZGV4IGViM2U2NWU4ODY4Zi4uNTc0OGViODQ2NGQwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ZyZWVzY2FsZS91Y2NfZ2V0aC5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvZnJlZXNjYWxlL3VjY19nZXRoLmMKPiBAQCAtMzgzNyw3ICszODM3LDcgQEAgc3RhdGlj
IGludCB1Y2NfZ2V0aF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlKiBvZmRldikKPiAgIAkJ
fQo+ICAgCj4gICAJaWYgKG1heF9zcGVlZCA9PSBTUEVFRF8xMDAwKSB7Cj4gLQkJdW5zaWduZWQg
aW50IHNudW1zID0gcWVfZ2V0X251bV9vZl9zbnVtcygpOwo+ICsJCXVuc2lnbmVkIGludCBzbnVt
cyA9IHFlX251bV9vZl9zbnVtOwo+ICAgCj4gICAJCS8qIGNvbmZpZ3VyZSBtdXJhbSBGSUZPcyBm
b3IgZ2lnYWJpdCBvcGVyYXRpb24gKi8KPiAgIAkJdWdfaW5mby0+dWZfaW5mby51cmZzID0gVUND
X0dFVEhfVVJGU19HSUdBX0lOSVQ7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL2ZzbC9xZS9x
ZS5jIGIvZHJpdmVycy9zb2MvZnNsL3FlL3FlLmMKPiBpbmRleCBhZjNjMmIyYjI2OGYuLjhjM2Iz
YzYyZDgxYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3NvYy9mc2wvcWUvcWUuYwo+ICsrKyBiL2Ry
aXZlcnMvc29jL2ZzbC9xZS9xZS5jCj4gQEAgLTUyLDcgKzUyLDggQEAgRVhQT1JUX1NZTUJPTChx
ZV9pbW1yKTsKPiAgIAo+ICAgc3RhdGljIHU4IHNudW1zW1FFX05VTV9PRl9TTlVNXTsJLyogRHlu
YW1pY2FsbHkgYWxsb2NhdGVkIFNOVU1zICovCj4gICBzdGF0aWMgREVDTEFSRV9CSVRNQVAoc251
bV9zdGF0ZSwgUUVfTlVNX09GX1NOVU0pOwo+IC1zdGF0aWMgdW5zaWduZWQgaW50IHFlX251bV9v
Zl9zbnVtOwo+ICt1bnNpZ25lZCBpbnQgcWVfbnVtX29mX3NudW07Cj4gK0VYUE9SVF9TWU1CT0wo
cWVfbnVtX29mX3NudW0pOwoKQnkgZXhwb3J0aW5nIHRoZSBvYmplY3QgeW91IGFsbG93IG90aGVy
IGRyaXZlcnMgdG8gbW9kaWZ5IGl0LiBJcyB0aGF0IApyZWFsbHkgd2hhdCB3ZSB3YW50ID8KCldo
eSBub3Qga2VlcCBxZV9nZXRfbnVtX29mX3NudW1zKCkgYXMgYSBoZWxwZXIgdGhhdCBzaW1wbHkg
cmV0dXJucyAKcWVfbnVtX29mX3NudW0gPwoKPiAgIAo+ICAgc3RhdGljIHBoeXNfYWRkcl90IHFl
YmFzZSA9IC0xOwo+ICAgCj4gQEAgLTMwOCwyNiArMzA5LDM0IEBAIHN0YXRpYyB2b2lkIHFlX3Nu
dW1zX2luaXQodm9pZCkKPiAgIAlpbnQgaTsKPiAgIAo+ICAgCWJpdG1hcF96ZXJvKHNudW1fc3Rh
dGUsIFFFX05VTV9PRl9TTlVNKTsKPiArCXFlX251bV9vZl9zbnVtID0gMjg7IC8qIFRoZSBkZWZh
dWx0IG51bWJlciBvZiBzbnVtIGZvciB0aHJlYWRzIGlzIDI4ICovCj4gICAJcWUgPSBxZV9nZXRf
ZGV2aWNlX25vZGUoKTsKPiAgIAlpZiAocWUpIHsKPiAgIAkJaSA9IG9mX3Byb3BlcnR5X3JlYWRf
dmFyaWFibGVfdThfYXJyYXkocWUsICJmc2wscWUtc251bXMiLAo+ICAgCQkJCQkJICAgICAgIHNu
dW1zLCAxLCBRRV9OVU1fT0ZfU05VTSk7Cj4gLQkJb2Zfbm9kZV9wdXQocWUpOwo+ICAgCQlpZiAo
aSA+IDApIHsKPiArCQkJb2Zfbm9kZV9wdXQocWUpOwo+ICAgCQkJcWVfbnVtX29mX3NudW0gPSBp
Owo+ICAgCQkJcmV0dXJuOwo+ICAgCQl9Cj4gKwkJLyoKPiArCQkgKiBGYWxsIGJhY2sgdG8gbGVn
YWN5IGJpbmRpbmcgb2YgdXNpbmcgdGhlIHZhbHVlIG9mCj4gKwkJICogZnNsLHFlLW51bS1zbnVt
cyB0byBjaG9vc2Ugb25lIG9mIHRoZSBzdGF0aWMgYXJyYXlzCj4gKwkJICogYWJvdmUuCj4gKwkJ
ICovCj4gKwkJb2ZfcHJvcGVydHlfcmVhZF91MzIocWUsICJmc2wscWUtbnVtLXNudW1zIiwgJnFl
X251bV9vZl9zbnVtKTsKPiArCQlvZl9ub2RlX3B1dChxZSk7Cj4gICAJfQo+ICAgCj4gLQlxZV9u
dW1fb2Zfc251bSA9IHFlX2dldF9udW1fb2Zfc251bXMoKTsKPiAtCj4gICAJaWYgKHFlX251bV9v
Zl9zbnVtID09IDc2KQo+ICAgCQlzbnVtX2luaXQgPSBzbnVtX2luaXRfNzY7Cj4gLQllbHNlCj4g
KwllbHNlIGlmIChxZV9udW1fb2Zfc251bSA9PSAyOCB8fCBxZV9udW1fb2Zfc251bSA9PSA0NikK
PiAgIAkJc251bV9pbml0ID0gc251bV9pbml0XzQ2Owo+IC0KPiAtCWZvciAoaSA9IDA7IGkgPCBx
ZV9udW1fb2Zfc251bTsgaSsrKQo+IC0JCXNudW1zW2ldID0gc251bV9pbml0W2ldOwo+ICsJZWxz
ZSB7Cj4gKwkJcHJfZXJyKCJRRTogdW5zdXBwb3J0ZWQgdmFsdWUgb2YgZnNsLHFlLW51bS1zbnVt
czogJXVcbiIsIHFlX251bV9vZl9zbnVtKTsKPiArCQlyZXR1cm47Cj4gKwl9CgpUaGUgZmlyc3Qg
bGVnIG9mIHRoZSBpZi9lbHNlIG11c3QgaGF2ZSB7fSB0b28gd2hlbiB0aGUgc2Vjb25kIGxlZyBo
YXMgdGhlbS4KCj4gKwltZW1jcHkoc251bXMsIHNudW1faW5pdCwgcWVfbnVtX29mX3NudW0pOwo+
ICAgfQo+ICAgCj4gICBpbnQgcWVfZ2V0X3NudW0odm9pZCkKPiBAQCAtNjQ1LDM1ICs2NTQsNiBA
QCB1bnNpZ25lZCBpbnQgcWVfZ2V0X251bV9vZl9yaXNjKHZvaWQpCj4gICB9Cj4gICBFWFBPUlRf
U1lNQk9MKHFlX2dldF9udW1fb2ZfcmlzYyk7Cj4gICAKPiAtdW5zaWduZWQgaW50IHFlX2dldF9u
dW1fb2Zfc251bXModm9pZCkKCkkgdGhpbmsgdGhpcyBmdW5jdGlvbiBzaG91bGQgcmVtYWluIGFu
ZCBqdXN0IHJldHVybiBudW1fb2Zfc251bXMsIHNlZSBteSAKb3RoZXIgY29tbWVudCBhYm92ZS4K
CkNocmlzdG9waGUKCgo+IC17Cj4gLQlzdHJ1Y3QgZGV2aWNlX25vZGUgKnFlOwo+IC0JaW50IHNp
emU7Cj4gLQl1bnNpZ25lZCBpbnQgbnVtX29mX3NudW1zOwo+IC0JY29uc3QgdTMyICpwcm9wOwo+
IC0KPiAtCW51bV9vZl9zbnVtcyA9IDI4OyAvKiBUaGUgZGVmYXVsdCBudW1iZXIgb2Ygc251bSBm
b3IgdGhyZWFkcyBpcyAyOCAqLwo+IC0JcWUgPSBxZV9nZXRfZGV2aWNlX25vZGUoKTsKPiAtCWlm
ICghcWUpCj4gLQkJcmV0dXJuIG51bV9vZl9zbnVtczsKPiAtCj4gLQlwcm9wID0gb2ZfZ2V0X3By
b3BlcnR5KHFlLCAiZnNsLHFlLW51bS1zbnVtcyIsICZzaXplKTsKPiAtCWlmIChwcm9wICYmIHNp
emUgPT0gc2l6ZW9mKCpwcm9wKSkgewo+IC0JCW51bV9vZl9zbnVtcyA9ICpwcm9wOwo+IC0JCWlm
ICgobnVtX29mX3NudW1zIDwgMjgpIHx8IChudW1fb2Zfc251bXMgPiBRRV9OVU1fT0ZfU05VTSkp
IHsKPiAtCQkJLyogTm8gUUUgZXZlciBoYXMgZmV3ZXIgdGhhbiAyOCBTTlVNcyAqLwo+IC0JCQlw
cl9lcnIoIlFFOiBudW1iZXIgb2Ygc251bSBpcyBpbnZhbGlkXG4iKTsKPiAtCQkJb2Zfbm9kZV9w
dXQocWUpOwo+IC0JCQlyZXR1cm4gLUVJTlZBTDsKPiAtCQl9Cj4gLQl9Cj4gLQo+IC0Jb2Zfbm9k
ZV9wdXQocWUpOwo+IC0KPiAtCXJldHVybiBudW1fb2Zfc251bXM7Cj4gLX0KPiAtRVhQT1JUX1NZ
TUJPTChxZV9nZXRfbnVtX29mX3NudW1zKTsKPiAtCj4gICBzdGF0aWMgaW50IF9faW5pdCBxZV9p
bml0KHZvaWQpCj4gICB7Cj4gICAJc3RydWN0IGRldmljZV9ub2RlICpucDsKPiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9zb2MvZnNsL3FlL3FlLmggYi9pbmNsdWRlL3NvYy9mc2wvcWUvcWUuaAo+IGlu
ZGV4IGIzZDFhZmY1ZThhZC4uYWY1NzM5ODUwYmY0IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvc29j
L2ZzbC9xZS9xZS5oCj4gKysrIGIvaW5jbHVkZS9zb2MvZnNsL3FlL3FlLmgKPiBAQCAtMjEyLDcg
KzIxMiw3IEBAIGludCBxZV9zZXRicmcoZW51bSBxZV9jbG9jayBicmcsIHVuc2lnbmVkIGludCBy
YXRlLCB1bnNpZ25lZCBpbnQgbXVsdGlwbGllcik7Cj4gICBpbnQgcWVfZ2V0X3NudW0odm9pZCk7
Cj4gICB2b2lkIHFlX3B1dF9zbnVtKHU4IHNudW0pOwo+ICAgdW5zaWduZWQgaW50IHFlX2dldF9u
dW1fb2ZfcmlzYyh2b2lkKTsKPiAtdW5zaWduZWQgaW50IHFlX2dldF9udW1fb2Zfc251bXModm9p
ZCk7Cj4gK2V4dGVybiB1bnNpZ25lZCBpbnQgcWVfbnVtX29mX3NudW07Cj4gICAKPiAgIHN0YXRp
YyBpbmxpbmUgaW50IHFlX2FsaXZlX2R1cmluZ19zbGVlcCh2b2lkKQo+ICAgewo+IAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
