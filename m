Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA01BD928
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 09:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ba/5tqwDV4sg5LP92XFgP4KcAuNqtUPxZckYhsGBZPc=; b=p1ys5wtmvrpeDb
	ltYIkCF7pmGPSxf7WwQldqJL1wkb9CxwN/RsqN6o03Aem7tSH1tiPz5BaSYC1akFxiHb/GR7RsdjY
	ke7FqN9gT+wWFwqPQ6C4Y+745TKqxrBSxuu3odKiuzjCKhlFHzZ1h2yld1F/iB9sFeRhvwtyCo7yJ
	/o2VavvT3eSZt9a9CV9UdK2g8UbImV/Qbv6kHuCEtGE5gvItLFFMjI4W9XatnHscJhtZfTn/REBE6
	Dv50SKTwYWfkvkKUl7oR243rJxRFbIgFHFh5utMQR3q+XIlk3faUyWQfdTdIuTBWpo0NmUi+LIMds
	8HgtXJVv3ZcqOSPVzC0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD1mq-00021V-V9; Wed, 25 Sep 2019 07:32:33 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD1mJ-00020y-6h
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 07:32:01 +0000
Received: by mail-io1-xd44.google.com with SMTP id q1so11263123ion.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 00:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=OcISGISiLAwgqYS/Qro6kvOcbr1R12318G5x86CCKOc=;
 b=NW7iTN9h3sJIBBg/73UdpHAIZdxIC19ITbnfT0jXVx3eC/9ieCqAWL+3xghFJ33fp8
 VQCVOaKIqKARzsdS4JKBe3FNvlbmHz9g2FLE7lyW1ugvEGAzavCrZPoMi4+wo6Gd794q
 7CN8zlcX973em5jtopMwP3YHdzAhT0eLCoO6gU0p8xr0L+ckextCm7VcCDDgVRJceLUe
 s70oRTFWRZPrAK6GyIXC3UtDDiK56ULG8qiq2HKI/9HQtf35JErvyzXBnHGcWivdohG6
 ppbZoGaaYucx5+w4IIVz/786VW/vpIoPIAK25qvEBJdULlCpBsuqj6VQUNucsuIozJFA
 LyOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OcISGISiLAwgqYS/Qro6kvOcbr1R12318G5x86CCKOc=;
 b=savVWzoPb7VcSFjWjifZsQKffLJneurJpRCR0CFqxYbh8/DR5tLjV7f7o6vfGPdm+7
 W9DmoM9T4WywaazRrlhhxF+UUoH0P5jve4D82FiPqIXl7tSN4wPk0B+fp5GYpdViRpTZ
 3HpHbTrVQVBYu5HMj2uBeeRO1S6EwXb8gyws+9TUFmS1bErpyT7eA+vxWU/tDdsi1INz
 XIPQeF3lTMUBiRF4U8er5xTH4N5UaB34MksXCujVQXHMPpHdsiZeVKaLlvsvFFtDbUAm
 OeAczcegCRAUZqeYpsZDvIxll1QHBOEmsKK7CLEB9TKtKo8IMzm75WaulLEWhhglOBEI
 zk1A==
X-Gm-Message-State: APjAAAVRRKn7Iiq6driaMkdpmA0uvCfW1o0vS38dDsydqmvc7fTuw7FP
 pgXoZgM/smlMd+sdju157Sc1tvVdOMzMeND6J6bMIw==
X-Google-Smtp-Source: APXvYqxj9HCfBAYV5R2sWO3zhuIX4JIqSjWFPOrQ6/gSnAqJNbRo8iYb4UNAehnrQEIOB6sDcuCKeLiOWPzar3Bxg3U=
X-Received: by 2002:a6b:fc04:: with SMTP id r4mr8301437ioh.189.1569396717609; 
 Wed, 25 Sep 2019 00:31:57 -0700 (PDT)
MIME-Version: 1.0
References: <1569352021-6383-1-git-send-email-hongweiz@ami.com>
In-Reply-To: <1569352021-6383-1-git-send-email-hongweiz@ami.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 25 Sep 2019 09:31:46 +0200
Message-ID: <CAMRc=MecTmtpauqTsdEmZipeDOHoCMAXx6X6Z4zjszr9_W-aeA@mail.gmail.com>
Subject: Re: [v1, 1/1] gpio: dts: aspeed: Add SGPIO driver
To: Hongwei Zhang <hongweiz@ami.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_003159_483325_DE68B732 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-aspeed@lists.ozlabs.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Doug Anderson <armlinux@m.disordat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

d3QuLCAyNCB3cnogMjAxOSBvIDIxOjA3IEhvbmd3ZWkgWmhhbmcgPGhvbmd3ZWl6QGFtaS5jb20+
IG5hcGlzYcWCKGEpOgo+Cj4gQWRkIFNHUElPIGRyaXZlciBzdXBwb3J0IGZvciBBc3BlZWQgQVNU
MjUwMCBTb0MuCj4KPiBTaWduZWQtb2ZmLWJ5OiBIb25nd2VpIFpoYW5nIDxob25nd2VpekBhbWku
Y29tPgo+IC0tLQo+ICBhcmNoL2FybS9LY29uZmlnICAgICAgICAgICAgICAgICB8ICAyICsrCj4g
IGFyY2gvYXJtL2Jvb3QvZHRzL2FzcGVlZC1nNS5kdHNpIHwgMTYgKysrKysrKysrKysrKysrLQo+
ICBkcml2ZXJzL2dwaW8vS2NvbmZpZyAgICAgICAgICAgICB8ICA4ICsrKysrKysrCj4gIGRyaXZl
cnMvZ3Bpby9NYWtlZmlsZSAgICAgICAgICAgIHwgIDEgKwo+ICA0IGZpbGVzIGNoYW5nZWQsIDI2
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9L
Y29uZmlnIGIvYXJjaC9hcm0vS2NvbmZpZwo+IGluZGV4IDI0MzYwMjEuLmM5ZjA4YWIgMTAwNjQ0
Cj4gLS0tIGEvYXJjaC9hcm0vS2NvbmZpZwo+ICsrKyBiL2FyY2gvYXJtL0tjb25maWcKPiBAQCAt
MTQ2MCw2ICsxNDYwLDggQEAgY29uZmlnIEFSQ0hfTlJfR1BJTwo+ICAgICAgICAgZGVmYXVsdCA0
MTYgaWYgQVJDSF9TVU5YSQo+ICAgICAgICAgZGVmYXVsdCAzOTIgaWYgQVJDSF9VODUwMAo+ICAg
ICAgICAgZGVmYXVsdCAzNTIgaWYgQVJDSF9WVDg1MDAKPiArICAgICAgIGRlZmF1bHQgMzEyIGlm
IE1BQ0hfQVNQRUVEX0c1Cj4gKyAgICAgICBkZWZhdWx0IDMwNCBpZiBNQUNIX0FTUEVFRF9HNAo+
ICAgICAgICAgZGVmYXVsdCAyODggaWYgQVJDSF9ST0NLQ0hJUAo+ICAgICAgICAgZGVmYXVsdCAy
NjQgaWYgTUFDSF9INDcwMAo+ICAgICAgICAgZGVmYXVsdCAwCj4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtL2Jvb3QvZHRzL2FzcGVlZC1nNS5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvYXNwZWVkLWc1
LmR0c2kKPiBpbmRleCAwMGYwNWJkLi44NWRhN2VhIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jv
b3QvZHRzL2FzcGVlZC1nNS5kdHNpCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvYXNwZWVkLWc1
LmR0c2kKPiBAQCAtMzExLDcgKzMxMSw3IEBACj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAjZ3Bpby1jZWxscyA9IDwyPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGdwaW8tY29udHJvbGxlcjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbXBh
dGlibGUgPSAiYXNwZWVkLGFzdDI1MDAtZ3BpbyI7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICByZWcgPSA8MHgxZTc4MDAwMCAweDEwMDA+Owo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcmVnID0gPDB4MWU3ODAwMDAgMHgyMDA+Owo+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDwyMD47Cj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBncGlvLXJhbmdlcyA9IDwmcGluY3RybCAwIDAgMjMyPjsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmc3lzY29uIEFTUEVFRF9DTEtfQVBCPjsK
PiBAQCAtMzE5LDYgKzMxOSwyMCBAQAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
I2ludGVycnVwdC1jZWxscyA9IDwyPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgc2dwaW86IHNncGlvQDFlNzgwMjAwIHsKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICNncGlvLWNlbGxzID0gPDI+Owo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhc3BlZWQsYXN0MjUwMC1zZ3BpbyI7
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBncGlvLWNvbnRyb2xsZXI7Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPDQwPjsKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDFlNzgwMjAwIDB4MDEwMD47Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JnN5c2NvbiBBU1BFRURfQ0xL
X0FQQj47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHQtY29udHJv
bGxlcjsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG5ncGlvcyA9IDw4PjsKPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJ1cy1mcmVxdWVuY3kgPSA8MTIwMDAwMDA+
Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZh
dWx0IjsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmcGlu
Y3RybF9zZ3BtX2RlZmF1bHQ+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gKwo+ICAg
ICAgICAgICAgICAgICAgICAgICAgIHJ0YzogcnRjQDFlNzgxMDAwIHsKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYXNwZWVkLGFzdDI1MDAtcnRjIjsKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDFlNzgxMDAwIDB4MTg+Owo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwaW8vS2NvbmZpZyBiL2RyaXZlcnMvZ3Bpby9LY29uZmln
Cj4gaW5kZXggYmIxM2MyNi4uZTk0ZjkwMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwaW8vS2Nv
bmZpZwo+ICsrKyBiL2RyaXZlcnMvZ3Bpby9LY29uZmlnCj4gQEAgLTEyMCw2ICsxMjAsMTQgQEAg
Y29uZmlnIEdQSU9fQVNQRUVECj4gICAgICAgICBoZWxwCj4gICAgICAgICAgIFNheSBZIGhlcmUg
dG8gc3VwcG9ydCBBc3BlZWQgQVNUMjQwMCBhbmQgQVNUMjUwMCBHUElPIGNvbnRyb2xsZXJzLgo+
Cj4gK2NvbmZpZyBTR1BJT19BU1BFRUQKPiArICAgICAgIGJvb2wgIkFzcGVlZCBTR1BJTyBzdXBw
b3J0Igo+ICsgICAgICAgZGVwZW5kcyBvbiAoQVJDSF9BU1BFRUQgfHwgQ09NUElMRV9URVNUKSAm
JiBPRl9HUElPCj4gKyAgICAgICBzZWxlY3QgR1BJT19HRU5FUklDCj4gKyAgICAgICBzZWxlY3Qg
R1BJT0xJQl9JUlFDSElQCj4gKyAgICAgICBoZWxwCj4gKyAgICAgICAgIFNheSBZIGhlcmUgdG8g
c3VwcG9ydCBBc3BlZWQgQVNUMjUwMCBTR1BJTyBmdW5jdGlvbmFsaXR5Lgo+ICsKPiAgY29uZmln
IEdQSU9fQVRINzkKPiAgICAgICAgIHRyaXN0YXRlICJBdGhlcm9zIEFSNzFYWC9BUjcyNFgvQVI5
MTNYIEdQSU8gc3VwcG9ydCIKPiAgICAgICAgIGRlZmF1bHQgeSBpZiBBVEg3OQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwaW8vTWFrZWZpbGUgYi9kcml2ZXJzL2dwaW8vTWFrZWZpbGUKPiBpbmRl
eCBhNGU5MTE3Li5iZWJiZDgyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3Bpby9NYWtlZmlsZQo+
ICsrKyBiL2RyaXZlcnMvZ3Bpby9NYWtlZmlsZQo+IEBAIC0zMiw2ICszMiw3IEBAIG9iai0kKENP
TkZJR19HUElPX0FNRF9GQ0gpICAgICAgICAgICAgKz0gZ3Bpby1hbWQtZmNoLm8KPiAgb2JqLSQo
Q09ORklHX0dQSU9fQU1EUFQpICAgICAgICAgICAgICAgKz0gZ3Bpby1hbWRwdC5vCj4gIG9iai0k
KENPTkZJR19HUElPX0FSSVpPTkEpICAgICAgICAgICAgICs9IGdwaW8tYXJpem9uYS5vCj4gIG9i
ai0kKENPTkZJR19HUElPX0FTUEVFRCkgICAgICAgICAgICAgICs9IGdwaW8tYXNwZWVkLm8KPiAr
b2JqLSQoQ09ORklHX1NHUElPX0FTUEVFRCkgICAgICAgICAgICAgKz0gc2dwaW8tYXNwZWVkLm8K
PiAgb2JqLSQoQ09ORklHX0dQSU9fQVRINzkpICAgICAgICAgICAgICAgKz0gZ3Bpby1hdGg3OS5v
Cj4gIG9iai0kKENPTkZJR19HUElPX0JDTV9LT05BKSAgICAgICAgICAgICs9IGdwaW8tYmNtLWtv
bmEubwo+ICBvYmotJChDT05GSUdfR1BJT19CRDcwNTI4KSAgICAgICAgICAgICArPSBncGlvLWJk
NzA1Mjgubwo+IC0tCj4gMi43LjQKPgoKVGhpcyBzaG91bGQgYmUgc3BsaXQgaW50byBzZXBhcmF0
ZSBwYXRjaGVzIHdpdGggb25lIGV4dGVuZGluZyB0aGUKYmluZGluZyBkb2N1bWVudCBhbmQgb25l
IGFkZGluZyBhY3R1YWwgc3VwcG9ydC4KCkJhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
