Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 945871F1AEE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 16:24:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4LMwbjf6HFVewB1t/KDx2mzl4MZxtK0ooc9q8YiEA+g=; b=Q+djZR6fs8r1Y+
	OvoSsNLZVsbnmkzXCQt+jRWuhQ/5WDnsDssXNTKI1JZOAVav7bbkA2SUFuEKQK07V1y6rXSarlF+k
	kqpYabpyw/X22G0ijAM6nI5p//NUKTjxmYiZt/X3iNpRgwycfNTuMNUk+qPhXUYjZ6hWH/MnmTnZB
	UWPVDkBFrciOKKAUvy4bwIcVOKjyaUt88gUYK6Oyn3pZ7ueKfSFyPtrkC0HnD5sZsUlEQ125Gbuhy
	CpVKKklL4Oxjipr5HH60r3lgrN7hzrUxbkEGe2Ett3pT40ygC2ySTjUbM3VcqIFFJ5Cb4LsZu+OCd
	/0vIxaFsCVxfuJW6JrFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiIhO-0007yu-M7; Mon, 08 Jun 2020 14:24:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiIhG-0007yM-I0
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 14:24:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id x13so17625545wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 07:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=fIhwy13PVaO5F8p6kg+GqvngU7Ke/x9Dg12+TRbhC9I=;
 b=CZfPL8w5fOBsBIx+z/oomYpe+rnOnlu08HlfeLxZxWn4DvD8EV1jvidfa2G6obPNXw
 wcLLWFtkhMqdqFwD6ucKN3p6mzAsg7HanEknR4Sla4G+4jcKzr/fpU1V57aBb/7AYoPw
 a+qTL3H1zDbkTzdEZSwS+EOshh5JBGPjQ8vruPaNy4+5DBNBZZqQkTMEdK4IxTK5NACU
 GGIM6BOSbSswTePVvH+wIByXOpNUEHdrrZU7+rCQFlWfiin1e/xF6lbhT4X8YtTuAVEZ
 Fa5yd03P+4vcSrJt3xaJlQ1FH4O1ETJFfjANj9H1Awd+M9I8eobjJwDd948h9av12Eua
 cTdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=fIhwy13PVaO5F8p6kg+GqvngU7Ke/x9Dg12+TRbhC9I=;
 b=lBfWCV7malf1cdynzdHDLYVGHNID7+xUZshA4bW6rP0KAQmnSMblpoT2ZKlfm8wC7T
 GW8v4b4vJ0u1s61JBjW6N8bw/oqmG21x0xS/vepG79Ur67RYDZrRkolPcaloKgt02nDK
 vF1ij6ZGKjzxIBsrBmnWMRQjFvolei8VhKHO1UFltQvIwSvb1ZuUqniw6T27KUvKFWel
 ZMKl9GcGEqrzfuwLGF9R8nxEXyJTO3yEG6Ckqwnc9TLIp1/ptFkdOgaFh9ldyrKMQ1ba
 M4n4aLMN33/8LpC33E0wP3VuVyDPexo4PdUwVxGGEVLZmRUnWrlcseQXqf6qWbrFar/7
 T5Cw==
X-Gm-Message-State: AOAM531S4aJJTuetikuaoipB3elbUkwCM7eDhwyc0DDtpjWLrINb/p0R
 0wFP7wL9l5lhs28Np4TWnQPjuQ==
X-Google-Smtp-Source: ABdhPJweehatGIr1BA4m4b/1jQsQ1TEclLtHNU4cdgilO6fq2rqBkF/6wa0DUib7fHXp5oiaj3ZdVg==
X-Received: by 2002:adf:f208:: with SMTP id p8mr21462928wro.388.1591626257005; 
 Mon, 08 Jun 2020 07:24:17 -0700 (PDT)
Received: from dell ([95.147.198.92])
 by smtp.gmail.com with ESMTPSA id o15sm22497715wmm.31.2020.06.08.07.24.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 07:24:15 -0700 (PDT)
Date: Mon, 8 Jun 2020 15:24:13 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v3 03/16] mfd: mfd-core: match device tree node against
 reg property
Message-ID: <20200608142413.GA4106@dell>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-4-michael@walle.cc>
 <67e90dafd67c285158c2c6f67f92edb7@walle.cc>
 <20200515102848.GH271301@dell>
 <159e68b4ce53630ef906b2fcbca925bd@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159e68b4ce53630ef906b2fcbca925bd@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_072418_630088_20AAE2C6 
X-CRM114-Status: GOOD (  20.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-watchdog@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Jason Cooper <jason@lakedaemon.net>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Mark Brown <broonie@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyNSBNYXkgMjAyMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKPiBBbSAyMDIwLTA1LTE1
IDEyOjI4LCBzY2hyaWViIExlZSBKb25lczoKPiA+IE9uIFRodSwgMzAgQXByIDIwMjAsIE1pY2hh
ZWwgV2FsbGUgd3JvdGU6Cj4gPiAKPiA+ID4gSGkgTGVlLAo+ID4gPiAKPiA+ID4gQW0gMjAyMC0w
NC0yMyAxOTo0NSwgc2NocmllYiBNaWNoYWVsIFdhbGxlOgo+ID4gPiA+IFRoZXJlIG1pZ2h0IGJl
IG11bHRpcGxlIGNoaWxkcmVuIHdpdGggdGhlIGRldmljZSB0cmVlIGNvbXBhdGlibGUsIGZvcgo+
ID4gPiA+IGV4YW1wbGUgaWYgYSBNRkQgaGFzIG11bHRpcGxlIGluc3RhbmNlcyBvZiB0aGUgc2Ft
ZSBmdW5jdGlvbi4gSW4gdGhpcwo+ID4gPiA+IGNhc2Ugb25seSB0aGUgZmlyc3QgaXMgbWF0Y2hl
ZCBhbmQgdGhlIG90aGVyIGNoaWxkcmVuIGdldCBhIHdyb25nCj4gPiA+ID4gb2Zfbm9kZSByZWZl
cmVuY2UuCj4gPiA+ID4gQWRkIGEgbmV3IG9wdGlvbiB0byBtYXRjaCBhbHNvIGFnYWluc3QgdGhl
IHVuaXQgYWRkcmVzcyBvZiB0aGUgY2hpbGQKPiA+ID4gPiBub2RlLiBBZGRpdG9uYWxseSwgYSBu
ZXcgaGVscGVyIE9GX01GRF9DRUxMX1JFRyBpcyBhZGRlZC4KClsuLi5dCgo+ID4gPiA+IGRpZmYg
LS1naXQgYS9pbmNsdWRlL2xpbnV4L21mZC9jb3JlLmggYi9pbmNsdWRlL2xpbnV4L21mZC9jb3Jl
LmgKPiA+ID4gPiBpbmRleCBkMDFkMTI5OWU0OWQuLmMyYzBhZDZiMTRmMyAxMDA2NDQKPiA+ID4g
PiAtLS0gYS9pbmNsdWRlL2xpbnV4L21mZC9jb3JlLmgKPiA+ID4gPiArKysgYi9pbmNsdWRlL2xp
bnV4L21mZC9jb3JlLmgKPiA+ID4gPiBAQCAtMTMsOCArMTMsMTEgQEAKPiA+ID4gPiAgI2luY2x1
ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ID4gPiA+Cj4gPiA+ID4gICNkZWZpbmUgTUZE
X1JFU19TSVpFKGFycikgKHNpemVvZihhcnIpIC8gc2l6ZW9mKHN0cnVjdCByZXNvdXJjZSkpCj4g
PiA+ID4gKyNkZWZpbmUgTUZEX09GX1JFR19WQUxJRAlCSVQoMzEpCj4gPiAKPiA+IFdoYXQgYWJv
dXQgNjRiaXQgcGxhdGZvcm1zPwo+IAo+IFRoZSBpZGVhIHdhcyB0byBoYXZlIHRoaXMgYXMgYSBs
b2dpY2FsIG51bWJlci4gSS5lLiBmb3Igbm93IHlvdSBtYXkgb25seQo+IGhhdmUgb25lIHN1YmRl
dmljZSBwZXIgdW5pcXVlIGNvbXBhdGlibGUgc3RyaW5nLiBJbiBmYWN0LCBpZiB5b3UgaGF2ZSBh
Cj4gbG9vayBhdCB0aGUgYWI4NTAwLmMsIHRoZXJlIGFyZSBtdWx0aXBsZSAic3Rlcmljc3Nvbixh
Yjg1MDAtcHdtIgo+IHN1YmRldmljZXMuIEJ1dCB0aGVyZSBpcyBvbmx5IG9uZSBEVCBub2RlIGZv
ciBhbGwgdGhyZWUgb2YgaXQuIEkgZ3Vlc3MKPiB0aGlzIHdvcmtzIGFzIGxvbmcgYXMgeW91IGRv
bid0IHVzZSBwaGFuZGxlcyB0byByZWZlcmVuY2UgdGhlIHB3bSBub2RlCj4gaW4gdGhlIGRldmlj
ZSB0cmVlLiBPciB5b3UgZG9uJ3Qgd2FudCB0byB1c2UgZGV2aWNlIHRyZWUgcHJvcGVydGllcwo+
IHBlciBzdWJkZXZpY2UgKGZvciBleGFtcGxlIHRoZSAidGltZW91dC1zZWMiIG9mIGEgd2F0Y2hk
b2cgZGV2aWNlKS4KClRoaXMgaXMgbm90IGEgZ29vZCBleGFtcGxlLCBhcyB0aGUgInN0ZXJpY3Nz
b24sYWI4NTAwLXB3bSIgaXMKbGVnaXRpbWF0ZS4gIEhlcmUgd2UgYXJlIHJlZ2lzdGVyaW5nIDMg
cG90ZW50aWFsIGRldmljZXMsIGJ1dCBvbmx5Cmluc3RhbnRpYXRpbmcgMSBvZiB0aGVtLgoKLS0g
CkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIg
U2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0Nz
CkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
