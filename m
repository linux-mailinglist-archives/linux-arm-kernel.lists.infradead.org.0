Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C46341B5A1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 13:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6cArxBXxBVhOX0xi0rGR2Qsol7NhGtgddxXnY48if38=; b=aOJsId2es/0sPXuRdzVZttf+D
	s4zAbuwwB32bEm9xJXPX3faAlaqvwWnTkf3xWIk7pJVDLrB2WVKATLD6vQBl2h8ugk5XWAIfvs0QA
	tSygC/YHG0u3FGAM8/1JcmM0zNu4SQwXkFyehOMZLw2HjkJcjO/1xuKb0Wfp3Vdk8xg0/8MOKLe3F
	39uMtwEZthQZcu9yrJdsuEzL+sNeXXL5i79BF3B7jNIlkbRw1RPuE7G2CmBeSeJ0UKPWJjtIyCncg
	X0iD/AAN6k/SaQbK9/SoqtwMR1ppMmlhzG4IAScQmQmW8VA4Cz/guPMj2x3P9osi6n6Z3bmJHpc+h
	wBlK4W3vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRZld-0004YQ-S0; Thu, 23 Apr 2020 11:11:41 +0000
Received: from out30-132.freemail.mail.aliyun.com ([115.124.30.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRZlT-0004X5-6a
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 11:11:32 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R141e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04407;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=36; SR=0;
 TI=SMTPD_---0TwQiqf0_1587640283; 
Received: from 30.27.118.66(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0TwQiqf0_1587640283) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 23 Apr 2020 19:11:25 +0800
Subject: Re: [PATCH v2 1/7] KVM: s390: clean up redundant 'kvm_run' parameters
To: Christian Borntraeger <borntraeger@de.ibm.com>,
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
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <9a477117-7295-c4f4-097f-bfb146670435@linux.alibaba.com>
Date: Thu, 23 Apr 2020 19:11:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1d73b700-4a20-3d7a-66d1-29b5afa03f4d@de.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_041131_415798_E877B587 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.132 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
 mingo@redhat.com, julien.thierry.kdev@gmail.com, thuth@redhat.com,
 gor@linux.ibm.com, suzuki.poulose@arm.com, kvm-ppc@vger.kernel.org,
 bp@alien8.de, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 jmattson@google.com, tsbogend@alpha.franken.de, christoffer.dall@arm.com,
 sean.j.christopherson@intel.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, mpe@ellerman.id.au, pbonzini@redhat.com,
 vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDIwLzQvMjMgMTk6MDAsIENocmlzdGlhbiBCb3JudHJhZWdlciB3cm90ZToKPiAKPiAK
PiBPbiAyMy4wNC4yMCAxMjo1OCwgVGlhbmppYSBaaGFuZyB3cm90ZToKPj4KPj4KPj4gT24gMjAy
MC80LzIzIDE4OjM5LCBDb3JuZWxpYSBIdWNrIHdyb3RlOgo+Pj4gT24gVGh1LCAyMyBBcHIgMjAy
MCAxMTowMTo0MyArMDgwMAo+Pj4gVGlhbmppYSBaaGFuZyA8dGlhbmppYS56aGFuZ0BsaW51eC5h
bGliYWJhLmNvbT4gd3JvdGU6Cj4+Pgo+Pj4+IE9uIDIwMjAvNC8yMyAwOjA0LCBDb3JuZWxpYSBI
dWNrIHdyb3RlOgo+Pj4+PiBPbiBXZWQsIDIyIEFwciAyMDIwIDE3OjU4OjA0ICswMjAwCj4+Pj4+
IENocmlzdGlhbiBCb3JudHJhZWdlciA8Ym9ybnRyYWVnZXJAZGUuaWJtLmNvbT4gd3JvdGU6Cj4+
Pj4+ICAgIAo+Pj4+Pj4gT24gMjIuMDQuMjAgMTU6NDUsIENvcm5lbGlhIEh1Y2sgd3JvdGU6Cj4+
Pj4+Pj4gT24gV2VkLCAyMiBBcHIgMjAyMCAyMDo1ODowNCArMDgwMAo+Pj4+Pj4+IFRpYW5qaWEg
WmhhbmcgPHRpYW5qaWEuemhhbmdAbGludXguYWxpYmFiYS5jb20+IHdyb3RlOgo+Pj4+Pj4+ICAg
ICAgIAo+Pj4+Pj4+PiBJbiB0aGUgY3VycmVudCBrdm0gdmVyc2lvbiwgJ2t2bV9ydW4nIGhhcyBi
ZWVuIGluY2x1ZGVkIGluIHRoZSAna3ZtX3ZjcHUnCj4+Pj4+Pj4+IHN0cnVjdHVyZS4gRWFybGll
ciB0aGFuIGhpc3RvcmljYWwgcmVhc29ucywgbWFueSBrdm0tcmVsYXRlZCBmdW5jdGlvbgo+Pj4+
Pj4+Cj4+Pj4+Pj4gcy9FYXJsaWVyIHRoYW4vRm9yLyA/Cj4+Pj4+Pj4gICAgICAgCj4+Pj4+Pj4+
IHBhcmFtZXRlcnMgcmV0YWluIHRoZSAna3ZtX3J1bicgYW5kICdrdm1fdmNwdScgcGFyYW1ldGVy
cyBhdCB0aGUgc2FtZSB0aW1lLgo+Pj4+Pj4+PiBUaGlzIHBhdGNoIGRvZXMgYSB1bmlmaWVkIGNs
ZWFudXAgb2YgdGhlc2UgcmVtYWluaW5nIHJlZHVuZGFudCBwYXJhbWV0ZXJzLgo+Pj4+Pj4+Pgo+
Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBUaWFuamlhIFpoYW5nIDx0aWFuamlhLnpoYW5nQGxpbnV4
LmFsaWJhYmEuY29tPgo+Pj4+Pj4+PiAtLS0KPj4+Pj4+Pj4gIMKgwqAgYXJjaC9zMzkwL2t2bS9r
dm0tczM5MC5jIHwgMzcgKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQo+Pj4+
Pj4+PiAgwqDCoCAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25z
KC0pCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL3MzOTAva3ZtL2t2bS1zMzkw
LmMgYi9hcmNoL3MzOTAva3ZtL2t2bS1zMzkwLmMKPj4+Pj4+Pj4gaW5kZXggZTMzNWE3ZTVlYWQ3
Li5kN2JiMmU3YTA3ZmYgMTAwNjQ0Cj4+Pj4+Pj4+IC0tLSBhL2FyY2gvczM5MC9rdm0va3ZtLXMz
OTAuYwo+Pj4+Pj4+PiArKysgYi9hcmNoL3MzOTAva3ZtL2t2bS1zMzkwLmMKPj4+Pj4+Pj4gQEAg
LTQxNzYsOCArNDE3Niw5IEBAIHN0YXRpYyBpbnQgX192Y3B1X3J1bihzdHJ1Y3Qga3ZtX3ZjcHUg
KnZjcHUpCj4+Pj4+Pj4+ICDCoMKgwqDCoMKgwqAgcmV0dXJuIHJjOwo+Pj4+Pj4+PiAgwqDCoCB9
Cj4+Pj4+Pj4+ICDCoMKgIC1zdGF0aWMgdm9pZCBzeW5jX3JlZ3NfZm10MihzdHJ1Y3Qga3ZtX3Zj
cHUgKnZjcHUsIHN0cnVjdCBrdm1fcnVuICprdm1fcnVuKQo+Pj4+Pj4+PiArc3RhdGljIHZvaWQg
c3luY19yZWdzX2ZtdDIoc3RydWN0IGt2bV92Y3B1ICp2Y3B1KQo+Pj4+Pj4+PiAgwqDCoCB7Cj4+
Pj4+Pj4+ICvCoMKgwqAgc3RydWN0IGt2bV9ydW4gKmt2bV9ydW4gPSB2Y3B1LT5ydW47Cj4+Pj4+
Pj4+ICDCoMKgwqDCoMKgwqAgc3RydWN0IHJ1bnRpbWVfaW5zdHJfY2IgKnJpY2NiOwo+Pj4+Pj4+
PiAgwqDCoMKgwqDCoMKgIHN0cnVjdCBnc19jYiAqZ3NjYjsKPj4+Pj4+Pj4gIMKgwqAgQEAgLTQy
MzUsNyArNDIzNiw3IEBAIHN0YXRpYyB2b2lkIHN5bmNfcmVnc19mbXQyKHN0cnVjdCBrdm1fdmNw
dSAqdmNwdSwgc3RydWN0IGt2bV9ydW4gKmt2bV9ydW4pCj4+Pj4+Pj4+ICDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB9Cj4+Pj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAodmNwdS0+YXJjaC5n
c19lbmFibGVkKSB7Cj4+Pj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGN1cnJl
bnQtPnRocmVhZC5nc19jYiA9IChzdHJ1Y3QgZ3NfY2IgKikKPj4+Pj4+Pj4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJnZjcHUtPnJ1bi0+cy5yZWdzLmdz
Y2I7Cj4+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICZrdm1fcnVuLT5zLnJlZ3MuZ3NjYjsKPj4+Pj4+Pgo+Pj4+Pj4+IE5vdCBzdXJlIGlmIHRo
ZXNlIGNoYW5nZXMgKHZjcHUtPnJ1bi0+ID0+IGt2bV9ydW4tPikgYXJlIHJlYWxseSB3b3J0aAo+
Pj4+Pj4+IGl0LiAoSXQgc2VlbXMgdGhleSBhbW91bnQgdG8gYXQgbGVhc3QgYXMgbXVjaCBhcyB0
aGUgY2hhbmdlcyBhZHZlcnRpc2VkCj4+Pj4+Pj4gaW4gdGhlIHBhdGNoIGRlc2NyaXB0aW9uLikK
Pj4+Pj4+Pgo+Pj4+Pj4+IE90aGVyIG9waW5pb25zPwo+Pj4+Pj4KPj4+Pj4+IEFncmVlZC4gSXQg
ZmVlbHMga2luZCBvZiByYW5kb20uIE1heWJlIGp1c3QgZG8gdGhlIGZpcnN0IGxpbmUgKG1vdmUg
a3ZtX3J1biBmcm9tIHRoZQo+Pj4+Pj4gZnVuY3Rpb24gcGFyYW1ldGVyIGxpc3QgaW50byB0aGUg
dmFyaWFibGUgZGVjbGFyYXRpb24pPyBOb3Qgc3VyZSBpZiB0aGlzIGlzIGJldHRlci4KPj4+Pj4+
ICAgIAo+Pj4+Pgo+Pj4+PiBUaGVyZSdzIG1vcmUgaW4gdGhpcyBwYXRjaCB0aGF0IEkgY3V0Li4u
IGJ1dCBJIHRoaW5rIGp1c3QgbW92aW5nCj4+Pj4+IGt2bV9ydW4gZnJvbSB0aGUgcGFyYW1ldGVy
IGxpc3Qgd291bGQgYmUgbXVjaCBsZXNzIGRpc3J1cHRpdmUuCj4+Pj4+ICAgICAKPj4+Pgo+Pj4+
IEkgdGhpbmsgdGhlcmUgYXJlIHR3byBraW5kcyBvZiBjb2RlKGB2Y3B1LT5ydW4tPmAgYW5kIGBr
dm1fcnVuLT5gKSwgYnV0Cj4+Pj4gdGhlcmUgd2lsbCBiZSBtb3JlIGRpc3J1cHRpdmUsIG5vdCBs
ZXNzLgo+Pj4KPj4+IEkganVzdCBmYWlsIHRvIHNlZSB0aGUgYmVuZWZpdDsgc3VyZSwga3ZtX3J1
bi0+IGlzIGNvbnZlbmllbnQsIGJ1dCB0aGUKPj4+IGN1cnJlbnQgY29kZSBpcyBqdXN0IGZpbmUs
IGFuZCBhbnkgcmV3b3JrIHNob3VsZCBiZSBiYWxhbmNlZCBhZ2FpbnN0Cj4+PiB0aGUgY29zdCAo
ZS5nLiBjbHV0dGVyaW5nIGdpdCBhbm5vdGF0ZSkuCj4+Pgo+Pgo+PiBjbHV0dGVyaW5nIGdpdCBh
bm5vdGF0ZSA/IERvZXMgaXQgbWVhbiBGaXggeHh4eCAoImNvbW1lbnQiKS4gSXMgaXQgcG9zc2li
bGUgdG8gc29sdmUgdGhpcyBwcm9ibGVtIGJ5IHNwbGl0dGluZyB0aGlzIHBhdGNoPwo+IAo+IE5v
IGl0cyBhYm91dCBicmVha2luZyBnaXQgYmxhbWUgKGFuZCBidWdmaXggYmFja3BvcnRzKSBmb3Ig
anVzdCBhIGNvc21ldGljIGltcHJvdmVtZW50Lgo+IEFuZCBJIGFncmVlIHdpdGggQ29ubnk6IHRo
ZSBjb3N0IGlzIGhpZ2hlciB0aGFuIHRoZSBiZW5lZml0Lgo+IAoKSSB3aWxsIG1ha2UgYSBmaXgg
aW4gdGhlIHYzIHZlcnNpb24uIEhlbHAgdG8gc2VlIGlmIHRoZXJlIGFyZSBwcm9ibGVtcyAKd2l0
aCB0aGUgbmV4dCBmZXcgcGF0Y2hlcy4KClRoYW5rcywKVGlhbmppYQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
