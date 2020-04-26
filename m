Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC261B904D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 15:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=61vjxjKty2ZmLtUiYYHgvabR7VHJiQ8U76/SEtZ+riI=; b=HSE5OG+6ObYxuB
	1+ZTa4ICQWlcf3kXzOEYP8VeuojAYhj4dgRmGR1+Xea0aY6e/bfs3KP9yzE4ts/sWeCTA1Qo52wZ+
	owHy0Y9qUYJkmd2yifJkhQMVveXRVBmX0QrU+7MEHkTVjQqmtP//bFHMdujsW1pfIb5Ukq23oZvUA
	pWoXtS0/nB0al3PabR68HroLn9pOtvj45YpGTylEBaDA+g6I1Kau1dr7Zt9QvB+1r4AUxPvxGlntl
	O//hunht7TFfNdmh+eS/iGnY5J44vvx2ZBtbHMmTGu0ImbWvzl7lBRjBKbTukva+6m20BT5+FWaQW
	0frj/y1h3qk0l4iJl+RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSgvI-0004Pt-Qs; Sun, 26 Apr 2020 13:02:16 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSgv5-0004Nf-EN
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 13:02:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587906121;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:openpgp;
 bh=cS6N3dz+H92wTTUjeik0cWhJVJMk8JtsySToZ32DZB8=;
 b=L6CumUrPkTV/agCCLFvZuUbAFf9WmgUBo62/FF/n74c8f7o9RlokmI7DivJjLUPcgQh4sD
 UrlthcviWIEN5W+fHMXXz/QZ2TQ9ZHWmai2doclndPsLYzL2QJ4vpJsDSd7KmhMIRRoD5c
 nCpy+5V3C0EO5/+TRMC/wpwVERcgZYg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-295-L1Gr5bIyNaSAU5A4TdMIqA-1; Sun, 26 Apr 2020 08:59:40 -0400
X-MC-Unique: L1Gr5bIyNaSAU5A4TdMIqA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1CAF545F;
 Sun, 26 Apr 2020 12:59:36 +0000 (UTC)
Received: from thuth.remote.csb (ovpn-112-33.ams2.redhat.com [10.36.112.33])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 26AC460C05;
 Sun, 26 Apr 2020 12:59:19 +0000 (UTC)
Subject: Re: [PATCH v2 1/7] KVM: s390: clean up redundant 'kvm_run' parameters
To: Christian Borntraeger <borntraeger@de.ibm.com>,
 Tianjia Zhang <tianjia.zhang@linux.alibaba.com>,
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
From: Thomas Huth <thuth@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <73f6ecd0-ac47-eaad-0e4f-2d41c2b34450@redhat.com>
Date: Sun, 26 Apr 2020 14:59:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1d73b700-4a20-3d7a-66d1-29b5afa03f4d@de.ibm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_060203_670247_4B2651E6 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjMvMDQvMjAyMCAxMy4wMCwgQ2hyaXN0aWFuIEJvcm50cmFlZ2VyIHdyb3RlOgo+IAo+IAo+
IE9uIDIzLjA0LjIwIDEyOjU4LCBUaWFuamlhIFpoYW5nIHdyb3RlOgo+Pgo+Pgo+PiBPbiAyMDIw
LzQvMjMgMTg6MzksIENvcm5lbGlhIEh1Y2sgd3JvdGU6Cj4+PiBPbiBUaHUsIDIzIEFwciAyMDIw
IDExOjAxOjQzICswODAwCj4+PiBUaWFuamlhIFpoYW5nIDx0aWFuamlhLnpoYW5nQGxpbnV4LmFs
aWJhYmEuY29tPiB3cm90ZToKPj4+Cj4+Pj4gT24gMjAyMC80LzIzIDA6MDQsIENvcm5lbGlhIEh1
Y2sgd3JvdGU6Cj4+Pj4+IE9uIFdlZCwgMjIgQXByIDIwMjAgMTc6NTg6MDQgKzAyMDAKPj4+Pj4g
Q2hyaXN0aWFuIEJvcm50cmFlZ2VyIDxib3JudHJhZWdlckBkZS5pYm0uY29tPiB3cm90ZToKPj4+
Pj4gwqDCoAo+Pj4+Pj4gT24gMjIuMDQuMjAgMTU6NDUsIENvcm5lbGlhIEh1Y2sgd3JvdGU6Cj4+
Pj4+Pj4gT24gV2VkLCAyMiBBcHIgMjAyMCAyMDo1ODowNCArMDgwMAo+Pj4+Pj4+IFRpYW5qaWEg
WmhhbmcgPHRpYW5qaWEuemhhbmdAbGludXguYWxpYmFiYS5jb20+IHdyb3RlOgo+Pj4+Pj4+IMKg
wqDCoMKgwqAKPj4+Pj4+Pj4gSW4gdGhlIGN1cnJlbnQga3ZtIHZlcnNpb24sICdrdm1fcnVuJyBo
YXMgYmVlbiBpbmNsdWRlZCBpbiB0aGUgJ2t2bV92Y3B1Jwo+Pj4+Pj4+PiBzdHJ1Y3R1cmUuIEVh
cmxpZXIgdGhhbiBoaXN0b3JpY2FsIHJlYXNvbnMsIG1hbnkga3ZtLXJlbGF0ZWQgZnVuY3Rpb24K
Pj4+Pj4+Pgo+Pj4+Pj4+IHMvRWFybGllciB0aGFuL0Zvci8gPwo+Pj4+Pj4+IMKgwqDCoMKgwqAK
Pj4+Pj4+Pj4gcGFyYW1ldGVycyByZXRhaW4gdGhlICdrdm1fcnVuJyBhbmQgJ2t2bV92Y3B1JyBw
YXJhbWV0ZXJzIGF0IHRoZSBzYW1lIHRpbWUuCj4+Pj4+Pj4+IFRoaXMgcGF0Y2ggZG9lcyBhIHVu
aWZpZWQgY2xlYW51cCBvZiB0aGVzZSByZW1haW5pbmcgcmVkdW5kYW50IHBhcmFtZXRlcnMuCj4+
Pj4+Pj4+Cj4+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFRpYW5qaWEgWmhhbmcgPHRpYW5qaWEuemhh
bmdAbGludXguYWxpYmFiYS5jb20+Cj4+Pj4+Pj4+IC0tLQo+Pj4+Pj4+PiDCoMKgIGFyY2gvczM5
MC9rdm0va3ZtLXMzOTAuYyB8IDM3ICsrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0t
LS0KPj4+Pj4+Pj4gwqDCoCAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMTUgZGVs
ZXRpb25zKC0pCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL3MzOTAva3ZtL2t2
bS1zMzkwLmMgYi9hcmNoL3MzOTAva3ZtL2t2bS1zMzkwLmMKPj4+Pj4+Pj4gaW5kZXggZTMzNWE3
ZTVlYWQ3Li5kN2JiMmU3YTA3ZmYgMTAwNjQ0Cj4+Pj4+Pj4+IC0tLSBhL2FyY2gvczM5MC9rdm0v
a3ZtLXMzOTAuYwo+Pj4+Pj4+PiArKysgYi9hcmNoL3MzOTAva3ZtL2t2bS1zMzkwLmMKPj4+Pj4+
Pj4gQEAgLTQxNzYsOCArNDE3Niw5IEBAIHN0YXRpYyBpbnQgX192Y3B1X3J1bihzdHJ1Y3Qga3Zt
X3ZjcHUgKnZjcHUpCj4+Pj4+Pj4+IMKgwqDCoMKgwqDCoCByZXR1cm4gcmM7Cj4+Pj4+Pj4+IMKg
wqAgfQo+Pj4+Pj4+PiDCoMKgIC1zdGF0aWMgdm9pZCBzeW5jX3JlZ3NfZm10MihzdHJ1Y3Qga3Zt
X3ZjcHUgKnZjcHUsIHN0cnVjdCBrdm1fcnVuICprdm1fcnVuKQo+Pj4+Pj4+PiArc3RhdGljIHZv
aWQgc3luY19yZWdzX2ZtdDIoc3RydWN0IGt2bV92Y3B1ICp2Y3B1KQo+Pj4+Pj4+PiDCoMKgIHsK
Pj4+Pj4+Pj4gK8KgwqDCoCBzdHJ1Y3Qga3ZtX3J1biAqa3ZtX3J1biA9IHZjcHUtPnJ1bjsKPj4+
Pj4+Pj4gwqDCoMKgwqDCoMKgIHN0cnVjdCBydW50aW1lX2luc3RyX2NiICpyaWNjYjsKPj4+Pj4+
Pj4gwqDCoMKgwqDCoMKgIHN0cnVjdCBnc19jYiAqZ3NjYjsKPj4+Pj4+Pj4gwqDCoCBAQCAtNDIz
NSw3ICs0MjM2LDcgQEAgc3RhdGljIHZvaWQgc3luY19yZWdzX2ZtdDIoc3RydWN0IGt2bV92Y3B1
ICp2Y3B1LCBzdHJ1Y3Qga3ZtX3J1biAqa3ZtX3J1bikKPj4+Pj4+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfQo+Pj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAodmNwdS0+YXJjaC5nc19l
bmFibGVkKSB7Cj4+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3VycmVudC0+
dGhyZWFkLmdzX2NiID0gKHN0cnVjdCBnc19jYiAqKQo+Pj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmdmNwdS0+cnVuLT5zLnJlZ3MuZ3NjYjsK
Pj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Jmt2bV9ydW4tPnMucmVncy5nc2NiOwo+Pj4+Pj4+Cj4+Pj4+Pj4gTm90IHN1cmUgaWYgdGhlc2Ug
Y2hhbmdlcyAodmNwdS0+cnVuLT4gPT4ga3ZtX3J1bi0+KSBhcmUgcmVhbGx5IHdvcnRoCj4+Pj4+
Pj4gaXQuIChJdCBzZWVtcyB0aGV5IGFtb3VudCB0byBhdCBsZWFzdCBhcyBtdWNoIGFzIHRoZSBj
aGFuZ2VzIGFkdmVydGlzZWQKPj4+Pj4+PiBpbiB0aGUgcGF0Y2ggZGVzY3JpcHRpb24uKQo+Pj4+
Pj4+Cj4+Pj4+Pj4gT3RoZXIgb3BpbmlvbnM/Cj4+Pj4+Pgo+Pj4+Pj4gQWdyZWVkLiBJdCBmZWVs
cyBraW5kIG9mIHJhbmRvbS4gTWF5YmUganVzdCBkbyB0aGUgZmlyc3QgbGluZSAobW92ZSBrdm1f
cnVuIGZyb20gdGhlCj4+Pj4+PiBmdW5jdGlvbiBwYXJhbWV0ZXIgbGlzdCBpbnRvIHRoZSB2YXJp
YWJsZSBkZWNsYXJhdGlvbik/IE5vdCBzdXJlIGlmIHRoaXMgaXMgYmV0dGVyLgo+Pj4+Pj4gwqAg
Cj4+Pj4+Cj4+Pj4+IFRoZXJlJ3MgbW9yZSBpbiB0aGlzIHBhdGNoIHRoYXQgSSBjdXQuLi4gYnV0
IEkgdGhpbmsganVzdCBtb3ZpbmcKPj4+Pj4ga3ZtX3J1biBmcm9tIHRoZSBwYXJhbWV0ZXIgbGlz
dCB3b3VsZCBiZSBtdWNoIGxlc3MgZGlzcnVwdGl2ZS4KPj4+Pj4gwqDCoCAKPj4+Pgo+Pj4+IEkg
dGhpbmsgdGhlcmUgYXJlIHR3byBraW5kcyBvZiBjb2RlKGB2Y3B1LT5ydW4tPmAgYW5kIGBrdm1f
cnVuLT5gKSwgYnV0Cj4+Pj4gdGhlcmUgd2lsbCBiZSBtb3JlIGRpc3J1cHRpdmUsIG5vdCBsZXNz
Lgo+Pj4KPj4+IEkganVzdCBmYWlsIHRvIHNlZSB0aGUgYmVuZWZpdDsgc3VyZSwga3ZtX3J1bi0+
IGlzIGNvbnZlbmllbnQsIGJ1dCB0aGUKPj4+IGN1cnJlbnQgY29kZSBpcyBqdXN0IGZpbmUsIGFu
ZCBhbnkgcmV3b3JrIHNob3VsZCBiZSBiYWxhbmNlZCBhZ2FpbnN0Cj4+PiB0aGUgY29zdCAoZS5n
LiBjbHV0dGVyaW5nIGdpdCBhbm5vdGF0ZSkuCj4+Pgo+Pgo+PiBjbHV0dGVyaW5nIGdpdCBhbm5v
dGF0ZSA/IERvZXMgaXQgbWVhbiBGaXggeHh4eCAoImNvbW1lbnQiKS4gSXMgaXQgcG9zc2libGUg
dG8gc29sdmUgdGhpcyBwcm9ibGVtIGJ5IHNwbGl0dGluZyB0aGlzIHBhdGNoPwo+IAo+IE5vIGl0
cyBhYm91dCBicmVha2luZyBnaXQgYmxhbWUgKGFuZCBidWdmaXggYmFja3BvcnRzKSBmb3IganVz
dCBhIGNvc21ldGljIGltcHJvdmVtZW50LgoKSXQgY291bGQgYmUgc2xpZ2h0bHkgbW9yZSB0aGFu
IGEgY29zbWV0aWMgaW1wcm92ZW1lbnQgKGRlcGVuZGluZyBvbiB0aGUKc21hcnRuZXNzIG9mIHRo
ZSBjb21waWxlcik6IHZjcHUtPnJ1bi0+IGFyZSB0d28gZGVyZWZlcmVuY2VzLCB3aGlsZQprdm1f
cnVuLT4gaXMgb25seSBvbmUgZGVyZWZlcmVuY2UuIFNvIGl0IGNvdWxkIGJlIHNsaWdodGx5IG1v
cmUgY29tcGFjdAphbmQgZmFzdGVyIGNvZGUuCgogVGhvbWFzCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
