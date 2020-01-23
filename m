Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8031414660B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 11:58:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Hg+QKMjLQIc6Rdw0sapnNSqgFxXDfIohoacphMhOgE=; b=TohJm2T3Xc0hcq
	fgQMB94/IjsKlVlWYSxUqSfZJ+L9S9fUNzduzs2sLshgO30Pkr7D9DFmSq+dVY468p1mp+8tORDZ2
	Rfa3yj+GjbGPijpe5bKgAEGRd/mBmj8G2bogN1AK7zikrcnFjL/WRCk5Kb2peeRIaKhxGKHKz6GZe
	aLaKQOOs0MO3dEeF6moL1tLoetAQVP+N2Z8CXmI+baSPrBScdAALAB3/7LYvenxgOrocFUyqjxOqi
	0UiiStyg3ZUKWJ1V89LOkSna212Snm66HEmCwnoa4XbeOvvMagZg6wx49i1gtWcHfQYNhY+zYtwcu
	121CDrXjimMV/SOgRIsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuaCI-0006pD-TE; Thu, 23 Jan 2020 10:58:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuaC6-0006oa-6D
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 10:58:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E298931B;
 Thu, 23 Jan 2020 02:58:35 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D4DC3F6C4;
 Thu, 23 Jan 2020 02:58:35 -0800 (PST)
Subject: Re: [RFC PATCH 03/11] firmware: arm_scmi: Add support for
 notifications message processing
To: Jim Quinlan <james.quinlan@broadcom.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200120122333.46217-1-cristian.marussi@arm.com>
 <20200120122333.46217-4-cristian.marussi@arm.com>
 <4c59008e-6010-fb98-d7bf-8677454d1e4f@broadcom.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <049bac5a-dbc2-f3a2-a039-1dcf4c503103@arm.com>
Date: Thu, 23 Jan 2020 10:58:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <4c59008e-6010-fb98-d7bf-8677454d1e4f@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_025838_319420_66BB1D16 
X-CRM114-Status: GOOD (  20.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: lukasz.luba@arm.com, sudeep.holla@arm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmltCgpPbiAyMi8wMS8yMDIwIDIzOjI3LCBKaW0gUXVpbmxhbiB3cm90ZToKPiBIaSwKPiAK
PiBJIHRyaWVkICJnaXQgYW0iIG9uIGFuIG1ib3ggZmlsZcKgIGZyb20gdGhlc2UgY29tbWl0cyBh
bmQgZ2V0IHN0dWNrIG9uCj4gCj4gICAgIEFwcGx5aW5nOiBmaXJtd2FyZTogYXJtX3NjbWk6IEFk
ZCByZWNlaXZlIGJ1ZmZlciBzdXBwb3J0IGZvciBub3RpZmljYXRpb25zCj4gICAgIEFwcGx5aW5n
OiBmaXJtd2FyZTogYXJtX3NjbWk6IFVwZGF0ZSBwcm90b2NvbCBjb21tYW5kcyBhbmQgbm90aWZp
Y2F0aW9uIGxpc3QKPiAgICAgQXBwbHlpbmc6IGZpcm13YXJlOiBhcm1fc2NtaTogQWRkIHN1cHBv
cnQgZm9yIG5vdGlmaWNhdGlvbnMgbWVzc2FnZSBwcm9jZXNzaW5nCj4gICAgIGVycm9yOiBwYXRj
aCBmYWlsZWQ6IGRyaXZlcnMvZmlybXdhcmUvYXJtX3NjbWkvZHJpdmVyLmM6MzU1Cj4gICAgIGVy
cm9yOiBkcml2ZXJzL2Zpcm13YXJlL2FybV9zY21pL2RyaXZlci5jOiBwYXRjaCBkb2VzIG5vdCBh
cHBseQo+IAo+IAo+IENvdWxkIHlvdSBwbGVhc2UgYXBwbHkgdGhpcyBlbWFpbCBwYXRjaHNldCBh
bmQgbGV0IG1lIGtub3cgaWYgaXQgd29ya3MgZm9yIHlvdT/CoCBJIGFtIGRvaW5nIHRoaXMgb250
bwo+IAo+ICAgICAyNTdkMGUyMGVjNGYgaW5jbHVkZTogdHJhY2U6IEFkZCBTQ01JIGhlYWRlciB3
aXRoIHRyYWNlIGV2ZW50c8KgwqDCoMKgwqAKPiAKPiAKClNvcnJ5Li4uIG15IGZhdWx0IC4uIGl0
IGlzIG9uIHRvcCBvZiB0aGUgZm9sbG93aW5nIGNvbW1pdCBvbiB0aGF0IHNhbWUgYnJhbmNoIGlu
IGZhY3Q6Cgo3MjlkMzUzMGE1MDQgZHJpdmVyczogZmlybXdhcmU6IHNjbWk6IEV4dGVuZCBTQ01J
IHRyYW5zcG9ydCBsYXllciBieSB0cmFjZSBldmVudHMKCjEwOjUxICQgZ2l0IGFtIHBhdGNoX3Nj
bWlfbm90aWYvZXh0X1YxL2ZpbmFsLzAwKiAgICAgICAgICAgICAgICAgICAgICAgICAgCkFwcGx5
aW5nOiBmaXJtd2FyZTogYXJtX3NjbWk6IEFkZCByZWNlaXZlIGJ1ZmZlciBzdXBwb3J0IGZvciBu
b3RpZmljYXRpb25zCkFwcGx5aW5nOiBmaXJtd2FyZTogYXJtX3NjbWk6IFVwZGF0ZSBwcm90b2Nv
bCBjb21tYW5kcyBhbmQgbm90aWZpY2F0aW9uIGxpc3QgICAgICAgICAKQXBwbHlpbmc6IGZpcm13
YXJlOiBhcm1fc2NtaTogQWRkIHN1cHBvcnQgZm9yIG5vdGlmaWNhdGlvbnMgbWVzc2FnZSBwcm9j
ZXNzaW5nCkFwcGx5aW5nOiBmaXJtd2FyZTogYXJtX3NjbWk6IEFkZCBjb3JlIG5vdGlmaWNhdGlv
bnMgc3VwcG9ydCAgICAgICAgICAgICAgICAgICAgCkFwcGx5aW5nOiBmaXJtd2FyZTogYXJtX3Nj
bWk6IEFkZCBub3RpZmljYXRpb25zIGFudGktdGFtcGVyaW5nICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgCkFwcGx5aW5nOiBmaXJtd2FyZTogYXJtX3NjbWk6IEVuYWJsZSBjb3JlIG5v
dGlmaWNhdGlvbnMgICAgICAgICAgICAgICAgICAKQXBwbHlpbmc6IGZpcm13YXJlOiBhcm1fc2Nt
aTogQWRkIFBvd2VyIG5vdGlmaWNhdGlvbnMgc3VwcG9ydCAgICAgICAgICAgICAKQXBwbHlpbmc6
IGZpcm13YXJlOiBhcm1fc2NtaTogQWRkIFBlcmYgbm90aWZpY2F0aW9ucyBzdXBwb3J0ICAgICAg
ICAgICAgICAgIApBcHBseWluZzogZmlybXdhcmU6IGFybV9zY21pOiBBZGQgU2Vuc29yIG5vdGlm
aWNhdGlvbnMgc3VwcG9ydCAgICAgICAgICAgICAKQXBwbHlpbmc6IGZpcm13YXJlOiBhcm1fc2Nt
aTogQWRkIFJlc2V0IG5vdGlmaWNhdGlvbnMgc3VwcG9ydCAgICAgICAgICAgICAgICAgIApBcHBs
eWluZzogZmlybXdhcmU6IGFybV9zY21pOiBBZGQgQmFzZSBub3RpZmljYXRpb25zIHN1cHBvcnQg
ICAgICAgICAgICAKCkknbGwgZm9sbG93IHVwIHRvIG15IGNvdmVyIHRvIHdhcm4gYWJvdXQgdGhp
cy4KClRoYW5rcyBmb3IgdHJ5aW5nIGl0IG91dC4KClJlZ2FyZHMKCkNyaXN0aWFuCgo+IGFzIHlv
dSBkaXJlY3RlZC4KPiAKPiBUaGFua3MsCj4gSmltCj4gCj4gCj4gCj4gT24gMS8yMC8yMCA3OjIz
IEFNLCBDcmlzdGlhbiBNYXJ1c3NpIHdyb3RlOgo+PiBGcm9tOiBTdWRlZXAgSG9sbGEgPHN1ZGVl
cC5ob2xsYUBhcm0uY29tPgo+Pgo+PiBBZGQgdGhlIG1lY2hhbmlzbXMgdG8gZGlzdGluZ3Vpc2gg
bm90aWZpY2F0aW9ucyBmcm9tIGRlbGF5ZWQgcmVzcG9uc2VzIGFuZAo+PiB0byBwcm9wZXJseSBm
ZXRjaCBub3RpZmljYXRpb24gbWVzc2FnZXMgdXBvbiByZWNlcHRpb246IG5vdGlmaWNhdGlvbnMK
Pj4gcHJvY2Vzc2luZyBkb2VzIG5vdCBjb250aW51ZSBmdXJ0aGVyIGFmdGVyIHRoZSBmZXRjaCBw
aGFzZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFAYXJt
LmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gTWFydXNzaSA8Y3Jpc3RpYW4ubWFydXNz
aUBhcm0uY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvZmlybXdhcmUvYXJtX3NjbWkvZHJpdmVyLmMg
fCA5MiArKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCA2
NSBpbnNlcnRpb25zKCspLCAyNyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZmlybXdhcmUvYXJtX3NjbWkvZHJpdmVyLmMgYi9kcml2ZXJzL2Zpcm13YXJlL2FybV9zY21p
L2RyaXZlci5jCj4+IGluZGV4IDk2MTFlODAzN2Q3Ny4uMjhlZDFmMGNiNDE3IDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL2Zpcm13YXJlL2FybV9zY21pL2RyaXZlci5jCj4+ICsrKyBiL2RyaXZlcnMv
ZmlybXdhcmUvYXJtX3NjbWkvZHJpdmVyLmMKPj4gQEAgLTIxMiw2ICsyMTIsMTUgQEAgc3RhdGlj
IHZvaWQgc2NtaV9mZXRjaF9yZXNwb25zZShzdHJ1Y3Qgc2NtaV94ZmVyICp4ZmVyLAo+PiAgCW1l
bWNweV9mcm9taW8oeGZlci0+cnguYnVmLCBtZW0tPm1zZ19wYXlsb2FkICsgNCwgeGZlci0+cngu
bGVuKTsKPj4gIH0KPj4gIAo+PiArc3RhdGljIHZvaWQgc2NtaV9mZXRjaF9ub3RpZmljYXRpb24o
c3RydWN0IHNjbWlfeGZlciAqeGZlciwgc2l6ZV90IG1heF9sZW4sCj4+ICsJCQkJICAgIHN0cnVj
dCBzY21pX3NoYXJlZF9tZW0gX19pb21lbSAqbWVtKQo+PiArewo+PiArCS8qIFNraXAgb25seSBs
ZW5ndGggb2YgaGVhZGVyIGluIHBheWxvYWQgYXJlYSBpLmUgNCBieXRlcyAqLwo+PiArCXhmZXIt
PnJ4LmxlbiA9IG1pbl90KHNpemVfdCwgbWF4X2xlbiwgaW9yZWFkMzIoJm1lbS0+bGVuZ3RoKSAt
IDQpOwo+PiArCj4+ICsJbWVtY3B5X2Zyb21pbyh4ZmVyLT5yeC5idWYsIG1lbS0+bXNnX3BheWxv
YWQsIHhmZXItPnJ4Lmxlbik7Cj4+ICt9Cj4+ICsKPj4gIC8qKgo+PiAgICogcGFja19zY21pX2hl
YWRlcigpIC0gcGFja3MgYW5kIHJldHVybnMgMzItYml0IGhlYWRlcgo+PiAgICoKPj4gQEAgLTMz
OSw2ICszNDgsNTggQEAgX19zY21pX3hmZXJfcHV0KHN0cnVjdCBzY21pX3hmZXJzX2luZm8gKm1p
bmZvLCBzdHJ1Y3Qgc2NtaV94ZmVyICp4ZmVyKQo+PiAgCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUo
Jm1pbmZvLT54ZmVyX2xvY2ssIGZsYWdzKTsKPj4gIH0KPj4gIAo+PiArc3RhdGljIHZvaWQgc2Nt
aV9oYW5kbGVfbm90aWZpY2F0aW9uKHN0cnVjdCBzY21pX2NoYW5faW5mbyAqY2luZm8sIHUzMiBt
c2dfaGRyKQo+PiArewo+PiArCXN0cnVjdCBzY21pX3hmZXIgKnhmZXI7Cj4+ICsJc3RydWN0IGRl
dmljZSAqZGV2ID0gY2luZm8tPmRldjsKPj4gKwlzdHJ1Y3Qgc2NtaV9pbmZvICppbmZvID0gaGFu
ZGxlX3RvX3NjbWlfaW5mbyhjaW5mby0+aGFuZGxlKTsKPj4gKwlzdHJ1Y3Qgc2NtaV94ZmVyc19p
bmZvICptaW5mbyA9ICZpbmZvLT5yeF9taW5mbzsKPj4gKwlzdHJ1Y3Qgc2NtaV9zaGFyZWRfbWVt
IF9faW9tZW0gKm1lbSA9IGNpbmZvLT5wYXlsb2FkOwo+PiArCj4+ICsJeGZlciA9IHNjbWlfeGZl
cl9nZXQoY2luZm8tPmhhbmRsZSwgbWluZm8pOwo+PiArCWlmIChJU19FUlIoeGZlcikpIHsKPj4g
KwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZ2V0IGZyZWUgbWVzc2FnZSBzbG90ICglbGQpXG4i
LAo+PiArCQkJUFRSX0VSUih4ZmVyKSk7Cj4+ICsJCWlvd3JpdGUzMihTQ01JX1NITUVNX0NIQU5f
U1RBVF9DSEFOTkVMX0ZSRUUsCj4+ICsJCQkgICZtZW0tPmNoYW5uZWxfc3RhdHVzKTsKPj4gKwkJ
cmV0dXJuOwo+PiArCX0KPj4gKwo+PiArCXVucGFja19zY21pX2hlYWRlcihtc2dfaGRyLCAmeGZl
ci0+aGRyKTsKPj4gKwlzY21pX2R1bXBfaGVhZGVyX2RiZyhkZXYsICZ4ZmVyLT5oZHIpOwo+PiAr
CXNjbWlfZmV0Y2hfbm90aWZpY2F0aW9uKHhmZXIsIGluZm8tPmRlc2MtPm1heF9tc2dfc2l6ZSwg
bWVtKTsKPj4gKwlfX3NjbWlfeGZlcl9wdXQobWluZm8sIHhmZXIpOwo+PiArCj4+ICsJaW93cml0
ZTMyKFNDTUlfU0hNRU1fQ0hBTl9TVEFUX0NIQU5ORUxfRlJFRSwgJm1lbS0+Y2hhbm5lbF9zdGF0
dXMpOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgdm9pZCBzY21pX2hhbmRsZV94ZmVyX2RlbGF5ZWRf
cmVzcChzdHJ1Y3Qgc2NtaV9jaGFuX2luZm8gKmNpbmZvLAo+PiArCQkJCQkgIHUxNiB4ZmVyX2lk
LCBib29sIGRlbGF5ZWRfcmVzcCkKPj4gK3sKPj4gKwlzdHJ1Y3Qgc2NtaV94ZmVyICp4ZmVyOwo+
PiArCXN0cnVjdCBkZXZpY2UgKmRldiA9IGNpbmZvLT5kZXY7Cj4+ICsJc3RydWN0IHNjbWlfaW5m
byAqaW5mbyA9IGhhbmRsZV90b19zY21pX2luZm8oY2luZm8tPmhhbmRsZSk7Cj4+ICsJc3RydWN0
IHNjbWlfeGZlcnNfaW5mbyAqbWluZm8gPSAmaW5mby0+dHhfbWluZm87Cj4+ICsJc3RydWN0IHNj
bWlfc2hhcmVkX21lbSBfX2lvbWVtICptZW0gPSBjaW5mby0+cGF5bG9hZDsKPj4gKwo+PiArCS8q
IEFyZSB3ZSBldmVuIGV4cGVjdGluZyB0aGlzPyAqLwo+PiArCWlmICghdGVzdF9iaXQoeGZlcl9p
ZCwgbWluZm8tPnhmZXJfYWxsb2NfdGFibGUpKSB7Cj4+ICsJCWRldl9lcnIoZGV2LCAibWVzc2Fn
ZSBmb3IgJWQgaXMgbm90IGV4cGVjdGVkIVxuIiwgeGZlcl9pZCk7Cj4+ICsJCXJldHVybjsKPj4g
Kwl9Cj4+ICsKPj4gKwl4ZmVyID0gJm1pbmZvLT54ZmVyX2Jsb2NrW3hmZXJfaWRdOwo+PiArCj4+
ICsJc2NtaV9kdW1wX2hlYWRlcl9kYmcoZGV2LCAmeGZlci0+aGRyKTsKPj4gKwo+PiArCXNjbWlf
ZmV0Y2hfcmVzcG9uc2UoeGZlciwgbWVtKTsKPj4gKwo+PiArCWlmIChkZWxheWVkX3Jlc3ApCj4+
ICsJCWNvbXBsZXRlKHhmZXItPmFzeW5jX2RvbmUpOwo+PiArCWVsc2UKPj4gKwkJY29tcGxldGUo
JnhmZXItPmRvbmUpOwo+PiArfQo+PiArCj4+ICAvKioKPj4gICAqIHNjbWlfcnhfY2FsbGJhY2so
KSAtIG1haWxib3ggY2xpZW50IGNhbGxiYWNrIGZvciByZWNlaXZlIG1lc3NhZ2VzCj4+ICAgKgo+
PiBAQCAtMzU1LDQxICs0MTYsMTggQEAgc3RhdGljIHZvaWQgc2NtaV9yeF9jYWxsYmFjayhzdHJ1
Y3QgbWJveF9jbGllbnQgKmNsLCB2b2lkICptKQo+PiAgewo+PiAgCXU4IG1zZ190eXBlOwo+PiAg
CXUzMiBtc2dfaGRyOwo+PiAtCXUxNiB4ZmVyX2lkOwo+PiAtCXN0cnVjdCBzY21pX3hmZXIgKnhm
ZXI7Cj4+ICAJc3RydWN0IHNjbWlfY2hhbl9pbmZvICpjaW5mbyA9IGNsaWVudF90b19zY21pX2No
YW5faW5mbyhjbCk7Cj4+IC0Jc3RydWN0IGRldmljZSAqZGV2ID0gY2luZm8tPmRldjsKPj4gLQlz
dHJ1Y3Qgc2NtaV9pbmZvICppbmZvID0gaGFuZGxlX3RvX3NjbWlfaW5mbyhjaW5mby0+aGFuZGxl
KTsKPj4gLQlzdHJ1Y3Qgc2NtaV94ZmVyc19pbmZvICptaW5mbyA9ICZpbmZvLT50eF9taW5mbzsK
Pj4gIAlzdHJ1Y3Qgc2NtaV9zaGFyZWRfbWVtIF9faW9tZW0gKm1lbSA9IGNpbmZvLT5wYXlsb2Fk
Owo+PiAgCj4+ICAJbXNnX2hkciA9IGlvcmVhZDMyKCZtZW0tPm1zZ19oZWFkZXIpOwo+PiAgCW1z
Z190eXBlID0gTVNHX1hUUkFDVF9UWVBFKG1zZ19oZHIpOwo+PiAtCXhmZXJfaWQgPSBNU0dfWFRS
QUNUX1RPS0VOKG1zZ19oZHIpOwo+PiAgCj4+ICAJaWYgKG1zZ190eXBlID09IE1TR19UWVBFX05P
VElGSUNBVElPTikKPj4gLQkJcmV0dXJuOyAvKiBOb3RpZmljYXRpb25zIG5vdCB5ZXQgc3VwcG9y
dGVkICovCj4+IC0KPj4gLQkvKiBBcmUgd2UgZXZlbiBleHBlY3RpbmcgdGhpcz8gKi8KPj4gLQlp
ZiAoIXRlc3RfYml0KHhmZXJfaWQsIG1pbmZvLT54ZmVyX2FsbG9jX3RhYmxlKSkgewo+PiAtCQlk
ZXZfZXJyKGRldiwgIm1lc3NhZ2UgZm9yICVkIGlzIG5vdCBleHBlY3RlZCFcbiIsIHhmZXJfaWQp
Owo+PiAtCQlyZXR1cm47Cj4+IC0JfQo+PiAtCj4+IC0JeGZlciA9ICZtaW5mby0+eGZlcl9ibG9j
a1t4ZmVyX2lkXTsKPj4gLQo+PiAtCXNjbWlfZHVtcF9oZWFkZXJfZGJnKGRldiwgJnhmZXItPmhk
cik7Cj4+IC0KPj4gLQlzY21pX2ZldGNoX3Jlc3BvbnNlKHhmZXIsIG1lbSk7Cj4+IC0KPj4gLQl0
cmFjZV9zY21pX3J4X2RvbmUoeGZlci0+dHJhbnNmZXJfaWQsIHhmZXItPmhkci5pZCwKPj4gLQkJ
CSAgIHhmZXItPmhkci5wcm90b2NvbF9pZCwgeGZlci0+aGRyLnNlcSwKPj4gLQkJCSAgIG1zZ190
eXBlKTsKPj4gLQo+PiAtCWlmIChtc2dfdHlwZSA9PSBNU0dfVFlQRV9ERUxBWUVEX1JFU1ApCj4+
IC0JCWNvbXBsZXRlKHhmZXItPmFzeW5jX2RvbmUpOwo+PiArCQlzY21pX2hhbmRsZV9ub3RpZmlj
YXRpb24oY2luZm8sIG1zZ19oZHIpOwo+PiAgCWVsc2UKPj4gLQkJY29tcGxldGUoJnhmZXItPmRv
bmUpOwo+PiArCQlzY21pX2hhbmRsZV94ZmVyX2RlbGF5ZWRfcmVzcChjaW5mbywgTVNHX1hUUkFD
VF9UT0tFTihtc2dfaGRyKSwKPj4gKwkJCQkJICAgICAgbXNnX3R5cGUpOwo+PiArCj4+ICB9Cj4+
ICAKPj4gIC8qKgo+IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
