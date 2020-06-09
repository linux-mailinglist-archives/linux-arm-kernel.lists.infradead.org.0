Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F581F4765
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 21:45:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQWUx9QUbYB8rkMNCI+NyvaBMNeRF+v1Nlgcaaz1P7c=; b=b/byrl3zHnZKFF
	2DKgid00C5b2JRegDG36Zsd5J+n18iXWML4gZ/Tr/Dzh3bvtNGfbDX/VSYr0FnZK1ZUOpoCOt3nFW
	DyN+ILqG0UO/wNt6dNuaRadtXcT2jI/nETEX4F7GCUy56lhVojNzfujKr9+18GwqMH4e3Ry50UE4d
	cz8KTgPpv2t8NxysX5UwI2kiICzZ9RP/OB+vDMXGpwVgUF0X+mFtSQfJV+eiHYGuKVRDJQyUlHyfm
	MvEayJhppDkdSKxo+cDxV3hDjs6uVNi1tASFMzp4gMWLFFVHTzIo8gkDXgxCdyfcOnhUADZfe52ws
	kduuyUIEMzsmR6EFUiSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jikBc-0005XD-2j; Tue, 09 Jun 2020 19:45:28 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jikBJ-0004MW-Rs
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 19:45:11 +0000
Received: by mail-wm1-x341.google.com with SMTP id f185so4330788wmf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 12:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=eVChyNp9hZc+Gzjg8UZb0YNMtsUWDyIgCP+b2/L/34Y=;
 b=Cimu+rlxTJjxCBFMH0knwV5QoVBXhRJmOfAz+EC43J0oGHTAEwARoNbay95Kx3eB7W
 ptqDaODZ32mHoLWcGw81m9wQbqK3ifMfpRo9GyK+2vojRokke8yhlk/mJgXTBLsl4WpQ
 0U0yQpDvzkXCZwXSxyDb/ufDjEoWfCeu66+0+50n9NPCoYUhTs2u2Gm62fETckdu7UWT
 S/YtCKh4HnEschFfSQCfjdd7iC6oO8rLeRA759ywXW6qUciDGTfKtXEWRwHnlIKMAwc1
 hfaewDA0sHH7tFerdI9BStCA5eGFa7Av0bxROgGCwkuT0nkS67vm8NnbqVA5lUEv8fuo
 PUlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=eVChyNp9hZc+Gzjg8UZb0YNMtsUWDyIgCP+b2/L/34Y=;
 b=n6+zE6l7xlajk6I3kiB6aVB5XcH6Rgt2cgg4HKNjtP2mLGOITeUIY8Qiia8S+RZCxz
 l0dI2gAzMxTAhPWj9MJ3ZCrF9WR+AJRrLSuXvmO268e7vuFjCAfgatKpXC7Lc3IZfYRH
 MqMtjKD6BWCEFoRCZIukvsRgkl8BEcloyJ4i+uEMGd4elqHfPoHdGQ8Kw7tmb2/HDMkr
 GtSLlvlFW917x/V5cP2stDOe9RTCMjGaJYtIzdPUJt9LozzvDlkbXgcWZFYum9XnnA+p
 RfbdWuyyftGcvI8SCoL01+3MCpaSbwJHRfNfTFU+PLl+QRsEbrefcoHcivUmIwqTIZWN
 yBcw==
X-Gm-Message-State: AOAM531Rv6yP0uhM6M81jMOW9mUBCwevHmAj2r7oLMLze4+ySSWJ3Zzz
 a18rbU/hcLGr0yvMsqgrhpHNsg==
X-Google-Smtp-Source: ABdhPJy0yYa42yENG73o0WmFdkVW7mcgR4r704T13woKoj35YQQS5XtfAK0Wu3xQ01RXCjgttX8XLA==
X-Received: by 2002:a1c:f216:: with SMTP id s22mr5325673wmc.167.1591731907981; 
 Tue, 09 Jun 2020 12:45:07 -0700 (PDT)
Received: from dell ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id q1sm3856878wmc.12.2020.06.09.12.45.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 12:45:07 -0700 (PDT)
Date: Tue, 9 Jun 2020 20:45:05 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200609194505.GQ4106@dell>
References: <dc052a5c77171014ecc465b1da8b7ef8@walle.cc>
 <20200608082827.GB3567@dell>
 <CAHp75VdiH=J-ovCdh1RFJDW_bJM8=pbXRaHmB691GLb-5oBmYQ@mail.gmail.com>
 <7d7feb374cbf5a587dc1ce65fc3ad672@walle.cc>
 <20200608185651.GD4106@dell>
 <32231f26f7028d62aeda8fdb3364faf1@walle.cc>
 <20200609064735.GH4106@dell>
 <32287ac0488f7cbd5a7d1259c284e554@walle.cc>
 <20200609151941.GM4106@dell>
 <95e6ec9bbdf6af7a9ff9c31786f743f2@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <95e6ec9bbdf6af7a9ff9c31786f743f2@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_124509_922002_AA0311A6 
X-CRM114-Status: GOOD (  30.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 Andy Shevchenko <andy.shevchenko@gmail.com>,
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
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwOSBKdW4gMjAyMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKCj4gQW0gMjAyMC0wNi0w
OSAxNzoxOSwgc2NocmllYiBMZWUgSm9uZXM6Cj4gPiBPbiBUdWUsIDA5IEp1biAyMDIwLCBNaWNo
YWVsIFdhbGxlIHdyb3RlOgo+ID4gCj4gPiA+IEFtIDIwMjAtMDYtMDkgMDg6NDcsIHNjaHJpZWIg
TGVlIEpvbmVzOgo+ID4gPiA+IE9uIE1vbiwgMDggSnVuIDIwMjAsIE1pY2hhZWwgV2FsbGUgd3Jv
dGU6Cj4gPiA+ID4KPiA+ID4gPiA+IEFtIDIwMjAtMDYtMDggMjA6NTYsIHNjaHJpZWIgTGVlIEpv
bmVzOgo+ID4gPiA+ID4gPiBPbiBNb24sIDA4IEp1biAyMDIwLCBNaWNoYWVsIFdhbGxlIHdyb3Rl
Ogo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IEFtIDIwMjAtMDYtMDggMTI6MDIsIHNjaHJpZWIg
QW5keSBTaGV2Y2hlbmtvOgo+ID4gPiA+ID4gPiA+ID4gK0NjOiBzb21lIEludGVsIHBlb3BsZSBX
UlQgb3VyIGludGVybmFsIGRpc2N1c3Npb24gYWJvdXQgc2ltaWxhcgo+ID4gPiA+ID4gPiA+ID4g
cHJvYmxlbSBhbmQgc29sdXRpb25zLgo+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+IE9u
IE1vbiwgSnVuIDgsIDIwMjAgYXQgMTE6MzAgQU0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJv
Lm9yZz4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+IE9uIFNhdCwgMDYgSnVuIDIwMjAsIE1pY2hh
ZWwgV2FsbGUgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gQW0gMjAyMC0wNi0wNiAxMzo0Niwg
c2NocmllYiBNYXJrIEJyb3duOgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gT24gRnJpLCBKdW4gMDUs
IDIwMjAgYXQgMTA6MDc6MzZQTSArMDIwMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKPiA+ID4gPiA+
ID4gPiA+ID4gPiA+ID4gQW0gMjAyMC0wNi0wNSAxMjo1MCwgc2NocmllYiBNYXJrIEJyb3duOgo+
ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+IC4uLgo+ID4gPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gPiA+ID4gUmlnaHQuICBJJ20gc3VnZ2VzdGluZyBhIG1lYW5zIHRvIGV4dHJhcG9sYXRl
IGNvbXBsZXggc2hhcmVkIGFuZAo+ID4gPiA+ID4gPiA+ID4gPiBzb21ldGltZXMgaW50ZXJ0d2lu
ZWQgYmF0Y2hlcyBvZiByZWdpc3RlciBzZXRzIHRvIGJlIGNvbnN1bWVkIGJ5Cj4gPiA+ID4gPiA+
ID4gPiA+IG11bHRpcGxlIChzdWItKWRldmljZXMgc3Bhbm5pbmcgZGlmZmVyZW50IHN1YnN5c3Rl
bXMuCj4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+IEFjdHVhbGx5IHNjcmFwIHRo
YXQuICBUaGUgbW9zdCBjb21tb24gY2FzZSBJIHNlZSBpcyBhIHNpbmdsZSBSZWdtYXAKPiA+ID4g
PiA+ID4gPiA+ID4gY292ZXJpbmcgYWxsIGNoaWxkLWRldmljZXMuCj4gPiA+ID4gPiA+ID4gPgo+
ID4gPiA+ID4gPiA+ID4gWWVzLCBiZWNhdXNlIG9mdGVuIHdlIG5lZWQgYSBzeW5jaHJvbml6YXRp
b24gYWNyb3NzIHRoZSBlbnRpcmUgYWRkcmVzcwo+ID4gPiA+ID4gPiA+ID4gc3BhY2Ugb2YgdGhl
IChwYXJlbnQpIGRldmljZSBpbiBxdWVzdGlvbi4KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+
ID4gPiA+ICBJdCB3b3VsZCBiZSBncmVhdCBpZiB0aGVyZSB3YXMgYSB3YXkgaW4KPiA+ID4gPiA+
ID4gPiA+ID4gd2hpY2ggd2UgY291bGQgbWFrZSBhbiBhc3N1bXB0aW9uIHRoYXQgdGhlIGVudGly
ZSByZWdpc3RlciBhZGRyZXNzCj4gPiA+ID4gPiA+ID4gPiA+IHNwYWNlIGZvciBhICd0YWdnZWQn
IChNRkQpIGRldmljZSBpcyB0byBiZSBzaGFyZWQgKHZpYSBSZWdtYXApIGJldHdlZW4KPiA+ID4g
PiA+ID4gPiA+ID4gZWFjaCBvZiB0aGUgZGV2aWNlcyBkZXNjcmliZWQgYnkgaXRzIGNoaWxkLW5v
ZGVzLiAgUHJvYmFibHkgYnkgcGlja2luZwo+ID4gPiA+ID4gPiA+ID4gPiB1cCBvbiB0aGUgJ3Np
bXBsZS1tZmQnIGNvbXBhdGlibGUgc3RyaW5nIGluIHRoZSBmaXJzdCBpbnN0YW5jZS4KPiA+ID4g
PiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gUm9iLCBpcyB0aGUgYWJvdmUgc29tZXRoaW5n
IHlvdSB3b3VsZCBjb250ZW1wbGF0ZT8KPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+
ID4gTWljaGFlbCwgZG8geW91ciByZWdpc3RlciBhZGRyZXNzZXMgb3ZlcmxhcCBpLmUuIGFyZSB0
aGV5IGludGVybWluZ2xlZAo+ID4gPiA+ID4gPiA+ID4gPiB3aXRoIG9uZSBhbm90aGVyPyAgRG8g
bXVsdGlwbGUgY2hpbGQgZGV2aWNlcyBuZWVkIGFjY2VzcyB0byB0aGUgc2FtZQo+ID4gPiA+ID4g
PiA+ID4gPiByZWdpc3RlcnMgaS5lLiBhcmUgdGhleSBzaGFyZWQ/Cj4gPiA+ID4gPiA+ID4KPiA+
ID4gPiA+ID4gPiBObyB0aGV5IGRvbid0IG92ZXJsYXAsIGV4cGVjdCBmb3IgbWF5YmUgdGhlIHZl
cnNpb24gcmVnaXN0ZXIsIHdoaWNoIGlzCj4gPiA+ID4gPiA+ID4ganVzdCB0aGVyZSBvbmNlIGFu
ZCBub3QgcGVyIGZ1bmN0aW9uIGJsb2NrLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBUaGVuIHdo
YXQncyBzdG9wcGluZyB5b3UgaGF2aW5nIGVhY2ggZGV2aWNlIFJlZ21hcCB0aGVpciBvd24gc3Bh
Y2U/Cj4gPiA+ID4gPgo+ID4gPiA+ID4gQmVjYXVzZSBpdHMganVzdCBvbmUgSTJDIGRldmljZSwg
QUZBSUsgdGhhdHMgbm90IHBvc3NpYmxlLCByaWdodD8KPiA+ID4gPgo+ID4gPiA+IE5vdCBzdXJl
IHdoYXQgKGlmIGFueSkgdGhlIHJlc3RyaWN0aW9ucyBhcmUuCj4gPiA+IAo+ID4gPiBZb3UgY2Fu
IG9ubHkgaGF2ZSBvbmUgZGV2aWNlIHBlciBJMkMgYWRkcmVzcy4gVGhlcmVmb3JlLCBJIG5lZWQg
b25lCj4gPiA+IGRldmljZQo+ID4gPiB3aGljaCBpcyBlbnVtZXJhdGVkIGJ5IHRoZSBJMkMgYnVz
LCB3aGljaCB0aGVuIGVudW1lcmF0ZXMgaXRzCj4gPiA+IHN1Yi1kZXZpY2VzLgo+ID4gPiBJIHRo
b3VnaHQgdGhpcyB3YXMgb25lIG9mIHRoZSB1c2UgY2FzZXMgZm9yIE1GRC4gKFJlZ2FyZGxlc3Mg
b2YgaG93IGEKPiA+ID4gc3ViLWRldmljZSBhY2Nlc3MgaXRzIHJlZ2lzdGVycykuIFNvIGV2ZW4g
aW4gdGhlICJzaW1wbGUtcmVnbWFwIgo+ID4gPiBjYXNlIHRoaXMKPiA+ID4gd291bGQgbmVlZCB0
byBiZSBhbiBpMmMgZGV2aWNlLgo+IAo+IEhlcmUgKHNlZSBiZWxvdykKClllcywgaXQgc2hvdWxk
IHN0aWxsIGJlIGFuIEkyQyBkZXZpY2UuCgo+ID4gPiAKPiA+ID4gRS5nLgo+ID4gPiAKPiA+ID4g
JmkyY2J1cyB7Cj4gPiA+ICAgbWZkLWRldmljZUAxMCB7Cj4gPiA+ICAgICBjb21wYXRpYmxlID0g
InNpbXBsZS1yZWdtYXAiLCAic2ltcGxlLW1mZCI7Cj4gPiA+ICAgICByZWcgPSA8MTA+Owo+ID4g
PiAgICAgcmVnbWFwLHJlZy1iaXRzID0gPDg+Owo+ID4gPiAgICAgcmVnbWFwLHZhbC1iaXRzID0g
PDg+Owo+ID4gPiAgICAgc3ViLWRldmljZUAwIHsKPiA+ID4gICAgICAgY29tcGF0aWJsZSA9ICJ2
ZW5kb3Isc3ViLWRldmljZTAiOwo+ID4gPiAgICAgICByZWcgPSA8MD47Cj4gPiA+ICAgICB9Owo+
ID4gPiAgICAgLi4uCj4gPiA+IH07Cj4gPiA+IAo+ID4gPiBPciBpZiB5b3UganVzdCB3YW50IHRo
ZSByZWdtYXA6Cj4gPiA+IAo+ID4gPiAmc29jIHsKPiA+ID4gICByZWdtYXA6IHJlZ21hcEBmZmYw
MDAwIHsKPiA+ID4gICAgIGNvbXBhdGlibGUgPSAic2ltcGxlLXJlZ21hcCI7Cj4gPiA+ICAgICBy
ZWcgPSA8MHhmZmYwMDAwPjsKPiA+ID4gICAgIHJlZ21hcCxyZWctYml0cyA9IDwxNj47Cj4gPiA+
ICAgICByZWdtYXAsdmFsLWJpdHMgPSA8MzI+Owo+ID4gPiAgIH07Cj4gPiA+IAo+ID4gPiAgIGVu
ZXQtd2hpY2gtbmVlZHMtc3lzY29uLXRvb0AxMDAwMDAwIHsKPiA+ID4gICAgIHZlbmRvcixjdHJs
LXJlZ21hcCA9IDwmcmVnbWFwPjsKPiA+ID4gICB9Owo+ID4gPiB9Owo+ID4gPiAKPiA+ID4gU2lt
aWxhciB0byB0aGUgY3VycmVudCBzeXNjb24gKHdoaWNoIGlzIE1NSU8gb25seS4uKS4KPiA+IAo+
ID4gV2UgZG8gbm90IG5lZWQgYSAnc2ltcGxlLXJlZ21hcCcgc29sdXRpb24gZm9yIHlvdXIgdXNl
LWNhc2UuCj4gPiAKPiA+IFNpbmNlIHlvdXIgZGV2aWNlJ3MgcmVnaXN0ZXJzIGFyZSBzZWdyZWdh
dGVkLCBqdXN0IHNwbGl0IHVwIHRoZQo+ID4gcmVnaXN0ZXIgbWFwIGFuZCBhbGxvY2F0ZSBlYWNo
IHN1Yi1kZXZpY2Ugd2l0aCBpdCdzIG93biBzbGljZS4KPiAKPiBJIGRvbid0IGdldCBpdCwgY291
bGQgeW91IG1ha2UgYSBkZXZpY2UgdHJlZSBleGFtcGxlIGZvciBteQo+IHVzZS1jYXNlPyAoc2Vl
IGFsc28gYWJvdmUpCgogICAgJmkyY2J1cyB7CiAgICAgICAgbWZkLWRldmljZUAxMCB7CiAgICAg
ICAgICAgIGNvbXBhdGlibGUgPSAic2ltcGxlLW1mZCI7CiAgICAgICAgICAgIHJlZyA9IDwxMD47
CgogICAgICAgICAgICBzdWItZGV2aWNlQDEwIHsKICAgICAgICAgICAgICAgIGNvbXBhdGlibGUg
PSAidmVuZG9yLHN1Yi1kZXZpY2UiOwogICAgICAgICAgICAgICAgcmVnID0gPDEwPjsKICAgICAg
ICAgICAgfTsKICAgfTsKClRoZSBSZWdtYXAgY29uZmlnIHdvdWxkIGJlIHByZXNlbnQgaW4gZWFj
aCBvZiB0aGUgY2hpbGQgZGV2aWNlcy4KCkVhY2ggY2hpbGQgZGV2aWNlIHdvdWxkIGNhbGwgZGV2
bV9yZWdtYXBfaW5pdF9pMmMoKSBpbiAucHJvYmUoKS4KCj4gPiA+ID4gSSBjYW4ndCB0aGluayBv
ZiBhbnkgcmVhc29ucyB3aHkgbm90LCBvZmYgdGhlIHRvcCBvZiBteSBoZWFkLgo+ID4gPiA+Cj4g
PiA+ID4gRG9lcyBSZWdtYXAgb25seSBkZWFsIHdpdGggc2hhcmVkIGFjY2Vzc2VzIGZyb20gbXVs
dGlwbGUgZGV2aWNlcwo+ID4gPiA+IGFjY2Vzc2luZyBhIHNpbmdsZSByZWdpc3RlciBtYXAsIG9y
IGNhbiBpdCBhbHNvIGhhbmRsZSBtdWx0aXBsZQo+ID4gPiA+IGRldmljZXMgY29tbXVuaWNhdGlu
ZyBvdmVyIGEgc2luZ2xlIEkyQyBjaGFubmVsPwo+ID4gPiA+Cj4gPiA+ID4gT25lIGZvciBNYXJr
IHBlcmhhcHMuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dClNlbmlvciBUZWNobmljYWwgTGVh
ZCAtIERldmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2Fy
ZSBmb3IgQXJtIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
