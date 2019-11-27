Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 264E010AEE0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 12:45:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MarZCQSRBtGYgm/GQ+seiX9fQ3DIjWqWRKkUXH86Rbk=; b=ITdU3auOXXaSOXQLTs0EjsYKQ
	dbtc+p7R+ds4t42i7/5mGSepSueF9vL44M5PKLDH/X6hYbzy5AuQ0DL48MZvpp6WI0TfY4U8QQIze
	0CBF9AOtgEz39X5RPsWS4NfqUPTDY+m6ZDUXCCbTA8HD+ck7xM5hldth1oWrvmxkZ7kf4RhBOKKKD
	3HyKfP+EcXYRiV/OcIwAz8tLIGoNDlN7+Mop0yuaSDiCuUYXCptzDj/b877ML7J8RvR4BjHFX5l/d
	7d97BOCNcG2R4BaDbr+c+Y4KtNV3JDG7N+RntJMvgcz3EATbtx8QYJRzf25maJd3FOYGuvYvw0Lq6
	Sv8gCMvkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZvlG-0007qD-Uw; Wed, 27 Nov 2019 11:45:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvl3-0007ph-0C; Wed, 27 Nov 2019 11:45:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 8D9FC28DB56
Subject: Re: [PATCH 4/8] drm/rockchip: Use drm_gem_fb_create_with_dirty
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
 <20191115092120.4445-5-daniel.vetter@ffwll.ch>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <015dfb9f-0508-379d-468a-24515e621fb4@collabora.com>
Date: Wed, 27 Nov 2019 12:45:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191115092120.4445-5-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_034521_313161_D0896E27 
X-CRM114-Status: GOOD (  18.57  )
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

SGkgRGFuaWVsLAoKVyBkbml1IDE1LjExLjIwMTkgb8KgMTA6MjEsIERhbmllbCBWZXR0ZXIgcGlz
emU6Cj4gSWYgcm9ja2NoaXAgd291bGQgc3dpdGNoIG92ZXIgdG8gdGhlIGdlbmVyaWMgZmJkZXYg
c2V0dXAgd2UgY291bGQKPiBncmFiYWdlIGNvbGxlY3QgZXZlbiBtb3JlIG9mIGFsbCB0aGlzIGNv
ZGUgKGFsbCBvZiB0aGUgcmVtYWluaW5nIGZiCj4gaGFuZGxpbmcgY29kZSByZWFsbHkpLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+
IENjOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgo+IENjOiAiSGVpa28gU3TDvGJu
ZXIiIDxoZWlrb0BzbnRlY2guZGU+Cj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwo+IENjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCgpJIGNhcnJp
ZWQgb3V0IGxpbWl0ZWQgdGVzdGluZyB3aXRoIG1vZGV0ZXN0IG9uIGEgcm9ja3BpNCwKdXNpbmcg
dGhpcyBjb21tYW5kOgoKZm9yIGkgaW4gYC4vbW9kZXRlc3QgLWMgfCBncmVwIF5bWzpzcGFjZTpd
XSpbMS05XVswLTldKnhbMS05XVswLTldKiB8IGN1dCAtZjMgCi1kIiAiIHwgZ3JlcCAtdiBpJCB8
IHVuaXFgOyBkbyAuL21vZGV0ZXN0IC1zNDE6JGkgLUM7IGRvbmUKCkFsbCBtb2RlcyAoZXhjbHVk
aW5nIHRob3NlIHdob3NlIG5hbWVzIGVuZCB3aXRoIGFuICJpIiwgZS5nLiAxOTIweDEwODBpKQpw
cm9kdWNlZCBzZW5zaWJsZSBvdXRwdXQgd2hpY2ggc2VlbXMgbm8gZGlmZmVyZW50IHRvIHdoYXQg
aXMgcHJvZHVjZWQKd2hlbiB0aGUgcGF0Y2ggaW4gcXVlc3Rpb24gaXMgbm90IGFwcGxpZWQuCgpJ
ZiBzdWNoIGEgdGVzdCBzY29wZSBpcyBhY2NlcHRhYmxlLCB5b3UgY2FuIGFkZCBteQoKVGVzdGVk
LWJ5OiBBbmRyemVqIFBpZXRyYXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgoKPiAt
LS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYyB8IDU0ICst
LS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
NTMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF9kcm1fZmIuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9k
cm1fZmIuYwo+IGluZGV4IGNhMDEyMzRjMDM3Yy4uMDgxZGJkYWEwYjA3IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYwo+IEBAIC01Myw2NCArNTMsMTIg
QEAgcm9ja2NoaXBfZmJfYWxsb2Moc3RydWN0IGRybV9kZXZpY2UgKmRldiwgY29uc3Qgc3RydWN0
IGRybV9tb2RlX2ZiX2NtZDIgKm1vZGVfY20KPiAgIAlyZXR1cm4gZmI7Cj4gICB9Cj4gICAKPiAt
c3RhdGljIHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKgo+IC1yb2NrY2hpcF91c2VyX2ZiX2NyZWF0
ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdiwKPiAt
CQkJY29uc3Qgc3RydWN0IGRybV9tb2RlX2ZiX2NtZDIgKm1vZGVfY21kKQo+IC17Cj4gLQljb25z
dCBzdHJ1Y3QgZHJtX2Zvcm1hdF9pbmZvICppbmZvID0gZHJtX2dldF9mb3JtYXRfaW5mbyhkZXYs
Cj4gLQkJCQkJCQkJIG1vZGVfY21kKTsKPiAtCXN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiOwo+
IC0Jc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmpzW1JPQ0tDSElQX01BWF9GQl9CVUZGRVJdOwo+
IC0Jc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmo7Cj4gLQlpbnQgbnVtX3BsYW5lcyA9IG1pbl90
KGludCwgaW5mby0+bnVtX3BsYW5lcywgUk9DS0NISVBfTUFYX0ZCX0JVRkZFUik7Cj4gLQlpbnQg
cmV0Owo+IC0JaW50IGk7Cj4gLQo+IC0JZm9yIChpID0gMDsgaSA8IG51bV9wbGFuZXM7IGkrKykg
ewo+IC0JCXVuc2lnbmVkIGludCB3aWR0aCA9IG1vZGVfY21kLT53aWR0aCAvIChpID8gaW5mby0+
aHN1YiA6IDEpOwo+IC0JCXVuc2lnbmVkIGludCBoZWlnaHQgPSBtb2RlX2NtZC0+aGVpZ2h0IC8g
KGkgPyBpbmZvLT52c3ViIDogMSk7Cj4gLQkJdW5zaWduZWQgaW50IG1pbl9zaXplOwo+IC0KPiAt
CQlvYmogPSBkcm1fZ2VtX29iamVjdF9sb29rdXAoZmlsZV9wcml2LCBtb2RlX2NtZC0+aGFuZGxl
c1tpXSk7Cj4gLQkJaWYgKCFvYmopIHsKPiAtCQkJRFJNX0RFVl9FUlJPUihkZXYtPmRldiwKPiAt
CQkJCSAgICAgICJGYWlsZWQgdG8gbG9va3VwIEdFTSBvYmplY3RcbiIpOwo+IC0JCQlyZXQgPSAt
RU5YSU87Cj4gLQkJCWdvdG8gZXJyX2dlbV9vYmplY3RfdW5yZWZlcmVuY2U7Cj4gLQkJfQo+IC0K
PiAtCQltaW5fc2l6ZSA9IChoZWlnaHQgLSAxKSAqIG1vZGVfY21kLT5waXRjaGVzW2ldICsKPiAt
CQkJbW9kZV9jbWQtPm9mZnNldHNbaV0gKwo+IC0JCQl3aWR0aCAqIGluZm8tPmNwcFtpXTsKPiAt
Cj4gLQkJaWYgKG9iai0+c2l6ZSA8IG1pbl9zaXplKSB7Cj4gLQkJCWRybV9nZW1fb2JqZWN0X3B1
dF91bmxvY2tlZChvYmopOwo+IC0JCQlyZXQgPSAtRUlOVkFMOwo+IC0JCQlnb3RvIGVycl9nZW1f
b2JqZWN0X3VucmVmZXJlbmNlOwo+IC0JCX0KPiAtCQlvYmpzW2ldID0gb2JqOwo+IC0JfQo+IC0K
PiAtCWZiID0gcm9ja2NoaXBfZmJfYWxsb2MoZGV2LCBtb2RlX2NtZCwgb2JqcywgaSk7Cj4gLQlp
ZiAoSVNfRVJSKGZiKSkgewo+IC0JCXJldCA9IFBUUl9FUlIoZmIpOwo+IC0JCWdvdG8gZXJyX2dl
bV9vYmplY3RfdW5yZWZlcmVuY2U7Cj4gLQl9Cj4gLQo+IC0JcmV0dXJuIGZiOwo+IC0KPiAtZXJy
X2dlbV9vYmplY3RfdW5yZWZlcmVuY2U6Cj4gLQlmb3IgKGktLTsgaSA+PSAwOyBpLS0pCj4gLQkJ
ZHJtX2dlbV9vYmplY3RfcHV0X3VubG9ja2VkKG9ianNbaV0pOwo+IC0JcmV0dXJuIEVSUl9QVFIo
cmV0KTsKPiAtfQo+IC0KPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnX2hl
bHBlcl9mdW5jcyByb2NrY2hpcF9tb2RlX2NvbmZpZ19oZWxwZXJzID0gewo+ICAgCS5hdG9taWNf
Y29tbWl0X3RhaWwgPSBkcm1fYXRvbWljX2hlbHBlcl9jb21taXRfdGFpbF9ycG0sCj4gICB9Owo+
ICAgCj4gICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9tb2RlX2NvbmZpZ19mdW5jcyByb2NrY2hp
cF9kcm1fbW9kZV9jb25maWdfZnVuY3MgPSB7Cj4gLQkuZmJfY3JlYXRlID0gcm9ja2NoaXBfdXNl
cl9mYl9jcmVhdGUsCj4gKwkuZmJfY3JlYXRlID0gZHJtX2dlbV9mYl9jcmVhdGUsCj4gICAJLm91
dHB1dF9wb2xsX2NoYW5nZWQgPSBkcm1fZmJfaGVscGVyX291dHB1dF9wb2xsX2NoYW5nZWQsCj4g
ICAJLmF0b21pY19jaGVjayA9IGRybV9hdG9taWNfaGVscGVyX2NoZWNrLAo+ICAgCS5hdG9taWNf
Y29tbWl0ID0gZHJtX2F0b21pY19oZWxwZXJfY29tbWl0LAo+IAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
