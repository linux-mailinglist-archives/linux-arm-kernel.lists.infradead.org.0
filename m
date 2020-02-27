Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24104170E7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 03:34:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=inMzZMiJ5c8Tq7Zkjqds2kDUVSmbm2DmoulhPGt2vPA=; b=iL7l5ua8j3g25Z
	qCfgNsCEOj2wP/8nrB1k7jMIJ5FnNumjWQE1N6qr5Iy4g1KlyaWfl3jjLAaclomAxAFGyVkyV8OxI
	mqZA1dkxtKNaT0lV9iejg5Z34dpmaCuSY2B4SQexI02RKvOsJhz/BwkojBhPd5XXU+s/MUrTLHbO7
	mQKqwMOAPspYqRe8J5NxBvthQFE/HZDnqakvFgNzvM783ZHWxcigaMNTzFMrWtrisXW6OshQ2QAI1
	8s2nBsiY+RMKISRSBWQBn+YF1SL8yMzazFmTspWjkoAY4aPF2n1Jf5TEdbuzKfApPYX6b4c+12yLN
	cnl9foYGbV+tfpVZ50Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j790T-0005Cp-J3; Thu, 27 Feb 2020 02:34:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j790E-0005C4-Lb; Thu, 27 Feb 2020 02:34:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A9D9F1FB;
 Wed, 26 Feb 2020 18:34:15 -0800 (PST)
Received: from [10.163.1.119] (unknown [10.163.1.119])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6D8323F819;
 Wed, 26 Feb 2020 18:34:06 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V14] mm/debug: Add tests validating architecture page
 table helpers
To: Christophe Leroy <christophe.leroy@c-s.fr>, Qian Cai <cai@lca.pw>,
 linux-mm@kvack.org
References: <1581909460-19148-1-git-send-email-anshuman.khandual@arm.com>
 <1582726182.7365.123.camel@lca.pw> <1582726340.7365.124.camel@lca.pw>
 <eb154054-68ab-a659-065b-f4f7dcbb8671@c-s.fr>
Message-ID: <52db1e9b-83b3-c41f-ef03-0f43e2159a83@arm.com>
Date: Thu, 27 Feb 2020 08:04:05 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <eb154054-68ab-a659-065b-f4f7dcbb8671@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_183418_750168_0EB2F9C1 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 James Morse <james.morse@arm.com>, linux-snps-arc@lists.infradead.org,
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

T24gMDIvMjYvMjAyMCAwODoxNCBQTSwgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToKPiAKPiAKPiBM
ZSAyNi8wMi8yMDIwIMOgIDE1OjEyLCBRaWFuIENhaSBhIMOpY3JpdMKgOgo+PiBPbiBXZWQsIDIw
MjAtMDItMjYgYXQgMDk6MDkgLTA1MDAsIFFpYW4gQ2FpIHdyb3RlOgo+Pj4gT24gTW9uLCAyMDIw
LTAyLTE3IGF0IDA4OjQ3ICswNTMwLCBBbnNodW1hbiBLaGFuZHVhbCB3cm90ZToKPj4+Cj4+PiBI
b3cgdXNlZnVsIGlzIHRoaXMgdGhhdCBzdHJhaWdodGx5IGNyYXNoIHRoZSBwb3dlcnBjPwo+Pgo+
PiBBbmQgdGhlbiBnZW5lcmF0ZSB3YXJuaW5ncyBvbiBhcm02NCwKPj4KPj4gW8KgwqAxNDYuNjM0
NjI2XVvCoMKgwqDCoFQxXSBkZWJ1Z192bV9wZ3RhYmxlOiBkZWJ1Z192bV9wZ3RhYmxlOiBWYWxp
ZGF0aW5nCj4+IGFyY2hpdGVjdHVyZSBwYWdlIHRhYmxlIGhlbHBlcnMKPj4gW8KgwqAxNDYuNjQz
OTk1XVvCoMKgwqDCoFQxXSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KPj4g
W8KgwqAxNDYuNjQ5MzUwXVvCoMKgwqDCoFQxXSB2aXJ0X3RvX3BoeXMgdXNlZCBmb3Igbm9uLWxp
bmVhciBhZGRyZXNzOgo+PiAoX19fX3B0cnZhbF9fX18pIChzdGFydF9rZXJuZWwrMHgwLzB4NTgw
KQo+IAo+IE11c3QgYmUgc29tZXRoaW5nIHdyb25nIHdpdGggdGhlIGZvbGxvd2luZyBpbiBkZWJ1
Z192bV9wZ3RhYmxlKCkKPiAKPiDCoMKgwqDCoHBhZGRyID0gX19wYSgmc3RhcnRfa2VybmVsKTsK
PiAKPiBJcyB0aGVyZSBhbnkgZXhwbGFpbmF0aW9uIHdoeSBzdGFydF9rZXJuZWwoKSBpcyBub3Qg
aW4gbGluZWFyIG1lbW9yeSBvbiBBUk02NCA/CgoKQ2M6ICsgSmFtZXMgTW9yc2UgPGphbWVzLm1v
cnNlQGFybS5jb20+CgpUaGlzIHdhcm5pbmcgZ2V0cyBleHBvc2VkIHdpdGggREVCVUdfVklSVFVB
TCBkdWUgdG8gX19wYSgpIG9uIGEga2VybmVsIHN5bWJvbAppLmUgJ3N0YXJ0X2tlcm5lbCcgd2hp
Y2ggbWlnaHQgYmUgb3V0c2lkZSB0aGUgbGluZWFyIG1hcC4gVGhpcyBoYXBwZW5zIGR1ZSB0bwpr
ZXJuZWwgbWFwcGluZyBwb3NpdGlvbiByYW5kb21pemF0aW9uIHdpdGggS0FTTFIuIEFkZGluZyBK
YW1lcyBoZXJlIGluIGNhc2UgaGUKbWlnaHQgbGlrZSB0byBhZGQgbW9yZS4KCl9fcGFfc3ltYm9s
KCkgc2hvdWxkIGhhdmUgYmVlbiB1c2VkIGluc3RlYWQsIGZvciBhY2Nlc3NpbmcgdGhlIHBoeXNp
Y2FsIGFkZHJlc3MKaGVyZS4gT24gYXJtNjQgX19wYSgpIGRvZXMgY2hlY2sgZm9yIGxpbmVhciBh
ZGRyZXNzIHdpdGggX19pc19sbV9hZGRyZXNzKCkgYW5kCnN3aXRjaCBhY2NvcmRpbmdseSBpZiBp
dCBpcyBhIGtlcm5lbCB0ZXh0IHN5bWJvbC4gTmV2ZXJ0aGVsZXNzLCBpdHMgbXVjaCBiZXR0ZXIK
dG8gdXNlIF9fcGFfc3ltYm9sKCkgaGVyZSByYXRoZXIgdGhhbiBfX3BhKCkuCgpSYXRoZXIgdGhh
biByZXNwaW5pbmcgdGhlIHBhdGNoIG9uY2UgbW9yZSwgd2lsbCBqdXN0IHNlbmQgYSBmaXggcmVw
bGFjaW5nIHRoaXMKaGVscGVyIF9fcGEoKSB3aXRoIF9fcGFfc3ltYm9sKCkgZm9yIEFuZHJldyB0
byBwaWNrIHVwIGFzIHRoaXMgcGF0Y2ggaXMgYWxyZWFkeQpwYXJ0IG9mIGxpbnV4LW5leHQgKG5l
eHQtMjAyMDAyMjYpLiBCdXQgY2FuIGRlZmluaXRlbHkgcmVzcGluIGlmIHRoYXQgd2lsbCBiZQpw
cmVmZXJyZWQuCgpUaGFua3MgUWlhbiBmb3IgY2F0Y2hpbmcgdGhpcy4KCj4gCj4gQ2hyaXN0b3Bo
ZQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
