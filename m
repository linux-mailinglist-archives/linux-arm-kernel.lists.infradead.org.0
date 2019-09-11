Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 886A6AF817
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 10:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cq2tpF+jcr+UV1zrAzt0ifrEZB3mlmheLSP221H6WkE=; b=J80VvvNuiUWHtg
	MoNPL+Y2Sctjw6XqgVK31w/MDf/DFZojluAfjPC2dThQ1EMAm9IKWqMlVl2QsIvHuIiGX24Goc5Xk
	P+WMn9CLszqeZUx6oH8YfIpBqYmRdL3K4zfw1PeNs5d9fpkA2wp5TM+lv14rOZZVExpbnKNbUbTbW
	0GIaFKNJWYB+U2BjW7bt7uLfxPK/fJAhm42V7kt5LA2nRkbH4OKuch6iNfFaFPJEA5gNX06gbJpUk
	+OpLwDo7LgVP7eFqZJy6+N9adxM242XqS1DHzicZt8pAt7wE+G/yeelK8b1wsRhrKghQjWGTEz9cn
	d+QH89zMeEr6tV6VGi+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7y7T-00039E-2l; Wed, 11 Sep 2019 08:36:55 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7y6b-00037M-GI
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 08:36:05 +0000
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com
 [209.85.222.51]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x8B8ZPvX011676
 for <linux-arm-kernel@lists.infradead.org>; Wed, 11 Sep 2019 17:35:26 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x8B8ZPvX011676
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1568190926;
 bh=UbX3WXF/x+Rp6FshhKSMSv77yFQt2MJQYXIacczcOm4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JG6jeoYkIoyz9hVMNylQov1lsadJ2Ymk3kcG9THkhfzDB8Qn8Od+1+s0ZZOcLUDVM
 1lB4XH1BOtZ/bgRDoPLV4+8XoCf+UMs0FreaCRdlnowCCLxHEMjx3nvcRB9HYWcIxF
 6n7GTRrARLGqFJneU1JbnQOG5+irb8BZOd50v9WAGuI4vt42irBbO3KLyfsT50YQhd
 PLLUp3iraO/oHZ0ZYjUCIthcBTkySj+/r4VE+J0nYpGDkm9GPtVkIsP0Ec3HUF6DSh
 V07P9LxtPMOQ5WcjjlLzkDLhJ3DRNPS1HFbW4DJwbhjuJdvVOVj1mpyC7nCnNJfxlw
 3XMVokxUZswJQ==
X-Nifty-SrcIP: [209.85.222.51]
Received: by mail-ua1-f51.google.com with SMTP id h23so6500440uao.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 01:35:25 -0700 (PDT)
X-Gm-Message-State: APjAAAUCUPGlFrPL5FcAxS+bKyhDh1eJvP02+5eP562G8B9yH0hMkbP7
 mfh68Qyh1TMdwySfSNVitfktzZAj77BB4im8kJw=
X-Google-Smtp-Source: APXvYqw2os4SpkKt9TYxK/NIhy5fZfjI/sZqp463uL6bUWD5LsVyITxvYtnxTtE218CqYv1VBusgmxJzlWgdcXn4jzs=
X-Received: by 2002:a9f:3f8a:: with SMTP id k10mr16907716uaj.121.1568190924800; 
 Wed, 11 Sep 2019 01:35:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190905054647.1235-1-james.tai@realtek.com>
 <CAK8P3a13=VBZnj6E=s7mZk0o7Q3XkMHgcsL12s-3psuOWsfOtQ@mail.gmail.com>
 <43B123F21A8CFE44A9641C099E4196FFCF8DA1D0@RTITMBSVM04.realtek.com.tw>
 <CAK8P3a39VrC1Xn+HZc5gvh1-nUYKywDGjTfO9WPCqim89WtGAg@mail.gmail.com>
In-Reply-To: <CAK8P3a39VrC1Xn+HZc5gvh1-nUYKywDGjTfO9WPCqim89WtGAg@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 11 Sep 2019 17:34:48 +0900
X-Gmail-Original-Message-ID: <CAK7LNATpbAMGU1u6T_1tX57mHbCR-57q+kDwXMOHAJ2R5kvfrg@mail.gmail.com>
Message-ID: <CAK7LNATpbAMGU1u6T_1tX57mHbCR-57q+kDwXMOHAJ2R5kvfrg@mail.gmail.com>
Subject: Re: [PATCH] ARM: Add support for Realtek SOC
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_013602_121164_EEAC29E5 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 =?UTF-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?= <cy.huang@realtek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Phinex Hung <phinex@realtek.com>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Thierry Reding <treding@nvidia.com>,
 "jamestai.sky@gmail.com" <jamestai.sky@gmail.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?B?SmFtZXMgVGFpW+aItOW/l+WzsF0=?= <james.tai@realtek.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Nicolas Pitre <nico@fluxnic.net>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBTZXAgMTEsIDIwMTkgYXQgNToxNyBQTSBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRi
LmRlPiB3cm90ZToKPgo+IE9uIFdlZCwgU2VwIDExLCAyMDE5IGF0IDk6NDYgQU0gSmFtZXMgVGFp
W+aItOW/l+WzsF0gPGphbWVzLnRhaUByZWFsdGVrLmNvbT4gd3JvdGU6Cj4gPiA+IFN1YmplY3Q6
IFJlOiBbUEFUQ0hdIEFSTTogQWRkIHN1cHBvcnQgZm9yIFJlYWx0ZWsgU09DCj4KPiA+ID4gPiBA
QCAtMTQ4LDYgKzE0OCw3IEBAIGVuZGlmCj4gPiA+ID4gIHRleHRvZnMtJChDT05GSUdfQVJDSF9N
U004WDYwKSA6PSAweDAwMjA4MDAwCj4gPiA+ID4gIHRleHRvZnMtJChDT05GSUdfQVJDSF9NU004
OTYwKSA6PSAweDAwMjA4MDAwCj4gPiA+ID4gIHRleHRvZnMtJChDT05GSUdfQVJDSF9NRVNPTikg
Oj0gMHgwMDIwODAwMAo+ID4gPiA+ICt0ZXh0b2ZzLSQoQ09ORklHX0FSQ0hfUkVBTFRFSykgOj0g
MHgwMDIwODAwMAo+ID4gPiA+ICB0ZXh0b2ZzLSQoQ09ORklHX0FSQ0hfQVhYSUEpIDo9IDB4MDAz
MDgwMDAKPiA+ID4KPiA+ID4gQ2FuIHlvdSBleHBsYWluIHdoeSB0aGlzIGlzIG5lZWRlZCBmb3Ig
eW91ciBwbGF0Zm9ybT8KPiA+ID4KPiA+IFdlIG5lZWQgdG8gcmVzZXJ2ZSBtZW1vcnkgKDB4MDAw
MDAwMDAgfiAweDAwMUIwMDAwKSBmb3Igcm9tIGFuZCBib290IGNvZGUuCj4KPiBPay4KCgpJIGRv
IG5vdCBsaWtlIHRoaXMgbXVjaC4KClRoaXMgcGxhdGZvcm0gaXMgQVJDSF9NVUxUSV9WNy4KCkFS
TV9QQVRDSF9QSFlTX1ZJUlQgYWxsb3dzIHlvdSB0byBwbGFjZSB0aGUga2VybmVsIGltYWdlCmFu
eXdoZXJlIGluIG1lbW9yeSBhcyBsb25nIGFzIHRoZSBiYXNlIGlzIGFsaWduZWQgYXQgMTZNQi4K
ClRoZSBtaW5pbXVtICd0ZXh0b2ZzLXkgOj0gMHgwMDA4MDAwJyArIGV4dHJhIDE2TUIgb2Zmc2V0
CndpbGwgY3JlYXRlIGEgc3BhY2UgKDB4MDAwMDAwMDAgfiAweDAxMDA4MDAwKS4KClRoaXMgaXMg
bW9yZSB0aGFuIG5lZWRlZCwgYnV0IGl0IGlzIG5vdCBhIGJpZyBkZWFsCnRvIHdhc3RlIHNvbWUg
bWVnYWJ5dGVzIG9mIG1lbW9yeS4KCgotLSAKQmVzdCBSZWdhcmRzCk1hc2FoaXJvIFlhbWFkYQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
