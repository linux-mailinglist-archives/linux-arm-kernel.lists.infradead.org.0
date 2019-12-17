Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3F31237FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 21:44:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zD8elDr07jXl+7USZjP0xbFT45DtdtGRpJJa94y9Y0=; b=LDEAFP34zSi037
	EeGFzKeJQUZCLFb0JlkW+YCgtLBxX8SpA4qTOHciPlh1JQKh4IgiuMYS9hLVJFdsgIgs0hHMgDN9g
	Cs60Ws1O2X/SnWooj48nDo4TrI4ONfHqlZfH1SkOhkMsW4XGf5LDw9yFu8NZlEc+LvtVXI2DhwV/6
	MLoQ5Av2huzJZNYGvpyjGjuk/Xak90iOpDzmX7bS9NX6bObTDYZPTRZWMjKgXFNRogrur1uGYEchf
	phMV/qq6YfCrjzyssB8Kklb7EOSksfFBJkNkDDY/QJ8voi07WPDlTjChUcy35l1Ywxy9Od7FpAaj2
	fFRBLLnWBgp0EmOVC5DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihJi7-00084N-9x; Tue, 17 Dec 2019 20:44:51 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihJeE-0004mU-Eo
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 20:40:52 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 12:40:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,326,1571727600"; d="scan'208";a="389952596"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga005.jf.intel.com with ESMTP; 17 Dec 2019 12:40:42 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v4 08/19] KVM: Refactor error handling for setting memory
 region
Date: Tue, 17 Dec 2019 12:40:30 -0800
Message-Id: <20191217204041.10815-9-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191217204041.10815-1-sean.j.christopherson@intel.com>
References: <20191217204041.10815-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_124050_549469_987AE426 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org,
 Christoffer Dall <christoffer.dall@arm.com>,
 Wanpeng Li <wanpengli@tencent.com>,
 =?UTF-8?q?Philippe=20Mathieu-Daud=C3=A9?= <f4bug@amsat.org>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Joerg Roedel <joro@8bytes.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 kvm-ppc@vger.kernel.org, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmVwbGFjZSBhIGJpZyBwaWxlIG8nIGdvdG9zIHdpdGggcmV0dXJucyB0byBtYWtlIGl0IG1vcmUg
b2J2aW91cyB3aGF0CmVycm9yIGNvZGUgaXMgYmVpbmcgcmV0dXJuZWQsIGFuZCB0byBwcmVwYXJl
IGZvciByZWZhY3RvcmluZyB0aGUKZnVuY3Rpb25hbCwgaS5lLiBwb3N0LWNoZWNrcywgcG9ydGlv
biBvZiBfX2t2bV9zZXRfbWVtb3J5X3JlZ2lvbigpLgoKUmV2aWV3ZWQtYnk6IEphbm9zY2ggRnJh
bmsgPGZyYW5ramFAbGludXguaWJtLmNvbT4KUmV2aWV3ZWQtYnk6IFBoaWxpcHBlIE1hdGhpZXUt
RGF1ZMOpIDxmNGJ1Z0BhbXNhdC5vcmc+ClNpZ25lZC1vZmYtYnk6IFNlYW4gQ2hyaXN0b3BoZXJz
b24gPHNlYW4uai5jaHJpc3RvcGhlcnNvbkBpbnRlbC5jb20+Ci0tLQogdmlydC9rdm0va3ZtX21h
aW4uYyB8IDQwICsrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS92aXJ0L2t2bS9rdm1fbWFpbi5jIGIvdmlydC9rdm0va3ZtX21haW4uYwppbmRleCA2YjIyNjFh
OWUxMzkuLjljNDg4YzY1MzI1NyAxMDA2NDQKLS0tIGEvdmlydC9rdm0va3ZtX21haW4uYworKysg
Yi92aXJ0L2t2bS9rdm1fbWFpbi5jCkBAIC0xMDA4LDM0ICsxMDA4LDMzIEBAIGludCBfX2t2bV9z
ZXRfbWVtb3J5X3JlZ2lvbihzdHJ1Y3Qga3ZtICprdm0sCiAKIAlyID0gY2hlY2tfbWVtb3J5X3Jl
Z2lvbl9mbGFncyhtZW0pOwogCWlmIChyKQotCQlnb3RvIG91dDsKKwkJcmV0dXJuIHI7CiAKLQly
ID0gLUVJTlZBTDsKIAlhc19pZCA9IG1lbS0+c2xvdCA+PiAxNjsKIAlpZCA9ICh1MTYpbWVtLT5z
bG90OwogCiAJLyogR2VuZXJhbCBzYW5pdHkgY2hlY2tzICovCiAJaWYgKG1lbS0+bWVtb3J5X3Np
emUgJiAoUEFHRV9TSVpFIC0gMSkpCi0JCWdvdG8gb3V0OworCQlyZXR1cm4gLUVJTlZBTDsKIAlp
ZiAobWVtLT5ndWVzdF9waHlzX2FkZHIgJiAoUEFHRV9TSVpFIC0gMSkpCi0JCWdvdG8gb3V0Owor
CQlyZXR1cm4gLUVJTlZBTDsKIAkvKiBXZSBjYW4gcmVhZCB0aGUgZ3Vlc3QgbWVtb3J5IHdpdGgg
X194eHhfdXNlcigpIGxhdGVyIG9uLiAqLwogCWlmICgoaWQgPCBLVk1fVVNFUl9NRU1fU0xPVFMp
ICYmCiAJICAgICgobWVtLT51c2Vyc3BhY2VfYWRkciAmIChQQUdFX1NJWkUgLSAxKSkgfHwKIAkg
ICAgICFhY2Nlc3Nfb2soKHZvaWQgX191c2VyICopKHVuc2lnbmVkIGxvbmcpbWVtLT51c2Vyc3Bh
Y2VfYWRkciwKIAkJCW1lbS0+bWVtb3J5X3NpemUpKSkKLQkJZ290byBvdXQ7CisJCXJldHVybiAt
RUlOVkFMOwogCWlmIChhc19pZCA+PSBLVk1fQUREUkVTU19TUEFDRV9OVU0gfHwgaWQgPj0gS1ZN
X01FTV9TTE9UU19OVU0pCi0JCWdvdG8gb3V0OworCQlyZXR1cm4gLUVJTlZBTDsKIAlpZiAobWVt
LT5ndWVzdF9waHlzX2FkZHIgKyBtZW0tPm1lbW9yeV9zaXplIDwgbWVtLT5ndWVzdF9waHlzX2Fk
ZHIpCi0JCWdvdG8gb3V0OworCQlyZXR1cm4gLUVJTlZBTDsKIAogCXNsb3QgPSBpZF90b19tZW1z
bG90KF9fa3ZtX21lbXNsb3RzKGt2bSwgYXNfaWQpLCBpZCk7CiAJYmFzZV9nZm4gPSBtZW0tPmd1
ZXN0X3BoeXNfYWRkciA+PiBQQUdFX1NISUZUOwogCW5wYWdlcyA9IG1lbS0+bWVtb3J5X3NpemUg
Pj4gUEFHRV9TSElGVDsKIAogCWlmIChucGFnZXMgPiBLVk1fTUVNX01BWF9OUl9QQUdFUykKLQkJ
Z290byBvdXQ7CisJCXJldHVybiAtRUlOVkFMOwogCiAJbmV3ID0gb2xkID0gKnNsb3Q7CiAKQEAg
LTEwNTIsMjAgKzEwNTEsMTggQEAgaW50IF9fa3ZtX3NldF9tZW1vcnlfcmVnaW9uKHN0cnVjdCBr
dm0gKmt2bSwKIAkJCWlmICgobmV3LnVzZXJzcGFjZV9hZGRyICE9IG9sZC51c2Vyc3BhY2VfYWRk
cikgfHwKIAkJCSAgICAobnBhZ2VzICE9IG9sZC5ucGFnZXMpIHx8CiAJCQkgICAgKChuZXcuZmxh
Z3MgXiBvbGQuZmxhZ3MpICYgS1ZNX01FTV9SRUFET05MWSkpCi0JCQkJZ290byBvdXQ7CisJCQkJ
cmV0dXJuIC1FSU5WQUw7CiAKIAkJCWlmIChiYXNlX2dmbiAhPSBvbGQuYmFzZV9nZm4pCiAJCQkJ
Y2hhbmdlID0gS1ZNX01SX01PVkU7CiAJCQllbHNlIGlmIChuZXcuZmxhZ3MgIT0gb2xkLmZsYWdz
KQogCQkJCWNoYW5nZSA9IEtWTV9NUl9GTEFHU19PTkxZOwotCQkJZWxzZSB7IC8qIE5vdGhpbmcg
dG8gY2hhbmdlLiAqLwotCQkJCXIgPSAwOwotCQkJCWdvdG8gb3V0OwotCQkJfQorCQkJZWxzZSAv
KiBOb3RoaW5nIHRvIGNoYW5nZS4gKi8KKwkJCQlyZXR1cm4gMDsKIAkJfQogCX0gZWxzZSB7CiAJ
CWlmICghb2xkLm5wYWdlcykKLQkJCWdvdG8gb3V0OworCQkJcmV0dXJuIC1FSU5WQUw7CiAKIAkJ
Y2hhbmdlID0gS1ZNX01SX0RFTEVURTsKIAkJbmV3LmJhc2VfZ2ZuID0gMDsKQEAgLTEwNzQsMjkg
KzEwNzEsMjkgQEAgaW50IF9fa3ZtX3NldF9tZW1vcnlfcmVnaW9uKHN0cnVjdCBrdm0gKmt2bSwK
IAogCWlmICgoY2hhbmdlID09IEtWTV9NUl9DUkVBVEUpIHx8IChjaGFuZ2UgPT0gS1ZNX01SX01P
VkUpKSB7CiAJCS8qIENoZWNrIGZvciBvdmVybGFwcyAqLwotCQlyID0gLUVFWElTVDsKIAkJa3Zt
X2Zvcl9lYWNoX21lbXNsb3Qoc2xvdCwgX19rdm1fbWVtc2xvdHMoa3ZtLCBhc19pZCkpIHsKIAkJ
CWlmIChzbG90LT5pZCA9PSBpZCkKIAkJCQljb250aW51ZTsKIAkJCWlmICghKChiYXNlX2dmbiAr
IG5wYWdlcyA8PSBzbG90LT5iYXNlX2dmbikgfHwKIAkJCSAgICAgIChiYXNlX2dmbiA+PSBzbG90
LT5iYXNlX2dmbiArIHNsb3QtPm5wYWdlcykpKQotCQkJCWdvdG8gb3V0OworCQkJCXJldHVybiAt
RUVYSVNUOwogCQl9CiAJfQogCi0JciA9IC1FTk9NRU07Ci0KIAkvKiBBbGxvY2F0ZS9mcmVlIHBh
Z2UgZGlydHkgYml0bWFwIGFzIG5lZWRlZCAqLwogCWlmICghKG5ldy5mbGFncyAmIEtWTV9NRU1f
TE9HX0RJUlRZX1BBR0VTKSkKIAkJbmV3LmRpcnR5X2JpdG1hcCA9IE5VTEw7CiAJZWxzZSBpZiAo
IW5ldy5kaXJ0eV9iaXRtYXApIHsKLQkJaWYgKGt2bV9jcmVhdGVfZGlydHlfYml0bWFwKCZuZXcp
IDwgMCkKLQkJCWdvdG8gb3V0OworCQlyID0ga3ZtX2NyZWF0ZV9kaXJ0eV9iaXRtYXAoJm5ldyk7
CisJCWlmIChyKQorCQkJcmV0dXJuIHI7CiAJfQogCiAJc2xvdHMgPSBrdnphbGxvYyhzaXplb2Yo
c3RydWN0IGt2bV9tZW1zbG90cyksIEdGUF9LRVJORUxfQUNDT1VOVCk7Ci0JaWYgKCFzbG90cykK
KwlpZiAoIXNsb3RzKSB7CisJCXIgPSAtRU5PTUVNOwogCQlnb3RvIG91dF9iaXRtYXA7CisJfQog
CW1lbWNweShzbG90cywgX19rdm1fbWVtc2xvdHMoa3ZtLCBhc19pZCksIHNpemVvZihzdHJ1Y3Qg
a3ZtX21lbXNsb3RzKSk7CiAKIAlpZiAoKGNoYW5nZSA9PSBLVk1fTVJfREVMRVRFKSB8fCAoY2hh
bmdlID09IEtWTV9NUl9NT1ZFKSkgewpAQCAtMTE0Nyw3ICsxMTQ0LDYgQEAgaW50IF9fa3ZtX3Nl
dF9tZW1vcnlfcmVnaW9uKHN0cnVjdCBrdm0gKmt2bSwKIG91dF9iaXRtYXA6CiAJaWYgKG5ldy5k
aXJ0eV9iaXRtYXAgJiYgIW9sZC5kaXJ0eV9iaXRtYXApCiAJCWt2bV9kZXN0cm95X2RpcnR5X2Jp
dG1hcCgmbmV3KTsKLW91dDoKIAlyZXR1cm4gcjsKIH0KIEVYUE9SVF9TWU1CT0xfR1BMKF9fa3Zt
X3NldF9tZW1vcnlfcmVnaW9uKTsKLS0gCjIuMjQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
