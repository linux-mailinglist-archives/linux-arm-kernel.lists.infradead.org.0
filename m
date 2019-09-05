Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89772A9CCE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBKE4lsbwqmHKKUDLx3sWZLUReIEd3U+pcQTQ+267sQ=; b=D6HhZ2Ntb4Au/3
	9TaUlwofrM6NT74VGPAOroVkHyivwpqbgAjoSDeSAPaXNssHQd6534eL9TB2lWNYUtjh1INQ0yIlr
	PmbrdPolCliguJer+vXXdPSeN6lkf97lc1MGuSgNrczHylQqARADXlftSygmBTTVuvI1B727V88hL
	evFlvTsJDR4VV560huB66uiKqtjUv5zsfLfUH79L6FdQVmvNEyyCwwJXmzqDR9xEcgG1lvocrIhtt
	VQ5V98mhAvyMstQiE349GQ6P6wtQRrqOV2z6XPtvH3VFdIHHsKB8j0OCRds3e3i+RLjcvU5FxyqxL
	WuWCGxrLyXLf5s566a5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5myg-0001hH-6e; Thu, 05 Sep 2019 08:18:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5myQ-0001gY-O6; Thu, 05 Sep 2019 08:18:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0B372337;
 Thu,  5 Sep 2019 01:18:34 -0700 (PDT)
Received: from [10.162.41.136] (p8cg001049571a15.blr.arm.com [10.162.41.136])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 04B713F67D; Thu,  5 Sep 2019 01:18:20 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 1/1] mm/pgtable/debug: Add test validating architecture
 page table helpers
To: "Kirill A. Shutemov" <kirill@shutemov.name>
References: <1567497706-8649-1-git-send-email-anshuman.khandual@arm.com>
 <1567497706-8649-2-git-send-email-anshuman.khandual@arm.com>
 <20190904141950.ykoe3h7b4hcvnysu@box>
Message-ID: <6d4b989d-8eaa-d26e-6068-4b0e4d7a52f9@arm.com>
Date: Thu, 5 Sep 2019 13:48:27 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190904141950.ykoe3h7b4hcvnysu@box>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_011834_879874_E5A7F403 
X-CRM114-Status: GOOD (  30.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-arm-kernel@lists.infradead.org,
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDkvMDQvMjAxOSAwNzo0OSBQTSwgS2lyaWxsIEEuIFNodXRlbW92IHdyb3RlOgo+IE9uIFR1
ZSwgU2VwIDAzLCAyMDE5IGF0IDAxOjMxOjQ2UE0gKzA1MzAsIEFuc2h1bWFuIEtoYW5kdWFsIHdy
b3RlOgo+PiBUaGlzIGFkZHMgYSB0ZXN0IG1vZHVsZSB3aGljaCB3aWxsIHZhbGlkYXRlIGFyY2hp
dGVjdHVyZSBwYWdlIHRhYmxlIGhlbHBlcnMKPj4gYW5kIGFjY2Vzc29ycyByZWdhcmRpbmcgY29t
cGxpYW5jZSB3aXRoIGdlbmVyaWMgTU0gc2VtYW50aWNzIGV4cGVjdGF0aW9ucy4KPj4gVGhpcyB3
aWxsIGhlbHAgdmFyaW91cyBhcmNoaXRlY3R1cmVzIGluIHZhbGlkYXRpbmcgY2hhbmdlcyB0byB0
aGUgZXhpc3RpbmcKPj4gcGFnZSB0YWJsZSBoZWxwZXJzIG9yIGFkZGl0aW9uIG9mIG5ldyBvbmVz
Lgo+Pgo+PiBUZXN0IHBhZ2UgdGFibGUgYW5kIG1lbW9yeSBwYWdlcyBjcmVhdGluZyBpdCdzIGVu
dHJpZXMgYXQgdmFyaW91cyBsZXZlbCBhcmUKPj4gYWxsIGFsbG9jYXRlZCBmcm9tIHN5c3RlbSBt
ZW1vcnkgd2l0aCByZXF1aXJlZCBhbGlnbm1lbnRzLiBJZiBtZW1vcnkgcGFnZXMKPj4gd2l0aCBy
ZXF1aXJlZCBzaXplIGFuZCBhbGlnbm1lbnQgY291bGQgbm90IGJlIGFsbG9jYXRlZCwgdGhlbiBh
bGwgZGVwZW5kaW5nCj4+IGluZGl2aWR1YWwgdGVzdHMgYXJlIHNraXBwZWQuCj4gCj4gU2VlIG15
IGNvbW1lbnRzIGJlbG93Lgo+IAo+Pgo+PiBDYzogQW5kcmV3IE1vcnRvbiA8YWtwbUBsaW51eC1m
b3VuZGF0aW9uLm9yZz4KPj4gQ2M6IFZsYXN0aW1pbCBCYWJrYSA8dmJhYmthQHN1c2UuY3o+Cj4+
IENjOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgo+PiBD
YzogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+Cj4+IENjOiBNaWtlIFJhcG9w
b3J0IDxycHB0QGxpbnV4LnZuZXQuaWJtLmNvbT4KPj4gQ2M6IEphc29uIEd1bnRob3JwZSA8amdn
QHppZXBlLmNhPgo+PiBDYzogRGFuIFdpbGxpYW1zIDxkYW4uai53aWxsaWFtc0BpbnRlbC5jb20+
Cj4+IENjOiBQZXRlciBaaWpsc3RyYSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+Cj4+IENjOiBNaWNo
YWwgSG9ja28gPG1ob2Nrb0BrZXJuZWwub3JnPgo+PiBDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1
dGxhbmRAYXJtLmNvbT4KPj4gQ2M6IE1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9yZz4KPj4g
Q2M6IFN0ZXZlbiBQcmljZSA8U3RldmVuLlByaWNlQGFybS5jb20+Cj4+IENjOiBBcmQgQmllc2hl
dXZlbCA8YXJkLmJpZXNoZXV2ZWxAbGluYXJvLm9yZz4KPj4gQ2M6IE1hc2FoaXJvIFlhbWFkYSA8
eWFtYWRhLm1hc2FoaXJvQHNvY2lvbmV4dC5jb20+Cj4+IENjOiBLZWVzIENvb2sgPGtlZXNjb29r
QGNocm9taXVtLm9yZz4KPj4gQ2M6IFRldHN1byBIYW5kYSA8cGVuZ3Vpbi1rZXJuZWxAaS1sb3Zl
LnNha3VyYS5uZS5qcD4KPj4gQ2M6IE1hdHRoZXcgV2lsY294IDx3aWxseUBpbmZyYWRlYWQub3Jn
Pgo+PiBDYzogU3JpIEtyaXNobmEgY2hvd2RhcnkgPHNjaG93ZGFyeUBudmlkaWEuY29tPgo+PiBD
YzogRGF2ZSBIYW5zZW4gPGRhdmUuaGFuc2VuQGludGVsLmNvbT4KPj4gQ2M6IFJ1c3NlbGwgS2lu
ZyAtIEFSTSBMaW51eCA8bGludXhAYXJtbGludXgub3JnLnVrPgo+PiBDYzogTWljaGFlbCBFbGxl
cm1hbiA8bXBlQGVsbGVybWFuLmlkLmF1Pgo+PiBDYzogUGF1bCBNYWNrZXJyYXMgPHBhdWx1c0Bz
YW1iYS5vcmc+Cj4+IENjOiBNYXJ0aW4gU2Nod2lkZWZza3kgPHNjaHdpZGVmc2t5QGRlLmlibS5j
b20+Cj4+IENjOiBIZWlrbyBDYXJzdGVucyA8aGVpa28uY2Fyc3RlbnNAZGUuaWJtLmNvbT4KPj4g
Q2M6ICJEYXZpZCBTLiBNaWxsZXIiIDxkYXZlbUBkYXZlbWxvZnQubmV0Pgo+PiBDYzogVmluZWV0
IEd1cHRhIDx2Z3VwdGFAc3lub3BzeXMuY29tPgo+PiBDYzogSmFtZXMgSG9nYW4gPGpob2dhbkBr
ZXJuZWwub3JnPgo+PiBDYzogUGF1bCBCdXJ0b24gPHBhdWwuYnVydG9uQG1pcHMuY29tPgo+PiBD
YzogUmFsZiBCYWVjaGxlIDxyYWxmQGxpbnV4LW1pcHMub3JnPgo+PiBDYzogbGludXgtc25wcy1h
cmNAbGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBDYzogbGludXgtbWlwc0B2Z2VyLmtlcm5lbC5vcmcK
Pj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBDYzogbGludXgt
aWE2NEB2Z2VyLmtlcm5lbC5vcmcKPj4gQ2M6IGxpbnV4cHBjLWRldkBsaXN0cy5vemxhYnMub3Jn
Cj4+IENjOiBsaW51eC1zMzkwQHZnZXIua2VybmVsLm9yZwo+PiBDYzogbGludXgtc2hAdmdlci5r
ZXJuZWwub3JnCj4+IENjOiBzcGFyY2xpbnV4QHZnZXIua2VybmVsLm9yZwo+PiBDYzogeDg2QGtl
cm5lbC5vcmcKPj4gQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPj4KPj4gU3VnZ2Vz
dGVkLWJ5OiBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBBbnNodW1hbiBLaGFuZHVhbCA8YW5zaHVtYW4ua2hhbmR1YWxAYXJtLmNvbT4K
Pj4gLS0tCj4+ICBtbS9LY29uZmlnLmRlYnVnICAgICAgIHwgIDE0ICsrCj4+ICBtbS9NYWtlZmls
ZSAgICAgICAgICAgIHwgICAxICsKPj4gIG1tL2FyY2hfcGd0YWJsZV90ZXN0LmMgfCA0MjUgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4gIDMgZmlsZXMgY2hhbmdl
ZCwgNDQwIGluc2VydGlvbnMoKykKPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBtbS9hcmNoX3BndGFi
bGVfdGVzdC5jCj4+Cj4+IGRpZmYgLS1naXQgYS9tbS9LY29uZmlnLmRlYnVnIGIvbW0vS2NvbmZp
Zy5kZWJ1Zwo+PiBpbmRleCAzMjdiM2ViZjIzYmYuLmNlOWMzOTdmN2IwNyAxMDA2NDQKPj4gLS0t
IGEvbW0vS2NvbmZpZy5kZWJ1Zwo+PiArKysgYi9tbS9LY29uZmlnLmRlYnVnCj4+IEBAIC0xMTcs
MyArMTE3LDE3IEBAIGNvbmZpZyBERUJVR19ST0RBVEFfVEVTVAo+PiAgICAgIGRlcGVuZHMgb24g
U1RSSUNUX0tFUk5FTF9SV1gKPj4gICAgICAtLS1oZWxwLS0tCj4+ICAgICAgICBUaGlzIG9wdGlv
biBlbmFibGVzIGEgdGVzdGNhc2UgZm9yIHRoZSBzZXR0aW5nIHJvZGF0YSByZWFkLW9ubHkuCj4+
ICsKPj4gK2NvbmZpZyBERUJVR19BUkNIX1BHVEFCTEVfVEVTVAo+PiArCWJvb2wgIlRlc3QgYXJj
aCBwYWdlIHRhYmxlIGhlbHBlcnMgZm9yIHNlbWFudGljcyBjb21wbGlhbmNlIgo+PiArCWRlcGVu
ZHMgb24gTU1VCj4+ICsJZGVwZW5kcyBvbiBERUJVR19LRVJORUwKPj4gKwloZWxwCj4+ICsJICBU
aGlzIG9wdGlvbnMgcHJvdmlkZXMgYSBrZXJuZWwgbW9kdWxlIHdoaWNoIGNhbiBiZSB1c2VkIHRv
IHRlc3QKPj4gKwkgIGFyY2hpdGVjdHVyZSBwYWdlIHRhYmxlIGhlbHBlciBmdW5jdGlvbnMgb24g
dmFyaW91cyBwbGF0Zm9ybSBpbgo+PiArCSAgdmVyaWZ5aW5nIGlmIHRoZXkgY29tcGx5IHdpdGgg
ZXhwZWN0ZWQgZ2VuZXJpYyBNTSBzZW1hbnRpY3MuIFRoaXMKPj4gKwkgIHdpbGwgaGVscCBhcmNo
aXRlY3R1cmVzIGNvZGUgaW4gbWFraW5nIHN1cmUgdGhhdCBhbnkgY2hhbmdlcyBvcgo+PiArCSAg
bmV3IGFkZGl0aW9ucyBvZiB0aGVzZSBoZWxwZXJzIHdpbGwgc3RpbGwgY29uZm9ybSB0byBnZW5l
cmljIE1NCj4+ICsJICBleHBlY3RlZCBzZW1hbnRpY3MuCj4+ICsKPj4gKwkgIElmIHVuc3VyZSwg
c2F5IE4uCj4+IGRpZmYgLS1naXQgYS9tbS9NYWtlZmlsZSBiL21tL01ha2VmaWxlCj4+IGluZGV4
IGQ5OTY4NDY2OTdlZi4uYmI1NzJjNWFhOGM1IDEwMDY0NAo+PiAtLS0gYS9tbS9NYWtlZmlsZQo+
PiArKysgYi9tbS9NYWtlZmlsZQo+PiBAQCAtODYsNiArODYsNyBAQCBvYmotJChDT05GSUdfSFdQ
T0lTT05fSU5KRUNUKSArPSBod3BvaXNvbi1pbmplY3Qubwo+PiAgb2JqLSQoQ09ORklHX0RFQlVH
X0tNRU1MRUFLKSArPSBrbWVtbGVhay5vCj4+ICBvYmotJChDT05GSUdfREVCVUdfS01FTUxFQUtf
VEVTVCkgKz0ga21lbWxlYWstdGVzdC5vCj4+ICBvYmotJChDT05GSUdfREVCVUdfUk9EQVRBX1RF
U1QpICs9IHJvZGF0YV90ZXN0Lm8KPj4gK29iai0kKENPTkZJR19ERUJVR19BUkNIX1BHVEFCTEVf
VEVTVCkgKz0gYXJjaF9wZ3RhYmxlX3Rlc3Qubwo+PiAgb2JqLSQoQ09ORklHX1BBR0VfT1dORVIp
ICs9IHBhZ2Vfb3duZXIubwo+PiAgb2JqLSQoQ09ORklHX0NMRUFOQ0FDSEUpICs9IGNsZWFuY2Fj
aGUubwo+PiAgb2JqLSQoQ09ORklHX01FTU9SWV9JU09MQVRJT04pICs9IHBhZ2VfaXNvbGF0aW9u
Lm8KPj4gZGlmZiAtLWdpdCBhL21tL2FyY2hfcGd0YWJsZV90ZXN0LmMgYi9tbS9hcmNoX3BndGFi
bGVfdGVzdC5jCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4u
ZjE1YmU4YTczNzIzCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvbW0vYXJjaF9wZ3RhYmxlX3Rl
c3QuYwo+PiBAQCAtMCwwICsxLDQyNSBAQAo+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IEdQTC0yLjAtb25seQo+PiArLyoKPj4gKyAqIFRoaXMga2VybmVsIG1vZHVsZSB2YWxpZGF0ZXMg
YXJjaGl0ZWN0dXJlIHBhZ2UgdGFibGUgaGVscGVycyAmCj4+ICsgKiBhY2Nlc3NvcnMgYW5kIGhl
bHBzIGluIHZlcmlmeWluZyB0aGVpciBjb250aW51ZWQgY29tcGxpYW5jZSB3aXRoCj4+ICsgKiBn
ZW5lcmljIE1NIHNlbWFudGljcy4KPj4gKyAqCj4+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTkgQVJN
IEx0ZC4KPj4gKyAqCj4+ICsgKiBBdXRob3I6IEFuc2h1bWFuIEtoYW5kdWFsIDxhbnNodW1hbi5r
aGFuZHVhbEBhcm0uY29tPgo+PiArICovCj4+ICsjZGVmaW5lIHByX2ZtdChmbXQpICJhcmNoX3Bn
dGFibGVfdGVzdDogJXMgIiBmbXQsIF9fZnVuY19fCj4+ICsKPj4gKyNpbmNsdWRlIDxsaW51eC9r
ZXJuZWwuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9odWdldGxiLmg+Cj4+ICsjaW5jbHVkZSA8bGlu
dXgvbW0uaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9tbWFuLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgv
bW1fdHlwZXMuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPj4gKyNpbmNsdWRlIDxs
aW51eC9wcmludGsuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9zd2FwLmg+Cj4+ICsjaW5jbHVkZSA8
bGludXgvc3dhcG9wcy5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3Bmbl90Lmg+Cj4+ICsjaW5jbHVk
ZSA8bGludXgvZ2ZwLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvc3BpbmxvY2suaD4KPj4gKyNpbmNs
dWRlIDxsaW51eC9zY2hlZC9tbS5oPgo+PiArI2luY2x1ZGUgPGFzbS9wZ2FsbG9jLmg+Cj4+ICsj
aW5jbHVkZSA8YXNtL3BndGFibGUuaD4KPj4gKwo+PiArLyoKPj4gKyAqIEJhc2ljIG9wZXJhdGlv
bnMKPj4gKyAqCj4+ICsgKiBta29sZChlbnRyeSkJCQk9IEFuIG9sZCBhbmQgbm90IGEgeW91bmcg
ZW50cnkKPj4gKyAqIG1reW91bmcoZW50cnkpCQk9IEEgeW91bmcgYW5kIG5vdCBhbiBvbGQgZW50
cnkKPj4gKyAqIG1rZGlydHkoZW50cnkpCQk9IEEgZGlydHkgYW5kIG5vdCBhIGNsZWFuIGVudHJ5
Cj4+ICsgKiBta2NsZWFuKGVudHJ5KQkJPSBBIGNsZWFuIGFuZCBub3QgYSBkaXJ0eSBlbnRyeQo+
PiArICogbWt3cml0ZShlbnRyeSkJCT0gQSB3cml0ZSBhbmQgbm90IGEgd3JpdGUgcHJvdGVjdGVk
IGVudHJ5Cj4+ICsgKiB3cnByb3RlY3QoZW50cnkpCQk9IEEgd3JpdGUgcHJvdGVjdGVkIGFuZCBu
b3QgYSB3cml0ZSBlbnRyeQo+PiArICogcHh4X2JhZChlbnRyeSkJCT0gQSBtYXBwZWQgYW5kIG5v
bi10YWJsZSBlbnRyeQo+PiArICogcHh4X3NhbWUoZW50cnkxLCBlbnRyeTIpCT0gQm90aCBlbnRy
aWVzIGhvbGQgdGhlIGV4YWN0IHNhbWUgdmFsdWUKPj4gKyAqLwo+PiArI2RlZmluZSBWQUREUl9U
RVNUCShQR0RJUl9TSVpFICsgUFVEX1NJWkUgKyBQTURfU0laRSArIFBBR0VfU0laRSkKPiAKPiBX
aGF0IGlzIHNwZWNpYWwgYWJvdXQgdGhpcyBhZGRyZXNzPyBIb3cgZG8geW91IGtub3cgaWYgaXQg
aXMgbm90IG9jY3VwaWVkCj4geWV0PwoKV2UgYXJlIGNyZWF0aW5nIHRoZSBwYWdlIHRhYmxlIGZy
b20gc2NyYXRjaCBhZnRlciBhbGxvY2F0aW5nIGFuIG1tX3N0cnVjdApmb3IgYSBnaXZlbiByYW5k
b20gdmlydHVhbCBhZGRyZXNzICdWQUREUl9URVNUJy4gSGVuY2Ugbm90aGluZyBpcyBvY2N1cGll
ZApqdXN0IHlldC4gVGhlcmUgaXMgbm90aGluZyBzcGVjaWFsIGFib3V0IHRoaXMgYWRkcmVzcywg
anVzdCB0aGF0IGl0IHRyaWVzCnRvIGVuc3VyZSB0aGUgcGFnZSB0YWJsZSBlbnRyaWVzIGFyZSBi
ZWluZyBjcmVhdGVkIHdpdGggc29tZSBvZmZzZXQgZnJvbQpiZWdpbm5pbmcgb2YgcmVzcGVjdGl2
ZSBwYWdlIHRhYmxlIHBhZ2UgYXQgYWxsIGxldmVscyA/IFRoZSBpZGVhIGlzIHRvCmhhdmUgYSBt
b3JlIHJlcHJlc2VudGF0aXZlIGZvcm0gb2YgcGFnZSB0YWJsZSBzdHJ1Y3R1cmUgZm9yIHRlc3Qu
Cgo+IAo+PiArI2RlZmluZSBWTUFfVEVTVF9GTEFHUwkoVk1fUkVBRHxWTV9XUklURXxWTV9FWEVD
KQo+PiArI2RlZmluZSBSQU5ET01fTlpWQUxVRQkoMHhiZSkKPj4gKwo+PiArc3RhdGljIGJvb2wg
cHVkX2FsaWduZWQ7Cj4+ICtzdGF0aWMgYm9vbCBwbWRfYWxpZ25lZDsKPj4gKwo+PiArZXh0ZXJu
IHN0cnVjdCBtbV9zdHJ1Y3QgKm1tX2FsbG9jKHZvaWQpOwo+PiArCj4+ICtzdGF0aWMgdm9pZCBw
dGVfYmFzaWNfdGVzdHMoc3RydWN0IHBhZ2UgKnBhZ2UsIHBncHJvdF90IHByb3QpCj4+ICt7Cj4+
ICsJcHRlX3QgcHRlID0gbWtfcHRlKHBhZ2UsIHByb3QpOwo+PiArCj4+ICsJV0FSTl9PTighcHRl
X3NhbWUocHRlLCBwdGUpKTsKPj4gKwlXQVJOX09OKCFwdGVfeW91bmcocHRlX21reW91bmcocHRl
KSkpOwo+PiArCVdBUk5fT04oIXB0ZV9kaXJ0eShwdGVfbWtkaXJ0eShwdGUpKSk7Cj4+ICsJV0FS
Tl9PTighcHRlX3dyaXRlKHB0ZV9ta3dyaXRlKHB0ZSkpKTsKPj4gKwlXQVJOX09OKHB0ZV95b3Vu
ZyhwdGVfbWtvbGQocHRlKSkpOwo+PiArCVdBUk5fT04ocHRlX2RpcnR5KHB0ZV9ta2NsZWFuKHB0
ZSkpKTsKPj4gKwlXQVJOX09OKHB0ZV93cml0ZShwdGVfd3Jwcm90ZWN0KHB0ZSkpKTsKPj4gK30K
Pj4gKwo+PiArI2lmZGVmIENPTkZJR19IQVZFX0FSQ0hfVFJBTlNQQVJFTlRfSFVHRVBBR0UKPj4g
K3N0YXRpYyB2b2lkIHBtZF9iYXNpY190ZXN0cyhzdHJ1Y3QgcGFnZSAqcGFnZSwgcGdwcm90X3Qg
cHJvdCkKPj4gK3sKPj4gKwlwbWRfdCBwbWQ7Cj4+ICsKPj4gKwkvKgo+PiArCSAqIE1lbW9yeSBi
bG9jayBoZXJlIG11c3QgYmUgUE1EX1NJWkUgYWxpZ25lZC4gQWJvcnQgdGhpcwo+PiArCSAqIHRl
c3QgaW4gY2FzZSB3ZSBjb3VsZCBub3QgYWxsb2NhdGUgc3VjaCBhIG1lbW9yeSBibG9jay4KPj4g
KwkgKi8KPj4gKwlpZiAoIXBtZF9hbGlnbmVkKSB7Cj4+ICsJCXByX3dhcm4oIkNvdWxkIG5vdCBw
cm9jZWVkIHdpdGggUE1EIHRlc3RzXG4iKTsKPj4gKwkJcmV0dXJuOwo+PiArCX0KPj4gKwo+PiAr
CXBtZCA9IG1rX3BtZChwYWdlLCBwcm90KTsKPj4gKwlXQVJOX09OKCFwbWRfc2FtZShwbWQsIHBt
ZCkpOwo+PiArCVdBUk5fT04oIXBtZF95b3VuZyhwbWRfbWt5b3VuZyhwbWQpKSk7Cj4+ICsJV0FS
Tl9PTighcG1kX2RpcnR5KHBtZF9ta2RpcnR5KHBtZCkpKTsKPj4gKwlXQVJOX09OKCFwbWRfd3Jp
dGUocG1kX21rd3JpdGUocG1kKSkpOwo+PiArCVdBUk5fT04ocG1kX3lvdW5nKHBtZF9ta29sZChw
bWQpKSk7Cj4+ICsJV0FSTl9PTihwbWRfZGlydHkocG1kX21rY2xlYW4ocG1kKSkpOwo+PiArCVdB
Uk5fT04ocG1kX3dyaXRlKHBtZF93cnByb3RlY3QocG1kKSkpOwo+PiArCS8qCj4+ICsJICogQSBo
dWdlIHBhZ2UgZG9lcyBub3QgcG9pbnQgdG8gbmV4dCBsZXZlbCBwYWdlIHRhYmxlCj4+ICsJICog
ZW50cnkuIEhlbmNlIHRoaXMgbXVzdCBxdWFsaWZ5IGFzIHBtZF9iYWQoKS4KPj4gKwkgKi8KPj4g
KwlXQVJOX09OKCFwbWRfYmFkKHBtZF9ta2h1Z2UocG1kKSkpOwo+PiArfQo+PiArI2Vsc2UKPj4g
K3N0YXRpYyB2b2lkIHBtZF9iYXNpY190ZXN0cyhzdHJ1Y3QgcGFnZSAqcGFnZSwgcGdwcm90X3Qg
cHJvdCkgeyB9Cj4+ICsjZW5kaWYKPj4gKwo+PiArI2lmZGVmIENPTkZJR19IQVZFX0FSQ0hfVFJB
TlNQQVJFTlRfSFVHRVBBR0VfUFVECj4+ICtzdGF0aWMgdm9pZCBwdWRfYmFzaWNfdGVzdHMoc3Ry
dWN0IHBhZ2UgKnBhZ2UsIHBncHJvdF90IHByb3QpCj4+ICt7Cj4+ICsJcHVkX3QgcHVkOwo+PiAr
Cj4+ICsJLyoKPj4gKwkgKiBNZW1vcnkgYmxvY2sgaGVyZSBtdXN0IGJlIFBVRF9TSVpFIGFsaWdu
ZWQuIEFib3J0IHRoaXMKPj4gKwkgKiB0ZXN0IGluIGNhc2Ugd2UgY291bGQgbm90IGFsbG9jYXRl
IHN1Y2ggYSBtZW1vcnkgYmxvY2suCj4+ICsJICovCj4+ICsJaWYgKCFwdWRfYWxpZ25lZCkgewo+
PiArCQlwcl93YXJuKCJDb3VsZCBub3QgcHJvY2VlZCB3aXRoIFBVRCB0ZXN0c1xuIik7Cj4+ICsJ
CXJldHVybjsKPj4gKwl9Cj4+ICsKPj4gKwlwdWQgPSBwZm5fcHVkKHBhZ2VfdG9fcGZuKHBhZ2Up
LCBwcm90KTsKPj4gKwlXQVJOX09OKCFwdWRfc2FtZShwdWQsIHB1ZCkpOwo+PiArCVdBUk5fT04o
IXB1ZF95b3VuZyhwdWRfbWt5b3VuZyhwdWQpKSk7Cj4+ICsJV0FSTl9PTighcHVkX3dyaXRlKHB1
ZF9ta3dyaXRlKHB1ZCkpKTsKPj4gKwlXQVJOX09OKHB1ZF93cml0ZShwdWRfd3Jwcm90ZWN0KHB1
ZCkpKTsKPj4gKwlXQVJOX09OKHB1ZF95b3VuZyhwdWRfbWtvbGQocHVkKSkpOwo+PiArCj4+ICsj
aWYgIWRlZmluZWQoX19QQUdFVEFCTEVfUE1EX0ZPTERFRCkgJiYgIWRlZmluZWQoX19BUkNIX0hB
U180TEVWRUxfSEFDSykKPj4gKwkvKgo+PiArCSAqIEEgaHVnZSBwYWdlIGRvZXMgbm90IHBvaW50
IHRvIG5leHQgbGV2ZWwgcGFnZSB0YWJsZQo+PiArCSAqIGVudHJ5LiBIZW5jZSB0aGlzIG11c3Qg
cXVhbGlmeSBhcyBwdWRfYmFkKCkuCj4+ICsJICovCj4+ICsJV0FSTl9PTighcHVkX2JhZChwdWRf
bWtodWdlKHB1ZCkpKTsKPj4gKyNlbmRpZgo+PiArfQo+PiArI2Vsc2UKPj4gK3N0YXRpYyB2b2lk
IHB1ZF9iYXNpY190ZXN0cyhzdHJ1Y3QgcGFnZSAqcGFnZSwgcGdwcm90X3QgcHJvdCkgeyB9Cj4+
ICsjZW5kaWYKPj4gKwo+PiArc3RhdGljIHZvaWQgcDRkX2Jhc2ljX3Rlc3RzKHN0cnVjdCBwYWdl
ICpwYWdlLCBwZ3Byb3RfdCBwcm90KQo+PiArewo+PiArCXA0ZF90IHA0ZDsKPj4gKwo+PiArCW1l
bXNldCgmcDRkLCBSQU5ET01fTlpWQUxVRSwgc2l6ZW9mKHA0ZF90KSk7Cj4+ICsJV0FSTl9PTigh
cDRkX3NhbWUocDRkLCBwNGQpKTsKPj4gK30KPj4gKwo+PiArc3RhdGljIHZvaWQgcGdkX2Jhc2lj
X3Rlc3RzKHN0cnVjdCBwYWdlICpwYWdlLCBwZ3Byb3RfdCBwcm90KQo+PiArewo+PiArCXBnZF90
IHBnZDsKPj4gKwo+PiArCW1lbXNldCgmcGdkLCBSQU5ET01fTlpWQUxVRSwgc2l6ZW9mKHBnZF90
KSk7Cj4+ICsJV0FSTl9PTighcGdkX3NhbWUocGdkLCBwZ2QpKTsKPj4gK30KPj4gKwo+PiArI2lm
ICFkZWZpbmVkKF9fUEFHRVRBQkxFX1BNRF9GT0xERUQpICYmICFkZWZpbmVkKF9fQVJDSF9IQVNf
NExFVkVMX0hBQ0spCj4+ICtzdGF0aWMgdm9pZCBwdWRfY2xlYXJfdGVzdHMocHVkX3QgKnB1ZHAp
Cj4+ICt7Cj4+ICsJbWVtc2V0KHB1ZHAsIFJBTkRPTV9OWlZBTFVFLCBzaXplb2YocHVkX3QpKTsK
Pj4gKwlwdWRfY2xlYXIocHVkcCk7Cj4+ICsJV0FSTl9PTighcHVkX25vbmUoUkVBRF9PTkNFKCpw
dWRwKSkpOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgdm9pZCBwdWRfcG9wdWxhdGVfdGVzdHMoc3Ry
dWN0IG1tX3N0cnVjdCAqbW0sIHB1ZF90ICpwdWRwLCBwbWRfdCAqcG1kcCkKPj4gK3sKPj4gKwkv
Kgo+PiArCSAqIFRoaXMgZW50cnkgcG9pbnRzIHRvIG5leHQgbGV2ZWwgcGFnZSB0YWJsZSBwYWdl
Lgo+PiArCSAqIEhlbmNlIHRoaXMgbXVzdCBub3QgcXVhbGlmeSBhcyBwdWRfYmFkKCkuCj4+ICsJ
ICovCj4+ICsJcG1kX2NsZWFyKHBtZHApOwo+PiArCXB1ZF9jbGVhcihwdWRwKTsKPj4gKwlwdWRf
cG9wdWxhdGUobW0sIHB1ZHAsIHBtZHApOwo+PiArCVdBUk5fT04ocHVkX2JhZChSRUFEX09OQ0Uo
KnB1ZHApKSk7Cj4+ICt9Cj4+ICsjZWxzZQo+PiArc3RhdGljIHZvaWQgcHVkX2NsZWFyX3Rlc3Rz
KHB1ZF90ICpwdWRwKSB7IH0KPj4gK3N0YXRpYyB2b2lkIHB1ZF9wb3B1bGF0ZV90ZXN0cyhzdHJ1
Y3QgbW1fc3RydWN0ICptbSwgcHVkX3QgKnB1ZHAsIHBtZF90ICpwbWRwKQo+PiArewo+PiArfQo+
PiArI2VuZGlmCj4+ICsKPj4gKyNpZiAhZGVmaW5lZChfX1BBR0VUQUJMRV9QVURfRk9MREVEKSAm
JiAhZGVmaW5lZChfX0FSQ0hfSEFTXzVMRVZFTF9IQUNLKQo+PiArc3RhdGljIHZvaWQgcDRkX2Ns
ZWFyX3Rlc3RzKHA0ZF90ICpwNGRwKQo+PiArewo+PiArCW1lbXNldChwNGRwLCBSQU5ET01fTlpW
QUxVRSwgc2l6ZW9mKHA0ZF90KSk7Cj4+ICsJcDRkX2NsZWFyKHA0ZHApOwo+PiArCVdBUk5fT04o
IXA0ZF9ub25lKFJFQURfT05DRSgqcDRkcCkpKTsKPj4gK30KPj4gKwo+PiArc3RhdGljIHZvaWQg
cDRkX3BvcHVsYXRlX3Rlc3RzKHN0cnVjdCBtbV9zdHJ1Y3QgKm1tLCBwNGRfdCAqcDRkcCwgcHVk
X3QgKnB1ZHApCj4+ICt7Cj4+ICsJLyoKPj4gKwkgKiBUaGlzIGVudHJ5IHBvaW50cyB0byBuZXh0
IGxldmVsIHBhZ2UgdGFibGUgcGFnZS4KPj4gKwkgKiBIZW5jZSB0aGlzIG11c3Qgbm90IHF1YWxp
ZnkgYXMgcDRkX2JhZCgpLgo+PiArCSAqLwo+PiArCXB1ZF9jbGVhcihwdWRwKTsKPj4gKwlwNGRf
Y2xlYXIocDRkcCk7Cj4+ICsJcDRkX3BvcHVsYXRlKG1tLCBwNGRwLCBwdWRwKTsKPj4gKwlXQVJO
X09OKHA0ZF9iYWQoUkVBRF9PTkNFKCpwNGRwKSkpOwo+PiArfQo+PiArI2Vsc2UKPj4gK3N0YXRp
YyB2b2lkIHA0ZF9jbGVhcl90ZXN0cyhwNGRfdCAqcDRkcCkgeyB9Cj4+ICtzdGF0aWMgdm9pZCBw
NGRfcG9wdWxhdGVfdGVzdHMoc3RydWN0IG1tX3N0cnVjdCAqbW0sIHA0ZF90ICpwNGRwLCBwdWRf
dCAqcHVkcCkKPj4gK3sKPj4gK30KPj4gKyNlbmRpZgo+PiArCj4+ICsjaWZuZGVmIF9fUEFHRVRB
QkxFX1A0RF9GT0xERUQKPj4gK3N0YXRpYyB2b2lkIHBnZF9jbGVhcl90ZXN0cyhwZ2RfdCAqcGdk
cCkKPj4gK3sKPj4gKwltZW1zZXQocGdkcCwgUkFORE9NX05aVkFMVUUsIHNpemVvZihwZ2RfdCkp
Owo+PiArCXBnZF9jbGVhcihwZ2RwKTsKPj4gKwlXQVJOX09OKCFwZ2Rfbm9uZShSRUFEX09OQ0Uo
KnBnZHApKSk7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyB2b2lkIHBnZF9wb3B1bGF0ZV90ZXN0cyhz
dHJ1Y3QgbW1fc3RydWN0ICptbSwgcGdkX3QgKnBnZHAsIHA0ZF90ICpwNGRwKQo+PiArewo+PiAr
CS8qCj4+ICsJICogVGhpcyBlbnRyeSBwb2ludHMgdG8gbmV4dCBsZXZlbCBwYWdlIHRhYmxlIHBh
Z2UuCj4+ICsJICogSGVuY2UgdGhpcyBtdXN0IG5vdCBxdWFsaWZ5IGFzIHBnZF9iYWQoKS4KPj4g
KwkgKi8KPj4gKwlwNGRfY2xlYXIocDRkcCk7Cj4+ICsJcGdkX2NsZWFyKHBnZHApOwo+PiArCXBn
ZF9wb3B1bGF0ZShtbSwgcGdkcCwgcDRkcCk7Cj4+ICsJV0FSTl9PTihwZ2RfYmFkKFJFQURfT05D
RSgqcGdkcCkpKTsKPj4gK30KPj4gKyNlbHNlCj4+ICtzdGF0aWMgdm9pZCBwZ2RfY2xlYXJfdGVz
dHMocGdkX3QgKnBnZHApIHsgfQo+PiArc3RhdGljIHZvaWQgcGdkX3BvcHVsYXRlX3Rlc3RzKHN0
cnVjdCBtbV9zdHJ1Y3QgKm1tLCBwZ2RfdCAqcGdkcCwgcDRkX3QgKnA0ZHApCj4+ICt7Cj4+ICt9
Cj4+ICsjZW5kaWYKPiAKPiBUaGlzIHdpbGwgbm90IHdvcmsgaWYgcDRkIGlzIGZvbGRlZCBhdCBy
dW50aW1lLiBMaWtlIGZvciB4ODYtNjQgYW5kIHMzOTAuCj4gCj4gSGVyZSdzIHRoZSBmaXh1cC4g
SXQgc2hvdWxkIHdvcmsgZm9yIGJvdGggeDg2LTY0IGFuZCBzMzkwLCBidXQgSSBvbmx5Cj4gdGVz
dGVkIG9uIHg4Ni02NDoKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC94ODYvaW5jbHVkZS9hc20vcGd0
YWJsZV82NF90eXBlcy5oIGIvYXJjaC94ODYvaW5jbHVkZS9hc20vcGd0YWJsZV82NF90eXBlcy5o
Cj4gaW5kZXggNTJlNWY1ZjIyNDBkLi5iODgyNzkyYTM5OTkgMTAwNjQ0Cj4gLS0tIGEvYXJjaC94
ODYvaW5jbHVkZS9hc20vcGd0YWJsZV82NF90eXBlcy5oCj4gKysrIGIvYXJjaC94ODYvaW5jbHVk
ZS9hc20vcGd0YWJsZV82NF90eXBlcy5oCj4gQEAgLTQwLDYgKzQwLDggQEAgc3RhdGljIGlubGlu
ZSBib29sIHBndGFibGVfbDVfZW5hYmxlZCh2b2lkKQo+ICAjZGVmaW5lIHBndGFibGVfbDVfZW5h
YmxlZCgpIDAKPiAgI2VuZGlmIC8qIENPTkZJR19YODZfNUxFVkVMICovCj4gIAo+ICsjZGVmaW5l
IG1tX3A0ZF9mb2xkZWQobW0pICghcGd0YWJsZV9sNV9lbmFibGVkKCkpCj4gKwo+ICBleHRlcm4g
dW5zaWduZWQgaW50IHBnZGlyX3NoaWZ0Owo+ICBleHRlcm4gdW5zaWduZWQgaW50IHB0cnNfcGVy
X3A0ZDsKPiAgCj4gZGlmZiAtLWdpdCBhL21tL2FyY2hfcGd0YWJsZV90ZXN0LmMgYi9tbS9hcmNo
X3BndGFibGVfdGVzdC5jCj4gaW5kZXggZjE1YmU4YTczNzIzLi4yMDZmZTMzMzRhMjggMTAwNjQ0
Cj4gLS0tIGEvbW0vYXJjaF9wZ3RhYmxlX3Rlc3QuYwo+ICsrKyBiL21tL2FyY2hfcGd0YWJsZV90
ZXN0LmMKPiBAQCAtMTkzLDkgKzE5MywxMSBAQCBzdGF0aWMgdm9pZCBwNGRfcG9wdWxhdGVfdGVz
dHMoc3RydWN0IG1tX3N0cnVjdCAqbW0sIHA0ZF90ICpwNGRwLCBwdWRfdCAqcHVkcCkKPiAgfQo+
ICAjZW5kaWYKPiAgCj4gLSNpZm5kZWYgX19QQUdFVEFCTEVfUDREX0ZPTERFRAo+ICBzdGF0aWMg
dm9pZCBwZ2RfY2xlYXJfdGVzdHMocGdkX3QgKnBnZHApCj4gIHsKPiArCWlmIChtbV9wNGRfZm9s
ZGVkKG1tKSkKPiArCQlyZXR1cm47Cj4gKwo+ICAJbWVtc2V0KHBnZHAsIFJBTkRPTV9OWlZBTFVF
LCBzaXplb2YocGdkX3QpKTsKPiAgCXBnZF9jbGVhcihwZ2RwKTsKPiAgCVdBUk5fT04oIXBnZF9u
b25lKFJFQURfT05DRSgqcGdkcCkpKTsKPiBAQCAtMjAzLDYgKzIwNSw5IEBAIHN0YXRpYyB2b2lk
IHBnZF9jbGVhcl90ZXN0cyhwZ2RfdCAqcGdkcCkKPiAgCj4gIHN0YXRpYyB2b2lkIHBnZF9wb3B1
bGF0ZV90ZXN0cyhzdHJ1Y3QgbW1fc3RydWN0ICptbSwgcGdkX3QgKnBnZHAsIHA0ZF90ICpwNGRw
KQo+ICB7Cj4gKwlpZiAobW1fcDRkX2ZvbGRlZChtbSkpCj4gKwkJcmV0dXJuOwo+ICsKPiAgCS8q
Cj4gIAkgKiBUaGlzIGVudHJ5IHBvaW50cyB0byBuZXh0IGxldmVsIHBhZ2UgdGFibGUgcGFnZS4K
PiAgCSAqIEhlbmNlIHRoaXMgbXVzdCBub3QgcXVhbGlmeSBhcyBwZ2RfYmFkKCkuCj4gQEAgLTIx
MiwxMiArMjE3LDYgQEAgc3RhdGljIHZvaWQgcGdkX3BvcHVsYXRlX3Rlc3RzKHN0cnVjdCBtbV9z
dHJ1Y3QgKm1tLCBwZ2RfdCAqcGdkcCwgcDRkX3QgKnA0ZHApCj4gIAlwZ2RfcG9wdWxhdGUobW0s
IHBnZHAsIHA0ZHApOwo+ICAJV0FSTl9PTihwZ2RfYmFkKFJFQURfT05DRSgqcGdkcCkpKTsKPiAg
fQo+IC0jZWxzZQo+IC1zdGF0aWMgdm9pZCBwZ2RfY2xlYXJfdGVzdHMocGdkX3QgKnBnZHApIHsg
fQo+IC1zdGF0aWMgdm9pZCBwZ2RfcG9wdWxhdGVfdGVzdHMoc3RydWN0IG1tX3N0cnVjdCAqbW0s
IHBnZF90ICpwZ2RwLCBwNGRfdCAqcDRkcCkKPiAtewo+IC19Cj4gLSNlbmRpZgoKVGhpcyBtYWtl
cyBzZW5zZSBmb3IgcnVudGltZSBjYXNlcyBidXQgdGhlcmUgaXMgYSBwcm9ibGVtIGhlcmUuCgpP
biBhcm02NCwgcGdkX3BvcHVsYXRlKCkgd2hpY2ggdGFrZXMgKHB1ZF90ICopIGFzIGxhc3QgYXJn
dW1lbnQgaW5zdGVhZCBvZgoocDRkX3QgKikgd2lsbCBmYWlsIHRvIGJ1aWxkIHdoZW4gbm90IHdy
YXBwZWQgaW4gIV9fUEFHRVRBQkxFX1A0RF9GT0xERUQKb24gY2VydGFpbiBjb25maWd1cmF0aW9u
cy4KCi4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wZ2FsbG9jLmg6ODE6NzU6IG5vdGU6CmV4cGVj
dGVkIOKAmHB1ZF90ICrigJkge2FrYSDigJhzdHJ1Y3QgPGFub255bW91cz4gKuKAmX0KYnV0IGFy
Z3VtZW50IGlzIG9mIHR5cGUg4oCYcGdkX3QgKuKAmSB7YWthIOKAmHN0cnVjdCA8YW5vbnltb3Vz
PiAq4oCZfQpzdGF0aWMgaW5saW5lIHZvaWQgcGdkX3BvcHVsYXRlKHN0cnVjdCBtbV9zdHJ1Y3Qg
Km1tLCBwZ2RfdCAqcGdkcCwgcHVkX3QgKnB1ZHApCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB+fn5+fn5+Xn5+fgpXb25k
ZXJpbmcgaWYgdGhpcyBpcyBzb21ldGhpbmcgdG8gYmUgZml4ZWQgb24gYXJtNjQgb3IgaXRzIG1v
cmUgZ2VuZXJhbApwcm9ibGVtLiBXaWxsIGxvb2sgaW50byB0aGlzIGZ1cnRoZXIuCgo+ICAKPiAg
c3RhdGljIHZvaWQgcHRlX2NsZWFyX3Rlc3RzKHB0ZV90ICpwdGVwKQo+ICB7Cj4gCj4+ICsKPj4g
K3N0YXRpYyB2b2lkIHB0ZV9jbGVhcl90ZXN0cyhwdGVfdCAqcHRlcCkKPj4gK3sKPj4gKwltZW1z
ZXQocHRlcCwgUkFORE9NX05aVkFMVUUsIHNpemVvZihwdGVfdCkpOwo+PiArCXB0ZV9jbGVhcihO
VUxMLCAwLCBwdGVwKTsKPj4gKwlXQVJOX09OKCFwdGVfbm9uZShSRUFEX09OQ0UoKnB0ZXApKSk7
Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyB2b2lkIHBtZF9jbGVhcl90ZXN0cyhwbWRfdCAqcG1kcCkK
Pj4gK3sKPj4gKwltZW1zZXQocG1kcCwgUkFORE9NX05aVkFMVUUsIHNpemVvZihwbWRfdCkpOwo+
PiArCXBtZF9jbGVhcihwbWRwKTsKPj4gKwlXQVJOX09OKCFwbWRfbm9uZShSRUFEX09OQ0UoKnBt
ZHApKSk7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyB2b2lkIHBtZF9wb3B1bGF0ZV90ZXN0cyhzdHJ1
Y3QgbW1fc3RydWN0ICptbSwgcG1kX3QgKnBtZHAsCj4+ICsJCQkgICAgICAgcGd0YWJsZV90IHBn
dGFibGUpCj4+ICt7Cj4+ICsJLyoKPj4gKwkgKiBUaGlzIGVudHJ5IHBvaW50cyB0byBuZXh0IGxl
dmVsIHBhZ2UgdGFibGUgcGFnZS4KPj4gKwkgKiBIZW5jZSB0aGlzIG11c3Qgbm90IHF1YWxpZnkg
YXMgcG1kX2JhZCgpLgo+PiArCSAqLwo+PiArCXBtZF9jbGVhcihwbWRwKTsKPj4gKwlwbWRfcG9w
dWxhdGUobW0sIHBtZHAsIHBndGFibGUpOwo+PiArCVdBUk5fT04ocG1kX2JhZChSRUFEX09OQ0Uo
KnBtZHApKSk7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBib29sIHBmbl9yYW5nZV92YWxpZChzdHJ1
Y3Qgem9uZSAqeiwgdW5zaWduZWQgbG9uZyBzdGFydF9wZm4sCj4+ICsJCQkgICAgdW5zaWduZWQg
bG9uZyBucl9wYWdlcykKPj4gK3sKPj4gKwl1bnNpZ25lZCBsb25nIGksIGVuZF9wZm4gPSBzdGFy
dF9wZm4gKyBucl9wYWdlczsKPj4gKwlzdHJ1Y3QgcGFnZSAqcGFnZTsKPj4gKwo+PiArCWZvciAo
aSA9IHN0YXJ0X3BmbjsgaSA8IGVuZF9wZm47IGkrKykgewo+PiArCQlpZiAoIXBmbl92YWxpZChp
KSkKPj4gKwkJCXJldHVybiBmYWxzZTsKPj4gKwo+PiArCQlwYWdlID0gcGZuX3RvX3BhZ2UoaSk7
Cj4+ICsKPj4gKwkJaWYgKHBhZ2Vfem9uZShwYWdlKSAhPSB6KQo+PiArCQkJcmV0dXJuIGZhbHNl
Owo+PiArCj4+ICsJCWlmIChQYWdlUmVzZXJ2ZWQocGFnZSkpCj4+ICsJCQlyZXR1cm4gZmFsc2U7
Cj4+ICsKPj4gKwkJaWYgKHBhZ2VfY291bnQocGFnZSkgPiAwKQo+PiArCQkJcmV0dXJuIGZhbHNl
Owo+PiArCj4+ICsJCWlmIChQYWdlSHVnZShwYWdlKSkKPj4gKwkJCXJldHVybiBmYWxzZTsKPj4g
Kwl9Cj4+ICsJcmV0dXJuIHRydWU7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBzdHJ1Y3QgcGFnZSAq
YWxsb2NfZ2lnYW50aWNfcGFnZShub2RlbWFza190ICpub2RlbWFzaywKPj4gKwkJCQkJaW50IG5p
ZCwgZ2ZwX3QgZ2ZwX21hc2ssIGludCBvcmRlcikKPj4gK3sKPj4gKwlzdHJ1Y3Qgem9uZWxpc3Qg
KnpvbmVsaXN0Owo+PiArCXN0cnVjdCB6b25lICp6b25lOwo+PiArCXN0cnVjdCB6b25lcmVmICp6
Owo+PiArCWVudW0gem9uZV90eXBlIHpvbmVzZWw7Cj4+ICsJdW5zaWduZWQgbG9uZyByZXQsIHBm
biwgZmxhZ3MsIG5yX3BhZ2VzOwo+PiArCj4+ICsJbnJfcGFnZXMgPSAxVUwgPDwgb3JkZXI7Cj4+
ICsJem9uZXNlbCA9IGdmcF96b25lKGdmcF9tYXNrKTsKPj4gKwl6b25lbGlzdCA9IG5vZGVfem9u
ZWxpc3QobmlkLCBnZnBfbWFzayk7Cj4+ICsJZm9yX2VhY2hfem9uZV96b25lbGlzdF9ub2RlbWFz
ayh6b25lLCB6LCB6b25lbGlzdCwgem9uZXNlbCwgbm9kZW1hc2spIHsKPj4gKwkJc3Bpbl9sb2Nr
X2lycXNhdmUoJnpvbmUtPmxvY2ssIGZsYWdzKTsKPj4gKwkJcGZuID0gQUxJR04oem9uZS0+em9u
ZV9zdGFydF9wZm4sIG5yX3BhZ2VzKTsKPj4gKwkJd2hpbGUgKHpvbmVfc3BhbnNfcGZuKHpvbmUs
IHBmbiArIG5yX3BhZ2VzIC0gMSkpIHsKPj4gKwkJCWlmIChwZm5fcmFuZ2VfdmFsaWQoem9uZSwg
cGZuLCBucl9wYWdlcykpIHsKPj4gKwkJCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZ6b25lLT5s
b2NrLCBmbGFncyk7Cj4+ICsJCQkJcmV0ID0gYWxsb2NfY29udGlnX3JhbmdlKHBmbiwgcGZuICsg
bnJfcGFnZXMsCj4+ICsJCQkJCQkJIE1JR1JBVEVfTU9WQUJMRSwKPj4gKwkJCQkJCQkgZ2ZwX21h
c2spOwo+PiArCQkJCWlmICghcmV0KQo+PiArCQkJCQlyZXR1cm4gcGZuX3RvX3BhZ2UocGZuKTsK
Pj4gKwkJCQlzcGluX2xvY2tfaXJxc2F2ZSgmem9uZS0+bG9jaywgZmxhZ3MpOwo+PiArCQkJfQo+
PiArCQkJcGZuICs9IG5yX3BhZ2VzOwo+PiArCQl9Cj4+ICsJCXNwaW5fdW5sb2NrX2lycXJlc3Rv
cmUoJnpvbmUtPmxvY2ssIGZsYWdzKTsKPj4gKwl9Cj4+ICsJcmV0dXJuIE5VTEw7Cj4+ICt9Cj4+
ICsKPj4gK3N0YXRpYyBzdHJ1Y3QgcGFnZSAqYWxsb2NfbWFwcGVkX3BhZ2Uodm9pZCkKPj4gK3sK
Pj4gKwlnZnBfdCBnZnBfbWFzayA9IEdGUF9LRVJORUwgfCBfX0dGUF9aRVJPOwo+PiArCXN0cnVj
dCBwYWdlICpwYWdlID0gTlVMTDsKPj4gKwo+PiArCXBhZ2UgPSBhbGxvY19naWdhbnRpY19wYWdl
KCZub2RlX3N0YXRlc1tOX01FTU9SWV0sIGZpcnN0X21lbW9yeV9ub2RlLAo+PiArCQkJCSAgIGdm
cF9tYXNrLCBnZXRfb3JkZXIoUFVEX1NJWkUpKTsKPj4gKwlpZiAocGFnZSkgewo+PiArCQlwdWRf
YWxpZ25lZCA9IHRydWU7Cj4+ICsJCXBtZF9hbGlnbmVkID0gdHJ1ZTsKPj4gKwkJcmV0dXJuIHBh
Z2U7Cj4+ICsJfQo+PiArCj4+ICsJcGFnZSA9IGFsbG9jX3BhZ2VzKGdmcF9tYXNrLCBnZXRfb3Jk
ZXIoUE1EX1NJWkUpKTsKPj4gKwlpZiAocGFnZSkgewo+PiArCQlwbWRfYWxpZ25lZCA9IHRydWU7
Cj4+ICsJCXJldHVybiBwYWdlOwo+PiArCX0KPj4gKwlyZXR1cm4gYWxsb2NfcGFnZShnZnBfbWFz
ayk7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyB2b2lkIGZyZWVfbWFwcGVkX3BhZ2Uoc3RydWN0IHBh
Z2UgKnBhZ2UpCj4+ICt7Cj4+ICsJaWYgKHB1ZF9hbGlnbmVkKSB7Cj4+ICsJCXVuc2lnbmVkIGxv
bmcgcGZuID0gcGFnZV90b19wZm4ocGFnZSk7Cj4+ICsKPj4gKwkJZnJlZV9jb250aWdfcmFuZ2Uo
cGZuLCAxVUxMIDw8IGdldF9vcmRlcihQVURfU0laRSkpOwo+PiArCQlyZXR1cm47Cj4+ICsJfQo+
PiArCj4+ICsJaWYgKHBtZF9hbGlnbmVkKSB7Cj4+ICsJCWludCBvcmRlciA9IGdldF9vcmRlcihQ
TURfU0laRSk7Cj4+ICsKPj4gKwkJZnJlZV9wYWdlcygodW5zaWduZWQgbG9uZylwYWdlX2FkZHJl
c3MocGFnZSksIG9yZGVyKTsKPj4gKwkJcmV0dXJuOwo+PiArCX0KPj4gKwlmcmVlX3BhZ2UoKHVu
c2lnbmVkIGxvbmcpcGFnZV9hZGRyZXNzKHBhZ2UpKTsKPj4gK30KPj4gKwo+PiArc3RhdGljIGlu
dCBfX2luaXQgYXJjaF9wZ3RhYmxlX3Rlc3RzX2luaXQodm9pZCkKPj4gK3sKPj4gKwlzdHJ1Y3Qg
bW1fc3RydWN0ICptbTsKPj4gKwlzdHJ1Y3QgcGFnZSAqcGFnZTsKPj4gKwlwZ2RfdCAqcGdkcDsK
Pj4gKwlwNGRfdCAqcDRkcCwgKnNhdmVkX3A0ZHA7Cj4+ICsJcHVkX3QgKnB1ZHAsICpzYXZlZF9w
dWRwOwo+PiArCXBtZF90ICpwbWRwLCAqc2F2ZWRfcG1kcDsKPj4gKwlwdGVfdCAqcHRlcCwgKnNh
dmVkX3B0ZXA7Cj4+ICsJcGdwcm90X3QgcHJvdCA9IHZtX2dldF9wYWdlX3Byb3QoVk1BX1RFU1Rf
RkxBR1MpOwo+PiArCXVuc2lnbmVkIGxvbmcgdmFkZHIgPSBWQUREUl9URVNUOwo+PiArCj4+ICsJ
bW0gPSBtbV9hbGxvYygpOwo+PiArCWlmICghbW0pIHsKPj4gKwkJcHJfZXJyKCJtbV9zdHJ1Y3Qg
YWxsb2NhdGlvbiBmYWlsZWRcbiIpOwo+PiArCQlyZXR1cm4gMTsKPj4gKwl9Cj4+ICsKPj4gKwlw
YWdlID0gYWxsb2NfbWFwcGVkX3BhZ2UoKTsKPj4gKwlpZiAoIXBhZ2UpIHsKPj4gKwkJcHJfZXJy
KCJtZW1vcnkgYWxsb2NhdGlvbiBmYWlsZWRcbiIpOwo+PiArCQlyZXR1cm4gMTsKPj4gKwl9Cj4+
ICsKPj4gKwlwZ2RwID0gcGdkX29mZnNldChtbSwgdmFkZHIpOwo+PiArCXA0ZHAgPSBwNGRfYWxs
b2MobW0sIHBnZHAsIHZhZGRyKTsKPj4gKwlwdWRwID0gcHVkX2FsbG9jKG1tLCBwNGRwLCB2YWRk
cik7Cj4+ICsJcG1kcCA9IHBtZF9hbGxvYyhtbSwgcHVkcCwgdmFkZHIpOwo+PiArCXB0ZXAgPSBw
dGVfYWxsb2NfbWFwKG1tLCBwbWRwLCB2YWRkcik7Cj4+ICsKPj4gKwkvKgo+PiArCSAqIFNhdmUg
YWxsIHRoZSBwYWdlIHRhYmxlIHBhZ2UgYWRkcmVzc2VzIGFzIHRoZSBwYWdlIHRhYmxlCj4+ICsJ
ICogZW50cmllcyB3aWxsIGJlIHVzZWQgZm9yIHRlc3Rpbmcgd2l0aCByYW5kb20gb3IgZ2FyYmFn
ZQo+PiArCSAqIHZhbHVlcy4gVGhlc2Ugc2F2ZWQgYWRkcmVzc2VzIHdpbGwgYmUgdXNlZCBmb3Ig
ZnJlZWluZwo+PiArCSAqIHBhZ2UgdGFibGUgcGFnZXMuCj4+ICsJICovCj4+ICsJc2F2ZWRfcDRk
cCA9IHA0ZF9vZmZzZXQocGdkcCwgMFVMKTsKPj4gKwlzYXZlZF9wdWRwID0gcHVkX29mZnNldChw
NGRwLCAwVUwpOwo+PiArCXNhdmVkX3BtZHAgPSBwbWRfb2Zmc2V0KHB1ZHAsIDBVTCk7Cj4+ICsJ
c2F2ZWRfcHRlcCA9IHB0ZV9vZmZzZXRfbWFwKHBtZHAsIDBVTCk7Cj4+ICsKPj4gKwlwdGVfYmFz
aWNfdGVzdHMocGFnZSwgcHJvdCk7Cj4+ICsJcG1kX2Jhc2ljX3Rlc3RzKHBhZ2UsIHByb3QpOwo+
PiArCXB1ZF9iYXNpY190ZXN0cyhwYWdlLCBwcm90KTsKPj4gKwlwNGRfYmFzaWNfdGVzdHMocGFn
ZSwgcHJvdCk7Cj4+ICsJcGdkX2Jhc2ljX3Rlc3RzKHBhZ2UsIHByb3QpOwo+PiArCj4+ICsJcHRl
X2NsZWFyX3Rlc3RzKHB0ZXApOwo+PiArCXBtZF9jbGVhcl90ZXN0cyhwbWRwKTsKPj4gKwlwdWRf
Y2xlYXJfdGVzdHMocHVkcCk7Cj4+ICsJcDRkX2NsZWFyX3Rlc3RzKHA0ZHApOwo+PiArCXBnZF9j
bGVhcl90ZXN0cyhwZ2RwKTsKPj4gKwo+PiArCXBtZF9wb3B1bGF0ZV90ZXN0cyhtbSwgcG1kcCwg
KHBndGFibGVfdCkgcGFnZSk7Cj4gCj4gVGhpcyBpcyBub3QgY29ycmVjdCBmb3IgYXJjaGl0ZWN0
dXJlcyB0aGF0IGRlZmluZXMgcGd0YWJsZV90IGFzIHB0ZV90Cj4gcG9pbnRlciwgbm90IHN0cnVj
dCBwYWdlIHBvaW50ZXIuCgpSaWdodCwgYSBncmVwIG9uIHRoZSBzb3VyY2UgY29uZmlybXMgdGhh
dC4KClRoZXNlIHBsYXRmb3JtcyBkZWZpbmUgcGd0YWJsZV90IGFzIHN0cnVjdCBwYWdlICoKCmFy
Y2gvYWxwaGEvaW5jbHVkZS9hc20vcGFnZS5oOnR5cGVkZWYgc3RydWN0IHBhZ2UgKnBndGFibGVf
dDsKYXJjaC9hcm0vaW5jbHVkZS9hc20vcGFnZS5oOnR5cGVkZWYgc3RydWN0IHBhZ2UgKnBndGFi
bGVfdDsKYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wYWdlLmg6dHlwZWRlZiBzdHJ1Y3QgcGFnZSAq
cGd0YWJsZV90OwphcmNoL2Nza3kvaW5jbHVkZS9hc20vcGFnZS5oOnR5cGVkZWYgc3RydWN0IHBh
Z2UgKnBndGFibGVfdDsKYXJjaC9oZXhhZ29uL2luY2x1ZGUvYXNtL3BhZ2UuaDp0eXBlZGVmIHN0
cnVjdCBwYWdlICpwZ3RhYmxlX3Q7CmFyY2gvaWE2NC9pbmNsdWRlL2FzbS9wYWdlLmg6ICB0eXBl
ZGVmIHN0cnVjdCBwYWdlICpwZ3RhYmxlX3Q7CmFyY2gvaWE2NC9pbmNsdWRlL2FzbS9wYWdlLmg6
ICAgIHR5cGVkZWYgc3RydWN0IHBhZ2UgKnBndGFibGVfdDsKYXJjaC9tNjhrL2luY2x1ZGUvYXNt
L3BhZ2UuaDp0eXBlZGVmIHN0cnVjdCBwYWdlICpwZ3RhYmxlX3Q7CmFyY2gvbWljcm9ibGF6ZS9p
bmNsdWRlL2FzbS9wYWdlLmg6dHlwZWRlZiBzdHJ1Y3QgcGFnZSAqcGd0YWJsZV90OwphcmNoL21p
cHMvaW5jbHVkZS9hc20vcGFnZS5oOnR5cGVkZWYgc3RydWN0IHBhZ2UgKnBndGFibGVfdDsKYXJj
aC9uZHMzMi9pbmNsdWRlL2FzbS9wYWdlLmg6dHlwZWRlZiBzdHJ1Y3QgcGFnZSAqcGd0YWJsZV90
OwphcmNoL25pb3MyL2luY2x1ZGUvYXNtL3BhZ2UuaDp0eXBlZGVmIHN0cnVjdCBwYWdlICpwZ3Rh
YmxlX3Q7CmFyY2gvb3BlbnJpc2MvaW5jbHVkZS9hc20vcGFnZS5oOnR5cGVkZWYgc3RydWN0IHBh
Z2UgKnBndGFibGVfdDsKYXJjaC9wYXJpc2MvaW5jbHVkZS9hc20vcGFnZS5oOnR5cGVkZWYgc3Ry
dWN0IHBhZ2UgKnBndGFibGVfdDsKYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wYWdlLmg6dHlwZWRl
ZiBzdHJ1Y3QgcGFnZSAqcGd0YWJsZV90OwphcmNoL3NoL2luY2x1ZGUvYXNtL3BhZ2UuaDp0eXBl
ZGVmIHN0cnVjdCBwYWdlICpwZ3RhYmxlX3Q7CmFyY2gvc3BhcmMvaW5jbHVkZS9hc20vcGFnZV8z
Mi5oOnR5cGVkZWYgc3RydWN0IHBhZ2UgKnBndGFibGVfdDsKYXJjaC91bS9pbmNsdWRlL2FzbS9w
YWdlLmg6dHlwZWRlZiBzdHJ1Y3QgcGFnZSAqcGd0YWJsZV90OwphcmNoL3VuaWNvcmUzMi9pbmNs
dWRlL2FzbS9wYWdlLmg6dHlwZWRlZiBzdHJ1Y3QgcGFnZSAqcGd0YWJsZV90OwphcmNoL3g4Ni9p
bmNsdWRlL2FzbS9wZ3RhYmxlX3R5cGVzLmg6dHlwZWRlZiBzdHJ1Y3QgcGFnZSAqcGd0YWJsZV90
OwphcmNoL3h0ZW5zYS9pbmNsdWRlL2FzbS9wYWdlLmg6dHlwZWRlZiBzdHJ1Y3QgcGFnZSAqcGd0
YWJsZV90OwoKVGhlc2UgcGxhdGZvcm1zIGRlZmluZSBwZ3RhYmxlX3QgYXMgcHRlX3QgKgoKYXJj
aC9hcmMvaW5jbHVkZS9hc20vcGFnZS5oOnR5cGVkZWYgcHRlX3QgKiBwZ3RhYmxlX3Q7CmFyY2gv
cG93ZXJwYy9pbmNsdWRlL2FzbS9tbXUuaDp0eXBlZGVmIHB0ZV90ICpwZ3RhYmxlX3Q7CmFyY2gv
czM5MC9pbmNsdWRlL2FzbS9wYWdlLmg6dHlwZWRlZiBwdGVfdCAqcGd0YWJsZV90OwphcmNoL3Nw
YXJjL2luY2x1ZGUvYXNtL3BhZ2VfNjQuaDp0eXBlZGVmIHB0ZV90ICpwZ3RhYmxlX3Q7CgpTaG91
bGQgd2UgbmVlZCBoYXZlIHR3byBwbWRfcG9wdWxhdGVfdGVzdHMoKSBkZWZpbml0aW9ucyB3aXRo
CmRpZmZlcmVudCBhcmd1bWVudHMgKHN0cnVjdCBwYWdlIHBvaW50ZXIgb3IgcHRlX3QgcG9pbnRl
cikgYW5kIHRoZW4KY2FsbCBlaXRoZXIgb25lIGFmdGVyIGRldGVjdGluZyB0aGUgZ2l2ZW4gcGxh
dGZvcm0gPwoKPiAKPj4gKwlwdWRfcG9wdWxhdGVfdGVzdHMobW0sIHB1ZHAsIHBtZHApOwo+PiAr
CXA0ZF9wb3B1bGF0ZV90ZXN0cyhtbSwgcDRkcCwgcHVkcCk7Cj4+ICsJcGdkX3BvcHVsYXRlX3Rl
c3RzKG1tLCBwZ2RwLCBwNGRwKTsKPiAKPiBUaGlzIGlzIHdyb25nLiBBbGwgcD9kcCBwb2ludHMg
dG8gdGhlIHNlY29uZCBlbnRyeSBpbiBwYWdlIHRhYmxlIGVudHJ5Lgo+IFRoaXMgaXMgbm90IHZh
bGlkIHBvaW50ZXIgZm9yIHBhZ2UgdGFibGUgYW5kIHRyaWdnZXJzIHA/ZF9iYWQoKSBvbiB4ODYu
CgpZZWFoIHRoZXNlIGFyZSBzZWNvbmQgZW50cmllcyBiZWNhdXNlIG9mIHRoZSB3YXkgd2UgY3Jl
YXRlIHRoZSBwYWdlIHRhYmxlLgpCdXQgSSBndWVzcyBpdHMgYXBwbGljYWJsZSBvbmx5IHRvIHRo
ZSBzZWNvbmQgYXJndW1lbnQgaW4gYWxsIHRoZXNlIGFib3ZlCmNhc2VzIGJlY2F1c2UgdGhlIGZp
cnN0IGFyZ3VtZW50IGNhbiBiZSBhbnkgdmFsaWQgZW50cnkgb24gcHJldmlvdXMgcGFnZQp0YWJs
ZSBsZXZlbC4KCj4gCj4gVXNlIHNhdmVkX3A/ZHAgaW5zdGVhZC4KCkl0IHdvcmtzIG9uIHg4Ni4g
V2lsbCB0ZXN0IG9uIGFybTY0IGFuZCB1cGRhdGUuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
