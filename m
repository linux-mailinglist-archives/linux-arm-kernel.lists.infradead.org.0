Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A38C1A6477
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 11:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kcc8etFcmfEukny5OFxSYemOW+R6xoP5KSML3uvN/PA=; b=pih9UcU2N+U0azKZn10vb9fJz
	ZjIxYGYlIlhAItn1xzhoWD3qjc1fsLTcjghm4vw7H998nPleuuvkEZiPvuwMNAldEbA0zBbRmHbu5
	DQfPDrgQLDCjLF31N4N+tkjqolGPFWadlfcMBawzXJuIaSmi5eEkEJqIH543fJ8xEALSigBJxMMEK
	TS0yqeAssKs0T/3OqVRFoNE+5elsmAqtySD8FihgVL7wKKBvmjL+rpq3Wj9grsAxIZrn4kIIEEobP
	BDjkaLIawHiv3/Zm6HqFnRcUVrIgIfFF5rFXgWhHy61lDSKtGe2zZfOc7AHjAQn6Va5hxRyEyWgsB
	kBc1wTAuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNv4M-0001PN-5k; Mon, 13 Apr 2020 09:07:54 +0000
Received: from out4436.biz.mail.alibaba.com ([47.88.44.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNv4D-0001Od-JI
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 09:07:47 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R671e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e01355;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=19; SR=0;
 TI=SMTPD_---0TvMk-zp_1586768848; 
Received: from 30.27.118.45(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0TvMk-zp_1586768848) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 13 Apr 2020 17:07:29 +0800
Subject: Re: [PATCH] KVM: Optimize kvm_arch_vcpu_ioctl_run function
To: Marc Zyngier <maz@kernel.org>
References: <20200413034523.110548-1-tianjia.zhang@linux.alibaba.com>
 <17097df45c7fe76ee3c09ac180b844d2@kernel.org>
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <a06c5435-8790-a970-519b-92ea4ee70f7d@linux.alibaba.com>
Date: Mon, 13 Apr 2020 17:07:28 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <17097df45c7fe76ee3c09ac180b844d2@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_020745_770752_955FB6AF 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -8.7 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [47.88.44.36 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: wanpengli@tencent.com, james.morse@arm.com, kvm@vger.kernel.org,
 suzuki.poulose@arm.com, joro@8bytes.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, sean.j.christopherson@intel.com,
 kvmarm@lists.cs.columbia.edu, mingo@redhat.com, bp@alien8.de,
 linux-arm-kernel@lists.infradead.org, hpa@zytor.com, pbonzini@redhat.com,
 vkuznets@redhat.com, tglx@linutronix.de, julien.thierry.kdev@gmail.com,
 jmattson@google.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDIwLzQvMTMgMTY6NTYsIE1hcmMgWnluZ2llciB3cm90ZToKPiBUaWFuamlhLAo+IAo+
IE9uIDIwMjAtMDQtMTMgMDQ6NDUsIFRpYW5qaWEgWmhhbmcgd3JvdGU6Cj4+IGt2bV9hcmNoX3Zj
cHVfaW9jdGxfcnVuKCkgaXMgb25seSBjYWxsZWQgaW4gdGhlIGZpbGUga3ZtX21haW4uYywKPj4g
d2hlcmUgdmNwdS0+cnVuIGlzIHRoZSBrdm1fcnVuIHBhcmFtZXRlciwgc28gaXQgaGFzIGJlZW4g
cmVwbGFjZWQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFRpYW5qaWEgWmhhbmcgPHRpYW5qaWEuemhh
bmdAbGludXguYWxpYmFiYS5jb20+Cj4+IC0tLQo+PiDCoGFyY2gveDg2L2t2bS94ODYuYyB8IDgg
KysrKy0tLS0KPj4gwqB2aXJ0L2t2bS9hcm0vYXJtLmMgfCAyICstCj4+IMKgMiBmaWxlcyBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9h
cmNoL3g4Ni9rdm0veDg2LmMgYi9hcmNoL3g4Ni9rdm0veDg2LmMKPj4gaW5kZXggM2JmMmVjYWZk
MDI3Li43MGUzZjRhYmJkNGQgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gveDg2L2t2bS94ODYuYwo+PiAr
KysgYi9hcmNoL3g4Ni9rdm0veDg2LmMKPj4gQEAgLTg3MjYsMTggKzg3MjYsMTggQEAgaW50IGt2
bV9hcmNoX3ZjcHVfaW9jdGxfcnVuKHN0cnVjdCBrdm1fdmNwdQo+PiAqdmNwdSwgc3RydWN0IGt2
bV9ydW4gKmt2bV9ydW4pCj4+IMKgwqDCoMKgwqDCoMKgwqAgciA9IC1FQUdBSU47Cj4+IMKgwqDC
oMKgwqDCoMKgwqAgaWYgKHNpZ25hbF9wZW5kaW5nKGN1cnJlbnQpKSB7Cj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByID0gLUVJTlRSOwo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2Y3B1
LT5ydW4tPmV4aXRfcmVhc29uID0gS1ZNX0VYSVRfSU5UUjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAga3ZtX3J1bi0+ZXhpdF9yZWFzb24gPSBLVk1fRVhJVF9JTlRSOwo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgKyt2Y3B1LT5zdGF0LnNpZ25hbF9leGl0czsKPj4gwqDCoMKgwqDCoMKg
wqDCoCB9Cj4+IMKgwqDCoMKgwqDCoMKgwqAgZ290byBvdXQ7Cj4+IMKgwqDCoMKgIH0KPj4KPj4g
LcKgwqDCoCBpZiAodmNwdS0+cnVuLT5rdm1fdmFsaWRfcmVncyAmIH5LVk1fU1lOQ19YODZfVkFM
SURfRklFTERTKSB7Cj4+ICvCoMKgwqAgaWYgKGt2bV9ydW4tPmt2bV92YWxpZF9yZWdzICYgfktW
TV9TWU5DX1g4Nl9WQUxJRF9GSUVMRFMpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoCByID0gLUVJTlZB
TDsKPj4gwqDCoMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKPj4gwqDCoMKgwqAgfQo+Pgo+PiAtwqDC
oMKgIGlmICh2Y3B1LT5ydW4tPmt2bV9kaXJ0eV9yZWdzKSB7Cj4+ICvCoMKgwqAgaWYgKGt2bV9y
dW4tPmt2bV9kaXJ0eV9yZWdzKSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqAgciA9IHN5bmNfcmVncyh2
Y3B1KTsKPj4gwqDCoMKgwqDCoMKgwqDCoCBpZiAociAhPSAwKQo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZ290byBvdXQ7Cj4+IEBAIC04NzY3LDcgKzg3NjcsNyBAQCBpbnQga3ZtX2FyY2hf
dmNwdV9pb2N0bF9ydW4oc3RydWN0IGt2bV92Y3B1Cj4+ICp2Y3B1LCBzdHJ1Y3Qga3ZtX3J1biAq
a3ZtX3J1bikKPj4KPj4gwqBvdXQ6Cj4+IMKgwqDCoMKgIGt2bV9wdXRfZ3Vlc3RfZnB1KHZjcHUp
Owo+PiAtwqDCoMKgIGlmICh2Y3B1LT5ydW4tPmt2bV92YWxpZF9yZWdzKQo+PiArwqDCoMKgIGlm
IChrdm1fcnVuLT5rdm1fdmFsaWRfcmVncykKPj4gwqDCoMKgwqDCoMKgwqDCoCBzdG9yZV9yZWdz
KHZjcHUpOwo+PiDCoMKgwqDCoCBwb3N0X2t2bV9ydW5fc2F2ZSh2Y3B1KTsKPj4gwqDCoMKgwqAg
a3ZtX3NpZ3NldF9kZWFjdGl2YXRlKHZjcHUpOwo+PiBkaWZmIC0tZ2l0IGEvdmlydC9rdm0vYXJt
L2FybS5jIGIvdmlydC9rdm0vYXJtL2FybS5jCj4+IGluZGV4IDQ4ZDBlYzQ0YWQ3Ny4uYWI5ZDc5
NjZhNGM4IDEwMDY0NAo+PiAtLS0gYS92aXJ0L2t2bS9hcm0vYXJtLmMKPj4gKysrIGIvdmlydC9r
dm0vYXJtL2FybS5jCj4+IEBAIC02NTksNyArNjU5LDcgQEAgaW50IGt2bV9hcmNoX3ZjcHVfaW9j
dGxfcnVuKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSwKPj4gc3RydWN0IGt2bV9ydW4gKnJ1bikKPj4g
wqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+Pgo+PiDCoMKgwqDCoCBpZiAocnVuLT5leGl0
X3JlYXNvbiA9PSBLVk1fRVhJVF9NTUlPKSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCByZXQgPSBrdm1f
aGFuZGxlX21taW9fcmV0dXJuKHZjcHUsIHZjcHUtPnJ1bik7Cj4+ICvCoMKgwqDCoMKgwqDCoCBy
ZXQgPSBrdm1faGFuZGxlX21taW9fcmV0dXJuKHZjcHUsIHJ1bik7Cj4+IMKgwqDCoMKgwqDCoMKg
wqAgaWYgKHJldCkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+IMKg
wqDCoMKgIH0KPiAKPiBEbyB5b3UgaGF2ZSBhbnkgbnVtYmVyIHN1cHBvcnRpbmcgdGhlIGlkZWEg
dGhhdCB5b3UgYXJlIG9wdGltaXppbmcgYW55dGhpbmcKPiBoZXJlPyBQZXJmb3JtYW5jZSwgY29k
ZSBzaXplLCByZWdpc3RlciBwcmVzc3VyZSBvciBhbnkgb3RoZXIgcmVsZXZhbnQgCj4gbWV0cmlj
Pwo+IAo+IFRoYW5rcywKPiAKPiAgwqDCoMKgwqDCoMKgwqAgTS4KClRoaXMgaXMgb25seSBhIHNp
bXBsaWZpZWQgaW1wbGVtZW50YXRpb24gb2YgdGhlIGZ1bmN0aW9uLCB0aGUgaW1wYWN0IG9uIApw
ZXJmb3JtYW5jZSBhbmQgcmVnaXN0ZXIgcHJlc3N1cmUgY2FuIGJlIGlnbm9yZWQuCgpUaGFua3Ms
ClRpYW5qaWEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
