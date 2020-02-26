Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79ED2170182
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 15:46:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eVR67AGgdaJ95pX7FTv9KgFEgdtwTq/qUF6zl+KvV7E=; b=eQJkEKgfWN9ZCdOfXPETQBfmb
	X0k2XjeiT+js+D7Pq9nfOO1MtACq0y0EbdDYUZA0+QFKKjw65r+OGlcbj8ZRM8Ij74KAuEc9HWyDp
	d/BtyUawSEnAzPNsjfaNl+Hfx6/Sjf7PzUNK8zDinURGKhxdmr2y6gtpoveKHTnl+UGvMFfoZKjZP
	s2BsrLTCEZobE1srFPuBbeo36dcN6IP8ZqoxQGKFQif+ncDc8AZmp7eLIQ+u/FtZTR/BpasTQblnm
	CQwqQ+1P4irphtmsLhKearDTLRWqNHcJlbVrTia43oQV368x0fiYZs6ow+Z8aSoUFqrAnSGCI+nly
	fszUBMG2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6xx0-00038O-RH; Wed, 26 Feb 2020 14:46:14 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6xwq-00037z-Il; Wed, 26 Feb 2020 14:46:06 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48SJWh2b55z9tyg4;
 Wed, 26 Feb 2020 15:45:52 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=kZ5bMkLJ; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id piYm9Kq-bip3; Wed, 26 Feb 2020 15:45:52 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48SJWh1L1mz9tyg0;
 Wed, 26 Feb 2020 15:45:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1582728352; bh=BEQC+OIkud+eji3D9C1xajaOV2PnlEzJtZsCBcvukA0=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=kZ5bMkLJJRmtE/zBn7tAG22RVlZ+eB59QhJ/5515+FA1qAhZsJh2OjTNrixj9vTDj
 g9hhT1i5/9dal9tTCQtAXzKPCb1/TtYD/lHCsid2jxvbbY8kYL0AVDIy3f2yCgUqIz
 SvUkhU4c68nXEu7I9g1qKkvWUZk1WgTaY/zVbTdo=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 93C978B858;
 Wed, 26 Feb 2020 15:45:53 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id AccKIxhc_qaM; Wed, 26 Feb 2020 15:45:53 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 75D1B8B776;
 Wed, 26 Feb 2020 15:45:51 +0100 (CET)
Subject: Re: [PATCH V14] mm/debug: Add tests validating architecture page
 table helpers
To: Qian Cai <cai@lca.pw>, Anshuman Khandual <anshuman.khandual@arm.com>,
 linux-mm@kvack.org
References: <1581909460-19148-1-git-send-email-anshuman.khandual@arm.com>
 <1582726182.7365.123.camel@lca.pw>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <7c707b7f-ce3d-993b-8042-44fdc1ed28bf@c-s.fr>
Date: Wed, 26 Feb 2020 15:45:44 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1582726182.7365.123.camel@lca.pw>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_064604_915532_013B47AE 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-snps-arc@lists.infradead.org, Vasily Gorbik <gor@linux.ibm.com>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAyNi8wMi8yMDIwIMOgIDE1OjA5LCBRaWFuIENhaSBhIMOpY3JpdMKgOgo+IE9uIE1vbiwg
MjAyMC0wMi0xNyBhdCAwODo0NyArMDUzMCwgQW5zaHVtYW4gS2hhbmR1YWwgd3JvdGU6Cj4+IFRo
aXMgYWRkcyB0ZXN0cyB3aGljaCB3aWxsIHZhbGlkYXRlIGFyY2hpdGVjdHVyZSBwYWdlIHRhYmxl
IGhlbHBlcnMgYW5kCj4+IG90aGVyIGFjY2Vzc29ycyBpbiB0aGVpciBjb21wbGlhbmNlIHdpdGgg
ZXhwZWN0ZWQgZ2VuZXJpYyBNTSBzZW1hbnRpY3MuCj4+IFRoaXMgd2lsbCBoZWxwIHZhcmlvdXMg
YXJjaGl0ZWN0dXJlcyBpbiB2YWxpZGF0aW5nIGNoYW5nZXMgdG8gZXhpc3RpbmcKPj4gcGFnZSB0
YWJsZSBoZWxwZXJzIG9yIGFkZGl0aW9uIG9mIG5ldyBvbmVzLgo+Pgo+PiBUaGlzIHRlc3QgY292
ZXJzIGJhc2ljIHBhZ2UgdGFibGUgZW50cnkgdHJhbnNmb3JtYXRpb25zIGluY2x1ZGluZyBidXQg
bm90Cj4+IGxpbWl0ZWQgdG8gb2xkLCB5b3VuZywgZGlydHksIGNsZWFuLCB3cml0ZSwgd3JpdGUg
cHJvdGVjdCBldGMgYXQgdmFyaW91cwo+PiBsZXZlbCBhbG9uZyB3aXRoIHBvcHVsYXRpbmcgaW50
ZXJtZWRpYXRlIGVudHJpZXMgd2l0aCBuZXh0IHBhZ2UgdGFibGUgcGFnZQo+PiBhbmQgdmFsaWRh
dGluZyB0aGVtLgo+Pgo+PiBUZXN0IHBhZ2UgdGFibGUgcGFnZXMgYXJlIGFsbG9jYXRlZCBmcm9t
IHN5c3RlbSBtZW1vcnkgd2l0aCByZXF1aXJlZCBzaXplCj4+IGFuZCBhbGlnbm1lbnRzLiBUaGUg
bWFwcGVkIHBmbnMgYXQgcGFnZSB0YWJsZSBsZXZlbHMgYXJlIGRlcml2ZWQgZnJvbSBhCj4+IHJl
YWwgcGZuIHJlcHJlc2VudGluZyBhIHZhbGlkIGtlcm5lbCB0ZXh0IHN5bWJvbC4gVGhpcyB0ZXN0
IGdldHMgY2FsbGVkCj4+IGluc2lkZSBrZXJuZWxfaW5pdCgpIHJpZ2h0IGFmdGVyIGFzeW5jX3N5
bmNocm9uaXplX2Z1bGwoKS4KPj4KPj4gVGhpcyB0ZXN0IGdldHMgYnVpbHQgYW5kIHJ1biB3aGVu
IENPTkZJR19ERUJVR19WTV9QR1RBQkxFIGlzIHNlbGVjdGVkLiBBbnkKPj4gYXJjaGl0ZWN0dXJl
LCB3aGljaCBpcyB3aWxsaW5nIHRvIHN1YnNjcmliZSB0aGlzIHRlc3Qgd2lsbCBuZWVkIHRvIHNl
bGVjdAo+PiBBUkNIX0hBU19ERUJVR19WTV9QR1RBQkxFLiBGb3Igbm93IHRoaXMgaXMgbGltaXRl
ZCB0byBhcmMsIGFybTY0LCB4ODYsIHMzOTAKPj4gYW5kIHBwYzMyIHBsYXRmb3JtcyB3aGVyZSB0
aGUgdGVzdCBpcyBrbm93biB0byBidWlsZCBhbmQgcnVuIHN1Y2Nlc3NmdWxseS4KPj4gR29pbmcg
Zm9yd2FyZCwgb3RoZXIgYXJjaGl0ZWN0dXJlcyB0b28gY2FuIHN1YnNjcmliZSB0aGUgdGVzdCBh
ZnRlciBmaXhpbmcKPj4gYW55IGJ1aWxkIG9yIHJ1bnRpbWUgcHJvYmxlbXMgd2l0aCB0aGVpciBw
YWdlIHRhYmxlIGhlbHBlcnMuIE1lYW53aGlsZSBmb3IKPj4gYmV0dGVyIHBsYXRmb3JtIGNvdmVy
YWdlLCB0aGUgdGVzdCBjYW4gYWxzbyBiZSBlbmFibGVkIHdpdGggQ09ORklHX0VYUEVSVAo+PiBl
dmVuIHdpdGhvdXQgQVJDSF9IQVNfREVCVUdfVk1fUEdUQUJMRS4KPj4KPj4gRm9sa3MgaW50ZXJl
c3RlZCBpbiBtYWtpbmcgc3VyZSB0aGF0IGEgZ2l2ZW4gcGxhdGZvcm0ncyBwYWdlIHRhYmxlIGhl
bHBlcnMKPj4gY29uZm9ybSB0byBleHBlY3RlZCBnZW5lcmljIE1NIHNlbWFudGljcyBzaG91bGQg
ZW5hYmxlIHRoZSBhYm92ZSBjb25maWcKPj4gd2hpY2ggd2lsbCBqdXN0IHRyaWdnZXIgdGhpcyB0
ZXN0IGR1cmluZyBib290LiBBbnkgbm9uIGNvbmZvcm1pdHkgaGVyZSB3aWxsCj4+IGJlIHJlcG9y
dGVkIGFzIGFuIHdhcm5pbmcgd2hpY2ggd291bGQgbmVlZCB0byBiZSBmaXhlZC4gVGhpcyB0ZXN0
IHdpbGwgaGVscAo+PiBjYXRjaCBhbnkgY2hhbmdlcyB0byB0aGUgYWdyZWVkIHVwb24gc2VtYW50
aWNzIGV4cGVjdGVkIGZyb20gZ2VuZXJpYyBNTSBhbmQKPj4gZW5hYmxlIHBsYXRmb3JtcyB0byBh
Y2NvbW1vZGF0ZSBpdCB0aGVyZWFmdGVyLgo+IAo+IEhvdyB1c2VmdWwgaXMgdGhpcyB0aGF0IHN0
cmFpZ2h0bHkgY3Jhc2ggdGhlIHBvd2VycGM/Cj4gCj4gW8KgwqDCoDIzLjI2MzQyNV1bwqDCoMKg
wqBUMV0gZGVidWdfdm1fcGd0YWJsZTogZGVidWdfdm1fcGd0YWJsZTogVmFsaWRhdGluZwo+IGFy
Y2hpdGVjdHVyZSBwYWdlIHRhYmxlIGhlbHBlcnMKPiBbwqDCoMKgMjMuMjYzNjI1XVvCoMKgwqDC
oFQxXSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KPiBbwqDCoMKgMjMuMjYz
NjQ5XVvCoMKgwqDCoFQxXSBrZXJuZWwgQlVHIGF0IGFyY2gvcG93ZXJwYy9tbS9wZ3RhYmxlLmM6
Mjc0IQoKVGhlIHByb2JsZW0gb24gUFBDNjQgaXMga25vd24gYW5kIGhhcyB0byBiZSBpbnZlc3Rp
Z2F0ZWQgYW5kIGZpeGVkLgoKQ2hyaXN0b3BoZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
