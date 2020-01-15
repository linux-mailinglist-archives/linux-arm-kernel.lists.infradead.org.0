Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DE513CCBA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 20:01:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G07T674KZfElYIdPEH8ANt379WVTVqIRlKkfdXyg3iA=; b=oViJwUOainlA6p
	B8wSWLiuZB3Lnj6vow6XiMv4aQQQamMkk4qYeN0R29m8fkJ0TMk5ddSRSMKx1cCCFYGYRYXdxFEhi
	FMbdFgqTMWi44g+WeunumdVXRDL0j44GaF3LoNBmcdAVxWRD8CspU7WSHJFDXP19cT/5sHwusMBTG
	prmaPqC/Ce7Sf4iTLWMfj/G242moAm5QHQGEG0Z7aV3Qiz6iNgnQTkrl81il7ralxtuy80nbVKjH3
	B8Q0scJLB/XiwU7lqIBB+2yrAHCH6l20M3QUS3ZeHX71aaD42rTV37OuiFK5dfV7OTscow1JnNPlg
	qudyoGNaMM0vA3X8n72w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irnuO-0005VK-50; Wed, 15 Jan 2020 19:00:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irnuC-0005Uf-US
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 19:00:44 +0000
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 65EA624680
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 19:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579114840;
 bh=MlG4s8gIf9QIp7cmwxv8Ub3MJBcjIUIPloJI7is/YIM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=bGAWEXGuvwR5V8/IBccmj+E3ISleKHwW/4Bu8O4vIMtC9e6TXQJS3Du4rHFBTCbYI
 oZsiYeuWgl6Vb/9gLW5a0rslAAncSApseT1j89zkRCVZ8aFXK2aq3eXEk4uoFoIDGU
 kYsuKnL7Kh2/RcLp9aajLIEWSQ0V91KwaX2oUBC8=
Received: by mail-qk1-f181.google.com with SMTP id a203so16721732qkc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 11:00:40 -0800 (PST)
X-Gm-Message-State: APjAAAXTgzrw2sUbTiF6GIArt0FLIpHhwGFgaJLUp33P/aRrTFbHOkTl
 uClJertpI1kAYWpVAeMKr9xqBeTORUGgR8Yo3Q==
X-Google-Smtp-Source: APXvYqxnDh1IEhLyZP31/QgZF61ylKseQtKsfhE9nWDF1jxrTcOeHZYesnoZvVtxadzwM8P/TeMg5/NndDzuP3fXuos=
X-Received: by 2002:a37:a70b:: with SMTP id q11mr23911932qke.393.1579114839424; 
 Wed, 15 Jan 2020 11:00:39 -0800 (PST)
MIME-Version: 1.0
References: <20200109145333.12260-1-benjamin.gaignard@st.com>
 <20200109145333.12260-2-benjamin.gaignard@st.com>
 <20200115143521.GA15099@bogus>
 <CA+M3ks7FGZ9TMO0=yXrhZph1Cn1GQ+2-tM7SnDrRDXVoCjrTjA@mail.gmail.com>
In-Reply-To: <CA+M3ks7FGZ9TMO0=yXrhZph1Cn1GQ+2-tM7SnDrRDXVoCjrTjA@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 15 Jan 2020 13:00:28 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLki6D4soncDo0ZEh4xeC9+U_Kf2dnOVjrMTY1QrXTjfg@mail.gmail.com>
Message-ID: <CAL_JsqLki6D4soncDo0ZEh4xeC9+U_Kf2dnOVjrMTY1QrXTjfg@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: timer: Add STM32 Low Power Timer bindings
To: Benjamin Gaignard <benjamin.gaignard@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_110041_025309_DD3B09A2 
X-CRM114-Status: GOOD (  24.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 pascal paillet <p.paillet@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKYW4gMTUsIDIwMjAgYXQgODo0NiBBTSBCZW5qYW1pbiBHYWlnbmFyZAo8YmVuamFt
aW4uZ2FpZ25hcmRAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBMZSBtZXIuIDE1IGphbnYuIDIwMjAg
w6AgMTU6MzUsIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+IGEgw6ljcml0IDoKPiA+Cj4g
PiBPbiBUaHUsIEphbiAwOSwgMjAyMCBhdCAwMzo1MzozMVBNICswMTAwLCBCZW5qYW1pbiBHYWln
bmFyZCB3cm90ZToKPiA+ID4gRG9jdW1lbnQgU1RNMzIgTG93IFBvd2VyIGJpbmRpbmdzLgo+ID4g
Pgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25h
cmRAc3QuY29tPgo+ID4gPiAtLS0KPiA+ID4gIC4uLi9iaW5kaW5ncy90aW1lci9zdCxzdG0zMi1s
cC10aW1lci55YW1sICAgICAgICAgIHwgNDQgKysrKysrKysrKysrKysrKysrKysrKwo+ID4gPiAg
MSBmaWxlIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKykKPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGltZXIvc3Qsc3RtMzItbHAtdGlt
ZXIueWFtbAo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3RpbWVyL3N0LHN0bTMyLWxwLXRpbWVyLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvdGltZXIvc3Qsc3RtMzItbHAtdGltZXIueWFtbAo+ID4gPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+ID4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLmNhMDQwYjk2ZGM0Nwo+
ID4gPiAtLS0gL2Rldi9udWxsCj4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy90aW1lci9zdCxzdG0zMi1scC10aW1lci55YW1sCj4gPgo+ID4gVXNlIHRoZSBjb21w
YXRpYmxlIGZvciB0aGUgZmlsZW5hbWUuCj4KPiBpdCB3aWxsIGJlIGluIHYyCj4KPiA+Cj4gPiA+
IEBAIC0wLDAgKzEsNDQgQEAKPiA+ID4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwt
Mi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQo+ID4gPiArJVlBTUwgMS4yCj4gPiA+ICstLS0KPiA+
ID4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvdGltZXIvc3Qsc3RtMzItbHAt
dGltZXIueWFtbCMKPiA+ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNj
aGVtYXMvY29yZS55YW1sIwo+ID4gPiArCj4gPiA+ICt0aXRsZTogU1RNaWNyb2VsZWN0cm9uaWNz
IFNUTTMyIExvdyBQb3dlciAxNiBiaXRzIHRpbWVycyBiaW5kaW5ncwo+ID4gPiArCj4gPiA+ICtt
YWludGFpbmVyczoKPiA+ID4gKyAgLSBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25h
cmRAc3QuY29tPgo+ID4gPiArCj4gPiA+ICtwcm9wZXJ0aWVzOgo+ID4gPiArICBjb21wYXRpYmxl
Ogo+ID4gPiArICAgIGNvbnN0OiBzdCxzdG0zMi1scHRpbWVyLWNsa2V2ZW50Cj4gPgo+ID4gJ2Ns
a2V2ZW50JyBpcyBhIGgvdyBuYW1lPyBTZWVtcyByZWR1bmRhbnQgYW5kIGFidXNpbmcgY29tcGF0
aWJsZSB0bwo+ID4gYmluZCB0byBhIHNwZWNpZmljIExpbnV4IGRyaXZlci4KPgo+IE5vIGJ1dCBz
dCxzdG0zMi1scHRpbWVyIGNvbXBhdGlibGUgaXMgYWxyZWFkeSB1c2VkIGZvciBhbm90aGVyIGRy
aXZlcgo+IFRoZSBoYXJkd2FyZSBibG9jayBjYW4gaW1wbGVtZW50IG11bHRpcGxlIGZlYXR1cmVz
IGJ1dCBub3QgYWxsIGF0IHRoZSBzYW1lIHRpbWUKPiBzbyBJIHRyeSB0byBkaXN0aW5ndWlzaCB0
aGVtIHdpdGggdGhlIGNvbXBhdGlibGUuCj4gSW4gdGhpcyBwYXJ0aWN1bGFyIGNhc2UgSSB3b3Vs
ZCBsaWtlIHRhZyBpdCBhcyBhIGNsb2NrIGV2ZW50IGRyaXZlci4KClRoYXQncyBhIExpbnV4IHNw
ZWNpZmljIHRoaW5nIHdoaWNoIHdlJ3ZlIHNhaWQgbm8gdG8gZm9yIDEwIHllYXJzLgoKSXMgIk5v
dCBhdCB0aGUgc2FtZSB0aW1lIiBhIGNoaXAgZGVzaWduIHRpbWUgY29uZmlndXJhdGlvbiBvciBy
dW4tdGltZQpjb25maWcuIElmIHRoZSBsYXR0ZXIsIHdoeSBkbyB5b3Ugd2FudCB0byB1c2UgYSBw
YXJ0aWN1bGFyIGluc3RhbmNlCm92ZXIgYW5vdGhlciBvbmUgZm9yIGNsb2NrIGV2ZW50PyBUaGVy
ZSBoYXMgdG8gYmUgc29tZSBoL3cgZGlmZmVyZW5jZS4KRGVzY3JpYmUgdGhlIGRpZmZlcmVuY2Ug
YW5kIHRoZW4gdXNlIHRoYXQgdG8gZ3JhYiB0aGUgZGV2aWNlIHRvIHVzZQpmb3IgYSBjbG9ja2V2
ZW50LiBJJ20gZmluZSBpZiB5b3Ugb21pdCB0aGUgcHdtIG5vZGUgYW5kIHRoZW4gdXNlIHRoYXQK
dG8gZGVjaWRlIHdoaWNoIGluc3RhbmNlIHRvIHVzZS4KClJvYgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
