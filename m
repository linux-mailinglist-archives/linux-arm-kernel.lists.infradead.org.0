Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2231C1F6A35
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 16:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XI44CqKwVMDSfHCUTca+lUT5380xwKLwXkHY3elTzbs=; b=Jr+iX4iEGMk7kFTBYEIRtoHOg
	JlKF6rhJARtXuxpKfjereXI/h7MCrNlwWj/HqpWF4QJaC1w12FgalB+hE40CMS6wAIwcYEMdIOzWZ
	F4TtNFkwIZ2aUswt/bl2Pcl/gOsGf517hy4TjCmS1xPvzqMYgUfOcUA5DyJWnpVc3wI/wIp3gulu2
	AqbST70ST7g6QTyecTS0+xH4n20TjSEX9WivqBg4D4Z1tUcncl1HJEMn9P4fLfmMfeIBcEcE6ZD9p
	u58LQYPpIpzkspikKN8SCgxFiVrwwcSFc5M2Q/BAizH8JDM4dxYoIHQH6gOScxMO6maKHL0xalMzk
	A22NjaPFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjOMo-0004vl-0M; Thu, 11 Jun 2020 14:39:42 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjOMd-0004v1-Gf
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 14:39:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1256DAC12;
 Thu, 11 Jun 2020 14:39:32 +0000 (UTC)
Subject: Re: [PATCH v2 3/5] ARM: mstar: Add infinity/mercury series dtsi
To: Daniel Palmer <daniel@0x0f.com>
References: <20191014061617.10296-2-daniel@0x0f.com>
 <20200610090421.3428945-4-daniel@0x0f.com>
 <bf26822d-acb0-ae40-df7f-80978bd26cfb@suse.de>
 <CAFr9PXmp=mZhyRDpx_E0_1Zc5SFrSYUm9jP-k7VCDf9P37sT6g@mail.gmail.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <3d933b03-9757-f659-d19a-ce6d0fccebea@suse.de>
Date: Thu, 11 Jun 2020 16:39:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAFr9PXmp=mZhyRDpx_E0_1Zc5SFrSYUm9jP-k7VCDf9P37sT6g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_073931_701992_1EADE014 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
 tim.bird@sony.com, Will Deacon <will@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, Gregory Fong <gregory.0xf0@gmail.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Krzysztof Adamski <k@japko.eu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpBbSAxMS4wNi4yMCB1bSAxNjoxOSBzY2hyaWViIERhbmllbCBQYWxtZXI6Cj4gT24gVGh1
LCAxMSBKdW4gMjAyMCBhdCAyMjozOSwgQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRl
PiB3cm90ZToKPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9tc3Rhci12Ny5kdHNp
IGIvYXJjaC9hcm0vYm9vdC9kdHMvbXN0YXItdjcuZHRzaQo+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uMGZjY2M0Y2E1MmE0Cj4+PiAtLS0gL2Rldi9udWxs
Cj4+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9tc3Rhci12Ny5kdHNpCj4+Cj4+IFNvIHRoaXMg
aXMgdGhlIG9ubHkgZmlsZSBzdGFydGluZyB3aXRoIG1zdGFyLiBIYXZlIHlvdSB0aG91Z2h0IGFi
b3V0Cj4+IHByZWZpeGluZyBpbmZpbml0eS9tZXJjdXJ5LCBzbyB0aGF0IHRoZXkncmUgZ3JvdXBl
ZCB0b2dldGhlcj8KPiAKPiBJIGhhdmUgYmVlbiB0aGlua2luZyBhYm91dCB0aGF0LiBJIGRpZG4n
dCBzZWUgYW55IG90aGVyIGR0cyBpbiBhcm0gdGhhdCBoYWQKPiB0aGUgdmVuZG9yIGFzIGEgcHJl
Zml4IHRob3VnaC4gV2l0aCBhcm02NCBldmVyeXRoaW5nIGlzIGluIHBlciB2ZW5kb3IKPiBzdWJk
aXJlY3Rvcmllcwo+IHRvIGFjaGlldmUgdGhlIHNhbWUgdGhpbmcuCgpxY29tLSBhbmQgYXJtLSBh
cmUgZXhhbXBsZXMuIEFkbWl0dGVkbHkgb3V0bGllcnMsIGJ1dCBmb3IgYSBuZXcgdGFyZ2V0IAp5
b3UgZG9uJ3QgaGF2ZSBhbGwgdGhlIGhpc3RvcmljYWwgYmFja3dhcmRzLWNvbXBhdGliaWxpdHkg
YmFnZ2FnZS4KClRoZSBkb3duc2lkZSB3b3VsZCBiZSBpZiBzb21lb25lIHdhbnRlZCB0byBhZGQg
bmV3ZXIgc3N0YXIgY2hpcHMgdW5kZXIgCnRoZSBuZXcgbmFtZSBsYXRlciwgdGhlbiB0aGV5IHdv
dWxkbid0IGJlIGdyb3VwZWQgd2l0aCBwcmVkZWNlc3NvciAKZmFtaWxpZXMuIFJpZ2h0IG5vdyBp
dCBzZWVtcyBsaWtlIG1lcmN1cnkgYW5kIGluZmluaXR5IGFyZSBub3QgdGhhdCAKZGlmZmVyZW50
LCBzbyBJIGZpZ3VyZWQgaXQgbWlnaHQgYmUgdXNlZnVsIGZvciBwZW9wbGUgY29udHJpYnV0aW5n
IApwYXRjaGVzIHRvIHNlZSB0aGF0IGNoYW5nZXMgaW4gb25lIG1pZ2h0IHJlcXVpcmUgcmV2aWV3
IG9mIHRoZSBvdGhlci4KCkNoZWVycywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRp
b25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkK
R0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
