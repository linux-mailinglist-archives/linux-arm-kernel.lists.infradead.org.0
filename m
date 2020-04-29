Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A441BD240
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 04:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nJvGe4q/z1VSqmecpp3YUpaDdv1e9TOt763vB1vbz90=; b=RYfiZDhVPPjwhLuIHAmxS5RjT
	qtnOAZXIJifCuG1VamrajhuxqdgCDAP8CTnfAu28Htv08T9BjcbNsGxa/v+RwW390eBHruAjXxLN5
	oQttBEV8U+A02kIVyBUoarqwn3+y92ww5wUA7yUfMKhfgY1mRBRyzwtFmjqMMfGGd6YZy0QHqiXlJ
	3hfFriFBI8cA9CwhOi2hYR0wLuCoezG5FC7RTdu88A3LAp4UYnW7CAg8ITrUV2RVNMBolKCBzpAOc
	BlZiQJcpdKVEr54tqt1G+QmdjMyFZzBAUBqxZzc6qqmiTqtPzgwlT351PM0llv6vHCKMIml1NOaPp
	l0svCVNrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTcRz-0005pd-HK; Wed, 29 Apr 2020 02:27:51 +0000
Received: from out30-42.freemail.mail.aliyun.com ([115.124.30.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTcRp-0005oD-W8
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 02:27:43 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R731e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e01355;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=36; SR=0;
 TI=SMTPD_---0Tx-0ovS_1588126817; 
Received: from 30.27.118.60(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0Tx-0ovS_1588126817) by smtp.aliyun-inc.com(127.0.0.1);
 Wed, 29 Apr 2020 10:20:19 +0800
Subject: Re: [PATCH v2 1/7] KVM: s390: clean up redundant 'kvm_run' parameters
To: Thomas Huth <thuth@redhat.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Cornelia Huck <cohuck@redhat.com>
References: <20200422125810.34847-1-tianjia.zhang@linux.alibaba.com>
 <20200422125810.34847-2-tianjia.zhang@linux.alibaba.com>
 <20200422154543.2efba3dd.cohuck@redhat.com>
 <dc5e0fa3-558b-d606-bda9-ed281cf9e9ae@de.ibm.com>
 <20200422180403.03f60b0c.cohuck@redhat.com>
 <5e1e126d-f1b0-196c-594b-4289d0afb9a8@linux.alibaba.com>
 <20200423123901.72a4c6a4.cohuck@redhat.com>
 <71344f73-c34f-a373-49d1-5d839c6be5f6@linux.alibaba.com>
 <1d73b700-4a20-3d7a-66d1-29b5afa03f4d@de.ibm.com>
 <73f6ecd0-ac47-eaad-0e4f-2d41c2b34450@redhat.com>
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <1b8167f2-eb91-5f17-8dc4-dcfaa5bbb075@linux.alibaba.com>
Date: Wed, 29 Apr 2020 10:20:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <73f6ecd0-ac47-eaad-0e4f-2d41c2b34450@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_192742_224897_9FBB026A 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: wanpengli@tencent.com, kvm@vger.kernel.org, david@redhat.com,
 benh@kernel.crashing.org, heiko.carstens@de.ibm.com, peterx@redhat.com,
 linux-mips@vger.kernel.org, paulus@ozlabs.org, hpa@zytor.com,
 kvmarm@lists.cs.columbia.edu, linux-s390@vger.kernel.org,
 frankja@linux.ibm.com, maz@kernel.org, joro@8bytes.org, x86@kernel.org,
 mingo@redhat.com, julien.thierry.kdev@gmail.com, gor@linux.ibm.com,
 suzuki.poulose@arm.com, kvm-ppc@vger.kernel.org, bp@alien8.de,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, jmattson@google.com,
 tsbogend@alpha.franken.de, christoffer.dall@arm.com,
 sean.j.christopherson@intel.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, mpe@ellerman.id.au, pbonzini@redhat.com,
 vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDIwLzQvMjYgMjA6NTksIFRob21hcyBIdXRoIHdyb3RlOgo+IE9uIDIzLzA0LzIwMjAg
MTMuMDAsIENocmlzdGlhbiBCb3JudHJhZWdlciB3cm90ZToKPj4KPj4KPj4gT24gMjMuMDQuMjAg
MTI6NTgsIFRpYW5qaWEgWmhhbmcgd3JvdGU6Cj4+Pgo+Pj4KPj4+IE9uIDIwMjAvNC8yMyAxODoz
OSwgQ29ybmVsaWEgSHVjayB3cm90ZToKPj4+PiBPbiBUaHUsIDIzIEFwciAyMDIwIDExOjAxOjQz
ICswODAwCj4+Pj4gVGlhbmppYSBaaGFuZyA8dGlhbmppYS56aGFuZ0BsaW51eC5hbGliYWJhLmNv
bT4gd3JvdGU6Cj4+Pj4KPj4+Pj4gT24gMjAyMC80LzIzIDA6MDQsIENvcm5lbGlhIEh1Y2sgd3Jv
dGU6Cj4+Pj4+PiBPbiBXZWQsIDIyIEFwciAyMDIwIDE3OjU4OjA0ICswMjAwCj4+Pj4+PiBDaHJp
c3RpYW4gQm9ybnRyYWVnZXIgPGJvcm50cmFlZ2VyQGRlLmlibS5jb20+IHdyb3RlOgo+Pj4+Pj4g
ICAgCj4+Pj4+Pj4gT24gMjIuMDQuMjAgMTU6NDUsIENvcm5lbGlhIEh1Y2sgd3JvdGU6Cj4+Pj4+
Pj4+IE9uIFdlZCwgMjIgQXByIDIwMjAgMjA6NTg6MDQgKzA4MDAKPj4+Pj4+Pj4gVGlhbmppYSBa
aGFuZyA8dGlhbmppYS56aGFuZ0BsaW51eC5hbGliYWJhLmNvbT4gd3JvdGU6Cj4+Pj4+Pj4+ICAg
ICAgIAo+Pj4+Pj4+Pj4gSW4gdGhlIGN1cnJlbnQga3ZtIHZlcnNpb24sICdrdm1fcnVuJyBoYXMg
YmVlbiBpbmNsdWRlZCBpbiB0aGUgJ2t2bV92Y3B1Jwo+Pj4+Pj4+Pj4gc3RydWN0dXJlLiBFYXJs
aWVyIHRoYW4gaGlzdG9yaWNhbCByZWFzb25zLCBtYW55IGt2bS1yZWxhdGVkIGZ1bmN0aW9uCj4+
Pj4+Pj4+Cj4+Pj4+Pj4+IHMvRWFybGllciB0aGFuL0Zvci8gPwo+Pj4+Pj4+PiAgICAgICAKPj4+
Pj4+Pj4+IHBhcmFtZXRlcnMgcmV0YWluIHRoZSAna3ZtX3J1bicgYW5kICdrdm1fdmNwdScgcGFy
YW1ldGVycyBhdCB0aGUgc2FtZSB0aW1lLgo+Pj4+Pj4+Pj4gVGhpcyBwYXRjaCBkb2VzIGEgdW5p
ZmllZCBjbGVhbnVwIG9mIHRoZXNlIHJlbWFpbmluZyByZWR1bmRhbnQgcGFyYW1ldGVycy4KPj4+
Pj4+Pj4+Cj4+Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBUaWFuamlhIFpoYW5nIDx0aWFuamlhLnpo
YW5nQGxpbnV4LmFsaWJhYmEuY29tPgo+Pj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4+PiAgwqDCoCBhcmNo
L3MzOTAva3ZtL2t2bS1zMzkwLmMgfCAzNyArKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0t
LS0tLS0tCj4+Pj4+Pj4+PiAgwqDCoCAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwg
MTUgZGVsZXRpb25zKC0pCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvczM5
MC9rdm0va3ZtLXMzOTAuYyBiL2FyY2gvczM5MC9rdm0va3ZtLXMzOTAuYwo+Pj4+Pj4+Pj4gaW5k
ZXggZTMzNWE3ZTVlYWQ3Li5kN2JiMmU3YTA3ZmYgMTAwNjQ0Cj4+Pj4+Pj4+PiAtLS0gYS9hcmNo
L3MzOTAva3ZtL2t2bS1zMzkwLmMKPj4+Pj4+Pj4+ICsrKyBiL2FyY2gvczM5MC9rdm0va3ZtLXMz
OTAuYwo+Pj4+Pj4+Pj4gQEAgLTQxNzYsOCArNDE3Niw5IEBAIHN0YXRpYyBpbnQgX192Y3B1X3J1
bihzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUpCj4+Pj4+Pj4+PiAgwqDCoMKgwqDCoMKgIHJldHVybiBy
YzsKPj4+Pj4+Pj4+ICDCoMKgIH0KPj4+Pj4+Pj4+ICDCoMKgIC1zdGF0aWMgdm9pZCBzeW5jX3Jl
Z3NfZm10MihzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUsIHN0cnVjdCBrdm1fcnVuICprdm1fcnVuKQo+
Pj4+Pj4+Pj4gK3N0YXRpYyB2b2lkIHN5bmNfcmVnc19mbXQyKHN0cnVjdCBrdm1fdmNwdSAqdmNw
dSkKPj4+Pj4+Pj4+ICDCoMKgIHsKPj4+Pj4+Pj4+ICvCoMKgwqAgc3RydWN0IGt2bV9ydW4gKmt2
bV9ydW4gPSB2Y3B1LT5ydW47Cj4+Pj4+Pj4+PiAgwqDCoMKgwqDCoMKgIHN0cnVjdCBydW50aW1l
X2luc3RyX2NiICpyaWNjYjsKPj4+Pj4+Pj4+ICDCoMKgwqDCoMKgwqAgc3RydWN0IGdzX2NiICpn
c2NiOwo+Pj4+Pj4+Pj4gIMKgwqAgQEAgLTQyMzUsNyArNDIzNiw3IEBAIHN0YXRpYyB2b2lkIHN5
bmNfcmVnc19mbXQyKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSwgc3RydWN0IGt2bV9ydW4gKmt2bV9y
dW4pCj4+Pj4+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4+Pj4+Pj4gIMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGlmICh2Y3B1LT5hcmNoLmdzX2VuYWJsZWQpIHsKPj4+Pj4+Pj4+ICDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGN1cnJlbnQtPnRocmVhZC5nc19jYiA9IChzdHJ1Y3Qg
Z3NfY2IgKikKPj4+Pj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICZ2Y3B1LT5ydW4tPnMucmVncy5nc2NiOwo+Pj4+Pj4+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJmt2bV9ydW4tPnMucmVncy5nc2Ni
Owo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBOb3Qgc3VyZSBpZiB0aGVzZSBjaGFuZ2VzICh2Y3B1LT5ydW4t
PiA9PiBrdm1fcnVuLT4pIGFyZSByZWFsbHkgd29ydGgKPj4+Pj4+Pj4gaXQuIChJdCBzZWVtcyB0
aGV5IGFtb3VudCB0byBhdCBsZWFzdCBhcyBtdWNoIGFzIHRoZSBjaGFuZ2VzIGFkdmVydGlzZWQK
Pj4+Pj4+Pj4gaW4gdGhlIHBhdGNoIGRlc2NyaXB0aW9uLikKPj4+Pj4+Pj4KPj4+Pj4+Pj4gT3Ro
ZXIgb3BpbmlvbnM/Cj4+Pj4+Pj4KPj4+Pj4+PiBBZ3JlZWQuIEl0IGZlZWxzIGtpbmQgb2YgcmFu
ZG9tLiBNYXliZSBqdXN0IGRvIHRoZSBmaXJzdCBsaW5lIChtb3ZlIGt2bV9ydW4gZnJvbSB0aGUK
Pj4+Pj4+PiBmdW5jdGlvbiBwYXJhbWV0ZXIgbGlzdCBpbnRvIHRoZSB2YXJpYWJsZSBkZWNsYXJh
dGlvbik/IE5vdCBzdXJlIGlmIHRoaXMgaXMgYmV0dGVyLgo+Pj4+Pj4+ICAgIAo+Pj4+Pj4KPj4+
Pj4+IFRoZXJlJ3MgbW9yZSBpbiB0aGlzIHBhdGNoIHRoYXQgSSBjdXQuLi4gYnV0IEkgdGhpbmsg
anVzdCBtb3ZpbmcKPj4+Pj4+IGt2bV9ydW4gZnJvbSB0aGUgcGFyYW1ldGVyIGxpc3Qgd291bGQg
YmUgbXVjaCBsZXNzIGRpc3J1cHRpdmUuCj4+Pj4+PiAgICAgCj4+Pj4+Cj4+Pj4+IEkgdGhpbmsg
dGhlcmUgYXJlIHR3byBraW5kcyBvZiBjb2RlKGB2Y3B1LT5ydW4tPmAgYW5kIGBrdm1fcnVuLT5g
KSwgYnV0Cj4+Pj4+IHRoZXJlIHdpbGwgYmUgbW9yZSBkaXNydXB0aXZlLCBub3QgbGVzcy4KPj4+
Pgo+Pj4+IEkganVzdCBmYWlsIHRvIHNlZSB0aGUgYmVuZWZpdDsgc3VyZSwga3ZtX3J1bi0+IGlz
IGNvbnZlbmllbnQsIGJ1dCB0aGUKPj4+PiBjdXJyZW50IGNvZGUgaXMganVzdCBmaW5lLCBhbmQg
YW55IHJld29yayBzaG91bGQgYmUgYmFsYW5jZWQgYWdhaW5zdAo+Pj4+IHRoZSBjb3N0IChlLmcu
IGNsdXR0ZXJpbmcgZ2l0IGFubm90YXRlKS4KPj4+Pgo+Pj4KPj4+IGNsdXR0ZXJpbmcgZ2l0IGFu
bm90YXRlID8gRG9lcyBpdCBtZWFuIEZpeCB4eHh4ICgiY29tbWVudCIpLiBJcyBpdCBwb3NzaWJs
ZSB0byBzb2x2ZSB0aGlzIHByb2JsZW0gYnkgc3BsaXR0aW5nIHRoaXMgcGF0Y2g/Cj4+Cj4+IE5v
IGl0cyBhYm91dCBicmVha2luZyBnaXQgYmxhbWUgKGFuZCBidWdmaXggYmFja3BvcnRzKSBmb3Ig
anVzdCBhIGNvc21ldGljIGltcHJvdmVtZW50Lgo+IAo+IEl0IGNvdWxkIGJlIHNsaWdodGx5IG1v
cmUgdGhhbiBhIGNvc21ldGljIGltcHJvdmVtZW50IChkZXBlbmRpbmcgb24gdGhlCj4gc21hcnRu
ZXNzIG9mIHRoZSBjb21waWxlcik6IHZjcHUtPnJ1bi0+IGFyZSB0d28gZGVyZWZlcmVuY2VzLCB3
aGlsZQo+IGt2bV9ydW4tPiBpcyBvbmx5IG9uZSBkZXJlZmVyZW5jZS4gU28gaXQgY291bGQgYmUg
c2xpZ2h0bHkgbW9yZSBjb21wYWN0Cj4gYW5kIGZhc3RlciBjb2RlLgo+IAo+ICAgVGhvbWFzCj4g
CgpJZiB0aGUgY29tcGlsZXIgaXMgc21hcnQgZW5vdWdoLCB0aGlzIHBsYWNlIGNhbiBiZSBhdXRv
bWF0aWNhbGx5IApvcHRpbWl6ZWQsIGJ1dCB3ZSBjYW4ndCBqdXN0IHJlbHkgb24gdGhlIGNvbXBp
bGVyLCBpZiBub3Q/IFRoaXMgcmVxdWlyZXMgCmEgdHJhZGUtb2ZmIGJldHdlZW4gY29kZSBjbGVh
bmxpbmVzcyByZWFkYWJpbGl0eSBhbmQgYnJlYWtpbmcgZ2l0IGJsYW1lLgpJbiBhZGRpdGlvbiwg
SSBoYXZlIHJlbW92ZWQgdGhlIGNoYW5nZXMgaGVyZSBhbmQgc2VudCBhIHY0IHBhdGNoLiBQbGVh
c2UgCmFsc28gaGVscCByZXZpZXcgaXQuCgpUaGFua3MgYW5kIGJlc3QsClRpYW5qaWEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
