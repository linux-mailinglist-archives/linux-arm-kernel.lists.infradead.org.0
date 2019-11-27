Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3D510B482
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 18:33:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=axgzlpP7wi8cWdS5OCUxOfzJdXs6NUcWs/ziouODU24=; b=gZ3nPDi7Nbef6v8dHq2+pMavm
	u23BbFmtxm1fRj1bqGUQ/B5TVuKkzkFree99Ov9dRI5OE4VczEXlWsawuZRNQuV8aTCSAFTLoxr3W
	T+fNFzFy7uIBpXGSx5ygZJMAGUriMDKI422LUdf1jxYtVNAQIkhKrCsn4Nbc01KqvsfafMAf1ynto
	DEWMyH0aAbQsCmtTGXHL+sD0+00HsfiqjtUUX1G2rcGguxgPlWSqkF0/qFvoeooRK28NDMiwzy0PF
	x9LuVqm9wWFdPTetN+eGcXpPCyUnuOPFB9y1ju/mOVe81UWZWUCUigpz2z+PMIu5ww5w/AYQVdvIF
	El8IWf90g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia1By-0005cJ-Ll; Wed, 27 Nov 2019 17:33:30 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia1Bi-0005bx-8o; Wed, 27 Nov 2019 17:33:16 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id C764F2882FC
Subject: Re: [PATCH 4/8] drm/rockchip: Use drm_gem_fb_create_with_dirty
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
 <20191115092120.4445-5-daniel.vetter@ffwll.ch>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <023053cb-9f72-c29a-ec2f-cf7532ff5c43@collabora.com>
Date: Wed, 27 Nov 2019 18:33:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191115092120.4445-5-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_093314_576577_3CFEEC19 
X-CRM114-Status: GOOD (  18.89  )
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
Cc: linux-rockchip@lists.infradead.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel.vetter@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRGFuaWVsLAoKQWZ0ZXIgYXBwbHlpbmcgdGhpcyBwYXRjaCB0aGVyZSBhcmUgc29tZSBzbGln
aHQgZGlmZmVyZW5jZXMKaW4gdGhlIGVmZmVjdGl2ZSBiZWhhdmlvciBvZiB0aGUgY29kZS4KCkkg
Y2FuJ3QgdGVsbCBpZiB0aGV5IGFyZSBpbXBvcnRhbnQsIHBsZWFzZSBzZWUgYmVsb3cuCgpBbmRy
emVqCgpXIGRuaXUgMTUuMTEuMjAxOSBvwqAxMDoyMSwgRGFuaWVsIFZldHRlciBwaXN6ZToKPiBJ
ZiByb2NrY2hpcCB3b3VsZCBzd2l0Y2ggb3ZlciB0byB0aGUgZ2VuZXJpYyBmYmRldiBzZXR1cCB3
ZSBjb3VsZAo+IGdyYWJhZ2UgY29sbGVjdCBldmVuIG1vcmUgb2YgYWxsIHRoaXMgY29kZSAoYWxs
IG9mIHRoZSByZW1haW5pbmcgZmIKPiBoYW5kbGluZyBjb2RlIHJlYWxseSkuCj4gCj4gU2lnbmVk
LW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gQ2M6IFNh
bmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5jb20+Cj4gQ2M6ICJIZWlrbyBTdMO8Ym5lciIgPGhl
aWtvQHNudGVjaC5kZT4KPiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiAtLS0KPiAgIGRyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYyB8IDU0ICstLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNTMgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9k
cm1fZmIuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYwo+IGlu
ZGV4IGNhMDEyMzRjMDM3Yy4uMDgxZGJkYWEwYjA3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYwo+IEBAIC01Myw2NCArNTMsMTIgQEAgcm9ja2NoaXBf
ZmJfYWxsb2Moc3RydWN0IGRybV9kZXZpY2UgKmRldiwgY29uc3Qgc3RydWN0IGRybV9tb2RlX2Zi
X2NtZDIgKm1vZGVfY20KPiAgIAlyZXR1cm4gZmI7Cj4gICB9Cj4gICAKPiAtc3RhdGljIHN0cnVj
dCBkcm1fZnJhbWVidWZmZXIgKgo+IC1yb2NrY2hpcF91c2VyX2ZiX2NyZWF0ZShzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2LCBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdiwKPiAtCQkJY29uc3Qgc3Ry
dWN0IGRybV9tb2RlX2ZiX2NtZDIgKm1vZGVfY21kKQo+IC17Cj4gLQljb25zdCBzdHJ1Y3QgZHJt
X2Zvcm1hdF9pbmZvICppbmZvID0gZHJtX2dldF9mb3JtYXRfaW5mbyhkZXYsCj4gLQkJCQkJCQkJ
IG1vZGVfY21kKTsKPiAtCXN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiOwo+IC0Jc3RydWN0IGRy
bV9nZW1fb2JqZWN0ICpvYmpzW1JPQ0tDSElQX01BWF9GQl9CVUZGRVJdOwo+IC0Jc3RydWN0IGRy
bV9nZW1fb2JqZWN0ICpvYmo7Cj4gLQlpbnQgbnVtX3BsYW5lcyA9IG1pbl90KGludCwgaW5mby0+
bnVtX3BsYW5lcywgUk9DS0NISVBfTUFYX0ZCX0JVRkZFUik7Cj4gLQlpbnQgcmV0Owo+IC0JaW50
IGk7Cj4gLQo+IC0JZm9yIChpID0gMDsgaSA8IG51bV9wbGFuZXM7IGkrKykgewoKZHJtX2dlbV9m
Yl9jcmVhdGVfd2l0aF9mdW5jcygpLCBpZiBubyBlcnJvciBoYXBwZW5zLAppdGVyYXRlcyBleGFj
dGx5IGluZm8tPm51bV9wbGFuZXMgdGltZXMsCmJ1dCB0aGUgZnVuY3Rpb24gYmVpbmcgcmVtb3Zl
ZCBoZXJlIGl0ZXJhdGVzCm1pbl90KGludCwgaW5mby0+bnVtX3BsYW5lcywgMykgdGltZXMuCgpJ
cyBpdCBlbnN1cmVkIGVhcmxpZXIgZWxzZXdoZXJlIHRoYXQgaW5mby0+bnVtX3BsYW5lcyBkb2Vz
IG5vdCBleGNlZWQgMz8KCj4gLQkJdW5zaWduZWQgaW50IHdpZHRoID0gbW9kZV9jbWQtPndpZHRo
IC8gKGkgPyBpbmZvLT5oc3ViIDogMSk7Cj4gLQkJdW5zaWduZWQgaW50IGhlaWdodCA9IG1vZGVf
Y21kLT5oZWlnaHQgLyAoaSA/IGluZm8tPnZzdWIgOiAxKTsKPiAtCQl1bnNpZ25lZCBpbnQgbWlu
X3NpemU7Cj4gLQo+IC0JCW9iaiA9IGRybV9nZW1fb2JqZWN0X2xvb2t1cChmaWxlX3ByaXYsIG1v
ZGVfY21kLT5oYW5kbGVzW2ldKTsKPiAtCQlpZiAoIW9iaikgewo+IC0JCQlEUk1fREVWX0VSUk9S
KGRldi0+ZGV2LAo+IC0JCQkJICAgICAgIkZhaWxlZCB0byBsb29rdXAgR0VNIG9iamVjdFxuIik7
Cj4gLQkJCXJldCA9IC1FTlhJTzsKPiAtCQkJZ290byBlcnJfZ2VtX29iamVjdF91bnJlZmVyZW5j
ZTsKPiAtCQl9Cj4gLQo+IC0JCW1pbl9zaXplID0gKGhlaWdodCAtIDEpICogbW9kZV9jbWQtPnBp
dGNoZXNbaV0gKwo+IC0JCQltb2RlX2NtZC0+b2Zmc2V0c1tpXSArCj4gLQkJCXdpZHRoICogaW5m
by0+Y3BwW2ldOwoKVGhpcyBjb21wdXRhdGlvbiBpbiBkcm1fZ2VtX2ZiX2NyZWF0ZV93aXRoX2Z1
bmNzIGxvb2tzIGxpa2UgdGhpczoKCgkJbWluX3NpemUgPSAoaGVpZ2h0IC0gMSkgKiBtb2RlX2Nt
ZC0+cGl0Y2hlc1tpXQoJCQkgKyBkcm1fZm9ybWF0X2luZm9fbWluX3BpdGNoKGluZm8sIGksIHdp
ZHRoKQoJCQkgKyBtb2RlX2NtZC0+b2Zmc2V0c1tpXTsKClBlcmhhcHMgdGhhdCdzIGFjdHVhbGx5
IHRoZSBzYW1lIHRoaW5nPwoKPiAtCj4gLQkJaWYgKG9iai0+c2l6ZSA8IG1pbl9zaXplKSB7Cj4g
LQkJCWRybV9nZW1fb2JqZWN0X3B1dF91bmxvY2tlZChvYmopOwo+IC0JCQlyZXQgPSAtRUlOVkFM
Owo+IC0JCQlnb3RvIGVycl9nZW1fb2JqZWN0X3VucmVmZXJlbmNlOwo+IC0JCX0KPiAtCQlvYmpz
W2ldID0gb2JqOwo+IC0JfQo+IC0KPiAtCWZiID0gcm9ja2NoaXBfZmJfYWxsb2MoZGV2LCBtb2Rl
X2NtZCwgb2JqcywgaSk7Cj4gLQlpZiAoSVNfRVJSKGZiKSkgewo+IC0JCXJldCA9IFBUUl9FUlIo
ZmIpOwo+IC0JCWdvdG8gZXJyX2dlbV9vYmplY3RfdW5yZWZlcmVuY2U7Cj4gLQl9Cj4gLQo+IC0J
cmV0dXJuIGZiOwo+IC0KPiAtZXJyX2dlbV9vYmplY3RfdW5yZWZlcmVuY2U6Cj4gLQlmb3IgKGkt
LTsgaSA+PSAwOyBpLS0pCj4gLQkJZHJtX2dlbV9vYmplY3RfcHV0X3VubG9ja2VkKG9ianNbaV0p
Owo+IC0JcmV0dXJuIEVSUl9QVFIocmV0KTsKPiAtfQo+IC0KPiAgIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgZHJtX21vZGVfY29uZmlnX2hlbHBlcl9mdW5jcyByb2NrY2hpcF9tb2RlX2NvbmZpZ19oZWxw
ZXJzID0gewo+ICAgCS5hdG9taWNfY29tbWl0X3RhaWwgPSBkcm1fYXRvbWljX2hlbHBlcl9jb21t
aXRfdGFpbF9ycG0sCj4gICB9Owo+ICAgCj4gICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9tb2Rl
X2NvbmZpZ19mdW5jcyByb2NrY2hpcF9kcm1fbW9kZV9jb25maWdfZnVuY3MgPSB7Cj4gLQkuZmJf
Y3JlYXRlID0gcm9ja2NoaXBfdXNlcl9mYl9jcmVhdGUsCj4gKwkuZmJfY3JlYXRlID0gZHJtX2dl
bV9mYl9jcmVhdGUsCgpUaGF0IHdheSB5b3UgbGVhdmUgb3V0IHRoZSAtPmRpcnR5KCkgY2FsbGJh
Y2sgZnJvbQpzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlcl9mdW5jcyByb2NrY2hp
cF9kcm1fZmJfZnVuY3MKCkknZCBzYXkgaW5zdGVhZDoKCnN0cnVjdCBkcm1fZnJhbWVidWZmZXIg
Kgpyb2NrY2hpcF9nZW1fZmJfY3JlYXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHN0cnVjdCBk
cm1fZmlsZSAqZmlsZSwKCQkgICAgICAgY29uc3Qgc3RydWN0IGRybV9tb2RlX2ZiX2NtZDIgKm1v
ZGVfY21kKQp7CglyZXR1cm4gZHJtX2dlbV9mYl9jcmVhdGVfd2l0aF9mdW5jcyhkZXYsIGZpbGUs
IG1vZGVfY21kLAoJCQkJCSAgICAmcm9ja2NoaXBfZHJtX2ZiX2Z1bmNzKTsKfQoKYW5kIHRoZW4K
CisJLmZiX2NyZWF0ZSA9IHJvY2tjaGlwX2dlbV9mYl9jcmVhdGUsCgo+ICAgCS5vdXRwdXRfcG9s
bF9jaGFuZ2VkID0gZHJtX2ZiX2hlbHBlcl9vdXRwdXRfcG9sbF9jaGFuZ2VkLAo+ICAgCS5hdG9t
aWNfY2hlY2sgPSBkcm1fYXRvbWljX2hlbHBlcl9jaGVjaywKPiAgIAkuYXRvbWljX2NvbW1pdCA9
IGRybV9hdG9taWNfaGVscGVyX2NvbW1pdCwKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
