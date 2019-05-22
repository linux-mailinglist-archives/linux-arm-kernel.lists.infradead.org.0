Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE8C25B1E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 02:23:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20bZ6jaYJdlS8HaJgsh7mJ6aUA+UU3ooDST4loaKxcM=; b=ChxADnMAiTkcSu
	I+z85iPDO8KhndC8MMNC3TLt44d23GpYEanBCbsvtMK8Jzv2mdYWa5AUFh06EX5fmRpCChvfBhDRb
	LCq++QLwWHVHZdS4SByo/kD48nMRM20z+aBRL9MBdspSowB0pSwH8w3W8OYr8hIRWrB6aYOGFGiSF
	mN1fGhfKK3UPMuZQwGyiW9VQeT+U9K50aIDwuSp91Fz84tuCAsMP/4q7XV1vllPkUqcxk6nJM6Ong
	UESTFirii44fG7/voCt3GKDLxSjdO+IkAKGB1tqqt6+F2IsGs6WBnwVQYwGj2AenV6SQYzwE3xL3g
	Mi/2A+m5AaeRw8ocjtCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTF22-0004pb-8L; Wed, 22 May 2019 00:22:58 +0000
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
 helo=midway.dunlab)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTF1v-0004pF-Gz; Wed, 22 May 2019 00:22:51 +0000
Subject: Re: [PATCH] pinctrl: stmfx: Fix compile issue when CONFIG_OF_GPIO is
 not defined
To: Amelie Delaunay <amelie.delaunay@st.com>, Lee Jones
 <lee.jones@linaro.org>, Linus Walleij <linus.walleij@linaro.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
References: <1558338735-8444-1-git-send-email-amelie.delaunay@st.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <381dcecc-2ca9-c44f-5a83-a293372ecd1e@infradead.org>
Date: Tue, 21 May 2019 17:22:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1558338735-8444-1-git-send-email-amelie.delaunay@st.com>
Content-Language: en-US
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
Cc: linux-gpio@vger.kernel.org, kbuild-all@01.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8yMC8xOSAxMjo1MiBBTSwgQW1lbGllIERlbGF1bmF5IHdyb3RlOgo+IFdoZW4gQ09ORklH
X0dQSU9fT0YgaXMgbm90IGRlZmluZWQsIHN0cnVjdCBncGlvX2NoaXAgJ29mX25vZGUnIG1lbWJl
ciBkb2VzCj4gbm90IGV4aXN0Ogo+IGRyaXZlcnMvcGluY3RybC9waW5jdHJsLXN0bWZ4LmM6IElu
IGZ1bmN0aW9uICdzdG1meF9waW5jdHJsX3Byb2JlJzoKPiBkcml2ZXJzL3BpbmN0cmwvcGluY3Ry
bC1zdG1meC5jOjY1MjoxNzogZXJyb3I6ICdzdHJ1Y3QgZ3Bpb19jaGlwJyBoYXMgbm8gbWVtYmVy
IG5hbWVkICdvZl9ub2RlJwo+ICAgICAgcGN0bC0+Z3Bpb19jaGlwLm9mX25vZGUgPSBucDsKPiAK
PiBGaXhlczogMTQ5MGQ5Zjg0MWIxICgicGluY3RybDogQWRkIFNUTUZYIEdQSU8gZXhwYW5kZXIg
UGluY3RybC9HUElPIGRyaXZlciIpCj4gUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxs
a3BAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFtZWxpZSBEZWxhdW5heSA8YW1lbGllLmRl
bGF1bmF5QHN0LmNvbT4KClRoaXMgaXMgZ29vZCBhcyBmYXIgYXMgaXQgZ29lcywgYnV0IEkgYW0g
YWxzbyBzZWVpbmcgYSBidWlsZCBlcnJvciBpbgpwaW5jdHJsLXN0bWZ4LmMgd2hlbiBDT05GSUdf
T0YgaXMgbm90IHNldC9lbmFibGVkIChyYW5kY29uZmlnKToKCi4uL2RyaXZlcnMvcGluY3RybC9w
aW5jdHJsLXN0bWZ4LmM6NDA5OjIwOiBlcnJvcjog4oCYcGluY29uZl9nZW5lcmljX2R0X25vZGVf
dG9fbWFwX3BpbuKAmSB1bmRlY2xhcmVkIGhlcmUgKG5vdCBpbiBhIGZ1bmN0aW9uKQogIC5kdF9u
b2RlX3RvX21hcCA9IHBpbmNvbmZfZ2VuZXJpY19kdF9ub2RlX3RvX21hcF9waW4sCiAgICAgICAg
ICAgICAgICAgICAgXgoKPiAtLS0KPiAgZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtc3RtZnguYyB8
IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1zdG1meC5jIGIvZHJpdmVycy9waW5jdHJsL3BpbmN0
cmwtc3RtZnguYwo+IGluZGV4IGViYTg3MmMuLmJiNjRhYTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9waW5jdHJsL3BpbmN0cmwtc3RtZnguYwo+ICsrKyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJs
LXN0bWZ4LmMKPiBAQCAtNjQ4LDcgKzY0OCw5IEBAIHN0YXRpYyBpbnQgc3RtZnhfcGluY3RybF9w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJcGN0bC0+Z3Bpb19jaGlwLmJh
c2UgPSAtMTsKPiAgCXBjdGwtPmdwaW9fY2hpcC5uZ3BpbyA9IHBjdGwtPnBjdGxfZGVzYy5ucGlu
czsKPiAgCXBjdGwtPmdwaW9fY2hpcC5jYW5fc2xlZXAgPSB0cnVlOwo+ICsjaWZkZWYgQ09ORklH
X09GX0dQSU8KPiAgCXBjdGwtPmdwaW9fY2hpcC5vZl9ub2RlID0gbnA7Cj4gKyNlbmRpZgo+ICAJ
cGN0bC0+Z3Bpb19jaGlwLm5lZWRfdmFsaWRfbWFzayA9IHRydWU7Cj4gIAo+ICAJcmV0ID0gZGV2
bV9ncGlvY2hpcF9hZGRfZGF0YShwY3RsLT5kZXYsICZwY3RsLT5ncGlvX2NoaXAsIHBjdGwpOwo+
IAoKCi0tIAp+UmFuZHkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
