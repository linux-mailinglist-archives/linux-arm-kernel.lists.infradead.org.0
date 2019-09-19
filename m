Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 276F2B72D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 07:45:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l9y/0/bXgj+jNzVc450TrT69e43cvz7wny8+S5SGPT0=; b=pUQq6FhYjJVf5o4U1Fw8B4npa
	LsHSAZBdvXR2aaBYOlO8lniodMHCinliD+GGJMJKi9mqK0A2MKWYO52CixgNDI/zotOYYVONeZe3j
	WFCo6OQUthxRtTxqHxav50lIQiYJZitREgGpqOXHWF9jFxYQO5EtGvgUxk25fc6U0qYkkEhW7pApW
	9bX40+C1l5tum4TDAWWyYgNJ+xIG1aFoHwtU6aYZJtnAHwa+mWeWd0DMeECN2gwqUXBV0xXasNsgT
	em8HCw/0Au5GUBT068eyHkiDsnFuskOE0JMgQq5cy4QMSC9BplcBGFEp3mlC6UrsgJ5bo8FIIZ5kC
	q3nwGy5Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iApFU-0003t6-Po; Thu, 19 Sep 2019 05:45:00 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iApFH-0003rt-EV; Thu, 19 Sep 2019 05:44:49 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 46Ym523Fvpz9vBnB;
 Thu, 19 Sep 2019 07:44:38 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=FtPM45xR; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id E1DzxbKi3YAE; Thu, 19 Sep 2019 07:44:38 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 46Ym521sh9z9vBn5;
 Thu, 19 Sep 2019 07:44:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1568871878; bh=u3IPZEW+32C7DaDMfn0DvIJKyx2qRHLH39Ao90Ba2vI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=FtPM45xRRq+ZMAt65+IvhdTxuzxace0VwgaQdf3cKJJT4y/Eahg1dC/4UOdaGCdh8
 2keyDA6ggFlB3Ny+FMd2SlwiqZK/16OHJduDKueIBvHCwUrv+TaOH/TmV6EmcQ6aZD
 62XuqZlFMWXmXNg2d+icfo4iXGpGWnUP9d4AjRIg=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 1BE5C8B80C;
 Thu, 19 Sep 2019 07:44:39 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id kqE2oHvK7TMH; Thu, 19 Sep 2019 07:44:39 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id C1DA68B783;
 Thu, 19 Sep 2019 07:44:36 +0200 (CEST)
Subject: Re: [PATCH] mm/pgtable/debug: Fix test validating architecture page
 table helpers
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1892b37d1fd9a4ed39e76c4b999b6556077201c0.1568355752.git.christophe.leroy@c-s.fr>
 <cb338e2e-23b1-b8af-811c-57feb6f4e7b4@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <cc28ebaf-4167-6bc7-54a7-630cd5ab827c@c-s.fr>
Date: Thu, 19 Sep 2019 07:44:36 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <cb338e2e-23b1-b8af-811c-57feb6f4e7b4@arm.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_224447_785495_E3CE38CC 
X-CRM114-Status: GOOD (  14.43  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-s390@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Vlastimil Babka <vbabka@suse.cz>, linux-snps-arc@lists.infradead.org,
 Kees Cook <keescook@chromium.org>, Mark Brown <broonie@kernel.org>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxOC8wOS8yMDE5IMOgIDA5OjMyLCBBbnNodW1hbiBLaGFuZHVhbCBhIMOpY3JpdMKgOgo+
IAo+IAo+IE9uIDA5LzEzLzIwMTkgMTE6NTMgQU0sIENocmlzdG9waGUgTGVyb3kgd3JvdGU6Cj4+
IEZpeCBidWlsZCBmYWlsdXJlIG9uIHBvd2VycGMuCj4+Cj4+IEZpeCBwcmVlbXB0aW9uIGltYmFs
YW5jZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0b3BoZS5s
ZXJveUBjLXMuZnI+Cj4+IC0tLQo+PiAgIG1tL2FyY2hfcGd0YWJsZV90ZXN0LmMgfCAzICsrKwo+
PiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL21t
L2FyY2hfcGd0YWJsZV90ZXN0LmMgYi9tbS9hcmNoX3BndGFibGVfdGVzdC5jCj4+IGluZGV4IDhi
NGE5Mjc1NmFkOC4uZjJiM2M5ZWMzNWZhIDEwMDY0NAo+PiAtLS0gYS9tbS9hcmNoX3BndGFibGVf
dGVzdC5jCj4+ICsrKyBiL21tL2FyY2hfcGd0YWJsZV90ZXN0LmMKPj4gQEAgLTI0LDYgKzI0LDcg
QEAKPj4gICAjaW5jbHVkZSA8bGludXgvc3dhcC5oPgo+PiAgICNpbmNsdWRlIDxsaW51eC9zd2Fw
b3BzLmg+Cj4+ICAgI2luY2x1ZGUgPGxpbnV4L3NjaGVkL21tLmg+Cj4+ICsjaW5jbHVkZSA8bGlu
dXgvaGlnaG1lbS5oPgo+PiAgICNpbmNsdWRlIDxhc20vcGdhbGxvYy5oPgo+PiAgICNpbmNsdWRl
IDxhc20vcGd0YWJsZS5oPgo+PiAgIAo+PiBAQCAtNDAwLDYgKzQwMSw4IEBAIHN0YXRpYyBpbnQg
X19pbml0IGFyY2hfcGd0YWJsZV90ZXN0c19pbml0KHZvaWQpCj4+ICAgCXA0ZF9jbGVhcl90ZXN0
cyhwNGRwKTsKPj4gICAJcGdkX2NsZWFyX3Rlc3RzKG1tLCBwZ2RwKTsKPj4gICAKPj4gKwlwdGVf
dW5tYXAocHRlcCk7Cj4+ICsKPj4gICAJcG1kX3BvcHVsYXRlX3Rlc3RzKG1tLCBwbWRwLCBzYXZl
ZF9wdGVwKTsKPj4gICAJcHVkX3BvcHVsYXRlX3Rlc3RzKG1tLCBwdWRwLCBzYXZlZF9wbWRwKTsK
Pj4gICAJcDRkX3BvcHVsYXRlX3Rlc3RzKG1tLCBwNGRwLCBzYXZlZF9wdWRwKTsKPj4KPiAKPiBI
ZWxsbyBDaHJpc3RvcGhlLAo+IAo+IEkgYW0gcGxhbm5pbmcgdG8gZm9sZCB0aGlzIGZpeCBpbnRv
IHRoZSBjdXJyZW50IHBhdGNoIGFuZCByZXRhaW4geW91cgo+IFNpZ25lZC1vZmYtYnkuIEFyZSB5
b3Ugb2theSB3aXRoIGl0ID8KPiAKCk5vIHByb2JsZW0sIGRvIHdoYXRldmVyIGlzIGNvbnZlbmll
bnQgZm9yIHlvdS4gWW91IGNhbiBrZWVwIHRoZSAKc2lnbmVkLW9mZi1ieSwgb3IgdXNlIHRlc3Rl
ZC1ieTogYXMgSSB0ZXN0ZWQgaXQgb24gUFBDMzIuCgpDaHJpc3RvcGhlCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
