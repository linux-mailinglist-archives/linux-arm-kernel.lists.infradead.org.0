Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2D9AC5F9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 12:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JcPvCBz//EiIx+AuGzXXsCppRx9ECi3rPL0HHXrG7OI=; b=TVR4mMTDdZKRBMcZI4hTtuvTM
	wk6h7G1LuVsZ/SYl8Rv9/ejrd7ZtYMwBS+Oc6s2YyCkcJ8u51LROPj/kRrIOdSDnLr6+Yfh+LfaN7
	WNPitjIa9/34Qpf4VWq79lJRUh0GYi+LKdQAJWHfOt2dCMf6fSI/VU8jHKwqo7U+FtescwtQE7UAP
	GYlJ00Pyc5I5Hz8Mql5s6DHDKzDGvgwk8NchSUaDDBqPeTyGg2NfbTSMcAstzNEL+1uxp151nGhFk
	JMFFP9shVxOrUne4YmnxdWCYJs476FfSceRTyMfJBcUBbAmLCYo9FF2ZRce4Tic4htn0s7EHLjeIB
	j/yYBX2oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6XbY-0002DU-QN; Sat, 07 Sep 2019 10:06:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6XbM-0002DB-7E
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 10:05:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA1641576;
 Sat,  7 Sep 2019 03:05:48 -0700 (PDT)
Received: from [10.37.12.3] (unknown [10.37.12.3])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 85A3F3F59C;
 Sat,  7 Sep 2019 03:05:46 -0700 (PDT)
Subject: Re: [Xen-devel] [PATCH] ARM: xen: unexport HYPERVISOR_platform_op
 function
To: Andrew Cooper <andrew.cooper3@citrix.com>, Arnd Bergmann <arnd@arndb.de>
References: <20190906153948.2160342-1-arnd@arndb.de>
 <7abad95e-ea47-c068-d91c-ba503f2530b9@citrix.com>
 <CAK8P3a1qkMLW_Wnn-N0seUw4N5bPwTU7Dy7CwOWxzS6NTnTmiQ@mail.gmail.com>
 <bda2a05b-e2d0-feee-761b-88deeeac2449@citrix.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <95dbd972-fe78-d0ca-f7b4-1a6bdd418eab@arm.com>
Date: Sat, 7 Sep 2019 11:05:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <bda2a05b-e2d0-feee-761b-88deeeac2449@citrix.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_030552_308510_6DC40B4A 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Stefano Stabellini <sstabellini@kernel.org>,
 Emil Velikov <emil.l.velikov@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Denis Efremov <efremov@linux.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 xen-devel <xen-devel@lists.xenproject.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmV3LAoKT24gOS82LzE5IDY6MjAgUE0sIEFuZHJldyBDb29wZXIgd3JvdGU6Cj4gT24g
MDYvMDkvMjAxOSAxNzowMCwgQXJuZCBCZXJnbWFubiB3cm90ZToKPj4gT24gRnJpLCBTZXAgNiwg
MjAxOSBhdCA1OjU1IFBNIEFuZHJldyBDb29wZXIgPGFuZHJldy5jb29wZXIzQGNpdHJpeC5jb20+
IHdyb3RlOgo+Pj4gT24gMDYvMDkvMjAxOSAxNjozOSwgQXJuZCBCZXJnbWFubiB3cm90ZToKPj4+
PiBIWVBFUlZJU09SX3BsYXRmb3JtX29wKCkgaXMgYW4gaW5saW5lIGZ1bmN0aW9uIGFuZCBzaG91
bGQgbm90Cj4+Pj4gYmUgZXhwb3J0ZWQuIFNpbmNlIGNvbW1pdCAxNWJmYzIzNDhkNTQgKCJtb2Rw
b3N0OiBjaGVjayBmb3IKPj4+PiBzdGF0aWMgRVhQT1JUX1NZTUJPTCogZnVuY3Rpb25zIiksIHRo
aXMgY2F1c2VzIGEgd2FybmluZzoKPj4+Pgo+Pj4+IFdBUk5JTkc6ICJIWVBFUlZJU09SX3BsYXRm
b3JtX29wIiBbdm1saW51eF0gaXMgYSBzdGF0aWMgRVhQT1JUX1NZTUJPTF9HUEwKPj4+Pgo+Pj4+
IFJlbW92ZSB0aGUgZXh0cmFuZW91cyBleHBvcnQuCj4+Pj4KPj4+PiBGaXhlczogMTViZmMyMzQ4
ZDU0ICgibW9kcG9zdDogY2hlY2sgZm9yIHN0YXRpYyBFWFBPUlRfU1lNQk9MKiBmdW5jdGlvbnMi
KQo+Pj4+IFNpZ25lZC1vZmYtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Cj4+PiBT
b21ldGhpbmcgaXMgd29ua3kuICBUaGF0IHN5bWJvbCBpcyAoLyByZWFsbHkgb3VnaHQgdG8gYmUp
IGluIHRoZQo+Pj4gaHlwZXJjYWxsIHBhZ2UgYW5kIG1vc3QgZGVmaW5pdGVseSBub3QgaW5saW5l
Lgo+Pj4KPj4+IFdoaWNoIHRyZWUgaXMgdGhhdCBjaGFuZ2VzZXQgZnJvbT8gIEkgY2FuJ3QgZmlu
ZCB0aGUgU0hBLgo+PiBUaGlzIGlzIGZyb20gbGludXgtbmV4dCwgSSB0aGluayBmcm9tIHRoZSBr
YnVpbGQgdHJlZS4KPiAKPiBUaGFua3MuCj4gCj4gSnVsaWVuL1N0ZWZhbm86IFdoeSBhcmUgYW55
IG9mIHRoZXNlIGh5cGVyY2FsbHMgb3V0LW9mLWxpbmU/wqAgQVJNCj4gZG9lc24ndCB1c2UgdGhl
IGh5cGVyY2FsbCBwYWdlLCBhbmQgdGhlcmUgaXMgbm8gYXJndW1lbnQgdHJhbnNsYXRpb24KPiAo
bm90IGV2ZW4gaW4gYXJtMzIgYXMgdGhlcmUgYXJlIG5vIDUtYXJndW1lbnQgaHlwZXJjYWxscyBk
ZWNsYXJlZCkuCgpJIGFtIG5vdCBzdXJlIGhvdyB0aGUgaHlwZXJjYWxsIHBhZ2UgbWFrZXMgdGhp
bmdzIGRpZmZlcmVudC4gWW91IHN0aWxsIApoYXZlIHRvIHN0b3JlIHRoZSBhcmd1bWVudHMgaW4g
dGhlIGNvcnJlY3QgcmVnaXN0ZXIgc28uLi4KCj4gCj4gVGhleSdkIHN1cmVseSBiZSBlYXNpZXIg
dG8gaW1wbGVtZW50IHdpdGggYSBmZXcgc3RhdGljIGlubGluZXMgYW5kIHNvbWUKPiBjb21tb24g
Y29kZSwgdGhhbiB0byB0cnkgYW5kIHJlcGxpY2F0ZSB0aGUgeDg2IHNpZGUgaHlwZXJjYWxsX3Bh
Z2UKPiBpbnRlcmZhY2UgPwoKLi4uIEkgZG9uJ3QgdGhpbmsgdGhleSB3aWxsIGJlIGVhc2llciB0
byBpbXBsZW1lbnQgd2l0aCBhIGZldyBzdGF0aWMgCmlubGluZXMuIFRoZSBpbXBsZW1lbnRhdGlv
biB3aWxsIGxpa2VseSBlbmQgdXAgdG8gYmUgc2ltaWxhciB0byAKYXJjaC94ODYvYXNtL3hlbi9o
eXBlcmNhbGwuaC4KCkZ1cnRoZXJtb3JlLCBvbmUgb2YgdGhlIGRvd25zaWRlIG9mIHBlci1hcmNo
IHN0YXRpYyBpbmxpbmUgaXMgaXQgaXMgbW9yZSAKZGlmZmljdWx0IHRvIGVuc3VyZSB0aGUgcHJv
dG90eXBlIG1hdGNoIGZvciBhbGwgdGhlIGFyY2hpdGVjdHVyZXMuIApBbHRob3VnaCwgaXQgbWln
aHQgYmUgcG9zc2libGUgdG8gbWFrZSB0aGVtIGNvbW1vbiBieSBvbmx5IHJlcXVlc3RpbmcgCnBl
ci1hcmNoIHRvIGltcGxlbWVudCBIWVBFUkNBTExfTiguLi4pLgoKU28gSSB0aGluayB0aGUgY29k
ZSBpcyBiZXR0ZXIgYXMgaXQgaXMuCgpXaGlsZSBsb29raW5nIGF0IHRoZSBjb2RlLCBJIGFsc28g
cmVhbGl6ZWQgdGhhdCB0aGUgaW1wbGVtZW50YXRpb24gb2YgCkhZUEVSQ0FMTF9kbV9vcCBtaWdo
dCBiZSBpbmNvcnJlY3QgZm9yIEFybTMyLiBTaW1pbGFybHkgZG8gcHJpdmNtZCBjYWxsLCAKSSB0
aGluayBkbV9vcCBjYWxsIHNob3VsZCBlbmFibGUgdXNlciBhY2Nlc3MgYXMgdGhleSB3aWxsIGJl
IHVzZWQgYnkgCnVzZXJzcGFjZS4KCldlIGRvbid0IHVzZSBkbV9vcCBvbiBBcm0gc28gZmFyLCBo
ZW5jZSB3aHkgSSB0aGluayB0aGlzIHdhcyB1bm5vdGljZWQuIApJIHdpbGwgc2VlIGlmIEkgY2Fu
IHJlcHJvZHVjZSBpdCBhbmQgc2VuZCBhIHBhdGNoLgoKQ2hlZXJzLAoKLS0gCkp1bGllbiBHcmFs
bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
