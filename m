Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F89211D138
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 16:41:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A50xsJh4TYp9Xdl0TOKKuSj3gfjKHlNn+KirJQxcUhk=; b=qqv6f55E8RGYAo78MSKyf8qCe
	VfhFxueY2QkU4gpCxYDacfKCXHpiS5rlvGqXMPafOsgs+bTdeLgxmOPf/nypbNsBGTguFapAbXass
	TSscvHzWfLK1jnpGCdA8UwtWrVtW/pLZ14WaxL/CpcksjZWVuGi9k23RgCBi7DNTWgYsHCzs+vrC2
	OZ/OSiKry3dWtLep7mETjcsuq/WxAwzlHo0HyG01/f2eEMy4mZWYVVdb0G8y6nsrCDodP2kjmbTfb
	wn+HKKrhMzLA2iBO8ztr6WfwvVnagTToh7XqWDAM2UYD9+EpGJ2Nvx3mybuskponkDRl79LuT1ncP
	cJnCL0+og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifQaS-0000OI-Cy; Thu, 12 Dec 2019 15:41:08 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifQaL-0000Nj-3N
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 15:41:02 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ifQaG-0003ws-9n; Thu, 12 Dec 2019 16:40:56 +0100
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 2/3] KVM: arm/arm64: Re-check VMA on detecting a poisoned
 page
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 12 Dec 2019 15:40:56 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <b0a2b074-b80f-84ee-bfaa-f81ab345b8c2@arm.com>
References: <20191211165651.7889-1-maz@kernel.org>
 <20191211165651.7889-3-maz@kernel.org>
 <88f65ab4ac87f53534fbbfd2410d1cc5@www.loen.fr>
 <b0a2b074-b80f-84ee-bfaa-f81ab345b8c2@arm.com>
Message-ID: <238ff4a1b763f51cc1f8670bfc72fc15@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: james.morse@arm.com, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_074101_282543_654F04B2 
X-CRM114-Status: GOOD (  18.39  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpPbiAyMDE5LTEyLTEyIDE1OjM0LCBKYW1lcyBNb3JzZSB3cm90ZToKPiBIaSBN
YXJjLAo+Cj4gT24gMTIvMTIvMjAxOSAxMTozMywgTWFyYyBaeW5naWVyIHdyb3RlOgo+PiBPbiAy
MDE5LTEyLTExIDE2OjU2LCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+PiBXaGVuIHdlIGNoZWNrIGZv
ciBhIHBvaXNvbmVkIHBhZ2UsIHdlIHVzZSB0aGUgVk1BIHRvIHRlbGwgdXNlcnNwYWNlCj4+PiBh
Ym91dCB0aGUgbG9vbWluZyBkaXNhc3Rlci4gQnV0IHdlIHBhc3MgYSBwb2ludGVyIHRvIHRoaXMg
Vk1BCj4+PiBhZnRlciBoYXZpbmcgcmVsZWFzZWQgdGhlIG1tYXBfc2VtLCB3aGljaCBpc24ndCBh
IGdvb2QgaWRlYS4KPgo+IFNvdW5kcyBsaWtlIGEgYnVnISBUaGUgdm1hLXNpemUgbWlnaHQgbm90
IG1hdGNoIHRoZSBwb2lzb25lZCBwZm4uCj4KPgo+Pj4gSW5zdGVhZCwgcmUtY2hlY2sgdGhhdCB3
ZSBoYXZlIHN0aWxsIGhhdmUgYSBWTUEsIGFuZCB0aGF0IHRoaXMKPj4+IFZNQSBzdGlsbCBwb2lu
dHMgdG8gYSBwb2lzb25lZCBwYWdlLiBJZiB0aGUgVk1BIGlzbid0IHRoZXJlLAo+Pj4gdXNlcnNw
YWNlIGlzIHBsYXlpbmcgd2l0aCBvdXIgbmVydmVzLCBzbyBsZXR5J3MgZ2l2ZSBpdCBhIC1FRkFV
TFQKPj4+IChpdCBkZXNlcnZlcyBpdCkuIElmIHRoZSBQRk4gaXNuJ3QgcG9pc29uZWQgYW55bW9y
ZSwgbGV0J3MgcmVzdGFydAo+Pj4gZnJvbSB0aGUgdG9wIGFuZCBoYW5kbGUgdGhlIGZhdWx0IGFn
YWluLgo+Cj4KPj4+IMKgdmlydC9rdm0vYXJtL21tdS5jIHwgMjUgKysrKysrKysrKysrKysrKysr
KysrKystLQo+Pj4gwqAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKPgo+IC4uLiB5ZWFoIC4uLgo+CgpbLi4uXQoKPiBIb3cgYWJvdXQgKHVudGVzdGVkKToK
PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tJTwtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4g
ZGlmZiAtLWdpdCBhL3ZpcnQva3ZtL2FybS9tbXUuYyBiL3ZpcnQva3ZtL2FybS9tbXUuYwo+IGlu
ZGV4IDM4YjRjOTEwYjZjMy4uODAyMTJkNDkzNWJkIDEwMDY0NAo+IC0tLSBhL3ZpcnQva3ZtL2Fy
bS9tbXUuYwo+ICsrKyBiL3ZpcnQva3ZtL2FybS9tbXUuYwo+IEBAIC0xNTkxLDE2ICsxNTkxLDgg
QEAgc3RhdGljIHZvaWQKPiBpbnZhbGlkYXRlX2ljYWNoZV9ndWVzdF9wYWdlKGt2bV9wZm5fdCBw
Zm4sIHVuc2lnbmVkCj4gbG9uZyBzaXplKQo+ICAgICAgICAgX19pbnZhbGlkYXRlX2ljYWNoZV9n
dWVzdF9wYWdlKHBmbiwgc2l6ZSk7Cj4gIH0KPgo+IC1zdGF0aWMgdm9pZCBrdm1fc2VuZF9od3Bv
aXNvbl9zaWduYWwodW5zaWduZWQgbG9uZyBhZGRyZXNzLAo+IC0gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKPiArc3RhdGljIHZv
aWQga3ZtX3NlbmRfaHdwb2lzb25fc2lnbmFsKHVuc2lnbmVkIGxvbmcgYWRkcmVzcywgc2hvcnQg
Cj4gbHNiKQo+ICB7Cj4gLSAgICAgICBzaG9ydCBsc2I7Cj4gLQo+IC0gICAgICAgaWYgKGlzX3Zt
X2h1Z2V0bGJfcGFnZSh2bWEpKQo+IC0gICAgICAgICAgICAgICBsc2IgPSBodWdlX3BhZ2Vfc2hp
ZnQoaHN0YXRlX3ZtYSh2bWEpKTsKPiAtICAgICAgIGVsc2UKPiAtICAgICAgICAgICAgICAgbHNi
ID0gUEFHRV9TSElGVDsKPiAtCj4gICAgICAgICBzZW5kX3NpZ19tY2VlcnIoQlVTX01DRUVSUl9B
UiwgKHZvaWQgX191c2VyICopYWRkcmVzcywgbHNiLCAKPiBjdXJyZW50KTsKPiAgfQo+Cj4gQEAg
LTE2NzMsNiArMTY2NSw3IEBAIHN0YXRpYyBpbnQgdXNlcl9tZW1fYWJvcnQoc3RydWN0IGt2bV92
Y3B1Cj4gKnZjcHUsIHBoeXNfYWRkcl90IGZhdWx0X2lwYSwKPiAgICAgICAgIHN0cnVjdCBrdm0g
Kmt2bSA9IHZjcHUtPmt2bTsKPiAgICAgICAgIHN0cnVjdCBrdm1fbW11X21lbW9yeV9jYWNoZSAq
bWVtY2FjaGUgPSAKPiAmdmNwdS0+YXJjaC5tbXVfcGFnZV9jYWNoZTsKPiAgICAgICAgIHN0cnVj
dCB2bV9hcmVhX3N0cnVjdCAqdm1hOwo+ICsgICAgICAgc2hvcnQgc3RhZ2UxX3ZtYV9zaXplOwo+
ICAgICAgICAga3ZtX3Bmbl90IHBmbjsKPiAgICAgICAgIHBncHJvdF90IG1lbV90eXBlID0gUEFH
RV9TMjsKPiAgICAgICAgIGJvb2wgbG9nZ2luZ19hY3RpdmUgPSBtZW1zbG90X2lzX2xvZ2dpbmco
bWVtc2xvdCk7Cj4KPiBAQCAtMTcwMyw2ICsxNjk2LDEyIEBAIHN0YXRpYyBpbnQgdXNlcl9tZW1f
YWJvcnQoc3RydWN0IGt2bV92Y3B1Cj4gKnZjcHUsIHBoeXNfYWRkcl90IGZhdWx0X2lwYSwKPiAg
ICAgICAgICAgICAgICAgdm1hX3BhZ2VzaXplID0gUEFHRV9TSVpFOwo+ICAgICAgICAgfQo+Cj4g
KyAgICAgICAvKiBGb3Igc2lnbmFscyBkdWUgdG8gaHdwb2lzb24sIHdlIG5lZWQgdG8gdXNlIHRo
ZSBzdGFnZTEgCj4gc2l6ZSAqLwo+ICsgICAgICAgaWYgKGlzX3ZtX2h1Z2V0bGJfcGFnZSh2bWEp
KQo+ICsgICAgICAgICAgICAgICBzdGFnZTFfdm1hX3NpemUgPSBodWdlX3BhZ2Vfc2hpZnQoaHN0
YXRlX3ZtYSh2bWEpKTsKPiArICAgICAgIGVsc2UKPiArICAgICAgICAgICAgICAgc3RhZ2UxX3Zt
YV9zaXplID0gUEFHRV9TSElGVDsKPiArCj4gICAgICAgICAvKgo+ICAgICAgICAgICogVGhlIHN0
YWdlMiBoYXMgYSBtaW5pbXVtIG9mIDIgbGV2ZWwgdGFibGUgKEZvciBhcm02NCBzZWUKPiAgICAg
ICAgICAqIGt2bV9hcm1fc2V0dXBfc3RhZ2UyKCkpLiBIZW5jZSwgd2UgYXJlIGd1YXJhbnRlZWQg
dGhhdCB3ZSAKPiBjYW4KPiBAQCAtMTczNSw3ICsxNzM0LDcgQEAgc3RhdGljIGludCB1c2VyX21l
bV9hYm9ydChzdHJ1Y3Qga3ZtX3ZjcHUKPiAqdmNwdSwgcGh5c19hZGRyX3QgZmF1bHRfaXBhLAo+
Cj4gICAgICAgICBwZm4gPSBnZm5fdG9fcGZuX3Byb3Qoa3ZtLCBnZm4sIHdyaXRlX2ZhdWx0LCAm
d3JpdGFibGUpOwo+ICAgICAgICAgaWYgKHBmbiA9PSBLVk1fUEZOX0VSUl9IV1BPSVNPTikgewo+
IC0gICAgICAgICAgICAgICBrdm1fc2VuZF9od3BvaXNvbl9zaWduYWwoaHZhLCB2bWEpOwo+ICsg
ICAgICAgICAgICAgICBrdm1fc2VuZF9od3BvaXNvbl9zaWduYWwoaHZhLCBzdGFnZTFfdm1hX3Np
emUpOwo+ICAgICAgICAgICAgICAgICByZXR1cm4gMDsKPiAgICAgICAgIH0KPiAgICAgICAgIGlm
IChpc19lcnJvcl9ub3Nsb3RfcGZuKHBmbikpCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSU8
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+Cj4gSXRzIHBvc3NpYmxlIHRoaXMgY291bGQgZXZl
biBiZSB0aGUgb3JpZ2luYWwgb3V0cHV0IG9mCj4gdm1hX2tlcm5lbF9wYWdlc2l6ZSgpLi4uIChQ
dW5pdCBzdXBwbGllZCB0aGUgb3JpZ2luYWwKPiBodWdlX3BhZ2Vfc2hpZnQoaHN0YXRlX3ZtYSgp
KSBydW5lcy4uLikKCkknZCBiZSBoYXBweSB3aXRoIHNvbWV0aGluZyBhbG9uZyB0aGVzZSBsaW5l
cy4gQW55IGNoYW5jZSB5b3UgY291bGQKYSBwcm9wZXIgcGF0Y2g/CgpUaGFua3MsCgogICAgICAg
ICBNLgotLSAKSmF6eiBpcyBub3QgZGVhZC4gSXQganVzdCBzbWVsbHMgZnVubnkuLi4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
