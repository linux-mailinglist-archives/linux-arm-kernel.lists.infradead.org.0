Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D54F3D8D08
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 11:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RAwDvxUkrtL5qvJhQ9ezQpvesLkwlKIMA3hc1UgKqhY=; b=Dqne2OcsypAtcY
	x6cCKMCHTctt/PdLRJgGYi1b0EifMf2L8JqF9Uwq1SV/7kt7yV9AR+RBKKgk7r2fFr+KDJL7n1rao
	pHRsxjfuna9GYCjCPJhionDIGMihH94ypZnBkc/J1W7gdjyYEW/Ga5ooWiQvq62SVQLPKxe/XD9qI
	QaYasrCL1RuoCNWWhFrETmNH5cFc7M0ACo0Z6oxgcP0BF7UuFwW3P1dKvzLJHkSTWn3SR7Dz9vkwO
	Dlquv5YZHW+qJY9O9zTK+DBh2Okm+uz3UBtnkQ8j2ZKlgXqN1QbUXRJk5SsE947u3tAzPnX6UZTIE
	UNqVqECGNzLG0EMvEa6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKg0d-0001SK-7H; Wed, 16 Oct 2019 09:54:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKg0U-0001RD-91; Wed, 16 Oct 2019 09:54:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6076142F;
 Wed, 16 Oct 2019 02:54:11 -0700 (PDT)
Received: from [10.163.1.216] (unknown [10.163.1.216])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DD8023F6C4;
 Wed, 16 Oct 2019 02:53:56 -0700 (PDT)
Subject: Re: [PATCH V6 2/2] mm/debug: Add tests validating architecture page
 table helpers
To: Qian Cai <cai@lca.pw>, linux-mm@kvack.org
References: <1571131302-32290-1-git-send-email-anshuman.khandual@arm.com>
 <1571131302-32290-3-git-send-email-anshuman.khandual@arm.com>
 <1571162982.5937.42.camel@lca.pw>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <7cd03155-6713-3116-1e88-f81f84dd794f@arm.com>
Date: Wed, 16 Oct 2019 15:24:23 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1571162982.5937.42.camel@lca.pw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_025414_402471_ED3D6E81 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
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

CgpPbiAxMC8xNS8yMDE5IDExOjM5IFBNLCBRaWFuIENhaSB3cm90ZToKPiBPbiBUdWUsIDIwMTkt
MTAtMTUgYXQgMTQ6NTEgKzA1MzAsIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+PiArc3RhdGlj
IHVuc2lnbmVkIGxvbmcgX19pbml0IGdldF9yYW5kb21fdmFkZHIodm9pZCkKPj4gK3sKPj4gKwl1
bnNpZ25lZCBsb25nIHJhbmRvbV92YWRkciwgcmFuZG9tX3BhZ2VzLCB0b3RhbF91c2VyX3BhZ2Vz
Owo+PiArCj4+ICsJdG90YWxfdXNlcl9wYWdlcyA9IChUQVNLX1NJWkUgLSBGSVJTVF9VU0VSX0FE
RFJFU1MpIC8gUEFHRV9TSVpFOwo+PiArCj4+ICsJcmFuZG9tX3BhZ2VzID0gZ2V0X3JhbmRvbV9s
b25nKCkgJSB0b3RhbF91c2VyX3BhZ2VzOwo+PiArCXJhbmRvbV92YWRkciA9IEZJUlNUX1VTRVJf
QUREUkVTUyArIHJhbmRvbV9wYWdlcyAqIFBBR0VfU0laRTsKPj4gKwo+PiArCVdBUk5fT04ocmFu
ZG9tX3ZhZGRyID4gVEFTS19TSVpFKTsKPj4gKwlXQVJOX09OKHJhbmRvbV92YWRkciA8IEZJUlNU
X1VTRVJfQUREUkVTUyk7Cj4gCj4gSXQgd291bGQgYmUgbmljZSBpZiB0aGlzIHBhdGNoIGRvZXMg
bm90IGludHJvZHVjZSBhIG5ldyBXPTEgR0NDIHdhcm5pbmcgaGVyZSBvbgo+IHg4NiBiZWNhdXNl
IEZJUlNUX1VTRVJfQUREUkVTUyBpcyAwLCBhbmQgR0NDIHRoaW5rIHRoZSBjb2RlIGlzIGR1bWIg
YmVjYXVzZQo+ICJyYW5kb21fdmFkZHIiIGlzIHVuc2lnbmVkLAo+IAo+IEluIGZpbGUgaW5jbHVk
ZWQgZnJvbSAuL2FyY2gveDg2L2luY2x1ZGUvYXNtL2J1Zy5oOjgzLAo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBmcm9tIC4vaW5jbHVkZS9saW51eC9idWcuaDo1LAo+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmcm9tIC4vaW5jbHVkZS9saW51eC9tbWRlYnVn
Lmg6NSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZnJvbSAuL2luY2x1ZGUv
bGludXgvZ2ZwLmg6NSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZnJvbSBt
bS9kZWJ1Z192bV9wZ3RhYmxlLmM6MTM6Cj4gbW0vZGVidWdfdm1fcGd0YWJsZS5jOiBJbiBmdW5j
dGlvbiDigJhnZXRfcmFuZG9tX3ZhZGRy4oCZOgo+IG1tL2RlYnVnX3ZtX3BndGFibGUuYzozNTk6
MjM6IHdhcm5pbmc6IGNvbXBhcmlzb24gb2YgdW5zaWduZWQgZXhwcmVzc2lvbiA8IDAgaXMKPiBh
bHdheXMgZmFsc2UgWy1XdHlwZS1saW1pdHNdCj4gwqAgV0FSTl9PTihyYW5kb21fdmFkZHIgPCBG
SVJTVF9VU0VSX0FERFJFU1MpOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBeCj4gLi9pbmNsdWRlL2FzbS1nZW5lcmljL2J1Zy5oOjExMzoyNTogbm90ZTog
aW4gZGVmaW5pdGlvbiBvZiBtYWNybyDigJhXQVJOX09O4oCZCj4gwqAgaW50IF9fcmV0X3dhcm5f
b24gPSAhIShjb25kaXRpb24pO8KgwqDCoMKgXAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgXn5+fn5+fn5+CgpUaGUgdGVzdCBjaGVja3MgYWdhaW5z
dCBhbiBlcnJvbmVvdXMgdW5zaWduZWQgbG9uZyBvdmVyZmxvdyB3aGVuCkZJUlNUX1VTRVJfQURE
UkVTUyBpcyBub3QgMCBidXQgYSBwb3NpdGl2ZSBudW1iZXIuIFdvbmRlcmluZyBpZgp0aGUgY29t
cGlsZXIgd2lsbCBzdGlsbCBjb21wbGFpbiBpZiB3ZSBtZXJnZSBib3RoIHRoZSBXQVJOX09OKCkK
Y2hlY2tzIGFzIHx8IG9uIGEgc2luZ2xlIHN0YXRlbWVudC4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
