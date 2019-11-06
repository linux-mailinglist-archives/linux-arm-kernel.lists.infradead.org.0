Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAC6F0F13
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 07:41:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u+0ljzzYOUjp2YU6kKnm4h581YE/x5gTf39zmf0BX2Y=; b=FhWwQOE2oFX/xk0AAGeWysVqz
	yAHdqf0TcMFyZy+Eo2xdzILMa4AzG5jUTiLuB85XccRm8GE10wOOtjE/1u4LSHTQ0zoWh+tCk4NI+
	3NIlzdbemr8CuyE1wSNzUw2RMCg4uFV5WkbAB9KHbM7wwLeaN/b6X4b25lj6wjdCGoJUyvfmYiasi
	YjrkAaUBPGbY15WqyXvmf3oiG5Xa/15s9oJMm8c+H7dOYgaBz3zCQeibrOglBuNMv9FVlGD1l86FH
	VQtzne3cI7pSr2CA5mC+Vo2NQUzTr7lMt/moJJD4kRpRwhub7XKORvMgu0NEcvaNtzHkoyQUW48dm
	6CdhlaNjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSF0W-0007LF-7I; Wed, 06 Nov 2019 06:41:32 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSF0O-0007FB-BH; Wed, 06 Nov 2019 06:41:26 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 477H450GyXz9v00D;
 Wed,  6 Nov 2019 07:41:09 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=uDQK58sa; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id NP7mUVlPVLBt; Wed,  6 Nov 2019 07:41:08 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 477H445kq5z9v00C;
 Wed,  6 Nov 2019 07:41:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1573022468; bh=ldK6jtPphgl+yNa6VSaAerjL+prNDwgkLRC6nRKEIeI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=uDQK58saIN0zvehZkL7oENgA4DemT8lDWmLXhETHs2fgk7tiYooqK7uit5oPw6kqK
 UOoMgZlJGvnNPw1TVCdC6OsuYDkWv6rJFk3JlidSUeiN1jyfI5kOdxu8g2Q0UGfHfG
 nJ9ksEtevKFg7K5FRpbJoChZCjEM1dr9rYK/i7Rk=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 973408B82D;
 Wed,  6 Nov 2019 07:41:09 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id A7VVbo-RdBde; Wed,  6 Nov 2019 07:41:09 +0100 (CET)
Received: from [172.25.230.101] (unknown [172.25.230.101])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 27E838B7CC;
 Wed,  6 Nov 2019 07:41:09 +0100 (CET)
Subject: Re: [PATCH V8] mm/debug: Add tests validating architecture page table
 helpers
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1572240562-23630-1-git-send-email-anshuman.khandual@arm.com>
 <3229d68d-0b9d-0719-3370-c6e1df0ea032@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <42160baa-0e9d-73d0-bf72-58bdbacf10ff@c-s.fr>
Date: Wed, 6 Nov 2019 07:41:08 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <3229d68d-0b9d-0719-3370-c6e1df0ea032@arm.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_224124_678629_C7118FAB 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

CgpMZSAwNi8xMS8yMDE5IMOgIDA0OjIyLCBBbnNodW1hbiBLaGFuZHVhbCBhIMOpY3JpdMKgOgo+
IAo+IAo+IE9uIDEwLzI4LzIwMTkgMTA6NTkgQU0sIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+
PiArICAgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+ICsgICAgfCAgICAgICAgIGFyY2ggfHN0
YXR1c3wKPj4gKyAgICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+PiArICAgIHwgICAgICAgYWxw
aGE6IHwgVE9ETyB8Cj4+ICsgICAgfCAgICAgICAgIGFyYzogfCBUT0RPIHwKPj4gKyAgICB8ICAg
ICAgICAgYXJtOiB8IFRPRE8gfAo+PiArICAgIHwgICAgICAgYXJtNjQ6IHwgIG9rICB8Cj4+ICsg
ICAgfCAgICAgICAgIGM2eDogfCBUT0RPIHwKPj4gKyAgICB8ICAgICAgICBjc2t5OiB8IFRPRE8g
fAo+PiArICAgIHwgICAgICAgaDgzMDA6IHwgVE9ETyB8Cj4+ICsgICAgfCAgICAgaGV4YWdvbjog
fCBUT0RPIHwKPj4gKyAgICB8ICAgICAgICBpYTY0OiB8IFRPRE8gfAo+PiArICAgIHwgICAgICAg
IG02OGs6IHwgVE9ETyB8Cj4+ICsgICAgfCAgbWljcm9ibGF6ZTogfCBUT0RPIHwKPj4gKyAgICB8
ICAgICAgICBtaXBzOiB8IFRPRE8gfAo+PiArICAgIHwgICAgICAgbmRzMzI6IHwgVE9ETyB8Cj4+
ICsgICAgfCAgICAgICBuaW9zMjogfCBUT0RPIHwKPj4gKyAgICB8ICAgIG9wZW5yaXNjOiB8IFRP
RE8gfAo+PiArICAgIHwgICAgICBwYXJpc2M6IHwgVE9ETyB8Cj4+ICsgICAgfCAgICAgcG93ZXJw
YzogfCBUT0RPIHwKPj4gKyAgICB8ICAgICAgIHBwYzMyOiB8ICBvayAgfAoKTm90ZSB0aGF0IHBw
YzMyIGlzIGEgcGFydCBvZiBwb3dlcnBjLCBub3QgYSBzdGFuZGFsb25lIGFyY2guCgpNYXliZSBz
b21ldGhpbmcgbGlrZSB0aGUgZm9sbG93aW5nIHdvdWxkIGJlIG1vcmUgY29ycmVjdDoKfCAgcG93
ZXJwYy8zMjogfCAgb2sgIHwKfCAgcG93ZXJwYy82NDogfCBUT0RPIHwKCkNocmlzdG9waGUKCj4+
ICsgICAgfCAgICAgICByaXNjdjogfCBUT0RPIHwKPj4gKyAgICB8ICAgICAgICBzMzkwOiB8IFRP
RE8gfAo+PiArICAgIHwgICAgICAgICAgc2g6IHwgVE9ETyB8Cj4+ICsgICAgfCAgICAgICBzcGFy
YzogfCBUT0RPIHwKPj4gKyAgICB8ICAgICAgICAgIHVtOiB8IFRPRE8gfAo+PiArICAgIHwgICB1
bmljb3JlMzI6IHwgVE9ETyB8Cj4+ICsgICAgfCAgICAgICAgIHg4NjogfCAgb2sgIHwKPj4gKyAg
ICB8ICAgICAgeHRlbnNhOiB8IFRPRE8gfAo+PiArICAgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
Cj4gCj4gV2hpbGUgaGVyZSwgYXJlIHRoZXJlIHNvbWUgdm9sdW50ZWVycyB0byB0ZXN0IHRoaXMg
b24gYW55IG9mIHRoZQo+ICd5ZXQgdG8gYmUgdGVzdGVkIGFuZCBzdXBwb3J0ZWQnIHBsYXRmb3Jt
cyA/Cj4gCj4gLSBBbnNodW1hbgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
