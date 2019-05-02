Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C1B1125F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 06:54:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w9bI/Gg/zHUeG/wcB4PAM+0htiIuGTIkTuABzu9wZzI=; b=YRV5aTqZNYOJ1HNSvKgYZCkOT
	MXJpofq/B+bcinur9Q2YEecjzWzoXm3moeLoR6LfFmXbRZ/WQ7g6MJUIu3TFoNQTuamDh1DqdAXdr
	/w1+Bm6Z5dQ24Czn83ybNPeVZjN4DS+28MTX0xJrdWQzmFAEiubJZ2ZF1ma7hFgZTfjh8o0Z9wxRO
	e7L6T16aMHbWL4Xo+NP52EMbH/q0oeucp3/l5AtvL7M6+I8NXlQiIdKhx6s97o51fWKp6bdLGY22t
	aOcCi/9YqouP9U24MPXTM1uAZ2kzu/cZg0FhkrLr19QkqAIz2gLJyGYqXSfBaw3Wx4ILUlRaB5yjE
	edRD+H2uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM3jc-0005Bi-8q; Thu, 02 May 2019 04:54:16 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM3jV-0005BG-SQ
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 04:54:11 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 44vjbM5M91z9v0BV;
 Thu,  2 May 2019 06:54:07 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=i34RksDU; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id fsoG583XIQdN; Thu,  2 May 2019 06:54:07 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 44vjbM41xVz9v0BC;
 Thu,  2 May 2019 06:54:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1556772847; bh=I0FeEl/w+6bt1GR2o7dyQEdLVhu5vJLVUHB5TTIyQLM=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=i34RksDU0m+1D9lH5cGRWzmbilcKtHDaRv5ToGo9d6faaqXA3nnFcxEChzcW4WNRj
 r5bQzwZP3VUqOInhA8yiITExOyffCWXBQ5nPmvz8u6fxSEPbYd9u3ZQFU2jhDEH24i
 N+I8zab8zf7Uaxq0qv8xBEQdzhpCBkMjYPdAdDOM=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 583318B852;
 Thu,  2 May 2019 06:54:08 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id fI6na7e6-yyE; Thu,  2 May 2019 06:54:08 +0200 (CEST)
Received: from PO15451 (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id A81188B74C;
 Thu,  2 May 2019 06:54:07 +0200 (CEST)
Subject: Re: [PATCH v2 6/6] soc/fsl/qe: qe.c: fold qe_get_num_of_snums into
 qe_snums_init
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
 <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
 <20190501092841.9026-7-rasmus.villemoes@prevas.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <5457d33f-b691-6406-138d-0fc633c1d24c@c-s.fr>
Date: Thu, 2 May 2019 06:54:07 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501092841.9026-7-rasmus.villemoes@prevas.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_215410_217454_172BC073 
X-CRM114-Status: GOOD (  21.35  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Rasmus Villemoes <Rasmus.Villemoes@prevas.se>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Scott Wood <oss@buserror.net>, Rob Herring <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAwMS8wNS8yMDE5IMOgIDExOjI5LCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6Cj4g
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
Ynk6IFJhc211cyBWaWxsZW1vZXMgPHJhc211cy52aWxsZW1vZXNAcHJldmFzLmRrPgoKUmV2aWV3
ZWQtYnk6IENocmlzdG9waGUgTGVyb3kgPGNocmlzdG9waGUubGVyb3lAYy1zLmZyPgoKPiAtLS0K
PiAgIGRyaXZlcnMvc29jL2ZzbC9xZS9xZS5jIHwgNDYgKysrKysrKysrKysrKystLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAz
MCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2MvZnNsL3FlL3FlLmMg
Yi9kcml2ZXJzL3NvYy9mc2wvcWUvcWUuYwo+IGluZGV4IDMyNWQ2ODljYmY1Yy4uMjc2ZDdkNzhl
YmZjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc29jL2ZzbC9xZS9xZS5jCj4gKysrIGIvZHJpdmVy
cy9zb2MvZnNsL3FlL3FlLmMKPiBAQCAtMzA4LDI0ICszMDgsMzMgQEAgc3RhdGljIHZvaWQgcWVf
c251bXNfaW5pdCh2b2lkKQo+ICAgCWludCBpOwo+ICAgCj4gICAJYml0bWFwX3plcm8oc251bV9z
dGF0ZSwgUUVfTlVNX09GX1NOVU0pOwo+ICsJcWVfbnVtX29mX3NudW0gPSAyODsgLyogVGhlIGRl
ZmF1bHQgbnVtYmVyIG9mIHNudW0gZm9yIHRocmVhZHMgaXMgMjggKi8KPiAgIAlxZSA9IHFlX2dl
dF9kZXZpY2Vfbm9kZSgpOwo+ICAgCWlmIChxZSkgewo+ICAgCQlpID0gb2ZfcHJvcGVydHlfcmVh
ZF92YXJpYWJsZV91OF9hcnJheShxZSwgImZzbCxxZS1zbnVtcyIsCj4gICAJCQkJCQkgICAgICAg
c251bXMsIDEsIFFFX05VTV9PRl9TTlVNKTsKPiAtCQlvZl9ub2RlX3B1dChxZSk7Cj4gICAJCWlm
IChpID4gMCkgewo+ICsJCQlvZl9ub2RlX3B1dChxZSk7Cj4gICAJCQlxZV9udW1fb2Zfc251bSA9
IGk7Cj4gICAJCQlyZXR1cm47Cj4gICAJCX0KPiArCQkvKgo+ICsJCSAqIEZhbGwgYmFjayB0byBs
ZWdhY3kgYmluZGluZyBvZiB1c2luZyB0aGUgdmFsdWUgb2YKPiArCQkgKiBmc2wscWUtbnVtLXNu
dW1zIHRvIGNob29zZSBvbmUgb2YgdGhlIHN0YXRpYyBhcnJheXMKPiArCQkgKiBhYm92ZS4KPiAr
CQkgKi8KPiArCQlvZl9wcm9wZXJ0eV9yZWFkX3UzMihxZSwgImZzbCxxZS1udW0tc251bXMiLCAm
cWVfbnVtX29mX3NudW0pOwo+ICsJCW9mX25vZGVfcHV0KHFlKTsKPiAgIAl9Cj4gICAKPiAtCXFl
X251bV9vZl9zbnVtID0gcWVfZ2V0X251bV9vZl9zbnVtcygpOwo+IC0KPiAtCWlmIChxZV9udW1f
b2Zfc251bSA9PSA3NikKPiArCWlmIChxZV9udW1fb2Zfc251bSA9PSA3Nikgewo+ICAgCQlzbnVt
X2luaXQgPSBzbnVtX2luaXRfNzY7Cj4gLQllbHNlCj4gKwl9IGVsc2UgaWYgKHFlX251bV9vZl9z
bnVtID09IDI4IHx8IHFlX251bV9vZl9zbnVtID09IDQ2KSB7Cj4gICAJCXNudW1faW5pdCA9IHNu
dW1faW5pdF80NjsKPiAtCj4gKwl9IGVsc2Ugewo+ICsJCXByX2VycigiUUU6IHVuc3VwcG9ydGVk
IHZhbHVlIG9mIGZzbCxxZS1udW0tc251bXM6ICV1XG4iLCBxZV9udW1fb2Zfc251bSk7Cj4gKwkJ
cmV0dXJuOwo+ICsJfQo+ICAgCW1lbWNweShzbnVtcywgc251bV9pbml0LCBxZV9udW1fb2Zfc251
bSk7Cj4gICB9Cj4gICAKPiBAQCAtNjQxLDMwICs2NTAsNyBAQCBFWFBPUlRfU1lNQk9MKHFlX2dl
dF9udW1fb2ZfcmlzYyk7Cj4gICAKPiAgIHVuc2lnbmVkIGludCBxZV9nZXRfbnVtX29mX3NudW1z
KHZvaWQpCj4gICB7Cj4gLQlzdHJ1Y3QgZGV2aWNlX25vZGUgKnFlOwo+IC0JaW50IHNpemU7Cj4g
LQl1bnNpZ25lZCBpbnQgbnVtX29mX3NudW1zOwo+IC0JY29uc3QgdTMyICpwcm9wOwo+IC0KPiAt
CW51bV9vZl9zbnVtcyA9IDI4OyAvKiBUaGUgZGVmYXVsdCBudW1iZXIgb2Ygc251bSBmb3IgdGhy
ZWFkcyBpcyAyOCAqLwo+IC0JcWUgPSBxZV9nZXRfZGV2aWNlX25vZGUoKTsKPiAtCWlmICghcWUp
Cj4gLQkJcmV0dXJuIG51bV9vZl9zbnVtczsKPiAtCj4gLQlwcm9wID0gb2ZfZ2V0X3Byb3BlcnR5
KHFlLCAiZnNsLHFlLW51bS1zbnVtcyIsICZzaXplKTsKPiAtCWlmIChwcm9wICYmIHNpemUgPT0g
c2l6ZW9mKCpwcm9wKSkgewo+IC0JCW51bV9vZl9zbnVtcyA9ICpwcm9wOwo+IC0JCWlmICgobnVt
X29mX3NudW1zIDwgMjgpIHx8IChudW1fb2Zfc251bXMgPiBRRV9OVU1fT0ZfU05VTSkpIHsKPiAt
CQkJLyogTm8gUUUgZXZlciBoYXMgZmV3ZXIgdGhhbiAyOCBTTlVNcyAqLwo+IC0JCQlwcl9lcnIo
IlFFOiBudW1iZXIgb2Ygc251bSBpcyBpbnZhbGlkXG4iKTsKPiAtCQkJb2Zfbm9kZV9wdXQocWUp
Owo+IC0JCQlyZXR1cm4gLUVJTlZBTDsKPiAtCQl9Cj4gLQl9Cj4gLQo+IC0Jb2Zfbm9kZV9wdXQo
cWUpOwo+IC0KPiAtCXJldHVybiBudW1fb2Zfc251bXM7Cj4gKwlyZXR1cm4gcWVfbnVtX29mX3Nu
dW07Cj4gICB9Cj4gICBFWFBPUlRfU1lNQk9MKHFlX2dldF9udW1fb2Zfc251bXMpOwo+ICAgCj4g
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
