Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A031F69EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 16:28:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HaDmH9PSQIgMb8mCtmuyF/UnjJRdQ+Zzi6SHTW3QDQw=; b=i1Z3zAquCZTVY9/AW8SFrby/t
	vF2Y5tHQWXTjfHML3I/T+UoOEvS1njrOuiyAWNYgGockcrE/iAyZaBvYUpadYflL5HCgZ5wfYYrPF
	2iCKTCAUuI2fHw6aBPXS2LhFhkhQXOu8qqMyizkGsrwqC+8WsYuV4Gylgub32GpuWls5RgKfMClxw
	LK8ObNEMu89+8vB1WawQQFmwK5gohhXqIqKyM8pyjzJ66o6+q2ndOXb77YDyZ+zGbYxo1LNcbgbsU
	lc8v4hV3N7TLg2WafdPYKv41/xQ9JrA6DpoQDMXFottIKJ5JVjulG7R/QYaMFDMXEKpeI6f2J/5Ev
	IVgeGvWkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjOBW-0006Mv-K6; Thu, 11 Jun 2020 14:28:02 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjOB2-00068Y-P3
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 14:27:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 810DFAB76;
 Thu, 11 Jun 2020 14:27:33 +0000 (UTC)
Subject: Re: [PATCH v2 2/5] ARM: mstar: Add machine for MStar/Sigmastar
 infinity/mercury family ARMv7 SoCs
To: Daniel Palmer <daniel@0x0f.com>
References: <20191014061617.10296-2-daniel@0x0f.com>
 <20200610090421.3428945-3-daniel@0x0f.com>
 <976e789e-edd7-c44d-ea99-840ecb883ff8@suse.de>
 <CAFr9PXkvmZv3_EakxvRR+X522xN-a8epvF0ns10JeYCLn2uUKw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <1e8262e0-9b30-0788-446a-5d88c1bb49ea@suse.de>
Date: Thu, 11 Jun 2020 16:27:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAFr9PXkvmZv3_EakxvRR+X522xN-a8epvF0ns10JeYCLn2uUKw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_072733_108094_D287FB32 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Nathan Huckleberry <nhuck15@gmail.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, allen <allen.chen@ite.com.tw>,
 tim.bird@sony.com, Maxime Ripard <mripard@kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Krzysztof Adamski <k@japko.eu>,
 Christian Lamparter <chunkeey@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRGFuaWVsLAoKQW0gMTEuMDYuMjAgdW0gMTU6MDEgc2NocmllYiBEYW5pZWwgUGFsbWVyOgo+
IE9uIFRodSwgMTEgSnVuIDIwMjAgYXQgMjE6NDksIEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJA
c3VzZS5kZT4gd3JvdGU6Cj4+PiBwZXJpcGhlcmFscyBhbmQgc3lzdGVtIG1lbW9yeSBpbiBhIHNp
bmdsZSB0aW55IFFGTiBwYWNrYWdlIHRoYXQKPj4+IGNhbiBiZSBoYW5kIHNvbGRlcmVkIGFsbG93
aW5nIGFsbW9zdCBhbnlvbmUgdG8gZW1iZWQgTGludXgKPj4KPj4gInNvbGRlcmVkLCBhbGxvd2lu
ZyI/Cj4gCj4gVGhlIG9yaWdpbmFsIHJlYWRzIG9rIHRvIG1lLiBNYXliZSBJIGNhbiBqdXN0IHNw
bGl0IHRoYXQgaW50byB0d28gc2VudGVuY2VzPwo+IExpa2UgIi4uIFFGTiBwYWNrYWdlIHRoYXQg
Y2FuIGJlIGhhbmQgc29sZGVyZWQuIFRoaXMgYWxsb3dzIGFsbW9zdCBhbnlvbmUuLiIuCgpBcyBu
b24tbmF0aXZlIHNwZWFrZXIgSSBtZXJlbHkgd29uZGVyZWQgd2hldGhlciBhIGNvbW1hIHNob3Vs
ZCBiZXR0ZXIgYmUgCmluc2VydGVkIHRvIHNlcGFyYXRlIHRoZSB0d28gcGFydHMgb2YgdGhlIHNl
bnRlbmNlLiBTcGxpdHRpbmcgaXQgaW4gdHdvIApvciBsZWF2aW5nIGFzIGlzIHNob3VsZCBiZSBm
aW5lLCB0b28gLSBJIGFzc3VtZSB5b3UncmUgYSBuYXRpdmUgc3BlYWtlci4gCk1vc3QgcGVvcGxl
IHdpbGwgcmF0aGVyIHJlYWQgdGhlIGJpbmRpbmdzIGRvY3VtZW50IHRoYW4gb2xkIGdpdCBoaXN0
b3J5LCAKc28geW91IG1pZ2h0IHdhbnQgdG8gY29uc2lkZXIgYWRkaW5nIHN1Y2ggYSBkZXNjcmlw
dGlvbiBiZWxvdyBpdHMgdGl0bGUuCgo+Pj4gLS0tIGEvTUFJTlRBSU5FUlMKPj4+ICsrKyBiL01B
SU5UQUlORVJTCj4+PiBAQCAtMjExNCw2ICsyMTE0LDcgQEAgQVJNL01TdGFyL1NpZ21hc3RhciBB
Uk12NyBTb0Mgc3VwcG9ydAo+Pj4gICAgTTogIERhbmllbCBQYWxtZXIgPGRhbmllbEB0aGluZ3ku
anA+Cj4+PiAgICBMOiAgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnIChtb2Rl
cmF0ZWQgZm9yIG5vbi1zdWJzY3JpYmVycykKPj4+ICAgIFM6ICBNYWludGFpbmVkCj4+PiArRjog
ICBhcmNoL2FybS9tYWNoLW1zdGFyLwo+Pj4gICAgRjogIERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9hcm0vbXN0YXIueWFtbAo+Pj4KPj4+ICAgIEFSTS9ORUMgTU9CSUxFUFJPIDkw
MC9jIE1BQ0hJTkUgU1VQUE9SVAo+PiBbc25pcF0KPj4KPj4gVGhlIHNvcnQgb3JkZXIgaGFzIHJl
Y2VudGx5IGJlZW4gY2hhbmdlZCB0byBjYXNlLXNlbnNpdGl2ZSwgaS5lLiwgeW91Cj4+IHNob3Vs
ZCBhcHBlbmQgYXJjaCBhZnRlciBEb2N1bWVudGF0aW9uLgo+IAo+IEludGVyZXN0aW5nLiBDaGVj
a3BhdGNoIGRpZG4ndCBjb21wbGFpbiBhYm91dCB0aGF0IGFsdGhvdWdoIGl0Cj4gY29tcGxhaW5l
ZCBhYm91dCB0aGUKPiBvcmlnaW5hbCBvcmRlcmluZyBJIGhhZC4KCkkgb25seSBub3RpY2VkIGJl
Y2F1c2Ugc29tZW9uZSByZWZhY3RvcmVkIG15IFJlYWx0ZWsgc2VjdGlvbiwgY2F1c2luZyBhIApt
ZXJnZSBjb25mbGljdC4KCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvP2lkPTNiNTAxNDJkODUyOGUxZWZjMWMw
N2Y2OWM1NDBmOTI2YzU4YWIzYWQKCldoaWNoIHJlbWluZHMgbWUsIGluIDEvNSB5b3Ugc2hvdWxk
IHByb2JhYmx5IGFkZCBhIFc6IGxpbmUgKGFmdGVyIFM6IAphY2NvcmRpbmcgdG8gYWJvdmUgc29y
dCBjb21taXQpIHBvaW50aW5nIHRvIHlvdXIgCmh0dHA6Ly9saW51eC1jaGVueGluZy5vcmcvIHdl
YnNpdGUuCgpBbmQgZm9yIHRoZSBjb21tdW5pdHkgZm9sbG93aW5nIHlvdXIgcHJvamVjdCwgeW91
IG1heSB3YW50IHRvIHNldCB1cCBhIApsaW51eC1jaGVueGluZyBtYWlsaW5nIGxpc3Qgb24gdmdl
ci5rZXJuZWwub3JnIG9yIG9uIGluZnJhZGVhZC5vcmcgYW5kIAphZGQgaXQgYXMgTDosIHRvIGFs
bG93IGZvciBlcnJvciByZXBvcnRzIGFuZCBwYXRjaGVzIHRvIG5vdCBqdXN0IGdvIHRvIAp5b3Ug
YW5kIGNyb3dkZWQgTEFLTUwuCgpDaGVlcnMsCkFuZHJlYXMKCi0tIApTVVNFIFNvZnR3YXJlIFNv
bHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJt
YW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcpCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
