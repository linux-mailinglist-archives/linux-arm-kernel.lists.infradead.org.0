Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E971E14BE4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 18:06:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jdw75SWfkKV26pjB6UTl7rb0WJAdNUOOqDjtsGmG5nA=; b=ipIs5/kXgGUNw3HuwIu0Rt6Cc
	PAzizXPaozOKp57YVlEUc4Eq3YeYdcfiAT2xfbCv77fxrLz4atl85gbz479OClGun0OShaB2LFYOW
	dv+AtlhjINrScEtZ8H5DyZZ8ET3VRHm1AOckdkZXnKVUqAVoi27j8mDUBb87XTTE2/naSke2tndy7
	hYIuj7jT74GdcCXCWVJoAYlDhG/gqFHRTl6EsNWOt8LnHMFV5TFw3JHRDLSUg1A67w+wNZ54oWA89
	vfAOWLlxG056wlcjaUoCA39lJWnlCvBcG1T/LtkE2A0ZHGd6AY5T5J7vrfZCkZgwqwTwid9Sxytht
	/RDBus0bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwUJK-0001V4-OJ; Tue, 28 Jan 2020 17:05:58 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwUJ9-0001U4-P5; Tue, 28 Jan 2020 17:05:49 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 486Y0M18SRz9tyrg;
 Tue, 28 Jan 2020 18:05:39 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=NyfqsIb0; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id BxhrHtxf1fJY; Tue, 28 Jan 2020 18:05:39 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 486Y0L6ltRz9tyrf;
 Tue, 28 Jan 2020 18:05:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1580231138; bh=ihfPCvoS5mhssdU/CWQGRQyoTkFqbnCSL7XYZpDWBBI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=NyfqsIb0WYfGkwwRXCi4mviBXVht5035XRkQEUMkYVrK+kvXsqyC01Ge/84pDXico
 JiX6P4e/rd1XwHKFdfUYAulUl8Bab7lOcDCfWoS6b7lkyqkPzcXggxczTjMouWp1w8
 BakNDUS9X1lr5teDKcou4UiSzbqUTfYKRsLhysmw=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 775F08B7E7;
 Tue, 28 Jan 2020 18:05:40 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id 34jfQVcpYhXe; Tue, 28 Jan 2020 18:05:40 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id AE28C8B7E6;
 Tue, 28 Jan 2020 18:05:37 +0100 (CET)
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1580174873-18117-1-git-send-email-anshuman.khandual@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <68ed6488-aa25-ab41-8da6-f0ddeb15d52b@c-s.fr>
Date: Tue, 28 Jan 2020 18:05:37 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <1580174873-18117-1-git-send-email-anshuman.khandual@arm.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_090548_112376_53813601 
X-CRM114-Status: GOOD (  29.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 linux-arm-kernel@lists.infradead.org,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAyOC8wMS8yMDIwIMOgIDAyOjI3LCBBbnNodW1hbiBLaGFuZHVhbCBhIMOpY3JpdMKgOgo+
IFRoaXMgYWRkcyB0ZXN0cyB3aGljaCB3aWxsIHZhbGlkYXRlIGFyY2hpdGVjdHVyZSBwYWdlIHRh
YmxlIGhlbHBlcnMgYW5kCj4gb3RoZXIgYWNjZXNzb3JzIGluIHRoZWlyIGNvbXBsaWFuY2Ugd2l0
aCBleHBlY3RlZCBnZW5lcmljIE1NIHNlbWFudGljcy4KPiBUaGlzIHdpbGwgaGVscCB2YXJpb3Vz
IGFyY2hpdGVjdHVyZXMgaW4gdmFsaWRhdGluZyBjaGFuZ2VzIHRvIGV4aXN0aW5nCj4gcGFnZSB0
YWJsZSBoZWxwZXJzIG9yIGFkZGl0aW9uIG9mIG5ldyBvbmVzLgo+IAo+IFRoaXMgdGVzdCBjb3Zl
cnMgYmFzaWMgcGFnZSB0YWJsZSBlbnRyeSB0cmFuc2Zvcm1hdGlvbnMgaW5jbHVkaW5nIGJ1dCBu
b3QKPiBsaW1pdGVkIHRvIG9sZCwgeW91bmcsIGRpcnR5LCBjbGVhbiwgd3JpdGUsIHdyaXRlIHBy
b3RlY3QgZXRjIGF0IHZhcmlvdXMKPiBsZXZlbCBhbG9uZyB3aXRoIHBvcHVsYXRpbmcgaW50ZXJt
ZWRpYXRlIGVudHJpZXMgd2l0aCBuZXh0IHBhZ2UgdGFibGUgcGFnZQo+IGFuZCB2YWxpZGF0aW5n
IHRoZW0uCj4gCj4gVGVzdCBwYWdlIHRhYmxlIHBhZ2VzIGFyZSBhbGxvY2F0ZWQgZnJvbSBzeXN0
ZW0gbWVtb3J5IHdpdGggcmVxdWlyZWQgc2l6ZQo+IGFuZCBhbGlnbm1lbnRzLiBUaGUgbWFwcGVk
IHBmbnMgYXQgcGFnZSB0YWJsZSBsZXZlbHMgYXJlIGRlcml2ZWQgZnJvbSBhCj4gcmVhbCBwZm4g
cmVwcmVzZW50aW5nIGEgdmFsaWQga2VybmVsIHRleHQgc3ltYm9sLiBUaGlzIHRlc3QgZ2V0cyBj
YWxsZWQKPiByaWdodCBhZnRlciBwYWdlX2FsbG9jX2luaXRfbGF0ZSgpLgo+IAo+IFRoaXMgZ2V0
cyBidWlsZCBhbmQgcnVuIHdoZW4gQ09ORklHX0RFQlVHX1ZNX1BHVEFCTEUgaXMgc2VsZWN0ZWQg
YWxvbmcgd2l0aAo+IENPTkZJR19WTV9ERUJVRy4gQXJjaGl0ZWN0dXJlcyB3aWxsaW5nIHRvIHN1
YnNjcmliZSB0aGlzIHRlc3QgYWxzbyBuZWVkIHRvCj4gc2VsZWN0IENPTkZJR19BUkNIX0hBU19E
RUJVR19WTV9QR1RBQkxFIHdoaWNoIGZvciBub3cgaXMgbGltaXRlZCB0byB4ODYgYW5kCj4gYXJt
NjQuIEdvaW5nIGZvcndhcmQsIG90aGVyIGFyY2hpdGVjdHVyZXMgdG9vIGNhbiBlbmFibGUgdGhp
cyBhZnRlciBmaXhpbmcKPiBidWlsZCBvciBydW50aW1lIHByb2JsZW1zIChpZiBhbnkpIHdpdGgg
dGhlaXIgcGFnZSB0YWJsZSBoZWxwZXJzLgo+IAo+IEZvbGtzIGludGVyZXN0ZWQgaW4gbWFraW5n
IHN1cmUgdGhhdCBhIGdpdmVuIHBsYXRmb3JtJ3MgcGFnZSB0YWJsZSBoZWxwZXJzCj4gY29uZm9y
bSB0byBleHBlY3RlZCBnZW5lcmljIE1NIHNlbWFudGljcyBzaG91bGQgZW5hYmxlIHRoZSBhYm92
ZSBjb25maWcKPiB3aGljaCB3aWxsIGp1c3QgdHJpZ2dlciB0aGlzIHRlc3QgZHVyaW5nIGJvb3Qu
IEFueSBub24gY29uZm9ybWl0eSBoZXJlIHdpbGwKPiBiZSByZXBvcnRlZCBhcyBhbiB3YXJuaW5n
IHdoaWNoIHdvdWxkIG5lZWQgdG8gYmUgZml4ZWQuIFRoaXMgdGVzdCB3aWxsIGhlbHAKPiBjYXRj
aCBhbnkgY2hhbmdlcyB0byB0aGUgYWdyZWVkIHVwb24gc2VtYW50aWNzIGV4cGVjdGVkIGZyb20g
Z2VuZXJpYyBNTSBhbmQKPiBlbmFibGUgcGxhdGZvcm1zIHRvIGFjY29tbW9kYXRlIGl0IHRoZXJl
YWZ0ZXIuCj4gCgpbLi4uXQoKPiAKPiBUZXN0ZWQtYnk6IENocmlzdG9waGUgTGVyb3kgPGNocmlz
dG9waGUubGVyb3lAYy1zLmZyPgkJI1BQQzMyCgpBbHNvIHRlc3RlZCBvbiBQUEM2NCAodW5kZXIg
UUVNVSk6IGJvb2szcy82NCA2NGsgcGFnZXMsIGJvb2szcy82NCA0ayAKcGFnZXMgYW5kIGJvb2sz
ZS82NAoKPiBSZXZpZXdlZC1ieTogSW5nbyBNb2xuYXIgPG1pbmdvQGtlcm5lbC5vcmc+Cj4gU3Vn
Z2VzdGVkLWJ5OiBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPgo+IFNp
Z25lZC1vZmYtYnk6IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlvbi5vcmc+Cj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0b3BoZS5sZXJveUBjLXMuZnI+
Cj4gU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gS2hhbmR1YWwgPGFuc2h1bWFuLmtoYW5kdWFsQGFy
bS5jb20+Cj4gLS0tCgpbLi4uXQoKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9mZWF0
dXJlcy9kZWJ1Zy9kZWJ1Zy12bS1wZ3RhYmxlL2FyY2gtc3VwcG9ydC50eHQgYi9Eb2N1bWVudGF0
aW9uL2ZlYXR1cmVzL2RlYnVnL2RlYnVnLXZtLXBndGFibGUvYXJjaC1zdXBwb3J0LnR4dAo+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5mM2Y4MTExZWRiZTMKPiAt
LS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9mZWF0dXJlcy9kZWJ1Zy9kZWJ1Zy12
bS1wZ3RhYmxlL2FyY2gtc3VwcG9ydC50eHQKPiBAQCAtMCwwICsxLDM1IEBACj4gKyMKPiArIyBG
ZWF0dXJlIG5hbWU6ICAgICAgICAgIGRlYnVnLXZtLXBndGFibGUKPiArIyAgICAgICAgIEtjb25m
aWc6ICAgICAgIEFSQ0hfSEFTX0RFQlVHX1ZNX1BHVEFCTEUKPiArIyAgICAgICAgIGRlc2NyaXB0
aW9uOiAgIGFyY2ggc3VwcG9ydHMgcGd0YWJsZSB0ZXN0cyBmb3Igc2VtYW50aWNzIGNvbXBsaWFu
Y2UKPiArIwo+ICsgICAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiArICAgIHwgICAgICAgICBh
cmNoIHxzdGF0dXN8Cj4gKyAgICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICsgICAgfCAgICAg
ICBhbHBoYTogfCBUT0RPIHwKPiArICAgIHwgICAgICAgICBhcmM6IHwgIG9rICB8Cj4gKyAgICB8
ICAgICAgICAgYXJtOiB8IFRPRE8gfAo+ICsgICAgfCAgICAgICBhcm02NDogfCAgb2sgIHwKPiAr
ICAgIHwgICAgICAgICBjNng6IHwgVE9ETyB8Cj4gKyAgICB8ICAgICAgICBjc2t5OiB8IFRPRE8g
fAo+ICsgICAgfCAgICAgICBoODMwMDogfCBUT0RPIHwKPiArICAgIHwgICAgIGhleGFnb246IHwg
VE9ETyB8Cj4gKyAgICB8ICAgICAgICBpYTY0OiB8IFRPRE8gfAo+ICsgICAgfCAgICAgICAgbTY4
azogfCBUT0RPIHwKPiArICAgIHwgIG1pY3JvYmxhemU6IHwgVE9ETyB8Cj4gKyAgICB8ICAgICAg
ICBtaXBzOiB8IFRPRE8gfAo+ICsgICAgfCAgICAgICBuZHMzMjogfCBUT0RPIHwKPiArICAgIHwg
ICAgICAgbmlvczI6IHwgVE9ETyB8Cj4gKyAgICB8ICAgIG9wZW5yaXNjOiB8IFRPRE8gfAo+ICsg
ICAgfCAgICAgIHBhcmlzYzogfCBUT0RPIHwKPiArICAgIHwgIHBvd2VycGMvMzI6IHwgIG9rICB8
Cj4gKyAgICB8ICBwb3dlcnBjLzY0OiB8IFRPRE8gfAoKWW91IGNhbiBjaGFuZ2UgdGhlIHR3byBh
Ym92ZSBsaW5lcyBieQoKCXBvd2VycGM6IG9rCgo+ICsgICAgfCAgICAgICByaXNjdjogfCBUT0RP
IHwKPiArICAgIHwgICAgICAgIHMzOTA6IHwgVE9ETyB8Cj4gKyAgICB8ICAgICAgICAgIHNoOiB8
IFRPRE8gfAo+ICsgICAgfCAgICAgICBzcGFyYzogfCBUT0RPIHwKPiArICAgIHwgICAgICAgICAg
dW06IHwgVE9ETyB8Cj4gKyAgICB8ICAgdW5pY29yZTMyOiB8IFRPRE8gfAo+ICsgICAgfCAgICAg
ICAgIHg4NjogfCAgb2sgIHwKPiArICAgIHwgICAgICB4dGVuc2E6IHwgVE9ETyB8Cj4gKyAgICAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9wb3dlcnBjL0tjb25m
aWcgYi9hcmNoL3Bvd2VycGMvS2NvbmZpZwo+IGluZGV4IDFlYzM0ZTE2ZWQ2NS4uMjUzZGNhYjBi
ZWJjIDEwMDY0NAo+IC0tLSBhL2FyY2gvcG93ZXJwYy9LY29uZmlnCj4gKysrIGIvYXJjaC9wb3dl
cnBjL0tjb25maWcKPiBAQCAtMTIwLDYgKzEyMCw3IEBAIGNvbmZpZyBQUEMKPiAgIAkjCj4gICAJ
c2VsZWN0IEFSQ0hfMzJCSVRfT0ZGX1QgaWYgUFBDMzIKPiAgIAlzZWxlY3QgQVJDSF9IQVNfREVC
VUdfVklSVFVBTAo+ICsJc2VsZWN0IEFSQ0hfSEFTX0RFQlVHX1ZNX1BHVEFCTEUgaWYgUFBDMzIK
ClJlbW92ZSB0aGUgJ2lmIFBQQzMyJyBhcyB3ZSBub3cga25vdyBpdCBhbHNvIHdvcmsgb24gUFBD
NjQuCgo+ICAgCXNlbGVjdCBBUkNIX0hBU19ERVZNRU1fSVNfQUxMT1dFRAo+ICAgCXNlbGVjdCBB
UkNIX0hBU19FTEZfUkFORE9NSVpFCj4gICAJc2VsZWN0IEFSQ0hfSEFTX0ZPUlRJRllfU09VUkNF
Cgo+IGRpZmYgLS1naXQgYS9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9wZ3RhYmxlXzY0LmggYi9hcmNo
L3g4Ni9pbmNsdWRlL2FzbS9wZ3RhYmxlXzY0LmgKPiBpbmRleCAwYjZjNDA0Mjk0MmEuLmZiMGU3
NmQyNTRiMyAxMDA2NDQKPiAtLS0gYS9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9wZ3RhYmxlXzY0LmgK
PiArKysgYi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9wZ3RhYmxlXzY0LmgKPiBAQCAtNTMsNiArNTMs
MTIgQEAgc3RhdGljIGlubGluZSB2b2lkIHN5bmNfaW5pdGlhbF9wYWdlX3RhYmxlKHZvaWQpIHsg
fQo+ICAgCj4gICBzdHJ1Y3QgbW1fc3RydWN0Owo+ICAgCj4gKyNkZWZpbmUgbW1fcDRkX2ZvbGRl
ZCBtbV9wNGRfZm9sZGVkCj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBtbV9wNGRfZm9sZGVkKHN0cnVj
dCBtbV9zdHJ1Y3QgKm1tKQo+ICt7Cj4gKwlyZXR1cm4gIXBndGFibGVfbDVfZW5hYmxlZCgpOwo+
ICt9Cj4gKwoKRm9yIG1lIHRoaXMgc2hvdWxkIGJlIHBhcnQgb2YgYW5vdGhlciBwYXRjaCwgaXQg
aXMgbm90IGRpcmVjdGx5IGxpbmtlZCAKdG8gdGhlIHRlc3RzLgoKPiAgIHZvaWQgc2V0X3B0ZV92
YWRkcl9wNGQocDRkX3QgKnA0ZF9wYWdlLCB1bnNpZ25lZCBsb25nIHZhZGRyLCBwdGVfdCBuZXdf
cHRlKTsKPiAgIHZvaWQgc2V0X3B0ZV92YWRkcl9wdWQocHVkX3QgKnB1ZF9wYWdlLCB1bnNpZ25l
ZCBsb25nIHZhZGRyLCBwdGVfdCBuZXdfcHRlKTsKPiAgIAo+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L2FzbS1nZW5lcmljL3BndGFibGUuaCBiL2luY2x1ZGUvYXNtLWdlbmVyaWMvcGd0YWJsZS5oCj4g
aW5kZXggNzk4ZWEzNmEwNTQ5Li5lMGIwNDc4N2U3ODkgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9h
c20tZ2VuZXJpYy9wZ3RhYmxlLmgKPiArKysgYi9pbmNsdWRlL2FzbS1nZW5lcmljL3BndGFibGUu
aAo+IEBAIC0xMjA4LDYgKzEyMDgsMTIgQEAgc3RhdGljIGlubGluZSBib29sIGFyY2hfaGFzX3Bm
bl9tb2RpZnlfY2hlY2sodm9pZCkKPiAgICMgZGVmaW5lIFBBR0VfS0VSTkVMX0VYRUMgUEFHRV9L
RVJORUwKPiAgICNlbmRpZgo+ICAgCj4gKyNpZmRlZiBDT05GSUdfREVCVUdfVk1fUEdUQUJMRQoK
Tm90IHN1cmUgaXQgaXMgYSBnb29kIGlkZWEgdG8gcHV0IHRoYXQgaW4gaW5jbHVkZS9hc20tZ2Vu
ZXJpYy9wZ3RhYmxlLmgKCkJ5IGRvaW5nIHRoaXMgeW91IGFyZSBmb3JjaW5nIGEgcmVidWlsZCBv
ZiBhbG1vc3QgYWxsIGZpbGVzLCB3aGVyZWFzIApvbmx5IGluaXQvbWFpbi5vIGFuZCBtbS9kZWJ1
Z192bV9wZ3RhYmxlLm8gc2hvdWxkIGJlIHJlYnVpbHQgd2hlbiAKYWN0aXZhdGluZyB0aGlzIGNv
bmZpZyBvcHRpb24uCgo+ICtleHRlcm4gdm9pZCBkZWJ1Z192bV9wZ3RhYmxlKHZvaWQpOwoKUGxl
YXNlIGRvbid0IHVzZSB0aGUgJ2V4dGVybicga2V5d29yZCwgaXQgaXMgdXNlbGVzcyBhbmQgbm90
IHRvIGJlIHVzZWQgCmZvciBmdW5jdGlvbnMgZGVjbGFyYXRpb24uCgo+ICsjZWxzZQo+ICtzdGF0
aWMgaW5saW5lIHZvaWQgZGVidWdfdm1fcGd0YWJsZSh2b2lkKSB7IH0KPiArI2VuZGlmCj4gKwo+
ICAgI2VuZGlmIC8qICFfX0FTU0VNQkxZX18gKi8KPiAgIAo+ICAgI2lmbmRlZiBpb19yZW1hcF9w
Zm5fcmFuZ2UKPiBkaWZmIC0tZ2l0IGEvaW5pdC9tYWluLmMgYi9pbml0L21haW4uYwo+IGluZGV4
IGRhMWJjMGI2MGE3ZC4uNWU1OWU2YWMwNzgwIDEwMDY0NAo+IC0tLSBhL2luaXQvbWFpbi5jCj4g
KysrIGIvaW5pdC9tYWluLmMKPiBAQCAtMTE5Nyw2ICsxMTk3LDcgQEAgc3RhdGljIG5vaW5saW5l
IHZvaWQgX19pbml0IGtlcm5lbF9pbml0X2ZyZWVhYmxlKHZvaWQpCj4gICAJc2NoZWRfaW5pdF9z
bXAoKTsKPiAgIAo+ICAgCXBhZ2VfYWxsb2NfaW5pdF9sYXRlKCk7Cj4gKwlkZWJ1Z192bV9wZ3Rh
YmxlKCk7CgpXb3VsZG4ndCBpdCBiZSBiZXR0ZXIgdG8gY2FsbCBkZWJ1Z192bV9wZ3RhYmxlKCkg
aW4ga2VybmVsX2luaXQoKSAKYmV0d2VlbiB0aGUgY2FsbCB0byBhc3luY19zeW5jaHJvbmlzZV9m
dWxsKCkgYW5kIGZ0cmFjZV9mcmVlX2luaXRfbWVtKCkgPwoKPiAgIAkvKiBJbml0aWFsaXplIHBh
Z2UgZXh0IGFmdGVyIGFsbCBzdHJ1Y3QgcGFnZXMgYXJlIGluaXRpYWxpemVkLiAqLwo+ICAgCXBh
Z2VfZXh0X2luaXQoKTsKPiAgIAo+IGRpZmYgLS1naXQgYS9saWIvS2NvbmZpZy5kZWJ1ZyBiL2xp
Yi9LY29uZmlnLmRlYnVnCj4gaW5kZXggNWZmZTE0NGM5Nzk0Li43Y2NlYWU5MjNjMDUgMTAwNjQ0
Cj4gLS0tIGEvbGliL0tjb25maWcuZGVidWcKPiArKysgYi9saWIvS2NvbmZpZy5kZWJ1Zwo+IEBA
IC02NTMsNiArNjUzLDEyIEBAIGNvbmZpZyBTQ0hFRF9TVEFDS19FTkRfQ0hFQ0sKPiAgIAkgIGRh
dGEgY29ycnVwdGlvbiBvciBhIHNwb3JhZGljIGNyYXNoIGF0IGEgbGF0ZXIgc3RhZ2Ugb25jZSB0
aGUgcmVnaW9uCj4gICAJICBpcyBleGFtaW5lZC4gVGhlIHJ1bnRpbWUgb3ZlcmhlYWQgaW50cm9k
dWNlZCBpcyBtaW5pbWFsLgo+ICAgCj4gK2NvbmZpZyBBUkNIX0hBU19ERUJVR19WTV9QR1RBQkxF
Cj4gKwlib29sCj4gKwloZWxwCj4gKwkgIEFuIGFyY2hpdGVjdHVyZSBzaG91bGQgc2VsZWN0IHRo
aXMgd2hlbiBpdCBjYW4gc3VjY2Vzc2Z1bGx5Cj4gKwkgIGJ1aWxkIGFuZCBydW4gREVCVUdfVk1f
UEdUQUJMRS4KPiArCj4gICBjb25maWcgREVCVUdfVk0KPiAgIAlib29sICJEZWJ1ZyBWTSIKPiAg
IAlkZXBlbmRzIG9uIERFQlVHX0tFUk5FTAo+IEBAIC02ODgsNiArNjk0LDIyIEBAIGNvbmZpZyBE
RUJVR19WTV9QR0ZMQUdTCj4gICAKPiAgIAkgIElmIHVuc3VyZSwgc2F5IE4uCj4gICAKPiArY29u
ZmlnIERFQlVHX1ZNX1BHVEFCTEUKPiArCWJvb2wgIkRlYnVnIGFyY2ggcGFnZSB0YWJsZSBmb3Ig
c2VtYW50aWNzIGNvbXBsaWFuY2UiCj4gKwlkZXBlbmRzIG9uIE1NVQo+ICsJZGVwZW5kcyBvbiBE
RUJVR19WTQoKRG9lcyBpdCByZWFsbHkgbmVlZCB0byBkZXBlbmQgb24gREVCVUdfVk0gPwpJIHRo
aW5rIHdlIGNvdWxkIG1ha2UgaXQgc3RhbmRhbG9uZSBhbmQgJ2RlZmF1bHQgeSBpZiBERUJVR19W
TScgaW5zdGVhZC4KCj4gKwlkZXBlbmRzIG9uIEFSQ0hfSEFTX0RFQlVHX1ZNX1BHVEFCTEUKPiAr
CWRlZmF1bHQgeQo+ICsJaGVscAo+ICsJICBUaGlzIG9wdGlvbiBwcm92aWRlcyBhIGRlYnVnIG1l
dGhvZCB3aGljaCBjYW4gYmUgdXNlZCB0byB0ZXN0Cj4gKwkgIGFyY2hpdGVjdHVyZSBwYWdlIHRh
YmxlIGhlbHBlciBmdW5jdGlvbnMgb24gdmFyaW91cyBwbGF0Zm9ybXMgaW4KPiArCSAgdmVyaWZ5
aW5nIGlmIHRoZXkgY29tcGx5IHdpdGggZXhwZWN0ZWQgZ2VuZXJpYyBNTSBzZW1hbnRpY3MuIFRo
aXMKPiArCSAgd2lsbCBoZWxwIGFyY2hpdGVjdHVyZSBjb2RlIGluIG1ha2luZyBzdXJlIHRoYXQg
YW55IGNoYW5nZXMgb3IKPiArCSAgbmV3IGFkZGl0aW9ucyBvZiB0aGVzZSBoZWxwZXJzIHN0aWxs
IGNvbmZvcm0gdG8gZXhwZWN0ZWQKPiArCSAgc2VtYW50aWNzIG9mIHRoZSBnZW5lcmljIE1NLgo+
ICsKPiArCSAgSWYgdW5zdXJlLCBzYXkgTi4KPiArCgpEb2VzIGl0IG1ha2Ugc2Vuc2UgdG8gbWFr
ZSBpdCAnZGVmYXVsdCB5JyBhbmQgc2F5ICdJZiB1bnN1cmUsIHNheSBOJyA/Cgo+ICAgY29uZmln
IEFSQ0hfSEFTX0RFQlVHX1ZJUlRVQUwKPiAgIAlib29sCj4gICAKCkNocmlzdG9waGUKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
