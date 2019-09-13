Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E44CB19C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 10:43:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f89Mlot6ciHUq6+E+uL8GyeatZc9Kjgi6D6MW1wM5Lc=; b=Ry2wqUwklWquc1
	wELyexF4N/q6GJoHOVYdpiI4Il7QCVYBCYmTzmlJNw/y2Z0oVvWeejO2o+zWUzBnxstqbhuexggTE
	ZHeSgW3HrPWPk2JXbzXlTJtQGIfH+nL6EtGihLwxcTyMxJOxT1vBc0Fldpcj9a80ocZ+zobgpcRoH
	Fc/1omLtRvqCxb3D/HMjKtNTXYsv1uZYk1gE4Ho2N9uvgXbeZvsAZyXEc+wn0KfH666oydtsMCASD
	h2pEUlAObNrhMfs29DUh3lI05wCttiLn5SLA9KoRfngfy/lPvtuerJ7fY9GBOAYwm1VJi6x6OlsVo
	m4yO426znmtNinozZIiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8hAe-0000YS-76; Fri, 13 Sep 2019 08:43:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8hAG-0000XN-O7; Fri, 13 Sep 2019 08:42:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D181628;
 Fri, 13 Sep 2019 01:42:44 -0700 (PDT)
Received: from [10.162.41.125] (p8cg001049571a15.blr.arm.com [10.162.41.125])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 A21F43F59C; Fri, 13 Sep 2019 01:42:34 -0700 (PDT)
Subject: Re: [PATCH] mm/pgtable/debug: Fix test validating architecture page
 table helpers
To: Christophe Leroy <christophe.leroy@c-s.fr>, linux-mm@kvack.org
References: <1892b37d1fd9a4ed39e76c4b999b6556077201c0.1568355752.git.christophe.leroy@c-s.fr>
 <527dd29d-45fa-4d83-1899-6cbf268dd749@arm.com>
 <e2b42446-7f91-83f1-ac12-08dff75c4d35@c-s.fr>
 <cb226b56-ff20-3136-7ffb-890657e56870@c-s.fr>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <bdf7f152-d093-1691-4e96-77da7eb9e20a@arm.com>
Date: Fri, 13 Sep 2019 14:12:45 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <cb226b56-ff20-3136-7ffb-890657e56870@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_014249_054121_28D514A5 
X-CRM114-Status: GOOD (  18.33  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 linux-arm-kernel@lists.infradead.org,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-mips@vger.kernel.org,
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

CgpPbiAwOS8xMy8yMDE5IDEyOjQxIFBNLCBDaHJpc3RvcGhlIExlcm95IHdyb3RlOgo+IAo+IAo+
IExlIDEzLzA5LzIwMTkgw6AgMDk6MDMsIENocmlzdG9waGUgTGVyb3kgYSDDqWNyaXTCoDoKPj4K
Pj4KPj4gTGUgMTMvMDkvMjAxOSDDoCAwODo1OCwgQW5zaHVtYW4gS2hhbmR1YWwgYSDDqWNyaXTC
oDoKPj4+IE9uIDA5LzEzLzIwMTkgMTE6NTMgQU0sIENocmlzdG9waGUgTGVyb3kgd3JvdGU6Cj4+
Pj4gRml4IGJ1aWxkIGZhaWx1cmUgb24gcG93ZXJwYy4KPj4+Pgo+Pj4+IEZpeCBwcmVlbXB0aW9u
IGltYmFsYW5jZS4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waGUgTGVyb3kgPGNo
cmlzdG9waGUubGVyb3lAYy1zLmZyPgo+Pj4+IC0tLQo+Pj4+IMKgIG1tL2FyY2hfcGd0YWJsZV90
ZXN0LmMgfCAzICsrKwo+Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPj4+
Pgo+Pj4+IGRpZmYgLS1naXQgYS9tbS9hcmNoX3BndGFibGVfdGVzdC5jIGIvbW0vYXJjaF9wZ3Rh
YmxlX3Rlc3QuYwo+Pj4+IGluZGV4IDhiNGE5Mjc1NmFkOC4uZjJiM2M5ZWMzNWZhIDEwMDY0NAo+
Pj4+IC0tLSBhL21tL2FyY2hfcGd0YWJsZV90ZXN0LmMKPj4+PiArKysgYi9tbS9hcmNoX3BndGFi
bGVfdGVzdC5jCj4+Pj4gQEAgLTI0LDYgKzI0LDcgQEAKPj4+PiDCoCAjaW5jbHVkZSA8bGludXgv
c3dhcC5oPgo+Pj4+IMKgICNpbmNsdWRlIDxsaW51eC9zd2Fwb3BzLmg+Cj4+Pj4gwqAgI2luY2x1
ZGUgPGxpbnV4L3NjaGVkL21tLmg+Cj4+Pj4gKyNpbmNsdWRlIDxsaW51eC9oaWdobWVtLmg+Cj4+
Pgo+Pj4gVGhpcyBpcyBva2F5Lgo+Pj4KPj4+PiDCoCAjaW5jbHVkZSA8YXNtL3BnYWxsb2MuaD4K
Pj4+PiDCoCAjaW5jbHVkZSA8YXNtL3BndGFibGUuaD4KPj4+PiBAQCAtNDAwLDYgKzQwMSw4IEBA
IHN0YXRpYyBpbnQgX19pbml0IGFyY2hfcGd0YWJsZV90ZXN0c19pbml0KHZvaWQpCj4+Pj4gwqDC
oMKgwqDCoCBwNGRfY2xlYXJfdGVzdHMocDRkcCk7Cj4+Pj4gwqDCoMKgwqDCoCBwZ2RfY2xlYXJf
dGVzdHMobW0sIHBnZHApOwo+Pj4+ICvCoMKgwqAgcHRlX3VubWFwKHB0ZXApOwo+Pj4+ICsKPj4+
Cj4+PiBOb3cgdGhlIHByZWVtcHRpb24gaW1iYWxhbmNlIHZpYSBwdGVfYWxsb2NfbWFwKCkgcGF0
aCBpLmUKPj4+Cj4+PiBwdGVfYWxsb2NfbWFwKCkgLT4gcHRlX29mZnNldF9tYXAoKSAtPiBrbWFw
X2F0b21pYygpCj4+Pgo+Pj4gSXMgbm90IHRoaXMgdmVyeSBtdWNoIHBvd2VycGMgMzIgc3BlY2lm
aWMgb3IgdGhpcyB3aWxsIGJlIGFwcGxpY2FibGUKPj4+IGZvciBhbGwgcGxhdGZvcm0gd2hpY2gg
dXNlcyBrbWFwX1hYWCgpIHRvIG1hcCBoaWdoIG1lbW9yeSA/Cj4+Pgo+Pgo+PiBTZWUgaHR0cHM6
Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuMy1yYzgvc291cmNlL2luY2x1ZGUvbGludXgv
aGlnaG1lbS5oI0w5MQo+Pgo+PiBJIHRoaW5rIGl0IGFwcGxpZXMgYXQgbGVhc3QgdG8gYWxsIGFy
Y2hlcyB1c2luZyB0aGUgZ2VuZXJpYyBpbXBsZW1lbnRhdGlvbi4KPj4KPj4gQXBwbGllcyBhbHNv
IHRvIGFybToKPj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuMy1yYzgvc291
cmNlL2FyY2gvYXJtL21tL2hpZ2htZW0uYyNMNTIKPj4KPj4gQXBwbGllcyBhbHNvIHRvIG1pcHM6
Cj4+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjMtcmM4L3NvdXJjZS9hcmNo
L21pcHMvbW0vaGlnaG1lbS5jI0w0Nwo+Pgo+PiBTYW1lIG9uIHNwYXJjOgo+PiBodHRwczovL2Vs
aXhpci5ib290bGluLmNvbS9saW51eC92NS4zLXJjOC9zb3VyY2UvYXJjaC9zcGFyYy9tbS9oaWdo
bWVtLmMjTDUyCj4+Cj4+IFNhbWUgb24geDg2Ogo+PiBodHRwczovL2VsaXhpci5ib290bGluLmNv
bS9saW51eC92NS4zLXJjOC9zb3VyY2UvYXJjaC94ODYvbW0vaGlnaG1lbV8zMi5jI0wzNAo+Pgo+
PiBJIGhhdmUgbm90IGNoZWNrZWQgb3RoZXJzLCBidXQgSSBndWVzcyBpdCBpcyBsaWtlIHRoYXQg
Zm9yIGFsbC4KPj4KPiAKPiAKPiBTZWVtcyBsaWtlIEkgYW5zd2VyZWQgdG9vIHF1aWNrbHkuIEFs
bCBrbWFwX2F0b21pYygpIGRvIHByZWVtcHRfZGlzYWJsZSgpLCBidXQgbm90IGFsbCBwdGVfYWxs
b2NfbWFwKCkgY2FsbCBrbWFwX2F0b21pYygpLgo+IAo+IEhvd2V2ZXIsIGZvciBpbnN0YW5jZSBB
Uk0gZG9lczoKPiAKPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS4zLXJjOC9z
b3VyY2UvYXJjaC9hcm0vaW5jbHVkZS9hc20vcGd0YWJsZS5oI0wyMDAKPiAKPiBBbmQgWDg2IGFz
IHdlbGw6Cj4gCj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuMy1yYzgvc291
cmNlL2FyY2gveDg2L2luY2x1ZGUvYXNtL3BndGFibGVfMzIuaCNMNTEKPiAKPiBNaWNyb2JsYXpl
IGFsc286Cj4gCj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuMy1yYzgvc291
cmNlL2FyY2gvbWljcm9ibGF6ZS9pbmNsdWRlL2FzbS9wZ3RhYmxlLmgjTDQ5NQoKQWxsIHRoZSBh
Ym92ZSBwbGF0Zm9ybXMgY2hlY2tzIG91dCB0byBiZSB1c2luZyBrW3VuXW1hcF9hdG9taWMoKS4g
SSBhbSB3b25kZXJpbmcgd2hldGhlcgphbnkgb2YgdGhlIGludGVybWVkaWF0ZSBsZXZlbHMgd2ls
bCBoYXZlIHNpbWlsYXIgcHJvYmxlbXMgb24gYW55IHRoZXNlIDMyIGJpdCBwbGF0Zm9ybXMKb3Ig
YW55IG90aGVyIHBsYXRmb3JtcyB3aGljaCBtaWdodCBiZSB1c2luZyBnZW5lcmljIGtbdW5dbWFw
X2F0b21pYygpLiBUaGVyZSBjYW4gYmUgbWFueQpwZXJtdXRhdGlvbnMgaGVyZS4KCglwNGRwID0g
cDRkX2FsbG9jKG1tLCBwZ2RwLCB2YWRkcik7CglwdWRwID0gcHVkX2FsbG9jKG1tLCBwNGRwLCB2
YWRkcik7CglwbWRwID0gcG1kX2FsbG9jKG1tLCBwdWRwLCB2YWRkcik7CgpPdGhlcndpc2UgcHRl
X2FsbG9jX21hcCgpL3B0ZV91bm1hcCgpIGxvb2tzIGdvb2QgZW5vdWdoIHdoaWNoIHdpbGwgYXRs
ZWFzdCB0YWtlIGNhcmUgb2YKYSBrbm93biBmYWlsdXJlLgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
