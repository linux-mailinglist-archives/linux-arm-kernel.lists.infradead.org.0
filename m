Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CD2E29FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 07:35:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2eCPRhH9yx1QptyD/D7DSazhL+pSU47Nvw5hup6jdl4=; b=c07ED5RL+74y0/
	eY68jDHDAKCb+HYULG8aB4yscOMLkIt9lgAX4LaAo39QSQAItJEuxqmkp8JWKg85bm8MT8GcNA2Z+
	ihQ3396+N9HJMsmGrTDVWS+AYw8iPAcZMZ3SofLvYuUwrcXQ6neJeligXc+J8g9xsVDq5D2/Kfk63
	kAAaLSZhrxd3kSB6EQKOZYoXry9/XBBelcTQTUhplrIkQp3GzSZuWTZSPeWRHx0NkVBciXllD5cXu
	K7suhkayQvm5RpP9ybVyxyugjRpuSCQxTCugFX3mA62f6PSS118U51/6R4x6vEwruoyqXN3xtj/Zd
	yEtdKAZHzhIkF+ODbZSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNVmu-0005NV-2Q; Thu, 24 Oct 2019 05:35:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNVmk-0005Mw-Au; Thu, 24 Oct 2019 05:35:48 +0000
Received: from rapoport-lnx (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B28CB21655;
 Thu, 24 Oct 2019 05:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571895345;
 bh=HtXRJiY7E2WBnhLRCrWIVwj9zwzEbWwIp+kCGNGU0Vg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tpPSOqsLnoWaoVDB4h50UjvklrLgrRrHwG3rkhRndGIgW8V6sc9hNTf4UN34hFwxd
 EDlIQgRgR2JO3vRsExo5akPfc8ur10rMzq+eFhkh9/wE3wVVi86wgylxz9wN3JsIOW
 jZczc3/Wgo5n0bXYOQjP4NRTDpq4bC2/PUFWinU8=
Date: Thu, 24 Oct 2019 08:35:34 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: Re: [PATCH 04/12] m68k: nommu: use pgtable-nopud instead of
 4level-fixup
Message-ID: <20191024053533.GA12281@rapoport-lnx>
References: <1571822941-29776-1-git-send-email-rppt@kernel.org>
 <1571822941-29776-5-git-send-email-rppt@kernel.org>
 <de03a882-fb1a-455c-7c60-84ab0c4f9674@linux-m68k.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <de03a882-fb1a-455c-7c60-84ab0c4f9674@linux-m68k.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_223546_416575_F1A24B73 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 linux-mm@kvack.org, sparclinux@vger.kernel.org,
 Vincent Chen <deanbo422@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Jeff Dike <jdike@addtoit.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-alpha@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3JlZywKCk9uIFRodSwgT2N0IDI0LCAyMDE5IGF0IDAyOjA5OjAxUE0gKzEwMDAsIEdyZWcg
VW5nZXJlciB3cm90ZToKPiBIaSBNaWtlLAo+IAo+IE9uIDIzLzEwLzE5IDc6MjggcG0sIE1pa2Ug
UmFwb3BvcnQgd3JvdGU6Cj4gPkZyb206IE1pa2UgUmFwb3BvcnQgPHJwcHRAbGludXguaWJtLmNv
bT4KPiA+Cj4gPlRoZSBnZW5lcmljIG5vbW11IGltcGxlbWVudGF0aW9uIG9mIHBhZ2UgdGFibGUg
bWFuaXB1bGF0aW9uIHRha2VzIGNhcmUgb2YKPiA+Zm9sZGluZyBvZiB0aGUgdXBwZXIgbGV2ZWxz
IGFuZCBkb2VzIG5vdCByZXF1aXJlIGZpeHVwcy4KPiA+Cj4gPlNpbXBseSByZXBsYWNlIG9mIGlu
Y2x1ZGUvYXNtLWdlbmVyaWMvNGxldmVsLWZpeHVwLmggd2l0aAo+ID5pbmNsdWRlL2FzbS1nZW5l
cmljL3BndGFibGUtbm9wdWQuaC4KPiA+Cj4gPlNpZ25lZC1vZmYtYnk6IE1pa2UgUmFwb3BvcnQg
PHJwcHRAbGludXguaWJtLmNvbT4KPiA+LS0tCj4gPiAgYXJjaC9tNjhrL2luY2x1ZGUvYXNtL3Bn
dGFibGVfbm8uaCB8IDIgKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKPiA+Cj4gPmRpZmYgLS1naXQgYS9hcmNoL202OGsvaW5jbHVkZS9hc20vcGd0
YWJsZV9uby5oIGIvYXJjaC9tNjhrL2luY2x1ZGUvYXNtL3BndGFibGVfbm8uaAo+ID5pbmRleCBj
MTgxNjViLi5jY2M0NTY4IDEwMDY0NAo+ID4tLS0gYS9hcmNoL202OGsvaW5jbHVkZS9hc20vcGd0
YWJsZV9uby5oCj4gPisrKyBiL2FyY2gvbTY4ay9pbmNsdWRlL2FzbS9wZ3RhYmxlX25vLmgKPiA+
QEAgLTIsNyArMiw3IEBACj4gPiAgI2lmbmRlZiBfTTY4S05PTU1VX1BHVEFCTEVfSAo+ID4gICNk
ZWZpbmUgX002OEtOT01NVV9QR1RBQkxFX0gKPiA+LSNpbmNsdWRlIDxhc20tZ2VuZXJpYy80bGV2
ZWwtZml4dXAuaD4KPiA+KyNpbmNsdWRlIDxhc20tZ2VuZXJpYy9wZ3RhYmxlLW5vcHVkLmg+Cj4g
PiAgLyoKPiA+ICAgKiAoQykgQ29weXJpZ2h0IDIwMDAtMjAwMiwgR3JlZyBVbmdlcmVyIDxnZXJn
QHNuYXBnZWFyLmNvbT4KPiAKPiBUaGlzIGZhaWxzIHRvIGNvbXBpbGUgZm9yIG1lICh0YXJnZXRp
bmcgbTUyMDhldmJfZGVmY29uZmlnKToKPiAKPiAgIENDICAgICAgaW5pdC9tYWluLm8KPiBJbiBm
aWxlIGluY2x1ZGVkIGZyb20gLi9hcmNoL202OGsvaW5jbHVkZS9hc20vcGd0YWJsZV9uby5oOjU2
OjAsCj4gICAgICAgICAgICAgICAgICBmcm9tIC4vYXJjaC9tNjhrL2luY2x1ZGUvYXNtL3BndGFi
bGUuaDozLAo+ICAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvbW0uaDo5OSwK
PiAgICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L3JpbmdfYnVmZmVyLmg6NSwK
PiAgICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L3RyYWNlX2V2ZW50cy5oOjYs
Cj4gICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS90cmFjZS9zeXNjYWxsLmg6NywKPiAg
ICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L3N5c2NhbGxzLmg6ODUsCj4gICAg
ICAgICAgICAgICAgICBmcm9tIGluaXQvbWFpbi5jOjIxOgo+IC4vaW5jbHVkZS9hc20tZ2VuZXJp
Yy9wZ3RhYmxlLmg6NzM4OjM0OiBlcnJvcjogdW5rbm93biB0eXBlIG5hbWUg4oCYcG1kX3TigJkK
PiAgc3RhdGljIGlubGluZSBpbnQgcG1kX3NvZnRfZGlydHkocG1kX3QgcG1kKQo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBeCgouLi4KCj4gc2NyaXB0cy9NYWtlZmlsZS5idWls
ZDoyNjU6IHJlY2lwZSBmb3IgdGFyZ2V0ICdpbml0L21haW4ubycgZmFpbGVkCj4gbWFrZVsxXTog
KioqIFtpbml0L21haW4ub10gRXJyb3IgMQo+IE1ha2VmaWxlOjE2NDk6IHJlY2lwZSBmb3IgdGFy
Z2V0ICdpbml0JyBmYWlsZWQKPiBtYWtlOiAqKiogW2luaXRdIEVycm9yIDIKClRoZSBodW5rIGJl
bG93IGZpeGVzIHRoZSBidWlsZC4KCmRpZmYgLS1naXQgYS9hcmNoL202OGsvaW5jbHVkZS9hc20v
cGFnZS5oIGIvYXJjaC9tNjhrL2luY2x1ZGUvYXNtL3BhZ2UuaAppbmRleCBjMDBiNjdhLi4wNWUx
ZTFlIDEwMDY0NAotLS0gYS9hcmNoL202OGsvaW5jbHVkZS9hc20vcGFnZS5oCisrKyBiL2FyY2gv
bTY4ay9pbmNsdWRlL2FzbS9wYWdlLmgKQEAgLTIxLDcgKzIxLDcgQEAKIC8qCiAgKiBUaGVzZSBh
cmUgdXNlZCB0byBtYWtlIHVzZSBvZiBDIHR5cGUtY2hlY2tpbmcuLgogICovCi0jaWYgQ09ORklH
X1BHVEFCTEVfTEVWRUxTID09IDMKKyNpZiAhZGVmaW5lZChDT05GSUdfTU1VKSB8fCBDT05GSUdf
UEdUQUJMRV9MRVZFTFMgPT0gMwogdHlwZWRlZiBzdHJ1Y3QgeyB1bnNpZ25lZCBsb25nIHBtZFsx
Nl07IH0gcG1kX3Q7CiAjZGVmaW5lIHBtZF92YWwoeCkJKCgmeCktPnBtZFswXSkKICNkZWZpbmUg
X19wbWQoeCkJKChwbWRfdCkgeyB7ICh4KSB9LCB9KQogCj4gUmVnYXJkcwo+IEdyZWcKPiAKCi0t
IApTaW5jZXJlbHkgeW91cnMsCk1pa2UuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
