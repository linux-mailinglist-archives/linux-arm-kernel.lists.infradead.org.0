Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A26F111C959
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 10:39:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lixMsJ6upEdP6zJsDdCOWkUhxF1yRwA8DX+JRu29dR0=; b=XrIomNe+zljUG21I+smD7dcpn
	8BDvhIEXjCWNxycA0kUzrDAy4wLxOv6FHt0Pahq4pR7PbcNsKJG4whofDGqR3KDxApGrfYg2ZG2kY
	DFWjuN6nsuKuIiywyi+VTMJDc9x1INB/+vL0Qby1TyM6npB9aRfuJ4DZU8U3tSZ7AJSmKLkuecbxr
	QPmbAnCsthXqQout0XaBYjx5eAHJuIpem/hVkMeuoDjd8ACXhAeGeGkoF8NTeL8Ijgy1GDhHuFvKG
	YJFY54RGnDo+YYiyycq0fi8Z6gV0qObfV62pkRXxgeXp1pMaizHF1uYfgcf7hPv3nPrA4MBQW4aMH
	d3nslEOiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifKwX-00006V-Ex; Thu, 12 Dec 2019 09:39:33 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifKwM-0008Tt-BU
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 09:39:24 +0000
Received: from localhost (mailhub1-ext [192.168.12.233])
 by localhost (Postfix) with ESMTP id 47YTJQ19QQz9tx9d;
 Thu, 12 Dec 2019 10:38:46 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=ud0LAurH; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id PtgGjD3L2HhS; Thu, 12 Dec 2019 10:38:46 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47YTJQ04Spz9tx9b;
 Thu, 12 Dec 2019 10:38:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1576143526; bh=PmEFgaQ7Eo9rbAL5MPouRGU/8Glf/6NoE8/kyEXX9XI=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=ud0LAurHVCHTtzHonbn8ggiFwj8yqRLCq120So6BnJYTKnINs+gq8gijKGFlcEk8d
 +TgnRymV/wNbxtAsJKay2iOmRUp+H61LLodMFeYPw1Athio8oP8JCZjOortSPz5NQK
 1pwHjkeNU9ObsJxl02zEkD5UarY4Tr0gAvrMwPFM=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 1E80E8B85B;
 Thu, 12 Dec 2019 10:38:47 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id kkSWjlcM3lXj; Thu, 12 Dec 2019 10:38:47 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 350948B776;
 Thu, 12 Dec 2019 10:38:46 +0100 (CET)
Subject: Re: [PATCH v2 4/4] powerpc: Book3S 64-bit "heavyweight" KASAN support
To: Balbir Singh <bsingharora@gmail.com>, Daniel Axtens <dja@axtens.net>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linuxppc-dev@lists.ozlabs.org, linux-s390@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kasan-dev@googlegroups.com,
 aneesh.kumar@linux.ibm.com, Dmitry Vyukov <dvyukov@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>
References: <20191210044714.27265-1-dja@axtens.net>
 <20191210044714.27265-5-dja@axtens.net>
 <71751e27-e9c5-f685-7a13-ca2e007214bc@gmail.com>
 <875zincu8a.fsf@dja-thinkpad.axtens.net>
 <2e0f21e6-7552-815b-1bf3-b54b0fc5caa9@gmail.com>
 <87wob3aqis.fsf@dja-thinkpad.axtens.net>
 <1bffad2d-db13-9808-afc9-5594f02dcf01@gmail.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <2f017b74-b6f4-5723-591a-fe7525b85419@c-s.fr>
Date: Thu, 12 Dec 2019 10:38:45 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <1bffad2d-db13-9808-afc9-5594f02dcf01@gmail.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_013922_689464_FFED1517 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxMi8xMi8yMDE5IMOgIDA4OjQyLCBCYWxiaXIgU2luZ2ggYSDDqWNyaXTCoDoKPiAKPiAK
PiBPbiAxMi8xMi8xOSAxOjI0IGFtLCBEYW5pZWwgQXh0ZW5zIHdyb3RlOgo+PiBIaSBCYWxiaXIs
Cj4+Cj4+Pj4+PiArRGlzY29udGlndW91cyBtZW1vcnkgY2FuIG9jY3VyIHdoZW4geW91IGhhdmUg
YSBtYWNoaW5lIHdpdGggbWVtb3J5IHNwcmVhZAo+Pj4+Pj4gK2Fjcm9zcyBtdWx0aXBsZSBub2Rl
cy4gRm9yIGV4YW1wbGUsIG9uIGEgVGFsb3MgSUkgd2l0aCA2NEdCIG9mIFJBTToKPj4+Pj4+ICsK
Pj4+Pj4+ICsgLSAzMkdCIHJ1bnMgZnJvbSAweDAgdG8gMHgwMDAwXzAwMDhfMDAwMF8wMDAwLAo+
Pj4+Pj4gKyAtIHRoZW4gdGhlcmUncyBhIGdhcCwKPj4+Pj4+ICsgLSB0aGVuIHRoZSBmaW5hbCAz
MkdCIHJ1bnMgZnJvbSAweDAwMDBfMjAwMF8wMDAwXzAwMDAgdG8gMHgwMDAwXzIwMDhfMDAwMF8w
MDAwCj4+Pj4+PiArCj4+Pj4+PiArVGhpcyBjYW4gY3JlYXRlIF9zaWduaWZpY2FudF8gaXNzdWVz
Ogo+Pj4+Pj4gKwo+Pj4+Pj4gKyAtIElmIHdlIHRyeSB0byB0cmVhdCB0aGUgbWFjaGluZSBhcyBo
YXZpbmcgNjRHQiBvZiBfY29udGlndW91c18gUkFNLCB3ZSB3b3VsZAo+Pj4+Pj4gKyAgIGFzc3Vt
ZSB0aGF0IHJhbiBmcm9tIDB4MCB0byAweDAwMDBfMDAxMF8wMDAwXzAwMDAuIFdlJ2QgdGhlbiBy
ZXNlcnZlIHRoZQo+Pj4+Pj4gKyAgIGxhc3QgMS84dGggLSAweDAwMDBfMDAwZV8wMDAwXzAwMDAg
dG8gMHgwMDAwXzAwMTBfMDAwMF8wMDAwIGFzIHRoZSBzaGFkb3cKPj4+Pj4+ICsgICByZWdpb24u
IEJ1dCB3aGVuIHdlIHRyeSB0byBhY2Nlc3MgYW55IG9mIHRoYXQsIHdlJ2xsIHRyeSB0byBhY2Nl
c3MgcGFnZXMKPj4+Pj4+ICsgICB0aGF0IGFyZSBub3QgcGh5c2ljYWxseSBwcmVzZW50Lgo+Pj4+
Pj4gKwo+Pj4+Pgo+Pj4+PiBJZiB3ZSByZXNlcnZlZCBtZW1vcnkgZm9yIEtBU0FOIGZyb20gZWFj
aCBub2RlIChkaXNjb250aWcgcmVnaW9uKSwgd2UgbWlnaHQgc3Vydml2ZQo+Pj4+PiB0aGlzIG5v
PyBNYXkgYmUgd2UgbmVlZCBOVU1BIGF3YXJlIEtBU0FOPyBUaGF0IG1pZ2h0IGJlIGEgZ2VuZXJp
YyBjaGFuZ2UsIGp1c3QgdGhpbmtpbmcKPj4+Pj4gb3V0IGxvdWQuCj4+Pj4KPj4+PiBUaGUgY2hh
bGxlbmdlIGlzIHRoYXQgLSBBSVVJIC0gaW4gaW5saW5lIGluc3RydW1lbnRhdGlvbiwgdGhlIGNv
bXBpbGVyCj4+Pj4gZG9lc24ndCBnZW5lcmF0ZSBjYWxscyB0byB0aGluZ3MgbGlrZSBfX2FzYW5f
bG9hZE4gYW5kCj4+Pj4gX19hc2FuX3N0b3JlTi4gSW5zdGVhZCBpdCB1c2VzIC1mYXNhbi1zaGFk
b3ctb2Zmc2V0IHRvIGNvbXB1dGUgdGhlCj4+Pj4gY2hlY2tzLCBhbmQgb25seSBjYWxscyB0aGUg
X19hc2FuX3JlcG9ydCogZmFtaWx5IG9mIGZ1bmN0aW9ucyBpZiBpdAo+Pj4+IGRldGVjdHMgYW4g
aXNzdWUuIFRoaXMgYWxzbyBtYXRjaGVzIHdoYXQgSSBjYW4gb2JzZXJ2ZSB3aXRoIG9iamR1bXAK
Pj4+PiBhY3Jvc3Mgb3V0bGluZSBhbmQgaW5saW5lIGluc3RydW1lbnRhdGlvbiBzZXR0aW5ncy4K
Pj4+Pgo+Pj4+IFRoaXMgbWVhbnMgdGhhdCBmb3IgdGhpcyBzb3J0IG9mIHRoaW5nIHRvIHdvcmsg
d2Ugd291bGQgbmVlZCB0byBlaXRoZXIKPj4+PiBkcm9wIGJhY2sgdG8gb3V0LW9mLWxpbmUgY2Fs
bHMsIG9yIHRlYWNoIHRoZSBjb21waWxlciBob3cgdG8gdXNlIGEKPj4+PiBub25saW5lYXIsIE5V
TUEgYXdhcmUgbWVtLXRvLXNoYWRvdyBtYXBwaW5nLgo+Pj4KPj4+IFllcywgb3V0IG9mIGxpbmUg
aXMgZXhwZW5zaXZlLCBidXQgc2VlbXMgdG8gd29yayB3ZWxsIGZvciBhbGwgdXNlIGNhc2VzLgo+
Pgo+PiBJJ20gbm90IHN1cmUgdGhpcyBpcyB0cnVlLiBMb29raW5nIGF0IHNjcmlwdHMvTWFrZWZp
bGUua2FzYW4sIGFsbG9jYXMsCj4+IHN0YWNrcyBhbmQgZ2xvYmFscyB3aWxsIG9ubHkgYmUgaW5z
dHJ1bWVudGVkIGlmIHlvdSBjYW4gcHJvdmlkZQo+PiBLQVNBTl9TSEFET1dfT0ZGU0VULiBJbiB0
aGUgY2FzZSB5b3UncmUgcHJvcG9zaW5nLCB3ZSBjYW4ndCBwcm92aWRlIGEKPj4gc3RhdGljIG9m
ZnNldC4gSSBfdGhpbmtfIHRoaXMgaXMgYSBjb21waWxlciBsaW1pdGF0aW9uLCB3aGVyZSBzb21l
IG9mCj4+IHRob3NlIGluc3RydW1lbnRhdGlvbnMgb25seSB3b3JrL21ha2Ugc2Vuc2Ugd2l0aCBh
IHN0YXRpYyBvZmZzZXQsIGJ1dAo+PiBwZXJoYXBzIHRoYXQncyBub3QgcmlnaHQ/IERtaXRyeSBh
bmQgQW5kcmV5LCBjYW4geW91IHNoZWQgc29tZSBsaWdodCBvbgo+PiB0aGlzPwo+Pgo+IAo+ICBG
cm9tIHdoYXQgSSBjYW4gcmVhZCwgZXZlcnl0aGluZyBzaG91bGQgc3RpbGwgYmUgc3VwcG9ydGVk
LCB0aGUgaW5mbyBwYWdlCj4gZm9yIGdjYyBzdGF0ZXMgdGhhdCBnbG9iYWxzLCBzdGFjayBhc2Fu
IHNob3VsZCBiZSBlbmFibGVkIGJ5IGRlZmF1bHQuCj4gYWxsb2NhcyBtYXkgaGF2ZSBsaW1pdGVk
IG1lYW5pbmcgaWYgc3RhY2stcHJvdGVjdG9yIGlzIHR1cm5lZCBvbiAobm8/KQoKV2hlcmUgZG8g
eW91IHJlYWQgdGhhdCA/CgpBcyBmYXIgYXMgSSBjYW4gc2VlLCB0aGVyZSBpcyBub3QgbXVjaCBk
ZXRhaWxzIGFib3V0IAotZnNhbml0aXplPWtlcm5lbC1hZGRyZXNzIGFuZCAtZmFzYW4tc2hhZG93
LW9mZnNldD1udW1iZXIgaW4gR0NDIGRvYyAKKGh0dHBzOi8vZ2NjLmdudS5vcmcvb25saW5lZG9j
cy9nY2MvSW5zdHJ1bWVudGF0aW9uLU9wdGlvbnMuaHRtbCkKClsuLi5dCgoKPj4KPiAKPiBJIHRo
aW5rIEkgZ290IENPTkZJR19QSFlTX01FTV9TSVpFX0ZPUl9LQVNOIHdyb25nLCBob25lc3RseSBJ
IGRvbid0IGdldCB3aHkKPiB3ZSBuZWVkIHRoaXMgc2l6ZT8gVGhlIHNpemUgaXMgaW4gTUIgYW5k
IHRoZSBkZWZhdWx0IGlzIDAuCj4gCj4gV2h5IGRvZXMgdGhlIHBvd2VycGMgcG9ydCBvZiBLQVNB
TiBuZWVkIHRoZSBTSVpFIHRvIGJlIGV4cGxpY2l0bHkgc3BlY2lmaWVkPwo+IAoKQUZBSUNTLCBp
dCBpcyBleHBsYWluZWQgaW4gZGV0YWlscyBpbiBEYW5pZWwncyBjb21taXQgbG9nLiBUaGF0J3Mg
CmJlY2F1c2Ugb24gYm9vazNzNjQsIEtWTSByZXF1aXJlcyBLQVNBTiB0byBhbHNvIHdvcmsgd2hl
biBNTVUgaXMgb2ZmLgoKVGhlIDAgZGVmYXVsdCBpcyBmb3Igd2hlbiBDT05GSUdfS0FTQU4gaXMg
bm90IHNlbGVjdGVkLCBpbiBvcmRlciB0byAKYXZvaWQgYSBmb3Jlc3Qgb2YgI2lmZGVmcyBpbiB0
aGUgY29kZS4KCkNocmlzdG9waGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
