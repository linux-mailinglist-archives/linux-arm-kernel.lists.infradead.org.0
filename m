Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC2C197A9F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 13:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWXX0vIrPsEmxty1pG5YgJYgM4ti7VrJH6p8U7LFZgE=; b=uouC+YALLDm4qZ
	digOV0CN0YumnZ6MWY8aUFYG3HPgO1aPNDEKMOTZJGXH6j60m4dTZptc/woTmZMSq9cZCcdIWKvuV
	S992unHBAu6XBz/+Ys+LzEFTwsSLtFy3vjfblYfZZ+879jzCdG6wvK+mOTcjhT3nt9vOKxNBJVUsd
	FSQVhlMeYt2hHXeh/G01NwTRw7MNIqJYDX43Xv9ZM/QL7hK81vd3uLCxAZYC/GEcMS1Rzo4r38l40
	ymU8T0Z9LgvM4WzGjYmRYVTYONvnA0+iAi6L//kVdFv/0UDcUUvxSQaZ79kuVdYLoS+uq0kzpqCjG
	wNChZUR3sWCHoD2GDmgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIsUe-00019z-Cq; Mon, 30 Mar 2020 11:22:12 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIsUV-00019N-7F
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 11:22:05 +0000
Received: by mail-qk1-x741.google.com with SMTP id u4so18383549qkj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 04:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CzM9Ul/dphXe/6k6V017VGqcrogFXRUNidC2oEsJyA4=;
 b=Lo81bSLQWPVgU/i6sxlrCIBODUnjRkBTUhlltdOET1Dmks4BFPSVpOUpndvcX76UyB
 hkWTYKD7omKCo2QzXiH1W+Q/eSWGYesRpzjunThYHGs7hjuSdF+XD+aVckt8qcSQLHLf
 2dGg3fYi4+AUTb5J78URConeOPfe4tGuRHbb2F1LS3sMbaCujqQsCxjWXbGbH5HyzGhD
 p/Ux96ci6T31CRwG9rUx5pXRxGzCZ84npmpm7CJGxisaBEPrDQEfeik1T+tSs3DS8SSR
 xRT/u5P760PPOifEwBJ2NscES25L2rM7gIEkuzVGazBBxQdHCpd66DpKgluiH+hEAOZj
 1OzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CzM9Ul/dphXe/6k6V017VGqcrogFXRUNidC2oEsJyA4=;
 b=YpEqq7vElljqa+Y+QZTUqeJGFnb5gXSGEwT8MYhWNFbQAGtExVcfvyaPsgstZOY/mU
 I5fwe9GUCbOEgzY61AGfaNe5uxHCUtSBtIdUQ+K96nhlOA2pDo/cGhHaJZAyioNUiyEK
 u/wZTqb+d+B2NybhpRM5MJOeM6DPBRnZzfbWWrUyVeBuW2RKpKLbHip0JuJtx2Fbqv//
 R2/PXIXExEmgh/3Bi1Vyogvg3QuAaivPhRH+jO6sLy+99VCeW+E02op0wojlIkCk4jPs
 +lzFse8Hq22l1lZg1obPnKLur2hgB9SkivnSNACK0lxmdzv5uzhG0b2els1/vX2VZjjX
 nc1w==
X-Gm-Message-State: ANhLgQ0y+qQKQec8EQOj4JM8H6mn5BbUDX7UNagusDFTyG2Lx9i1xdJ7
 FVsyUBEHpbpGYzxPHXi0dhKaF0sU1rawBBsxzqnBqw==
X-Google-Smtp-Source: ADFU+vstVtsw7JWrmBNop5+zhRNU4WPamx9SIUzCEtNOrBy3Hzu3AZDNweBkY+DVn4Q0wOYnEWX26BByXVYtpX6VxmE=
X-Received: by 2002:a37:a2c8:: with SMTP id
 l191mr11373979qke.120.1585567321647; 
 Mon, 30 Mar 2020 04:22:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200317205017.28280-1-michael@walle.cc>
 <20200317205017.28280-13-michael@walle.cc>
 <CAMpxmJW770v6JLdveEe1hkgNEJByVyArhorSyUZBYOyFiVyOeg@mail.gmail.com>
 <9c310f2a11913d4d089ef1b07671be00@walle.cc>
 <CAMpxmJXmD-M+Wbj6=wgFgP2aDxbqDN=ceHi1XDun4iwdLm55Zg@mail.gmail.com>
 <22944c9b62aa69da418de7766b7741bd@walle.cc>
 <CACRpkdbJ3DBO+W4P0n-CfZ1T3L8d_L0Nizra8frkv92XPXR4WA@mail.gmail.com>
 <4d8d3bc26bdf73eb5c0e5851589fe085@walle.cc>
In-Reply-To: <4d8d3bc26bdf73eb5c0e5851589fe085@walle.cc>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Mon, 30 Mar 2020 13:21:50 +0200
Message-ID: <CAMpxmJUj7wBvO=Y-u5CXazHhjsPHXcq=5iST4KuLrfakW_a9Mg@mail.gmail.com>
Subject: Re: [PATCH 12/18] gpio: add support for the sl28cpld GPIO controller
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_042203_335371_895AC018 
X-CRM114-Status: GOOD (  22.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-hwmon@vger.kernel.org, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Marc Zyngier <maz@kernel.org>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 linux-devicetree <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, linux-gpio <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cHQuLCAyNyBtYXIgMjAyMCBvIDE2OjI4IE1pY2hhZWwgV2FsbGUgPG1pY2hhZWxAd2FsbGUuY2M+
IG5hcGlzYcWCKGEpOgo+Cj4gQW0gMjAyMC0wMy0yNyAxMToyMCwgc2NocmllYiBMaW51cyBXYWxs
ZWlqOgo+ID4gT24gVGh1LCBNYXIgMjYsIDIwMjAgYXQgOTowNiBQTSBNaWNoYWVsIFdhbGxlIDxt
aWNoYWVsQHdhbGxlLmNjPiB3cm90ZToKPiA+PiBBbSAyMDIwLTAzLTI1IDEyOjUwLCBzY2hyaWVi
IEJhcnRvc3ogR29sYXN6ZXdza2k6Cj4gPgo+ID4+ID4gSW4gdGhhdCBjYXNlIG1heWJlIHlvdSBz
aG91bGQgdXNlIHRoZSBkaXNhYmxlX2xvY2tpbmcgb3B0aW9uIGluCj4gPj4gPiByZWdtYXBfY29u
ZmlnIGFuZCBwcm92aWRlIHlvdXIgb3duIGNhbGxiYWNrcyB0aGF0IHlvdSBjYW4gdXNlIGluIHRo
ZQo+ID4+ID4gaXJxY2hpcCBjb2RlIHRvbz8KPiA+Pgo+ID4+IEJ1dCBob3cgd291bGQgdGhhdCBz
b2x2ZSBwcm9ibGVtICgxKS4gQW5kIGtlZXAgaW4gbWluZCwgdGhhdCB0aGUKPiA+PiByZXFtYXBf
aXJxY2hpcCBpcyBhY3R1YWxseSB1c2VkIGZvciB0aGUgaW50ZXJydXB0IGNvbnRyb2xsZXIsIHdo
aWNoCj4gPj4gaXMgbm90IHRoaXMgZ3BpbyBjb250cm9sbGVyLgo+ID4+Cj4gPj4gSWUuIHRoZSBp
bnRlcnJ1cHQgY29udHJvbGxlciBvZiB0aGUgc2wyOGNwbGQgdXNlcyB0aGUgcmVnbWFwX2lycWNo
aXAKPiA+PiBhbmQgYWxsIGludGVycnVwdCBwaGFuZGxlcyBwb2ludGluZyB0byB0aGUgaW50ZXJy
dXB0IGNvbnRyb2xsZXIgd2lsbAo+ID4+IHJlZmVyZW5jZSB0aGUgdG9wbGV2ZWwgbm9kZS4gQW55
IHBoYW5kbGVzIHBvaW50aW5nIHRvIHRoZSBncGlvCj4gPj4gY29udHJvbGxlciB3aWxsIHJlZmVy
ZW5jZSB0aGUgR1BJTyBzdWJub2RlLgo+ID4KPiA+IElkZWFsbHkgd2Ugd291bGQgY3JlYXRlIHNv
bWV0aGluZyBnZW5lcmljIHRoYXQgaGFzIGJlZW4gb24gbXkKPiA+IG1pbmQgZm9yIHNvbWUgdGlt
ZSwgbGlrZSBhIGdlbmVyaWMgR1BJTyByZWdtYXAgaXJxY2hpcCBub3cgdGhhdAo+ID4gdGhlcmUg
YXJlIGEgZmV3IGNvbnRyb2xsZXJzIGxpa2UgdGhhdC4KPiA+Cj4gPiBJIGRvbid0IGtub3cgaG93
IGZlYXNpYmxlIGl0IGlzIG9yIGhvdyBtdWNoIHdvcmsgaXQgd291bGQgYmUuIEJ1dAo+ID4gYXMg
d2l0aCBHUElPX0dFTkVSSUMgKGZvciBNTUlPKSBpdCB3b3VsZCBiZSBoZWxwZnVsIHNpbmNlIHdl
Cj4gPiBjYW4gdGhlbiBpbXBsZW1lbnQgdGhpbmdzIGxpa2UgLnNldF9tdWx0aXBsZSgpIGFuZCAu
Z2V0X211bHRpcGxlKCkKPiA+IGZvciBldmVyeW9uZS4KPgo+IEZvciBzdGFydGVycywgd291bGQg
dGhhdCBiZSBhIGRyaXZlcnMvZ3Bpby9ncGlvLXJlZ21hcC5jIG9yIGEKPiBkcml2ZXJzL2Jhc2Uv
cmVnbWFwL3JlZ21hcC1ncGlvLmM/IEkgd291bGQgYXNzdW1lIHRoZSBmaXJzdCwKPiBiZWNhdXNl
IHRoZSBzdHVmZiBpbiBkcml2ZXJzL2Jhc2UvcmVnbWFwIG9wZXJhdGVzIG9uIGEgZ2l2ZW4KPiBy
ZWdtYXAgYW5kIHdlJ2QganVzdCBiZSB1c2luZyBvbmUsIGNvcnJlY3Q/IE9uIHRoZSBvdGhlciBo
YW5kCj4gdGhlcmUgaXMgYWxzbyB0aGUgcmVxbWFwLWlycS5jLiBCdXQgYXMgcG9pbnRlZCBvdXQg
YmVmb3JlLCBpdAo+IHdpbGwgYWRkIGFuIGludGVycnVwdCBjb250cm9sbGVyIHRvIHRoZSByZWdt
YXAsIG5vdCBhIGRldmljZQo+IHNvIHRvIHNwZWFrLgo+Cj4gLW1pY2hhZWwKClRoaXMgaGFzIGJl
ZW4gb24gbXkgVE9ETyBsaXN0IGZvciBzbyBsb25nLCBidXQgSSd2ZSBuZXZlciBiZWVuIGFibGUg
dG8KZmluZCB0aGUgdGltZS4uLiBJJ2QgcmVhbGx5IGFwcHJlY2lhdGUgYW55IGVmZm9ydCBpbiB0
aGF0IGRpcmVjdGlvbiBhcwpJIGJlbGlldmUgaXQgd291bGQgYWxsb3cgdXMgdG8gc2xvd2x5IHBv
cnQgYSBiaWcgcGFydCBvZiB0aGUgR1BJTwpleHBhbmRlciBkcml2ZXJzIG92ZXIgdG8gaXQgYW5k
IG1ha2UgbGFyZ2UgcG9ydGlvbnMgb2Ygb3VyIGNvZGViYXNlCmdlbmVyaWMuCgpCZXN0IHJlZ2Fy
ZHMsCkJhcnRvc3ogR29sYXN6ZXdza2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
