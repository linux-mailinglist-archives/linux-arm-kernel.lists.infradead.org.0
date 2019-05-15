Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6211F625
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 16:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ih0wx45Fjx2WQE2v9w4FGO0G1PtB7V8INpBSfZA/mFQ=; b=OTpEuICERmJlYz
	diFzPPfprxH42g8rA7mXFQ8dKm7bgGQMCGhEKuwDJTzL/16bFJUVWScBQuBaAS4dV87gu5MJuOhDv
	x6xz49tfARBzDQBCtbSqxMEUvXFhkkgKZzK83O2TcAVZtN2QIUR1d7gO4A446/1QpbFod5oUJpHv6
	hmZoHJ7/8gcekHFD6CuybKeeOlEAH163XH1oMNXdcT5+/bgg6HpARuCJLnX/3xOs2yiM5xK780/hU
	+QxhkP/T3TTVQJa3iFvUnXt8CHKDc+4jpDCsIwR/VmJM7+BuY2ubLwlw6LRHsCMFoPcqjO9XLP3XQ
	dAKZSMmamYmUqeZrQWzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQuTa-0006Td-54; Wed, 15 May 2019 14:01:46 +0000
Received: from [2001:bc8:3541:100::1] (helo=ou.quest-ce.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQuTS-0006Sn-WE
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 14:01:40 +0000
Received: from [2a01:e35:39f2:1220:2452:dd6c:fe2f:be2c] (helo=opteyam2)
 by ou.quest-ce.net with esmtpsa (TLS1.1:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <ydroneaud@opteya.com>)
 id 1hQuSD-0003J6-UX; Wed, 15 May 2019 16:00:22 +0200
Message-ID: <4c5ae46657e1931a832def5645db61eb0bf1accd.camel@opteya.com>
From: Yann Droneaud <ydroneaud@opteya.com>
To: Christian Brauner <christian@brauner.io>, jannh@google.com,
 oleg@redhat.com,  viro@zeniv.linux.org.uk, torvalds@linux-foundation.org, 
 linux-kernel@vger.kernel.org, arnd@arndb.de, dhowells@redhat.com
Date: Wed, 15 May 2019 16:00:20 +0200
In-Reply-To: <20190515100400.3450-1-christian@brauner.io>
References: <20190515100400.3450-1-christian@brauner.io>
Organization: OPTEYA
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a01:e35:39f2:1220:2452:dd6c:fe2f:be2c
X-SA-Exim-Mail-From: ydroneaud@opteya.com
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on ou.quest-ce.net
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham version=3.3.2
Subject: Re: [PATCH 1/2] pid: add pidfd_open()
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on ou.quest-ce.net)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_070139_176664_C4D63450 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, elena.reshetova@intel.com,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 linux-m68k@lists.linux-m68k.org, luto@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-api@vger.kernel.org, cyphar@cyphar.com, luto@amacapital.net,
 ebiederm@xmission.com, linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpMZSBtZXJjcmVkaSAxNSBtYWkgMjAxOSDDoCAxMjowMyArMDIwMCwgQ2hyaXN0aWFuIEJy
YXVuZXIgYSDDqWNyaXQgOgo+IAo+IGRpZmYgLS1naXQgYS9rZXJuZWwvcGlkLmMgYi9rZXJuZWwv
cGlkLmMKPiBpbmRleCAyMDg4MTU5OGJkZmEuLjIzN2QxOGQ2ZWNiOCAxMDA2NDQKPiAtLS0gYS9r
ZXJuZWwvcGlkLmMKPiArKysgYi9rZXJuZWwvcGlkLmMKPiBAQCAtNDUxLDYgKzQ1Miw1MyBAQCBz
dHJ1Y3QgcGlkICpmaW5kX2dlX3BpZChpbnQgbnIsIHN0cnVjdAo+IHBpZF9uYW1lc3BhY2UgKm5z
KQo+ICAJcmV0dXJuIGlkcl9nZXRfbmV4dCgmbnMtPmlkciwgJm5yKTsKPiAgfQo+ICAKPiArLyoq
Cj4gKyAqIHBpZGZkX29wZW4oKSAtIE9wZW4gbmV3IHBpZCBmaWxlIGRlc2NyaXB0b3IuCj4gKyAq
Cj4gKyAqIEBwaWQ6ICAgcGlkIGZvciB3aGljaCB0byByZXRyaWV2ZSBhIHBpZGZkCj4gKyAqIEBm
bGFnczogZmxhZ3MgdG8gcGFzcwo+ICsgKgo+ICsgKiBUaGlzIGNyZWF0ZXMgYSBuZXcgcGlkIGZp
bGUgZGVzY3JpcHRvciB3aXRoIHRoZSBPX0NMT0VYRUMgZmxhZyBzZXQgZm9yCj4gKyAqIHRoZSBw
cm9jZXNzIGlkZW50aWZpZWQgYnkgQHBpZC4gQ3VycmVudGx5LCB0aGUgcHJvY2VzcyBpZGVudGlm
aWVkIGJ5Cj4gKyAqIEBwaWQgbXVzdCBiZSBhIHRocmVhZC1ncm91cCBsZWFkZXIuIFRoaXMgcmVz
dHJpY3Rpb24gY3VycmVudGx5IGV4aXN0cwo+ICsgKiBmb3IgYWxsIGFzcGVjdHMgb2YgcGlkZmRz
IGluY2x1ZGluZyBwaWRmZCBjcmVhdGlvbiAoQ0xPTkVfUElERkQgY2Fubm90Cj4gKyAqIGJlIHVz
ZWQgd2l0aCBDTE9ORV9USFJFQUQpIGFuZCBwaWRmZCBwb2xsaW5nIChvbmx5IHN1cHBvcnRzIHRo
cmVhZCBncm91cAo+ICsgKiBsZWFkZXJzKS4KPiArICoKCldvdWxkIGl0IGJlIHBvc3NpYmxlIHRv
IGNyZWF0ZSBmaWxlIGRlc2NyaXB0b3Igd2l0aCAicmVzdHJpY3RlZCIKb3BlcmF0aW9uID8KCi0g
T19SRE9OTFk6IHdhaXRpbmcgZm9yIHByb2Nlc3MgY29tcGxldGlvbiBhbGxvd2VkIChmb3IgZXhh
bXBsZSkKLSBPX1dST05MWTogc2VuZGluZyBwcm9jZXNzIHNpZ25hbCBhbGxvd2VkCgpGb3IgZXhh
bXBsZSwgYSBwcm9jZXNzIGNvdWxkIHNlbmQgb3ZlciBhIFVuaXggc29ja2V0IGEgcHJvY2VzcyBh
IHBpZGZkLAphbGxvd2luZyB0aGlzIHRvIG9ubHkgd2FpdCBmb3IgY29tcGxldGlvbiwgYnV0IG5v
dCBzZW5kaW5nIHNpZ25hbCA/CgpJIHNlZSB0aGUgcGVybWlzc2lvbiBjaGVjayBpcyBub3QgZG9u
ZSBpbiBwaWRmZF9vcGVuKCksIHNvIHdoYXQgcHJldmVudAphIHVzZXIgZnJvbSBzZW5kaW5nIGEg
c2lnbmFsIHRvIGFub3RoZXIgdXNlciBvd25lZCBwcm9jZXNzID8KCklmIGl0J3MgaW4gcGlkZmRf
c2VuZF9zaWduYWwoKSwgdGhlbiwgcGFzc2luZyB0aGUgc29ja2V0IHRocm91Z2gKU0NNX1JJR0hU
IHdvbid0IGJlIHVzZWZ1bCBpZiB0aGUgdGFyZ2V0IHByb2Nlc3MgaXMgbm90IG93bmVkIGJ5IHRo
ZQpzYW1lIHVzZXIsIG9yIHJvb3QuCgo+ICsgKiBSZXR1cm46IE9uIHN1Y2Nlc3MsIGEgY2xvZXhl
YyBwaWRmZCBpcyByZXR1cm5lZC4KPiArICogICAgICAgICBPbiBlcnJvciwgYSBuZWdhdGl2ZSBl
cnJubyBudW1iZXIgd2lsbCBiZSByZXR1cm5lZC4KPiArICovCj4gK1NZU0NBTExfREVGSU5FMihw
aWRmZF9vcGVuLCBwaWRfdCwgcGlkLCB1bnNpZ25lZCBpbnQsIGZsYWdzKQo+ICt7Cj4gKwlpbnQg
ZmQsIHJldDsKPiArCXN0cnVjdCBwaWQgKnA7Cj4gKwlzdHJ1Y3QgdGFza19zdHJ1Y3QgKnRzazsK
PiArCj4gKwlpZiAoZmxhZ3MpCj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwo+ICsJaWYgKHBpZCA8
PSAwKQo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICsKPiArCXAgPSBmaW5kX2dldF9waWQocGlkKTsK
PiArCWlmICghcCkKPiArCQlyZXR1cm4gLUVTUkNIOwo+ICsKPiArCXJjdV9yZWFkX2xvY2soKTsK
PiArCXRzayA9IHBpZF90YXNrKHAsIFBJRFRZUEVfUElEKTsKPiArCWlmICghdHNrKQo+ICsJCXJl
dCA9IC1FU1JDSDsKPiArCWVsc2UgaWYgKHVubGlrZWx5KCF0aHJlYWRfZ3JvdXBfbGVhZGVyKHRz
aykpKQo+ICsJCXJldCA9IC1FSU5WQUw7Cj4gKwllbHNlCj4gKwkJcmV0ID0gMDsKPiArCXJjdV9y
ZWFkX3VubG9jaygpOwo+ICsKPiArCWZkID0gcmV0ID86IHBpZGZkX2NyZWF0ZShwKTsKPiArCXB1
dF9waWQocCk7Cj4gKwlyZXR1cm4gZmQ7Cj4gK30KPiArCj4gIHZvaWQgX19pbml0IHBpZF9pZHJf
aW5pdCh2b2lkKQo+ICB7Cj4gIAkvKiBWZXJpZnkgbm8gb25lIGhhcyBkb25lIGFueXRoaW5nIHNp
bGx5OiAqLwoKUmVnYXJkcy4KCi0tIApZYW5uIERyb25lYXVkCk9QVEVZQQoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
