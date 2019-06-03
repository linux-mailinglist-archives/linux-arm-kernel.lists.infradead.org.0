Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EBE32986
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 09:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sgwjjnGkuX3LmgmxpKBSiAa3haRk4il9D3Q0ecOk2gg=; b=IFwwkKTSqKg6vq2kb2gdLPG8x
	n3NrVJW8hwQbwncSv/PIYjs0YYM4oAVDPBMJyVVW3T4gH4n/xQUBfLXJ8vrugr8KLB8bZBTxAENcP
	SM+dMxPGXC/Aty/4aHI2S7mJJd5vc2FeVI5yDPUL1nGa5SWr+3LptG4jPaIivS3eLlyb1ZMqQYndz
	p1LC4wvlZjLjMs/iN/SIvBhtJF76CMxPkaLH0UW1WJjUzlnLVD3NTr2suJl9T1WO9poGg2EwgKen5
	dLxP/opbDlwwfELqeLkkNqYGI2NTbtddn4YVhbXyg4NObHq5zkHtwN72u5QpY4bS0hH2+ZxUwuK60
	UuWk/TKbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXhNn-00019D-Lg; Mon, 03 Jun 2019 07:27:51 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhNg-00017s-8C
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 07:27:46 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 45HRTM1MJ0z9txrs;
 Mon,  3 Jun 2019 09:27:19 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=TNCSahey; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id EkNaZE1SsL4v; Mon,  3 Jun 2019 09:27:19 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 45HRTM0GRPz9txrq;
 Mon,  3 Jun 2019 09:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1559546839; bh=y4yWGiBs4AVaPkQMeBun7TOFr1uohDtRZ02pj0yDyCE=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=TNCSahey5JC9LWgbW3e1bcDRql89qbHWBTW25XvUxSxPPFXy2itMd3Hs0H0bUyhq+
 e6mwel6/ODZK7TATmQwh7L4fvIrozErwyj2oL1qEzoz5z86qjvTnJuVV7sHBJrC7Ix
 GFYSemOr6uoEJTYlsXbJsZy0rBIElzTWSPiT0AWw=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 9BC9B8B7B1;
 Mon,  3 Jun 2019 09:27:23 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id e1C1R_Rcnar6; Mon,  3 Jun 2019 09:27:23 +0200 (CEST)
Received: from PO15451 (po15451.idsi0.si.c-s.fr [172.25.231.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 6B44E8B7A1;
 Mon,  3 Jun 2019 09:27:23 +0200 (CEST)
Subject: Re: [PATCH] crypto: ghash - fix unaligned memory access in
 ghash_setkey()
To: Eric Biggers <ebiggers@kernel.org>, linux-crypto@vger.kernel.org
References: <20190530175039.195574-1-ebiggers@kernel.org>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <0f7e6d3d-aa27-30c3-5c82-67d484bf667c@c-s.fr>
Date: Mon, 3 Jun 2019 09:27:24 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190530175039.195574-1-ebiggers@kernel.org>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_002744_683539_1236B3FF 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: stable@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAzMC8wNS8yMDE5IMOgIDE5OjUwLCBFcmljIEJpZ2dlcnMgYSDDqWNyaXTCoDoKPiBGcm9t
OiBFcmljIEJpZ2dlcnMgPGViaWdnZXJzQGdvb2dsZS5jb20+Cj4gCj4gQ2hhbmdpbmcgZ2hhc2hf
bW9kX2luaXQoKSB0byBiZSBzdWJzeXNfaW5pdGNhbGwgbWFkZSBpdCBzdGFydCBydW5uaW5nCj4g
YmVmb3JlIHRoZSBhbGlnbm1lbnQgZmF1bHQgaGFuZGxlciBoYXMgYmVlbiBpbnN0YWxsZWQgb24g
QVJNLiAgSW4ga2VybmVsCj4gYnVpbGRzIHdoZXJlIHRoZSBrZXlzIGluIHRoZSBnaGFzaCB0ZXN0
IHZlY3RvcnMgaGFwcGVuZWQgdG8gYmUKPiBtaXNhbGlnbmVkIGluIHRoZSBrZXJuZWwgaW1hZ2Us
IHRoaXMgZXhwb3NlZCB0aGUgbG9uZ3N0YW5kaW5nIGJ1ZyB0aGF0Cj4gZ2hhc2hfc2V0a2V5KCkg
aXMgaW5jb3JyZWN0bHkgY2FzdGluZyB0aGUga2V5IGJ1ZmZlciAod2hpY2ggY2FuIGhhdmUgYW55
Cj4gYWxpZ25tZW50KSB0byBiZTEyOCBmb3IgcGFzc2luZyB0byBnZjEyOG11bF9pbml0XzRrX2xs
ZSgpLgo+IAo+IEZpeCB0aGlzIGJ5IG1lbWNweSgpaW5nIHRoZSBrZXkgdG8gYSB0ZW1wb3Jhcnkg
YnVmZmVyLgoKU2hvdWxkbid0IHdlIG1ha2UgaXQgZGVwZW5kZW50IG9uIENPTkZJR19IQVZFXzY0
QklUX0FMSUdORURfQUNDRVNTIG9yIAohQ09ORklHX0hBVkVfRUZGSUNJRU5UX1VOQUxJR05FRF9B
Q0NFU1MgPwoKQ2hyaXN0b3BoZQoKPiAKPiBEb24ndCBmaXggaXQgYnkgc2V0dGluZyBhbiBhbGln
bm1hc2sgb24gdGhlIGFsZ29yaXRobSBpbnN0ZWFkIGJlY2F1c2UKPiB0aGF0IHdvdWxkIHVubmVj
ZXNzYXJpbHkgZm9yY2UgYWxpZ25tZW50IG9mIHRoZSBkYXRhIHRvby4KPiAKPiBGaXhlczogMmNk
YzY4OTlhODhlICgiY3J5cHRvOiBnaGFzaCAtIEFkZCBHSEFTSCBkaWdlc3QgYWxnb3JpdGhtIGZv
ciBHQ00iKQo+IFJlcG9ydGVkLWJ5OiBQZXRlciBSb2JpbnNvbiA8cGJyb2JpbnNvbkBnbWFpbC5j
b20+Cj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBFcmljIEJp
Z2dlcnMgPGViaWdnZXJzQGdvb2dsZS5jb20+Cj4gLS0tCj4gICBjcnlwdG8vZ2hhc2gtZ2VuZXJp
Yy5jIHwgOCArKysrKysrLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9jcnlwdG8vZ2hhc2gtZ2VuZXJpYy5jIGIvY3J5
cHRvL2doYXNoLWdlbmVyaWMuYwo+IGluZGV4IGU2MzA3OTM1NDEzYzEuLmM4YTM0Nzc5OGVhZTYg
MTAwNjQ0Cj4gLS0tIGEvY3J5cHRvL2doYXNoLWdlbmVyaWMuYwo+ICsrKyBiL2NyeXB0by9naGFz
aC1nZW5lcmljLmMKPiBAQCAtMzQsNiArMzQsNyBAQCBzdGF0aWMgaW50IGdoYXNoX3NldGtleShz
dHJ1Y3QgY3J5cHRvX3NoYXNoICp0Zm0sCj4gICAJCQljb25zdCB1OCAqa2V5LCB1bnNpZ25lZCBp
bnQga2V5bGVuKQo+ICAgewo+ICAgCXN0cnVjdCBnaGFzaF9jdHggKmN0eCA9IGNyeXB0b19zaGFz
aF9jdHgodGZtKTsKPiArCWJlMTI4IGs7Cj4gICAKPiAgIAlpZiAoa2V5bGVuICE9IEdIQVNIX0JM
T0NLX1NJWkUpIHsKPiAgIAkJY3J5cHRvX3NoYXNoX3NldF9mbGFncyh0Zm0sIENSWVBUT19URk1f
UkVTX0JBRF9LRVlfTEVOKTsKPiBAQCAtNDIsNyArNDMsMTIgQEAgc3RhdGljIGludCBnaGFzaF9z
ZXRrZXkoc3RydWN0IGNyeXB0b19zaGFzaCAqdGZtLAo+ICAgCj4gICAJaWYgKGN0eC0+Z2YxMjgp
Cj4gICAJCWdmMTI4bXVsX2ZyZWVfNGsoY3R4LT5nZjEyOCk7Cj4gLQljdHgtPmdmMTI4ID0gZ2Yx
MjhtdWxfaW5pdF80a19sbGUoKGJlMTI4ICopa2V5KTsKPiArCj4gKwlCVUlMRF9CVUdfT04oc2l6
ZW9mKGspICE9IEdIQVNIX0JMT0NLX1NJWkUpOwo+ICsJbWVtY3B5KCZrLCBrZXksIEdIQVNIX0JM
T0NLX1NJWkUpOyAvKiBhdm9pZCB2aW9sYXRpbmcgYWxpZ25tZW50IHJ1bGVzICovCj4gKwljdHgt
PmdmMTI4ID0gZ2YxMjhtdWxfaW5pdF80a19sbGUoJmspOwo+ICsJbWVtemVyb19leHBsaWNpdCgm
aywgR0hBU0hfQkxPQ0tfU0laRSk7Cj4gKwo+ICAgCWlmICghY3R4LT5nZjEyOCkKPiAgIAkJcmV0
dXJuIC1FTk9NRU07Cj4gICAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
