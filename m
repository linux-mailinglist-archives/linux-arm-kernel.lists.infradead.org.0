Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 812EEE459E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:24:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YMZSZ6+pJQoXhhJxELavpQAs9hCgsboZYSHTlrx2t/w=; b=SUOCA8RmeY9HI4
	/5jfZ30NYL9/hlrrFBHEIPKvZnEqxeDadZ/kkp94NKAP4YDoAYxv8YFGbS4iz5eiPPu13SARAJCzu
	S/dLXWdeVqF+FZUXVxaPC0rC3emzUivf1QZQ3BzsK1sCJ0i1Vjprn8IsT9fAMw3f9RK75Iq96wllX
	j2HUxsLNUa78X9aKv0oOtISslhtRejGfXNWR2RWvBDYnyBfta0H6wYiYoG+P+3zI9tpylj+O4a+JE
	UjtYyDDMUttJMZfKdktuHn5lIwW9QOf0EhwQVpGQchH1cWGEdMJeFlX5Fj5XHAiY3K71VclR6jB/L
	gWsz90Cjwvgb8bbLrwBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNutO-0004Ar-Jy; Fri, 25 Oct 2019 08:24:18 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNutF-00047K-Op; Fri, 25 Oct 2019 08:24:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF61228;
 Fri, 25 Oct 2019 01:23:57 -0700 (PDT)
Received: from [10.162.41.137] (p8cg001049571a15.blr.arm.com [10.162.41.137])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 8D6FC3F718; Fri, 25 Oct 2019 01:23:44 -0700 (PDT)
Subject: Re: [PATCH V7] mm/debug: Add tests validating architecture page table
 helpers
To: Christophe Leroy <christophe.leroy@c-s.fr>, Qian Cai <cai@lca.pw>
References: <ccdd4f7a-c7dc-ca10-d30c-0bc05c7136c7@arm.com>
 <69256008-2235-4AF1-A3BA-0146C82CCB93@lca.pw>
 <3cfec421-4006-4159-ca32-313ff5196ff9@c-s.fr>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <763d58b4-f532-0bba-bf2b-71433ac514fb@arm.com>
Date: Fri, 25 Oct 2019 13:54:14 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <3cfec421-4006-4159-ca32-313ff5196ff9@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_012409_897037_573D5422 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMC8yNS8yMDE5IDEyOjQxIFBNLCBDaHJpc3RvcGhlIExlcm95IHdyb3RlOgo+IAo+IAo+
IExlIDI1LzEwLzIwMTkgw6AgMDc6NTIsIFFpYW4gQ2FpIGEgw6ljcml0wqA6Cj4+Cj4+Cj4+PiBP
biBPY3QgMjQsIDIwMTksIGF0IDExOjQ1IFBNLCBBbnNodW1hbiBLaGFuZHVhbCA8QW5zaHVtYW4u
S2hhbmR1YWxAYXJtLmNvbT4gd3JvdGU6Cj4+Pgo+Pj4gTm90aGluZyBzcGVjaWZpYy4gQnV0IGp1
c3QgdGVzdGVkIHRoaXMgd2l0aCB4ODYgZGVmY29uZmlnIHdpdGggcmVsZXZhbnQgY29uZmlncwo+
Pj4gd2hpY2ggYXJlIHJlcXVpcmVkIGZvciB0aGlzIHRlc3QuIE5vdCBzdXJlIGlmIGl0IGludm9s
dmVkIFc9MS4KPj4KPj4gTm8sIGl0IHdpbGwgbm90LiBJdCBuZWVkcyB0byBydW4gbGlrZSwKPj4K
Pj4gbWFrZSBXPTEgLWogNjQgMj4vdG1wL3dhcm5zCj4+Cj4gCj4gQXJlIHdlIHRhbGtpbmcgYWJv
dXQgdGhpcyBwZWFjZSBvZiBjb2RlID8KPiAKPiArc3RhdGljIHVuc2lnbmVkIGxvbmcgX19pbml0
IGdldF9yYW5kb21fdmFkZHIodm9pZCkKPiArewo+ICvCoMKgwqAgdW5zaWduZWQgbG9uZyByYW5k
b21fdmFkZHIsIHJhbmRvbV9wYWdlcywgdG90YWxfdXNlcl9wYWdlczsKPiArCj4gK8KgwqDCoCB0
b3RhbF91c2VyX3BhZ2VzID0gKFRBU0tfU0laRSAtIEZJUlNUX1VTRVJfQUREUkVTUykgLyBQQUdF
X1NJWkU7Cj4gKwo+ICvCoMKgwqAgcmFuZG9tX3BhZ2VzID0gZ2V0X3JhbmRvbV9sb25nKCkgJSB0
b3RhbF91c2VyX3BhZ2VzOwo+ICvCoMKgwqAgcmFuZG9tX3ZhZGRyID0gRklSU1RfVVNFUl9BRERS
RVNTICsgcmFuZG9tX3BhZ2VzICogUEFHRV9TSVpFOwo+ICsKPiArwqDCoMKgIFdBUk5fT04oKHJh
bmRvbV92YWRkciA+IFRBU0tfU0laRSkgfHwKPiArwqDCoMKgwqDCoMKgwqAgKHJhbmRvbV92YWRk
ciA8IEZJUlNUX1VTRVJfQUREUkVTUykpOwo+ICvCoMKgwqAgcmV0dXJuIHJhbmRvbV92YWRkcjsK
PiArfQo+ICsKPiAKPiByYW1kb21fdmFkZHIgaXMgdW5zaWduZWQsCj4gcmFuZG9tX3BhZ2VzIGlz
IHVuc2lnbmVkIGFuZCBsb3dlciB0aGFuIHRvdGFsX3VzZXJfcGFnZXMKPiAKPiBTbyB0aGUgbWF4
IHZhbHVlIHJhbmRvbV92YWRkciBjYW4gZ2V0IGlzIEZJUlNUX1VTRVJfQUREUkVTUyArICgoVEFT
S19TSVpFIC0gRklSU1RfVVNFUl9BRERSRVNTIC0gMSkgLyBQQUdFX1NJWkUpICogUEFHRV9TSVpF
ID0gVEFTS19TSVpFIC0gMQo+IEFuZCB0aGUgbWluIHZhbHVlIHJhbmRvbV92YWRkciBjYW4gZ2V0
IGlzIEZJUlNUX1VTRVJfQUREUkVTUyAodGhhdCdzIHdoZW4gcmFuZG9tX3BhZ2VzID0gMCkKClRo
YXQncyByaWdodC4KCj4gCj4gU28gdGhlIFdBUk5fT04oKSBpcyBqdXN0IHVubmVlZGVkLCBpc24n
dCBpdCA/CgpJdCBpcyBqdXN0IGEgc2FuaXR5IGNoZWNrIG9uIHBvc3NpYmxlIHZhZGRyIHZhbHVl
cyBiZWZvcmUgaXQncyBjb3JyZXNwb25kaW5nCnBhZ2UgdGFibGUgbWFwcGluZ3MgY291bGQgYmUg
Y3JlYXRlZC4gSWYgaXQncyB3b3J0aCB0byBkcm9wIHRoaXMgaW4gZmF2b3Igb2YKYXZvaWRpbmcg
dGhlc2UgdW53YW50ZWQgd2FybmluZyBtZXNzYWdlcyBvbiB4ODYsIHdpbGwgZ28gYWhlYWQgd2l0
aCBpdCBhcyBpdAppcyBub3Qgc3VwZXIgaW1wb3J0YW50LgoKPiAKPiBDaHJpc3RvcGhlCj4gCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
