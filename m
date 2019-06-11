Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2EB3C358
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 07:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYLc2LZyiLs1Jnijzk0lScrvSuSFki2FduPMawf54pE=; b=B0a6nUl8p7i/7S
	xbl2eTpEvKUAbzb9um3ilT0flObd5gzG9c4qp6aWBvLjSY5+kQVtuRYbSF8BT39LG0kNnRLlmFEp5
	Ne2U1u2S7OAHg5x6UkwqmsK3MFPYYTHvyIYkHLx/PPo8GM5YjqxVbsQN21TVw2iKsC0Spdx8W3T9E
	Mt6ZwvtW3BXWGnCCky/ncPS/ax1RVdbBwcMhGbl2C1B7IS5/2ElCVR/JS+HrIXGqKzh8X1YHxorfd
	1C9MU6duHDPLKjDATnTtOZiiD54PNI5dr9mAi1QP6da8HXaJek8Qi9j+F0yxIFrOh6twKfnoZUMkH
	ZFpeAx9ACDEUzC94T1pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haZ87-0001yk-UR; Tue, 11 Jun 2019 05:15:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haZ7v-0001yN-Qb
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 05:15:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 55CCB344;
 Mon, 10 Jun 2019 22:15:19 -0700 (PDT)
Received: from [10.162.43.135] (p8cg001049571a15.blr.arm.com [10.162.43.135])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 5A7FF3F73C; Mon, 10 Jun 2019 22:15:11 -0700 (PDT)
Subject: Re: [RFC V3] mm: Generalize and rename notify_page_fault() as
 kprobe_page_fault()
To: Christophe Leroy <christophe.leroy@c-s.fr>, linux-kernel@vger.kernel.org, 
 linux-mm@kvack.org
References: <1559903655-5609-1-git-send-email-anshuman.khandual@arm.com>
 <ec764ff4-f68a-fce5-ac1e-a4664e1123c7@c-s.fr>
 <97e9c9b3-89c8-d378-4730-841a900e6800@arm.com>
 <f6d295c8-574d-3e64-79ae-2f7d3ff4c9f0@c-s.fr>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <1875ab7a-204e-4150-c7cc-d282f69da724@arm.com>
Date: Tue, 11 Jun 2019 10:45:30 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <f6d295c8-574d-3e64-79ae-2f7d3ff4c9f0@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_221519_961350_34EB1442 
X-CRM114-Status: GOOD (  20.27  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 Matthew Wilcox <willy@infradead.org>, sparclinux@vger.kernel.org,
 linux-s390@vger.kernel.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Will Deacon <will.deacon@arm.com>,
 Ingo Molnar <mingo@redhat.com>, Fenghua Yu <fenghua.yu@intel.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrey Konovalov <andreyknvl@google.com>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNi8xMS8yMDE5IDEwOjE2IEFNLCBDaHJpc3RvcGhlIExlcm95IHdyb3RlOgo+IAo+IAo+
IExlIDEwLzA2LzIwMTkgw6AgMDQ6MzksIEFuc2h1bWFuIEtoYW5kdWFsIGEgw6ljcml0wqA6Cj4+
Cj4+Cj4+IE9uIDA2LzA3LzIwMTkgMDk6MDEgUE0sIENocmlzdG9waGUgTGVyb3kgd3JvdGU6Cj4+
Pgo+Pj4KPj4+IExlIDA3LzA2LzIwMTkgw6AgMTI6MzQsIEFuc2h1bWFuIEtoYW5kdWFsIGEgw6lj
cml0wqA6Cj4+Pj4gVmVyeSBzaW1pbGFyIGRlZmluaXRpb25zIGZvciBub3RpZnlfcGFnZV9mYXVs
dCgpIGFyZSBiZWluZyB1c2VkIGJ5IG11bHRpcGxlCj4+Pj4gYXJjaGl0ZWN0dXJlcyBkdXBsaWNh
dGluZyBtdWNoIG9mIHRoZSBzYW1lIGNvZGUuIFRoaXMgYXR0ZW1wdHMgdG8gdW5pZnkgYWxsCj4+
Pj4gb2YgdGhlbSBpbnRvIGEgZ2VuZXJpYyBpbXBsZW1lbnRhdGlvbiwgcmVuYW1lIGl0IGFzIGtw
cm9iZV9wYWdlX2ZhdWx0KCkgYW5kCj4+Pj4gdGhlbiBtb3ZlIGl0IHRvIGEgY29tbW9uIGhlYWRl
ci4KPj4+Pgo+Pj4+IGtwcm9iZXNfYnVpbHRfaW4oKSBjYW4gZGV0ZWN0IENPTkZJR19LUFJPQkVT
LCBoZW5jZSBuZXcga3Byb2JlX3BhZ2VfZmF1bHQoKQo+Pj4+IG5lZWQgbm90IGJlIHdyYXBwZWQg
YWdhaW4gd2l0aGluIENPTkZJR19LUFJPQkVTLiBUcmFwIG51bWJlciBhcmd1bWVudCBjYW4KPj4+
PiBub3cgY29udGFpbiB1cHRvIGFuICd1bnNpZ25lZCBpbnQnIGFjY29tbW9kYXRpbmcgYWxsIHBv
c3NpYmxlIHBsYXRmb3Jtcy4KPj4+Pgo+Pj4+IGtwcm9iZV9wYWdlX2ZhdWx0KCkgZ29lcyB0aGUg
eDg2IHdheSB3aGlsZSBkZWFsaW5nIHdpdGggcHJlZW1wdGlvbiBjb250ZXh0Lgo+Pj4+IEFzIGV4
cGxhaW5lZCBpbiB0aGVzZSBmb2xsb3dpbmcgY29tbWl0cyB0aGUgaW52b2tpbmcgY29udGV4dCBp
biBpdHNlbGYgbXVzdAo+Pj4+IGJlIG5vbi1wcmVlbXB0aWJsZSBmb3Iga3Byb2JlcyBwcm9jZXNz
aW5nIGNvbnRleHQgaXJyZXNwZWN0aXZlIG9mIHdoZXRoZXIKPj4+PiBrcHJvYmVfcnVubmluZygp
IG9yIHBlcmhhcHMgc21wX3Byb2Nlc3Nvcl9pZCgpIGlzIHNhZmUgb3Igbm90LiBJdCBkb2VzIG5v
dAo+Pj4+IG1ha2UgbXVjaCBzZW5zZSB0byBjb250aW51ZSB3aGVuIG9yaWdpbmFsIGNvbnRleHQg
aXMgcHJlZW1wdGlibGUuIEluc3RlYWQKPj4+PiBqdXN0IGJhaWwgb3V0IGVhcmxpZXIuCj4+Pj4K
Pj4+PiBjb21taXQgYTk4MGMwZWY5ZjZkCj4+Pj4gKCJ4ODYva3Byb2JlczogUmVmYWN0b3Iga3By
b2Jlc19mYXVsdCgpIGxpa2Uga3Byb2JlX2V4Y2VwdGlvbnNfbm90aWZ5KCkiKQo+Pj4+Cj4+Pj4g
Y29tbWl0IGI1MDZhOWQwOGJhZSAoIng4NjogY29kZSBjbGFyaWZpY2F0aW9uIHBhdGNoIHRvIEtw
cm9iZXMgYXJjaCBjb2RlIikKPj4+Pgo+Pj4+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKPj4+PiBDYzogbGludXgtaWE2NEB2Z2VyLmtlcm5lbC5vcmcKPj4+PiBDYzog
bGludXhwcGMtZGV2QGxpc3RzLm96bGFicy5vcmcKPj4+PiBDYzogbGludXgtczM5MEB2Z2VyLmtl
cm5lbC5vcmcKPj4+PiBDYzogbGludXgtc2hAdmdlci5rZXJuZWwub3JnCj4+Pj4gQ2M6IHNwYXJj
bGludXhAdmdlci5rZXJuZWwub3JnCj4+Pj4gQ2M6IHg4NkBrZXJuZWwub3JnCj4+Pj4gQ2M6IEFu
ZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlvbi5vcmc+Cj4+Pj4gQ2M6IE1pY2hhbCBI
b2NrbyA8bWhvY2tvQHN1c2UuY29tPgo+Pj4+IENjOiBNYXR0aGV3IFdpbGNveCA8d2lsbHlAaW5m
cmFkZWFkLm9yZz4KPj4+PiBDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4K
Pj4+PiBDYzogQ2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0b3BoZS5sZXJveUBjLXMuZnI+Cj4+Pj4g
Q2M6IFN0ZXBoZW4gUm90aHdlbGwgPHNmckBjYW5iLmF1dWcub3JnLmF1Pgo+Pj4+IENjOiBBbmRy
ZXkgS29ub3ZhbG92IDxhbmRyZXlrbnZsQGdvb2dsZS5jb20+Cj4+Pj4gQ2M6IE1pY2hhZWwgRWxs
ZXJtYW4gPG1wZUBlbGxlcm1hbi5pZC5hdT4KPj4+PiBDYzogUGF1bCBNYWNrZXJyYXMgPHBhdWx1
c0BzYW1iYS5vcmc+Cj4+Pj4gQ2M6IFJ1c3NlbGwgS2luZyA8bGludXhAYXJtbGludXgub3JnLnVr
Pgo+Pj4+IENjOiBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPgo+Pj4+
IENjOiBXaWxsIERlYWNvbiA8d2lsbC5kZWFjb25AYXJtLmNvbT4KPj4+PiBDYzogVG9ueSBMdWNr
IDx0b255Lmx1Y2tAaW50ZWwuY29tPgo+Pj4+IENjOiBGZW5naHVhIFl1IDxmZW5naHVhLnl1QGlu
dGVsLmNvbT4KPj4+PiBDYzogTWFydGluIFNjaHdpZGVmc2t5IDxzY2h3aWRlZnNreUBkZS5pYm0u
Y29tPgo+Pj4+IENjOiBIZWlrbyBDYXJzdGVucyA8aGVpa28uY2Fyc3RlbnNAZGUuaWJtLmNvbT4K
Pj4+PiBDYzogWW9zaGlub3JpIFNhdG8gPHlzYXRvQHVzZXJzLnNvdXJjZWZvcmdlLmpwPgo+Pj4+
IENjOiAiRGF2aWQgUy4gTWlsbGVyIiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4KPj4+PiBDYzogVGhv
bWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+Cj4+Pj4gQ2M6IFBldGVyIFppamxzdHJh
IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4KPj4+PiBDYzogSW5nbyBNb2xuYXIgPG1pbmdvQHJlZGhh
dC5jb20+Cj4+Pj4gQ2M6IEFuZHkgTHV0b21pcnNraSA8bHV0b0BrZXJuZWwub3JnPgo+Pj4+IENj
OiBEYXZlIEhhbnNlbiA8ZGF2ZS5oYW5zZW5AbGludXguaW50ZWwuY29tPgo+Pj4+Cj4+Pj4gU2ln
bmVkLW9mZi1ieTogQW5zaHVtYW4gS2hhbmR1YWwgPGFuc2h1bWFuLmtoYW5kdWFsQGFybS5jb20+
Cj4+Pj4gLS0tCj4+Pj4gVGVzdGluZzoKPj4+Pgo+Pj4+IC0gQnVpbGQgYW5kIGJvb3QgdGVzdGVk
IG9uIGFybTY0IGFuZCB4ODYKPj4+PiAtIEJ1aWxkIHRlc3RlZCBvbiBzb21lIG90aGVyIGFyY2hz
IChhcm0sIHNwYXJjNjQsIGFscGhhLCBwb3dlcnBjIGV0YykKPj4+Pgo+Pj4+IENoYW5nZXMgaW4g
UkZDIFYzOgo+Pj4+Cj4+Pj4gLSBVcGRhdGVkIHRoZSBjb21taXQgbWVzc2FnZSB3aXRoIGFuIGV4
cGxhaW5hdGlvbiBmb3IgbmV3IHByZWVtcHRpb24gYmVoYXZpb3VyCj4+Pj4gLSBNb3ZlZCBub3Rp
ZnlfcGFnZV9mYXVsdCgpIHRvIGtwcm9iZXMuaCB3aXRoICdzdGF0aWMgbm9rcHJvYmVfaW5saW5l
JyBwZXIgTWF0dGhldwo+Pj4+IC0gQ2hhbmdlZCBub3RpZnlfcGFnZV9mYXVsdCgpIHJldHVybiB0
eXBlIGZyb20gaW50IHRvIGJvb2wgcGVyIE1pY2hhZWwgRWxsZXJtYW4KPj4+PiAtIFJlbmFtZWQg
bm90aWZ5X3BhZ2VfZmF1bHQoKSBhcyBrcHJvYmVfcGFnZV9mYXVsdCgpIHBlciBQZXRlcnoKPj4+
Pgo+Pj4+IENoYW5nZXMgaW4gUkZDIFYyOiAoaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9w
YXRjaC8xMDk3NDIyMS8pCj4+Pj4KPj4+PiAtIENoYW5nZWQgZ2VuZXJpYyBub3RpZnlfcGFnZV9m
YXVsdCgpIHBlciBNYXRoZXcgV2lsY294Cj4+Pj4gLSBDaGFuZ2VkIHg4NiB0byB1c2UgbmV3IGdl
bmVyaWMgbm90aWZ5X3BhZ2VfZmF1bHQoKQo+Pj4+IC0gcy9tdXN0IG5vdC9uZWVkIG5vdC8gaW4g
Y29tbWl0IG1lc3NhZ2UgcGVyIE1hdHRoZXcgV2lsY294Cj4+Pj4KPj4+PiBDaGFuZ2VzIGluIFJG
QyBWMTogKGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA5NjgyNzMvKQo+Pj4+
Cj4+Pj4gwqDCoCBhcmNoL2FybS9tbS9mYXVsdC5jwqDCoMKgwqDCoCB8IDI0ICstLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQo+Pj4+IMKgwqAgYXJjaC9hcm02NC9tbS9mYXVsdC5jwqDCoMKgIHwgMjQg
Ky0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+Pj4gwqDCoCBhcmNoL2lhNjQvbW0vZmF1bHQuY8Kg
wqDCoMKgIHwgMjQgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+Pj4gwqDCoCBhcmNoL3Bvd2Vy
cGMvbW0vZmF1bHQuY8KgIHwgMjMgKystLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+PiDCoMKgIGFy
Y2gvczM5MC9tbS9mYXVsdC5jwqDCoMKgwqAgfCAxNiArLS0tLS0tLS0tLS0tLS0tCj4+Pj4gwqDC
oCBhcmNoL3NoL21tL2ZhdWx0LmPCoMKgwqDCoMKgwqAgfCAxOCArKy0tLS0tLS0tLS0tLS0tLS0K
Pj4+PiDCoMKgIGFyY2gvc3BhcmMvbW0vZmF1bHRfNjQuYyB8IDE2ICstLS0tLS0tLS0tLS0tLS0K
Pj4+PiDCoMKgIGFyY2gveDg2L21tL2ZhdWx0LmPCoMKgwqDCoMKgIHwgMjEgKystLS0tLS0tLS0t
LS0tLS0tLS0tCj4+Pj4gwqDCoCBpbmNsdWRlL2xpbnV4L2twcm9iZXMuaMKgIHwgMTYgKysrKysr
KysrKysrKysrKwo+Pj4+IMKgwqAgOSBmaWxlcyBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAx
NTUgZGVsZXRpb25zKC0pCj4+Pj4KPj4+Cj4+PiBbLi4uXQo+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC9rcHJvYmVzLmggYi9pbmNsdWRlL2xpbnV4L2twcm9iZXMuaAo+Pj4+IGlu
ZGV4IDQ0M2Q5ODAuLjA2NGRkMTUgMTAwNjQ0Cj4+Pj4gLS0tIGEvaW5jbHVkZS9saW51eC9rcHJv
YmVzLmgKPj4+PiArKysgYi9pbmNsdWRlL2xpbnV4L2twcm9iZXMuaAo+Pj4+IEBAIC00NTgsNCAr
NDU4LDIwIEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpc19rcHJvYmVfb3B0aW5zbl9zbG90KHVuc2ln
bmVkIGxvbmcgYWRkcikKPj4+PiDCoMKgIH0KPj4+PiDCoMKgICNlbmRpZgo+Pj4+IMKgwqAgK3N0
YXRpYyBub2twcm9iZV9pbmxpbmUgYm9vbCBrcHJvYmVfcGFnZV9mYXVsdChzdHJ1Y3QgcHRfcmVn
cyAqcmVncywKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgdW5zaWduZWQgaW50IHRyYXApCj4+Pj4gK3sKPj4+PiArwqDCoMKgIGludCByZXQg
PSAwOwo+Pj4KPj4+IHJldCBpcyBwb2ludGxlc3MuCj4+Pgo+Pj4+ICsKPj4+PiArwqDCoMKgIC8q
Cj4+Pj4gK8KgwqDCoMKgICogVG8gYmUgcG90ZW50aWFsbHkgcHJvY2Vzc2luZyBhIGtwcm9iZSBm
YXVsdCBhbmQgdG8gYmUgYWxsb3dlZAo+Pj4+ICvCoMKgwqDCoCAqIHRvIGNhbGwga3Byb2JlX3J1
bm5pbmcoKSwgd2UgaGF2ZSB0byBiZSBub24tcHJlZW1wdGlibGUuCj4+Pj4gK8KgwqDCoMKgICov
Cj4+Pj4gK8KgwqDCoCBpZiAoa3Byb2Jlc19idWlsdF9pbigpICYmICFwcmVlbXB0aWJsZSgpICYm
ICF1c2VyX21vZGUocmVncykpIHsKPj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKGtwcm9iZV9ydW5u
aW5nKCkgJiYga3Byb2JlX2ZhdWx0X2hhbmRsZXIocmVncywgdHJhcCkpCj4+Pgo+Pj4gZG9uJ3Qg
bmVlZCBhbiAnaWYgQSBpZiBCJywgY2FuIGRvICdpZiBBICYmIEInCj4+Cj4+IFdoaWNoIHdpbGwg
bWFrZSBpdCBhIHZlcnkgbGVuZ3RoeSBjb25kaXRpb24gY2hlY2suCj4gCj4gWWVzLiBCdXQgaXMg
dGhhdCBhIHByb2JsZW0gYXQgYWxsID8KClByb2JhYmx5IG5vdC4KCj4gCj4gRm9yIG1lIHRoZSBm
b2xsb3dpbmcgd291bGQgYmUgZWFzaWVyIHRvIHJlYWQuCj4gCj4gaWYgKGtwcm9iZXNfYnVpbHRf
aW4oKSAmJiAhcHJlZW1wdGlibGUoKSAmJiAhdXNlcl9tb2RlKHJlZ3MpICYmCj4gwqDCoMKgIGtw
cm9iZV9ydW5uaW5nKCkgJiYga3Byb2JlX2ZhdWx0X2hhbmRsZXIocmVncywgdHJhcCkpCj4gwqDC
oMKgwqByZXQgPSAxOwoKQXMgbWVudGlvbmVkIGJlZm9yZSB3aWxsIHN0aWNrIHdpdGggY3VycmVu
dCB4ODYgaW1wbGVtZW50YXRpb24uIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
