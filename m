Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A25148420
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 12:41:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDDm1yIOy1JnNcPUjHSrjLWk5udVhsO54WhdHWtORps=; b=UfUgewQkTDvmQI
	NbzzDM6CIG8wB7t4oV892affriGAUdP3JfJ92HaRkSMGYQFAU349lpGH/N4aiXYU+cnrj57x7ZGwL
	NeBZBVmmgs+cHnn218p3dwiDcGmO5B8jqRlEeX2OXHP913ip7gCR3+bgRpgwP0jKBuujAVGFzrb7Q
	By615ND+a1i/z3/1jUy1/B/Uryz7MNrgzcEa1aYd5CJGMQ9M4wPoUZ5hPafQfFMb6ccAd8fVa4QBw
	ktPdi+nSAC5G1s8GVJJ+DceIRsXcn7bH6uMdnSgfrGfhqnxlu8pV2RFTb/3D8GSzojjNyjfp9ffNb
	+BMcPcPx8tzKIelAnSuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuxL5-0004te-Lq; Fri, 24 Jan 2020 11:41:27 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuxKK-0004MQ-NV; Fri, 24 Jan 2020 11:40:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5475CABED;
 Fri, 24 Jan 2020 11:40:39 +0000 (UTC)
From: =?UTF-8?q?Michal=20Koutn=C3=BD?= <mkoutny@suse.com>
To: cgroups@vger.kernel.org
Subject: [PATCH v2 3/3] kselftest/cgroup: add cgroup destruction test
Date: Fri, 24 Jan 2020 12:40:17 +0100
Message-Id: <20200124114017.8363-4-mkoutny@suse.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200124114017.8363-1-mkoutny@suse.com>
References: <20200120145635.GA30904@blackbody.suse.cz>
 <20200124114017.8363-1-mkoutny@suse.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_034041_096995_15A1F7FB 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 linux-kernel@vger.kernel.org, surenb@google.com, tj@kernel.org,
 lizefan@huawei.com, linux-mediatek@lists.infradead.org,
 linux-kselftest@vger.kernel.org, hannes@cmpxchg.org, matthias.bgg@gmail.com,
 alex.shi@linux.alibaba.com, kernel-team@android.com, guro@fb.com,
 linux-arm-kernel@lists.infradead.org
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
LWJ5OiBTdXJlbiBCYWdoZGFzYXJ5YW4gPHN1cmVuYkBnb29nbGUuY29tPgpbbWtvdXRueUBzdXNl
LmNvbTogRml4IHR5cG8gaW4gdGVzdF9jZ2NvcmVfZGVzdHJveSBjb21tZW50XQpBY2tlZC1ieTog
TWljaGFsIEtvdXRuw70gPG1rb3V0bnlAc3VzZS5jb20+ClNpZ25lZC1vZmYtYnk6IE1pY2hhbCBL
b3V0bsO9IDxta291dG55QHN1c2UuY29tPgotLS0KIHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2Nn
cm91cC90ZXN0X2NvcmUuYyB8IDExMyArKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCAxMTMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL2Nncm91cC90ZXN0X2NvcmUuYyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2Nncm91cC90
ZXN0X2NvcmUuYwppbmRleCBjNWNhNjY5ZmViMmIuLjc2YzlkZDU3OGJhNSAxMDA2NDQKLS0tIGEv
dG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvY2dyb3VwL3Rlc3RfY29yZS5jCisrKyBiL3Rvb2xzL3Rl
c3Rpbmcvc2VsZnRlc3RzL2Nncm91cC90ZXN0X2NvcmUuYwpAQCAtMiw3ICsyLDEwIEBACiAKICNp
bmNsdWRlIDxsaW51eC9saW1pdHMuaD4KICNpbmNsdWRlIDxzeXMvdHlwZXMuaD4KKyNpbmNsdWRl
IDxzeXMvbW1hbi5oPgorI2luY2x1ZGUgPHN5cy93YWl0Lmg+CiAjaW5jbHVkZSA8dW5pc3RkLmg+
CisjaW5jbHVkZSA8ZmNudGwuaD4KICNpbmNsdWRlIDxzdGRpby5oPgogI2luY2x1ZGUgPGVycm5v
Lmg+CiAjaW5jbHVkZSA8c2lnbmFsLmg+CkBAIC0xMiw2ICsxNSwxMTUgQEAKICNpbmNsdWRlICIu
Li9rc2VsZnRlc3QuaCIKICNpbmNsdWRlICJjZ3JvdXBfdXRpbC5oIgogCitzdGF0aWMgaW50IHRv
dWNoX2Fub24oY2hhciAqYnVmLCBzaXplX3Qgc2l6ZSkKK3sKKwlpbnQgZmQ7CisJY2hhciAqcG9z
ID0gYnVmOworCisJZmQgPSBvcGVuKCIvZGV2L3VyYW5kb20iLCBPX1JET05MWSk7CisJaWYgKGZk
IDwgMCkKKwkJcmV0dXJuIC0xOworCisJd2hpbGUgKHNpemUgPiAwKSB7CisJCXNzaXplX3QgcmV0
ID0gcmVhZChmZCwgcG9zLCBzaXplKTsKKworCQlpZiAocmV0IDwgMCkgeworCQkJaWYgKGVycm5v
ICE9IEVJTlRSKSB7CisJCQkJY2xvc2UoZmQpOworCQkJCXJldHVybiAtMTsKKwkJCX0KKwkJfSBl
bHNlIHsKKwkJCXBvcyArPSByZXQ7CisJCQlzaXplIC09IHJldDsKKwkJfQorCX0KKwljbG9zZShm
ZCk7CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCBhbGxvY19hbmRfdG91Y2hfYW5vbl9u
b2V4aXQoY29uc3QgY2hhciAqY2dyb3VwLCB2b2lkICphcmcpCit7CisJaW50IHBwaWQgPSBnZXRw
cGlkKCk7CisJc2l6ZV90IHNpemUgPSAoc2l6ZV90KWFyZzsKKwl2b2lkICpidWY7CisKKwlidWYg
PSBtbWFwKE5VTEwsIHNpemUsIFBST1RfUkVBRCB8IFBST1RfV1JJVEUsIE1BUF9QUklWQVRFIHwg
TUFQX0FOT04sCisJCSAgIDAsIDApOworCWlmIChidWYgPT0gTUFQX0ZBSUxFRCkKKwkJcmV0dXJu
IC0xOworCisJaWYgKHRvdWNoX2Fub24oKGNoYXIgKilidWYsIHNpemUpKSB7CisJCW11bm1hcChi
dWYsIHNpemUpOworCQlyZXR1cm4gLTE7CisJfQorCisJd2hpbGUgKGdldHBwaWQoKSA9PSBwcGlk
KQorCQlzbGVlcCgxKTsKKworCW11bm1hcChidWYsIHNpemUpOworCXJldHVybiAwOworfQorCisv
KgorICogQ3JlYXRlIGEgY2hpbGQgcHJvY2VzcyB0aGF0IGFsbG9jYXRlcyBhbmQgdG91Y2hlcyAx
MDBNQiwgdGhlbiB3YWl0cyB0byBiZQorICoga2lsbGVkLiBXYWl0IHVudGlsIHRoZSBjaGlsZCBp
cyBhdHRhY2hlZCB0byB0aGUgY2dyb3VwLCBraWxsIGFsbCBwcm9jZXNzZXMKKyAqIGluIHRoYXQg
Y2dyb3VwIGFuZCB3YWl0IHVudGlsICJjZ3JvdXAucHJvY3MiIGlzIGVtcHR5LiBBdCB0aGlzIHBv
aW50IHRyeSB0bworICogZGVzdHJveSB0aGUgZW1wdHkgY2dyb3VwLiBUaGUgdGVzdCBoZWxwcyBk
ZXRlY3QgcmFjZSBjb25kaXRpb25zIGJldHdlZW4KKyAqIGR5aW5nIHByb2Nlc3NlcyBsZWF2aW5n
IHRoZSBjZ3JvdXAgYW5kIGNncm91cCBkZXN0cnVjdGlvbiBwYXRoLgorICovCitzdGF0aWMgaW50
IHRlc3RfY2djb3JlX2Rlc3Ryb3koY29uc3QgY2hhciAqcm9vdCkKK3sKKwlpbnQgcmV0ID0gS1NG
VF9GQUlMOworCWNoYXIgKmNnX3Rlc3QgPSBOVUxMOworCWludCBjaGlsZF9waWQ7CisJY2hhciBi
dWZbUEFHRV9TSVpFXTsKKworCWNnX3Rlc3QgPSBjZ19uYW1lKHJvb3QsICJjZ190ZXN0Iik7CisK
KwlpZiAoIWNnX3Rlc3QpCisJCWdvdG8gY2xlYW51cDsKKworCWZvciAoaW50IGkgPSAwOyBpIDwg
MTA7IGkrKykgeworCQlpZiAoY2dfY3JlYXRlKGNnX3Rlc3QpKQorCQkJZ290byBjbGVhbnVwOwor
CisJCWNoaWxkX3BpZCA9IGNnX3J1bl9ub3dhaXQoY2dfdGVzdCwgYWxsb2NfYW5kX3RvdWNoX2Fu
b25fbm9leGl0LAorCQkJCQkgICh2b2lkICopIE1CKDEwMCkpOworCisJCWlmIChjaGlsZF9waWQg
PCAwKQorCQkJZ290byBjbGVhbnVwOworCisJCS8qIHdhaXQgZm9yIHRoZSBjaGlsZCB0byBlbnRl
ciBjZ3JvdXAgKi8KKwkJaWYgKGNnX3dhaXRfZm9yX3Byb2NfY291bnQoY2dfdGVzdCwgMSkpCisJ
CQlnb3RvIGNsZWFudXA7CisKKwkJaWYgKGNnX2tpbGxhbGwoY2dfdGVzdCkpCisJCQlnb3RvIGNs
ZWFudXA7CisKKwkJLyogd2FpdCBmb3IgY2dyb3VwIHRvIGJlIGVtcHR5ICovCisJCXdoaWxlICgx
KSB7CisJCQlpZiAoY2dfcmVhZChjZ190ZXN0LCAiY2dyb3VwLnByb2NzIiwgYnVmLCBzaXplb2Yo
YnVmKSkpCisJCQkJZ290byBjbGVhbnVwOworCQkJaWYgKGJ1ZlswXSA9PSAnXDAnKQorCQkJCWJy
ZWFrOworCQkJdXNsZWVwKDEwMDApOworCQl9CisKKwkJaWYgKHJtZGlyKGNnX3Rlc3QpKQorCQkJ
Z290byBjbGVhbnVwOworCisJCWlmICh3YWl0cGlkKGNoaWxkX3BpZCwgTlVMTCwgMCkgPCAwKQor
CQkJZ290byBjbGVhbnVwOworCX0KKwlyZXQgPSBLU0ZUX1BBU1M7CitjbGVhbnVwOgorCWlmIChj
Z190ZXN0KQorCQljZ19kZXN0cm95KGNnX3Rlc3QpOworCWZyZWUoY2dfdGVzdCk7CisJcmV0dXJu
IHJldDsKK30KKwogLyoKICAqIEEoMCkgLSBCKDApIC0gQygxKQogICogICAgICAgIFwgRCgwKQpA
QCAtNTEyLDYgKzYyNCw3IEBAIHN0cnVjdCBjb3JlY2dfdGVzdCB7CiAJVCh0ZXN0X2NnY29yZV9w
b3B1bGF0ZWQpLAogCVQodGVzdF9jZ2NvcmVfcHJvY19taWdyYXRpb24pLAogCVQodGVzdF9jZ2Nv
cmVfdGhyZWFkX21pZ3JhdGlvbiksCisJVCh0ZXN0X2NnY29yZV9kZXN0cm95KSwKIH07CiAjdW5k
ZWYgVAogCi0tIAoyLjI0LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
