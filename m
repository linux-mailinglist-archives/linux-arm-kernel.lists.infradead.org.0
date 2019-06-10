Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F473AD1A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 04:39:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wIen983tu/Fa+0s7RBtvgGZ33DI2EjdSKzy1lLjK8Y=; b=tl4zgerzBMNU3p
	fx5p2L/Zl8VOP9ZeS1fGLLL7NLbZHuoPCPLXEL6k8VMg8LWJGxbY0KqEbAKIu+EE1lPeW0g0932kA
	JinHROwQFLOY3n9tW3gBOWLj05bgJlDZzAzPB/Pa1DlpXdN5mXgo2+3tKI4QwPlW/RIJ5bBSh9lni
	0J6YZd5yFvOG7PlXOmvzImmXmzhaIfMEQilUpscP/HzLhasLrTfQBclYPWZ8c1/8uDmKoXHCHJTtg
	MWQvtbH0OtyA9ADFFCdUF6X/pNKoB/FsYNfoFewhwREf94z/PnoH8g0QlyMq1e/P94YykIir63Thf
	tyTY4V7fJdYvAU574eYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haADQ-0006L0-Rw; Mon, 10 Jun 2019 02:39:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haAD9-0006Kc-1L
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 02:39:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 95990337;
 Sun,  9 Jun 2019 19:39:01 -0700 (PDT)
Received: from [10.162.42.131] (p8cg001049571a15.blr.arm.com [10.162.42.131])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 4353A3F557; Sun,  9 Jun 2019 19:38:53 -0700 (PDT)
Subject: Re: [RFC V3] mm: Generalize and rename notify_page_fault() as
 kprobe_page_fault()
To: Christophe Leroy <christophe.leroy@c-s.fr>, linux-kernel@vger.kernel.org, 
 linux-mm@kvack.org
References: <1559903655-5609-1-git-send-email-anshuman.khandual@arm.com>
 <ec764ff4-f68a-fce5-ac1e-a4664e1123c7@c-s.fr>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <97e9c9b3-89c8-d378-4730-841a900e6800@arm.com>
Date: Mon, 10 Jun 2019 08:09:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <ec764ff4-f68a-fce5-ac1e-a4664e1123c7@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_193903_176677_25472AB9 
X-CRM114-Status: GOOD (  21.82  )
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

CgpPbiAwNi8wNy8yMDE5IDA5OjAxIFBNLCBDaHJpc3RvcGhlIExlcm95IHdyb3RlOgo+IAo+IAo+
IExlIDA3LzA2LzIwMTkgw6AgMTI6MzQsIEFuc2h1bWFuIEtoYW5kdWFsIGEgw6ljcml0wqA6Cj4+
IFZlcnkgc2ltaWxhciBkZWZpbml0aW9ucyBmb3Igbm90aWZ5X3BhZ2VfZmF1bHQoKSBhcmUgYmVp
bmcgdXNlZCBieSBtdWx0aXBsZQo+PiBhcmNoaXRlY3R1cmVzIGR1cGxpY2F0aW5nIG11Y2ggb2Yg
dGhlIHNhbWUgY29kZS4gVGhpcyBhdHRlbXB0cyB0byB1bmlmeSBhbGwKPj4gb2YgdGhlbSBpbnRv
IGEgZ2VuZXJpYyBpbXBsZW1lbnRhdGlvbiwgcmVuYW1lIGl0IGFzIGtwcm9iZV9wYWdlX2ZhdWx0
KCkgYW5kCj4+IHRoZW4gbW92ZSBpdCB0byBhIGNvbW1vbiBoZWFkZXIuCj4+Cj4+IGtwcm9iZXNf
YnVpbHRfaW4oKSBjYW4gZGV0ZWN0IENPTkZJR19LUFJPQkVTLCBoZW5jZSBuZXcga3Byb2JlX3Bh
Z2VfZmF1bHQoKQo+PiBuZWVkIG5vdCBiZSB3cmFwcGVkIGFnYWluIHdpdGhpbiBDT05GSUdfS1BS
T0JFUy4gVHJhcCBudW1iZXIgYXJndW1lbnQgY2FuCj4+IG5vdyBjb250YWluIHVwdG8gYW4gJ3Vu
c2lnbmVkIGludCcgYWNjb21tb2RhdGluZyBhbGwgcG9zc2libGUgcGxhdGZvcm1zLgo+Pgo+PiBr
cHJvYmVfcGFnZV9mYXVsdCgpIGdvZXMgdGhlIHg4NiB3YXkgd2hpbGUgZGVhbGluZyB3aXRoIHBy
ZWVtcHRpb24gY29udGV4dC4KPj4gQXMgZXhwbGFpbmVkIGluIHRoZXNlIGZvbGxvd2luZyBjb21t
aXRzIHRoZSBpbnZva2luZyBjb250ZXh0IGluIGl0c2VsZiBtdXN0Cj4+IGJlIG5vbi1wcmVlbXB0
aWJsZSBmb3Iga3Byb2JlcyBwcm9jZXNzaW5nIGNvbnRleHQgaXJyZXNwZWN0aXZlIG9mIHdoZXRo
ZXIKPj4ga3Byb2JlX3J1bm5pbmcoKSBvciBwZXJoYXBzIHNtcF9wcm9jZXNzb3JfaWQoKSBpcyBz
YWZlIG9yIG5vdC4gSXQgZG9lcyBub3QKPj4gbWFrZSBtdWNoIHNlbnNlIHRvIGNvbnRpbnVlIHdo
ZW4gb3JpZ2luYWwgY29udGV4dCBpcyBwcmVlbXB0aWJsZS4gSW5zdGVhZAo+PiBqdXN0IGJhaWwg
b3V0IGVhcmxpZXIuCj4+Cj4+IGNvbW1pdCBhOTgwYzBlZjlmNmQKPj4gKCJ4ODYva3Byb2Jlczog
UmVmYWN0b3Iga3Byb2Jlc19mYXVsdCgpIGxpa2Uga3Byb2JlX2V4Y2VwdGlvbnNfbm90aWZ5KCki
KQo+Pgo+PiBjb21taXQgYjUwNmE5ZDA4YmFlICgieDg2OiBjb2RlIGNsYXJpZmljYXRpb24gcGF0
Y2ggdG8gS3Byb2JlcyBhcmNoIGNvZGUiKQo+Pgo+PiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCj4+IENjOiBsaW51eC1pYTY0QHZnZXIua2VybmVsLm9yZwo+PiBDYzog
bGludXhwcGMtZGV2QGxpc3RzLm96bGFicy5vcmcKPj4gQ2M6IGxpbnV4LXMzOTBAdmdlci5rZXJu
ZWwub3JnCj4+IENjOiBsaW51eC1zaEB2Z2VyLmtlcm5lbC5vcmcKPj4gQ2M6IHNwYXJjbGludXhA
dmdlci5rZXJuZWwub3JnCj4+IENjOiB4ODZAa2VybmVsLm9yZwo+PiBDYzogQW5kcmV3IE1vcnRv
biA8YWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZz4KPj4gQ2M6IE1pY2hhbCBIb2NrbyA8bWhvY2tv
QHN1c2UuY29tPgo+PiBDYzogTWF0dGhldyBXaWxjb3ggPHdpbGx5QGluZnJhZGVhZC5vcmc+Cj4+
IENjOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPgo+PiBDYzogQ2hyaXN0b3Bo
ZSBMZXJveSA8Y2hyaXN0b3BoZS5sZXJveUBjLXMuZnI+Cj4+IENjOiBTdGVwaGVuIFJvdGh3ZWxs
IDxzZnJAY2FuYi5hdXVnLm9yZy5hdT4KPj4gQ2M6IEFuZHJleSBLb25vdmFsb3YgPGFuZHJleWtu
dmxAZ29vZ2xlLmNvbT4KPj4gQ2M6IE1pY2hhZWwgRWxsZXJtYW4gPG1wZUBlbGxlcm1hbi5pZC5h
dT4KPj4gQ2M6IFBhdWwgTWFja2VycmFzIDxwYXVsdXNAc2FtYmEub3JnPgo+PiBDYzogUnVzc2Vs
bCBLaW5nIDxsaW51eEBhcm1saW51eC5vcmcudWs+Cj4+IENjOiBDYXRhbGluIE1hcmluYXMgPGNh
dGFsaW4ubWFyaW5hc0Bhcm0uY29tPgo+PiBDYzogV2lsbCBEZWFjb24gPHdpbGwuZGVhY29uQGFy
bS5jb20+Cj4+IENjOiBUb255IEx1Y2sgPHRvbnkubHVja0BpbnRlbC5jb20+Cj4+IENjOiBGZW5n
aHVhIFl1IDxmZW5naHVhLnl1QGludGVsLmNvbT4KPj4gQ2M6IE1hcnRpbiBTY2h3aWRlZnNreSA8
c2Nod2lkZWZza3lAZGUuaWJtLmNvbT4KPj4gQ2M6IEhlaWtvIENhcnN0ZW5zIDxoZWlrby5jYXJz
dGVuc0BkZS5pYm0uY29tPgo+PiBDYzogWW9zaGlub3JpIFNhdG8gPHlzYXRvQHVzZXJzLnNvdXJj
ZWZvcmdlLmpwPgo+PiBDYzogIkRhdmlkIFMuIE1pbGxlciIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+
Cj4+IENjOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KPj4gQ2M6IFBldGVy
IFppamxzdHJhIDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4KPj4gQ2M6IEluZ28gTW9sbmFyIDxtaW5n
b0ByZWRoYXQuY29tPgo+PiBDYzogQW5keSBMdXRvbWlyc2tpIDxsdXRvQGtlcm5lbC5vcmc+Cj4+
IENjOiBEYXZlIEhhbnNlbiA8ZGF2ZS5oYW5zZW5AbGludXguaW50ZWwuY29tPgo+Pgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBBbnNodW1hbiBLaGFuZHVhbCA8YW5zaHVtYW4ua2hhbmR1YWxAYXJtLmNvbT4K
Pj4gLS0tCj4+IFRlc3Rpbmc6Cj4+Cj4+IC0gQnVpbGQgYW5kIGJvb3QgdGVzdGVkIG9uIGFybTY0
IGFuZCB4ODYKPj4gLSBCdWlsZCB0ZXN0ZWQgb24gc29tZSBvdGhlciBhcmNocyAoYXJtLCBzcGFy
YzY0LCBhbHBoYSwgcG93ZXJwYyBldGMpCj4+Cj4+IENoYW5nZXMgaW4gUkZDIFYzOgo+Pgo+PiAt
IFVwZGF0ZWQgdGhlIGNvbW1pdCBtZXNzYWdlIHdpdGggYW4gZXhwbGFpbmF0aW9uIGZvciBuZXcg
cHJlZW1wdGlvbiBiZWhhdmlvdXIKPj4gLSBNb3ZlZCBub3RpZnlfcGFnZV9mYXVsdCgpIHRvIGtw
cm9iZXMuaCB3aXRoICdzdGF0aWMgbm9rcHJvYmVfaW5saW5lJyBwZXIgTWF0dGhldwo+PiAtIENo
YW5nZWQgbm90aWZ5X3BhZ2VfZmF1bHQoKSByZXR1cm4gdHlwZSBmcm9tIGludCB0byBib29sIHBl
ciBNaWNoYWVsIEVsbGVybWFuCj4+IC0gUmVuYW1lZCBub3RpZnlfcGFnZV9mYXVsdCgpIGFzIGtw
cm9iZV9wYWdlX2ZhdWx0KCkgcGVyIFBldGVyego+Pgo+PiBDaGFuZ2VzIGluIFJGQyBWMjogKGh0
dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA5NzQyMjEvKQo+Pgo+PiAtIENoYW5n
ZWQgZ2VuZXJpYyBub3RpZnlfcGFnZV9mYXVsdCgpIHBlciBNYXRoZXcgV2lsY294Cj4+IC0gQ2hh
bmdlZCB4ODYgdG8gdXNlIG5ldyBnZW5lcmljIG5vdGlmeV9wYWdlX2ZhdWx0KCkKPj4gLSBzL211
c3Qgbm90L25lZWQgbm90LyBpbiBjb21taXQgbWVzc2FnZSBwZXIgTWF0dGhldyBXaWxjb3gKPj4K
Pj4gQ2hhbmdlcyBpbiBSRkMgVjE6IChodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNo
LzEwOTY4MjczLykKPj4KPj4gwqAgYXJjaC9hcm0vbW0vZmF1bHQuY8KgwqDCoMKgwqAgfCAyNCAr
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4gwqAgYXJjaC9hcm02NC9tbS9mYXVsdC5jwqDCoMKg
IHwgMjQgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+IMKgIGFyY2gvaWE2NC9tbS9mYXVsdC5j
wqDCoMKgwqAgfCAyNCArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4gwqAgYXJjaC9wb3dlcnBj
L21tL2ZhdWx0LmPCoCB8IDIzICsrLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+IMKgIGFyY2gvczM5
MC9tbS9mYXVsdC5jwqDCoMKgwqAgfCAxNiArLS0tLS0tLS0tLS0tLS0tCj4+IMKgIGFyY2gvc2gv
bW0vZmF1bHQuY8KgwqDCoMKgwqDCoCB8IDE4ICsrLS0tLS0tLS0tLS0tLS0tLQo+PiDCoCBhcmNo
L3NwYXJjL21tL2ZhdWx0XzY0LmMgfCAxNiArLS0tLS0tLS0tLS0tLS0tCj4+IMKgIGFyY2gveDg2
L21tL2ZhdWx0LmPCoMKgwqDCoMKgIHwgMjEgKystLS0tLS0tLS0tLS0tLS0tLS0tCj4+IMKgIGlu
Y2x1ZGUvbGludXgva3Byb2Jlcy5owqAgfCAxNiArKysrKysrKysrKysrKysrCj4+IMKgIDkgZmls
ZXMgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgMTU1IGRlbGV0aW9ucygtKQo+Pgo+IAo+IFsu
Li5dCj4gCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2twcm9iZXMuaCBiL2luY2x1ZGUv
bGludXgva3Byb2Jlcy5oCj4+IGluZGV4IDQ0M2Q5ODAuLjA2NGRkMTUgMTAwNjQ0Cj4+IC0tLSBh
L2luY2x1ZGUvbGludXgva3Byb2Jlcy5oCj4+ICsrKyBiL2luY2x1ZGUvbGludXgva3Byb2Jlcy5o
Cj4+IEBAIC00NTgsNCArNDU4LDIwIEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpc19rcHJvYmVfb3B0
aW5zbl9zbG90KHVuc2lnbmVkIGxvbmcgYWRkcikKPj4gwqAgfQo+PiDCoCAjZW5kaWYKPj4gwqAg
K3N0YXRpYyBub2twcm9iZV9pbmxpbmUgYm9vbCBrcHJvYmVfcGFnZV9mYXVsdChzdHJ1Y3QgcHRf
cmVncyAqcmVncywKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHVuc2lnbmVkIGludCB0cmFwKQo+PiArewo+PiArwqDCoMKgIGludCByZXQgPSAw
Owo+IAo+IHJldCBpcyBwb2ludGxlc3MuCj4gCj4+ICsKPj4gK8KgwqDCoCAvKgo+PiArwqDCoMKg
wqAgKiBUbyBiZSBwb3RlbnRpYWxseSBwcm9jZXNzaW5nIGEga3Byb2JlIGZhdWx0IGFuZCB0byBi
ZSBhbGxvd2VkCj4+ICvCoMKgwqDCoCAqIHRvIGNhbGwga3Byb2JlX3J1bm5pbmcoKSwgd2UgaGF2
ZSB0byBiZSBub24tcHJlZW1wdGlibGUuCj4+ICvCoMKgwqDCoCAqLwo+PiArwqDCoMKgIGlmIChr
cHJvYmVzX2J1aWx0X2luKCkgJiYgIXByZWVtcHRpYmxlKCkgJiYgIXVzZXJfbW9kZShyZWdzKSkg
ewo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKGtwcm9iZV9ydW5uaW5nKCkgJiYga3Byb2JlX2ZhdWx0
X2hhbmRsZXIocmVncywgdHJhcCkpCj4gCj4gZG9uJ3QgbmVlZCBhbiAnaWYgQSBpZiBCJywgY2Fu
IGRvICdpZiBBICYmIEInCgpXaGljaCB3aWxsIG1ha2UgaXQgYSB2ZXJ5IGxlbmd0aHkgY29uZGl0
aW9uIGNoZWNrLgoKPiAKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gMTsKPiAKPiBj
YW4gZG8gJ3JldHVybiB0cnVlOycgZGlyZWN0bHkgaGVyZQo+IAo+PiArwqDCoMKgIH0KPj4gK8Kg
wqDCoCByZXR1cm4gcmV0Owo+IAo+IEFuZCAncmV0dXJuIGZhbHNlJyBoZXJlLgoKTWFrZXMgc2Vu
c2UsIHdpbGwgZHJvcCByZXQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
