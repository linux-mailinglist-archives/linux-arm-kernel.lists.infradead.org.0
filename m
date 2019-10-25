Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70866E4648
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ttSjvmn6vtASKJUBm4A5AgHTZ9z9Fvb3Megu/FECY0Y=; b=WYUVi4nJGykuiYi7n1a0HjIk6
	RYortuOkY7COkqVU9+/lnhae9EgFIQcwovdTneEawEEm8KVVoI9fXuRhuQuFuVVAAUwCTMRJTE9DH
	sh55LxYGkFBeIlRwSjCP4VMMLm9mXWzSrdJ5HPMFyZSFh+6YYOcqtOcj/nwV9L8agVj0DsGhOAMPu
	hIJFqnTfl//7N4KyOHmqSHUkkswuhESXrNVIY3qG6Yeql32mb9rSnossSk3wpR1OuCBQ3Fy3H86Zs
	+OAm2VnHZxZvp3wY6m/w4W1CnASWHKK7a4mopeWYEioImoUvdE1ETrCEhgE83maCDFvI8PRtbuK0a
	tZfYggAwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvLM-0000qR-55; Fri, 25 Oct 2019 08:53:12 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvL8-0000pu-O9; Fri, 25 Oct 2019 08:53:00 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 46zyYg6BYkz9vC0w;
 Fri, 25 Oct 2019 10:52:55 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=JXqe5sri; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 6HbhFbyFhM8v; Fri, 25 Oct 2019 10:52:55 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 46zyYg4vJdz9vC0r;
 Fri, 25 Oct 2019 10:52:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1571993575; bh=4oDjhDK0FsO59rFVGt7Y5o7o8C55+19qgM1BU+899t4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=JXqe5sriXNQaQXKes3qqbdy43NSrBpwRBpfMpDtkffnR5YWutoOVXs9BVvi7rzrMY
 QG68soKwprXrLgOAJa7ilqd/FXQFpMspM1kp2DJjaecMsPUGWDU22R2zojRhkImahW
 aYJ8xO9qWW+5AHxKxjlrTglXwCmCdHn/aPTlV1cw=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id B9A698B868;
 Fri, 25 Oct 2019 10:52:56 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id Z1aZY1cuISIS; Fri, 25 Oct 2019 10:52:56 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 7BC128B895;
 Fri, 25 Oct 2019 10:52:54 +0200 (CEST)
Subject: Re: [PATCH V7] mm/debug: Add tests validating architecture page table
 helpers
To: Anshuman Khandual <anshuman.khandual@arm.com>, Qian Cai <cai@lca.pw>
References: <ccdd4f7a-c7dc-ca10-d30c-0bc05c7136c7@arm.com>
 <69256008-2235-4AF1-A3BA-0146C82CCB93@lca.pw>
 <3cfec421-4006-4159-ca32-313ff5196ff9@c-s.fr>
 <763d58b4-f532-0bba-bf2b-71433ac514fb@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <d811622e-0d35-3bc6-9568-36abc1bee355@c-s.fr>
Date: Fri, 25 Oct 2019 10:52:54 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <763d58b4-f532-0bba-bf2b-71433ac514fb@arm.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_015259_078607_B638422C 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
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
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAyNS8xMC8yMDE5IMOgIDEwOjI0LCBBbnNodW1hbiBLaGFuZHVhbCBhIMOpY3JpdMKgOgo+
IAo+IAo+IE9uIDEwLzI1LzIwMTkgMTI6NDEgUE0sIENocmlzdG9waGUgTGVyb3kgd3JvdGU6Cj4+
Cj4+Cj4+IExlIDI1LzEwLzIwMTkgw6AgMDc6NTIsIFFpYW4gQ2FpIGEgw6ljcml0wqA6Cj4+Pgo+
Pj4KPj4+PiBPbiBPY3QgMjQsIDIwMTksIGF0IDExOjQ1IFBNLCBBbnNodW1hbiBLaGFuZHVhbCA8
QW5zaHVtYW4uS2hhbmR1YWxAYXJtLmNvbT4gd3JvdGU6Cj4+Pj4KPj4+PiBOb3RoaW5nIHNwZWNp
ZmljLiBCdXQganVzdCB0ZXN0ZWQgdGhpcyB3aXRoIHg4NiBkZWZjb25maWcgd2l0aCByZWxldmFu
dCBjb25maWdzCj4+Pj4gd2hpY2ggYXJlIHJlcXVpcmVkIGZvciB0aGlzIHRlc3QuIE5vdCBzdXJl
IGlmIGl0IGludm9sdmVkIFc9MS4KPj4+Cj4+PiBObywgaXQgd2lsbCBub3QuIEl0IG5lZWRzIHRv
IHJ1biBsaWtlLAo+Pj4KPj4+IG1ha2UgVz0xIC1qIDY0IDI+L3RtcC93YXJucwo+Pj4KPj4KPj4g
QXJlIHdlIHRhbGtpbmcgYWJvdXQgdGhpcyBwZWFjZSBvZiBjb2RlID8KPj4KPj4gK3N0YXRpYyB1
bnNpZ25lZCBsb25nIF9faW5pdCBnZXRfcmFuZG9tX3ZhZGRyKHZvaWQpCj4+ICt7Cj4+ICvCoMKg
wqAgdW5zaWduZWQgbG9uZyByYW5kb21fdmFkZHIsIHJhbmRvbV9wYWdlcywgdG90YWxfdXNlcl9w
YWdlczsKPj4gKwo+PiArwqDCoMKgIHRvdGFsX3VzZXJfcGFnZXMgPSAoVEFTS19TSVpFIC0gRklS
U1RfVVNFUl9BRERSRVNTKSAvIFBBR0VfU0laRTsKPj4gKwo+PiArwqDCoMKgIHJhbmRvbV9wYWdl
cyA9IGdldF9yYW5kb21fbG9uZygpICUgdG90YWxfdXNlcl9wYWdlczsKPj4gK8KgwqDCoCByYW5k
b21fdmFkZHIgPSBGSVJTVF9VU0VSX0FERFJFU1MgKyByYW5kb21fcGFnZXMgKiBQQUdFX1NJWkU7
Cj4+ICsKPj4gK8KgwqDCoCBXQVJOX09OKChyYW5kb21fdmFkZHIgPiBUQVNLX1NJWkUpIHx8Cj4+
ICvCoMKgwqDCoMKgwqDCoCAocmFuZG9tX3ZhZGRyIDwgRklSU1RfVVNFUl9BRERSRVNTKSk7Cj4+
ICvCoMKgwqAgcmV0dXJuIHJhbmRvbV92YWRkcjsKPj4gK30KPj4gKwo+Pgo+PiByYW1kb21fdmFk
ZHIgaXMgdW5zaWduZWQsCj4+IHJhbmRvbV9wYWdlcyBpcyB1bnNpZ25lZCBhbmQgbG93ZXIgdGhh
biB0b3RhbF91c2VyX3BhZ2VzCj4+Cj4+IFNvIHRoZSBtYXggdmFsdWUgcmFuZG9tX3ZhZGRyIGNh
biBnZXQgaXMgRklSU1RfVVNFUl9BRERSRVNTICsgKChUQVNLX1NJWkUgLSBGSVJTVF9VU0VSX0FE
RFJFU1MgLSAxKSAvIFBBR0VfU0laRSkgKiBQQUdFX1NJWkUgPSBUQVNLX1NJWkUgLSAxCj4+IEFu
ZCB0aGUgbWluIHZhbHVlIHJhbmRvbV92YWRkciBjYW4gZ2V0IGlzIEZJUlNUX1VTRVJfQUREUkVT
UyAodGhhdCdzIHdoZW4gcmFuZG9tX3BhZ2VzID0gMCkKPiAKPiBUaGF0J3MgcmlnaHQuCj4gCj4+
Cj4+IFNvIHRoZSBXQVJOX09OKCkgaXMganVzdCB1bm5lZWRlZCwgaXNuJ3QgaXQgPwo+IAo+IEl0
IGlzIGp1c3QgYSBzYW5pdHkgY2hlY2sgb24gcG9zc2libGUgdmFkZHIgdmFsdWVzIGJlZm9yZSBp
dCdzIGNvcnJlc3BvbmRpbmcKPiBwYWdlIHRhYmxlIG1hcHBpbmdzIGNvdWxkIGJlIGNyZWF0ZWQu
IElmIGl0J3Mgd29ydGggdG8gZHJvcCB0aGlzIGluIGZhdm9yIG9mCj4gYXZvaWRpbmcgdGhlc2Ug
dW53YW50ZWQgd2FybmluZyBtZXNzYWdlcyBvbiB4ODYsIHdpbGwgZ28gYWhlYWQgd2l0aCBpdCBh
cyBpdAo+IGlzIG5vdCBzdXBlciBpbXBvcnRhbnQuCj4gCgpCdXQgeW91IGFyZSBjaGVja2luZyB3
aGF0ID8gVGhhdCB0aGUgY29tcGlsZXIgZG9lcyBjYWxjdWxhdGlvbiBjb3JyZWN0bHkgCm9yIHdo
YXQgPwpBcyBtZW50aW9ubmVkIGp1c3QgYWJvdmUsIGJhc2VkIG9uIHRoZSBjYWxjdWxhdGlvbiBk
b25lLCB3aGF0IHlvdSBhcmUgCnRlc3RpbmcgY2Fubm90IGhhcHBlbiwgc28gSSdtIGhhdmluZyBh
IGhhcmQgdGltZSB1bmRlcnN0YW5kaW5nIHdoYXQga2luZCAKb2Ygc2FuaXR5IGNoZWNrIGl0IGNh
biBiZS4KCkNhbiB5b3UgZ2l2ZSBhbiBleGVtcGxlIG9mIGEgc2l0dWF0aW9uIHdoaWNoIGNvdWxk
IHRyaWdnZXIgdGhlIHdhcm5pbmcgPwoKQ2hyaXN0b3BoZQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
