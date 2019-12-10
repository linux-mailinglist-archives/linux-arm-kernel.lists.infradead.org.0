Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 947E0118098
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 07:40:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5eTe/wXjSPsYoISQ69UT5dUR9OqEdg9D9DURy5vNS5U=; b=EoWWepvYGWT69Xt0GCQSJpFHE
	myzbnbPJ68he2jzVMH92nGkt9ht1Z/Wk76x4tZIS9/i8Oan7I7L59cYHQOMGu6OGd1crGT8Jw+AKl
	gZtqkXmhbA3chxo/J3Bx7GpzEOGJw0R4mZtewXMGKYNim+UFWSYPNwS7DhWvBpviqcR4KxXWQebza
	FWa5CQ1vP6xbYoLZqTAIaVMaRSarNhdf8EexMNydcbU1TJ8wdy6NUuMSy9sZG09ItN6aWb7gL2aoI
	NO5IUJA+V3zU37rlI48KdAFZd1KBkvXQmOIXdSfMzlGrsq2Rbq2AHFG07EfmQNv+B6xFW3pGGvC0T
	mXPeu9KLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieZC5-0006al-2W; Tue, 10 Dec 2019 06:40:25 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieZBx-0006Zk-4J
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 06:40:18 +0000
Received: from localhost (mailhub1-ext [192.168.12.233])
 by localhost (Postfix) with ESMTP id 47X9RG3vN1z9vBn0;
 Tue, 10 Dec 2019 07:40:10 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=Ae6vJj2Y; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id XNdOmwdsKvbG; Tue, 10 Dec 2019 07:40:10 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47X9RG2WmWz9vBmy;
 Tue, 10 Dec 2019 07:40:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1575960010; bh=OwdtjKhxdr7/aZ16cXB8T6/F98lgPqZDHw00Knn9Q18=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=Ae6vJj2Y8WYNKVmpXMI+6jQcBhSLTkIfBqzUbe8oAXbhnuyUCLQr8P0oWN3n64lOf
 DoarF53cv0oiDeazv87m2+BnSgkEHi3Kn0QzrxRXJTKvn7AJlaxUMflb3RNqy0Eb8O
 07z4e15XGuVOUThOEVeLEr8fe/UK7iOxAqY3tnXI=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 1A7218B803;
 Tue, 10 Dec 2019 07:40:11 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id ITyi-BVxuytF; Tue, 10 Dec 2019 07:40:11 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 135468B802;
 Tue, 10 Dec 2019 07:40:10 +0100 (CET)
Subject: Re: [PATCH v2 2/4] kasan: use MAX_PTRS_PER_* for early shadow
To: Daniel Axtens <dja@axtens.net>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linuxppc-dev@lists.ozlabs.org,
 linux-s390@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kasan-dev@googlegroups.com, aneesh.kumar@linux.ibm.com, bsingharora@gmail.com
References: <20191210044714.27265-1-dja@axtens.net>
 <20191210044714.27265-3-dja@axtens.net>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <de333171-6697-aabc-70da-c9d593adfb08@c-s.fr>
Date: Tue, 10 Dec 2019 07:40:09 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191210044714.27265-3-dja@axtens.net>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_224017_467157_6E1CF867 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxMC8xMi8yMDE5IMOgIDA1OjQ3LCBEYW5pZWwgQXh0ZW5zIGEgw6ljcml0wqA6Cj4gVGhp
cyBoZWxwcyB3aXRoIHBvd2VycGMgc3VwcG9ydCwgYW5kIHNob3VsZCBoYXZlIG5vIGVmZmVjdCBv
bgo+IGFueXRoaW5nIGVsc2UuCgpBcyBleHBsYWluZWQgaW4gcHJldmlvdXMgcGF0Y2gsIHRoaXMg
cGF0Y2ggaXMgYmFzZWQgb24gTUFYX1BUUlNfUEVSX1B4eCAKZXhpc3RpbmcgZm9yIGV2ZXJ5IGFy
Y2ggdXNpbmcgS0FTQU4sIGFsbHRob3VnaHQgYWxsIGFyY2hlcyBidXQgcG93ZXJwYyAKd2lsbCBk
ZWZpbmUgaXQgYXMgUFRSU19QRVJfUHh4LgoKSSB0aGluayBpbnN0ZWFkIG9mIGZvcmNpbmcgYWxs
IGFyY2hlcyB0byBkZWZpbmUgdGhhdCB2YWx1ZSwganVzdCBkZWZpbmUgCmEgZmFsbGJhY2sgaW4g
a2FzYW4uaCAob3Igc29tZXdoZXJlIGVsc2UpIHdvdWxkIGhlbHAga2VlcGluZyB0aGUgY2hhbmdl
cyAKdG8gdGhlIG1pbmltdW0sIHNlZSBiZWxvdy4KCj4gCj4gU3VnZ2VzdGVkLWJ5OiBDaHJpc3Rv
cGhlIExlcm95IDxjaHJpc3RvcGhlLmxlcm95QGMtcy5mcj4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5p
ZWwgQXh0ZW5zIDxkamFAYXh0ZW5zLm5ldD4KPiAtLS0KPiAgIGluY2x1ZGUvbGludXgva2FzYW4u
aCB8IDYgKysrLS0tCj4gICBtbS9rYXNhbi9pbml0LmMgICAgICAgfCA2ICsrKy0tLQo+ICAgMiBm
aWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2luY2x1ZGUvbGludXgva2FzYW4uaCBiL2luY2x1ZGUvbGludXgva2FzYW4uaAo+IGlu
ZGV4IGUxOGZlNTQ5NjllOS4uZDJmMmE0ZmZjYjEyIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGlu
dXgva2FzYW4uaAo+ICsrKyBiL2luY2x1ZGUvbGludXgva2FzYW4uaAo+IEBAIC0xNSw5ICsxNSw5
IEBAIHN0cnVjdCB0YXNrX3N0cnVjdDsKPiAgICNpbmNsdWRlIDxhc20vcGd0YWJsZS5oPgoKQWRk
CgojaWZuZGVmIE1BWF9QVFJTX1BFUl9QVEUKI2RlZmluZSBNQVhfUFRSU19QRVJfUFRFIFBUUlNf
UEVSX1BURQojZW5kaWYKCiNpZm5kZWYgTUFYX1BUUlNfUEVSX1BNRAojZGVmaW5lIE1BWF9QVFJT
X1BFUl9QTUQgUFRSU19QRVJfUE1ECiNlbmRpZgoKI2lmbmRlZiBNQVhfUFRSU19QRVJfUFVECiNk
ZWZpbmUgTUFYX1BUUlNfUEVSX1BVRCBQVFJTX1BFUl9QVUQKI2VuZGlmCgojaWZuZGVmIE1BWF9Q
VFJTX1BFUl9QNEQKI2RlZmluZSBNQVhfUFRSU19QRVJfUDREIFBUUlNfUEVSX1A0RAojZW5kaWYK
CldpdGggdGhhdCB5b3UgZG9uJ3QgbmVlZCBwYXRjaCAxLgoKPiAgIAo+ICAgZXh0ZXJuIHVuc2ln
bmVkIGNoYXIga2FzYW5fZWFybHlfc2hhZG93X3BhZ2VbUEFHRV9TSVpFXTsKPiAtZXh0ZXJuIHB0
ZV90IGthc2FuX2Vhcmx5X3NoYWRvd19wdGVbUFRSU19QRVJfUFRFXTsKPiAtZXh0ZXJuIHBtZF90
IGthc2FuX2Vhcmx5X3NoYWRvd19wbWRbUFRSU19QRVJfUE1EXTsKPiAtZXh0ZXJuIHB1ZF90IGth
c2FuX2Vhcmx5X3NoYWRvd19wdWRbUFRSU19QRVJfUFVEXTsKPiArZXh0ZXJuIHB0ZV90IGthc2Fu
X2Vhcmx5X3NoYWRvd19wdGVbTUFYX1BUUlNfUEVSX1BURV07Cj4gK2V4dGVybiBwbWRfdCBrYXNh
bl9lYXJseV9zaGFkb3dfcG1kW01BWF9QVFJTX1BFUl9QTURdOwo+ICtleHRlcm4gcHVkX3Qga2Fz
YW5fZWFybHlfc2hhZG93X3B1ZFtNQVhfUFRSU19QRVJfUFVEXTsKPiAgIGV4dGVybiBwNGRfdCBr
YXNhbl9lYXJseV9zaGFkb3dfcDRkW01BWF9QVFJTX1BFUl9QNERdOwo+ICAgCj4gICBpbnQga2Fz
YW5fcG9wdWxhdGVfZWFybHlfc2hhZG93KGNvbnN0IHZvaWQgKnNoYWRvd19zdGFydCwKPiBkaWZm
IC0tZ2l0IGEvbW0va2FzYW4vaW5pdC5jIGIvbW0va2FzYW4vaW5pdC5jCj4gaW5kZXggY2U0NWM0
OTFlYmNkLi44YjU0YTk2ZDNiM2UgMTAwNjQ0Cj4gLS0tIGEvbW0va2FzYW4vaW5pdC5jCj4gKysr
IGIvbW0va2FzYW4vaW5pdC5jCj4gQEAgLTQ2LDcgKzQ2LDcgQEAgc3RhdGljIGlubGluZSBib29s
IGthc2FuX3A0ZF90YWJsZShwZ2RfdCBwZ2QpCj4gICB9Cj4gICAjZW5kaWYKPiAgICNpZiBDT05G
SUdfUEdUQUJMRV9MRVZFTFMgPiAzCj4gLXB1ZF90IGthc2FuX2Vhcmx5X3NoYWRvd19wdWRbUFRS
U19QRVJfUFVEXSBfX3BhZ2VfYWxpZ25lZF9ic3M7Cj4gK3B1ZF90IGthc2FuX2Vhcmx5X3NoYWRv
d19wdWRbTUFYX1BUUlNfUEVSX1BVRF0gX19wYWdlX2FsaWduZWRfYnNzOwo+ICAgc3RhdGljIGlu
bGluZSBib29sIGthc2FuX3B1ZF90YWJsZShwNGRfdCBwNGQpCj4gICB7Cj4gICAJcmV0dXJuIHA0
ZF9wYWdlKHA0ZCkgPT0gdmlydF90b19wYWdlKGxtX2FsaWFzKGthc2FuX2Vhcmx5X3NoYWRvd19w
dWQpKTsKPiBAQCAtNTgsNyArNTgsNyBAQCBzdGF0aWMgaW5saW5lIGJvb2wga2FzYW5fcHVkX3Rh
YmxlKHA0ZF90IHA0ZCkKPiAgIH0KPiAgICNlbmRpZgo+ICAgI2lmIENPTkZJR19QR1RBQkxFX0xF
VkVMUyA+IDIKPiAtcG1kX3Qga2FzYW5fZWFybHlfc2hhZG93X3BtZFtQVFJTX1BFUl9QTURdIF9f
cGFnZV9hbGlnbmVkX2JzczsKPiArcG1kX3Qga2FzYW5fZWFybHlfc2hhZG93X3BtZFtNQVhfUFRS
U19QRVJfUE1EXSBfX3BhZ2VfYWxpZ25lZF9ic3M7Cj4gICBzdGF0aWMgaW5saW5lIGJvb2wga2Fz
YW5fcG1kX3RhYmxlKHB1ZF90IHB1ZCkKPiAgIHsKPiAgIAlyZXR1cm4gcHVkX3BhZ2UocHVkKSA9
PSB2aXJ0X3RvX3BhZ2UobG1fYWxpYXMoa2FzYW5fZWFybHlfc2hhZG93X3BtZCkpOwo+IEBAIC02
OSw3ICs2OSw3IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBrYXNhbl9wbWRfdGFibGUocHVkX3QgcHVk
KQo+ICAgCXJldHVybiBmYWxzZTsKPiAgIH0KPiAgICNlbmRpZgo+IC1wdGVfdCBrYXNhbl9lYXJs
eV9zaGFkb3dfcHRlW1BUUlNfUEVSX1BURV0gX19wYWdlX2FsaWduZWRfYnNzOwo+ICtwdGVfdCBr
YXNhbl9lYXJseV9zaGFkb3dfcHRlW01BWF9QVFJTX1BFUl9QVEVdIF9fcGFnZV9hbGlnbmVkX2Jz
czsKPiAgIAo+ICAgc3RhdGljIGlubGluZSBib29sIGthc2FuX3B0ZV90YWJsZShwbWRfdCBwbWQp
Cj4gICB7Cj4gCgpDaHJpc3RvcGhlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
