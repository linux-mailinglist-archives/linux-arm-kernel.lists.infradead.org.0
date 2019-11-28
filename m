Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1837810CC47
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:58:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w2it+goqsF/pAw7NCfa018smZhkm/sLDK0vmFwRozX0=; b=kXBpm8Xb0bKkgUQ0PMqiCnymH
	j90koSL03b1tpV6rz6GGsjAFdRrSkmF3+m5FXN4eTE3rC+DYi0jEhIyinn7D3hmAUNO/CkO1IBEbL
	pFxVtH2SQC3ElI6NfQDlNWBVL5nEbIRaze/EnsE4r19qqBGCQt9YzGXvROhUCgaZJQWgLdkwi/XDC
	U7eZt7L+c++EtZg7uxPE8wjWyq0cJJGWJhuAKcbNtBuqnrxXqhlxKLVNlybdwZ225HpNUHNljK3Du
	MBzEjiQLHEzoDFQUQK23rZmYVhGPkqZk8Lzot2vcWjQqW1nlTRh+Cs86CGJty1DItFeFBB9ZfFzdI
	9j+woKDgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaMBp-0001kK-Pz; Thu, 28 Nov 2019 15:58:45 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMBd-0001jb-A6; Thu, 28 Nov 2019 15:58:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 113EC2923E3
Subject: Re: [PATCH 1/3] drm/rockchip: Use drm_gem_fb_create_with_dirty
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20191127180035.416209-1-daniel.vetter@ffwll.ch>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <0b2b352c-c7fe-1629-3117-f245ed27d4c2@collabora.com>
Date: Thu, 28 Nov 2019 16:58:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191127180035.416209-1-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_075833_613598_5BBF14BF 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Daniel Vetter <daniel.vetter@intel.com>, linux-rockchip@lists.infradead.org,
 Sandy Huang <hjc@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VyBkbml1IDI3LjExLjIwMTkgb8KgMTk6MDAsIERhbmllbCBWZXR0ZXIgcGlzemU6Cj4gSWYgcm9j
a2NoaXAgd291bGQgc3dpdGNoIG92ZXIgdG8gdGhlIGdlbmVyaWMgZmJkZXYgc2V0dXAgd2UgY291
bGQKPiBncmFiYWdlIGNvbGxlY3QgZXZlbiBtb3JlIG9mIGFsbCB0aGlzIGNvZGUgKGFsbCBvZiB0
aGUgcmVtYWluaW5nIGZiCj4gaGFuZGxpbmcgY29kZSByZWFsbHkpLgo+IAo+IHYyOiBBY3R1YWxs
eSB1c2UgX3dpdGhfZGlydHkgbGlrZSB0aGUgcGF0Y2ggc3ViamVjdCBwcm9taXNlZCAoQW5kcnpl
aikKPiAKPiBDYzogQW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3JhLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNv
bT4KPiBDYzogU2FuZHkgSHVhbmcgPGhqY0Byb2NrLWNoaXBzLmNvbT4KPiBDYzogIkhlaWtvIFN0
w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPgo+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKPiBDYzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwoKSSB1
bmRlcnN0YW5kIHRoYXQgY29tcHV0aW5nIG1pbl9zaXplIGlzIGNoYW5naW5nIGFzIHBlcgoKMDQy
YmY3NTM4NDJkZApkcm0vZm91cmNjOiBBZGQgY2hhcl9wZXJfYmxvY2ssIGJsb2NrX3cgYW5kIGJs
b2NrX2ggaW4gZHJtX2Zvcm1hdF9pbmZvLgoKV2l0aCBvdGhlciBxdWVzdGlvbnMgSSBoYWQgYmVm
b3JlIGFuc3dlcmVkIGluIHlvdXIgcHJldmlvdXMgcmVwbHkgdGhlIGN1cnJlbnQKdmVyc2lvbiBv
ZiB0aGlzIHBhdGNoIGlzCgpSZXZpZXdlZC1ieTogQW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRy
emVqLnBAY29sbGFib3JhLmNvbT4KCj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX2ZiLmMgfCA1NCArLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDUzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMgYi9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMKPiBpbmRleCBjYTAxMjM0YzAzN2MuLjIy
MWU3MmU3MTQzMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX2ZiLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X2ZiLmMKPiBAQCAtNTMsNjQgKzUzLDEyIEBAIHJvY2tjaGlwX2ZiX2FsbG9jKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsIGNvbnN0IHN0cnVjdCBkcm1fbW9kZV9mYl9jbWQyICptb2RlX2NtCj4gICAJ
cmV0dXJuIGZiOwo+ICAgfQo+ICAgCj4gLXN0YXRpYyBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICoK
PiAtcm9ja2NoaXBfdXNlcl9mYl9jcmVhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc3RydWN0
IGRybV9maWxlICpmaWxlX3ByaXYsCj4gLQkJCWNvbnN0IHN0cnVjdCBkcm1fbW9kZV9mYl9jbWQy
ICptb2RlX2NtZCkKPiAtewo+IC0JY29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5mbyAqaW5mbyA9
IGRybV9nZXRfZm9ybWF0X2luZm8oZGV2LAo+IC0JCQkJCQkJCSBtb2RlX2NtZCk7Cj4gLQlzdHJ1
Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYjsKPiAtCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2Jqc1tS
T0NLQ0hJUF9NQVhfRkJfQlVGRkVSXTsKPiAtCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqOwo+
IC0JaW50IG51bV9wbGFuZXMgPSBtaW5fdChpbnQsIGluZm8tPm51bV9wbGFuZXMsIFJPQ0tDSElQ
X01BWF9GQl9CVUZGRVIpOwo+IC0JaW50IHJldDsKPiAtCWludCBpOwo+IC0KPiAtCWZvciAoaSA9
IDA7IGkgPCBudW1fcGxhbmVzOyBpKyspIHsKPiAtCQl1bnNpZ25lZCBpbnQgd2lkdGggPSBtb2Rl
X2NtZC0+d2lkdGggLyAoaSA/IGluZm8tPmhzdWIgOiAxKTsKPiAtCQl1bnNpZ25lZCBpbnQgaGVp
Z2h0ID0gbW9kZV9jbWQtPmhlaWdodCAvIChpID8gaW5mby0+dnN1YiA6IDEpOwo+IC0JCXVuc2ln
bmVkIGludCBtaW5fc2l6ZTsKPiAtCj4gLQkJb2JqID0gZHJtX2dlbV9vYmplY3RfbG9va3VwKGZp
bGVfcHJpdiwgbW9kZV9jbWQtPmhhbmRsZXNbaV0pOwo+IC0JCWlmICghb2JqKSB7Cj4gLQkJCURS
TV9ERVZfRVJST1IoZGV2LT5kZXYsCj4gLQkJCQkgICAgICAiRmFpbGVkIHRvIGxvb2t1cCBHRU0g
b2JqZWN0XG4iKTsKPiAtCQkJcmV0ID0gLUVOWElPOwo+IC0JCQlnb3RvIGVycl9nZW1fb2JqZWN0
X3VucmVmZXJlbmNlOwo+IC0JCX0KPiAtCj4gLQkJbWluX3NpemUgPSAoaGVpZ2h0IC0gMSkgKiBt
b2RlX2NtZC0+cGl0Y2hlc1tpXSArCj4gLQkJCW1vZGVfY21kLT5vZmZzZXRzW2ldICsKPiAtCQkJ
d2lkdGggKiBpbmZvLT5jcHBbaV07Cj4gLQo+IC0JCWlmIChvYmotPnNpemUgPCBtaW5fc2l6ZSkg
ewo+IC0JCQlkcm1fZ2VtX29iamVjdF9wdXRfdW5sb2NrZWQob2JqKTsKPiAtCQkJcmV0ID0gLUVJ
TlZBTDsKPiAtCQkJZ290byBlcnJfZ2VtX29iamVjdF91bnJlZmVyZW5jZTsKPiAtCQl9Cj4gLQkJ
b2Jqc1tpXSA9IG9iajsKPiAtCX0KPiAtCj4gLQlmYiA9IHJvY2tjaGlwX2ZiX2FsbG9jKGRldiwg
bW9kZV9jbWQsIG9ianMsIGkpOwo+IC0JaWYgKElTX0VSUihmYikpIHsKPiAtCQlyZXQgPSBQVFJf
RVJSKGZiKTsKPiAtCQlnb3RvIGVycl9nZW1fb2JqZWN0X3VucmVmZXJlbmNlOwo+IC0JfQo+IC0K
PiAtCXJldHVybiBmYjsKPiAtCj4gLWVycl9nZW1fb2JqZWN0X3VucmVmZXJlbmNlOgo+IC0JZm9y
IChpLS07IGkgPj0gMDsgaS0tKQo+IC0JCWRybV9nZW1fb2JqZWN0X3B1dF91bmxvY2tlZChvYmpz
W2ldKTsKPiAtCXJldHVybiBFUlJfUFRSKHJldCk7Cj4gLX0KPiAtCj4gICBzdGF0aWMgY29uc3Qg
c3RydWN0IGRybV9tb2RlX2NvbmZpZ19oZWxwZXJfZnVuY3Mgcm9ja2NoaXBfbW9kZV9jb25maWdf
aGVscGVycyA9IHsKPiAgIAkuYXRvbWljX2NvbW1pdF90YWlsID0gZHJtX2F0b21pY19oZWxwZXJf
Y29tbWl0X3RhaWxfcnBtLAo+ICAgfTsKPiAgIAo+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1f
bW9kZV9jb25maWdfZnVuY3Mgcm9ja2NoaXBfZHJtX21vZGVfY29uZmlnX2Z1bmNzID0gewo+IC0J
LmZiX2NyZWF0ZSA9IHJvY2tjaGlwX3VzZXJfZmJfY3JlYXRlLAo+ICsJLmZiX2NyZWF0ZSA9IGRy
bV9nZW1fZmJfY3JlYXRlX3dpdGhfZGlydHksCj4gICAJLm91dHB1dF9wb2xsX2NoYW5nZWQgPSBk
cm1fZmJfaGVscGVyX291dHB1dF9wb2xsX2NoYW5nZWQsCj4gICAJLmF0b21pY19jaGVjayA9IGRy
bV9hdG9taWNfaGVscGVyX2NoZWNrLAo+ICAgCS5hdG9taWNfY29tbWl0ID0gZHJtX2F0b21pY19o
ZWxwZXJfY29tbWl0LAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
