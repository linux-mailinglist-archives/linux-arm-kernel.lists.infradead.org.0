Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACE91A9681
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jC9VjcAqcD7UTE8LRfCdlfG1pkI4KpsERv1K6YlYPlA=; b=BOEJV+/LjBlO/d8f0jJ4xpRlo
	gJWPhIN3YAniuYNQ1dMftkbrWupSabhozyNaKHJRju/H5xKkCNleO8rc39cRnNdUDQDkaOxhjYa6Y
	7a+yjAip02uGcTP8FQxGbuZhhKO6J5JZSrOvUDiZv0BD+uEhe0/riHTTsjJMqsi9xRMFVaZlP8ShL
	Egb7YisOpYPsrDemfVwN7AMejVkIT0KopNBJLDnmzcA8KDoLG+LHsmSmB7ZUK01cNGq1vVNHnlV9Z
	9ot8EO+2paFCtWj5S+KDc6xuPPys+NafSoXWzl4PHozVK2kjvaH966tHEgZpkuKbXhCunUuoVHp3s
	n9NazPbXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdRC-0003fB-5Z; Wed, 15 Apr 2020 08:30:26 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdR3-0003eZ-Pw
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:30:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586939413;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JM3vltnSQeQHbyK1dZxQXkvEx4sl9ZGuP7RHLsjmkZo=;
 b=Gy1JelUiEW62GcknI2F4U1MY9rXun7NaXtGlAoeqnRpj73td6V1k84YGZ2TC4dSDVhiYTW
 AvzKi/l22s/pO2cSbijUL0XOVOkwVcwMsyuNn4NvGquSz2TACISolkppTfesR/te00fPtT
 t03cTy68SdKnYszM+Y+FTojMYOJ72Kw=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-295-GwvFOVedNsGaGpc3YZ7qDg-1; Wed, 15 Apr 2020 04:30:10 -0400
X-MC-Unique: GwvFOVedNsGaGpc3YZ7qDg-1
Received: by mail-wm1-f70.google.com with SMTP id b203so4664378wmd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 01:30:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bLmrOkcXJQ/8f3TsPjBB59Qp6PFUF6WHach7rOTidPU=;
 b=qG5FdkHfkXvpY6kftSmHHylorNDEVHknR9kdFCYPsOHl1jXkezsNzJb/YNQTlirUFn
 /FZP+oMtvC+CaBVJn+b1Ys0F/KIkiBP3o9YBSW0ed4gX8kDSqm1KA5wftMiylUdWIa/F
 O8ywG+70dYlkQJMV7vdgxEHR9AZR1pF8ruhvTknTzpKzVWz0JwHi6yivUK7eONAxFL+j
 phi4srcI2kPw/xzbHXJBf1pm5wjAyF/IpnZhNlqWgHSK+2+0uBxg2eXLy/60UxZ7tBww
 Nvqc31o5Y3pQAp7nzGjaR+BztCKlZ1T6UniZGOG8kLvh0u8yDgv7zGpWVOKYm07KBkXJ
 ubcQ==
X-Gm-Message-State: AGi0PuYyCzWs9Kud/sC2VJaXlYHXHVieKEnljk38a4/dAIoLWjJUbGBO
 ivLYVKfK0LIHC2b+0ikmWEQKcAk0zvWNuqivuOfnhHUNdKjprXSBIZf5OVpq8ZplTyhZTLl4oCq
 kepzDhEs+17ROUvRVndzwqOCC1UTLGjJExoA=
X-Received: by 2002:a1c:b445:: with SMTP id d66mr4126792wmf.187.1586939409338; 
 Wed, 15 Apr 2020 01:30:09 -0700 (PDT)
X-Google-Smtp-Source: APiQypI1/GFDfyQOLK5J6+00PCnZPj8fmTN9rFZPV07c4zGKdQlKsQOx+NrwNSeq7rAzMZDiU7ufeQ==
X-Received: by 2002:a1c:b445:: with SMTP id d66mr4126760wmf.187.1586939409106; 
 Wed, 15 Apr 2020 01:30:09 -0700 (PDT)
Received: from localhost.localdomain ([194.230.155.238])
 by smtp.gmail.com with ESMTPSA id g25sm8724053wmh.24.2020.04.15.01.30.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 01:30:08 -0700 (PDT)
Subject: Re: [PATCH v2] kvm_host: unify VM_STAT and VCPU_STAT definitions in a
 single place
To: =?UTF-8?Q?Philippe_Mathieu-Daud=c3=a9?= <f4bug@amsat.org>,
 kvm@vger.kernel.org
References: <20200414155625.20559-1-eesposit@redhat.com>
 <b479e7ff-4534-5ced-e19b-2a2914905a8b@amsat.org>
From: Emanuele Giuseppe Esposito <eesposit@redhat.com>
Message-ID: <992ede27-3eae-f2da-ad38-1d3498853ad2@redhat.com>
Date: Wed, 15 Apr 2020 10:30:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <b479e7ff-4534-5ced-e19b-2a2914905a8b@amsat.org>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_013017_931952_33306607 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kvm-ppc@vger.kernel.org, linux-s390@vger.kernel.org,
 Cornelia Huck <cohuck@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 Janosch Frank <frankja@linux.ibm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, David Hildenbrand <david@redhat.com>,
 linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-mips@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA0LzE1LzIwIDg6MzYgQU0sIFBoaWxpcHBlIE1hdGhpZXUtRGF1ZMOpIHdyb3RlOgo+IE9u
IDQvMTQvMjAgNTo1NiBQTSwgRW1hbnVlbGUgR2l1c2VwcGUgRXNwb3NpdG8gd3JvdGU6Cj4+IFRo
ZSBtYWNyb3MgVk1fU1RBVCBhbmQgVkNQVV9TVEFUIGFyZSByZWR1bmRhbnRseSBpbXBsZW1lbnRl
ZCBpbiBtdWx0aXBsZQo+PiBmaWxlcywgZWFjaCB1c2VkIGJ5IGEgZGlmZmVyZW50IGFyY2hpdGVj
dXJlIHRvIGluaXRpYWxpemUgdGhlIGRlYnVnZnMKPj4gZW50cmllcyBmb3Igc3RhdGlzdGljcy4g
U2luY2UgdGhleSBhbGwgaGF2ZSB0aGUgc2FtZSBwdXJwb3NlLCB0aGV5IGNhbiBiZQo+PiB1bmlm
aWVkIGluIGEgc2luZ2xlIGNvbW1vbiBkZWZpbml0aW9uIGluIGluY2x1ZGUvbGludXgva3ZtX2hv
c3QuaAo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBFbWFudWVsZSBHaXVzZXBwZSBFc3Bvc2l0byA8ZWVz
cG9zaXRAcmVkaGF0LmNvbT4KPj4gLS0tCj4+ICAgYXJjaC9hcm02NC9rdm0vZ3Vlc3QuYyAgICB8
ICAyMyArKy0tLQo+PiAgIGFyY2gvbWlwcy9rdm0vbWlwcy5jICAgICAgfCAgNjEgKysrKysrLS0t
LS0tCj4+ICAgYXJjaC9wb3dlcnBjL2t2bS9ib29rM3MuYyB8ICA2MSArKysrKystLS0tLS0KPj4g
ICBhcmNoL3Bvd2VycGMva3ZtL2Jvb2tlLmMgIHwgIDQxICsrKystLS0tCj4+ICAgYXJjaC9zMzkw
L2t2bS9rdm0tczM5MC5jICB8IDIwMyArKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0t
LS0tLQo+PiAgIGFyY2gveDg2L2t2bS94ODYuYyAgICAgICAgfCAgODAgKysrKysrKy0tLS0tLS0t
Cj4+ICAgaW5jbHVkZS9saW51eC9rdm1faG9zdC5oICB8ICAgNSArCj4+ICAgNyBmaWxlcyBjaGFu
Z2VkLCAyMzEgaW5zZXJ0aW9ucygrKSwgMjQzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9rdm0vZ3Vlc3QuYyBiL2FyY2gvYXJtNjQva3ZtL2d1ZXN0LmMKPj4gaW5k
ZXggMjNlYmU1MTQxMGYwLi44NDE3YjIwMGJlYzkgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQv
a3ZtL2d1ZXN0LmMKPj4gKysrIGIvYXJjaC9hcm02NC9rdm0vZ3Vlc3QuYwo+PiBAQCAtMjksMjAg
KzI5LDE3IEBACj4+ICAgCj4+ICAgI2luY2x1ZGUgInRyYWNlLmgiCj4+ICAgCj4+IC0jZGVmaW5l
IFZNX1NUQVQoeCkgeyAjeCwgb2Zmc2V0b2Yoc3RydWN0IGt2bSwgc3RhdC54KSwgS1ZNX1NUQVRf
Vk0gfQo+PiAtI2RlZmluZSBWQ1BVX1NUQVQoeCkgeyAjeCwgb2Zmc2V0b2Yoc3RydWN0IGt2bV92
Y3B1LCBzdGF0LngpLCBLVk1fU1RBVF9WQ1BVIH0KPj4gLQo+PiAgIHN0cnVjdCBrdm1fc3RhdHNf
ZGVidWdmc19pdGVtIGRlYnVnZnNfZW50cmllc1tdID0gewo+PiAtCVZDUFVfU1RBVChoYWx0X3N1
Y2Nlc3NmdWxfcG9sbCksCj4+IC0JVkNQVV9TVEFUKGhhbHRfYXR0ZW1wdGVkX3BvbGwpLAo+PiAt
CVZDUFVfU1RBVChoYWx0X3BvbGxfaW52YWxpZCksCj4+IC0JVkNQVV9TVEFUKGhhbHRfd2FrZXVw
KSwKPj4gLQlWQ1BVX1NUQVQoaHZjX2V4aXRfc3RhdCksCj4+IC0JVkNQVV9TVEFUKHdmZV9leGl0
X3N0YXQpLAo+PiAtCVZDUFVfU1RBVCh3ZmlfZXhpdF9zdGF0KSwKPj4gLQlWQ1BVX1NUQVQobW1p
b19leGl0X3VzZXIpLAo+PiAtCVZDUFVfU1RBVChtbWlvX2V4aXRfa2VybmVsKSwKPj4gLQlWQ1BV
X1NUQVQoZXhpdHMpLAo+PiArCVZDUFVfU1RBVCgiaGFsdF9zdWNjZXNzZnVsX3BvbGwiLCBoYWx0
X3N1Y2Nlc3NmdWxfcG9sbCksCj4+ICsJVkNQVV9TVEFUKCJoYWx0X2F0dGVtcHRlZF9wb2xsIiwg
aGFsdF9hdHRlbXB0ZWRfcG9sbCksCj4+ICsJVkNQVV9TVEFUKCJoYWx0X3BvbGxfaW52YWxpZCIs
IGhhbHRfcG9sbF9pbnZhbGlkKSwKPj4gKwlWQ1BVX1NUQVQoImhhbHRfd2FrZXVwIiwgaGFsdF93
YWtldXApLAo+PiArCVZDUFVfU1RBVCgiaHZjX2V4aXRfc3RhdCIsIGh2Y19leGl0X3N0YXQpLAo+
PiArCVZDUFVfU1RBVCgid2ZlX2V4aXRfc3RhdCIsIHdmZV9leGl0X3N0YXQpLAo+PiArCVZDUFVf
U1RBVCgid2ZpX2V4aXRfc3RhdCIsIHdmaV9leGl0X3N0YXQpLAo+PiArCVZDUFVfU1RBVCgibW1p
b19leGl0X3VzZXIiLCBtbWlvX2V4aXRfdXNlciksCj4+ICsJVkNQVV9TVEFUKCJtbWlvX2V4aXRf
a2VybmVsIiwgbW1pb19leGl0X2tlcm5lbCksCj4+ICsJVkNQVV9TVEFUKCJleGl0cyIsIGV4aXRz
KSwKPj4gICAJeyBOVUxMIH0KPj4gICB9Owo+IAo+IFBhdGNoIGVhc2lseSByZXZpZXdlZCB3aXRo
IC0td29yZC1kaWZmLgo+IAo+IFsuLi5dCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2t2
bV9ob3N0LmggYi9pbmNsdWRlL2xpbnV4L2t2bV9ob3N0LmgKPj4gaW5kZXggNmQ1OGJlYjY1NDU0
Li4yZTZlYWQ4NzI5NTcgMTAwNjQ0Cj4+IC0tLSBhL2luY2x1ZGUvbGludXgva3ZtX2hvc3QuaAo+
PiArKysgYi9pbmNsdWRlL2xpbnV4L2t2bV9ob3N0LmgKPj4gQEAgLTExMzAsNiArMTEzMCwxMSBA
QCBzdHJ1Y3Qga3ZtX3N0YXRzX2RlYnVnZnNfaXRlbSB7Cj4+ICAgI2RlZmluZSBLVk1fREJHRlNf
R0VUX01PREUoZGJnZnNfaXRlbSkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIFwKPj4gICAJKChkYmdmc19pdGVtKS0+bW9kZSA/IChkYmdmc19pdGVtKS0+bW9kZSA6IDA2
NDQpCj4+ICAgCj4+ICsjZGVmaW5lIFZNX1NUQVQobiwgeCwgLi4uKSAJCQkJCQkJCQkJCQkJICAg
XAo+PiArCXsgbiwgb2Zmc2V0b2Yoc3RydWN0IGt2bSwgc3RhdC54KSwgS1ZNX1NUQVRfVk0sICMj
IF9fVkFfQVJHU19fIH0KPj4gKyNkZWZpbmUgVkNQVV9TVEFUKG4sIHgsIC4uLikJCQkJCQkJCQkJ
CQkgICBcCj4gCj4gTm90IHN1cmUgd2hpbGUgeW91IHVzZSBzbyBtYW55IHdoaXRlc3BhY2VzIGhl
cmUuLi4gKG1heWJlIFBhb2xvIGNhbgo+IHN0cmlwIHNvbWUgd2hlbiBhcHBseWluZz8pLgoKSSBo
b25lc3RseSBhbSBub3Qgc3VyZSB3aHkgaXQgYWRkZWQgZmV3IG1vcmUgc3BhY2VzIHRoYW4gSSB3
YW50ZWQsIGJ1dCAKdGhlIGlkZWEgd2FzIHRvIGZvbGxvdyB0aGUgS1ZNX0RCR0ZTX0dFVF9NT0RF
IG1hY3JvIGFib3ZlIGFuZCBwdXQgdGhlIApiYWNrc2xhc2ggYXQgdGhlIGVuZCBvZiB0aGUgbGlu
ZSAoODB0aCBjaGFyKS4KCj4gCj4gT3RoZXJ3aXNlIGl0IGxvb2tzIG5pY2VyIHRoYXQgdjEsIHRo
YW5rcy4KPiAKPiBSZXZpZXdlZC1ieTogUGhpbGlwcGUgTWF0aGlldS1EYXVkw6kgPGY0YnVnQGFt
c2F0Lm9yZz4KPiAKPj4gKwl7IG4sIG9mZnNldG9mKHN0cnVjdCBrdm1fdmNwdSwgc3RhdC54KSwg
S1ZNX1NUQVRfVkNQVSwgIyMgX19WQV9BUkdTX18gfQo+PiArCj4+ICAgZXh0ZXJuIHN0cnVjdCBr
dm1fc3RhdHNfZGVidWdmc19pdGVtIGRlYnVnZnNfZW50cmllc1tdOwo+PiAgIGV4dGVybiBzdHJ1
Y3QgZGVudHJ5ICprdm1fZGVidWdmc19kaXI7Cj4+ICAgCj4+Cj4gCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
