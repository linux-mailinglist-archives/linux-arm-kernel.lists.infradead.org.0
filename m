Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49782163473
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 22:12:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pjqttmFJhCY0dnDklUb20hgUTceWU4igrcltvbi8x5Y=; b=nTd2PoUSMALJM6
	eCjYM06zI80FqbVcqyOXCiAnaAaVtlA4ydr/S6Ckn3jj3dIZ16mJrT+RprMlTUaINmaK+QXcHjkzC
	q8MNeZN4dUPM0q6SWBiynXwk1lv4R/tomw9zZU6Pq2FZR9koRYS4uLKPjHi86HV6fVOeNO2tJk/hB
	MDl6/q4k3FGtdj+myjCorDmRfkCLOrCRuHvB2sXQmkgU2r6/h7MBaOu3KMh2mQLyM9t7cTv2iitSy
	HhLOYYCQvgH2Zwi+uct/hhhtPjDTn+cqyrRYJPalcnVM9IwPTAjuJxqb67jAYGYvolPkNNhAoqyxx
	6t+1ittK/o/rYTzF7m1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4A9r-0006Df-5l; Tue, 18 Feb 2020 21:11:55 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4A5z-000156-L8
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 21:07:58 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 13:07:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,457,1574150400"; d="scan'208";a="253856422"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga002.jf.intel.com with ESMTP; 18 Feb 2020 13:07:45 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v6 09/22] KVM: Move setting of memslot into helper routine
Date: Tue, 18 Feb 2020 13:07:23 -0800
Message-Id: <20200218210736.16432-10-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200218210736.16432-1-sean.j.christopherson@intel.com>
References: <20200218210736.16432-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_130755_761772_C95BAF17 
X-CRM114-Status: GOOD (  17.60  )
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

U3BsaXQgb3V0IHRoZSBjb3JlIGZ1bmN0aW9uYWxpdHkgb2Ygc2V0dGluZyBhIG1lbXNsb3QgaW50
byBhIHNlcGFyYXRlCmhlbHBlciBpbiBwcmVwYXJhdGlvbiBmb3IgbW92aW5nIG1lbXNsb3QgZGVs
ZXRpb24gaW50byBpdHMgb3duIHJvdXRpbmUuCgpUZXN0ZWQtYnk6IENocmlzdG9mZmVyIERhbGwg
PGNocmlzdG9mZmVyLmRhbGxAYXJtLmNvbT4KUmV2aWV3ZWQtYnk6IFBoaWxpcHBlIE1hdGhpZXUt
RGF1ZMOpIDxmNGJ1Z0BhbXNhdC5vcmc+ClJldmlld2VkLWJ5OiBQZXRlciBYdSA8cGV0ZXJ4QHJl
ZGhhdC5jb20+ClNpZ25lZC1vZmYtYnk6IFNlYW4gQ2hyaXN0b3BoZXJzb24gPHNlYW4uai5jaHJp
c3RvcGhlcnNvbkBpbnRlbC5jb20+Ci0tLQogdmlydC9rdm0va3ZtX21haW4uYyB8IDEwNiArKysr
KysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDYzIGluc2VydGlvbnMoKyksIDQzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3ZpcnQva3Zt
L2t2bV9tYWluLmMgYi92aXJ0L2t2bS9rdm1fbWFpbi5jCmluZGV4IGNhMzk3OTkyZTg3OS4uODRj
MDNmYjYwZDQwIDEwMDY0NAotLS0gYS92aXJ0L2t2bS9rdm1fbWFpbi5jCisrKyBiL3ZpcnQva3Zt
L2t2bV9tYWluLmMKQEAgLTk4Myw2ICs5ODMsNjYgQEAgc3RhdGljIHN0cnVjdCBrdm1fbWVtc2xv
dHMgKmluc3RhbGxfbmV3X21lbXNsb3RzKHN0cnVjdCBrdm0gKmt2bSwKIAlyZXR1cm4gb2xkX21l
bXNsb3RzOwogfQogCitzdGF0aWMgaW50IGt2bV9zZXRfbWVtc2xvdChzdHJ1Y3Qga3ZtICprdm0s
CisJCQkgICBjb25zdCBzdHJ1Y3Qga3ZtX3VzZXJzcGFjZV9tZW1vcnlfcmVnaW9uICptZW0sCisJ
CQkgICBjb25zdCBzdHJ1Y3Qga3ZtX21lbW9yeV9zbG90ICpvbGQsCisJCQkgICBzdHJ1Y3Qga3Zt
X21lbW9yeV9zbG90ICpuZXcsIGludCBhc19pZCwKKwkJCSAgIGVudW0ga3ZtX21yX2NoYW5nZSBj
aGFuZ2UpCit7CisJc3RydWN0IGt2bV9tZW1vcnlfc2xvdCAqc2xvdDsKKwlzdHJ1Y3Qga3ZtX21l
bXNsb3RzICpzbG90czsKKwlpbnQgcjsKKworCXNsb3RzID0ga3Z6YWxsb2Moc2l6ZW9mKHN0cnVj
dCBrdm1fbWVtc2xvdHMpLCBHRlBfS0VSTkVMX0FDQ09VTlQpOworCWlmICghc2xvdHMpCisJCXJl
dHVybiAtRU5PTUVNOworCW1lbWNweShzbG90cywgX19rdm1fbWVtc2xvdHMoa3ZtLCBhc19pZCks
IHNpemVvZihzdHJ1Y3Qga3ZtX21lbXNsb3RzKSk7CisKKwlpZiAoY2hhbmdlID09IEtWTV9NUl9E
RUxFVEUgfHwgY2hhbmdlID09IEtWTV9NUl9NT1ZFKSB7CisJCS8qCisJCSAqIE5vdGUsIHRoZSBJ
TlZBTElEIGZsYWcgbmVlZHMgdG8gYmUgaW4gdGhlIGFwcHJvcHJpYXRlIGVudHJ5CisJCSAqIGlu
IHRoZSBmcmVzaGx5IGFsbG9jYXRlZCBtZW1zbG90cywgbm90IGluIEBvbGQgb3IgQG5ldy4KKwkJ
ICovCisJCXNsb3QgPSBpZF90b19tZW1zbG90KHNsb3RzLCBvbGQtPmlkKTsKKwkJc2xvdC0+Zmxh
Z3MgfD0gS1ZNX01FTVNMT1RfSU5WQUxJRDsKKworCQkvKgorCQkgKiBXZSBjYW4gcmUtdXNlIHRo
ZSBvbGQgbWVtc2xvdHMsIHRoZSBvbmx5IGRpZmZlcmVuY2UgZnJvbSB0aGUKKwkJICogbmV3bHkg
aW5zdGFsbGVkIG1lbXNsb3RzIGlzIHRoZSBpbnZhbGlkIGZsYWcsIHdoaWNoIHdpbGwgZ2V0CisJ
CSAqIGRyb3BwZWQgYnkgdXBkYXRlX21lbXNsb3RzIGFueXdheS4gIFdlJ2xsIGFsc28gcmV2ZXJ0
IHRvIHRoZQorCQkgKiBvbGQgbWVtc2xvdHMgaWYgcHJlcGFyaW5nIHRoZSBuZXcgbWVtb3J5IHJl
Z2lvbiBmYWlscy4KKwkJICovCisJCXNsb3RzID0gaW5zdGFsbF9uZXdfbWVtc2xvdHMoa3ZtLCBh
c19pZCwgc2xvdHMpOworCisJCS8qIEZyb20gdGhpcyBwb2ludCBubyBuZXcgc2hhZG93IHBhZ2Vz
IHBvaW50aW5nIHRvIGEgZGVsZXRlZCwKKwkJICogb3IgbW92ZWQsIG1lbXNsb3Qgd2lsbCBiZSBj
cmVhdGVkLgorCQkgKgorCQkgKiB2YWxpZGF0aW9uIG9mIHNwLT5nZm4gaGFwcGVucyBpbjoKKwkJ
ICoJLSBnZm5fdG9faHZhIChrdm1fcmVhZF9ndWVzdCwgZ2ZuX3RvX3BmbikKKwkJICoJLSBrdm1f
aXNfdmlzaWJsZV9nZm4gKG1tdV9jaGVja19yb290KQorCQkgKi8KKwkJa3ZtX2FyY2hfZmx1c2hf
c2hhZG93X21lbXNsb3Qoa3ZtLCBzbG90KTsKKwl9CisKKwlyID0ga3ZtX2FyY2hfcHJlcGFyZV9t
ZW1vcnlfcmVnaW9uKGt2bSwgbmV3LCBtZW0sIGNoYW5nZSk7CisJaWYgKHIpCisJCWdvdG8gb3V0
X3Nsb3RzOworCisJdXBkYXRlX21lbXNsb3RzKHNsb3RzLCBuZXcsIGNoYW5nZSk7CisJc2xvdHMg
PSBpbnN0YWxsX25ld19tZW1zbG90cyhrdm0sIGFzX2lkLCBzbG90cyk7CisKKwlrdm1fYXJjaF9j
b21taXRfbWVtb3J5X3JlZ2lvbihrdm0sIG1lbSwgb2xkLCBuZXcsIGNoYW5nZSk7CisKKwlrdmZy
ZWUoc2xvdHMpOworCXJldHVybiAwOworCitvdXRfc2xvdHM6CisJaWYgKGNoYW5nZSA9PSBLVk1f
TVJfREVMRVRFIHx8IGNoYW5nZSA9PSBLVk1fTVJfTU9WRSkKKwkJc2xvdHMgPSBpbnN0YWxsX25l
d19tZW1zbG90cyhrdm0sIGFzX2lkLCBzbG90cyk7CisJa3ZmcmVlKHNsb3RzKTsKKwlyZXR1cm4g
cjsKK30KKwogLyoKICAqIEFsbG9jYXRlIHNvbWUgbWVtb3J5IGFuZCBnaXZlIGl0IGFuIGFkZHJl
c3MgaW4gdGhlIGd1ZXN0IHBoeXNpY2FsIGFkZHJlc3MKICAqIHNwYWNlLgpAQCAtOTk5LDcgKzEw
NTksNiBAQCBpbnQgX19rdm1fc2V0X21lbW9yeV9yZWdpb24oc3RydWN0IGt2bSAqa3ZtLAogCXVu
c2lnbmVkIGxvbmcgbnBhZ2VzOwogCXN0cnVjdCBrdm1fbWVtb3J5X3Nsb3QgKnNsb3Q7CiAJc3Ry
dWN0IGt2bV9tZW1vcnlfc2xvdCBvbGQsIG5ldzsKLQlzdHJ1Y3Qga3ZtX21lbXNsb3RzICpzbG90
czsKIAlpbnQgYXNfaWQsIGlkOwogCWVudW0ga3ZtX21yX2NoYW5nZSBjaGFuZ2U7CiAKQEAgLTEw
ODYsNTggKzExNDUsMTkgQEAgaW50IF9fa3ZtX3NldF9tZW1vcnlfcmVnaW9uKHN0cnVjdCBrdm0g
Kmt2bSwKIAkJCXJldHVybiByOwogCX0KIAotCXNsb3RzID0ga3Z6YWxsb2Moc2l6ZW9mKHN0cnVj
dCBrdm1fbWVtc2xvdHMpLCBHRlBfS0VSTkVMX0FDQ09VTlQpOwotCWlmICghc2xvdHMpIHsKLQkJ
ciA9IC1FTk9NRU07Ci0JCWdvdG8gb3V0X2JpdG1hcDsKLQl9Ci0JbWVtY3B5KHNsb3RzLCBfX2t2
bV9tZW1zbG90cyhrdm0sIGFzX2lkKSwgc2l6ZW9mKHN0cnVjdCBrdm1fbWVtc2xvdHMpKTsKLQot
CWlmICgoY2hhbmdlID09IEtWTV9NUl9ERUxFVEUpIHx8IChjaGFuZ2UgPT0gS1ZNX01SX01PVkUp
KSB7Ci0JCXNsb3QgPSBpZF90b19tZW1zbG90KHNsb3RzLCBpZCk7Ci0JCXNsb3QtPmZsYWdzIHw9
IEtWTV9NRU1TTE9UX0lOVkFMSUQ7Ci0KLQkJLyoKLQkJICogV2UgY2FuIHJlLXVzZSB0aGUgb2xk
IG1lbXNsb3RzLCB0aGUgb25seSBkaWZmZXJlbmNlIGZyb20gdGhlCi0JCSAqIG5ld2x5IGluc3Rh
bGxlZCBtZW1zbG90cyBpcyB0aGUgaW52YWxpZCBmbGFnLCB3aGljaCB3aWxsIGdldAotCQkgKiBk
cm9wcGVkIGJ5IHVwZGF0ZV9tZW1zbG90cyBhbnl3YXkuICBXZSdsbCBhbHNvIHJldmVydCB0byB0
aGUKLQkJICogb2xkIG1lbXNsb3RzIGlmIHByZXBhcmluZyB0aGUgbmV3IG1lbW9yeSByZWdpb24g
ZmFpbHMuCi0JCSAqLwotCQlzbG90cyA9IGluc3RhbGxfbmV3X21lbXNsb3RzKGt2bSwgYXNfaWQs
IHNsb3RzKTsKLQotCQkvKiBGcm9tIHRoaXMgcG9pbnQgbm8gbmV3IHNoYWRvdyBwYWdlcyBwb2lu
dGluZyB0byBhIGRlbGV0ZWQsCi0JCSAqIG9yIG1vdmVkLCBtZW1zbG90IHdpbGwgYmUgY3JlYXRl
ZC4KLQkJICoKLQkJICogdmFsaWRhdGlvbiBvZiBzcC0+Z2ZuIGhhcHBlbnMgaW46Ci0JCSAqCS0g
Z2ZuX3RvX2h2YSAoa3ZtX3JlYWRfZ3Vlc3QsIGdmbl90b19wZm4pCi0JCSAqCS0ga3ZtX2lzX3Zp
c2libGVfZ2ZuIChtbXVfY2hlY2tfcm9vdCkKLQkJICovCi0JCWt2bV9hcmNoX2ZsdXNoX3NoYWRv
d19tZW1zbG90KGt2bSwgc2xvdCk7Ci0JfQotCi0JciA9IGt2bV9hcmNoX3ByZXBhcmVfbWVtb3J5
X3JlZ2lvbihrdm0sICZuZXcsIG1lbSwgY2hhbmdlKTsKLQlpZiAocikKLQkJZ290byBvdXRfc2xv
dHM7Ci0KIAkvKiBhY3R1YWwgbWVtb3J5IGlzIGZyZWVkIHZpYSBvbGQgaW4ga3ZtX2ZyZWVfbWVt
c2xvdCBiZWxvdyAqLwogCWlmIChjaGFuZ2UgPT0gS1ZNX01SX0RFTEVURSkgewogCQluZXcuZGly
dHlfYml0bWFwID0gTlVMTDsKIAkJbWVtc2V0KCZuZXcuYXJjaCwgMCwgc2l6ZW9mKG5ldy5hcmNo
KSk7CiAJfQogCi0JdXBkYXRlX21lbXNsb3RzKHNsb3RzLCAmbmV3LCBjaGFuZ2UpOwotCXNsb3Rz
ID0gaW5zdGFsbF9uZXdfbWVtc2xvdHMoa3ZtLCBhc19pZCwgc2xvdHMpOwotCi0Ja3ZtX2FyY2hf
Y29tbWl0X21lbW9yeV9yZWdpb24oa3ZtLCBtZW0sICZvbGQsICZuZXcsIGNoYW5nZSk7CisJciA9
IGt2bV9zZXRfbWVtc2xvdChrdm0sIG1lbSwgJm9sZCwgJm5ldywgYXNfaWQsIGNoYW5nZSk7CisJ
aWYgKHIpCisJCWdvdG8gb3V0X2JpdG1hcDsKIAogCWt2bV9mcmVlX21lbXNsb3Qoa3ZtLCAmb2xk
LCAmbmV3KTsKLQlrdmZyZWUoc2xvdHMpOwogCXJldHVybiAwOwogCi1vdXRfc2xvdHM6Ci0JaWYg
KGNoYW5nZSA9PSBLVk1fTVJfREVMRVRFIHx8IGNoYW5nZSA9PSBLVk1fTVJfTU9WRSkKLQkJc2xv
dHMgPSBpbnN0YWxsX25ld19tZW1zbG90cyhrdm0sIGFzX2lkLCBzbG90cyk7Ci0Ja3ZmcmVlKHNs
b3RzKTsKIG91dF9iaXRtYXA6CiAJaWYgKG5ldy5kaXJ0eV9iaXRtYXAgJiYgIW9sZC5kaXJ0eV9i
aXRtYXApCiAJCWt2bV9kZXN0cm95X2RpcnR5X2JpdG1hcCgmbmV3KTsKLS0gCjIuMjQuMQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
