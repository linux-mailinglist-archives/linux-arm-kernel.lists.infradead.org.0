Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1792414BEE3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 18:47:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zDbcsRP8UfiPwnSCQEfFrsvoNrKMJEQQPGY8hEATFmc=; b=f8TTtdCbDMUEfn
	h0wwuN0iq7zT2azqS9LilJDfxIj9BXk6dF6+RQH1ZmBR/i30V1RcjOANtMD848L6MzkczO+K3E6By
	46mFJLm9mNM5E4YLDtKvgCA/H8uhG3nqZiF8faTc9U4+6QPzOqqm9Pwg4Fgnw0C0fzJmyWzYY7hQU
	676ytic8jFDJjJTLGZaDA6lAbphVPop0k03hGRqgXe61mJs2aUA6r1+GEDXRpNbZ7V8MXDUodtVXt
	JzVewQwvZ9zibbcvRJgI9KK/UNfJW13cv9gH8QqgVu6XdICeuyj4Blab4e5XMmMEOxa1nwhGk5xqT
	FRh3lw71aheWF7TI3Bxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwUxa-0001pt-Rr; Tue, 28 Jan 2020 17:47:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwUxP-0001of-NJ; Tue, 28 Jan 2020 17:47:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5C6C9328;
 Tue, 28 Jan 2020 09:47:16 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.47])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 1F3B43F52E; Tue, 28 Jan 2020 09:47:11 -0800 (PST)
Date: Tue, 28 Jan 2020 17:47:09 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
Message-ID: <20200128174709.GK655507@arrakis.emea.arm.com>
References: <1580174873-18117-1-git-send-email-anshuman.khandual@arm.com>
 <14882A91-17DE-4ABD-ABF2-08E7CCEDF660@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14882A91-17DE-4ABD-ABF2-08E7CCEDF660@lca.pw>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_094723_806000_B9769BFA 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Ingo Molnar <mingo@kernel.org>, linux-s390@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Michael Ellerman <mpe@ellerman.id.au>,
 Vlastimil Babka <vbabka@suse.cz>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 linux-arm-kernel@lists.infradead.org, linux-snps-arc@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Dan Williams <dan.j.williams@intel.com>, Mark Brown <broonie@kernel.org>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Dave Hansen <dave.hansen@intel.com>,
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

T24gTW9uLCBKYW4gMjcsIDIwMjAgYXQgMDk6MTE6NTNQTSAtMDUwMCwgUWlhbiBDYWkgd3JvdGU6
Cj4gT24gSmFuIDI3LCAyMDIwLCBhdCA4OjI4IFBNLCBBbnNodW1hbiBLaGFuZHVhbCA8QW5zaHVt
YW4uS2hhbmR1YWxAYXJtLmNvbT4gd3JvdGU6Cj4gPiBUaGlzIGFkZHMgdGVzdHMgd2hpY2ggd2ls
bCB2YWxpZGF0ZSBhcmNoaXRlY3R1cmUgcGFnZSB0YWJsZSBoZWxwZXJzIGFuZAo+ID4gb3RoZXIg
YWNjZXNzb3JzIGluIHRoZWlyIGNvbXBsaWFuY2Ugd2l0aCBleHBlY3RlZCBnZW5lcmljIE1NIHNl
bWFudGljcy4KPiA+IFRoaXMgd2lsbCBoZWxwIHZhcmlvdXMgYXJjaGl0ZWN0dXJlcyBpbiB2YWxp
ZGF0aW5nIGNoYW5nZXMgdG8gZXhpc3RpbmcKPiA+IHBhZ2UgdGFibGUgaGVscGVycyBvciBhZGRp
dGlvbiBvZiBuZXcgb25lcy4KWy4uLl0KPiBXaGF04oCZcyB0aGUgdmFsdWUgb2YgdGhpcyBibG9j
ayBvZiBuZXcgY29kZT8gSXQgb25seSBzdXBwb3J0cyB4ODYgYW5kCj4gYXJtNjQgd2hpY2ggYXJl
IHN1cHBvc2VkIHRvIGJlIGdvb2Qgbm93LiBEaWQgdGhvc2UgdGVzdHMgZXZlciBmaW5kIGFueQo+
IHJlZ3Jlc3Npb24gb3IgdGhpcyBpcyBhbG1vc3Qgb25seSB1c2VmdWwgZm9yIG5ldyBhcmNoaXRl
Y3R1cmVzIHdoaWNoCj4gb25seSBoYXBwZW5lZCBvbmNlIGluIGEgZmV3IHllYXJzPwoKVGhlIHBy
aW1hcnkgZ29hbCBoZXJlIGlzIG5vdCBmaW5kaW5nIHJlZ3Jlc3Npb25zIGJ1dCBoYXZpbmcgY2xl
YXJseQpkZWZpbmVkIHNlbWFudGljcyBvZiB0aGUgcGFnZSB0YWJsZSBhY2Nlc3NvcnMgYWNyb3Nz
IGFyY2hpdGVjdHVyZXMuIHg4NgphbmQgYXJtNjQgYXJlIGEgZ29vZCBzdGFydGluZyBwb2ludCBh
bmQgb3RoZXIgYXJjaGl0ZWN0dXJlcyB3aWxsIGJlCmVuYWJsZWQgYXMgdGhleSBhcmUgYWxpZ25l
ZCB0byB0aGUgc2FtZSBzZW1hbnRpY3MuCgpTZWUgZm9yIGV4YW1wbGUgdGhpcyBwYXN0IGRpc2N1
c3Npb246CgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tbS8yMDE5MDYyODEwMjAwMy5H
QTU2NDYzQGFycmFraXMuZW1lYS5hcm0uY29tLwoKVGhlc2UgdGVzdHMgc2hvdWxkIGFjdCBhcyB0
aGUgJ2NvbnRyYWN0JyBiZXR3ZWVuIHRoZSBnZW5lcmljIG1tIGNvZGUgYW5kCnRoZSBhcmNoaXRl
Y3R1cmUgcG9ydC4gV2l0aG91dCBjbGVhciBzZW1hbnRpY3MsIHNvbWUgYnVncyBtYXkgYmUgYSBs
b3QKc3VidGxlciB0aGFuIGEgYm9vdCBmYWlsdXJlLgoKRlRSLCBJIGZ1bGx5IHN1cHBvcnQgdGhp
cyBwYXRjaCAoYW5kIEkgc2hvdWxkIGdldCBhcm91bmQgdG8gcmV2aWV3IGl0CnByb3Blcmx5OyB0
aGFua3MgZm9yIHRoZSByZW1pbmRlciA7KSkuCgotLSAKQ2F0YWxpbgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
