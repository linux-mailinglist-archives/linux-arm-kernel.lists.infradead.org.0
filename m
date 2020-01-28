Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 689DD14AF91
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 07:13:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m9Q5Pv+d+jDXNxdzd+O+cEprryeOulOJaAkV8F4Qhb4=; b=Zj/83Eu75sZkio7QLS/on7dIp
	5hxft1GxhL5rrRsI9PBunmfJU5FPmBCqU1FyKVZdU5647GCPftacv+LOOEjpeYo6zAtSOLL6+VLwl
	KVkAIm/h7v8/Pfw3F9CXAfVwJy88BqCzlBgt5buHjHXLRSWWweCULIQQElARJta8oWc/QNtJTNbFs
	9f9CHS6Oe+fLqiV7kXyvIlssTIfnymdp1x+V949n6LevYnG+XQFCg0RiNaxppkTH8QsNcK54/ZMbY
	4XP4tj5XO+U6RDKKWaUcjd9fZJ/Lt3X2q4vP+zuRERjXKhtSWK4A0JUSlAFtHuA77h1Y8waybi30l
	/uDoOogKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwK84-0004aq-H4; Tue, 28 Jan 2020 06:13:40 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwK7d-0004N2-Nm; Tue, 28 Jan 2020 06:13:15 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 486GWR2cqXz9v22Q;
 Tue, 28 Jan 2020 07:13:07 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=C70j0unK; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id tf9SBshBmIx8; Tue, 28 Jan 2020 07:13:07 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 486GWR19WTz9v22N;
 Tue, 28 Jan 2020 07:13:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1580191987; bh=pcrCnDSka2qoXBfBeA3afQal2h0amq4PFi2jmMQwdpk=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=C70j0unKrMF6yDixdWedTQC2P5T5/vAYpEmpZheamqM8tUIvuDuoyzTfclHpLcmBs
 zFelibkah4ATRqmpbd//5eGzB63dcgYhxVJrzK4IvtVG6rBysf1zACi5HU+mamJ97b
 k3ddSc1LOjJeLmYIAzLxKGYzTukejGmyrGraiJB8=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id DCAFB8B7C2;
 Tue, 28 Jan 2020 07:13:07 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id UqMMVHvL2Had; Tue, 28 Jan 2020 07:13:07 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 1FF9D8B75B;
 Tue, 28 Jan 2020 07:13:05 +0100 (CET)
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
To: Qian Cai <cai@lca.pw>, Anshuman Khandual <anshuman.khandual@arm.com>
References: <1580174873-18117-1-git-send-email-anshuman.khandual@arm.com>
 <14882A91-17DE-4ABD-ABF2-08E7CCEDF660@lca.pw>
 <214c0d53-eb34-9b0c-2e4e-1aa005146331@arm.com>
 <016A776F-EFD9-4D2B-A3A9-788008617D95@lca.pw>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <a7ba6d8a-6443-5994-6a34-2824aa9b054b@c-s.fr>
Date: Tue, 28 Jan 2020 07:13:04 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <016A776F-EFD9-4D2B-A3A9-788008617D95@lca.pw>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_221314_094576_4C0C09DB 
X-CRM114-Status: GOOD (  16.01  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
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

CgpMZSAyOC8wMS8yMDIwIMOgIDA0OjMzLCBRaWFuIENhaSBhIMOpY3JpdMKgOgo+IAo+IAo+PiBP
biBKYW4gMjcsIDIwMjAsIGF0IDEwOjA2IFBNLCBBbnNodW1hbiBLaGFuZHVhbCA8YW5zaHVtYW4u
a2hhbmR1YWxAYXJtLmNvbT4gd3JvdGU6Cj4+Cj4+Cj4+Cj4+IE9uIDAxLzI4LzIwMjAgMDc6NDEg
QU0sIFFpYW4gQ2FpIHdyb3RlOgo+Pj4KPj4+Cj4+Pj4gT24gSmFuIDI3LCAyMDIwLCBhdCA4OjI4
IFBNLCBBbnNodW1hbiBLaGFuZHVhbCA8QW5zaHVtYW4uS2hhbmR1YWxAYXJtLmNvbT4gd3JvdGU6
Cj4+Pj4KPj4+PiBUaGlzIGFkZHMgdGVzdHMgd2hpY2ggd2lsbCB2YWxpZGF0ZSBhcmNoaXRlY3R1
cmUgcGFnZSB0YWJsZSBoZWxwZXJzIGFuZAo+Pj4+IG90aGVyIGFjY2Vzc29ycyBpbiB0aGVpciBj
b21wbGlhbmNlIHdpdGggZXhwZWN0ZWQgZ2VuZXJpYyBNTSBzZW1hbnRpY3MuCj4+Pj4gVGhpcyB3
aWxsIGhlbHAgdmFyaW91cyBhcmNoaXRlY3R1cmVzIGluIHZhbGlkYXRpbmcgY2hhbmdlcyB0byBl
eGlzdGluZwo+Pj4+IHBhZ2UgdGFibGUgaGVscGVycyBvciBhZGRpdGlvbiBvZiBuZXcgb25lcy4K
Pj4+Pgo+Pj4+IFRoaXMgdGVzdCBjb3ZlcnMgYmFzaWMgcGFnZSB0YWJsZSBlbnRyeSB0cmFuc2Zv
cm1hdGlvbnMgaW5jbHVkaW5nIGJ1dCBub3QKPj4+PiBsaW1pdGVkIHRvIG9sZCwgeW91bmcsIGRp
cnR5LCBjbGVhbiwgd3JpdGUsIHdyaXRlIHByb3RlY3QgZXRjIGF0IHZhcmlvdXMKPj4+PiBsZXZl
bCBhbG9uZyB3aXRoIHBvcHVsYXRpbmcgaW50ZXJtZWRpYXRlIGVudHJpZXMgd2l0aCBuZXh0IHBh
Z2UgdGFibGUgcGFnZQo+Pj4+IGFuZCB2YWxpZGF0aW5nIHRoZW0uCj4+Pj4KPj4+PiBUZXN0IHBh
Z2UgdGFibGUgcGFnZXMgYXJlIGFsbG9jYXRlZCBmcm9tIHN5c3RlbSBtZW1vcnkgd2l0aCByZXF1
aXJlZCBzaXplCj4+Pj4gYW5kIGFsaWdubWVudHMuIFRoZSBtYXBwZWQgcGZucyBhdCBwYWdlIHRh
YmxlIGxldmVscyBhcmUgZGVyaXZlZCBmcm9tIGEKPj4+PiByZWFsIHBmbiByZXByZXNlbnRpbmcg
YSB2YWxpZCBrZXJuZWwgdGV4dCBzeW1ib2wuIFRoaXMgdGVzdCBnZXRzIGNhbGxlZAo+Pj4+IHJp
Z2h0IGFmdGVyIHBhZ2VfYWxsb2NfaW5pdF9sYXRlKCkuCj4+Pj4KPj4+PiBUaGlzIGdldHMgYnVp
bGQgYW5kIHJ1biB3aGVuIENPTkZJR19ERUJVR19WTV9QR1RBQkxFIGlzIHNlbGVjdGVkIGFsb25n
IHdpdGgKPj4+PiBDT05GSUdfVk1fREVCVUcuIEFyY2hpdGVjdHVyZXMgd2lsbGluZyB0byBzdWJz
Y3JpYmUgdGhpcyB0ZXN0IGFsc28gbmVlZCB0bwo+Pj4+IHNlbGVjdCBDT05GSUdfQVJDSF9IQVNf
REVCVUdfVk1fUEdUQUJMRSB3aGljaCBmb3Igbm93IGlzIGxpbWl0ZWQgdG8geDg2IGFuZAo+Pj4+
IGFybTY0LiBHb2luZyBmb3J3YXJkLCBvdGhlciBhcmNoaXRlY3R1cmVzIHRvbyBjYW4gZW5hYmxl
IHRoaXMgYWZ0ZXIgZml4aW5nCj4+Pj4gYnVpbGQgb3IgcnVudGltZSBwcm9ibGVtcyAoaWYgYW55
KSB3aXRoIHRoZWlyIHBhZ2UgdGFibGUgaGVscGVycy4KPj4KPj4gSGVsbG8gUWlhbiwKPj4KPj4+
Cj4+PiBXaGF04oCZcyB0aGUgdmFsdWUgb2YgdGhpcyBibG9jayBvZiBuZXcgY29kZT8gSXQgb25s
eSBzdXBwb3J0cyB4ODYgYW5kIGFybTY0Cj4+PiB3aGljaCBhcmUgc3VwcG9zZWQgdG8gYmUgZ29v
ZCBub3cuCj4+Cj4+IFdlIGhhdmUgYmVlbiBvdmVyIHRoZSB1c2VmdWxuZXNzIG9mIHRoaXMgY29k
ZSBtYW55IHRpbWVzIGJlZm9yZSBhcyB0aGUgcGF0Y2ggaXMKPj4gYWxyZWFkeSBpbiBpdCdzIFYx
Mi4gQ3VycmVudGx5IGl0IGlzIGVuYWJsZWQgb24gYXJtNjQsIHg4NiAoZXhjZXB0IFBBRSksIGFy
YyBhbmQKPj4gcHBjMzIuIFRoZXJlIGFyZSBidWlsZCB0aW1lIG9yIHJ1bnRpbWUgcHJvYmxlbXMg
d2l0aCBvdGhlciBhcmNocyB3aGljaCBwcmV2ZW50Cj4gCj4gSSBhbSBub3Qgc3VyZSBpZiBJIGNh
cmUgdG9vIG11Y2ggYWJvdXQgYXJjIGFuZCBwcGMzMiB3aGljaCBhcmUgcHJldHR5IG11Y2ggbGVn
YWN5Cj4gcGxhdGZvcm1zLgo+IAo+PiBlbmFibGVtZW50IG9mIHRoaXMgdGVzdCAoZm9yIHRoZSBt
b21lbnQpIGJ1dCB0aGVuIHRoZSBnb2FsIGlzIHRvIGludGVncmF0ZSBhbGwKPj4gb2YgdGhlbSBn
b2luZyBmb3J3YXJkLiBUaGUgdGVzdCBub3Qgb25seSB2YWxpZGF0ZXMgcGxhdGZvcm0ncyBhZGhl
cmVuY2UgdG8gdGhlCj4+IGV4cGVjdGVkIHNlbWFudGljcyBmcm9tIGdlbmVyaWMgTU0gYnV0IGFs
c28gaGVscHMgaW4ga2VlcGluZyBpdCB0aGF0IHdheSBkdXJpbmcKPj4gY29kZSBjaGFuZ2VzIGlu
IGZ1dHVyZSBhcyB3ZWxsLgo+IAo+IEFub3RoZXIgb3B0aW9uIG1heWJlIHRvIGdldCBzb21lIGRl
Y2VudCBhcmNoZXMgb24gYm9hcmQgZmlyc3QgYmVmb3JlIG1lcmdpbmcgdGhpcwo+IHRoaW5nLCBz
byBpdCBoYXZlIG1vcmUgY2hhbmdlcyB0byBjYXRjaCByZWdyZXNzaW9ucyBmb3IgZGV2ZWxvcGVy
cyB3aG8gbWlnaHQgcnVuIHRoaXMuCj4gCgpwcGMzMiBhbiBpbmRlY2VudCAvIGxlZ2FjeSBwbGF0
Zm9ybSA/IEFyZSB5b3Uga2lkeWluZyA/CgpQb3dlcnF1aWNjIElJIFBSTyBmb3IgaW5zdGFuY2Ug
aXMgZnVsbHkgc3VwcG9ydGVkIGJ5IHRoZSBtYW51ZmFjdHVyZXIgCmFuZCB3aWRlbHkgdXNlZCBp
biBtYW55IHNtYWxsIG5ldHdvcmtpbmcgZGV2aWNlcy4KCkNocmlzdG9waGUKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
