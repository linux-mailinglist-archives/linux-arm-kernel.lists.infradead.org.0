Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E033D25DC7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 07:48:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Mv1NwJuF44k4JQtX6Uge36FXK32Gf/jfPMXaGhnHnM=; b=M7/vBoGFCyyZBC
	wGpx/twI7dbWfFdf+oeRvofDozApUuNtM3cGGepEL9cWRH1TgZvAbfewXTx6785oybZW8E+w4XdUj
	VL2kxa43vDuYAJeiE1h5gC9MPuG1qc/KxrdwF+1khdKHWOwqHzKlMTYyY6mo6LQR39U9rGAzz4jvP
	PjjSbjNXv6CR0yD+Axzr1XI71jdq11205yjkJ+/6Bueeh7Nei+HuR8boYXfHovX0nqxE9AT7o6Gj6
	HSQhB3k1n6mkdTok5vTnlEJbaXS4AqJJE0/wha+XEhYkD4YNJkh6OFxaD44qsVxHiWwplYZS21hoW
	wtDHHKq6xHz3ZXaLqmhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTK7K-0008Iz-SS; Wed, 22 May 2019 05:48:46 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTK7C-0008IE-Ui
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 05:48:40 +0000
Received: by mail-wm1-x344.google.com with SMTP id 15so752129wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 22:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=/tTf0o0S8X8KnChjJDfa2qYc6+8coCPQJrmnG5nMMms=;
 b=uUve0ZipnHu6cyNoI44TVwaoHbwO5Byw+UNySCQATErAkisI+mHPIbXN4XMMGxFRbd
 YU40swFzP8fPVrDfpyRwt0K1sNhjTFKRFTZ0jvSzNnDU0aayBXnXPkYQat15PEkbB7B2
 vdZImcsk6mklId16PzEv6fSWDOnOUW7nUpfiCksXPkZXigHjnI5aKhbvqJXFMXLtR1k2
 r1UkXhC+sh+5Qx+M+vywvf0UdtefyAn9GD2w+2709N6CFU7uSw9jsRL/28jYYhx4QoH4
 JLdQdZRONICn8J4EdMWYVD3d35LNAwi7oVsGBzBZiP2B7vylayIdp89IvWCQxbdPoC41
 LGKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=/tTf0o0S8X8KnChjJDfa2qYc6+8coCPQJrmnG5nMMms=;
 b=EcNmUuE4gggYmOQB1hvcXUjU84dTP5N6cjbPP5+FN+JaDtHY42a9w/aX3imKxbUP7v
 EsmNvMSFgghWuL0NCw0PlboJoM9uJS1tejIcWyFb4VZHWQlScRt8oi6bW2ZGIYZfRsHO
 +VNhKAtksidXgVjHuxydafd7sYvSC5riPtH6XWY+iUM8a06CAHhwibbPRy3qnAf/TyGf
 R8gvwmSNAZAYAUxHnN64l9phCf9IGD0FfsPTj0TUKfS1W9WuBJhp7fJW1+zCNAGbhHlW
 C3UvuDytNs4hVClhUwnqtr4+sVDBS3nZyXGXaX0R8trq/OuvnXIx2lxu5RpCEC4m44YH
 5rVg==
X-Gm-Message-State: APjAAAX3bUJ0CWUqIWGw4jUaHpiocgGKRWMbN0dDIcvmrfwF7GN5V05P
 l+YX8tG4LPqLKY0WlAFFA4uLAw==
X-Google-Smtp-Source: APXvYqw7YHeamUnm0AYxBgRDczx++fDFxFoKXuD29B3Z8t2mMkfJ9/TcKb9Bf8lpkjRJKl0djf95Gw==
X-Received: by 2002:a1c:f10f:: with SMTP id p15mr6051518wmh.150.1558504115720; 
 Tue, 21 May 2019 22:48:35 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id p8sm15177511wro.0.2019.05.21.22.48.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 22:48:34 -0700 (PDT)
Date: Wed, 22 May 2019 06:48:33 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [PATCH] pinctrl: stmfx: Fix compile issue when CONFIG_OF_GPIO is
 not defined
Message-ID: <20190522054833.GB4574@dell>
References: <1558338735-8444-1-git-send-email-amelie.delaunay@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558338735-8444-1-git-send-email-amelie.delaunay@st.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_224839_019045_60AAECBF 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, kbuild-all@01.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMCBNYXkgMjAxOSwgQW1lbGllIERlbGF1bmF5IHdyb3RlOgoKPiBXaGVuIENPTkZJ
R19HUElPX09GIGlzIG5vdCBkZWZpbmVkLCBzdHJ1Y3QgZ3Bpb19jaGlwICdvZl9ub2RlJyBtZW1i
ZXIgZG9lcwo+IG5vdCBleGlzdDoKPiBkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1zdG1meC5jOiBJ
biBmdW5jdGlvbiAnc3RtZnhfcGluY3RybF9wcm9iZSc6Cj4gZHJpdmVycy9waW5jdHJsL3BpbmN0
cmwtc3RtZnguYzo2NTI6MTc6IGVycm9yOiAnc3RydWN0IGdwaW9fY2hpcCcgaGFzIG5vIG1lbWJl
ciBuYW1lZCAnb2Zfbm9kZScKPiAgICAgIHBjdGwtPmdwaW9fY2hpcC5vZl9ub2RlID0gbnA7Cj4g
Cj4gRml4ZXM6IDE0OTBkOWY4NDFiMSAoInBpbmN0cmw6IEFkZCBTVE1GWCBHUElPIGV4cGFuZGVy
IFBpbmN0cmwvR1BJTyBkcml2ZXIiKQo+IFJlcG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8
bGtwQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBbWVsaWUgRGVsYXVuYXkgPGFtZWxpZS5k
ZWxhdW5heUBzdC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvcGluY3RybC9waW5jdHJsLXN0bWZ4LmMg
fCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtc3RtZnguYyBiL2RyaXZlcnMvcGluY3RybC9waW5j
dHJsLXN0bWZ4LmMKPiBpbmRleCBlYmE4NzJjLi5iYjY0YWEwIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcGluY3RybC9waW5jdHJsLXN0bWZ4LmMKPiArKysgYi9kcml2ZXJzL3BpbmN0cmwvcGluY3Ry
bC1zdG1meC5jCj4gQEAgLTY0OCw3ICs2NDgsOSBAQCBzdGF0aWMgaW50IHN0bWZ4X3BpbmN0cmxf
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCXBjdGwtPmdwaW9fY2hpcC5i
YXNlID0gLTE7Cj4gIAlwY3RsLT5ncGlvX2NoaXAubmdwaW8gPSBwY3RsLT5wY3RsX2Rlc2MubnBp
bnM7Cj4gIAlwY3RsLT5ncGlvX2NoaXAuY2FuX3NsZWVwID0gdHJ1ZTsKPiArI2lmZGVmIENPTkZJ
R19PRl9HUElPCj4gIAlwY3RsLT5ncGlvX2NoaXAub2Zfbm9kZSA9IG5wOwo+ICsjZW5kaWYKClRo
aXMgaXMgcHJldHR5IHVnbHkuICBXaWxsIFNUTUZYIGV2ZXIgYmUgdXNlZCB3aXRob3V0IE9GIHN1
cHBvcnQ/ICBJZgpub3QsIGl0IG1pZ2h0IGJlIGJldHRlciB0byBwbGFjZSB0aGlzIHJlc3RyaWN0
aW9uIG9uIHRoZSBkcml2ZXIgYXMgYQp3aG9sZS4KCkluY2lkZW50YWxseSwgd2h5IGlzIHRoaXMg
YmxhbmtlZCBvdXQgaW4gdGhlIHN0cnVjdHVyZSBkZWZpbml0aW9uPwpFdmVuICdzdHJ1Y3QgZGV2
aWNlJyBkb2Vzbid0IGRvIHRoaXMuCgo+ICAJcGN0bC0+Z3Bpb19jaGlwLm5lZWRfdmFsaWRfbWFz
ayA9IHRydWU7Cj4gIAo+ICAJcmV0ID0gZGV2bV9ncGlvY2hpcF9hZGRfZGF0YShwY3RsLT5kZXYs
ICZwY3RsLT5ncGlvX2NoaXAsIHBjdGwpOwoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5h
cm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29m
dHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJs
b2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
