Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5216A3F12
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 22:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0P4Mg6ukoVZ/ii37+BojPD1EyYR1p+sT66SfPGU388k=; b=b+PQK7AETUTM67
	ziwEejEmUZuqRfIJ0Pe99Ym+VhCR+FagNJQe8gaYX1EuGvsUA0JYF9beo+BpPPTBXVbtR4gqHsAJP
	EBk7vce0R5jjkpStcw69zfRNY2UZmxKmcCoTw4eMun6X6vf5UrFaSLp/Lo74Ey6I+P/yN76VdfYnx
	p9Bvc7anq4I8dEH4/c3oHkvPjuBaanLRt0iiXwpL43tc0V8fPlCBTDxh2Ou3NO7nmpzXZKcfo/cef
	YrKtgQFWIfzgwHXhdXrTjQgK+NNyvR1jTzTnFdjyviLhHjddaFii447rhDh+M8PDW5ygOQ3PDgtWZ
	ifrFHLaz4KPy8nYeafLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3neu-0003N9-VO; Fri, 30 Aug 2019 20:38:12 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3nej-0003Mm-JO
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 20:38:02 +0000
Received: by mail-qt1-f194.google.com with SMTP id b2so5582681qtq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 13:38:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=l2S+wnciTIE2+Vapkd9mAIufXJ8QwtBWmdVgddLBucw=;
 b=WJXWRyh2eDHHiMVtIfEZOFyPVRu2FWWveHMLR4BZGUfwW2/lls34qpPR4g/C4isgwp
 GVszOqpnWYmvBeYlReLeptn5vhxSTGqTkcJmzV2UILMybMAKw4AtJ9Ds1P6RnOKYjLCs
 rHXuNkj8V8h3fIybE47/TwWv0U1Qm/W4GyAyUSWRfeE0XctOmmsKoW2ily9LLcB/d7xH
 3yxE/1N+VIYGEcsvs5nFAFotLSyiar+2nVRdtYqCGxeaMLuLK9wV3YsCGX7MCj7ZQNjX
 EgJLDNqpvEpY00QYWWXhPlt523Qr6ZHBSrW50MInEQ6i85GY7IoiZQMtx1Gw7Wh/tYVa
 t8cg==
X-Gm-Message-State: APjAAAVtSVs7GTF98Irc1YT+R4VtXqAnR1R3M2InUnXqB5+olMzVpHVL
 nTxZVK34vSHwiO9PA20YGUOrMsQIbZmHZvsx9PU=
X-Google-Smtp-Source: APXvYqwtNMpNjOd1HtJ8sOpmwxGcNvBnMfM6zhXSKSJK4ULJROOvXNbKx16SmaRfjOCM1TgLQruyn5cyAJe5Ery0vHs=
X-Received: by 2002:aed:2842:: with SMTP id r60mr7893403qtd.142.1567197480529; 
 Fri, 30 Aug 2019 13:38:00 -0700 (PDT)
MIME-Version: 1.0
References: <bb6d25c6baae315d05b571d8c508f0e8fa90027c.1567188299.git.msuchanek@suse.de>
 <20190830194651.31043-1-msuchanek@suse.de>
 <CAK8P3a16=ktJm5B3c5-XS7SqVuHBY5+E2FwVUqbdOdWK-AUgSA@mail.gmail.com>
 <20190830221315.4b3b8a74@kitsune.suse.cz>
In-Reply-To: <20190830221315.4b3b8a74@kitsune.suse.cz>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 30 Aug 2019 22:37:44 +0200
Message-ID: <CAK8P3a1nGnB3GWEAso9MKW5HuxuB9ez46HZgS=GX-odtJuAMWQ@mail.gmail.com>
Subject: Re: [PATCH] Revert "asm-generic: Remove unneeded
 __ARCH_WANT_SYS_LLSEEK macro"
To: =?UTF-8?Q?Michal_Such=C3=A1nek?= <msuchanek@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_133801_639983_B9E52748 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Rich Felker <dalias@libc.org>, Linux-sh list <linux-sh@vger.kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux <sparclinux@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 the arch/x86 maintainers <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Firoz Khan <firoz.khan@linaro.org>, linux-xtensa@linux-xtensa.org,
 Vasily Gorbik <gor@linux.ibm.com>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>, Borislav Petkov <bp@alien8.de>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Howells <dhowells@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Christian Brauner <christian@brauner.io>,
 Chris Zankel <chris@zankel.net>, Michal Simek <monstr@monstr.eu>,
 Parisc List <linux-parisc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBdWcgMzAsIDIwMTkgYXQgMTA6MTMgUE0gTWljaGFsIFN1Y2jDoW5layA8bXN1Y2hh
bmVrQHN1c2UuZGU+IHdyb3RlOgo+IE9uIEZyaSwgMzAgQXVnIDIwMTkgMjE6NTQ6NDMgKzAyMDAK
PiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPiB3cm90ZToKPiA+ID4gaW5kZXggNWJiZjU4
N2Y1YmMxLi4yZjNjNGJiMTM4YzQgMTAwNjQ0Cj4gPiA+IC0tLSBhL2ZzL3JlYWRfd3JpdGUuYwo+
ID4gPiArKysgYi9mcy9yZWFkX3dyaXRlLmMKPiA+ID4gQEAgLTMzMSw3ICszMzEsNyBAQCBDT01Q
QVRfU1lTQ0FMTF9ERUZJTkUzKGxzZWVrLCB1bnNpZ25lZCBpbnQsIGZkLCBjb21wYXRfb2ZmX3Qs
IG9mZnNldCwgdW5zaWduZWQgaQo+ID4gPiAgfQo+ID4gPiAgI2VuZGlmCj4gPiA+Cj4gPiA+IC0j
aWYgIWRlZmluZWQoQ09ORklHXzY0QklUKSB8fCBkZWZpbmVkKENPTkZJR19DT01QQVQpCj4gPiA+
ICsjaWZkZWYgX19BUkNIX1dBTlRfU1lTX0xMU0VFSwo+ID4gPiAgU1lTQ0FMTF9ERUZJTkU1KGxs
c2VlaywgdW5zaWduZWQgaW50LCBmZCwgdW5zaWduZWQgbG9uZywgb2Zmc2V0X2hpZ2gsCj4gPiA+
ICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nLCBvZmZzZXRfbG93LCBsb2ZmX3QgX191c2Vy
ICosIHJlc3VsdCwKPiA+ID4gICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCwgd2hlbmNlKQo+
ID4KPiA+IEhvd2V2ZXIsIG9ubHkgcmV2ZXJ0aW5nIHRoZSBwYXRjaCB3aWxsIG5vdyBicmVhayBh
bGwgbmV3bHkgYWRkZWQKPiA+IDMyLWJpdCBhcmNoaXRlY3R1cmVzIHRoYXQgZG9uJ3QgZGVmaW5l
IF9fQVJDSF9XQU5UX1NZU19MTFNFRUs6Cj4gPiBhdCBsZWFzdCBuZHMzMiBhbmQgcmlzY3YzMiBj
b21lIHRvIG1pbmQsIG5vdCBzdXJlIGlmIHRoZXJlIGlzIGFub3RoZXIuCj4KPiBBRkFJQ1QgbmRz
MzIgbmV2ZXIgaGFkIHRoZSBzeXNjYWxsLiBJdHMgaGVhZGVycyB3ZXJlIGFkZGVkIHdpdGhvdXQK
PiBfX0FSQ0hfV0FOVF9TWVNfTExTRUVLIGJlZm9yZSB0aGUgZGVmaW5lIHdhcyByZW1vdmVkLgoK
bmRzMzIgZ290IGl0IGZyb20gaW5jbHVkZS9hc20tZ2VuZXJpYy91bmlzdGQuaAoKICAgICAgICBB
cm5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
