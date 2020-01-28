Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F02914AE4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 04:06:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DTgqVwFOX/o4wG8FOVBYAHaLAvRrYbj/5d+zD12+9ok=; b=Dp1UuBcfHpyYHj
	g2KN0B1mjn7v3PE0kjviCQHP9NejiVALZoCtBwAswFZG0mnNWf4eqtA7012oNNoRJltD1DzF+OKfQ
	2ddIeeUeFj7yvmr55jPUNu4F1HZ6GEPd7neSMj1WtsnryY01VJiJGkof/NtKnCD4vtspaFG2W0RwV
	V/Mk9ePCSZy2aqDPhFP4jT+omL20+ZqT8OpK6PM8u02X5IxEuzMh6z1bxRbVHGLhL7SbMFP7+MLAh
	H5REW2MEEgUbOdPLHbMdeDihK6b9KZRRuK0lbMEzYWTyZ5+qGwrAZT021lG6qHwA4QtFcj8yl/amb
	BKR6eTu/EUitcnyuLpKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwHD2-0001Cw-7m; Tue, 28 Jan 2020 03:06:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwHCr-0001Am-IX; Tue, 28 Jan 2020 03:06:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DEA3A30E;
 Mon, 27 Jan 2020 19:06:21 -0800 (PST)
Received: from [10.163.1.151] (unknown [10.163.1.151])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3A0623F68E;
 Mon, 27 Jan 2020 19:06:06 -0800 (PST)
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
To: Qian Cai <cai@lca.pw>
References: <1580174873-18117-1-git-send-email-anshuman.khandual@arm.com>
 <14882A91-17DE-4ABD-ABF2-08E7CCEDF660@lca.pw>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <214c0d53-eb34-9b0c-2e4e-1aa005146331@arm.com>
Date: Tue, 28 Jan 2020 08:36:03 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <14882A91-17DE-4ABD-ABF2-08E7CCEDF660@lca.pw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_190625_701751_85EBF69B 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, linux-ia64@vger.kernel.org,
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
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Ingo Molnar <mingo@kernel.org>, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
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

CgpPbiAwMS8yOC8yMDIwIDA3OjQxIEFNLCBRaWFuIENhaSB3cm90ZToKPiAKPiAKPj4gT24gSmFu
IDI3LCAyMDIwLCBhdCA4OjI4IFBNLCBBbnNodW1hbiBLaGFuZHVhbCA8QW5zaHVtYW4uS2hhbmR1
YWxAYXJtLmNvbT4gd3JvdGU6Cj4+Cj4+IFRoaXMgYWRkcyB0ZXN0cyB3aGljaCB3aWxsIHZhbGlk
YXRlIGFyY2hpdGVjdHVyZSBwYWdlIHRhYmxlIGhlbHBlcnMgYW5kCj4+IG90aGVyIGFjY2Vzc29y
cyBpbiB0aGVpciBjb21wbGlhbmNlIHdpdGggZXhwZWN0ZWQgZ2VuZXJpYyBNTSBzZW1hbnRpY3Mu
Cj4+IFRoaXMgd2lsbCBoZWxwIHZhcmlvdXMgYXJjaGl0ZWN0dXJlcyBpbiB2YWxpZGF0aW5nIGNo
YW5nZXMgdG8gZXhpc3RpbmcKPj4gcGFnZSB0YWJsZSBoZWxwZXJzIG9yIGFkZGl0aW9uIG9mIG5l
dyBvbmVzLgo+Pgo+PiBUaGlzIHRlc3QgY292ZXJzIGJhc2ljIHBhZ2UgdGFibGUgZW50cnkgdHJh
bnNmb3JtYXRpb25zIGluY2x1ZGluZyBidXQgbm90Cj4+IGxpbWl0ZWQgdG8gb2xkLCB5b3VuZywg
ZGlydHksIGNsZWFuLCB3cml0ZSwgd3JpdGUgcHJvdGVjdCBldGMgYXQgdmFyaW91cwo+PiBsZXZl
bCBhbG9uZyB3aXRoIHBvcHVsYXRpbmcgaW50ZXJtZWRpYXRlIGVudHJpZXMgd2l0aCBuZXh0IHBh
Z2UgdGFibGUgcGFnZQo+PiBhbmQgdmFsaWRhdGluZyB0aGVtLgo+Pgo+PiBUZXN0IHBhZ2UgdGFi
bGUgcGFnZXMgYXJlIGFsbG9jYXRlZCBmcm9tIHN5c3RlbSBtZW1vcnkgd2l0aCByZXF1aXJlZCBz
aXplCj4+IGFuZCBhbGlnbm1lbnRzLiBUaGUgbWFwcGVkIHBmbnMgYXQgcGFnZSB0YWJsZSBsZXZl
bHMgYXJlIGRlcml2ZWQgZnJvbSBhCj4+IHJlYWwgcGZuIHJlcHJlc2VudGluZyBhIHZhbGlkIGtl
cm5lbCB0ZXh0IHN5bWJvbC4gVGhpcyB0ZXN0IGdldHMgY2FsbGVkCj4+IHJpZ2h0IGFmdGVyIHBh
Z2VfYWxsb2NfaW5pdF9sYXRlKCkuCj4+Cj4+IFRoaXMgZ2V0cyBidWlsZCBhbmQgcnVuIHdoZW4g
Q09ORklHX0RFQlVHX1ZNX1BHVEFCTEUgaXMgc2VsZWN0ZWQgYWxvbmcgd2l0aAo+PiBDT05GSUdf
Vk1fREVCVUcuIEFyY2hpdGVjdHVyZXMgd2lsbGluZyB0byBzdWJzY3JpYmUgdGhpcyB0ZXN0IGFs
c28gbmVlZCB0bwo+PiBzZWxlY3QgQ09ORklHX0FSQ0hfSEFTX0RFQlVHX1ZNX1BHVEFCTEUgd2hp
Y2ggZm9yIG5vdyBpcyBsaW1pdGVkIHRvIHg4NiBhbmQKPj4gYXJtNjQuIEdvaW5nIGZvcndhcmQs
IG90aGVyIGFyY2hpdGVjdHVyZXMgdG9vIGNhbiBlbmFibGUgdGhpcyBhZnRlciBmaXhpbmcKPj4g
YnVpbGQgb3IgcnVudGltZSBwcm9ibGVtcyAoaWYgYW55KSB3aXRoIHRoZWlyIHBhZ2UgdGFibGUg
aGVscGVycy4KCkhlbGxvIFFpYW4sCgo+IAo+IFdoYXTigJlzIHRoZSB2YWx1ZSBvZiB0aGlzIGJs
b2NrIG9mIG5ldyBjb2RlPyBJdCBvbmx5IHN1cHBvcnRzIHg4NiBhbmQgYXJtNjQKPiB3aGljaCBh
cmUgc3VwcG9zZWQgdG8gYmUgZ29vZCBub3cuCgpXZSBoYXZlIGJlZW4gb3ZlciB0aGUgdXNlZnVs
bmVzcyBvZiB0aGlzIGNvZGUgbWFueSB0aW1lcyBiZWZvcmUgYXMgdGhlIHBhdGNoIGlzCmFscmVh
ZHkgaW4gaXQncyBWMTIuIEN1cnJlbnRseSBpdCBpcyBlbmFibGVkIG9uIGFybTY0LCB4ODYgKGV4
Y2VwdCBQQUUpLCBhcmMgYW5kCnBwYzMyLiBUaGVyZSBhcmUgYnVpbGQgdGltZSBvciBydW50aW1l
IHByb2JsZW1zIHdpdGggb3RoZXIgYXJjaHMgd2hpY2ggcHJldmVudAplbmFibGVtZW50IG9mIHRo
aXMgdGVzdCAoZm9yIHRoZSBtb21lbnQpIGJ1dCB0aGVuIHRoZSBnb2FsIGlzIHRvIGludGVncmF0
ZSBhbGwKb2YgdGhlbSBnb2luZyBmb3J3YXJkLiBUaGUgdGVzdCBub3Qgb25seSB2YWxpZGF0ZXMg
cGxhdGZvcm0ncyBhZGhlcmVuY2UgdG8gdGhlCmV4cGVjdGVkIHNlbWFudGljcyBmcm9tIGdlbmVy
aWMgTU0gYnV0IGFsc28gaGVscHMgaW4ga2VlcGluZyBpdCB0aGF0IHdheSBkdXJpbmcKY29kZSBj
aGFuZ2VzIGluIGZ1dHVyZSBhcyB3ZWxsLgoKPiBEaWQgdGhvc2UgdGVzdHMgZXZlciBmaW5kIGFu
eSByZWdyZXNzaW9uIG9yIHRoaXMgaXMgYWxtb3N0IG9ubHkgdXNlZnVsIGZvciBuZXcKClRoZSB0
ZXN0IGhhcyBhbHJlYWR5IGZvdW5kIHByb2JsZW1zIHdpdGggczM5MCBwYWdlIHRhYmxlIGhlbHBl
cnMuCgo+IGFyY2hpdGVjdHVyZXMgd2hpY2ggb25seSBoYXBwZW5lZCBvbmNlIGluIGEgZmV3IHll
YXJzPwoKQWdhaW4sIG5vdCBvbmx5IGl0IHZhbGlkYXRlcyB3aGF0IGV4aXN0IHRvZGF5IGJ1dCBp
dHMgYWxzbyBhIHRvb2wgdG8gbWFrZQpzdXJlIHRoYXQgYWxsIHBsYXRmb3JtcyBjb250aW51ZSBh
ZGhlcmUgdG8gYSBjb21tb24gYWdyZWVkIHVwb24gc2VtYW50aWNzCmFzIHJlZmxlY3RlZCB0aHJv
dWdoIHRoZSB0ZXN0cyBoZXJlLgoKPiBUaGUgd29ycnkgaWYgbm90IG1hbnkgcGVvcGxlIHdpbGwg
dXNlIHRoaXMgY29uZmlnIGFuZCBjb2RlIHRob3NlIHRoYXQgbXVjaCBpbgoKRGVidWcgZmVhdHVy
ZXMgb3IgdGVzdHMgaW4gdGhlIGtlcm5lbCBhcmUgdXNlZCB3aGVuIHJlcXVpcmVkLiBUaGVzZSBh
cmUgbmV2ZXIgb3IKc2hvdWxkIG5vdCBiZSBlbmFibGVkIGJ5IGRlZmF1bHQuIEFGQUlDVCB0aGlz
IGlzIHRydWUgZXZlbiBmb3IgZW50aXJlIERFQlVHX1ZNCnBhY2thZ2VkIHRlc3RzLiBEbyB5b3Ug
aGF2ZSBhbnkgcGFydGljdWxhciBkYXRhIG9yIHByZWNlZGVuY2UgdG8gc3Vic3RhbnRpYXRlCnRo
ZSBmYWN0IHRoYXQgdGhpcyB0ZXN0IHdpbGwgYmUgdXNlZCBhbnkgbGVzcyBvZnRlbiB0aGFuIHRo
ZSBvdGhlciBzaW1pbGFyIG9uZXMKaW4gdGhlIHRyZWUgPyBJIGNhbiBvbmx5IHNwZWFrIGZvciBh
cm02NCBwbGF0Zm9ybSBidXQgdGhlIHZlcnkgaWRlYSBmb3IgdGhpcwp0ZXN0IGNhbWUgZnJvbSBD
YXRhbGluIHdoZW4gd2Ugd2VyZSB0cnlpbmcgdG8gdW5kZXJzdGFuZCB0aGUgc2VtYW50aWNzIGZv
ciBUSFAKaGVscGVycyB3aGlsZSBlbmFibGluZyBUSFAgbWlncmF0aW9uIHdpdGhvdXQgc3BsaXQu
IEFwYXJ0IGZyb20gZ29pbmcgb3ZlciB0aGUKY29tbWl0IG1lc3NhZ2VzIGZyb20gdGhlIHBhc3Qs
IHRoZXJlIHdlcmUgbm8gb3RoZXIgd2F5IHRvIGZpZ3VyZSBvdXQgaG93IGFueQpwYXJ0aWN1bGFy
IHBhZ2UgdGFibGUgaGVscGVyIGlzIHN1cHBvc2UgdG8gY2hhbmdlIGdpdmVuIHBhZ2UgdGFibGUg
ZW50cnkuIFRoaXMKdGVzdCB0cmllcyB0byBmb3JtYWxpemUgdGhvc2Ugc2VtYW50aWNzLgoKPiB0
aGUgZnV0dXJlIGJlY2F1c2UgaXQgaXMgaW5lZmZpY2llbnQgdG8gZmluZCBidWdzLCBpdCB3aWxs
IHNpbXBseSBiZSByb3R0ZW4KQ291bGQgeW91IGJlIG1vcmUgc3BlY2lmaWMgaGVyZSA/IFdoYXQg
cGFydHMgb2YgdGhlIHRlc3QgYXJlIGluZWZmaWNpZW50ID8gSQphbSBoYXBweSB0byBpbXByb3Zl
IHVwb24gdGhlIHRlc3QuIERvIGxldCBtZSBrbm93IHlvdSBpZiB5b3UgaGF2ZSBzdWdnZXN0aW9u
cy4KCj4gbGlrZSBhIGZldyBvdGhlciBkZWJ1Z2dpbmcgb3B0aW9ucyBvdXQgdGhlcmUgd2UgaGF2
ZSBpbiB0aGUgbWFpbmxpbmUgdGhhdAp3aWxsIGJlIGEgcGFpbiB0byByZW1vdmUgbGF0ZXIgb24u
Cj4KCkV2ZW4gdGhvdWdoIEkgYW0gbm90IGFncmVlaW5nIHRvIHlvdXIgYXNzZXNzbWVudCBhYm91
dCB0aGUgdXNlZnVsbmVzcyBvZiB0aGUKdGVzdCB3aXRob3V0IGFueSBzdWJzdGFudGlhbCBkYXRh
IGJhY2tpbmcgdXAgdGhlIGNsYWltcywgdGhlIHRlc3QgY2FzZSBpbgppdHNlbGYgaXMgdmVyeSBt
dWNoIGNvbXBhcnRtZW50YWxpemVkLCBzdGF5aW5nIGNsZWFyIGZyb20gZ2VuZXJpYyBNTSBhbmQK
ZGVidWdfdm1fcGd0YWJsZSgpIGlzIG9ubHkgZnVuY3Rpb24gZXhlY3V0aW5nIHRoZSB0ZXN0IHdo
aWNoIGlzIGdldHRpbmcKY2FsbGVkIGZyb20ga2VybmVsX2luaXRfZnJlZWFibGUoKSBwYXRoLgoK
LSBBbnNodW1hbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
