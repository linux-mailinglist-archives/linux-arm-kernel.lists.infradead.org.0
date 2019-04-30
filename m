Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A47FE9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 19:14:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4Za9MEPz3m90A7T5ITY37x9yagqj45ph+CrrzlPQZdI=; b=R+1VOtNx9SAB42d+tlse7pm3G
	7Pz5Yjol5Tqlu174EQPyICTWmh7ZHaJAjdmwhnbM0UCP0cZ8l9gwPvGqBqqN1QyRTBJY9n+C7qRCv
	A2nSCyN+YfCpU/kjT4esERiyj9XLVAVuHV5+Q8QuY02Q7upKgRDtvNW6XnYox1FzJ13c1zGw+9uQm
	DCLd7SdxDQrV1EP+GWd11m0WcF1e3DQ2217Sj8IZ7s0hodimrLwTwfmBeCJ2e/XE1LTZmzECyea5d
	1G0hgd+FGOo509/EwBD0qaTNiZWaasWfWcMqhV6LUo9EmaXHSHEbeRBVIY7tBGdLMzL1O37xuM5zV
	mLpCq8IcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLWKl-0000qv-3B; Tue, 30 Apr 2019 17:14:23 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLWKc-0000oq-EF
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 17:14:16 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 44tp6C0br5z9v1kD;
 Tue, 30 Apr 2019 19:14:11 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=jaHONJag; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 28SLzoUUzGbw; Tue, 30 Apr 2019 19:14:11 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 44tp6B6dMTz9v1kB;
 Tue, 30 Apr 2019 19:14:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1556644450; bh=A7G/2KqxzWbTnXWEeSBLCU6DxyGDCeHI1S20L1RVAek=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=jaHONJagi6eI3MX1rdfK9DvAXTJkyerHUQjLKdbaUtvJNKk5z0ocxab5JJgVi86L5
 Etpb3NORzRIkuPSFgW8Prlik24h43ZjpW/I9nX4HXSLdJMDzy7O+YJt3mvlUq2WgVX
 tv0cNM+egOUkeAwRFOTtEKUq/Otwx9PD2jgiuC7s=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id A2F3E8B8F3;
 Tue, 30 Apr 2019 19:14:12 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id 2aqvcPYnRHU3; Tue, 30 Apr 2019 19:14:12 +0200 (CEST)
Received: from PO15451 (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id F40AD8B8DF;
 Tue, 30 Apr 2019 19:14:11 +0200 (CEST)
Subject: Re: [PATCH 3/5] soc/fsl/qe: qe.c: introduce qe_get_device_node helper
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
 <20190430133615.25721-4-rasmus.villemoes@prevas.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <263abc47-3334-01b5-49ca-2d876a9ea537@c-s.fr>
Date: Tue, 30 Apr 2019 19:14:11 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190430133615.25721-4-rasmus.villemoes@prevas.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_101414_772096_659623BB 
X-CRM114-Status: GOOD (  16.93  )
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
VGhlICd0cnkgb2ZfZmluZF9jb21wYXRpYmxlX25vZGUoTlVMTCwgTlVMTCwgImZzbCxxZSIpLCBm
YWxsIGJhY2sgdG8KPiBvZl9maW5kX25vZGVfYnlfdHlwZShOVUxMLCAicWUiKScgcGF0dGVybiBp
cyByZXBlYXRlZCBmaXZlCj4gdGltZXMuIEZhY3RvciBpdCBpbnRvIGEgY29tbW9uIGhlbHBlci4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBSYXNtdXMgVmlsbGVtb2VzIDxyYXNtdXMudmlsbGVtb2VzQHBy
ZXZhcy5kaz4KClJldmlld2VkLWJ5OiBDaHJpc3RvcGhlIExlcm95IDxjaHJpc3RvcGhlLmxlcm95
QGMtcy5mcj4KCgo+IC0tLQo+ICAgZHJpdmVycy9zb2MvZnNsL3FlL3FlLmMgfCA3MSArKysrKysr
KysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDI5
IGluc2VydGlvbnMoKyksIDQyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3NvYy9mc2wvcWUvcWUuYyBiL2RyaXZlcnMvc29jL2ZzbC9xZS9xZS5jCj4gaW5kZXggZDAzOTNm
ODMxNDVjLi5hZmY5ZDEzNzM1MjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zb2MvZnNsL3FlL3Fl
LmMKPiArKysgYi9kcml2ZXJzL3NvYy9mc2wvcWUvcWUuYwo+IEBAIC01Niw2ICs1NiwyMCBAQCBz
dGF0aWMgdW5zaWduZWQgaW50IHFlX251bV9vZl9zbnVtOwo+ICAgCj4gICBzdGF0aWMgcGh5c19h
ZGRyX3QgcWViYXNlID0gLTE7Cj4gICAKPiArc3RhdGljIHN0cnVjdCBkZXZpY2Vfbm9kZSAqcWVf
Z2V0X2RldmljZV9ub2RlKHZvaWQpCj4gK3sKPiArCXN0cnVjdCBkZXZpY2Vfbm9kZSAqcWU7Cj4g
Kwo+ICsJLyoKPiArCSAqIE5ld2VyIGRldmljZSB0cmVlcyBoYXZlIGFuICJmc2wscWUiIGNvbXBh
dGlibGUgcHJvcGVydHkgZm9yIHRoZSBRRQo+ICsJICogbm9kZSwgYnV0IHdlIHN0aWxsIG5lZWQg
dG8gc3VwcG9ydCBvbGRlciBkZXZpY2UgdHJlZXMuCj4gKwkgKi8KPiArCXFlID0gb2ZfZmluZF9j
b21wYXRpYmxlX25vZGUoTlVMTCwgTlVMTCwgImZzbCxxZSIpOwo+ICsJaWYgKHFlKQo+ICsJCXJl
dHVybiBxZTsKPiArCXJldHVybiBvZl9maW5kX25vZGVfYnlfdHlwZShOVUxMLCAicWUiKTsKPiAr
fQo+ICsKPiAgIHN0YXRpYyBwaHlzX2FkZHJfdCBnZXRfcWVfYmFzZSh2b2lkKQo+ICAgewo+ICAg
CXN0cnVjdCBkZXZpY2Vfbm9kZSAqcWU7Cj4gQEAgLTY1LDEyICs3OSw5IEBAIHN0YXRpYyBwaHlz
X2FkZHJfdCBnZXRfcWVfYmFzZSh2b2lkKQo+ICAgCWlmIChxZWJhc2UgIT0gLTEpCj4gICAJCXJl
dHVybiBxZWJhc2U7Cj4gICAKPiAtCXFlID0gb2ZfZmluZF9jb21wYXRpYmxlX25vZGUoTlVMTCwg
TlVMTCwgImZzbCxxZSIpOwo+IC0JaWYgKCFxZSkgewo+IC0JCXFlID0gb2ZfZmluZF9ub2RlX2J5
X3R5cGUoTlVMTCwgInFlIik7Cj4gLQkJaWYgKCFxZSkKPiAtCQkJcmV0dXJuIHFlYmFzZTsKPiAt
CX0KPiArCXFlID0gcWVfZ2V0X2RldmljZV9ub2RlKCk7Cj4gKwlpZiAoIXFlKQo+ICsJCXJldHVy
biBxZWJhc2U7Cj4gICAKPiAgIAlyZXQgPSBvZl9hZGRyZXNzX3RvX3Jlc291cmNlKHFlLCAwLCAm
cmVzKTsKPiAgIAlpZiAoIXJldCkKPiBAQCAtMTY0LDEyICsxNzUsOSBAQCB1bnNpZ25lZCBpbnQg
cWVfZ2V0X2JyZ19jbGsodm9pZCkKPiAgIAlpZiAoYnJnX2NsaykKPiAgIAkJcmV0dXJuIGJyZ19j
bGs7Cj4gICAKPiAtCXFlID0gb2ZfZmluZF9jb21wYXRpYmxlX25vZGUoTlVMTCwgTlVMTCwgImZz
bCxxZSIpOwo+IC0JaWYgKCFxZSkgewo+IC0JCXFlID0gb2ZfZmluZF9ub2RlX2J5X3R5cGUoTlVM
TCwgInFlIik7Cj4gLQkJaWYgKCFxZSkKPiAtCQkJcmV0dXJuIGJyZ19jbGs7Cj4gLQl9Cj4gKwlx
ZSA9IHFlX2dldF9kZXZpY2Vfbm9kZSgpOwo+ICsJaWYgKCFxZSkKPiArCQlyZXR1cm4gYnJnX2Ns
azsKPiAgIAo+ICAgCXByb3AgPSBvZl9nZXRfcHJvcGVydHkocWUsICJicmctZnJlcXVlbmN5Iiwg
JnNpemUpOwo+ICAgCWlmIChwcm9wICYmIHNpemUgPT0gc2l6ZW9mKCpwcm9wKSkKPiBAQCAtNTYz
LDE2ICs1NzEsOSBAQCBzdHJ1Y3QgcWVfZmlybXdhcmVfaW5mbyAqcWVfZ2V0X2Zpcm13YXJlX2lu
Zm8odm9pZCkKPiAgIAo+ICAgCWluaXRpYWxpemVkID0gMTsKPiAgIAo+IC0JLyoKPiAtCSAqIE5l
d2VyIGRldmljZSB0cmVlcyBoYXZlIGFuICJmc2wscWUiIGNvbXBhdGlibGUgcHJvcGVydHkgZm9y
IHRoZSBRRQo+IC0JICogbm9kZSwgYnV0IHdlIHN0aWxsIG5lZWQgdG8gc3VwcG9ydCBvbGRlciBk
ZXZpY2UgdHJlZXMuCj4gLQkqLwo+IC0JcWUgPSBvZl9maW5kX2NvbXBhdGlibGVfbm9kZShOVUxM
LCBOVUxMLCAiZnNsLHFlIik7Cj4gLQlpZiAoIXFlKSB7Cj4gLQkJcWUgPSBvZl9maW5kX25vZGVf
YnlfdHlwZShOVUxMLCAicWUiKTsKPiAtCQlpZiAoIXFlKQo+IC0JCQlyZXR1cm4gTlVMTDsKPiAt
CX0KPiArCXFlID0gcWVfZ2V0X2RldmljZV9ub2RlKCk7Cj4gKwlpZiAoIXFlKQo+ICsJCXJldHVy
biBOVUxMOwo+ICAgCj4gICAJLyogRmluZCB0aGUgJ2Zpcm13YXJlJyBjaGlsZCBub2RlICovCj4g
ICAJZncgPSBvZl9nZXRfY2hpbGRfYnlfbmFtZShxZSwgImZpcm13YXJlIik7Cj4gQEAgLTYxOCwx
NiArNjE5LDkgQEAgdW5zaWduZWQgaW50IHFlX2dldF9udW1fb2ZfcmlzYyh2b2lkKQo+ICAgCXVu
c2lnbmVkIGludCBudW1fb2ZfcmlzYyA9IDA7Cj4gICAJY29uc3QgdTMyICpwcm9wOwo+ICAgCj4g
LQlxZSA9IG9mX2ZpbmRfY29tcGF0aWJsZV9ub2RlKE5VTEwsIE5VTEwsICJmc2wscWUiKTsKPiAt
CWlmICghcWUpIHsKPiAtCQkvKiBPbGRlciBkZXZpY2VzIHRyZWVzIGRpZCBub3QgaGF2ZSBhbiAi
ZnNsLHFlIgo+IC0JCSAqIGNvbXBhdGlibGUgcHJvcGVydHksIHNvIHdlIG5lZWQgdG8gbG9vayBm
b3IKPiAtCQkgKiB0aGUgUUUgbm9kZSBieSBuYW1lLgo+IC0JCSAqLwo+IC0JCXFlID0gb2ZfZmlu
ZF9ub2RlX2J5X3R5cGUoTlVMTCwgInFlIik7Cj4gLQkJaWYgKCFxZSkKPiAtCQkJcmV0dXJuIG51
bV9vZl9yaXNjOwo+IC0JfQo+ICsJcWUgPSBxZV9nZXRfZGV2aWNlX25vZGUoKTsKPiArCWlmICgh
cWUpCj4gKwkJcmV0dXJuIG51bV9vZl9yaXNjOwo+ICAgCj4gICAJcHJvcCA9IG9mX2dldF9wcm9w
ZXJ0eShxZSwgImZzbCxxZS1udW0tcmlzY3MiLCAmc2l6ZSk7Cj4gICAJaWYgKHByb3AgJiYgc2l6
ZSA9PSBzaXplb2YoKnByb3ApKQo+IEBAIC02NDcsMTYgKzY0MSw5IEBAIHVuc2lnbmVkIGludCBx
ZV9nZXRfbnVtX29mX3NudW1zKHZvaWQpCj4gICAJY29uc3QgdTMyICpwcm9wOwo+ICAgCj4gICAJ
bnVtX29mX3NudW1zID0gMjg7IC8qIFRoZSBkZWZhdWx0IG51bWJlciBvZiBzbnVtIGZvciB0aHJl
YWRzIGlzIDI4ICovCj4gLQlxZSA9IG9mX2ZpbmRfY29tcGF0aWJsZV9ub2RlKE5VTEwsIE5VTEws
ICJmc2wscWUiKTsKPiAtCWlmICghcWUpIHsKPiAtCQkvKiBPbGRlciBkZXZpY2VzIHRyZWVzIGRp
ZCBub3QgaGF2ZSBhbiAiZnNsLHFlIgo+IC0JCSAqIGNvbXBhdGlibGUgcHJvcGVydHksIHNvIHdl
IG5lZWQgdG8gbG9vayBmb3IKPiAtCQkgKiB0aGUgUUUgbm9kZSBieSBuYW1lLgo+IC0JCSAqLwo+
IC0JCXFlID0gb2ZfZmluZF9ub2RlX2J5X3R5cGUoTlVMTCwgInFlIik7Cj4gLQkJaWYgKCFxZSkK
PiAtCQkJcmV0dXJuIG51bV9vZl9zbnVtczsKPiAtCX0KPiArCXFlID0gcWVfZ2V0X2RldmljZV9u
b2RlKCk7Cj4gKwlpZiAoIXFlKQo+ICsJCXJldHVybiBudW1fb2Zfc251bXM7Cj4gICAKPiAgIAlw
cm9wID0gb2ZfZ2V0X3Byb3BlcnR5KHFlLCAiZnNsLHFlLW51bS1zbnVtcyIsICZzaXplKTsKPiAg
IAlpZiAocHJvcCAmJiBzaXplID09IHNpemVvZigqcHJvcCkpIHsKPiAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
