Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A472C17EE9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 03:32:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/lnbGmhafF+8/rrH+XSsRJ7QMkPOoR0b/FZwU9WRT3Y=; b=PlkbBZzF2zledR
	hmo72H22n3lgxUY7FIR5W/JDQR0PuYA5w8iHG7YgJPY7WMwl2nYlBTbm2KI3k74kFNFthJIxb1S7j
	+klZeOAHUv3AXrb6MVGHcFEj6boVSypM4sfZYldlZYk3X7Xwzs45DxAIAbeMTxiatW02cJYSNricH
	zQECOAtiVYf+eZqlstCt3+mA7MJqWl3giibKyUJnR+uUq7t51Nplt48EecqymIIjtaaZPw1wXN+GH
	RHG3smb4ghplthLAcJ7DLf5lUysbdS02ryyFfmQyrh7/IxRmivmJSofXss+R30w2QV8x0tkJt+tzo
	C+gsZ5OORGGWzoQ+l3ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBUgm-0001UZ-A5; Tue, 10 Mar 2020 02:32:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBUgf-0001Te-5j; Tue, 10 Mar 2020 02:32:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C538730E;
 Mon,  9 Mar 2020 19:32:02 -0700 (PDT)
Received: from [10.163.1.203] (unknown [10.163.1.203])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E46843F67D;
 Mon,  9 Mar 2020 19:31:53 -0700 (PDT)
Subject: Re: [PATCH V15] mm/debug: Add tests validating architecture page
 table helpers
To: Christophe Leroy <christophe.leroy@c-s.fr>, Qian Cai <cai@lca.pw>
References: <61250cdc-f80b-2e50-5168-2ec67ec6f1e6@arm.com>
 <CEEAD95E-D468-4C58-A65B-7E8AED91168A@lca.pw>
 <a45834bc-e6f2-ac21-de9e-1aff67d12797@arm.com>
 <c40d907a-b64b-ae0d-e58f-33dddf0e8edc@c-s.fr>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <2d950d8c-4b23-741e-591f-e22e857c0755@arm.com>
Date: Tue, 10 Mar 2020 08:01:51 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <c40d907a-b64b-ae0d-e58f-33dddf0e8edc@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_193205_301046_5272BC31 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwMy8wNy8yMDIwIDEyOjM1IFBNLCBDaHJpc3RvcGhlIExlcm95IHdyb3RlOgo+IAo+IAo+
IExlIDA3LzAzLzIwMjAgw6AgMDE6NTYsIEFuc2h1bWFuIEtoYW5kdWFsIGEgw6ljcml0wqA6Cj4+
Cj4+Cj4+IE9uIDAzLzA3LzIwMjAgMDY6MDQgQU0sIFFpYW4gQ2FpIHdyb3RlOgo+Pj4KPj4+Cj4+
Pj4gT24gTWFyIDYsIDIwMjAsIGF0IDc6MDMgUE0sIEFuc2h1bWFuIEtoYW5kdWFsIDxBbnNodW1h
bi5LaGFuZHVhbEBhcm0uY29tPiB3cm90ZToKPj4+Pgo+Pj4+IEhtbSwgc2V0X3B0ZV9hdCgpIGZ1
bmN0aW9uIGlzIG5vdCBwcmVmZXJyZWQgaGVyZSBmb3IgdGhlc2UgdGVzdHMuIFRoZSBpZGVhCj4+
Pj4gaXMgdG8gYXZvaWQgb3IgYXRsZWFzdCBtaW5pbWl6ZSBUTEIvY2FjaGUgZmx1c2hlcyB0cmln
Z2VyZWQgZnJvbSB0aGVzZSBzb3J0Cj4+Pj4gb2YgJ3N0YXRpYycgdGVzdHMuIHNldF9wdGVfYXQo
KSBpcyBwbGF0Zm9ybSBwcm92aWRlZCBhbmQgY291bGQvbWlnaHQgdHJpZ2dlcgo+Pj4+IHRoZXNl
IGZsdXNoZXMgb3Igc29tZSBvdGhlciBwbGF0Zm9ybSBzcGVjaWZpYyBzeW5jaHJvbml6YXRpb24g
c3R1ZmYuIEp1c3QKPj4+Cj4+PiBXaHkgaXMgdGhhdCBpbXBvcnRhbnQgZm9yIHRoaXMgZGVidWdn
aW5nIG9wdGlvbj8KPj4KPj4gUHJpbWFyaWx5IHJlYXNvbiBpcyB0byBhdm9pZCBUTEIvY2FjaGUg
Zmx1c2ggaW5zdHJ1Y3Rpb25zIG9uIHRoZSBzeXN0ZW0KPj4gZHVyaW5nIHRoZXNlIHRlc3RzIHRo
YXQgb25seSBpbnZvbHZlIHRyYW5zZm9ybWluZyBkaWZmZXJlbnQgcGFnZSB0YWJsZQo+PiBsZXZl
bCBlbnRyaWVzIHRocm91Z2ggaGVscGVycy4gVW5sZXNzIHJlYWxseSBuZWNlc3NhcnksIHdoeSBz
aG91bGQgaXQKPj4gZW1pdCBhbnkgVExCL2NhY2hlIGZsdXNoIGluc3RydWN0aW9ucyA/Cj4gCj4g
V2hhdCdzIHRoZSBwcm9ibGVtIHdpdGggdGhvc2VzIGZsdXNoZXMgPwo+IAo+Pgo+Pj4KPj4+PiB3
b25kZXJpbmcgaXMgdGhlcmUgc3BlY2lmaWMgcmVhc29uIHdpdGggcmVzcGVjdCB0byB0aGUgc29m
dCBsb2NrIHVwIHByb2JsZW0KPj4+PiBtYWtpbmcgaXQgbmVjZXNzYXJ5IHRvIHVzZSBzZXRfcHRl
X2F0KCkgcmF0aGVyIHRoYW4gYSBzaW1wbGUgV1JJVEVfT05DRSgpID8KPj4+Cj4+PiBMb29rcyBh
dCB0aGUgczM5MCB2ZXJzaW9uIG9mIHNldF9wdGVfYXQoKSwgaXQgaGFzIHRoaXMgY29tbWVudCwK
Pj4+IHZtYWRkcik7Cj4+Pgo+Pj4gLyoKPj4+IMKgICogQ2VydGFpbiBhcmNoaXRlY3R1cmVzIG5l
ZWQgdG8gZG8gc3BlY2lhbCB0aGluZ3Mgd2hlbiBQVEVzCj4+PiDCoCAqIHdpdGhpbiBhIHBhZ2Ug
dGFibGUgYXJlIGRpcmVjdGx5IG1vZGlmaWVkLsKgIFRodXMsIHRoZSBmb2xsb3dpbmcKPj4+IMKg
ICogaG9vayBpcyBtYWRlIGF2YWlsYWJsZS4KPj4+IMKgICovCj4+Pgo+Pj4gSSBjYW4gb25seSBn
dWVzcyB0aGF0IHBvd2VycGPCoCBjb3VsZCBiZSB0aGUgc2FtZSBoZXJlLgo+Pgo+PiBUaGlzIGNv
bW1lbnQgaXMgcHJlc2VudCBpbiBtdWx0aXBsZSBwbGF0Zm9ybXMgd2hpbGUgZGVmaW5pbmcgc2V0
X3B0ZV9hdCgpLgo+PiBJcyBub3QgJ2JhcnJpZXIoKScgaGVyZSBhbG9uZSBnb29kIGVub3VnaCA/
IEVsc2Ugd2hhdCBleGFjdGx5IHNldF9wdGVfYXQoKQo+PiBkb2VzIGFzIGNvbXBhcmVkIHRvIFdS
SVRFX09OQ0UoKSB0aGF0IGF2b2lkcyB0aGUgc29mdCBsb2NrIHVwLCBqdXN0IHRyeWluZwo+PiB0
byB1bmRlcnN0YW5kLgo+Pgo+IAo+IAo+IEFyZ2ggISBJIGRpZG4ndCByZWFsaXNlIHRoYXQgeW91
IHdlcmUgd3JpdGluZyBkaXJlY3RseSBpbnRvIHRoZSBwYWdlIHRhYmxlcy4gV2hlbiBpdCB3b3Jr
cywgdGhhdCdzIG9ubHkgYnkgY2hhbmNlIEkgZ3Vlc3MuCj4gCj4gVG8gcHJvcGVybHkgc2V0IHRo
ZSBwYWdlIHRhYmxlIGVudHJpZXMsIHNldF9wdGVfYXQoKSBoYXMgdG8gYmUgdXNlZDoKPiAtIE9u
IHBvd2VycGMgOHh4LCB3aXRoIDE2ayBwYWdlcywgdGhlIHBhZ2UgdGFibGUgZW50cnkgbXVzdCBi
ZSBjb3BpZWQgZm91ciB0aW1lcy4gc2V0X3B0ZV9hdCgpIGRvZXMgaXQsIFdSSVRFX09OQ0UoKSBk
b2Vzbid0Lgo+IC0gT24gcG93ZXJwYyBib29rM3MvMzIgKGhhc2ggTU1VKSwgdGhlIGZsYWcgX1BB
R0VfSEFTSFBURSBtdXN0IGJlIHByZXNlcnZlZCBhbW9uZyB3cml0ZXMuIHNldF9wdGVfYXQoKSBw
cmVzZXJ2ZXMgaXQsIFdSSVRFX09OQ0UoKSBkb2Vzbid0Lgo+IAo+IHNldF9wdGVfYXQoKSBhbHNv
IGRvZXMgYSBmZXcgb3RoZXIgbWFuZGF0b3J5IHRoaW5ncywgbGlrZSBjYWxsaW5nIHB0ZV9ta3B0
ZSgpCj4gCj4gU28sIHRoZSBXUklURV9PTkNFKCkgbXVzdCBkZWZpbml0ZWx5IGJlY29tZSBhIHNl
dF9wdGVfYXQoKQoKU3VyZSwgd2lsbCBkby4gVGhlc2UgYXJlIHBhcnQgb2YgdGhlIGNsZWFyIHRl
c3RzIHRoYXQgcG9wdWxhdGVzIGEgZ2l2ZW4KZW50cnkgd2l0aCBhIG5vbiB6ZXJvIHZhbHVlIGJl
Zm9yZSBjbGVhcmluZyBhbmQgdGVzdGluZyBpdCB3aXRoIHB4eF9ub25lKCkuCkluIHRoYXQgY29u
dGV4dCwgV1JJVEVfT05DRSgpIHNlZW1lZCBzdWZmaWNpZW50LiBCdXQgcHRlX2NsZWFyKCkgbWln
aHQgYmUKY2xvc2VseSB0aWVkIHdpdGggcHJvcGVyIHBhZ2UgdGFibGUgZW50cnkgdXBkYXRlIGFu
ZCBoZW5jZSBhIHByZWNlZGluZwpzZXRfcHRlX2F0KCkgd2lsbCBiZSBiZXR0ZXIuCgpUaGVyZSBh
cmUgc3RpbGwgbW9yZSBXUklURV9PTkNFKCkgZm9yIG90aGVyIHBhZ2UgdGFibGUgbGV2ZWxzIGR1
cmluZyB0aGVzZQpjbGVhciB0ZXN0cy4gc2V0X3BtZF9hdCgpIGFuZCBzZXRfcHVkX2F0KCkgYXJl
IGRlZmluZWQgb24gcGxhdGZvcm1zIHRoYXQKc3VwcG9ydCAoYW5kIGVuYWJsZSkgVEhQIGFuZCBQ
VUQgYmFzZWQgVEhQIHJlc3BlY3RpdmVseS4gSGVuY2UgdGhleSBjb3VsZApub3QgYmUgdXNlZCBm
b3IgY2xlYXIgdGVzdHMgYXMgcmVtYWluaW5nIGhlbHBlcnMgcG1kX2NsZWFyKCksIHB1ZF9jbGVh
cigpLApwNGRfY2xlYXIoKSBhbmQgcGdkX2NsZWFyKCkgc3RpbGwgbmVlZCB0byBiZSB2YWxpZGF0
ZWQgd2l0aCBvciB3aXRob3V0ClRIUCBzdXBwb3J0IGFuZCBlbmFibGVtZW50LiBXZSBzaG91bGQg
anVzdCBsZWF2ZSBhbGwgb3RoZXIgV1JJVEVfT05DRSgpCmluc3RhbmNlcyB1bmNoYW5nZWQuIFBs
ZWFzZSBjb3JyZWN0IG1lIGlmIEkgYW0gbWlzc2luZyBzb21ldGhpbmcgaGVyZS4KCj4gCj4gQ2hy
aXN0b3BoZQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
