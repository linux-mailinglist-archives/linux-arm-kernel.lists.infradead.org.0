Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65663B185F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 08:32:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=et3yr60ctyKpp65cMuFhlT3G83MEwDV7HeCz5LBiEh8=; b=aV3F8Cdfc5AdirOXIjXtKfE2A
	bCAkfHm+gQU5Q7JslAb7XMoGtoJuH8CkuM6xuO6pZxW8vqVxbJXlQwlGVEjtJxFYFoDX3RyiD5G8Q
	uB4Nvse3mB8HlEhIGNqVAEAe3iis4lMmy03lRPH6+hag/D4edpF9HbQ7rdTykanHFlIss+UMBTrbd
	WY9IOKzLV9n8JS+RKawHJliuyp131yH1U0jXz/P50Da8AumiNogdNGEU7r93vOQRWmImHCx62BKMK
	rUy9TC9A80sjPzRyYkelmel13HnXTzFZXmn0Nqc8Sw0cC4MWFzFkzMcfNUqod+ZQrfokXcZ/47/0q
	6yaZHQLdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8f89-00066i-3f; Fri, 13 Sep 2019 06:32:29 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8f7v-00066J-HC; Fri, 13 Sep 2019 06:32:17 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 46V5Qj000Sz9vKGb;
 Fri, 13 Sep 2019 08:32:12 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=VJ4CF4p8; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id tJ-xaM53VrCX; Fri, 13 Sep 2019 08:32:12 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 46V5Qh5lbpz9vKGZ;
 Fri, 13 Sep 2019 08:32:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1568356332; bh=ReBvPV0Z/m9MUram7yhwHTiidcmJNZL+BD+hfnsloLA=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=VJ4CF4p8hg1KKGgIhCeAsV4qMKvXYlzNNehQ7ceZ4a6ZuNVr4zWlfLC2C/d+4Vx6x
 bOBxjzejDmg2+91ZvpNauetOhqSmZP1lVWbg5kakCMndFFbJsOS+UyolY/r68IIfBa
 7Uu12tw9w30LmD65sqocpmha8manvmPDWe4ylXUw=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id A62D88B7FD;
 Fri, 13 Sep 2019 08:32:13 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id LcWRvZH4vQC7; Fri, 13 Sep 2019 08:32:13 +0200 (CEST)
Received: from [172.25.230.101] (po15451.idsi0.si.c-s.fr [172.25.230.101])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 334838B770;
 Fri, 13 Sep 2019 08:32:13 +0200 (CEST)
Subject: Re: [PATCH V2 0/2] mm/debug: Add tests for architecture exported page
 table helpers
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1568268173-31302-1-git-send-email-anshuman.khandual@arm.com>
 <527edfce-c986-de4c-e286-34a70f6a2790@c-s.fr>
 <1b467d7a-0324-eb2c-876a-f04a99b9c596@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <ba2314ff-54c1-0deb-b207-b591647fac9d@c-s.fr>
Date: Fri, 13 Sep 2019 08:32:11 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1b467d7a-0324-eb2c-876a-f04a99b9c596@arm.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_233215_871194_0C5BAD7E 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
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
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxMy8wOS8yMDE5IMOgIDA4OjI0LCBBbnNodW1hbiBLaGFuZHVhbCBhIMOpY3JpdMKgOgo+
IAo+IAo+IE9uIDA5LzEyLzIwMTkgMDg6MTIgUE0sIENocmlzdG9waGUgTGVyb3kgd3JvdGU6Cj4+
IEhpLAo+Pgo+PiBJIGRpZG4ndCBnZXQgcGF0Y2ggMSBvZiB0aGlzIHNlcmllcywgYW5kIGl0IGlz
IG5vdCBvbiBsaW51eHBwYy1kZXYgcGF0Y2h3b3JrIGVpdGhlci4gQ2FuIHlvdSByZXNlbmQgPwo+
IAo+IEl0cyB0aGVyZSBvbiBsaW51eC1tbSBwYXRjaHdvcmsgYW5kIGNvcGllZCBvbiBsaW51eC1r
ZXJuZWxAdmdlci5rZXJuZWwub3JnCj4gYXMgd2VsbC4gVGhlIENDIGxpc3QgZm9yIHRoZSBmaXJz
dCBwYXRjaCB3YXMgZGlmZmVyZW50IHRoYW4gdGhlIHNlY29uZCBvbmUuCj4gCj4gaHR0cHM6Ly9w
YXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTE0MjMxNy8KPiAKPiBMZXQgbWUga25vdyBpZiB5
b3UgY2FuIG5vdCBmaW5kIGl0IGVpdGhlciBvbiBNTSBvciBMS01MIGxpc3QuCj4gCgpJIGZpbmFs
eSBmb3VuZCBpdCBvbiBsaW51eC1tbSBhcmNoaXZlLCB0aGFua3MuIFNlZSBteSBvdGhlciBtYWls
cyBhbmQgbXkgCmZpeGluZyBwYXRjaC4KCkNocmlzdG9waGUKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
