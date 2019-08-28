Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C69A0332
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 15:30:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KmbaRmuiWmlTsVBNKLRYmhOuXpUMVjjWOTKLLtops8g=; b=kTBai+53M6qiZ0
	cQLFJoV86jzUO+2T042SU8p285gV3TElITArqNzaoSbGEnQ9Tkn93inuzpQ9Np4R5I3gLZO3FNuA8
	x4wTU7wjiOLje5Ogxpyu2+5iikehGh8H9gxGCgbxLyvKiFjch7cjvBJ7iCHqPQVAa4Dpg/J8U5fk/
	kFnDNTAZSJSPCtFeX+Ew8ybCii+ju/znRJBUChZmTCQJkiWDrca+dcmtD2/8bwsr82NEtoZgLhE6j
	3q9v+itsWXAbBXjYECpJJO/44Zh2z7edNQikhLHTp9TmJ/UVnrQHvdpATgNmIcIngN1ePkzCkPVUJ
	9aQBqBN1C4ljXgVuSiyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2y1Q-0007UF-Nx; Wed, 28 Aug 2019 13:30:00 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2y1G-0007TD-CA
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 13:29:51 +0000
Received: by mail-ed1-f65.google.com with SMTP id x19so2994239eda.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 06:29:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=l02jzc0gjHp1bXKxvkuGEA49qK2oKU/ON+JEnkF077U=;
 b=nguh7FoIuQEYB1+LNi7uAkqXYi5pSsNsf4aPqTBlfPJ7mjzGdrdO0FLgSZir9/uEM2
 JNS4j/06LAOqSdMNrUug9OlMzajfpxK+I54CqDTpRpvjo/DSw8X93510w0UtB/4JBFs+
 bUSN+EGNXl8/33i5u5W+5M8TsymCMpfSrxsJ+oAH2hgnpUJG8ZGshVeK4/3qd0KPZs2S
 Af9ttBqKIC3R2XmxR7H8WtixabjMYYqK1P+SzfWm1UTodWqMBC53Jvjmqtk2EE3yRM4F
 7bdeJ8oq6zEynrSfTin9NvySEICQRtUXvmzqA6ujzcTnkVG8R967id+3mdlF5NexmzEm
 Zr1Q==
X-Gm-Message-State: APjAAAVxgs/El8GB4BoKE/0kCDqaG1ILyK4faoQQRlYtKEk1AkwtRdKo
 jKJzgyFQum5xIkgAdMM5jXoxMBD82+A=
X-Google-Smtp-Source: APXvYqynr6OjFqyqllrtqqVRI5VgK1mppxDvuQ9h0n7CjITocQ4Sp+8Rg5WIyNAfY2mGRUHZjuBuOg==
X-Received: by 2002:a50:dec8:: with SMTP id d8mr4021349edl.76.1566998985744;
 Wed, 28 Aug 2019 06:29:45 -0700 (PDT)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com.
 [209.85.221.54])
 by smtp.gmail.com with ESMTPSA id s4sm390752ejq.72.2019.08.28.06.29.43
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Aug 2019 06:29:44 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id t16so2534943wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 06:29:43 -0700 (PDT)
X-Received: by 2002:adf:c613:: with SMTP id n19mr4678819wrg.109.1566998983470; 
 Wed, 28 Aug 2019 06:29:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190825150558.15173-1-alejandro.gonzalez.correo@gmail.com>
 <CACRpkdazfe3gJr6Q+X05GzxPuKtUg0M780SPA_oR5bd+-xBPvA@mail.gmail.com>
In-Reply-To: <CACRpkdazfe3gJr6Q+X05GzxPuKtUg0M780SPA_oR5bd+-xBPvA@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 28 Aug 2019 21:29:32 +0800
X-Gmail-Original-Message-ID: <CAGb2v67e8EiS-LUuhAyPc57nWd4iOBEWC_SZbH801Lzi4QWGyg@mail.gmail.com>
Message-ID: <CAGb2v67e8EiS-LUuhAyPc57nWd4iOBEWC_SZbH801Lzi4QWGyg@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH] mmc: sunxi: fix unusuable eMMC on some
 H6 boards by disabling DDR
To: =?UTF-8?Q?Alejandro_Gonz=C3=A1lez?= <alejandro.gonzalez.correo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_062950_417025_2F7A79AB 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Greg KH <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBdWcgMjgsIDIwMTkgYXQgODo1MiBQTSBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxs
ZWlqQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gU3VuLCBBdWcgMjUsIDIwMTkgYXQgNTowNiBQ
TSBBbGVqYW5kcm8gR29uesOhbGV6Cj4gPGFsZWphbmRyby5nb256YWxlei5jb3JyZW9AZ21haWwu
Y29tPiB3cm90ZToKPgo+ID4gSmVybmVqIFNrcmFiZWMgY29tcGFyZWQgdGhlIEJTUCBkcml2ZXIg
d2l0aCB0aGlzCj4gPiBkcml2ZXIsIGFuZCBmb3VuZCB0aGF0IHRoZSBCU1AgZHJpdmVyIGNvbmZp
Z3VyZXMgcGluY3RybCB0byBvcGVyYXRlIGF0Cj4gPiAxLjggViB3aGVuIGVudGVyaW5nIEREUiBt
b2RlIChhbHRob3VnaCAzLjMgViBvcGVyYXRpb24gaXMgc3VwcG9ydGVkKSwgd2hpbGUKPiA+IHRo
ZSBtYWlubGluZSBrZXJuZWwgbGFja3MgYW55IG1lY2hhbmlzbSB0byBzd2l0Y2ggdm9sdGFnZXMg
ZHluYW1pY2FsbHkuCgpBRkFJSyBUaGUgUGluZSBINjQgZG9lcyBub3QgaGF2ZSB0aGUgYWJpbGl0
eSB0byBzd2l0Y2ggSS9PIHZvbHRhZ2VzLiBJdCBpcwpmaXhlZCB0byBlaXRoZXIgMS44ViAodGhl
IGRlZmF1bHQgYmFzZWQgb24gdGhlIHNjaGVtYXRpY3MpIG9yIDMuM1YuCgo+ICguLi4pCj4gPiB0
aGUga2VybmVsIGxhY2tzIHRoZSByZXF1aXJlZAo+ID4gZHluYW1pYyBwaW5jdHJsIGNvbnRyb2wg
Zm9yIG5vdwo+Cj4gVGhpcyBpcyBub3QgYSBwaW4gY29udHJvbCB0aGluZywgdGhlIEkvTyB2b2x0
YWdlIGxldmVsIGlzIHVzdWFsbHkKPiBjb250cm9sbGVkIGJ5IGEgcmVndWxhdG9yIGNhbGxlZCBW
Q0NRLCBpZiB0aGUgc2VsZWN0aW9uIG9mIHRoZQo+IHZvbHRhZ2UgcmFpbHMgaXMgaW5zaWRlIHRo
ZSBwaW4gY29udHJvbCByZWdpc3RlcnMsIHNlZSB0aGUgc29sdXRpb24KPiBpbiBkcml2ZXJzL3Bp
bmN0cmwvc2gtcGZjL3BmYy1zaDczYTAuYyB3aGVyZSB3ZSBzaW1wbHkgcHJvdmlkZQo+IGEgcmVn
dWxhdG9yIGZyb20gaW5zaWRlIHRoZSBwaW5jdHJsIGRyaXZlciB0byBtYWtlIHRoaW5ncyBlYXN5
Cj4gZm9yIHRoZSBNTUMgY29yZS4gRG8gdGhpcyB0aGluZyEKCk9yIGlmIGl0J3Mgc2ltcGx5IHZv
bHRhZ2UgdHJpbW1pbmcgZm9yIGlucHV0LCB0aGUgYTgwIHBpbmN0cmwgZHJpdmVyCmhhcyBzb21l
dGhpbmcgc2ltaWxhci4gQmFzaWNhbGx5IGl0IHJlZ2lzdGVycyBhIG5vdGlmaWVyIG9uIHRoZQp2
b2x0YWdlIHJhaWwgc3VwcGx5aW5nIGEgc2V0IG9mIHBpbnMsIGFuZCB0b2dnbGVzIHRoZSByZWdp
c3Rlcgp0byBtYXRjaCB0aGUgZXh0ZXJuYWwgdm9sdGFnZSBwcm92aWRlZC4KClVuZm9ydHVuYXRl
bHkgdGhlIHVzZXIgbWFudWFsIGlzIHF1aXRlIHZhZ3VlIG9uIHdoYXQgaXQgYWN0dWFsbHkgaXMu
Cgo+IElmIHlvdSBkb24ndCBoYXZlIHRpbWUgdG8gZml4IGl0IHVwIHByb3Blcmx5IHJpZ2h0IG5v
dyBJIHdvdWxkIHNsYXAKPiBpbiBhIGJpZyBGSVhNRSBpbiB0aGUgY29kZSBzbyBwZW9wbGUga25v
dyB0aGlzIG5lZWRzCj4gdG8gYmUgZml4ZWQgcHJvcGVybHkuCgorMQoKQ2hlbll1CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
