Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FE6F8B7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 10:14:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xNDbLeWJchdzgSSogJKe+moI46oG9ToP6Wextr2aWoQ=; b=axPFgNieEj1SE3
	/fxaVBsuDiOnXu6jkWxnJSNcxGIDCoogbv62dto5ykQZNtxL3pFubX8gIiMW49nQTXzatTTs5EcZV
	aqDBXEc2v9IxFWi1/Y/RfYTF8vA7w1+v1vsA6dLREqomxJ+8NJQsPGS39L9TlKtabcDMnvZ1ENRPI
	z/Oma+cfmScFKQvn0ycUBOFCwHGXQdsir29uDCve2vTxZ8Nj6OxWjZxA7YEGg6kSfusXJlDwq/TNO
	Knx+W8CIasXmV4oePQcHSSqlBSXepBVsUQl97+QVgvezN7SmZ+TFpTReFFSpdhGZXpibZd6UFxrbm
	Vh8edJ9XEg1qk6hD+ynA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUSFZ-0004RQ-Qj; Tue, 12 Nov 2019 09:14:13 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUSFS-0004R6-PT
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 09:14:08 +0000
Received: by mail-oi1-f196.google.com with SMTP id j7so14164872oib.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 01:14:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CcFia2f8UjT7Hz7B3H/t2zQe97c4U387QE8r5XjOH8A=;
 b=jDBTugo+xLomfAAgI8f25ANHxVt5wJBh+g//aOUU+h0b5vOwZvb4TAyr4/CWMVMZ1K
 K4nAKrFjrfHA7ri8svJAfZlc77EVfDSezqB+yeX1uWXwXOjc9+XIxj7WYs6/3Q9QYONI
 1VUQc7EJWGwi1kkJgGZQ+keaf/psE1vOOSKHfJgNsbvxEqZ20k7JQWzD9qTXiwKU0QRi
 mMN0PEYI6VITni27VOpr/l32+TXgjfY/tv66P53Hg/W38HmEWxZTz13VjFRhYCsOO7PP
 jwvTdBPWonu/DmRTXdpchFaCNis6U2EXgqHvqLIGGqg675jkF78YWauBQeo6yF39rhaL
 dqBQ==
X-Gm-Message-State: APjAAAXNmdxrsOSnQMnuxV/LSddxo80ZvwFXVqfuVs5cYd10MmcGvnNs
 eaXP6nlCxXQ4cUkkYlh6+3cNkF9Is+y9ibdGE34=
X-Google-Smtp-Source: APXvYqxbSiMMCm9vOSRUI81fzjT2IZ3Fd4CYajnzFOk7q7brNKIrKnb1uqJhXwzzLHRJu12wVQ5KC28YV3eKlUAChCc=
X-Received: by 2002:aca:3a86:: with SMTP id h128mr2951038oia.131.1573550045207; 
 Tue, 12 Nov 2019 01:14:05 -0800 (PST)
MIME-Version: 1.0
References: <20191011000609.29728-1-keescook@chromium.org>
 <20191011000609.29728-12-keescook@chromium.org>
 <CAMuHMdXfPyti1wFBb0hhf3CeDSQ=zVv7cV-taeYCmDswMQkXPQ@mail.gmail.com>
 <201911110922.17A2112B0@keescook>
 <CAMuHMdUJ8QPvqf51nVmOg1Zm20SNT7pXR72z=qmco=ecwawZ7A@mail.gmail.com>
 <20191112090736.GA32336@zn.tnic>
In-Reply-To: <20191112090736.GA32336@zn.tnic>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 12 Nov 2019 10:13:53 +0100
Message-ID: <CAMuHMdXayF+z4z+Ds-gm4+YFA=BCMo0_9Q3uXcbQQgQkLxZ4uw@mail.gmail.com>
Subject: Re: [PATCH v2 11/29] vmlinux.lds.h: Replace RODATA with RO_DATA
To: Borislav Petkov <bp@alien8.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_011406_826331_6EAAA9EF 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Linux-Arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Michal Simek <monstr@monstr.eu>,
 the arch/x86 maintainers <x86@kernel.org>,
 "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-xtensa@linux-xtensa.org, Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Parisc List <linux-parisc@vger.kernel.org>, Andy Lutomirski <luto@kernel.org>,
 alpha <linux-alpha@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rick Edgecombe <rick.p.edgecombe@intel.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-c6x-dev@linux-c6x.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQm9yaXNsYXYsCgpPbiBUdWUsIE5vdiAxMiwgMjAxOSBhdCAxMDowOCBBTSBCb3Jpc2xhdiBQ
ZXRrb3YgPGJwQGFsaWVuOC5kZT4gd3JvdGU6Cj4gT24gTW9uLCBOb3YgMTEsIDIwMTkgYXQgMDc6
MDg6NTFQTSArMDEwMCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+ID4gdm1saW51eC1zdGQu
bGRzOiBBbGwgb3RoZXIgY2xhc3NpYyA2ODB4MCB0YXJnZXRzIHdpdGggYW4gTU1VLCBlLmcuIHBs
YWluCj4gPiAgICAgICAgICAgICAgICAgIGRlZmNvbmZpZyBha2EgbXVsdGlfZGVmY29uZmlnLgo+
Cj4gRldJVywgdGhlIGRlZmNvbmZpZyBkb2Vzbid0IGJ1aWxkIHdpdGggdGhlIGNyb3NzIGNvbXBp
bGVywrkgaGVyZSwgZXZlbiB3aXRoIEtlZXMnCj4gcGF0Y2ggYXBwbGllZCBidXQgZm9yIGEgZGlm
ZmVyZW50IHJlYXNvbjoKPgo+ICQgbWFrZS5jcm9zcyBBUkNIPW02OGsgZGVmY29uZmlnCj4gLi4u
Cj4KPiAkbWFrZS5jcm9zcyBBUkNIPW02OGsgMj53LmxvZwo+IC4uLgo+IGRyaXZlcnMvdmlkZW8v
ZmJkZXYvYzJwX3BsYW5hci5vOiBJbiBmdW5jdGlvbiBgdHJhbnNwOCc6Cj4gYzJwX3BsYW5hci5j
OigudGV4dCsweDEzYSk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGMycF91bnN1cHBvcnRlZCcK
PiBjMnBfcGxhbmFyLmM6KC50ZXh0KzB4MWRlKTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgYzJw
X3Vuc3VwcG9ydGVkJwo+IGRyaXZlcnMvdmlkZW8vZmJkZXYvYzJwX2lwbGFuMi5vOiBJbiBmdW5j
dGlvbiBgdHJhbnNwNHguY29uc3Rwcm9wLjAnOgo+IGMycF9pcGxhbjIuYzooLnRleHQrMHg5OCk6
IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGMycF91bnN1cHBvcnRlZCcKPiBtYWtlOiAqKiogW01h
a2VmaWxlOjEwOTQ6IHZtbGludXhdIEVycm9yIDEKClRoZSBmaXggZm9yIHRoYXQgcmVncmVzc2lv
biAoZmluYWxseSkgbWFkZSBpdCBpbiByYzc6CmIzMzBmMzk3MmY0ZjJhODIgKCJmYmRldjogYzJw
OiBGaXggbGluayBmYWlsdXJlIG9uIG5vbi1pbmxpbmluZyIpLgoKR3J7b2V0amUsZWV0aW5nfXMs
CgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0KR2VlcnQgVXl0dGVyaG9ldmVuIC0t
IFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9y
ZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2Fs
bCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkg
anVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
