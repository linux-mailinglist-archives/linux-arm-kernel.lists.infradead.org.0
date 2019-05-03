Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B05C312C12
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 13:12:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QZc1TIBRHGXnaDL29gC0b9v45tlAeYpoyxd81iaJM68=; b=RgmWSvAifnE7QU
	pxK39rxJ5d7WWNCOLNj2Oxeg1CBJ3SbfSON1mtzJtc/2/6sIAhPbpwngKQ4ouKJ1FgF1GcHIhOxLP
	Jq+7RXSKrGBGVQHKC90tJC1KBQucGD/kof+tdBich5bcHdT5LTY4dJR6lxAVqhAloj2L2rHHsi7MG
	UEj4+evfaKhDhlQsa+arTWgP4GgBREdK6bMp6NzrwUa0D4fU7p4aN2PqAPKlJXFjmYVYVjiVB5R/U
	xQm88687ZfNAGK7mv4QHmECVXRX6tLxxKYPmk5MSxUtIel2xm2EVuT5+aH1JY6mOplr6GGNJ7jDA4
	Txv4sZ7KwmdGpYAPgh2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMW7M-0002pS-H4; Fri, 03 May 2019 11:12:40 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMW7G-0002oz-PN; Fri, 03 May 2019 11:12:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eEIzHpfwHVHRvaExjRFeK3jxmEVbh9Kwf4OPsb6euv4=; b=JvwRGXHy5mEodBN7PyajBwUV9W
 E/owdUr7f2+i/qeG6kmoFcZesHl/twG+RCrz7ytF5EJz+oRkrUUGATGHkpC8AJTMgyotxmWd1XnQC
 s2ke3ZQ49Zk9OSv7WIHnIy/X23QdiSJOv5aOYX6Rj7n+Go8Hl0wS95CVRjzRXdLT2n40bEJDCunLE
 uaWRkwWULEVtNf7nsw3uvCJpAkM4OLKkvigwdPe7vTgkyaynz3cayBrWBKevawZ6+vXKDUxtiXajq
 fe1ZB0iSrFAbBzBF/sc/wAcIEta0qzDG2sX9zOY2IC+snEGlD/3TqsNanMPkqNvBt5r7H4tFkfzOy
 SdAX6vyw==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMW7C-0004Li-WA; Fri, 03 May 2019 11:12:32 +0000
Received: from xps13 (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 9D4FF100005;
 Fri,  3 May 2019 11:11:53 +0000 (UTC)
Date: Fri, 3 May 2019 13:11:52 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [RESEND PATCH v3 05/11] mtd: rawnand: vf610_nfc: add
 initializer to avoid -Wmaybe-uninitialized
Message-ID: <20190503131152.57b4ce25@xps13>
In-Reply-To: <CAK7LNAQH8v8_HG6-cytT4qe05W9iiYwEP1mud4zG2NxxYcFptQ@mail.gmail.com>
References: <20190423034959.13525-1-yamada.masahiro@socionext.com>
 <20190423034959.13525-6-yamada.masahiro@socionext.com>
 <20190502161346.07c15187@xps13>
 <CAK7LNAQH8v8_HG6-cytT4qe05W9iiYwEP1mud4zG2NxxYcFptQ@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_071231_130624_6B861FC2 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

SGkgTWFzYWhpcm8sCgpNYXNhaGlybyBZYW1hZGEgPHlhbWFkYS5tYXNhaGlyb0Bzb2Npb25leHQu
Y29tPiB3cm90ZSBvbiBGcmksIDMgTWF5CjIwMTkgMTk6MzY6MzUgKzA5MDA6Cgo+IEhpIE1pcXVl
bCwKPiAKPiBPbiBUaHUsIE1heSAyLCAyMDE5IGF0IDExOjE0IFBNIE1pcXVlbCBSYXluYWwgPG1p
cXVlbC5yYXluYWxAYm9vdGxpbi5jb20+IHdyb3RlOgo+ID4KPiA+IEhpIE1hc2FoaXJvLAo+ID4K
PiA+IE1hc2FoaXJvIFlhbWFkYSA8eWFtYWRhLm1hc2FoaXJvQHNvY2lvbmV4dC5jb20+IHdyb3Rl
IG9uIFR1ZSwgMjMgQXByCj4gPiAyMDE5IDEyOjQ5OjUzICswOTAwOgo+ID4gIAo+ID4gPiBUaGlz
IHByZXBhcmVzIHRvIG1vdmUgQ09ORklHX09QVElNSVpFX0lOTElOSU5HIGZyb20geDg2IHRvIGEg
Y29tbW9uCj4gPiA+IHBsYWNlLiBXZSBuZWVkIHRvIGVsaW1pbmF0ZSBwb3RlbnRpYWwgaXNzdWVz
IGJlZm9yZWhhbmQuCj4gPiA+Cj4gPiA+IEtidWlsZCB0ZXN0IHJvYm90IGhhcyBuZXZlciByZXBv
cnRlZCAtV21heWJlLXVuaW5pdGlhbGl6ZWQgd2FybmluZwo+ID4gPiBmb3IgdGhpcyBwcm9iYWJs
eSBiZWNhdXNlIHZmNjEwX25mY19ydW4oKSBpcyBpbmxpbmVkIGJ5IHRoZSB4ODYKPiA+ID4gY29t
cGlsZXIncyBpbmxpbmluZyBoZXVyaXN0aWMuCj4gPiA+Cj4gPiA+IElmIENPTkZJR19PUFRJTUla
RV9JTkxJTklORyBpcyBlbmFibGVkIGZvciBhIGRpZmZlcmVudCBhcmNoaXRlY3R1cmUKPiA+ID4g
YW5kIHZmNjEwX25mY19ydW4oKSBpcyBub3QgaW5saW5lZCwgdGhlIGZvbGxvd2luZyB3YXJuaW5n
IGlzIHJlcG9ydGVkOgo+ID4gPgo+ID4gPiBkcml2ZXJzL210ZC9uYW5kL3Jhdy92ZjYxMF9uZmMu
YzogSW4gZnVuY3Rpb24g4oCYdmY2MTBfbmZjX2NtZOKAmToKPiA+ID4gZHJpdmVycy9tdGQvbmFu
ZC9yYXcvdmY2MTBfbmZjLmM6NDU1OjM6IHdhcm5pbmc6IOKAmG9mZnNldOKAmSBtYXkgYmUgdXNl
ZCB1bmluaXRpYWxpemVkIGluIHRoaXMgZnVuY3Rpb24gWy1XbWF5YmUtdW5pbml0aWFsaXplZF0K
PiA+ID4gICAgdmY2MTBfbmZjX3JkX2Zyb21fc3JhbShpbnN0ci0+Y3R4LmRhdGEuYnVmLmluICsg
b2Zmc2V0LAo+ID4gPiAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+Cj4gPiA+ICAgICAgICAgICAgIG5mYy0+cmVncyArIE5GQ19NQUlOX0FS
RUEoMCkgKyBvZmZzZXQsCj4gPiA+ICAgICAgICAgICAgIH5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+Cj4gPiA+ICAgICAgICAgICAgIHRyZnJfc3osICFuZmMtPmRhdGFfYWNj
ZXNzKTsKPiA+ID4gICAgICAgICAgICAgfn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+ICAKPiA+
Cj4gPiBJTUhPIHRoaXMgcGF0Y2ggaGFzIG5vIGRlcGVuZGVuY2llcyB3aXRoIHRoaXMgc2VyaWVz
LiAgCj4gCj4gCj4gVGhpcyBwYXRjaCBpcyB0aGUgcHJlcmVxdWlzaXRlIGZvciAxMS8xMS4KPiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdvcmsvcGF0Y2gvMTA2NDk1OS8KPiAKPiAKPiBX
aXRob3V0IHRoZSBjb3JyZWN0IHBhdGNoIG9yZGVyLAo+IHRoZSBrYnVpbGQgdGVzdCByb2JvdCBy
ZXBvcnRzIHRoZSB3YXJuaW5nLgo+IAo+IAo+ID4gV291bGQgeW91IG1pbmQgc2VuZGluZyBpdCBh
bG9uZSB3aXRoIHRoZSBwcm9wZXIgRml4ZXMgdGFnPyAgCj4gCj4gCj4gSSBkbyBub3QgdGhpbmsg
Rml4ZXMgaXMgbmVjZXNzYXJ5LgoKSU1ITyBpdCBpcy4gRXZlbiBpZiB0b2RheSB0aGUgd2Fybmlu
ZyBkb2VzIG5vdCBzcGF3biwgdGhlcmUgaXMgYQpyZWFsIEMgZXJyb3Igd2hpY2ggbWlnaHQgYWxy
ZWFkeSBiZSBhbiBpc3N1ZS4KCj4gCj4gTm9ib2R5IGhhcyBub3RpY2VkIHRoaXMgcG90ZW50aWFs
IGlzc3VlIGJlZm9yZS4KPiBXaXRob3V0IDExLzExLCBwcm9iYWJseSB3ZSBjYW5ub3QgcmVwcm9k
dWNlIHRoaXMgd2FybmluZy4KPiAKPiAKPiBCVFcsIHRoaXMgc2VyaWVzIGhhcyBiZWVuIGZvciBh
IHdoaWxlIGluIGxpbnV4LW5leHQuCgpNaXNzZWQgdGhhdC4gT2ssIG5ldmVybWluZC4KCgpUaGFu
a3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
