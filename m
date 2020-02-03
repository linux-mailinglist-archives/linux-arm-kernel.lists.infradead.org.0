Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E8A150980
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 16:14:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6hZf5c3dSDBkrhSDMBmjSDCkBGifJa9now+OjUC7eH4=; b=DnvFAJSaxq7L4QhWDvKbdpFT1
	tZoufCH0ZTh5b+VVdTQaWPren4bOw8NOgQu4CCSlpjTPM8Q1g3YMyH4aV2xwRLhxmA0qEQgE44bWK
	5xrp+DCnqgb2144QYhuyceC97ETUuCg5tjT0vDfHg6rwOppoTwB89Rim7prsPQUUziC+P0b5T3l7F
	kMChjD7MwWtSf4AKeU1qGxIY/7nxyHsS0GLueRUfsSyGiQfXsU5BSMssoPK+WJDmASwIC9Z+P1OSP
	JWPqJdF7EWsRVR08QK4SEE1C0VdheJZbc4egnReY6Y31LShVjnwpE64eHm5yesRimExXNtcb1Z+Ug
	6FC6aFU9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iydQz-0003e1-Hi; Mon, 03 Feb 2020 15:14:45 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iydQr-0003bl-Pu; Mon, 03 Feb 2020 15:14:39 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48BBF846fMz9v3ls;
 Mon,  3 Feb 2020 16:14:20 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=OGtzFIa+; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 5VszB6UW2Yif; Mon,  3 Feb 2020 16:14:20 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48BBF82h8pz9v3lm;
 Mon,  3 Feb 2020 16:14:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1580742860; bh=i4hAG7YwdO6LNDmYZ4wBEtikutj9N76WG5xl/PwnPrw=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=OGtzFIa+5ZhSxgd/BuHky5Jny2LDfnoF42zPtabwjmhorMsQSP8od+tqTvY9oMk3O
 ug6+KKaiRNlh/wtS69Y4UVsFdUJC1Vu36ZVhY++cHIlyr4PBVDhCfDbWqmvxtfLxhX
 pBTvZSaYZbiw2B0JwaU6kwU/pCLUp2ai2uhwAOdA=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 7DE228B7B0;
 Mon,  3 Feb 2020 16:14:25 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id unrhNEULKrXy; Mon,  3 Feb 2020 16:14:25 +0100 (CET)
Received: from [172.25.230.102] (po15451.idsi0.si.c-s.fr [172.25.230.102])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 12E638B7AC;
 Mon,  3 Feb 2020 16:14:25 +0100 (CET)
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
To: Qian Cai <cai@lca.pw>
References: <473d8198-3ac4-af3b-e2ec-c0698a3565d3@c-s.fr>
 <2C4ADFAE-7BB4-42B7-8F54-F036EA7A4316@lca.pw>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <8e94a073-4045-89aa-6a3b-24847ad7c858@c-s.fr>
Date: Mon, 3 Feb 2020 16:14:24 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <2C4ADFAE-7BB4-42B7-8F54-F036EA7A4316@lca.pw>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_071438_137882_C74D1901 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 kasan-dev <kasan-dev@googlegroups.com>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 linux-arm-kernel@lists.infradead.org,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-mips@vger.kernel.org,
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

CgpMZSAwMi8wMi8yMDIwIMOgIDEyOjI2LCBRaWFuIENhaSBhIMOpY3JpdMKgOgo+IAo+IAo+PiBP
biBKYW4gMzAsIDIwMjAsIGF0IDk6MTMgQU0sIENocmlzdG9waGUgTGVyb3kgPGNocmlzdG9waGUu
bGVyb3lAYy1zLmZyPiB3cm90ZToKPj4KPj4gY29uZmlnIERFQlVHX1ZNX1BHVEFCTEUKPj4gICAg
IGJvb2wgIkRlYnVnIGFyY2ggcGFnZSB0YWJsZSBmb3Igc2VtYW50aWNzIGNvbXBsaWFuY2UiIGlm
IEFSQ0hfSEFTX0RFQlVHX1ZNX1BHVEFCTEUgfHwgRVhQRVJUCj4+ICAgICBkZXBlbmRzIG9uIE1N
VQo+PiAgICAgZGVmYXVsdCAnbicgaWYgIUFSQ0hfSEFTX0RFQlVHX1ZNX1BHVEFCTEUKPj4gICAg
IGRlZmF1bHQgJ3knIGlmIERFQlVHX1ZNCj4gCj4gRG9lcyBpdCByZWFsbHkgbmVjZXNzYXJ5IHRv
IHBvdGVudGlhbGx5IGZvcmNlIGFsbCBib3RzIHRvIHJ1biB0aGlzPyBTeXpib3QsIGtlcm5lbCB0
ZXN0IHJvYm90IGV0Yz8gRG9lcyBpdCBldmVyIHBheSBvZmYgZm9yIGFsbCB0aGVpciBtYWNoaW5l
IHRpbWVzIHRoZXJlPwo+IAoKTWFjaGluZSB0aW1lID8KCk9uIGEgMzIgYml0cyBwb3dlcnBjIHJ1
bm5pbmcgYXQgMTMyIE1IeiwgdGhlIHRlc3RzIHRha2VzIGxlc3MgdGhhbiAxMG1zLiAKSXMgaXQg
d29ydGggdGFraW5nIHRoZSByaXNrIG9mIG5vdCBkZXRlY3RpbmcgZmF1bHRzIGJ5IG5vdCBzZWxl
Y3RpbmcgaXQgCmJ5IGRlZmF1bHQgPwoKWyAgICA1LjY1NjkxNl0gZGVidWdfdm1fcGd0YWJsZTog
ZGVidWdfdm1fcGd0YWJsZTogVmFsaWRhdGluZyAKYXJjaGl0ZWN0dXJlIHBhZ2UgdGFibGUgaGVs
cGVycwpbICAgIDUuNjY1NjYxXSBkZWJ1Z192bV9wZ3RhYmxlOiBkZWJ1Z192bV9wZ3RhYmxlOiBW
YWxpZGF0ZWQgCmFyY2hpdGVjdHVyZSBwYWdlIHRhYmxlIGhlbHBlcnMKCkNocmlzdG9waGUKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
