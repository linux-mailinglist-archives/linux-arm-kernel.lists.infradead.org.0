Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4FF1F6872
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 14:59:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IE8kEVKsL58muXfzqzPeUaZ/44oQpsw/NEQKYBIkmUw=; b=Wp47zsIVA91LM3RJQbGQ08gdn
	ZHVosJpaH9ejgz8UufRfzGpaimOG/lD7CAWdGPYVmL+P6k/IcHbJOCCFI3r3qtYOyGZri8YMtCC5p
	Hdql7XZBzK1CGRONi63j3/GzxPPkWVQ7gV+kcGj8D+8hIAuGWWDCa9aIcI3pxwk3/N24XpabGwJjw
	P3sd7puv8D1OziKxcm/ltp7sLUz25XotF7JFCLSfgMbJjYoTgKpH81BlHCVP+x5roEPTlQFMAbFuF
	T5tBjPe1Fj/AazrRzW4rkHavBvqP0AM6Dj1K9vIBwq+EVNmWVtS0xWz+En0elANbiE0sc1nTIsrCh
	l0WNPO1HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjMnO-0003OF-Kq; Thu, 11 Jun 2020 12:59:02 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjMnG-0003Nt-H4
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 12:58:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C0874AF32;
 Thu, 11 Jun 2020 12:58:55 +0000 (UTC)
Subject: Re: [PATCH v2 2/5] ARM: mstar: Add machine for MStar/Sigmastar
 infinity/mercury family ARMv7 SoCs
To: Daniel Palmer <daniel@0x0f.com>
References: <20191014061617.10296-2-daniel@0x0f.com>
 <20200610090421.3428945-3-daniel@0x0f.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <f66978d8-22c5-1883-c6bf-52c0c19d6603@suse.de>
Date: Thu, 11 Jun 2020 14:58:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200610090421.3428945-3-daniel@0x0f.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_055854_861381_1924F92F 
X-CRM114-Status: GOOD (  19.94  )
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
 linux-arm-kernel@lists.infradead.org, Nathan Huckleberry <nhuck15@gmail.com>,
 devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 allen <allen.chen@ite.com.tw>, tim.bird@sony.com,
 Maxime Ripard <mripard@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, Gregory Fong <gregory.0xf0@gmail.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, k@japko.eu,
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

QW0gMTAuMDYuMjAgdW0gMTE6MDQgc2NocmllYiBEYW5pZWwgUGFsbWVyOgo+IGRpZmYgLS1naXQg
YS9hcmNoL2FybS9NYWtlZmlsZSBiL2FyY2gvYXJtL01ha2VmaWxlCj4gaW5kZXggNTlmZGUyZDU5
OGQ4Li5lN2Y0Y2EwNjBjMGYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vTWFrZWZpbGUKPiArKysg
Yi9hcmNoL2FybS9NYWtlZmlsZQo+IEBAIC0xOTcsNiArMTk3LDcgQEAgbWFjaGluZS0kKENPTkZJ
R19BUkNIX01YQykJCSs9IGlteAo+ICAgbWFjaGluZS0kKENPTkZJR19BUkNIX01FRElBVEVLKQkJ
Kz0gbWVkaWF0ZWsKPiAgIG1hY2hpbmUtJChDT05GSUdfQVJDSF9NSUxCRUFVVCkJCSs9IG1pbGJl
YXV0Cj4gICBtYWNoaW5lLSQoQ09ORklHX0FSQ0hfTVhTKQkJKz0gbXhzCj4gK21hY2hpbmUtJChD
T05GSUdfQVJDSF9NU1RBUlY3KQkJKz0gbXN0YXIKPiAgIG1hY2hpbmUtJChDT05GSUdfQVJDSF9O
T01BRElLKQkJKz0gbm9tYWRpawo+ICAgbWFjaGluZS0kKENPTkZJR19BUkNIX05QQ00pCQkrPSBu
cGNtCj4gICBtYWNoaW5lLSQoQ09ORklHX0FSQ0hfTlNQSVJFKQkJKz0gbnNwaXJlCj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL21hY2gtbXN0YXIvS2NvbmZpZyBiL2FyY2gvYXJtL21hY2gtbXN0YXIv
S2NvbmZpZwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi42MjM1
ZDBhNzg2MGEKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvYXJjaC9hcm0vbWFjaC1tc3Rhci9LY29u
ZmlnCj4gQEAgLTAsMCArMSwyNiBAQAo+ICttZW51Y29uZmlnIEFSQ0hfTVNUQVJWNwoKWW91IGNh
bGwgdGhlIGRpciBtYWNoLW1zdGFyLCBidXQgbmFtZSB0aGUgS2NvbmZpZyBBUkNIX01TVEFSVjcu
IEkgaGFkIApwcmV2aW91c2x5IGJlZW4gYXNrZWQgdG8ganVzdCB1c2UgdGhlIHZlbmRvciBuYW1l
LCBzbyB0aGlzIHNob3VsZCAKcHJvYmFibHkgYmUganVzdCBBUkNIX01TVEFSLiBPdXRzaWRlIGFy
Y2gvYXJtLyB5b3UgY2FuIHRoZW4gdXNlIEFSTSAmJiAKQVJDSF9NU1RBUiBjb25kaXRpb24gdG8g
bWFrZSB0aGluZ3MgMzItYml0IG9ubHksIGFsbG93aW5nIHRvIHJldXNlIApBUkNIX01TVEFSIGZv
ciBhcm02NCBvciB3aGF0ZXZlci4KCj4gKwlib29sICJNU3Rhci9TaWdtYXN0YXIgQVJNdjcgU29D
IFN1cHBvcnQiCj4gKwlkZXBlbmRzIG9uIEFSQ0hfTVVMVElfVjcKPiArCXNlbGVjdCBBUk1fR0lD
Cj4gKwlzZWxlY3QgQVJNX0hFQVZZX01CCj4gKwloZWxwCj4gKwkgIFN1cHBvcnQgZm9yIG5ld2Vy
IE1TdGFyL1NpZ21hc3RhciBTb0MgZmFtaWxpZXMgdGhhdCBhcmUKPiArCSAgYmFzZWQgb24gQVJN
djcgY29yZXMgbGlrZSB0aGUgQ29ydGV4IEE3IGFuZCBzaGFyZSB0aGUgc2FtZQo+ICsJICBiYXNp
YyBoYXJkd2FyZSBsaWtlIHRoZSBpbmZpbml0eSBhbmQgbWVyY3VyeSBzZXJpZXMuCj4gKwo+ICtp
ZiBBUkNIX01TVEFSVjcKPiArCj4gK2NvbmZpZyBNQUNIX0lORklOSVRZCj4gKwlib29sICJNU3Rh
ci9TaWdtYXN0YXIgaW5maW5pdHkgU29DIHN1cHBvcnQiCj4gKwlkZWZhdWx0IEFSQ0hfTVNUQVJW
Nwo+ICsJaGVscAo+ICsJICBTdXBwb3J0IGZvciBNU3Rhci9TaWdtYXN0YXIgaW5maW5pdHkgSVAg
Y2FtZXJhIFNvQ3MuCj4gKwo+ICtjb25maWcgTUFDSF9NRVJDVVJZCj4gKwlib29sICJNU3Rhci9T
aWdtYXN0YXIgbWVyY3VyeSBTb0Mgc3VwcG9ydCIKPiArCWRlZmF1bHQgQVJDSF9NU1RBUlY3Cj4g
KwloZWxwCj4gKwkgIFN1cHBvcnQgZm9yIE1TdGFyL1NpZ21hc3RhciBtZXJjdXJ5IGRhc2ggY2Ft
ZXJhIFNvQ3MuCj4gKwkgIE5vdGUgdGhhdCBvbGRlciBNZXJjdXJ5MiBTb0NzIGFyZSBBUk05IGJh
c2VkIGFuZCBub3Qgc3VwcG9ydGVkLgoKSXMgdGhpcyBjb21tZW50IHJlYWxseSBoZWxwZnVsPyBU
aGlzIG1lbnUgaXRlbSB3b3VsZCBvbmx5IHNlZW0gdG8gY29tZSAKdXAgYWZ0ZXIgaGF2aW5nIHNl
bGVjdGVkIG11bHRpX3Y3LCB3aGljaCBraW5kIG9mIHJ1bGVzIG91dCBBUk05LgoKQ29uc2lkZXIg
YWRkaW5nIG1lcmN1cnkgaW4gYSBzZWNvbmQgc3RlcD8KCj4gKwo+ICtlbmRpZgoKUmVnYXJkcywK
QW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxk
c3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpI
UkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
