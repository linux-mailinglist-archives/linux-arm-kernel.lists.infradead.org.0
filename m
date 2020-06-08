Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E18341F1EE5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 20:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FAO+ixJxEKCHtQYX+7dFuIeS/hcnto/GrGf++US+DEo=; b=hETQxGyRSZDCCu
	cg2oO9TrD69ZPwR6t1wYrEm2b/vobVUbJH97S4dRTWsUSBwc4Pyki/yB9SZg0+2poRp8Zt/G51MZ9
	q62l0xHXlaAOpbGWIclmi58Q29NZoCOQhi9Ovd93vm9DhevhqAl1lder9KUankZgUTjY+qiHQikgP
	0cBCHARxYHrhzsxIUA8KELK3GdunvsZWaE85VGjlVHCZxWsMlRVMKfqfOy7REkW0LJnLkjvZB69kY
	4tzgL/wnvOgqNj1f5nIlZVYC186QqWS8VoM3k9UjO4rVDkFNaVnbz0IopJKlrL78ZYCKWzfmTQvl3
	LrHumz7IfH9x9xrXigfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiMNq-0005To-Vf; Mon, 08 Jun 2020 18:20:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiMNj-0005T5-Cx
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 18:20:25 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so18446131wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 11:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=2CJM5g0VuqYFNIM+dUzodFUTj18WAdux3/u8z24zvRA=;
 b=FvaaSm5tyr6RBgjbPNfvrJLlZcAn3DmzQGeyoQrQ5NJotNGMRI+S/WTL4cZGcvbeKQ
 OeiYno6xBUEcQi5WgLfPg1nv7oOkxmoaBpZ6QtIPDVlQPQdk8Xg1KETQTvd/QbsmmRZg
 rKCAizdiGMf2yjrMRJkrYUJTQ8RhPDKv4CF4YBH4XvdeaNYdcf0hTu/38GolQI/FykDN
 4Wtn17IHKjfImnRlO7XuYIJCSylUrNpYSAcVJ0FF2ljUmpkm69oK59PmBzzl1uzp468r
 sdFV0WqzFhOkNZXY3HflI0dAEsSOqMmu2UtExqdHiQfNrXygDGlFgbgtHXGR4oIhwsQF
 uzWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=2CJM5g0VuqYFNIM+dUzodFUTj18WAdux3/u8z24zvRA=;
 b=mMhpj9FZ7TY+ntuGkIslUoAr+Ywxa2dIb1D0nyNmyFxF14j+KO3qXwPP9U6Adm8EwP
 LJWaKW2UgBt3nkXOn6JtDyYwxJsUJVOFGfA0nbb6bPu/geoD+SrV2DT7DyOhdgpJz63U
 a4QPbNwYcL1ozkUeWaCbq/UmcRdOGXSCB/CNKDtgxry6NLGApd8vLwQVRt+X4GThTUX8
 SlBFK3ChhfbU6znv9doKBQExNrZ8I7VLvBkLmyEKPyMNVC/78BHu7MoP3wk5KigWPcKX
 E9NRiVPpZM2Y2UVAbwj2+dj6RaNDbN0PBioXZfEOaqwffNx6cMFn7j1HbbLcWI7ha7bo
 wrvA==
X-Gm-Message-State: AOAM530l/UVj6PU4XQdOv5lxmbCVtsOaTFtf+LiSUMTF7cpomYNiVevx
 k538eun5g0WG1jI7u3hlrtoeiA==
X-Google-Smtp-Source: ABdhPJxumzJA4nkmctYgB3lMSJVUnSMTyEhafMZJYxSm51uV/tmOYuDxGF7eIqOVSIVmr0U8Lef0xg==
X-Received: by 2002:a05:6000:11cd:: with SMTP id
 i13mr86707wrx.141.1591640420821; 
 Mon, 08 Jun 2020 11:20:20 -0700 (PDT)
Received: from dell ([95.147.198.92])
 by smtp.gmail.com with ESMTPSA id a7sm358274wmh.14.2020.06.08.11.20.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 11:20:20 -0700 (PDT)
Date: Mon, 8 Jun 2020 19:20:18 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200608182018.GB4106@dell>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-3-michael@walle.cc>
 <20200605065709.GD3714@dell> <20200605105026.GC5413@sirena.org.uk>
 <c5632bfab3956265e90fc2fb6c0b3cae@walle.cc>
 <20200606114645.GB2055@sirena.org.uk>
 <dc052a5c77171014ecc465b1da8b7ef8@walle.cc>
 <20200608082827.GB3567@dell>
 <CAHp75VdiH=J-ovCdh1RFJDW_bJM8=pbXRaHmB691GLb-5oBmYQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75VdiH=J-ovCdh1RFJDW_bJM8=pbXRaHmB691GLb-5oBmYQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_112023_479213_ED90A4F3 
X-CRM114-Status: GOOD (  34.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
 Thierry Reding <thierry.reding@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 david.m.ertman@intel.com, Guenter Roeck <linux@roeck-us.net>,
 devicetree <devicetree@vger.kernel.org>, Jean Delvare <jdelvare@suse.com>,
 linux-watchdog@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, shiraz.saleem@intel.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAwOCBKdW4gMjAyMCwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgoKPiArQ2M6IHNvbWUg
SW50ZWwgcGVvcGxlIFdSVCBvdXIgaW50ZXJuYWwgZGlzY3Vzc2lvbiBhYm91dCBzaW1pbGFyCj4g
cHJvYmxlbSBhbmQgc29sdXRpb25zLgo+IAo+IE9uIE1vbiwgSnVuIDgsIDIwMjAgYXQgMTE6MzAg
QU0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPiBPbiBTYXQsIDA2
IEp1biAyMDIwLCBNaWNoYWVsIFdhbGxlIHdyb3RlOgo+ID4gPiBBbSAyMDIwLTA2LTA2IDEzOjQ2
LCBzY2hyaWViIE1hcmsgQnJvd246Cj4gPiA+ID4gT24gRnJpLCBKdW4gMDUsIDIwMjAgYXQgMTA6
MDc6MzZQTSArMDIwMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKPiA+ID4gPiA+IEFtIDIwMjAtMDYt
MDUgMTI6NTAsIHNjaHJpZWIgTWFyayBCcm93bjoKPiAKPiAuLi4KPiAKPiA+IFJpZ2h0LiAgSSdt
IHN1Z2dlc3RpbmcgYSBtZWFucyB0byBleHRyYXBvbGF0ZSBjb21wbGV4IHNoYXJlZCBhbmQKPiA+
IHNvbWV0aW1lcyBpbnRlcnR3aW5lZCBiYXRjaGVzIG9mIHJlZ2lzdGVyIHNldHMgdG8gYmUgY29u
c3VtZWQgYnkKPiA+IG11bHRpcGxlIChzdWItKWRldmljZXMgc3Bhbm5pbmcgZGlmZmVyZW50IHN1
YnN5c3RlbXMuCj4gPgo+ID4gQWN0dWFsbHkgc2NyYXAgdGhhdC4gIFRoZSBtb3N0IGNvbW1vbiBj
YXNlIEkgc2VlIGlzIGEgc2luZ2xlIFJlZ21hcAo+ID4gY292ZXJpbmcgYWxsIGNoaWxkLWRldmlj
ZXMuCj4gCj4gWWVzLCBiZWNhdXNlIG9mdGVuIHdlIG5lZWQgYSBzeW5jaHJvbml6YXRpb24gYWNy
b3NzIHRoZSBlbnRpcmUgYWRkcmVzcwo+IHNwYWNlIG9mIHRoZSAocGFyZW50KSBkZXZpY2UgaW4g
cXVlc3Rpb24uCgpFeGFjdGx5LgoKQmVjYXVzZSBvZiB0aGUgcmVhc29ucyBpbiB0aGUgcGFyYWdy
YXBoIGFib3ZlOgoKICJjb21wbGV4IHNoYXJlZCBhbmQgc29tZXRpbWVzIGludGVydHdpbmVkIGJh
dGNoZXMgb2YgcmVnaXN0ZXIgc2V0cyB0bwogIGJlIGNvbnN1bWVkIGJ5IG11bHRpcGxlIChzdWIt
KWRldmljZXMgc3Bhbm5pbmcgZGlmZmVyZW50IHN1YnN5c3RlbXMiCgo+ID4gIEl0IHdvdWxkIGJl
IGdyZWF0IGlmIHRoZXJlIHdhcyBhIHdheSBpbgo+ID4gd2hpY2ggd2UgY291bGQgbWFrZSBhbiBh
c3N1bXB0aW9uIHRoYXQgdGhlIGVudGlyZSByZWdpc3RlciBhZGRyZXNzCj4gPiBzcGFjZSBmb3Ig
YSAndGFnZ2VkJyAoTUZEKSBkZXZpY2UgaXMgdG8gYmUgc2hhcmVkICh2aWEgUmVnbWFwKSBiZXR3
ZWVuCj4gPiBlYWNoIG9mIHRoZSBkZXZpY2VzIGRlc2NyaWJlZCBieSBpdHMgY2hpbGQtbm9kZXMu
ICBQcm9iYWJseSBieSBwaWNraW5nCj4gPiB1cCBvbiB0aGUgJ3NpbXBsZS1tZmQnIGNvbXBhdGli
bGUgc3RyaW5nIGluIHRoZSBmaXJzdCBpbnN0YW5jZS4KPiA+Cj4gPiBSb2IsIGlzIHRoZSBhYm92
ZSBzb21ldGhpbmcgeW91IHdvdWxkIGNvbnRlbXBsYXRlPwo+ID4KPiA+IE1pY2hhZWwsIGRvIHlv
dXIgcmVnaXN0ZXIgYWRkcmVzc2VzIG92ZXJsYXAgaS5lLiBhcmUgdGhleSBpbnRlcm1pbmdsZWQK
PiA+IHdpdGggb25lIGFub3RoZXI/ICBEbyBtdWx0aXBsZSBjaGlsZCBkZXZpY2VzIG5lZWQgYWNj
ZXNzIHRvIHRoZSBzYW1lCj4gPiByZWdpc3RlcnMgaS5lLiBhcmUgdGhleSBzaGFyZWQ/Cj4gPgo+
ID4gPiA+ID4gQnV0LCB0aGVyZSBpcyBtb3JlIGluIG15IGRyaXZlcjoKPiA+ID4gPiA+ICAoMSkg
dGhlcmUgaXMgYSB2ZXJzaW9uIGNoZWNrCj4gPgo+ID4gSWYgd2UgY2FuIHJpZCB0aGUgUmVnbWFw
IGRlcGVuZGVuY3ksIHRoZW4gY3JlYXRpbmcgYW4gZW50aXJlIGRyaXZlciB0bwo+ID4gY29uZHVj
dCBhIHZlcnNpb24gY2hlY2sgaXMgdW5qdXN0aWZpYWJsZS4gIFRoaXMgY291bGQgYmVjb21lIGFu
IGlubGluZQo+ID4gZnVuY3Rpb24gd2hpY2ggaXMgY2FsbGVkIGJ5IGVhY2ggb2YgdGhlIHN1Yi1k
ZXZpY2VzIGluc3RlYWQsIGZvcgo+ID4gZXhhbXBsZS4KPiA+Cj4gPiA+ID4gPiAgKDIpIHRoZXJl
IGlzIGFub3RoZXIgZnVuY3Rpb24gZm9yIHdoaWNoIHRoZXJlIGlzIG5vIHN1aXRhYmxlIGxpbnV4
Cj4gPiA+ID4gPiAgICAgIHN1YnN5c3RlbSBJJ20gYXdhcmUgb2YgYW5kIHRodXMgd2hpY2ggSSdk
IGxpa2UgdG8gdXMgc3lzZnMKPiA+ID4gPiA+ICAgICAgYXR0cmlidXRlcyBmb3I6IFRoaXMgY29u
dHJvbGxlciBzdXBwb3J0cyAxNiBub24tdm9sYXRpbGUKPiA+ID4gPiA+ICAgICAgY29uZmlndXJh
dGlvbiBiaXRzLiAodGhpcyBpcyBzdGlsbCBUQkQpCj4gPgo+ID4gVGhlcmUgaXMgYSBwbGFjZSBm
b3IgZXZlcnl0aGluZyBpbiBMaW51eC4KPiA+Cj4gPiBXaGF0IGRvIHRoZXNlIGJpdHMgY29uZmln
dXJlPwo+ID4KPiA+ID4gPiBUQkggSSdkIGFsc28gc2F5IHRoYXQgdGhlIGVudW1lcmF0aW9uIG9m
IHRoZSBzdWJkZXZpY2VzIGZvciB0aGlzCj4gPiA+ID4gZGV2aWNlIHNob3VsZCBiZSBpbiB0aGUg
ZGV2aWNlIHJhdGhlciB0aGFuIHRoZSBEVCwgdGhleSBkb24ndAo+ID4gPiA+IHNlZW0gdG8gYmUg
dGhpbmdzIHRoYXQgZXhpc3Qgb3V0c2lkZSBvZiB0aGlzIG9uZSBkZXZpY2UuCj4gPiA+Cj4gPiA+
IFdlJ3JlIGdvaW5nIGNpcmNsZXMgaGVyZSwgZm9ybWVybHkgdGhleSB3ZXJlIGVudW1lcmF0ZWQg
aW4gdGhlIE1GRC4KPiA+ID4gWWVzLCB0aGV5IGFyZSBkZXZpY2VzIHdoaWNoIGFyZW4ndCBsaWtl
bHkgYmUgdXNlZCBvdXRzaWRlIGEKPiA+ID4gInNsMjhjcGxkIiwgYnV0IHRoZXJlIG1pZ2h0IHRo
ZXJlIG1pZ2h0IGJlIG90aGVyIHZlcnNpb25zIG9mIHRoZQo+ID4gPiBzbDI4Y3BsZCB3aXRoIG90
aGVyIGNvbXBvbmVudHMgb24gZGlmZmVyZW50IGJhc2UgYWRkcmVzc2VzLiBJCj4gPiA+IGRvbid0
IGNhcmUgaWYgdGhleSBhcmUgZW51bWVyYXRlZCBpbiBEVCBvciBNRkQsIGFjdHVhbGx5LCBJJ2QK
PiA+ID4gcHJlZmVyIHRoZSBsYXR0ZXIuIF9CdXRfIEkgd291bGQgbGlrZSB0byBoYXZlIHRoZSBk
ZXZpY2UgdHJlZQo+ID4gPiBwcm9wZXJ0aWVzIGZvciBpdHMgc3ViZGV2aWNlcywgZS5nLiB0aGUg
b25lcyBmb3IgdGhlIHdhdGNoZG9nIG9yCj4gPiA+IHdoYXRldmVyIGNvbXBvbmVudHMgdGhlcmUg
bWlnaHQgYmUgaW4gdGhlIGZ1dHVyZS4KPiA+Cj4gPiBbLi4uXQo+ID4KPiA+ID4gTUZEIGNvcmUg
Y2FuCj4gPiA+IG1hdGNoIGEgZGV2aWNlIHRyZWUgbm9kZSB0b2RheTsgYnV0IG9ubHkgb25lIHBl
ciB1bmlxdWUgY29tcGF0aWJsZQo+ID4gPiBzdHJpbmcuIFNvIHdoYXQgc2hvdWxkIEkgdXNlIHRv
IGRpZmZlcmVudGlhdGUgdGhlIGRpZmZlcmVudAo+ID4gPiBzdWJkZXZpY2VzPwo+ID4KPiA+IFJp
Z2h0LiAgSSBoYXZlIGJlZW4gYXdhcmUgb2YgdGhpcyBpc3N1ZS4gIFRoZSBvbmx5IHN1aXRhYmxl
IHNvbHV0aW9uCj4gPiB0byB0aGlzIHdvdWxkIGJlIHRvIG1hdGNoIG9uICdyZWcnLgo+ID4KPiA+
IEZZSTogSSBwbGFuIHRvIGZpeCB0aGlzLgo+ID4KPiA+IElmIHlvdXIgcmVnaXN0ZXIgbWFwIG5l
ZWRzIHRvIGNoYW5nZSwgdGhlbiBJIHN1Z2dlc3QgdGhhdCB0aGlzIGlzCj4gPiBlaXRoZXIgYSBu
ZXcgZGV2aWNlIG9yIGF0IGxlYXN0IGEgZGlmZmVyZW50IHZlcnNpb24gb2YgdGhlIGRldmljZSBh
bmQKPiA+IHdvdWxkIGFsc28gaGF2ZSB0byBiZSByZXByZXNlbnRlZCBhcyBkaWZmZXJlbnQgKHN1
Yi0pbWZkX2NlbGwuCj4gPgo+ID4gPiBSb2Igc3VnZ2VzdGVkIHRoZSBpbnRlcm5hbCBvZmZzZXQs
IHdoaWNoIEkgZGlkIGhlcmUuCj4gPgo+ID4gRldJVywgSSBkb24ndCBsaWtlIHRoaXMgaWRlYS4g
IERUcyBzaG91bGQgbm90IGhhdmUgdG8gYmUgbW9kaWZpZWQKPiA+IChlaXRoZXIgaW4gdGhlIGZp
cnN0IGluc3RhbmNlIG9yIHN1YnNlcXVlbnRseSkgb3Igc3BlY2lmaWNhbGx5Cj4gPiBkZXNpZ25l
ZCB0byBwYXRjaCBpbmFkZXF1YWNpZXMgaW4gYW55IGdpdmVuIE9TLgo+ID4KPiA+ID4gQnV0IHRo
ZW4sIHRoZXJlIGlzIGxlc3MgdXNlIGluIGR1cGxpY2F0aW5nIHRoZSBvZmZzZXRzIGluIHRoZSBN
RkQKPiA+ID4ganVzdCB0byBoYXZlIHRoZSBNRkQgZW51bWVyYXRlIHRoZSBzdWJkZXZpY2VzIGFu
ZCB0aGVuIG1hdGNoCj4gPiA+IHRoZSBkZXZpY2UgdHJlZSBub2RlcyBhZ2FpbnN0IGl0LiBJIGNh
biBqdXN0IHVzZQo+ID4gPiBvZl9wbGF0Zm9ybV9wb3B1bGF0ZSgpIHRvIGVudW1lcmF0ZSB0aGUg
Y2hpbGRyZW4gYW5kIEkgd29uJ3QKPiA+ID4gaGF2ZSB0byBkdXBsaWNhdGUgdGhlIGJhc2UgYWRk
cmVzc2VzLgo+ID4KPiA+IFdoaWNoIGlzIGZpbmUuICBIb3dldmVyIHRoaXMgY2F1c2VzIGEgZGlm
ZmVyZW50IGlzc3VlIGZvciB5b3UuICBCeQo+ID4gc3RyaXBwaW5nIG91dCB0aGUgTUZEIGNvZGUg
eW91IHJlbmRlciB0aGUgTUZEIHBvcnRpb24gc2VlbWluZ2x5Cj4gPiBzdXBlcmZsdW91cy4gIEFu
b3RoZXIgaXNzdWUgZHJpdmVyIGF1dGhvcnMgY29tbW9ubHkgY29udGVuZCB3aXRoLgo+IAoKLS0g
CkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIg
U2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0Nz
CkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
