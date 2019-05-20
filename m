Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 053F523B5C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:57:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k48FrDY7eN0rkjjZoax4o2kXG4TwpodiUDQgfj3id0o=; b=m6RdqX8IV7iLE6
	DxAcazF3S0PJ+Z+umoYwIcWkC4CC3+Eecy6ti6hOCbFDLYuUGsY9+3adQOJrxEn0Gc4n4KwMmwV08
	bve/5PiZd03ZYqNJ/w5ck0uGG6t5dQo09SXKCbv1+0icH20L6uFGR2sGEpICTxGC0Q25FjSSgCLKf
	xG0SQxgoXpGBOnksgyXxqbO7CuA9ct+gKwmSjiAuTeRWVRxTBFEJPSNcP2MLpEcAZg7IsEDP2kEvm
	OVE1ShQYR9UQweHPBvbDbn263kWLF0q754wLExtvxZxZRufyCgNgglmAz6ydoJLM6M/OM2LpdJVoa
	myWpybvfGVhHk2bmoYeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjjH-0006p1-Sm; Mon, 20 May 2019 14:57:31 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjjA-0006o8-PX
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:57:26 +0000
Received: by mail-ed1-f68.google.com with SMTP id g57so24269195edc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:57:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+tTKrGaZbZAWn5dajRxbdafRjHqzlUJiRVVSR6xwRss=;
 b=QNeVipHLCpDHLRD7MF2wkHSG+r7ZDOdrMjKzn/tTiTBpjNcicER3tWJGYIV8hTrTLJ
 nDyj5LDpieejOx2hynfWuGJ6ZniGsH4EAWTmylQ9rArs6LDjzI4QnmaDd1IorpjKXe8o
 BMljNlXfMJSRbfMZ2d6UZuSPQKXD1SAd4RmD5OZ0sfig56cEweRZFgk8YGBSY5WIUguP
 4VZzROncZ6ExBIm7JJOK9WqN2f08E9YJCl8JQQTyRi3yWCpwOweYDCLXlskNDW7gwAyP
 voRyL3hdnGFRdovuPWtKYacH17O3AuK2B4iI/KL+dscG3Yqd7j5sQMsdz/WzLgdPtwfI
 M0PQ==
X-Gm-Message-State: APjAAAXRkIqPsD1e66JXRQw1L6RLtM/wvtZXTd2vpnownbzYxzcAuLTp
 Pz40AMP50FLfa/vGwClGWKYDaXTCf1U=
X-Google-Smtp-Source: APXvYqxKMsbvBC7rE/kwZh2f8Zh7aGg5B8VlSaSf5DQ/HnAYiwtfic7Zg3KqoiJsSggsZ/i5cwPRqA==
X-Received: by 2002:aa7:c391:: with SMTP id k17mr75951020edq.166.1558364238757; 
 Mon, 20 May 2019 07:57:18 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com.
 [209.85.128.43])
 by smtp.gmail.com with ESMTPSA id i16sm3117211ejh.79.2019.05.20.07.57.16
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 07:57:17 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id x64so13624367wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:57:16 -0700 (PDT)
X-Received: by 2002:a1c:80c3:: with SMTP id b186mr12164236wmd.43.1558364236763; 
 Mon, 20 May 2019 07:57:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190518152355.11134-1-peron.clem@gmail.com>
 <20190518152355.11134-3-peron.clem@gmail.com>
 <20190520073652.itk452vrpnicta5v@flea>
 <CAJiuCceEL9xH45P6Gj99YTir_1tkyraf5HefDNfm9p+UtdLs8w@mail.gmail.com>
 <20190520144404.zprbuqt3d7uuxgr2@flea>
In-Reply-To: <20190520144404.zprbuqt3d7uuxgr2@flea>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 20 May 2019 22:57:04 +0800
X-Gmail-Original-Message-ID: <CAGb2v65P1tne+-FuJ-tLTRMaPdBPYd9eJS+rS5TXaAULNCLBZg@mail.gmail.com>
Message-ID: <CAGb2v65P1tne+-FuJ-tLTRMaPdBPYd9eJS+rS5TXaAULNCLBZg@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] arm64: dts: allwinner: h6: add watchdog node
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_075724_827117_2DC9CB35 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-watchdog@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMjAsIDIwMTkgYXQgMTA6NDQgUE0gTWF4aW1lIFJpcGFyZAo8bWF4aW1lLnJp
cGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBPbiBNb24sIE1heSAyMCwgMjAxOSBhdCAxMDoy
MTo0MEFNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBIaSwKPiA+Cj4gPiBPbiBN
b24sIDIwIE1heSAyMDE5IGF0IDA5OjM2LCBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGJv
b3RsaW4uY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gT24gU2F0LCBNYXkgMTgsIDIwMTkgYXQgMDU6
MjM6NTNQTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gPiA+IEFsbHdpbm5lciBI
NiBoYXMgYSB3YXRjaG9nIG5vZGUgd2hpY2ggc2VlbXMgYnJva2VuCj4gPiA+ID4gb24gc29tZSBi
b2FyZHMuCj4gPiA+ID4KPiA+ID4gPiBUZXN0IGhhcyBiZWVuIHBlcmZvcm1lZCBvbiBzZXZlcmFs
IGJvYXJkcy4KPiA+ID4gPgo+ID4gPiA+IENoZW4tWXUgVHNhaSBib2FyZHM6Cj4gPiA+ID4gUGlu
ZSBINjQgLSBINjQ0OEJBIDc3ODIgPT4gT0sKPiA+ID4gPiBPcmFuZ2VQaSBMaXRlIDIgLSBIODA2
OEJBIDYxQzIgPT4gS08KPiA+ID4gPgo+ID4gPiA+IE1hcnRpbiBBeW90dGUgYm9hcmRzOgo+ID4g
PiA+IFBpbmUgSDY0IC0gSDgwNjlCQSA2ODkyID0+IE9LCj4gPiA+ID4gT3JhbmdlUGkgMyAtIEhB
MDQ3QkEgNjlXMiA9PiBLTwo+ID4gPiA+IE9yYW5nZVBpIE9uZSBQbHVzIC0gSDczMTBCQSA2ODQy
ID0+IEtPCj4gPiA+ID4gT3JhbmdlUGkgTGl0ZTIgLSBINjQ0OEJBIDY2NjIgPT4gS08KPiA+ID4g
Pgo+ID4gPiA+IENsw6ltZW50IFDDqXJvbiBib2FyZDoKPiA+ID4gPiBCZWVsaW5rIEdTMSAtIEg3
MzA5QkEgNjg0MiA9PiBLTwo+ID4gPiA+Cj4gPiA+ID4gQXMgaXQgc2VlbXMgbm90IGZpeGFibGUg
Zm9yIG5vdywgZGVjbGFyZSB0aGUgbm9kZQo+ID4gPiA+IGJ1dCBsZWF2ZSBpdCBkaXNhYmxlIHdp
dGggYSBjb21tZW50Lgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOp
cm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KPiA+ID4KPiA+ID4gSWYgaXQgZG9lc24ndCB3b3Jr
IG1vc3QgYm9hcmRzLCB0aGVuIHdoeSBkbyB3ZSBuZWVkIHRvIG1lcmdlIHRoYXQKPiA+ID4gcGF0
Y2ggaW4gdGhlIGZpcnN0IHBsYWNlPwo+ID4KPiA+IE15IHBlcnNvbm5hbCBvcGluaW9uLCBpcyB0
aGF0IGhhdmluZyB0aGUgSVAgZGVjbGFyZWQgYW5kIGRpc2FibGVkIHdpdGgKPiA+IGEgY29tbWVu
dCBzYXlpbmcgIml0J3MgYnJva2VuIG9uIHNvbWUgYm9hcmRzIiBpbiB0aGUgZGV2aWNlLXRyZWUg
aXMKPiA+IGJldHRlciB0aGFuIG5vdCBoYXZpbmcgYXQgYWxsLgo+ID4KPiA+IFRoaXMgd2lsbCBl
eHBsaWNpdCBzYXkgInRoZSBJUCBleGlzdCBidXQgZG9uJ3QgdXNlIGl0ISIuCj4gPiBNYXliZSBz
b21lIHBlb3BsZSB3aXRoIGEgZnVuY3Rpb25uYWwgYm9hcmQgd291bGQgbGlrZSB0byBleHBsaWNp
dGx5Cj4gPiB1c2UgaXQgb24gdGhlaXIgZHRzLgo+Cj4gWWVhaCwgdGhhdCBtYWtlcyBzZW5zZS4g
Q2hlbi1ZdSwgYW55IG9waW5pb24gb24gdGhlIG1hdHRlcj8KCldvcmtzIGZvciBtZS4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
