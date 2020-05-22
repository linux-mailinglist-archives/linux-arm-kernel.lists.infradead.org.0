Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5FE1DE72A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 14:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0JqX4kjUDfzvYRYqLCUMR+dQNLFlF0sZri5UOd9kaA=; b=mQVXZCCL2C+ax3
	XMBXPNZ9pwUHXy3Uig9tIfusB+aGhC2g5HopHLoOUZW44fKLpIqiCEipGwaN4BJ9Gd8Yeut9m/49S
	yUQy+LsxdMlBGpTYgYxPO49I3da7pHpOT4NpXSJHkO4MZIH33A2GeEZ7mTxJJ5WUtJc9AX6vpPIUe
	rK3k6aVfnJ3jJ08h/bBfPfrP8uSzKDj2FNyyXolDScSorOg8qMLyRxGUD/VGYZVQEhrA3q6oixvIW
	ygFk7UV+kRNz4gsPsJgs7HzZ6xd70h6dLIg4FCrYuR0c6Q0yUfEIHkeXbfeOjbB9TdJr9YRDaWr9J
	YEvSIU6cU3NS0LFMyaSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc78Q-0005D2-NU; Fri, 22 May 2020 12:50:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc77l-0002hx-6M
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 12:50:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4C0461063;
 Fri, 22 May 2020 05:50:02 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 16E1C3F68F;
 Fri, 22 May 2020 05:50:00 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] base: soc: Add JEDEC JEP106 manufacturer's identification
 code attribute
Date: Fri, 22 May 2020 13:49:50 +0100
Message-Id: <20200522124951.35776-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200522124951.35776-1-sudeep.holla@arm.com>
References: <20200522124951.35776-1-sudeep.holla@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_055005_348172_34D1D548 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 harb@amperecomputing.com, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U01DQ0MgdjEuMiBhZGRzIGEgbmV3IG9wdGlvbmFsIGZ1bmN0aW9uIFNNQ0NDX0FSQ0hfU09DX0lE
IHRvIG9idGFpbiBhClNpUCBkZWZpbmVkIFNvQyBpZGVudGlmaWNhdGlvbiB2YWx1ZS4gSW5kZWVk
IG9mIG1ha2luZyBpdCBjdXN0b20KYXR0cmlidXRlLCBsZXQgdXMgYWRkIHRoZSBzYW1lIGFzIGdl
bmVyaWMgYXR0cmlidXRlIHRvIHNvY19kZXZpY2UuCgpUaGVyZSBhcmUgdmFyaW91cyB3YXlzIGlu
IHdoaWNoIGl0IGNhbiBiZSByZXByZXNlbnRlZCBpbiBzaG9ydGVuZWQgZm9ybQpmb3IgZWZmaWNp
ZW5jeSBhbmQgZWFzZSBvZiBwYXJzaW5nIGZvciB1c2Vyc3BhY2UuIFRoZSBjaG9zZW4gZm9ybSBp
cwpkZXNjcmliZWQgaW4gdGhlIEFCSSBkb2N1bWVudC4KClNpZ25lZC1vZmYtYnk6IFN1ZGVlcCBI
b2xsYSA8c3VkZWVwLmhvbGxhQGFybS5jb20+Ci0tLQogRG9jdW1lbnRhdGlvbi9BQkkvdGVzdGlu
Zy9zeXNmcy1kZXZpY2VzLXNvYyB8IDMxICsrKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9i
YXNlL3NvYy5jICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEyICsrKysrKysrCiBpbmNsdWRl
L2xpbnV4L3N5c19zb2MuaCAgICAgICAgICAgICAgICAgICAgIHwgIDEgKwogMyBmaWxlcyBjaGFu
Z2VkLCA0NCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9BQkkvdGVz
dGluZy9zeXNmcy1kZXZpY2VzLXNvYyBiL0RvY3VtZW50YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMt
ZGV2aWNlcy1zb2MKaW5kZXggYmEzYTNmYWMwZWUxLi5mZDQ0YzliMWUwOWEgMTAwNjQ0Ci0tLSBh
L0RvY3VtZW50YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMtZGV2aWNlcy1zb2MKKysrIGIvRG9jdW1l
bnRhdGlvbi9BQkkvdGVzdGluZy9zeXNmcy1kZXZpY2VzLXNvYwpAQCAtNTQsNiArNTQsMzcgQEAg
Y29udGFjdDoJTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KIAkJUmVhZC1vbmx5IGF0
dHJpYnV0ZSBzdXBwb3J0ZWQgU1QtRXJpY3Nzb24ncyBzaWxpY29uLiBDb250YWlucyB0aGUKIAkJ
dGhlIHByb2Nlc3MgYnkgd2hpY2ggdGhlIHNpbGljb24gY2hpcCB3YXMgbWFudWZhY3R1cmVkLgog
CitXaGF0OgkJL3N5cy9kZXZpY2VzL3NvY1gvamVwMTA2X2lkZW50aWZpY2F0aW9uX2NvZGUKK0Rh
dGU6CQlKdW5lIDIwMjAKK0NvbnRhY3Q6CVN1ZGVlcCBIb2xsYSA8c3VkZWVwLmhvbGxhQGFybS5j
b20+CitEZXNjcmlwdGlvbjoKKwkJUmVhZC1vbmx5IGF0dHJpYnV0ZSBzdXBwb3J0ZWQgb24gbWFu
eSBvZiBBUk0gYmFzZWQgc2lsaWNvbgorCQl3aXRoIFNNQ0NDIHYxLjIrIGNvbXBsaWFudCBmaXJt
d2FyZS4gQ29udGFpbnMgdGhlIEpFREVDCisJCUpFUDEwNiBtYW51ZmFjdHVyZXLigJlzIGlkZW50
aWZpY2F0aW9uIGNvZGUuCisKKwkJVGhpcyBtYW51ZmFjdHVyZXLigJlzIGlkZW50aWZpY2F0aW9u
IGNvZGUgaXMgZGVmaW5lZCBieSBvbmUKKwkJb3IgbW9yZSBlaWdodCAoOCkgYml0IGZpZWxkcywg
ZWFjaCBjb25zaXN0aW5nIG9mIHNldmVuICg3KQorCQlkYXRhIGJpdHMgcGx1cyBvbmUgKDEpIG9k
ZCBwYXJpdHkgYml0LiBJdCBpcyBhIHNpbmdsZSBmaWVsZCwKKwkJbGltaXRpbmcgdGhlIHBvc3Np
YmxlIG51bWJlciBvZiB2ZW5kb3JzIHRvIDEyNi4gVG8gZXhwYW5kCisJCXRoZSBtYXhpbXVtIG51
bWJlciBvZiBpZGVudGlmaWNhdGlvbiBjb2RlcywgYSBjb250aW51YXRpb24KKwkJc2NoZW1lIGhh
cyBiZWVuIGRlZmluZWQuCisKKwkJVGhlIHNwZWNpZmllZCBtZWNoYW5pc20gaXMgdGhhdCBhbiBp
ZGVudGl0eSBjb2RlIG9mIDB4N0YKKwkJcmVwcmVzZW50cyB0aGUgImNvbnRpbnVhdGlvbiBjb2Rl
IiBhbmQgaW1wbGllcyB0aGUgcHJlc2VuY2UKKwkJb2YgYW4gYWRkaXRpb25hbCBpZGVudGl0eSBj
b2RlIGZpZWxkLCBhbmQgdGhpcyBtZWNoYW5pc20KKwkJbWF5IGJlIGV4dGVuZGVkIHRvIG11bHRp
cGxlIGNvbnRpbnVhdGlvbiBjb2RlcyBmb2xsb3dlZAorCQlieSB0aGUgbWFudWZhY3R1cmVyJ3Mg
aWRlbnRpdHkgY29kZS4KKworCQlGb3IgZXhhbXBsZSwgQVJNIGhhcyBpZGVudGl0eSBjb2RlIDB4
N0YgMHg3RiAweDdGIDB4N0YgMHgzQiwKKwkJd2hpY2ggaXMgY29kZSAweDNCIG9uIHRoZSBmaWZ0
aCAncGFnZScuIFRoaXMgY2FuIGJlIHNob3J0ZW5lZAorCQlhcyBKRVAxMDYgaWRlbnRpdHkgY29k
ZSBvZiAweDNCIGFuZCBhIGNvbnRpbnVhdGlvbiBjb2RlIG9mCisJCTB4NCB0byByZXByZXNlbnQg
dGhlIGZvdXIgY29udGludWF0aW9uIGNvZGVzIHByZWNlZGluZyB0aGUKKwkJaWRlbnRpdHkgY29k
ZS4KKworCQlUaGlzIHByb3BlcnR5IHJlcHJlc2VudHMgaXQgaW4gdGhlIHNob3J0ZW5lZCBmb3Jt
OgorCQk4LWJpdCBjb250aW51YXRpb24gY29kZSBmb2xsb3dlZCBieSA4IGJpdCBpZGVudGl0eSBj
b2RlCisJCXdpdGhvdXQgdGhlIHBhcml0eSBiaXQuCisKIFdoYXQ6CQkvc3lzL2J1cy9zb2MKIERh
dGU6CQlKYW51YXJ5IDIwMTIKIGNvbnRhY3Q6CUxlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5v
cmc+CmRpZmYgLS1naXQgYS9kcml2ZXJzL2Jhc2Uvc29jLmMgYi9kcml2ZXJzL2Jhc2Uvc29jLmMK
aW5kZXggNGFmMTFhNDIzNDc1Li40NGRjNzU3YWFkZjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvYmFz
ZS9zb2MuYworKysgYi9kcml2ZXJzL2Jhc2Uvc29jLmMKQEAgLTM2LDYgKzM2LDcgQEAgc3RhdGlj
IERFVklDRV9BVFRSKGZhbWlseSwgICBTX0lSVUdPLCBzb2NfaW5mb19nZXQsICBOVUxMKTsKIHN0
YXRpYyBERVZJQ0VfQVRUUihzZXJpYWxfbnVtYmVyLCBTX0lSVUdPLCBzb2NfaW5mb19nZXQsICBO
VUxMKTsKIHN0YXRpYyBERVZJQ0VfQVRUUihzb2NfaWQsICAgU19JUlVHTywgc29jX2luZm9fZ2V0
LCAgTlVMTCk7CiBzdGF0aWMgREVWSUNFX0FUVFIocmV2aXNpb24sIFNfSVJVR08sIHNvY19pbmZv
X2dldCwgIE5VTEwpOworc3RhdGljIERFVklDRV9BVFRSKGplcDEwNl9pZGVudGlmaWNhdGlvbl9j
b2RlLCBTX0lSVUdPLCBzb2NfaW5mb19nZXQsICBOVUxMKTsKIAogc3RydWN0IGRldmljZSAqc29j
X2RldmljZV90b19kZXZpY2Uoc3RydWN0IHNvY19kZXZpY2UgKnNvY19kZXYpCiB7CkBAIC02NCw2
ICs2NSw5IEBAIHN0YXRpYyB1bW9kZV90IHNvY19hdHRyaWJ1dGVfbW9kZShzdHJ1Y3Qga29iamVj
dCAqa29iaiwKIAlpZiAoKGF0dHIgPT0gJmRldl9hdHRyX3NvY19pZC5hdHRyKQogCSAgICAmJiAo
c29jX2Rldi0+YXR0ci0+c29jX2lkICE9IE5VTEwpKQogCQlyZXR1cm4gYXR0ci0+bW9kZTsKKwlp
ZiAoKGF0dHIgPT0gJmRldl9hdHRyX2plcDEwNl9pZGVudGlmaWNhdGlvbl9jb2RlLmF0dHIpCisJ
ICAgICYmIChzb2NfZGV2LT5hdHRyLT5qZXAxMDZfaWQgIT0gTlVMTCkpCisJCXJldHVybiBhdHRy
LT5tb2RlOwogCiAJLyogVW5rbm93biBvciB1bmZpbGxlZCBhdHRyaWJ1dGUuICovCiAJcmV0dXJu
IDA7CkBAIC04NSw2ICs4OSw4IEBAIHN0YXRpYyBzc2l6ZV90IHNvY19pbmZvX2dldChzdHJ1Y3Qg
ZGV2aWNlICpkZXYsCiAJCXJldHVybiBzcHJpbnRmKGJ1ZiwgIiVzXG4iLCBzb2NfZGV2LT5hdHRy
LT5zZXJpYWxfbnVtYmVyKTsKIAlpZiAoYXR0ciA9PSAmZGV2X2F0dHJfc29jX2lkKQogCQlyZXR1
cm4gc3ByaW50ZihidWYsICIlc1xuIiwgc29jX2Rldi0+YXR0ci0+c29jX2lkKTsKKwlpZiAoYXR0
ciA9PSAmZGV2X2F0dHJfamVwMTA2X2lkZW50aWZpY2F0aW9uX2NvZGUpCisJCXJldHVybiBzcHJp
bnRmKGJ1ZiwgIiVzXG4iLCBzb2NfZGV2LT5hdHRyLT5qZXAxMDZfaWQpOwogCiAJcmV0dXJuIC1F
SU5WQUw7CiAKQEAgLTk2LDYgKzEwMiw3IEBAIHN0YXRpYyBzdHJ1Y3QgYXR0cmlidXRlICpzb2Nf
YXR0cltdID0gewogCSZkZXZfYXR0cl9zZXJpYWxfbnVtYmVyLmF0dHIsCiAJJmRldl9hdHRyX3Nv
Y19pZC5hdHRyLAogCSZkZXZfYXR0cl9yZXZpc2lvbi5hdHRyLAorCSZkZXZfYXR0cl9qZXAxMDZf
aWRlbnRpZmljYXRpb25fY29kZS5hdHRyLAogCU5VTEwsCiB9OwogCkBAIC0yMTQsNiArMjIxLDEx
IEBAIHN0YXRpYyBpbnQgc29jX2RldmljZV9tYXRjaF9hdHRyKGNvbnN0IHN0cnVjdCBzb2NfZGV2
aWNlX2F0dHJpYnV0ZSAqYXR0ciwKIAkgICAgKCFhdHRyLT5zb2NfaWQgfHwgIWdsb2JfbWF0Y2go
bWF0Y2gtPnNvY19pZCwgYXR0ci0+c29jX2lkKSkpCiAJCXJldHVybiAwOwogCisJaWYgKG1hdGNo
LT5qZXAxMDZfaWQgJiYKKwkgICAgKCFhdHRyLT5qZXAxMDZfaWQgfHwKKwkgICAgICFnbG9iX21h
dGNoKG1hdGNoLT5qZXAxMDZfaWQsIGF0dHItPmplcDEwNl9pZCkpKQorCQlyZXR1cm4gMDsKKwog
CXJldHVybiAxOwogfQogCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3N5c19zb2MuaCBiL2lu
Y2x1ZGUvbGludXgvc3lzX3NvYy5oCmluZGV4IGQ5YjNjZjBmNDEwYy4uMzk0ZmE3MGFlMTZmIDEw
MDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L3N5c19zb2MuaAorKysgYi9pbmNsdWRlL2xpbnV4L3N5
c19zb2MuaApAQCAtMTQsNiArMTQsNyBAQCBzdHJ1Y3Qgc29jX2RldmljZV9hdHRyaWJ1dGUgewog
CWNvbnN0IGNoYXIgKnJldmlzaW9uOwogCWNvbnN0IGNoYXIgKnNlcmlhbF9udW1iZXI7CiAJY29u
c3QgY2hhciAqc29jX2lkOworCWNvbnN0IGNoYXIgKmplcDEwNl9pZDsKIAljb25zdCB2b2lkICpk
YXRhOwogCWNvbnN0IHN0cnVjdCBhdHRyaWJ1dGVfZ3JvdXAgKmN1c3RvbV9hdHRyX2dyb3VwOwog
fTsKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
