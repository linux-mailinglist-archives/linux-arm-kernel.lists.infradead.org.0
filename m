Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9A616346E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 22:11:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gBnW5j1BE070Rg5u3bbH2YDZIUkdk6TIwh++2hPmR+s=; b=IK1+bkPj/pxCzX
	5oWX72C/NKC6O0mmMgg7Qjwq5jRUlBeS88Qp7jvM5xTbaph8Ie5SlXVZ0oVvvnadvp6Wic677K1Dr
	ZpDimngeCyAYdvzSPniJp3+eg1vPcbhE0BSZAKb/yampSwjkXVcevrtbAL29fTRazMJmbKWTr6/fE
	cv8LOYrUbHE6z+9/ME1+FaA/nK176BkCkQYduR+qSyJKYqL22H+kCeoqKuE4W4hAMYN+vdIPdw1lW
	y6Ojl6tqXoXnX6vk2gntG8yvLXlZ1504nDn/5tlwWV0ouEu7AhJZeGgmUhl2ZhZA4rb6dRBYZT1Pe
	ObWOauSiprfWo5TNgKBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4A9d-0005yj-Of; Tue, 18 Feb 2020 21:11:41 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4A5z-0000zp-78
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 21:07:57 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 13:07:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,457,1574150400"; d="scan'208";a="253856419"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga002.jf.intel.com with ESMTP; 18 Feb 2020 13:07:45 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v6 08/22] KVM: Refactor error handling for setting memory
 region
Date: Tue, 18 Feb 2020 13:07:22 -0800
Message-Id: <20200218210736.16432-9-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200218210736.16432-1-sean.j.christopherson@intel.com>
References: <20200218210736.16432-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_130755_339182_30E80330 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Peter Xu <peterx@redhat.com>,
 linux-mips@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 kvmarm@lists.cs.columbia.edu, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 =?UTF-8?q?Philippe=20Mathieu-Daud=C3=A9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmVwbGFjZSBhIGJpZyBwaWxlIG8nIGdvdG9zIHdpdGggcmV0dXJucyB0byBtYWtlIGl0IG1vcmUg
b2J2aW91cyB3aGF0CmVycm9yIGNvZGUgaXMgYmVpbmcgcmV0dXJuZWQsIGFuZCB0byBwcmVwYXJl
IGZvciByZWZhY3RvcmluZyB0aGUKZnVuY3Rpb25hbCwgaS5lLiBwb3N0LWNoZWNrcywgcG9ydGlv
biBvZiBfX2t2bV9zZXRfbWVtb3J5X3JlZ2lvbigpLgoKUmV2aWV3ZWQtYnk6IEphbm9zY2ggRnJh
bmsgPGZyYW5ramFAbGludXguaWJtLmNvbT4KUmV2aWV3ZWQtYnk6IFBoaWxpcHBlIE1hdGhpZXUt
RGF1ZMOpIDxmNGJ1Z0BhbXNhdC5vcmc+ClJldmlld2VkLWJ5OiBQZXRlciBYdSA8cGV0ZXJ4QHJl
ZGhhdC5jb20+ClNpZ25lZC1vZmYtYnk6IFNlYW4gQ2hyaXN0b3BoZXJzb24gPHNlYW4uai5jaHJp
c3RvcGhlcnNvbkBpbnRlbC5jb20+Ci0tLQogdmlydC9rdm0va3ZtX21haW4uYyB8IDQwICsrKysr
KysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOCBp
bnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS92aXJ0L2t2bS9rdm1f
bWFpbi5jIGIvdmlydC9rdm0va3ZtX21haW4uYwppbmRleCA0MmVjNGRhYzk5YjMuLmNhMzk3OTky
ZTg3OSAxMDA2NDQKLS0tIGEvdmlydC9rdm0va3ZtX21haW4uYworKysgYi92aXJ0L2t2bS9rdm1f
bWFpbi5jCkBAIC0xMDA1LDM0ICsxMDA1LDMzIEBAIGludCBfX2t2bV9zZXRfbWVtb3J5X3JlZ2lv
bihzdHJ1Y3Qga3ZtICprdm0sCiAKIAlyID0gY2hlY2tfbWVtb3J5X3JlZ2lvbl9mbGFncyhtZW0p
OwogCWlmIChyKQotCQlnb3RvIG91dDsKKwkJcmV0dXJuIHI7CiAKLQlyID0gLUVJTlZBTDsKIAlh
c19pZCA9IG1lbS0+c2xvdCA+PiAxNjsKIAlpZCA9ICh1MTYpbWVtLT5zbG90OwogCiAJLyogR2Vu
ZXJhbCBzYW5pdHkgY2hlY2tzICovCiAJaWYgKG1lbS0+bWVtb3J5X3NpemUgJiAoUEFHRV9TSVpF
IC0gMSkpCi0JCWdvdG8gb3V0OworCQlyZXR1cm4gLUVJTlZBTDsKIAlpZiAobWVtLT5ndWVzdF9w
aHlzX2FkZHIgJiAoUEFHRV9TSVpFIC0gMSkpCi0JCWdvdG8gb3V0OworCQlyZXR1cm4gLUVJTlZB
TDsKIAkvKiBXZSBjYW4gcmVhZCB0aGUgZ3Vlc3QgbWVtb3J5IHdpdGggX194eHhfdXNlcigpIGxh
dGVyIG9uLiAqLwogCWlmICgoaWQgPCBLVk1fVVNFUl9NRU1fU0xPVFMpICYmCiAJICAgICgobWVt
LT51c2Vyc3BhY2VfYWRkciAmIChQQUdFX1NJWkUgLSAxKSkgfHwKIAkgICAgICFhY2Nlc3Nfb2so
KHZvaWQgX191c2VyICopKHVuc2lnbmVkIGxvbmcpbWVtLT51c2Vyc3BhY2VfYWRkciwKIAkJCW1l
bS0+bWVtb3J5X3NpemUpKSkKLQkJZ290byBvdXQ7CisJCXJldHVybiAtRUlOVkFMOwogCWlmIChh
c19pZCA+PSBLVk1fQUREUkVTU19TUEFDRV9OVU0gfHwgaWQgPj0gS1ZNX01FTV9TTE9UU19OVU0p
Ci0JCWdvdG8gb3V0OworCQlyZXR1cm4gLUVJTlZBTDsKIAlpZiAobWVtLT5ndWVzdF9waHlzX2Fk
ZHIgKyBtZW0tPm1lbW9yeV9zaXplIDwgbWVtLT5ndWVzdF9waHlzX2FkZHIpCi0JCWdvdG8gb3V0
OworCQlyZXR1cm4gLUVJTlZBTDsKIAogCXNsb3QgPSBpZF90b19tZW1zbG90KF9fa3ZtX21lbXNs
b3RzKGt2bSwgYXNfaWQpLCBpZCk7CiAJYmFzZV9nZm4gPSBtZW0tPmd1ZXN0X3BoeXNfYWRkciA+
PiBQQUdFX1NISUZUOwogCW5wYWdlcyA9IG1lbS0+bWVtb3J5X3NpemUgPj4gUEFHRV9TSElGVDsK
IAogCWlmIChucGFnZXMgPiBLVk1fTUVNX01BWF9OUl9QQUdFUykKLQkJZ290byBvdXQ7CisJCXJl
dHVybiAtRUlOVkFMOwogCiAJbmV3ID0gb2xkID0gKnNsb3Q7CiAKQEAgLTEwNDksMjAgKzEwNDgs
MTggQEAgaW50IF9fa3ZtX3NldF9tZW1vcnlfcmVnaW9uKHN0cnVjdCBrdm0gKmt2bSwKIAkJCWlm
ICgobmV3LnVzZXJzcGFjZV9hZGRyICE9IG9sZC51c2Vyc3BhY2VfYWRkcikgfHwKIAkJCSAgICAo
bnBhZ2VzICE9IG9sZC5ucGFnZXMpIHx8CiAJCQkgICAgKChuZXcuZmxhZ3MgXiBvbGQuZmxhZ3Mp
ICYgS1ZNX01FTV9SRUFET05MWSkpCi0JCQkJZ290byBvdXQ7CisJCQkJcmV0dXJuIC1FSU5WQUw7
CiAKIAkJCWlmIChiYXNlX2dmbiAhPSBvbGQuYmFzZV9nZm4pCiAJCQkJY2hhbmdlID0gS1ZNX01S
X01PVkU7CiAJCQllbHNlIGlmIChuZXcuZmxhZ3MgIT0gb2xkLmZsYWdzKQogCQkJCWNoYW5nZSA9
IEtWTV9NUl9GTEFHU19PTkxZOwotCQkJZWxzZSB7IC8qIE5vdGhpbmcgdG8gY2hhbmdlLiAqLwot
CQkJCXIgPSAwOwotCQkJCWdvdG8gb3V0OwotCQkJfQorCQkJZWxzZSAvKiBOb3RoaW5nIHRvIGNo
YW5nZS4gKi8KKwkJCQlyZXR1cm4gMDsKIAkJfQogCX0gZWxzZSB7CiAJCWlmICghb2xkLm5wYWdl
cykKLQkJCWdvdG8gb3V0OworCQkJcmV0dXJuIC1FSU5WQUw7CiAKIAkJY2hhbmdlID0gS1ZNX01S
X0RFTEVURTsKIAkJbmV3LmJhc2VfZ2ZuID0gMDsKQEAgLTEwNzEsMjkgKzEwNjgsMjkgQEAgaW50
IF9fa3ZtX3NldF9tZW1vcnlfcmVnaW9uKHN0cnVjdCBrdm0gKmt2bSwKIAogCWlmICgoY2hhbmdl
ID09IEtWTV9NUl9DUkVBVEUpIHx8IChjaGFuZ2UgPT0gS1ZNX01SX01PVkUpKSB7CiAJCS8qIENo
ZWNrIGZvciBvdmVybGFwcyAqLwotCQlyID0gLUVFWElTVDsKIAkJa3ZtX2Zvcl9lYWNoX21lbXNs
b3Qoc2xvdCwgX19rdm1fbWVtc2xvdHMoa3ZtLCBhc19pZCkpIHsKIAkJCWlmIChzbG90LT5pZCA9
PSBpZCkKIAkJCQljb250aW51ZTsKIAkJCWlmICghKChiYXNlX2dmbiArIG5wYWdlcyA8PSBzbG90
LT5iYXNlX2dmbikgfHwKIAkJCSAgICAgIChiYXNlX2dmbiA+PSBzbG90LT5iYXNlX2dmbiArIHNs
b3QtPm5wYWdlcykpKQotCQkJCWdvdG8gb3V0OworCQkJCXJldHVybiAtRUVYSVNUOwogCQl9CiAJ
fQogCi0JciA9IC1FTk9NRU07Ci0KIAkvKiBBbGxvY2F0ZS9mcmVlIHBhZ2UgZGlydHkgYml0bWFw
IGFzIG5lZWRlZCAqLwogCWlmICghKG5ldy5mbGFncyAmIEtWTV9NRU1fTE9HX0RJUlRZX1BBR0VT
KSkKIAkJbmV3LmRpcnR5X2JpdG1hcCA9IE5VTEw7CiAJZWxzZSBpZiAoIW5ldy5kaXJ0eV9iaXRt
YXApIHsKLQkJaWYgKGt2bV9jcmVhdGVfZGlydHlfYml0bWFwKCZuZXcpIDwgMCkKLQkJCWdvdG8g
b3V0OworCQlyID0ga3ZtX2NyZWF0ZV9kaXJ0eV9iaXRtYXAoJm5ldyk7CisJCWlmIChyKQorCQkJ
cmV0dXJuIHI7CiAJfQogCiAJc2xvdHMgPSBrdnphbGxvYyhzaXplb2Yoc3RydWN0IGt2bV9tZW1z
bG90cyksIEdGUF9LRVJORUxfQUNDT1VOVCk7Ci0JaWYgKCFzbG90cykKKwlpZiAoIXNsb3RzKSB7
CisJCXIgPSAtRU5PTUVNOwogCQlnb3RvIG91dF9iaXRtYXA7CisJfQogCW1lbWNweShzbG90cywg
X19rdm1fbWVtc2xvdHMoa3ZtLCBhc19pZCksIHNpemVvZihzdHJ1Y3Qga3ZtX21lbXNsb3RzKSk7
CiAKIAlpZiAoKGNoYW5nZSA9PSBLVk1fTVJfREVMRVRFKSB8fCAoY2hhbmdlID09IEtWTV9NUl9N
T1ZFKSkgewpAQCAtMTE0NCw3ICsxMTQxLDYgQEAgaW50IF9fa3ZtX3NldF9tZW1vcnlfcmVnaW9u
KHN0cnVjdCBrdm0gKmt2bSwKIG91dF9iaXRtYXA6CiAJaWYgKG5ldy5kaXJ0eV9iaXRtYXAgJiYg
IW9sZC5kaXJ0eV9iaXRtYXApCiAJCWt2bV9kZXN0cm95X2RpcnR5X2JpdG1hcCgmbmV3KTsKLW91
dDoKIAlyZXR1cm4gcjsKIH0KIEVYUE9SVF9TWU1CT0xfR1BMKF9fa3ZtX3NldF9tZW1vcnlfcmVn
aW9uKTsKLS0gCjIuMjQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
