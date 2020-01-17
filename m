Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D7F140DA8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 16:16:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xk/vvdKQk3lycirmfXe+vLrk1iX0qJ8RPcCfFHJ1gDg=; b=oEKSnbXzHhcEAC
	fG10lMXBhQtKAoeRMshILj9zXmprhuAfYJvBKPC6VBgMHhB0QQIjAWXbfMLoq26t3DSLMF6aqyuH0
	/NiW0+s/+myezXhp180LtNZJ0ssClhjSb8m2OymlQfxp5+dq5hbX1sP0C0dbEPCpanfUH40UbcQm8
	pb04YYKpipldJgkHHdimgO9iZu/qQ89VykfcZpvTN7oIUOYdBxpVxD3Hd3102JcGdYNRJlmSmBAqI
	4xLTrgsu/MR3shKsWQcZaYl+KDivc1Fzc1+fFiMFW7TknaO5pC3bBKIFGhZIfKn1vhiFA0EyasT0r
	mhiK3LeUpQ/5zwprYEZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isTMU-0000a1-AX; Fri, 17 Jan 2020 15:16:38 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isTLg-0008Vz-BG; Fri, 17 Jan 2020 15:15:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 09FD5AF42;
 Fri, 17 Jan 2020 15:15:47 +0000 (UTC)
From: =?UTF-8?q?Michal=20Koutn=C3=BD?= <mkoutny@suse.com>
To: cgroups@vger.kernel.org
Subject: [PATCH 3/3] kselftest/cgroup: add cgroup destruction test
Date: Fri, 17 Jan 2020 16:15:33 +0100
Message-Id: <20200117151533.12381-4-mkoutny@suse.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200117151533.12381-1-mkoutny@suse.com>
References: <20200116043612.52782-1-surenb@google.com>
 <20200117151533.12381-1-mkoutny@suse.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_071548_670075_B3F95D43 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linger.lee@mediatek.com, tomcherry@google.com, shuah@kernel.org,
 linux-kernel@vger.kernel.org, matthias.bgg@gmail.com,
 Li Zefan <lizefan@huawei.com>, linux-mediatek@lists.infradead.org,
 linux-kselftest@vger.kernel.org, Johannes Weiner <hannes@cmpxchg.org>,
 Tejun Heo <tj@kernel.org>, alex.shi@linux.alibaba.com, kernel-team@android.com,
 guro@fb.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogU3VyZW4gQmFnaGRhc2FyeWFuIDxzdXJlbmJAZ29vZ2xlLmNvbT4KCkFkZCBuZXcgdGVz
dCB0byB2ZXJpZnkgdGhhdCBhIGNncm91cCB3aXRoIGRlYWQgcHJvY2Vzc2VzIGNhbiBiZSBkZXN0
cm95ZWQuClRoZSB0ZXN0IHNwYXducyBhIGNoaWxkIHByb2Nlc3Mgd2hpY2ggYWxsb2NhdGVzIGFu
ZCB0b3VjaGVzIDEwME1CIG9mIFJBTQp0byBlbnN1cmUgcHJvbG9uZ2VkIGV4aXQuIFN1YnNlcXVl
bnRseSBpdCBraWxscyB0aGUgY2hpbGQsIHdhaXRzIHVudGlsCnRoZSBjZ3JvdXAgY29udGFpbmlu
ZyB0aGUgY2hpbGQgaXMgZW1wdHkgYW5kIGRlc3Ryb3lzIHRoZSBjZ3JvdXAuCgpTaWduZWQtb2Zm
LWJ5OiBTdXJlbiBCYWdoZGFzYXJ5YW4gPHN1cmVuYkBnb29nbGUuY29tPgpTaWduZWQtb2ZmLWJ5
OiBNaWNoYWwgS291dG7DvSA8bWtvdXRueUBzdXNlLmNvbT4KLS0tCiB0b29scy90ZXN0aW5nL3Nl
bGZ0ZXN0cy9jZ3JvdXAvdGVzdF9jb3JlLmMgfCAxMTMgKysrKysrKysrKysrKysrKysrKysrCiAx
IGZpbGUgY2hhbmdlZCwgMTEzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS90b29scy90ZXN0
aW5nL3NlbGZ0ZXN0cy9jZ3JvdXAvdGVzdF9jb3JlLmMgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0
cy9jZ3JvdXAvdGVzdF9jb3JlLmMKaW5kZXggYzVjYTY2OWZlYjJiLi4yYTUyNDJlYzFhNDkgMTAw
NjQ0Ci0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2Nncm91cC90ZXN0X2NvcmUuYworKysg
Yi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9jZ3JvdXAvdGVzdF9jb3JlLmMKQEAgLTIsNyArMiwx
MCBAQAogCiAjaW5jbHVkZSA8bGludXgvbGltaXRzLmg+CiAjaW5jbHVkZSA8c3lzL3R5cGVzLmg+
CisjaW5jbHVkZSA8c3lzL21tYW4uaD4KKyNpbmNsdWRlIDxzeXMvd2FpdC5oPgogI2luY2x1ZGUg
PHVuaXN0ZC5oPgorI2luY2x1ZGUgPGZjbnRsLmg+CiAjaW5jbHVkZSA8c3RkaW8uaD4KICNpbmNs
dWRlIDxlcnJuby5oPgogI2luY2x1ZGUgPHNpZ25hbC5oPgpAQCAtMTIsNiArMTUsMTE1IEBACiAj
aW5jbHVkZSAiLi4va3NlbGZ0ZXN0LmgiCiAjaW5jbHVkZSAiY2dyb3VwX3V0aWwuaCIKIAorc3Rh
dGljIGludCB0b3VjaF9hbm9uKGNoYXIgKmJ1Ziwgc2l6ZV90IHNpemUpCit7CisJaW50IGZkOwor
CWNoYXIgKnBvcyA9IGJ1ZjsKKworCWZkID0gb3BlbigiL2Rldi91cmFuZG9tIiwgT19SRE9OTFkp
OworCWlmIChmZCA8IDApCisJCXJldHVybiAtMTsKKworCXdoaWxlIChzaXplID4gMCkgeworCQlz
c2l6ZV90IHJldCA9IHJlYWQoZmQsIHBvcywgc2l6ZSk7CisKKwkJaWYgKHJldCA8IDApIHsKKwkJ
CWlmIChlcnJubyAhPSBFSU5UUikgeworCQkJCWNsb3NlKGZkKTsKKwkJCQlyZXR1cm4gLTE7CisJ
CQl9CisJCX0gZWxzZSB7CisJCQlwb3MgKz0gcmV0OworCQkJc2l6ZSAtPSByZXQ7CisJCX0KKwl9
CisJY2xvc2UoZmQpOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgYWxsb2NfYW5kX3Rv
dWNoX2Fub25fbm9leGl0KGNvbnN0IGNoYXIgKmNncm91cCwgdm9pZCAqYXJnKQoreworCWludCBw
cGlkID0gZ2V0cHBpZCgpOworCXNpemVfdCBzaXplID0gKHNpemVfdClhcmc7CisJdm9pZCAqYnVm
OworCisJYnVmID0gbW1hcChOVUxMLCBzaXplLCBQUk9UX1JFQUQgfCBQUk9UX1dSSVRFLCBNQVBf
UFJJVkFURSB8IE1BUF9BTk9OLAorCQkgICAwLCAwKTsKKwlpZiAoYnVmID09IE1BUF9GQUlMRUQp
CisJCXJldHVybiAtMTsKKworCWlmICh0b3VjaF9hbm9uKChjaGFyICopYnVmLCBzaXplKSkgewor
CQltdW5tYXAoYnVmLCBzaXplKTsKKwkJcmV0dXJuIC0xOworCX0KKworCXdoaWxlIChnZXRwcGlk
KCkgPT0gcHBpZCkKKwkJc2xlZXAoMSk7CisKKwltdW5tYXAoYnVmLCBzaXplKTsKKwlyZXR1cm4g
MDsKK30KKworLyoKKyAqIENyZWF0ZSBhIGNoaWxkIHByb2Nlc3MgdGhhdCBhbGxvY2F0ZXMgYW5k
IHRvdWNoZXMgMTAwTUIsIHRoZW4gd2FpdHMgdG8gYmUKKyAqIGtpbGxlZC4gV2FpdCB1bnRpbCB0
aGUgY2hpbGQgaXMgYXR0YWNoZWQgdG8gdGhlIGNncm91cCwga2lsbCBhbGwgcHJvY2Vzc2VzCisg
KiBpbiB0aGF0IGNncm91cCBhbmQgd2FpdCB1bnRpbCAiY2dyb3VwLmV2ZW50cyIgaXMgZW1wdHku
IEF0IHRoaXMgcG9pbnQgdHJ5IHRvCisgKiBkZXN0cm95IHRoZSBlbXB0eSBjZ3JvdXAuIFRoZSB0
ZXN0IGhlbHBzIGRldGVjdCByYWNlIGNvbmRpdGlvbnMgYmV0d2VlbgorICogZHlpbmcgcHJvY2Vz
c2VzIGxlYXZpbmcgdGhlIGNncm91cCBhbmQgY2dyb3VwIGRlc3RydWN0aW9uIHBhdGguCisgKi8K
K3N0YXRpYyBpbnQgdGVzdF9jZ2NvcmVfZGVzdHJveShjb25zdCBjaGFyICpyb290KQoreworCWlu
dCByZXQgPSBLU0ZUX0ZBSUw7CisJY2hhciAqY2dfdGVzdCA9IE5VTEw7CisJaW50IGNoaWxkX3Bp
ZDsKKwljaGFyIGJ1ZltQQUdFX1NJWkVdOworCisJY2dfdGVzdCA9IGNnX25hbWUocm9vdCwgImNn
X3Rlc3QiKTsKKworCWlmICghY2dfdGVzdCkKKwkJZ290byBjbGVhbnVwOworCisJZm9yIChpbnQg
aSA9IDA7IGkgPCAxMDsgaSsrKSB7CisJCWlmIChjZ19jcmVhdGUoY2dfdGVzdCkpCisJCQlnb3Rv
IGNsZWFudXA7CisKKwkJY2hpbGRfcGlkID0gY2dfcnVuX25vd2FpdChjZ190ZXN0LCBhbGxvY19h
bmRfdG91Y2hfYW5vbl9ub2V4aXQsCisJCQkJCSAgKHZvaWQgKikgTUIoMTAwKSk7CisKKwkJaWYg
KGNoaWxkX3BpZCA8IDApCisJCQlnb3RvIGNsZWFudXA7CisKKwkJLyogd2FpdCBmb3IgdGhlIGNo
aWxkIHRvIGVudGVyIGNncm91cCAqLworCQlpZiAoY2dfd2FpdF9mb3JfcHJvY19jb3VudChjZ190
ZXN0LCAxKSkKKwkJCWdvdG8gY2xlYW51cDsKKworCQlpZiAoY2dfa2lsbGFsbChjZ190ZXN0KSkK
KwkJCWdvdG8gY2xlYW51cDsKKworCQkvKiB3YWl0IGZvciBjZ3JvdXAgdG8gYmUgZW1wdHkgKi8K
KwkJd2hpbGUgKDEpIHsKKwkJCWlmIChjZ19yZWFkKGNnX3Rlc3QsICJjZ3JvdXAucHJvY3MiLCBi
dWYsIHNpemVvZihidWYpKSkKKwkJCQlnb3RvIGNsZWFudXA7CisJCQlpZiAoYnVmWzBdID09ICdc
MCcpCisJCQkJYnJlYWs7CisJCQl1c2xlZXAoMTAwMCk7CisJCX0KKworCQlpZiAocm1kaXIoY2df
dGVzdCkpCisJCQlnb3RvIGNsZWFudXA7CisKKwkJaWYgKHdhaXRwaWQoY2hpbGRfcGlkLCBOVUxM
LCAwKSA8IDApCisJCQlnb3RvIGNsZWFudXA7CisJfQorCXJldCA9IEtTRlRfUEFTUzsKK2NsZWFu
dXA6CisJaWYgKGNnX3Rlc3QpCisJCWNnX2Rlc3Ryb3koY2dfdGVzdCk7CisJZnJlZShjZ190ZXN0
KTsKKwlyZXR1cm4gcmV0OworfQorCiAvKgogICogQSgwKSAtIEIoMCkgLSBDKDEpCiAgKiAgICAg
ICAgXCBEKDApCkBAIC01MTIsNiArNjI0LDcgQEAgc3RydWN0IGNvcmVjZ190ZXN0IHsKIAlUKHRl
c3RfY2djb3JlX3BvcHVsYXRlZCksCiAJVCh0ZXN0X2NnY29yZV9wcm9jX21pZ3JhdGlvbiksCiAJ
VCh0ZXN0X2NnY29yZV90aHJlYWRfbWlncmF0aW9uKSwKKwlUKHRlc3RfY2djb3JlX2Rlc3Ryb3kp
LAogfTsKICN1bmRlZiBUCiAKLS0gCjIuMjQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
