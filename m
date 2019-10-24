Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A7FE2A5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 08:23:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t4BQifjU5bLLnwyCmyDqc1beFsyHguh54VfKQIddrpM=; b=R7m7CMKXnc6b92+CXUlGNohe1
	lHySy+PhD6GJzIfd1Rco3hfPBLejWzBWwN3fCQHuG755R/IdF0j72VbDPkfYNPY1kEMrzolXOtyJX
	Sa0WBE8sj7AiHWJgjBILTs/ezYEh5Q/5FptcmemvQJUBKsTf+6TdBI3RnDYfz2XCNi/hYGS102P0/
	Ou6ESFp4UQqb4vs7/2rYKQztLM9HCjrzkrUaTRoSqlp/OxAb+Ihx6sOSBCFRb7ZfoycpqJQighr7Q
	X+/dJmqI00cXEG7hF3kVwSUU+1pR++1wPxErnTh1GuZW82FqSNhR2FPNLB5BcT7NnEXF+Bj3VEnsq
	/XQIjQzhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNWWp-00040E-Do; Thu, 24 Oct 2019 06:23:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNWWf-0003zO-R8; Thu, 24 Oct 2019 06:23:15 +0000
Received: from [10.44.0.22] (unknown [103.48.210.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C14921655;
 Thu, 24 Oct 2019 06:23:06 +0000 (UTC)
Subject: Re: [PATCH 04/12] m68k: nommu: use pgtable-nopud instead of
 4level-fixup
To: Mike Rapoport <rppt@kernel.org>
References: <1571822941-29776-1-git-send-email-rppt@kernel.org>
 <1571822941-29776-5-git-send-email-rppt@kernel.org>
 <de03a882-fb1a-455c-7c60-84ab0c4f9674@linux-m68k.org>
 <20191024053533.GA12281@rapoport-lnx>
From: Greg Ungerer <gerg@linux-m68k.org>
Message-ID: <24454c38-184a-b5fe-e534-aad3713c157e@linux-m68k.org>
Date: Thu, 24 Oct 2019 16:23:04 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191024053533.GA12281@rapoport-lnx>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_232313_921150_924647C3 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWlrZSwKCk9uIDI0LzEwLzE5IDM6MzUgcG0sIE1pa2UgUmFwb3BvcnQgd3JvdGU6Cj4gSGkg
R3JlZywKPiAKPiBPbiBUaHUsIE9jdCAyNCwgMjAxOSBhdCAwMjowOTowMVBNICsxMDAwLCBHcmVn
IFVuZ2VyZXIgd3JvdGU6Cj4+IEhpIE1pa2UsCj4+Cj4+IE9uIDIzLzEwLzE5IDc6MjggcG0sIE1p
a2UgUmFwb3BvcnQgd3JvdGU6Cj4+PiBGcm9tOiBNaWtlIFJhcG9wb3J0IDxycHB0QGxpbnV4Lmli
bS5jb20+Cj4+Pgo+Pj4gVGhlIGdlbmVyaWMgbm9tbXUgaW1wbGVtZW50YXRpb24gb2YgcGFnZSB0
YWJsZSBtYW5pcHVsYXRpb24gdGFrZXMgY2FyZSBvZgo+Pj4gZm9sZGluZyBvZiB0aGUgdXBwZXIg
bGV2ZWxzIGFuZCBkb2VzIG5vdCByZXF1aXJlIGZpeHVwcy4KPj4+Cj4+PiBTaW1wbHkgcmVwbGFj
ZSBvZiBpbmNsdWRlL2FzbS1nZW5lcmljLzRsZXZlbC1maXh1cC5oIHdpdGgKPj4+IGluY2x1ZGUv
YXNtLWdlbmVyaWMvcGd0YWJsZS1ub3B1ZC5oLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IE1pa2Ug
UmFwb3BvcnQgPHJwcHRAbGludXguaWJtLmNvbT4KPj4+IC0tLQo+Pj4gICBhcmNoL202OGsvaW5j
bHVkZS9hc20vcGd0YWJsZV9uby5oIHwgMiArLQo+Pj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9tNjhrL2lu
Y2x1ZGUvYXNtL3BndGFibGVfbm8uaCBiL2FyY2gvbTY4ay9pbmNsdWRlL2FzbS9wZ3RhYmxlX25v
LmgKPj4+IGluZGV4IGMxODE2NWIuLmNjYzQ1NjggMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL202OGsv
aW5jbHVkZS9hc20vcGd0YWJsZV9uby5oCj4+PiArKysgYi9hcmNoL202OGsvaW5jbHVkZS9hc20v
cGd0YWJsZV9uby5oCj4+PiBAQCAtMiw3ICsyLDcgQEAKPj4+ICAgI2lmbmRlZiBfTTY4S05PTU1V
X1BHVEFCTEVfSAo+Pj4gICAjZGVmaW5lIF9NNjhLTk9NTVVfUEdUQUJMRV9ICj4+PiAtI2luY2x1
ZGUgPGFzbS1nZW5lcmljLzRsZXZlbC1maXh1cC5oPgo+Pj4gKyNpbmNsdWRlIDxhc20tZ2VuZXJp
Yy9wZ3RhYmxlLW5vcHVkLmg+Cj4+PiAgIC8qCj4+PiAgICAqIChDKSBDb3B5cmlnaHQgMjAwMC0y
MDAyLCBHcmVnIFVuZ2VyZXIgPGdlcmdAc25hcGdlYXIuY29tPgo+Pgo+PiBUaGlzIGZhaWxzIHRv
IGNvbXBpbGUgZm9yIG1lICh0YXJnZXRpbmcgbTUyMDhldmJfZGVmY29uZmlnKToKPj4KPj4gICAg
Q0MgICAgICBpbml0L21haW4ubwo+PiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi9hcmNoL202OGsv
aW5jbHVkZS9hc20vcGd0YWJsZV9uby5oOjU2OjAsCj4+ICAgICAgICAgICAgICAgICAgIGZyb20g
Li9hcmNoL202OGsvaW5jbHVkZS9hc20vcGd0YWJsZS5oOjMsCj4+ICAgICAgICAgICAgICAgICAg
IGZyb20gLi9pbmNsdWRlL2xpbnV4L21tLmg6OTksCj4+ICAgICAgICAgICAgICAgICAgIGZyb20g
Li9pbmNsdWRlL2xpbnV4L3JpbmdfYnVmZmVyLmg6NSwKPj4gICAgICAgICAgICAgICAgICAgZnJv
bSAuL2luY2x1ZGUvbGludXgvdHJhY2VfZXZlbnRzLmg6NiwKPj4gICAgICAgICAgICAgICAgICAg
ZnJvbSAuL2luY2x1ZGUvdHJhY2Uvc3lzY2FsbC5oOjcsCj4+ICAgICAgICAgICAgICAgICAgIGZy
b20gLi9pbmNsdWRlL2xpbnV4L3N5c2NhbGxzLmg6ODUsCj4+ICAgICAgICAgICAgICAgICAgIGZy
b20gaW5pdC9tYWluLmM6MjE6Cj4+IC4vaW5jbHVkZS9hc20tZ2VuZXJpYy9wZ3RhYmxlLmg6NzM4
OjM0OiBlcnJvcjogdW5rbm93biB0eXBlIG5hbWUg4oCYcG1kX3TigJkKPj4gICBzdGF0aWMgaW5s
aW5lIGludCBwbWRfc29mdF9kaXJ0eShwbWRfdCBwbWQpCj4+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgXgo+IAo+IC4uLgo+IAo+PiBzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI2
NTogcmVjaXBlIGZvciB0YXJnZXQgJ2luaXQvbWFpbi5vJyBmYWlsZWQKPj4gbWFrZVsxXTogKioq
IFtpbml0L21haW4ub10gRXJyb3IgMQo+PiBNYWtlZmlsZToxNjQ5OiByZWNpcGUgZm9yIHRhcmdl
dCAnaW5pdCcgZmFpbGVkCj4+IG1ha2U6ICoqKiBbaW5pdF0gRXJyb3IgMgo+IAo+IFRoZSBodW5r
IGJlbG93IGZpeGVzIHRoZSBidWlsZC4KPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9tNjhrL2luY2x1
ZGUvYXNtL3BhZ2UuaCBiL2FyY2gvbTY4ay9pbmNsdWRlL2FzbS9wYWdlLmgKPiBpbmRleCBjMDBi
NjdhLi4wNWUxZTFlIDEwMDY0NAo+IC0tLSBhL2FyY2gvbTY4ay9pbmNsdWRlL2FzbS9wYWdlLmgK
PiArKysgYi9hcmNoL202OGsvaW5jbHVkZS9hc20vcGFnZS5oCj4gQEAgLTIxLDcgKzIxLDcgQEAK
PiAgIC8qCj4gICAgKiBUaGVzZSBhcmUgdXNlZCB0byBtYWtlIHVzZSBvZiBDIHR5cGUtY2hlY2tp
bmcuLgo+ICAgICovCj4gLSNpZiBDT05GSUdfUEdUQUJMRV9MRVZFTFMgPT0gMwo+ICsjaWYgIWRl
ZmluZWQoQ09ORklHX01NVSkgfHwgQ09ORklHX1BHVEFCTEVfTEVWRUxTID09IDMKPiAgIHR5cGVk
ZWYgc3RydWN0IHsgdW5zaWduZWQgbG9uZyBwbWRbMTZdOyB9IHBtZF90Owo+ICAgI2RlZmluZSBw
bWRfdmFsKHgpCSgoJngpLT5wbWRbMF0pCj4gICAjZGVmaW5lIF9fcG1kKHgpCSgocG1kX3QpIHsg
eyAoeCkgfSwgfSkKClRoYXQgbG9va3MgYmV0dGVyLiBUaGFua3MuClRlc3RlZCBhbmQgd29ya2lu
ZyBvbiBtNjhrbm9tbXUuIEZvciB0aGUgY29tYmluZWQgcGF0Y2hlczoKCkFja2VkLWJ5OiBHcmVn
IFVuZ2VyZXIgPGdlcmdAbGludXgtbTY4ay5vcmc+CgpSZWdhcmRzCkdyZWcKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
