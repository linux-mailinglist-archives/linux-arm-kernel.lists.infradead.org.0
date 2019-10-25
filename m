Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B27E43A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 08:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzrWuKXblXWcWR+2CfZn2NSheb8IhHJ0iQOEpr1bAI4=; b=jl1nRm+0ILbjBx
	cfmEOq1dgI6JDe1jXPCwBSefj5f93RzWU4Cxg16EYPVw9wduFYK6SDy8NSAPm1o8o+11CIBhofckh
	7GSilKYR2crVeOBX8Xg+/ZjKm6mp86XSktgsvsA7LJQ3C9QncaE2ZvKt1aMWdR4lLt+lHNU5tH+KO
	hfCDf4MN0lK/eY1xTWjmoCN5ns0PQD7RJgQG3+RhlLpCVw1PwZjC5joEVh4Ywqa3Psrd7f1qr6naW
	EYCWmoxjZ6lJqNSr5fYoQYt2sEVjjaqsIVc+tF7/3c/C/ETErdbsyQtj7euy/1dxWyI7xEDX5UQU6
	UrnjE9uNrZBQYf/JBHDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNtC0-0001Xe-Si; Fri, 25 Oct 2019 06:35:24 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNtBn-0000HI-L1; Fri, 25 Oct 2019 06:35:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB71328;
 Thu, 24 Oct 2019 23:34:58 -0700 (PDT)
Received: from [10.162.41.137] (p8cg001049571a15.blr.arm.com [10.162.41.137])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 2DD333F718; Thu, 24 Oct 2019 23:37:36 -0700 (PDT)
Subject: Re: [PATCH V7] mm/debug: Add tests validating architecture page table
 helpers
To: Qian Cai <cai@lca.pw>
References: <ccdd4f7a-c7dc-ca10-d30c-0bc05c7136c7@arm.com>
 <69256008-2235-4AF1-A3BA-0146C82CCB93@lca.pw>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <5ce5a76c-ea89-c2a1-6665-7d75bce5fb87@arm.com>
Date: Fri, 25 Oct 2019 12:05:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <69256008-2235-4AF1-A3BA-0146C82CCB93@lca.pw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_233511_782235_359DB586 
X-CRM114-Status: GOOD (  14.68  )
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
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Ingo Molnar <mingo@kernel.org>, Kees Cook <keescook@chromium.org>,
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
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMC8yNS8yMDE5IDExOjIyIEFNLCBRaWFuIENhaSB3cm90ZToKPiAKPiAKPj4gT24gT2N0
IDI0LCAyMDE5LCBhdCAxMTo0NSBQTSwgQW5zaHVtYW4gS2hhbmR1YWwgPEFuc2h1bWFuLktoYW5k
dWFsQGFybS5jb20+IHdyb3RlOgo+Pgo+PiBOb3RoaW5nIHNwZWNpZmljLiBCdXQganVzdCB0ZXN0
ZWQgdGhpcyB3aXRoIHg4NiBkZWZjb25maWcgd2l0aCByZWxldmFudCBjb25maWdzCj4+IHdoaWNo
IGFyZSByZXF1aXJlZCBmb3IgdGhpcyB0ZXN0LiBOb3Qgc3VyZSBpZiBpdCBpbnZvbHZlZCBXPTEu
Cj4gCj4gTm8sIGl0IHdpbGwgbm90LiBJdCBuZWVkcyB0byBydW4gbGlrZSwKPiAKPiBtYWtlIFc9
MSAtaiA2NCAyPi90bXAvd2FybnMKCkFoaCwgc28gd2UgZXhwbGljaXRseSBhc2sgZm9yIGl0LgoK
VW5mb3J0dW5hdGVseSBjb21waWxlciBzdGlsbCBmbGFncyBpdCBhcyBhbiB3YXJuaW5nLiBKdXN0
IHdvbmRlcmluZyB3aHkgdGhpcwppcyBzdGlsbCBhIHByb2JsZW0gaWYgdGhlIHNlY29uZCBjb25k
aXRpb24gZm9yIGFuIE9SIGV4cHJlc3Npb24gaXMgYWx3YXlzIGZhbHNlLgpCZWNhdXNlIGV2YWx1
YXRpb24gc3RpbGwgbmVlZHMgdG8gYmUgcGVyZm9ybWVkIGZvciB0aGUgZmlyc3QgY29uZGl0aW9u
IGFueXdheXMsCmJlZm9yZSBhcnJpdmluZyBhdCB0aGUgcmVzdWx0LgoKICBERVNDRU5EICBvYmp0
b29sCiAgQ0FMTCAgICBzY3JpcHRzL2F0b21pYy9jaGVjay1hdG9taWNzLnNoCiAgQ0FMTCAgICBz
Y3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gKICBDSEsgICAgIGluY2x1ZGUvZ2VuZXJhdGVkL2NvbXBp
bGUuaAogIENDICAgICAgbW0vZGVidWdfdm1fcGd0YWJsZS5vCkluIGZpbGUgaW5jbHVkZWQgZnJv
bSAuL2FyY2gveDg2L2luY2x1ZGUvYXNtL2J1Zy5oOjgzOjAsCiAgICAgICAgICAgICAgICAgZnJv
bSAuL2luY2x1ZGUvbGludXgvYnVnLmg6NSwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVk
ZS9saW51eC9tbWRlYnVnLmg6NSwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51
eC9nZnAuaDo1LAogICAgICAgICAgICAgICAgIGZyb20gbW0vZGVidWdfdm1fcGd0YWJsZS5jOjEz
OgptbS9kZWJ1Z192bV9wZ3RhYmxlLmM6IEluIGZ1bmN0aW9uIOKAmGdldF9yYW5kb21fdmFkZHLi
gJk6Cm1tL2RlYnVnX3ZtX3BndGFibGUuYzozMTQ6MTc6IHdhcm5pbmc6IGNvbXBhcmlzb24gb2Yg
dW5zaWduZWQgZXhwcmVzc2lvbiA8IDAgaXMgYWx3YXlzIGZhbHNlIFstV3R5cGUtbGltaXRzXQog
ICAocmFuZG9tX3ZhZGRyIDwgRklSU1RfVVNFUl9BRERSRVNTKSk7CiAgICAgICAgICAgICAgICAg
XgouL2luY2x1ZGUvYXNtLWdlbmVyaWMvYnVnLmg6MTEzOjI1OiBub3RlOiBpbiBkZWZpbml0aW9u
IG9mIG1hY3JvIOKAmFdBUk5fT07igJkKICBpbnQgX19yZXRfd2Fybl9vbiA9ICEhKGNvbmRpdGlv
bik7ICAgIFwKICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fgoKQXMgeW91IG1lbnRp
b25lZCBHQ0MgaXMgcXVpdGUgc3R1YmJvcm4gaGVyZS4gQW55d2F5cywgbGV0cyBrZWVwIGl0IHVu
Y2hhbmdlZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
