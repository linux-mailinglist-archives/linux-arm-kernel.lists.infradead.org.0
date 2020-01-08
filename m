Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5BA134B55
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 20:14:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dh2IeWWY20F3tY1HIR0ILXwpVc/ZGZ9MqS4HbOiBXT8=; b=revDEIgkWSc5lS
	GLADu8Nt2ios/IFbmZaBeBYcbeG2XR9W81tE82OyeelvyMnpKU7CShO02w5yJEZ+1LvvdGesL5i4h
	XhJvwwAkyyjIG49Gl2vCi9diYwFTCdK8ARRW4FRG107EtO7fSfcqIQVXCFoa4hqMOReuzwRcplq/B
	aBUGqCAPDcCATNpVKsiePLiAmRcEXVKmmLJOsIMX08ZFbcMVn3pPohgThROofz85pUWA1+t45EiTd
	AAw3qB43b9qPk3QVAkPY59bxXUOkYoMvFz0gCUCHTVvL959IU9glKdqQRO6xU+VlqBda1AlZJ6aqt
	ZkTgsRr2m7XyxHc7o0UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGmD-0002Z5-Md; Wed, 08 Jan 2020 19:13:57 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGm1-0002Xq-0j
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 19:13:51 +0000
Received: by mail-ot1-x343.google.com with SMTP id 66so4656760otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 11:13:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nwzT+0Ljs8ayMxiId4ILWJbQFwhi5ruplGd3VdIX3RM=;
 b=aXBKpkre4lcb7sMUk8RY7fqYF6hOlQVFhJATgnLjVCY7K15QLYyf7hixiIBa3HZVMC
 ExlCfpewfRpBKMlrL2bkTmYPm4CaGYlyL7tRjpgwgPPKYXDXxvC/+KRYGg7RVNI+Zch3
 OJDriIxWyOMcD19jmlVDHU8kJyYPULCFXFwxijHaC7h6OhkrZpOvqpN/E+KTL4l7U/4j
 xMaDx7uVFsBEhMyQ6lG95oYF9HfECFKNHuarmwK5/8nBEJr63/BKQtroqLrTIogIYeYL
 rpBX2fz3/DPf9u8qNUR4UvRqVBL+6fbPeQn8qT6bzEnk6MNhhgAhhL1sSxjlwCfUWh9O
 nRaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nwzT+0Ljs8ayMxiId4ILWJbQFwhi5ruplGd3VdIX3RM=;
 b=UCZd/CDzpjylwGs0lPuc71QOvZUxUqWLNVGdd5THID+mYf+9RNwfDiHFRp4TetxTGA
 RTe0xCrY1W7/IjjsfDmTZjLLYri4O/iKjCbsO2INm+/OUwOEENRisUdxwGFdJk09LTD1
 99yf7Ou7mQicNnscNTwSJ+PXPfxPayfRj/3MhoxjL1LHxic+ynze1dQeSRDqxRB/mfv5
 Lcx/AVSh7cynnwe0b44TJp81QP1cVbExZWKTLQJwcPHxh6XUK/EkrOEPN5ThevGPUrlp
 uzlwzIYObkQf8X4CBJ7V+1i70d888zJV2IDNMuffmgh82tsx7uevQDFeTzH3Zpbde3gw
 U9RA==
X-Gm-Message-State: APjAAAXrMeuy6p0kNHpUFYoNCQvl0rqUNYtXewKv5pdoxD+uEKG0ZAmX
 yQWgdkX5HuK4OEhW05cnembmSgzjP81V1Sg9PgbwqQ==
X-Google-Smtp-Source: APXvYqyvspS0KBUPu+LfGCtgbi8xLvL1j8+dWGl+2876Wfu60VTn5s+jGWcdaAy33x3gyVzhze0VmNrhk5SnuXfeXQA=
X-Received: by 2002:a9d:68d3:: with SMTP id i19mr4986153oto.71.1578510824036; 
 Wed, 08 Jan 2020 11:13:44 -0800 (PST)
MIME-Version: 1.0
References: <CAPcyv4hdpMs5om4_VrYUz98aWDJ9eRhj7WJr312Jwn6LCmAm9Q@mail.gmail.com>
 <5D5ED235-EB67-4072-8CCA-C046B7EC031C@redhat.com>
In-Reply-To: <5D5ED235-EB67-4072-8CCA-C046B7EC031C@redhat.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 8 Jan 2020 11:13:33 -0800
Message-ID: <CAPcyv4jJgBm6rhLn2685HN3DnBKB1FO2ONXC1=Aftspu1hiqmA@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] mm/memory_hotplug: Rename mhp_restrictions to
 mhp_modifiers
To: David Hildenbrand <david@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_111345_057599_27A28E64 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-ia64@vger.kernel.org, Linux-sh <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, platform-driver-x86@vger.kernel.org,
 Linux MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-s390 <linux-s390@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Michal Hocko <mhocko@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Eric Badger <ebadger@gigaio.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKYW4gOCwgMjAyMCBhdCAxMTowOCBBTSBEYXZpZCBIaWxkZW5icmFuZCA8ZGF2aWRA
cmVkaGF0LmNvbT4gd3JvdGU6Cj4KPgo+Cj4gPiBBbSAwOC4wMS4yMDIwIHVtIDIwOjAwIHNjaHJp
ZWIgRGFuIFdpbGxpYW1zIDxkYW4uai53aWxsaWFtc0BpbnRlbC5jb20+Ogo+ID4KPiA+IO+7v09u
IFdlZCwgSmFuIDgsIDIwMjAgYXQgOToxNyBBTSBMb2dhbiBHdW50aG9ycGUgPGxvZ2FuZ0BkZWx0
YXRlZS5jb20+IHdyb3RlOgo+ID4+Cj4gPj4KPiA+Pgo+ID4+PiBPbiAyMDIwLTAxLTA4IDU6Mjgg
YS5tLiwgRGF2aWQgSGlsZGVuYnJhbmQgd3JvdGU6Cj4gPj4+IE9uIDA3LjAxLjIwIDIxOjU5LCBM
b2dhbiBHdW50aG9ycGUgd3JvdGU6Cj4gPj4+PiBUaGUgbWhwX3Jlc3RyaWN0aW9ucyBzdHJ1Y3Qg
cmVhbGx5IGRvZXNuJ3Qgc3BlY2lmeSBhbnl0aGluZyByZXNlbWJsaW5nCj4gPj4+PiBhIHJlc3Ry
aWN0aW9uIGFueW1vcmUgc28gcmVuYW1lIGl0IHRvIGJlIG1ocF9tb2RpZmllcnMuCj4gPj4+Cj4g
Pj4+IEkgd29uZGVyIGlmIHNvbWV0aGluZyBsaWtlICJtaHBfcGFyYW1zIiB3b3VsZCBiZSBldmVu
IGJldHRlci4gSXQncwo+ID4+PiBlc3NlbnRpYWxseSBqdXN0IGEgd2F5IHRvIGF2b2lkIGNoYW5n
aW5nIGNhbGwgY2hhaW5zIHJvdWdoLW91dCBhbGwgYXJjaHMKPiA+Pj4gd2hlbmV2ZXIgd2Ugd2Fu
dCB0byBhZGQgYSBuZXcgcGFyYW1ldGVyLgo+ID4+Cj4gPj4gU3VyZSwgdGhhdCBkb2VzIHNvdW5k
IGEgYml0IG5pY2VyIHRvIG1lLiBJIGNhbiBjaGFuZ2UgaXQgZm9yIHYzLgo+ID4KPiA+IE9oLCBJ
IHdhcyBqdXN0IGFib3V0IHRvIGNoaW1lIGluIHRvIHN1cHBvcnQgIm1vZGlmaWVycyIgYmVjYXVz
ZSBJCj4gPiB3b3VsZCBleHBlY3QgYWxsIHBhcmFtZXRlcnMgdG8gZm9sZGVkIGludG8gYSAicGFy
YW1zIiBzdHJ1Y3QuIFRoZQo+ID4gbW9kaWZpZXJzIHNlZW0gdG8gYmUgbGltaXRlZCB0byB0aGUg
c2V0IG9mIGl0ZW1zIHRoYXQgYXJlIG9ubHkKPiA+IGNvbnNpZGVyZWQgaW4gYSBub24tZGVmYXVs
dCAvIGV4cGVydCBtZW1vcnkgaG90cGx1ZyB1c2UgY2FzZXMuCj4gPgo+Cj4gSXTigJhzIGEgc2V0
IG9mIGV4dGVuZGVkIHBhcmFtZXRlcnMgSeKAmGQgc2F5LgoKU3VyZSwgd2UgY2FuIGNhbGwgdGhl
bSAibWhwX3BhcmFtcyIgYW5kIGp1c3QgY2xhcmlmeSB0aGF0IHRoZXkgYXJlCm9wdGlvbmFsIC8g
ZXh0ZW5kZWQgaW4gdGhlIGtlcm5lbC1kb2MuCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
