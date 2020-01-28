Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A718A14B00B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 08:04:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NAgSj7mpTlh3f4kuYyG14NpGP2rsVGhYKeAA9C7AJdE=; b=RS6bFDBBi6JJ4D
	0FF+M944Z9w/WWmUqsXzsOEneAY+59BUDjHtXoDRPqGZI7JXl4FHJESSCJzKQp57wEoDJAL8cuLVb
	pzUl31ji5hf/vURObQP+kGAZB2tDR+Zbnnwm2vdkKjx3GmvUiaE7M9Uw86v8KGNiUbQ0VREnvxlSJ
	A593cQDLbhutRnoOe59nQux86qrXu3MsFRbkyJURFwZFT+03dJfJAcFFtlzB/tuPBvUVZ517LRrcr
	fa5NXGWYYE8YK7DXTlkrg5AdT1po3qUN7bfGfEFsmmypEPAEYEcMaLXT0XsvqbC7aEunWTUpsZBJh
	nKeg10gR7vqSbGxYr+bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwKv2-0005t4-KH; Tue, 28 Jan 2020 07:04:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwKuo-0005rw-Qp; Tue, 28 Jan 2020 07:04:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A2F6331B;
 Mon, 27 Jan 2020 23:03:58 -0800 (PST)
Received: from [10.163.1.151] (unknown [10.163.1.151])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9A5A43F67D;
 Mon, 27 Jan 2020 23:07:21 -0800 (PST)
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
To: Qian Cai <cai@lca.pw>, Christophe Leroy <christophe.leroy@c-s.fr>
References: <115c187b-73ce-30b2-0694-999db1f2183b@c-s.fr>
 <F90DA0AA-4D27-4346-8D8D-D9A7871E2C07@lca.pw>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <ba5a836a-b594-f846-1734-71dcd5d089e6@arm.com>
Date: Tue, 28 Jan 2020 12:33:41 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <F90DA0AA-4D27-4346-8D8D-D9A7871E2C07@lca.pw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_230402_914257_B0923EEC 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwMS8yOC8yMDIwIDEyOjA2IFBNLCBRaWFuIENhaSB3cm90ZToKPiAKPiAKPj4gT24gSmFu
IDI4LCAyMDIwLCBhdCAxOjE3IEFNLCBDaHJpc3RvcGhlIExlcm95IDxjaHJpc3RvcGhlLmxlcm95
QGMtcy5mcj4gd3JvdGU6Cj4+Cj4+IEl0IGlzICdkZWZhdWx0IHknIHNvIHRoZXJlIGlzIG5vIG11
Y2ggcmlzayB0aGF0IGl0IGlzIGZvcmdvdHRlbiwgYXQgbGVhc3QgYWxsIHRlc3Qgc3VpdGVzIHJ1
biB3aXRoICdhbGx5ZXNfZGVmY29uZmlnJyB3aWxsIHRyaWdnZXIgdGhlIHRlc3QsIHNvIEkgdGhp
bmsgaXQgaXMgcmVhbGx5IGEgZ29vZCBmZWF0dXJlLgo+IAo+IFRoaXMgdGhpbmcgZGVwZW5kcyBv
biBERUJVR19WTSB3aGljaCBJIGRvbuKAmXQgc2VlIGl0IGlzIHNlbGVjdGVkIGJ5IGFueSBkZWZj
b25maWcuIEFtIEkgbWlzc2luZyBhbnl0aGluZz8KPiAKCidhbGx5ZXNjb25maWcnIG1ha2VzICdE
RUJVR19WTSA9IHknIHdoaWNoIGluIHR1cm4gd2lsbCBlbmFibGUgJ0RFQlVHX1ZNX1BHVEFCTEUg
PSB5JwpvbiBwbGF0Zm9ybXMgdGhhdCBzdWJzY3JpYmUgQVJDSF9IQVNfREVCVUdfVk1fUEdUQUJM
RS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
