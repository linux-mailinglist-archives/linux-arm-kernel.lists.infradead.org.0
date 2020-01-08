Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D240F134B7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 20:29:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pO1RlMkmRV3nHJqhSH5eVxsU2idT9gxUrZxaBfnmdkE=; b=ip5IZP9AbsMP8E
	fj3e6SZHp2xr1jW1HFf8AqM0P2a6IcCA5XspmqfU/UigPQO/FClDz+/79rTLp+1fJQt+SaSs+5ph0
	9tWKyB6BqYpVYVPEytKO+o2gcTk0/YgGG9U69AYy+wNxukPugCAf98+2KJFq4FN2ZonzSipmSvyE/
	WZ/AD5KtqFC9zSDRroW4QOc1q4LM84ZXwGeeNvJ/mr4BUvFGyrf10UAjuoa30d7V0c+eJuKX2LAaM
	TyG6kTlARUqQhA9T1SwqzWu1BklAo05OuN4mivjI9a8nhrHYD1p9fC2Jp9YFA3hlfcFe/yUSWZbSz
	CRimj2bkL6mx++EYnGFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipH1J-00085H-Mt; Wed, 08 Jan 2020 19:29:33 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipH1A-00084v-CK
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 19:29:26 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <logang@deltatee.com>)
 id 1ipH0r-0006vH-74; Wed, 08 Jan 2020 12:29:06 -0700
To: Dan Williams <dan.j.williams@intel.com>,
 David Hildenbrand <david@redhat.com>
References: <CAPcyv4hdpMs5om4_VrYUz98aWDJ9eRhj7WJr312Jwn6LCmAm9Q@mail.gmail.com>
 <5D5ED235-EB67-4072-8CCA-C046B7EC031C@redhat.com>
 <CAPcyv4jJgBm6rhLn2685HN3DnBKB1FO2ONXC1=Aftspu1hiqmA@mail.gmail.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <1786a855-de7e-f9f9-d9b1-9dbe081e7360@deltatee.com>
Date: Wed, 8 Jan 2020 12:29:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAPcyv4jJgBm6rhLn2685HN3DnBKB1FO2ONXC1=Aftspu1hiqmA@mail.gmail.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: ebadger@gigaio.com, peterz@infradead.org, luto@kernel.org,
 dave.hansen@linux.intel.com, bp@alien8.de, mingo@redhat.com,
 tglx@linutronix.de, benh@kernel.crashing.org, will@kernel.org,
 catalin.marinas@arm.com, hch@lst.de, akpm@linux-foundation.org,
 mhocko@kernel.org, linux-mm@kvack.org, platform-driver-x86@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-s390@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-ia64@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 david@redhat.com, dan.j.williams@intel.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/8] mm/memory_hotplug: Rename mhp_restrictions to
 mhp_modifiers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_112924_421602_05920EB9 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-s390 <linux-s390@vger.kernel.org>, Eric Badger <ebadger@gigaio.com>,
 linux-ia64@vger.kernel.org, Will Deacon <will@kernel.org>,
 Linux-sh <linux-sh@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 platform-driver-x86@vger.kernel.org, Linux MM <linux-mm@kvack.org>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Andy Lutomirski <luto@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Borislav Petkov <bp@alien8.de>, Andrew Morton <akpm@linux-foundation.org>,
 Michal Hocko <mhocko@kernel.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDIwLTAxLTA4IDEyOjEzIHAubS4sIERhbiBXaWxsaWFtcyB3cm90ZToKPiBPbiBXZWQs
IEphbiA4LCAyMDIwIGF0IDExOjA4IEFNIERhdmlkIEhpbGRlbmJyYW5kIDxkYXZpZEByZWRoYXQu
Y29tPiB3cm90ZToKPj4KPj4KPj4KPj4+IEFtIDA4LjAxLjIwMjAgdW0gMjA6MDAgc2NocmllYiBE
YW4gV2lsbGlhbXMgPGRhbi5qLndpbGxpYW1zQGludGVsLmNvbT46Cj4+Pgo+Pj4g77u/T24gV2Vk
LCBKYW4gOCwgMjAyMCBhdCA5OjE3IEFNIExvZ2FuIEd1bnRob3JwZSA8bG9nYW5nQGRlbHRhdGVl
LmNvbT4gd3JvdGU6Cj4+Pj4KPj4+Pgo+Pj4+Cj4+Pj4+IE9uIDIwMjAtMDEtMDggNToyOCBhLm0u
LCBEYXZpZCBIaWxkZW5icmFuZCB3cm90ZToKPj4+Pj4gT24gMDcuMDEuMjAgMjE6NTksIExvZ2Fu
IEd1bnRob3JwZSB3cm90ZToKPj4+Pj4+IFRoZSBtaHBfcmVzdHJpY3Rpb25zIHN0cnVjdCByZWFs
bHkgZG9lc24ndCBzcGVjaWZ5IGFueXRoaW5nIHJlc2VtYmxpbmcKPj4+Pj4+IGEgcmVzdHJpY3Rp
b24gYW55bW9yZSBzbyByZW5hbWUgaXQgdG8gYmUgbWhwX21vZGlmaWVycy4KPj4+Pj4KPj4+Pj4g
SSB3b25kZXIgaWYgc29tZXRoaW5nIGxpa2UgIm1ocF9wYXJhbXMiIHdvdWxkIGJlIGV2ZW4gYmV0
dGVyLiBJdCdzCj4+Pj4+IGVzc2VudGlhbGx5IGp1c3QgYSB3YXkgdG8gYXZvaWQgY2hhbmdpbmcg
Y2FsbCBjaGFpbnMgcm91Z2gtb3V0IGFsbCBhcmNocwo+Pj4+PiB3aGVuZXZlciB3ZSB3YW50IHRv
IGFkZCBhIG5ldyBwYXJhbWV0ZXIuCj4+Pj4KPj4+PiBTdXJlLCB0aGF0IGRvZXMgc291bmQgYSBi
aXQgbmljZXIgdG8gbWUuIEkgY2FuIGNoYW5nZSBpdCBmb3IgdjMuCj4+Pgo+Pj4gT2gsIEkgd2Fz
IGp1c3QgYWJvdXQgdG8gY2hpbWUgaW4gdG8gc3VwcG9ydCAibW9kaWZpZXJzIiBiZWNhdXNlIEkK
Pj4+IHdvdWxkIGV4cGVjdCBhbGwgcGFyYW1ldGVycyB0byBmb2xkZWQgaW50byBhICJwYXJhbXMi
IHN0cnVjdC4gVGhlCj4+PiBtb2RpZmllcnMgc2VlbSB0byBiZSBsaW1pdGVkIHRvIHRoZSBzZXQg
b2YgaXRlbXMgdGhhdCBhcmUgb25seQo+Pj4gY29uc2lkZXJlZCBpbiBhIG5vbi1kZWZhdWx0IC8g
ZXhwZXJ0IG1lbW9yeSBob3RwbHVnIHVzZSBjYXNlcy4KCj4+Cj4+IEl04oCYcyBhIHNldCBvZiBl
eHRlbmRlZCBwYXJhbWV0ZXJzIEnigJhkIHNheS4KCj4gU3VyZSwgd2UgY2FuIGNhbGwgdGhlbSAi
bWhwX3BhcmFtcyIgYW5kIGp1c3QgY2xhcmlmeSB0aGF0IHRoZXkgYXJlCj4gb3B0aW9uYWwgLyBl
eHRlbmRlZCBpbiB0aGUga2VybmVsLWRvYy4KCldlbGwgcGdwcm90IGlzbid0IGdvaW5nIHRvIGJl
IG9wdGlvbmFsLi4uIEJ1dCBJJ2xsIGFkZCBzb21ldGhpbmcgdG8gdGhlCmtlcm5lbF9kb2MuCgpM
b2dhbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
