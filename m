Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0B4EDBF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 10:54:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ATbVs1OUKpMVbF6NH1z/IJgDsb2YjVJysYNiOhye3HI=; b=KpBN1vtWhFtJoR
	BncuwYs13oFur96Hlb4tJz4EITsI3ZZepsjH4q3NxgTKBnXAiMlLx5xutRY4CosE3Gb+3J8oOP+Yj
	ENrAWHvnKh3bWxXgKeg5WJvDIf+I4kEFHGQp3PWMyNtGExVs5p+pBk7oSllrhqBCdDbD1nnN6PcRh
	aUpNLHd7PV0J72QUbPbOpP9USRVxMT1ACPZcl6sVhemXi03/7rteHkHI7BA8okE/3NJtwwdXTr/+j
	EcmhPo4IuirKeHI7VaFee2NPVFs0yutcpKu3LyiyTAKHL9/7f5zLS0UgUOURENAC52sheRHN9Tup7
	crUr/cQoT6pvHZlEjGvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRZ3c-00045K-Tk; Mon, 04 Nov 2019 09:53:56 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRZ3W-00044a-1l; Mon, 04 Nov 2019 09:53:51 +0000
Received: by mail-ot1-f66.google.com with SMTP id v24so8569052otp.5;
 Mon, 04 Nov 2019 01:53:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=KliwOsaW5hNOlzjps3zd+1fC4WckuXEun2JezrBsl8M=;
 b=qfhXuFZXCUPTKQaBK0Ndoldee82iDdm9ymNogJzJN9jgRYOQxA00hnjG7mmC1tScC5
 12GzGTZHA7jkB/86O+DKchqvCM61IO6tww2K764iLR+ZRXhGsiP6XAZh1aBsMnAJd0MW
 J/sre/hTnyJ6OpPWu4q/YlW4WGNcEaKyMDDTvaL/IPljo+lVk/voMXAu+wY6Y5ypU47z
 SusWLBAhilIeFXBE7K7J8iOgiHNL7IiaV39kdSJ/v0N5txOg6yOY3tQ99B3WBw8fYmp/
 dBvoBtZgA/24VM6WoMLE3qjYd2LIHbE5j9CQgn/YpUH/v5aaHwVTzaZFLVWmeghKC/Qj
 OQOQ==
X-Gm-Message-State: APjAAAWbB1qVMwFePCXXn3AAR/qSPaOvp23P/Uhn3EeRDufRD4ZR/DzU
 tMAm0drfveQb7ZBnb2cKscxWayNYsGnXCi8NpDY=
X-Google-Smtp-Source: APXvYqx7SaMbfn6eTvQqNR3qc8KtXh3qCjyaO/t3VTJ32GC2iIHqF0HiXvHrmlIBpl/gTi7AjGyf/NSZNGOTan5JhFg=
X-Received: by 2002:a9d:73cd:: with SMTP id m13mr18480198otk.145.1572861228733; 
 Mon, 04 Nov 2019 01:53:48 -0800 (PST)
MIME-Version: 1.0
References: <1572850587-20314-1-git-send-email-rppt@kernel.org>
 <1572850587-20314-6-git-send-email-rppt@kernel.org>
 <CAMuHMdUG3V7uxzhbetw75vVeobeP0-bQySb3r=0V5XujUF123g@mail.gmail.com>
 <20191104094748.GB23288@rapoport-lnx>
In-Reply-To: <20191104094748.GB23288@rapoport-lnx>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 4 Nov 2019 10:53:37 +0100
Message-ID: <CAMuHMdVHsNyLxhaxZcVdLvQ1PUnb=2_+ECPWVD0234V+qu+kOw@mail.gmail.com>
Subject: Re: [PATCH v3 05/13] m68k: mm: use pgtable-nopXd instead of
 4level-fixup
To: Mike Rapoport <rppt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_015350_093340_3AC6D205 
X-CRM114-Status: GOOD (  21.40  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Linux MM <linux-mm@kvack.org>, sparclinux <sparclinux@vger.kernel.org>,
 Rolf Eike Beer <eike-kernel@sf-tec.de>, Vincent Chen <deanbo422@gmail.com>,
 Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Linux-Arch <linux-arch@vger.kernel.org>, linux-c6x-dev@linux-c6x.org,
 Richard Weinberger <richard@nod.at>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Parisc List <linux-parisc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, alpha <linux-alpha@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWlrZSwKCk9uIE1vbiwgTm92IDQsIDIwMTkgYXQgMTA6NDggQU0gTWlrZSBSYXBvcG9ydCA8
cnBwdEBrZXJuZWwub3JnPiB3cm90ZToKPiBPbiBNb24sIE5vdiAwNCwgMjAxOSBhdCAwOTo1Mzoz
NEFNICswMTAwLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4gPiBPbiBNb24sIE5vdiA0LCAy
MDE5IGF0IDc6NTcgQU0gTWlrZSBSYXBvcG9ydCA8cnBwdEBrZXJuZWwub3JnPiB3cm90ZToKPiA+
ID4gRnJvbTogTWlrZSBSYXBvcG9ydCA8cnBwdEBsaW51eC5pYm0uY29tPgo+ID4gPiBtNjhrIGhh
cyB0d28gb3IgdGhyZWUgbGV2ZWxzIG9mIHBhZ2UgdGFibGVzIGFuZCBjYW4gdXNlIGFwcHJvcHJp
YXRlCj4gPiA+IHBndGFibGUtbm9wWGQgYW5kIGZvbGRpbmcgb2YgdGhlIHVwcGVyIGxheWVycy4K
PiA+ID4KPiA+ID4gUmVwbGFjZSB1c2FnZSBvZiBpbmNsdWRlL2FzbS1nZW5lcmljLzRsZXZlbC1m
aXh1cC5oIGFuZCBleHBsaWNpdAo+ID4gPiBkZWZpbml0aW9ucyBvZiBfX1BBR0VUQUJMRV9QeERf
Rk9MREVEIGluIG02OGsgd2l0aAo+ID4gPiBpbmNsdWRlL2FzbS1nZW5lcmljL3BndGFibGUtbm9w
bWQuaCBmb3IgdHdvLWxldmVsIGNvbmZpZ3VyYXRpb25zIGFuZCB3aXRoCj4gPiA+IGluY2x1ZGUv
YXNtLWdlbmVyaWMvcGd0YWJsZS1ub3B1ZC5oIGZvciB0aHJlZS1sZWx2ZSBjb25maWd1cmF0aW9u
cyBhbmQKPiA+ID4gYWRqdXN0IHBhZ2UgdGFibGUgbWFuaXB1bGF0aW9uIG1hY3JvcyBhbmQgZnVu
Y3Rpb25zIGFjY29yZGluZ2x5Lgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNaWtlIFJhcG9w
b3J0IDxycHB0QGxpbnV4LmlibS5jb20+Cj4gPiA+IEFja2VkLWJ5OiBHcmVnIFVuZ2VyZXIgPGdl
cmdAbGludXgtbTY4ay5vcmc+Cj4gPgo+ID4gVGhhbmtzIGZvciB5b3VyIHBhdGNoIQo+ID4KPiA+
IFRoZSBidWlsZCBlcnJvciByZXBvcnRlZCBmb3IgdjEgYnkga2J1aWxkIHRlc3Qgcm9ib3Qgd2hl
biBidWlsZGluZyBmb3IKPiA+IHN1bjN4IGlzIHN0aWxsIHRoZXJlIChtNjhrIGRlZmNvbmZpZyBv
ciBzdW4zeF9kZWZjb25maWcpOgo+ID4KPiA+ICAgICBhcmNoL202OGsvc3VuM3gvZHZtYS5jOiBJ
biBmdW5jdGlvbiDigJhkdm1hX21hcF9jcHXigJk6Cj4gPiAgICAgYXJjaC9tNjhrL3N1bjN4L2R2
bWEuYzo5ODozMzogZXJyb3I6IHBhc3NpbmcgYXJndW1lbnQgMiBvZgo+ID4g4oCYcG1kX2FsbG9j
4oCZIGZyb20gaW5jb21wYXRpYmxlIHBvaW50ZXIgdHlwZQo+ID4gWy1XZXJyb3I9aW5jb21wYXRp
YmxlLXBvaW50ZXItdHlwZXNdCj4gPiAgICAgICAgaWYoKHBtZCA9IHBtZF9hbGxvYygmaW5pdF9t
bSwgcGdkLCB2YWRkcikpID09IE5VTEwpIHsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBefn4KPiA+ICAgICBJbiBmaWxlIGluY2x1ZGVkIGZyb20gYXJjaC9tNjhrL3N1
bjN4L2R2bWEuYzoxNzoKPiA+ICAgICBpbmNsdWRlL2xpbnV4L21tLmg6MTg3NTo2MTogbm90ZTog
ZXhwZWN0ZWQg4oCYcHVkX3QgKuKAmSB7YWthIOKAmHN0cnVjdAo+ID4gPGFub255bW91cz4gKuKA
mX0gYnV0IGFyZ3VtZW50IGlzIG9mIHR5cGUg4oCYcGdkX3QgKuKAmSB7YWthIOKAmHN0cnVjdAo+
ID4gPGFub255bW91cz4gKuKAmX0KPiA+ICAgICAgc3RhdGljIGlubGluZSBwbWRfdCAqcG1kX2Fs
bG9jKHN0cnVjdCBtbV9zdHJ1Y3QgKm1tLCBwdWRfdCAqcHVkLAo+ID4gdW5zaWduZWQgbG9uZyBh
ZGRyZXNzKQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIH5+fn5+fn5efn4KPgo+IFRoZSBpbml0aWFsIHJlcG9ydCB3YXMgYWdhaW5z
dCBvbGRlciBtbW90bSAoYmFzZToKPiBnaXQ6Ly9naXQuY21weGNoZy5vcmcvbGludXgtbW1vdG0u
Z2l0IG1hc3RlcikgYW5kIEkgcHJlc3VtZWQgdGhpcyB3YXMgdGhlCj4gY2F1c2Ugb2YgdGhlIGVy
cm9yLiBXaWxsIGZpeCBpbiB2NC4KCk9LLCB0aGFua3MhCgpNeSB0cmVlIGlzIGJhc2VkIG9uIG02
OGsvbWFzdGVyLCB3aGljaCBkb2VzIG5vdCBpbmNsdWRlIHRoZSBtbW90bSB0cmVlLAphbmQgc2hv
dWxkIGJlIGZhaXJseSBzaW1pbGFyIHRvIHBsYWluIHY1LjQtcmM2LgoKPiA+IFRoaXMgaW5kZWVk
IGJvb3RzIGZpbmUgb24gQVJBbnlNLCB3aGljaCBlbXVsYXRlcyBvbiA2ODA0MC4KPiA+IEl0IHdv
dWxkIGJlIGdvb2QgdG8gaGF2ZSBzb21lIGJvb3QgdGVzdGluZyBvbiAnMDIwLzAzMCwgdG9vLgo+
Cj4gVG8gYmUgaG9uZXN0LCBJIGhhdmUgbm8gaWRlYSBob3cgdG8gdG8gdGhhdCA6KQoKU3VyZS4g
VGhpcyB3YXMgbW9yZSBhIHJlcXVlc3QgZm9yIHRoZSBmZWxsb3cgbTY4ayB1c2Vycy4KQnV0IGRv
bid0IHdvcnJ5IHRvbyBtdWNoIGFib3V0IGl0LiAgSWYgaXQgYnJlYWtzICcwMjAvJzAzMCwgd2Ug
Y2FuIGZpeAp0aGF0IGxhdGVyLgoKVGhhbmtzIQoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAg
ICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdz
IGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBl
cnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxm
IGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5
ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
