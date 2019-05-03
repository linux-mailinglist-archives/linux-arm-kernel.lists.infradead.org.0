Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C451D12B9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 12:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XpJ0OnOQhUD7OO1MWFMOQGMFr4M+QIae/oMp+hF3lZw=; b=IvWuKRBWcIKR7/
	a9/TQNYXXWDkWZNkrfBcKiFw73WAyq1b8V1YkJQqFGsDDsBeHqfWJfQhhVJt2VmBpUqxKmqi/iqEr
	lwn6+wsS5fP8N9HKi3SLTGDVvL88hRRcf0+WWpiLKi/QI2+MJGjYElQKN7xZv/e0GPgEZjHo3RWuO
	4o6AQLaOYXJtzD447RbZ+3bwIR0NnhUpFPKGEb6aszv5Nc1IRVJrcTtTZU1XBdmHWI3LZgIWY6qB/
	vOColvUZ6HTkMGZVbdEJ1tkzvUnhBxG/PQ4aZAr3gcJwQraQkt05VhPh7WSqLvLB39qHahNJ9UQ+z
	mrZ+cfcmx4shdvlYnpPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMVZb-0005dF-Kd; Fri, 03 May 2019 10:37:47 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMVZT-0005ZC-JY; Fri, 03 May 2019 10:37:41 +0000
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com
 [209.85.217.50]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id x43AbBDC000304;
 Fri, 3 May 2019 19:37:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x43AbBDC000304
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1556879832;
 bh=nx8pRpSymsndYyxiLURa2CmLp1S0V3DIvOeXzS6J2dI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Z9DJFCMs9SiG0ydN+PixilbR52yYIyY2zfsPB4K9H9YDIZeaiO0+73EV37BI4dbKT
 RIwY8tmNwZeXEt9//bhIvkYWIhfW2IkzzH771aRBvscTu9GEHoQzcpjJ2/mceswuyA
 UoYtEVm+7rpwbX9TsIqHs2aB8WSYzGo289mkk2MluGxo+kQWlVOI55hY8Uc1/aDk5X
 VYekSVunoIfpqxu37gsIlPVBJYa9z5MOVA54gyFomljDwfKI1uhys53T6nwrTJ2nVq
 QylcF8PTyIHK9LgKR9vf+WBxHVRuogdZ50YluV2ZhEOzEo2Cd+9/7v8nhX6EqBk386
 v5ePSyPvmuTQQ==
X-Nifty-SrcIP: [209.85.217.50]
Received: by mail-vs1-f50.google.com with SMTP id y196so3269331vsc.10;
 Fri, 03 May 2019 03:37:12 -0700 (PDT)
X-Gm-Message-State: APjAAAUM7YoTiI6aSMYe7xM7x4LuElSDPWqbjkDskOEi7S9C9Gkk+13Z
 eQiHrvy0r5g7QHP5pa49b6OjtGgXBLcUGHtHYIk=
X-Google-Smtp-Source: APXvYqwW2Xu7GuqfKtmc5UNaxfQ7dLxglJaqeji2MUglK/C6WjCbAXsTf0Y6inBC5zIGxhOWML+vIGWkcTtVvMWlajs=
X-Received: by 2002:a67:ee98:: with SMTP id n24mr4943708vsp.155.1556879831230; 
 Fri, 03 May 2019 03:37:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190423034959.13525-1-yamada.masahiro@socionext.com>
 <20190423034959.13525-6-yamada.masahiro@socionext.com>
 <20190502161346.07c15187@xps13>
In-Reply-To: <20190502161346.07c15187@xps13>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 3 May 2019 19:36:35 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQH8v8_HG6-cytT4qe05W9iiYwEP1mud4zG2NxxYcFptQ@mail.gmail.com>
Message-ID: <CAK7LNAQH8v8_HG6-cytT4qe05W9iiYwEP1mud4zG2NxxYcFptQ@mail.gmail.com>
Subject: Re: [RESEND PATCH v3 05/11] mtd: rawnand: vf610_nfc: add initializer
 to avoid -Wmaybe-uninitialized
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_033739_899774_22AF10FE 
X-CRM114-Status: GOOD (  21.09  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>, Arnd Bergmann <arnd@arndb.de>,
 linux-s390 <linux-s390@vger.kernel.org>, Mathieu Malaterre <malat@debian.org>,
 X86 ML <x86@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-mips@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, linux-mtd <linux-mtd@lists.infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWlxdWVsLAoKT24gVGh1LCBNYXkgMiwgMjAxOSBhdCAxMToxNCBQTSBNaXF1ZWwgUmF5bmFs
IDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiB3cm90ZToKPgo+IEhpIE1hc2FoaXJvLAo+Cj4g
TWFzYWhpcm8gWWFtYWRhIDx5YW1hZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4gd3JvdGUgb24g
VHVlLCAyMyBBcHIKPiAyMDE5IDEyOjQ5OjUzICswOTAwOgo+Cj4gPiBUaGlzIHByZXBhcmVzIHRv
IG1vdmUgQ09ORklHX09QVElNSVpFX0lOTElOSU5HIGZyb20geDg2IHRvIGEgY29tbW9uCj4gPiBw
bGFjZS4gV2UgbmVlZCB0byBlbGltaW5hdGUgcG90ZW50aWFsIGlzc3VlcyBiZWZvcmVoYW5kLgo+
ID4KPiA+IEtidWlsZCB0ZXN0IHJvYm90IGhhcyBuZXZlciByZXBvcnRlZCAtV21heWJlLXVuaW5p
dGlhbGl6ZWQgd2FybmluZwo+ID4gZm9yIHRoaXMgcHJvYmFibHkgYmVjYXVzZSB2ZjYxMF9uZmNf
cnVuKCkgaXMgaW5saW5lZCBieSB0aGUgeDg2Cj4gPiBjb21waWxlcidzIGlubGluaW5nIGhldXJp
c3RpYy4KPiA+Cj4gPiBJZiBDT05GSUdfT1BUSU1JWkVfSU5MSU5JTkcgaXMgZW5hYmxlZCBmb3Ig
YSBkaWZmZXJlbnQgYXJjaGl0ZWN0dXJlCj4gPiBhbmQgdmY2MTBfbmZjX3J1bigpIGlzIG5vdCBp
bmxpbmVkLCB0aGUgZm9sbG93aW5nIHdhcm5pbmcgaXMgcmVwb3J0ZWQ6Cj4gPgo+ID4gZHJpdmVy
cy9tdGQvbmFuZC9yYXcvdmY2MTBfbmZjLmM6IEluIGZ1bmN0aW9uIOKAmHZmNjEwX25mY19jbWTi
gJk6Cj4gPiBkcml2ZXJzL210ZC9uYW5kL3Jhdy92ZjYxMF9uZmMuYzo0NTU6Mzogd2FybmluZzog
4oCYb2Zmc2V04oCZIG1heSBiZSB1c2VkIHVuaW5pdGlhbGl6ZWQgaW4gdGhpcyBmdW5jdGlvbiBb
LVdtYXliZS11bmluaXRpYWxpemVkXQo+ID4gICAgdmY2MTBfbmZjX3JkX2Zyb21fc3JhbShpbnN0
ci0+Y3R4LmRhdGEuYnVmLmluICsgb2Zmc2V0LAo+ID4gICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+ID4gICAgICAgICAgICAgbmZjLT5y
ZWdzICsgTkZDX01BSU5fQVJFQSgwKSArIG9mZnNldCwKPiA+ICAgICAgICAgICAgIH5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gPiAgICAgICAgICAgICB0cmZyX3N6LCAh
bmZjLT5kYXRhX2FjY2Vzcyk7Cj4gPiAgICAgICAgICAgICB+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn4KPgo+IElNSE8gdGhpcyBwYXRjaCBoYXMgbm8gZGVwZW5kZW5jaWVzIHdpdGggdGhpcyBz
ZXJpZXMuCgoKVGhpcyBwYXRjaCBpcyB0aGUgcHJlcmVxdWlzaXRlIGZvciAxMS8xMS4KaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzEwNjQ5NTkvCgoKV2l0aG91dCB0aGUg
Y29ycmVjdCBwYXRjaCBvcmRlciwKdGhlIGtidWlsZCB0ZXN0IHJvYm90IHJlcG9ydHMgdGhlIHdh
cm5pbmcuCgoKPiBXb3VsZCB5b3UgbWluZCBzZW5kaW5nIGl0IGFsb25lIHdpdGggdGhlIHByb3Bl
ciBGaXhlcyB0YWc/CgoKSSBkbyBub3QgdGhpbmsgRml4ZXMgaXMgbmVjZXNzYXJ5LgoKTm9ib2R5
IGhhcyBub3RpY2VkIHRoaXMgcG90ZW50aWFsIGlzc3VlIGJlZm9yZS4KV2l0aG91dCAxMS8xMSwg
cHJvYmFibHkgd2UgY2Fubm90IHJlcHJvZHVjZSB0aGlzIHdhcm5pbmcuCgoKQlRXLCB0aGlzIHNl
cmllcyBoYXMgYmVlbiBmb3IgYSB3aGlsZSBpbiBsaW51eC1uZXh0LgoKCj4KPiA+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBNYXNhaGlybyBZYW1hZGEgPHlhbWFkYS5tYXNhaGlyb0Bzb2Npb25leHQuY29t
Pgo+ID4gLS0tCj4gPgo+ID4gQ2hhbmdlcyBpbiB2MzogTm9uZQo+ID4gQ2hhbmdlcyBpbiB2MjoK
PiA+ICAgLSBzcGxpdCBpbnRvIGEgc2VwYXJhdGUgcGF0Y2gKPiA+Cj4gPiAgZHJpdmVycy9tdGQv
bmFuZC9yYXcvdmY2MTBfbmZjLmMgfCAyICstCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25h
bmQvcmF3L3ZmNjEwX25mYy5jIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvdmY2MTBfbmZjLmMKPiA+
IGluZGV4IGE2NjJjYTE5NzBlNS4uMTk3OTJkNzI1ZWMyIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy9tdGQvbmFuZC9yYXcvdmY2MTBfbmZjLmMKPiA+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3
L3ZmNjEwX25mYy5jCj4gPiBAQCAtMzY0LDcgKzM2NCw3IEBAIHN0YXRpYyBpbnQgdmY2MTBfbmZj
X2NtZChzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwLAo+ID4gIHsKPiA+ICAgICAgIGNvbnN0IHN0cnVj
dCBuYW5kX29wX2luc3RyICppbnN0cjsKPiA+ICAgICAgIHN0cnVjdCB2ZjYxMF9uZmMgKm5mYyA9
IGNoaXBfdG9fbmZjKGNoaXApOwo+ID4gLSAgICAgaW50IG9wX2lkID0gLTEsIHRyZnJfc3ogPSAw
LCBvZmZzZXQ7Cj4gPiArICAgICBpbnQgb3BfaWQgPSAtMSwgdHJmcl9zeiA9IDAsIG9mZnNldCA9
IDA7Cj4gPiAgICAgICB1MzIgY29sID0gMCwgcm93ID0gMCwgY21kMSA9IDAsIGNtZDIgPSAwLCBj
b2RlID0gMDsKPiA+ICAgICAgIGJvb2wgZm9yY2U4Yml0ID0gZmFsc2U7Cj4gPgo+Cj4gVGhhbmtz
LAo+IE1pcXXDqGwKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IExpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdAo+IGh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwoKCgotLQpC
ZXN0IFJlZ2FyZHMKCk1hc2FoaXJvIFlhbWFkYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
