Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08854E9E76
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 16:09:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oFBKTnQwb2uSHTLZkMtHq87G4oYAi8CYSI9aiQYFp04=; b=o1kreo+h3Ragdgm4342hM9YRs
	Gq/pKmkdFnb/wqpai2bUwEskJaaPaSSKkO7GWzJbQyeNmWC9qsJiRuRnRw2OsR2Pl+zEc2TVhDnsA
	S7IxrJ4scKrnHqWMppls0j4jsB/ztO3bCpOR9hB5Yk/qBtaHQNbGUJ9/O2SN4THOzZwdXZKe+FtDO
	yO4QncpFgMJlq0qsNNtqbCLqpNlgVJhDt1pbGqqDwTJ2hAPO9X6gkFjlxdP2q35s0BJVKsp4jvF5g
	PTxcLqRfTjclfWmvWODu1n3Dg1go6H7VeLNix/Ml9mcmxri8KqrtSq4oUtcjirBrLDZ1njr1CNkwZ
	DacTkoorw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpal-0005MM-GJ; Wed, 30 Oct 2019 15:08:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpaQ-0005I4-Sj
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 15:08:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 177461FB;
 Wed, 30 Oct 2019 08:08:38 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4916C3F6C4;
 Wed, 30 Oct 2019 08:08:37 -0700 (PDT)
Subject: =?UTF-8?Q?Re=3a_=e2=9d=8c_FAIL=3a_Test_report_for_kernel_5=2e4=2e0-?=
 =?UTF-8?Q?rc5-34072e5=2ecki_=28arm-next=29?=
From: Robin Murphy <robin.murphy@arm.com>
To: Will Deacon <will@kernel.org>, catalin marinas <catalin.marinas@arm.com>
References: <cki.B60F5FC773.1FIT7OYFJ2@redhat.com>
 <1219834772.9691319.1572429836705.JavaMail.zimbra@redhat.com>
 <20191030100747.GB17773@willie-the-truck>
 <20191030104520.GC17773@willie-the-truck>
 <4c22a384-ce30-8879-19a5-9ec6743268dc@arm.com>
Message-ID: <b8a59be8-e0dd-3c99-09bf-f578b449b77f@arm.com>
Date: Wed, 30 Oct 2019 15:08:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <4c22a384-ce30-8879-19a5-9ec6743268dc@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_080839_077955_01CA2B22 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arm-kernel@lists.infradead.org, Memory Management <mm-qe@redhat.com>,
 Jan Stancek <jstancek@redhat.com>, CKI Project <cki-project@redhat.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzAvMTAvMjAxOSAxMTo0MiwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDMwLzEwLzIwMTkg
MTA6NDUsIFdpbGwgRGVhY29uIHdyb3RlOgo+PiBbK1JvYmluIGFzIEZZSV0KPj4KPj4gT24gV2Vk
LCBPY3QgMzAsIDIwMTkgYXQgMTA6MDc6NDdBTSArMDAwMCwgV2lsbCBEZWFjb24gd3JvdGU6Cj4+
PiBPbiBXZWQsIE9jdCAzMCwgMjAxOSBhdCAwNjowMzo1NkFNIC0wNDAwLCBKYW4gU3RhbmNlayB3
cm90ZToKPj4+Pj4gV2UgcmFuIGF1dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQgZnJv
bSB0aGlzIGtlcm5lbCB0cmVlOgo+Pj4+Pgo+Pj4+PiDCoMKgwqDCoMKgwqDCoCBLZXJuZWwgcmVw
bzoKPj4+Pj4gwqDCoMKgwqDCoMKgwqAgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51
eC9rZXJuZWwvZ2l0L2FybTY0L2xpbnV4LmdpdAo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgQ29tbWl0OiAzNDA3MmU1MmEzZmMgLSBNZXJnZSByZW1vdGUtdHJhY2tpbmcgYnJhbmNoCj4+
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAnYXJtNjQvZm9yLW5leHQvbWVtb3J5LWhvdHJl
bW92ZScgaW50byBmb3Ita2VybmVsY2kKPj4+Pj4KPj4+Pj4gVGhlIHJlc3VsdHMgb2YgdGhlc2Ug
YXV0b21hdGVkIHRlc3RzIGFyZSBwcm92aWRlZCBiZWxvdy4KPj4+Pj4KPj4+Pj4gwqDCoMKgwqAg
T3ZlcmFsbCByZXN1bHQ6IEZBSUxFRCAoc2VlIGRldGFpbHMgYmVsb3cpCj4+Pj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIE1lcmdlOiBPSwo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IENvbXBpbGU6IE9LCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFRlc3RzOiBGQUlM
RUQKPj4+Pj4KPj4+Pj4gQWxsIGtlcm5lbCBiaW5hcmllcywgY29uZmlnIGZpbGVzLCBhbmQgbG9n
cyBhcmUgYXZhaWxhYmxlIGZvciAKPj4+Pj4gZG93bmxvYWQgaGVyZToKPj4+Pj4KPj4+Pj4gwqDC
oCBodHRwczovL2FydGlmYWN0cy5ja2ktcHJvamVjdC5vcmcvcGlwZWxpbmVzLzI1NTM2Mgo+Pj4+
Pgo+Pj4+PiBPbmUgb3IgbW9yZSBrZXJuZWwgdGVzdHMgZmFpbGVkOgo+Pj4+Pgo+Pj4+PiDCoMKg
wqDCoCBhYXJjaDY0Ogo+Pj4+PiDCoMKgwqDCoMKgIOKdjCBMVFAgbGl0ZQo+Pj4+Cj4+Pj4gV2hh
dCdzIGZhaWxpbmcgaXMgcHJlYWR2Mi9yZWFkdiBvdmVyIFBST1RfTk9ORSBtYXBwaW5nOgo+Pj4+
Cj4+Pj4gW3BpZMKgIDI0MjRdIG1tYXAoTlVMTCwgMSwgUFJPVF9OT05FLCBNQVBfUFJJVkFURXxN
QVBfQU5PTllNT1VTLCAwLCAKPj4+PiAwKSA9IDB4M2ZmN2Y4YjAwMDAKPj4+PiBbcGlkwqAgMjQy
NF0gcHJlYWR2MigzLCBbe2lvdl9iYXNlPTB4M2ZmN2Y4YjAwMDAsIGlvdl9sZW49NjR9XSwgMSwg
MCwgCj4+Pj4gMCkgPSAxNgo+Pj4+Cj4+Pj4gVGVzdCBleHBlY3RzIEVGQVVMVC4KPj4+Pgo+Pj4+
IEl0IHNlZW1zIHNwZWNpZmljIHRvIGFybTY0L2xpbnV4LmdpdCBhcyBJIGRvIG5vdCBzZWUgaXQg
ZmFpbCBvbgo+Pj4+IExpbnVzJyBtYXN0ZXIgKHY1LjQtcmM1LTM0LWcyM2ZkYjE5OGFlODEpLgo+
Pj4KPj4+IEFoYSwgb3VyIGVtYWlscyBjcm9zc2VkIHBhdGhzLiBUaGFua3MsIEknbGwgdHJ5IHRv
IHJlcHJvZHVjZSB0aGUgZmFpbHVyZQo+Pj4gbG9jYWxseS4KPj4KPj4gTG9va3MgbGlrZSB0aGUg
cmV3cml0ZSBvZiBvdXIgc3RyaW5nIHJvdXRpbmVzIGhhcyBicm9rZW4gdGhlIHJldHVybiB2YWx1
ZQo+PiBmb3Igc29tZSBzeXNjYWxsczoKPiAKPiBVcmdoLi4uIFRoYW5rcyBmb3IgdGhlIHJlcG9y
dC4gSSB3YXMgcHJldHR5IHN1cmUgd2UgaGFkIHRoZSBmYXVsdCAKPiBoYW5kbGVyIGNvcnJlY3Qs
IHNvIEknbGwgZmlyZSB1cCB0aGUgZGVidWdnZXIgYW5kIHRyeSB0byBmaWd1cmUgb3V0IAo+IHdo
YXQncyB1cC4KCk9LLCB3aGF0J3MgdXAgaXMgdGhhdCB3ZSBkZXNpZ25lZCB0aGUgaW1wcm92ZWQg
Zml4dXAgbG9naWMgdG8gc3VwcG9ydCAKb2Zmc2V0IGFkZHJlc3NpbmcgaW4gdGhlIGltcGxpY2l0
IGNvbnRleHQgb2YgdGhlIGV4aXN0aW5nIGNvcHkgdGVtcGxhdGUsIAp3aGVyZSBhY2Nlc3NlcyB3
ZXJlIGFsd2F5cyBpbiBzdHJpY3RseSBpbmNyZWFzaW5nIG9yZGVyLiBBbmQgdGhlbiB3ZSAKYWxz
byBwbHVtYmVkIGluIGEgY2xldmVyIG5ldyB0ZW1wbGF0ZSB3aGljaCBpbiBjZXJ0YWluIGNhc2Vz
IGRvZXMgc29tZSAKb3V0LW9mLW9yZGVyIGNvcHlpbmcgdG8gc3VwcG9ydCBvdmVybGFwcyA6KAoK
SWYgYSBub256ZXJvIHJldHVybiBmcm9tIGNvcHlfKl91c2VyKCkgaXMgYWxsb3dlZCB0byB1bmRl
cmVzdGltYXRlIGhvdyAKbWFueSBieXRlcyB3ZXJlIGFjdHVhbGx5IGNvcGllZCwgdGhlbiBJIHRo
aW5rIHRoZXJlIHNob3VsZCBiZSBhIApyZWxhdGl2ZWx5IHNpbXBsZSBmaXg7IGlmIGl0IG11c3Qg
YWx3YXlzIGJlIGV4YWN0LCB0aGVuIEkndmUgZ290IHNvbWUgCm1vcmUgdGhpbmtpbmcgdG8gZG8u
Li4KClJvYmluLgoKPj4gcmVhZHYwMsKgwqDCoMKgIDLCoCBURkFJTMKgIDrCoCByZWFkdjAyLmM6
MTQ1OiBFcnJvcjogcmVhZHYgcmV0dXJuZWQgYSAKPj4gcG9zaXRpdmUgdmFsdWUKPj4gcHJlYWR2
MjAyLmM6ODc6IEZBSUw6IHByZWFkdjIoKSBmYWlsZWQgdW5leHBlY3RlZGx5LCBleHBlY3RlZCBF
RkFVTFQ6IAo+PiBTVUNDRVNTICgwKQo+PiBwcmVhZHYyMDIuYzo4NzogRkFJTDogcHJlYWR2Migp
IGZhaWxlZCB1bmV4cGVjdGVkbHksIGV4cGVjdGVkIEVGQVVMVDogCj4+IFNVQ0NFU1MgKDApCj4+
Cj4+IFdlJ2xsIGRyb3AgdGhlIGZvci1uZXh0L2NvcnRleC1zdHJpbmdzIGJyYW5jaCBmb3Igbm93
Lgo+Pgo+PiBUaGFua3MsCj4+Cj4+IFdpbGwKPj4KPiAKPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
