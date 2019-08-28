Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2FDA0040
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 12:53:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5tSR3Rq73BFKL9k9RQIizh10yCk0LYnDtwHdWttkM8=; b=cua5CTzigFWuDI
	1DGAtvhgAdDUDsMXC38pRCQHd+040oIIqkZOmATc6jYNmPKSRV+nhuIFwmwkr4StNbrXg1UH9+MCZ
	kIoAre2RA5ZhgVmGzXDEPsuZIyzdOC7LayqeUghGBBTBkVbEWMWpDZEBQwyfglS5rYqthANNIxPRG
	DLLJ5D7t0miIuQGr0RtXBxYYsdfHxrfw9J9U68zo09Yyn9zwzyqQGz2+72F/pKH+oPu81564uTEgC
	EkfCF/NQZm4dgXWa33K42Bg5WMqARSfNRa6umgviGH0lMs/YIDTbL9XnKkfpPNjKRp4sGUkHDxCnn
	J3br3SEQBUAT+S2xsuJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2vZe-0006KO-F8; Wed, 28 Aug 2019 10:53:11 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2vZQ-0006Jj-V7
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 10:52:58 +0000
Received: by mail-wm1-x343.google.com with SMTP id f72so2262936wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 03:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=3bmOMK5FL6zFob4mCFt8AttEsF6S4HMbVALEegM1I+c=;
 b=A9uRkJiAkBq18NwoLSOtlupjAW8mlK4uc/rtPAqgyQui+yv3DyUIIZ8JmZSJ280TLo
 ZU9Muw7jMpo85ullp6/IwQcPsJ0QQZLlKhFsHJb8Po9a0cIKIrtkz8HOjnpW0ofnUQ+N
 x/HRL/Ho/OONbsmetTHZ/9BgBDT8kWKrS1+Tn7iD6AHPmjPvrkZXuKjJW75y827eg6EA
 GCfOSOeKYJ3l+WCmQpyHeG13iIWimS6/NeViIcpT/O5qJ2OOthpcye0F+j4g/125cmOG
 JbniZIVXg9gJSVCN3A8Q4sYgDOf9K/fAqbstKmwsIPLIBbtZM9I/u/JI3TgpY2OSCZBn
 EFtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3bmOMK5FL6zFob4mCFt8AttEsF6S4HMbVALEegM1I+c=;
 b=ts6aBP44m2qjaIZYHwwfV7vmWd/6fH7MeRItrcUga/1FvLbUXdLwuoDWacnJoHngIy
 5jvzoYxoTH0F0CXytVDMVzo8LfS3dcIltosSejPRRWMnrTqJ51a86TaL7KsDQJM4fdA4
 B9gf4hcqe8V6RRRyFYOtjXSKaGHss6Ud77RkGT8fk2tkVv+l2auIOLxX60+VoDZT6UXp
 E1G6V1ZrgMdXfr0x+KcYh6NVO1i1gyS7wd52qa5jIAbzxiboeBco1aTAI8e0HwaEEpX4
 BTxRsj0H89Z1iQ0rAOZO45uuBmguM2GWIBe2hU0sEi9x3MVxasFsYekOMZRvShOHY6qJ
 u8jg==
X-Gm-Message-State: APjAAAVGCyp11PrehzAo0GjmoEgAnw3Vm+fL8xqRmdy7Y1OYK9cCmJ0j
 kUmi7dfP5qw9NFdKsoDoLuo=
X-Google-Smtp-Source: APXvYqyKxQtG6BjBhXJkeq2+oHYwaCMcBdW9tzCFT7rOhDmD4P3VOsBLn/ZkeCSzTep/JcLQfxqwCw==
X-Received: by 2002:a1c:f016:: with SMTP id a22mr4146777wmb.170.1566989574337; 
 Wed, 28 Aug 2019 03:52:54 -0700 (PDT)
Received: from [192.168.0.8] (57.166.117.91.dynamic.reverse-mundo-r.com.
 [91.117.166.57])
 by smtp.gmail.com with ESMTPSA id g13sm2903957wrw.87.2019.08.28.03.52.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Aug 2019 03:52:53 -0700 (PDT)
Subject: Re: [PATCH] mmc: sunxi: fix unusuable eMMC on some H6 boards by
 disabling DDR
To: Ulf Hansson <ulf.hansson@linaro.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
References: <20190825150558.15173-1-alejandro.gonzalez.correo@gmail.com>
 <CAPDyKFr5opD2yBXmFRBY-9oA_3ShVv0GPFRO8Q_8TEiT+z2pQA@mail.gmail.com>
From: =?UTF-8?Q?Alejandro_Gonz=c3=a1lez?= <alejandro.gonzalez.correo@gmail.com>
Message-ID: <f84d62b7-da00-f2bd-36e9-972435080bfe@gmail.com>
Date: Wed, 28 Aug 2019 12:52:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFr5opD2yBXmFRBY-9oA_3ShVv0GPFRO8Q_8TEiT+z2pQA@mail.gmail.com>
Content-Language: es-ES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_035257_030417_E01CA48E 
X-CRM114-Status: GOOD (  22.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alejandro.gonzalez.correo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RWwgMjcvOC8xOSBhIGxhcyAxNToyNCwgVWxmIEhhbnNzb24gZXNjcmliacOzOj4gQXNzdW1pbmcg
dGhpcyBzaG91bGQgZ28gc3RhYmxlIGFzIHdlbGw/IFBlcmhhcHMgeW91IGNhbiBmaW5kIGEKPiBy
ZWxldmFudCBjb21taXQgdGhhdCB3ZSBjYW4gcHV0IGFzIGEgZml4ZXMgdGFnIGFzIHdlbGw/Cj4g
Cj4gS2luZCByZWdhcmRzCj4gVWZmZQoKVGhlIG1vc3QgcmVsZXZhbnQgY29tbWl0IEkndmUgZm91
bmQgdGhhdCBpcyByZWxhdGVkIHRvIGVuYWJsaW5nIEREUiBzcGVlZHMKb24gSDYgYm9hcmRzIGlz
IHRoaXMgb25lOiBodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvY29tbWl0LzA3YmFm
YzFlMzUzNmE0ZTNjNDIyZGJkMTMzNDE2ODhiNTRmMTU5YmIgLgpCdXQgaXQgZG9lc24ndCBhZGRy
ZXNzIHRoZSBINiBTb0Mgc3BlY2lmaWNhbGx5LCBzbyBJIGRvdWJ0ZWQgd2hldGhlciBpdCB3b3Vs
ZApiZSBhcHByb3BpYXRlIHRvIG1hcmsgdGhpcyBwYXRjaCBhcyBmaXhpbmcgaXQsIGFuZCBvcHRl
ZCB0byBub3QgZG8gaXQuIEkgZG9uJ3QKbWluZCBhZGRpbmcgdGhhdCB0YWcgaWYgaXQncyBhcHBy
b3BpYXRlLCB0aG91Z2ggOi0pCgpPbiB0aGUgb3RoZXIgaGFuZCwgSSdtIG5vdCBzdXJlIHRoYXQg
SSB1bmRlcnN0b29kIGNvcnJlY3RseSB3aGF0IGRvIHlvdSBtZWFuIGJ5CnRoaXMgcGF0Y2ggZ29p
bmcgc3RhYmxlLCBidXQgSSBtaWdodCBzYXkgdGhlIGNoYW5nZXMgdGhlbXNlbHZlcyBhcmUgc3Rh
YmxlIGFuZCB3b3JrLgpUaGUgb25seSBkb3duc2lkZSBJIGNhbiB0aGluayBvZiB0byB0aGVtIGlz
IHRoYXQgdGhleSBhcmUgYSBraW5kIG9mIHdvcmthcm91bmQgdGhhdApyZWR1Y2VzIHBlcmZvcm1h
bmNlIG9uIEg2IGJvYXJkcyBhbmQvb3IgZU1NQyBub3QgYWZmZWN0ZWQgYnkgdGhpcyBwcm9ibGVt
IChhcmUgdGhlcmUKYW55PyksIHVubGVzcyBkZXZpY2UgdHJlZXMgYXJlIGNoYW5nZWQuCgpFbCAy
Ny84LzE5IGEgbGFzIDE1OjMyLCBNYXhpbWUgUmlwYXJkIGVzY3JpYmnDszoKPiBPbiBTdW4sIEF1
ZyAyNSwgMjAxOSBhdCAwNTowNTo1OFBNICswMjAwLCBBbGVqYW5kcm8gR29uesOhbGV6IHdyb3Rl
Ogo+PiBTb21lIEFsbHdpbm5lciBINiBib2FyZHMgaGF2ZSB0aW1pbmcgcHJvYmxlbXMgd2hlbiBk
ZWFsaW5nIHdpdGgKPj4gRERSLWNhcGFibGUgZU1NQyBjYXJkcy4gVGhlc2UgYm9hcmRzIGluY2x1
ZGUgdGhlIFBpbmUgSDY0IGFuZCBUYW5peCBUWDYuCj4+Cj4+IFRoZXNlIHRpbWluZyBwcm9ibGVt
cyByZXN1bHQgaW4gb3V0IG9mIHN5bmMgY29tbXVuaWNhdGlvbiBiZXR3ZWVuIHRoZQo+PiBkcml2
ZXIgYW5kIHRoZSBlTU1DLCB3aGljaCByZW5kZXJzIHRoZSBtZW1vcnkgdW5zdWFibGUgZm9yIGV2
ZXJ5Cj4+IG9wZXJhdGlvbiBidXQgc29tZSBiYXNpYyBjb21tbWFuZHMsIGxpa2UgcmVhZGluZyB0
aGUgc3RhdHVzIHJlZ2lzdGVyLgo+Pgo+PiBUaGUgY2F1c2Ugb2YgdGhlc2UgdGltaW5nIHByb2Js
ZW1zIGlzIG5vdCB5ZXQgd2VsbCBrbm93biwgYnV0IHRoZXkgZ28KPj4gYXdheSBieSBkaXNhYmxp
bmcgRERSIG1vZGUgb3BlcmF0aW9uIGluIHRoZSBkcml2ZXIuIExpa2Ugb24gc29tZSBINQo+PiBi
b2FyZHMsIGl0IG1pZ2h0IGJlIHRoYXQgdGhlIHRyYWNlcyBhcmUgbm90IHByZWNpc2UgZW5vdWdo
IHRvIHN1cHBvcnQKPj4gdGhlc2Ugc3BlZWRzLiBIb3dldmVyLCBKZXJuZWogU2tyYWJlYyBjb21w
YXJlZCB0aGUgQlNQIGRyaXZlciB3aXRoIHRoaXMKPj4gZHJpdmVyLCBhbmQgZm91bmQgdGhhdCB0
aGUgQlNQIGRyaXZlciBjb25maWd1cmVzIHBpbmN0cmwgdG8gb3BlcmF0ZSBhdAo+PiAxLjggViB3
aGVuIGVudGVyaW5nIEREUiBtb2RlIChhbHRob3VnaCAzLjMgViBvcGVyYXRpb24gaXMgc3VwcG9y
dGVkKSwgd2hpbGUKPj4gdGhlIG1haW5saW5lIGtlcm5lbCBsYWNrcyBhbnkgbWVjaGFuaXNtIHRv
IHN3aXRjaCB2b2x0YWdlcyBkeW5hbWljYWxseS4KPj4gRmluYWxseSwgb3RoZXIgcG9zc2libGUg
Y2F1c2UgbWlnaHQgYmUgc29tZSB0aW1pbmcgcGFyYW1ldGVyIHRoYXQgaXMKPj4gZGlmZmVyZW50
IG9uIHRoZSBINiB3aXRoIHJlc3BlY3QgdG8gb3RoZXIgU29Dcy4KPiAKPiBUaGlzIHNob3VsZCBi
ZSBhIGNvbW1lbnQgaW4gdGhlIGRyaXZlciB3aGVyZSB0aGlzIGlzIGRpc2FibGVkLgo+IAo+IE1h
eGltZQoKVGhhbmsgeW91IGZvciB5b3VyIHJldmlldy4gSSdsbCBtZW50aW9uIHRoYXQgYnJpZWZs
eSBpbiBhIGNvbW1lbnQgaW4gdGhlIGNvZGUgZm9yCnRoZSBuZXh0IHJldmlzaW9uIG9mIHRoaXMg
cGF0Y2guCgpSZWdhcmRzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
