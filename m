Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A20851EA645
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 16:48:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rE5di62sF09fqQSzq1T/oiaYOngMj/W2ylq4CLXQWc8=; b=UUCtXDfvtteXmn
	VOd0hQIcCgT084aoN2jkz0jaIAR3IxH/JS76/FkV0bNubqFUQAF2ZE2UQuMuL1ievljw6Lwup7Plf
	0qUCASOCUhfoFxJ3CQYPbTQXpgEa8eCATxb1nNFlrB+e2idopyuQcW/f2Gq5QeQMuaSNdBbC9ubtz
	37hrSaVlFK4CaJUFiqS4ZguIqIR8tuTaouFLd/QFBj6CDmVu3JVASbE3P4Fhwpn0YO3Pjr1E+wCgZ
	ojiZj9168Y8nN0+K4ochjSOHqkKdFrWDj1NXp/L6qgcrXDQtPfF2SMmalXgRypwKgXGe/KUVylDA/
	xKwx+rcmoeM7w1JmE93w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jflkA-00010s-Jy; Mon, 01 Jun 2020 14:48:50 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jflk3-0008WD-5R
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 14:48:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/UgT1POWifvMyJNciOhK8kmfi25RCwYtZsLhUmUhAxQ=; b=xfXwxQLIKqe6CYTZE8B3XMFjT
 QohrjTCJ9iVED68MI64wBiPdRxYlTOwCytLQ8bepIUXyuRNrYkqX2DZWNbtNEjUtszhFapIgAFKwX
 pcPL2C4PE9aS+E+XomPiBu1qbqAZRwZKbCzQhDwWqanV3+cFnxwndmRQM7Y968XzBxm2uiIXlI9SA
 xixTqchLnibodP/P4pinLpT3OlouW8wjfGN2pqWsjOr2iuXTvIgIuhvkjWdkTUaHmBGlJ0dJGlLRZ
 LblReP9VAmUhB7URVY0uK49wtuU9shUTPSsTI8LtzA+RBdUW4Jy0jM0qlUNL7t5WzoiCfBiNP16g1
 yU57jiSxA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:39982)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jflhl-0000XW-Bb; Mon, 01 Jun 2020 15:46:21 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jflhX-0003OW-Sb; Mon, 01 Jun 2020 15:46:07 +0100
Date: Mon, 1 Jun 2020 15:46:07 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH 1/5] arm: decompressor: set malloc pool size for the
 decompressor
Message-ID: <20200601144607.GI1551@shell.armlinux.org.uk>
References: <20200601142754.26139-1-l.stelmach@samsung.com>
 <CGME20200601142810eucas1p1767585cf172d26aedb551d7453aa7402@eucas1p1.samsung.com>
 <20200601142754.26139-2-l.stelmach@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601142754.26139-2-l.stelmach@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_074843_206675_6DA8E6BB 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kees Cook <keescook@chromium.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Ben Dooks <ben-linux@fluff.org>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMDEsIDIwMjAgYXQgMDQ6Mjc6NTBQTSArMDIwMCwgxYF1a2FzeiBTdGVsbWFj
aCB3cm90ZToKPiBNb3ZlIHRoZSBkZWZpbml0aW9uIG9mIG1hbGxvYyBwb29sIHNpemUgb2YgdGhl
IGRlY29tcHJlc3NvciB0bwo+IGEgc2luZ2xlIHBsYWNlLiBUaGlzIHZhbHVlIHdpbGwgYmUgZXhw
b3NlZCBsYXRlciBmb3Iga2V4ZWNfZmlsZSBsb2FkZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogxYF1
a2FzeiBTdGVsbWFjaCA8bC5zdGVsbWFjaEBzYW1zdW5nLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm0v
Ym9vdC9jb21wcmVzc2VkL01ha2VmaWxlIHwgMiArKwo+ICBhcmNoL2FybS9ib290L2NvbXByZXNz
ZWQvaGVhZC5TICAgfCA2ICsrKystLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9jb21wcmVz
c2VkL01ha2VmaWxlIGIvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL01ha2VmaWxlCj4gaW5kZXgg
OWMxMWU3NDkwMjkyLi5iMzU5NGNkMTU4OGMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9j
b21wcmVzc2VkL01ha2VmaWxlCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL01ha2Vm
aWxlCj4gQEAgLTEyNSw2ICsxMjUsOCBAQCBLQlNTX1NaID0gJChzaGVsbCBlY2hvICQkKCgkJCgk
KE5NKSAkKG9iaikvLi4vLi4vLi4vLi4vdm1saW51eCB8IFwKPiAgCQlzZWQgLW4gLWUgJ3MvXlwo
W14gXSpcKSBbQUJdIF9fYnNzX3N0YXJ0JCQvLTB4XDEvcCcgXAo+ICAJCSAgICAgICAtZSAncy9e
XChbXiBdKlwpIFtBQl0gX19ic3Nfc3RvcCQkLysweFwxL3AnKSApKSApCj4gIExERkxBR1Nfdm1s
aW51eCA9IC0tZGVmc3ltIF9rZXJuZWxfYnNzX3NpemU9JChLQlNTX1NaKQo+ICsjIG1hbGxvYyBw
b29sIHNpemUKPiArTERGTEFHU192bWxpbnV4ICs9IC0tZGVmc3ltIF9tYWxsb2Nfc2l6ZT0weDEw
MDAwCj4gICMgU3VwcGx5IFpSRUxBRERSIHRvIHRoZSBkZWNvbXByZXNzb3IgdmlhIGEgbGlua2Vy
IHN5bWJvbC4KPiAgaWZuZXEgKCQoQ09ORklHX0FVVE9fWlJFTEFERFIpLHkpCj4gIExERkxBR1Nf
dm1saW51eCArPSAtLWRlZnN5bSB6cmVsYWRkcj0kKFpSRUxBRERSKQo+IGRpZmYgLS1naXQgYS9h
cmNoL2FybS9ib290L2NvbXByZXNzZWQvaGVhZC5TIGIvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2Vk
L2hlYWQuUwo+IGluZGV4IGU4ZTFjODY2ZTQxMy4uZGNjMWFmYTYwZmI5IDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9oZWFkLlMKPiArKysgYi9hcmNoL2FybS9ib290L2Nv
bXByZXNzZWQvaGVhZC5TCj4gQEAgLTMwOSw3ICszMDksOCBAQCByZXN0YXJ0OglhZHIJcjAsIExD
MAo+ICAjaWZuZGVmIENPTkZJR19aQk9PVF9ST00KPiAgCQkvKiBtYWxsb2Mgc3BhY2UgaXMgYWJv
dmUgdGhlIHJlbG9jYXRlZCBzdGFjayAoNjRrIG1heCkgKi8KPiAgCQlhZGQJc3AsIHNwLCByMAo+
IC0JCWFkZAlyMTAsIHNwLCAjMHgxMDAwMAo+ICsJCWxkcglyMTAsID1fbWFsbG9jX3NpemUKPiAr
CQlhZGQJcjEwLCByMTAsIHNwCgpUaGlzIHNheXMgImxvY2F0ZSBfbWFsbG9jX3NpemUgaW4gYSBs
aXRlcmFsIHBvb2wgc29tZXdoZXJlLCBhbmQgbG9hZCBpdAp1c2luZyBhIFBDLXJlbGF0aXZlIG9m
ZnNldCIuICBBcmUgeW91IHN1cmUgdGhhdCB0aGUgbGl0ZXJhbCBwb29sIGlzCnNlbnNpYmx5IGxv
Y2F0ZWQ/CgpXb3VsZCBpdCBiZSBiZXR0ZXIgdG8gdXNlIGEgZGVmaW5pdGlvbiBmb3IgdGhpcz8K
Ci0tIApSTUsncyBQYXRjaCBzeXN0ZW06IGh0dHBzOi8vd3d3LmFybWxpbnV4Lm9yZy51ay9kZXZl
bG9wZXIvcGF0Y2hlcy8KRlRUQyBmb3IgMC44bSAoZXN0LiAxNzYybSkgbGluZSBpbiBzdWJ1cmJp
YTogc3luYyBhdCAxMy4xTWJwcyBkb3duIDQyNGticHMgdXAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
