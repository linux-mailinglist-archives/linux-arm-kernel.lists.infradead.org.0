Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 387701F59DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 19:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lJrsroFv4SZo5e8LO6WTMZukGwvZHsCy9KkcJwMeOtk=; b=oGRJg7701PFwSQ
	+h5J+YNPcTCWPacv0kVfhZPaBJ4hCmyo/J2rY+n+rR+acjO71qsLZGgeOE64RTMdWWLoQoJTHIfE8
	8uEqQCWO57ipXgmAc6F9QjER4JFB5cqFmFwF7W3Wo6p6fmPETT6Jc76XosTZz+rYhDTptJlT7bp4e
	G015W0amFVYmjgAUSYjccwLkbJy1c2glkLf5BXVOpcdiP5gJ4vZyGeIrZlCOCqdkBt9tk4IJPA1l5
	5t1lRw/Hq7/JNb3OiZoECJazDPZ4d6gnAcln1lXnOsdwZRUGZ0sjEsBnWK8bJ2N1DXvzHa2UrjtYQ
	WrnRoQnxd4XRScwg8ytw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4L3-0005Xf-0J; Wed, 10 Jun 2020 17:16:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4Ku-0005XG-Bn
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 17:16:25 +0000
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 51FD1207F9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 17:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591809382;
 bh=VuG8GFAPexrsYOA4UE1dLrNk0LWRoaPJInTcHfEdbfo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cS9uw1oEysLZyc2hML43CnVBubSlpUYbM9CTxkk9RoQ715TYm/u3Dy8vLeX92YFTE
 IkcqPBTQ3Rx3T8JW4U0T7zi6X4B3yrCgYsmJg7KPfCl1HecKq6oGj5DwWASrzgOSPn
 lQWCOT18fF9z+do35e5vBc/EmNwC2ti6NMhrdwec=
Received: by mail-oi1-f171.google.com with SMTP id d67so2759541oig.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 10:16:22 -0700 (PDT)
X-Gm-Message-State: AOAM533drrVTKC9nb97yW6xhXHvHDmAMzUiF41/UVcwX6/JqI0D6U/XE
 DrvivVN/FnhrrqiwsuLjWtucrTrMLJnsIFHrXg==
X-Google-Smtp-Source: ABdhPJwHOABuR6AQwMm2KvAS7N8eot1RgRxtzsddB3/K6M8xY7inxghhge+De2OMnh1FR1Xql5mlTOlR1gqOEN6sorU=
X-Received: by 2002:aca:d943:: with SMTP id q64mr3389865oig.147.1591809381607; 
 Wed, 10 Jun 2020 10:16:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAHp75VdiH=J-ovCdh1RFJDW_bJM8=pbXRaHmB691GLb-5oBmYQ@mail.gmail.com>
 <7d7feb374cbf5a587dc1ce65fc3ad672@walle.cc> <20200608185651.GD4106@dell>
 <32231f26f7028d62aeda8fdb3364faf1@walle.cc> <20200609064735.GH4106@dell>
 <32287ac0488f7cbd5a7d1259c284e554@walle.cc> <20200609151941.GM4106@dell>
 <95e6ec9bbdf6af7a9ff9c31786f743f2@walle.cc> <20200609194505.GQ4106@dell>
 <3a6931248f0efcaf8efbb5425a9bd833@walle.cc> <20200610071940.GS4106@dell>
In-Reply-To: <20200610071940.GS4106@dell>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 10 Jun 2020 11:16:10 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKr1aDVzgAMjwwK8E8O_f29vSrx1HXk81FF+rd3sEe==w@mail.gmail.com>
Message-ID: <CAL_JsqKr1aDVzgAMjwwK8E8O_f29vSrx1HXk81FF+rd3sEe==w@mail.gmail.com>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld management
 controller
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_101624_443174_7A444E3B 
X-CRM114-Status: GOOD (  28.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Linux PWM List <linux-pwm@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 david.m.ertman@intel.com, Guenter Roeck <linux@roeck-us.net>,
 devicetree <devicetree@vger.kernel.org>, Jean Delvare <jdelvare@suse.com>,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, shiraz.saleem@intel.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Linux HWMON List <linux-hwmon@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMTAsIDIwMjAgYXQgMToxOSBBTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IE9uIFdlZCwgMTAgSnVuIDIwMjAsIE1pY2hhZWwgV2FsbGUgd3Jv
dGU6Cj4gPiBBbSAyMDIwLTA2LTA5IDIxOjQ1LCBzY2hyaWViIExlZSBKb25lczoKPiA+ID4gT24g
VHVlLCAwOSBKdW4gMjAyMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKPiA+ID4gPiA+IFdlIGRvIG5v
dCBuZWVkIGEgJ3NpbXBsZS1yZWdtYXAnIHNvbHV0aW9uIGZvciB5b3VyIHVzZS1jYXNlLgo+ID4g
PiA+ID4KPiA+ID4gPiA+IFNpbmNlIHlvdXIgZGV2aWNlJ3MgcmVnaXN0ZXJzIGFyZSBzZWdyZWdh
dGVkLCBqdXN0IHNwbGl0IHVwIHRoZQo+ID4gPiA+ID4gcmVnaXN0ZXIgbWFwIGFuZCBhbGxvY2F0
ZSBlYWNoIHN1Yi1kZXZpY2Ugd2l0aCBpdCdzIG93biBzbGljZS4KPiA+ID4gPgo+ID4gPiA+IEkg
ZG9uJ3QgZ2V0IGl0LCBjb3VsZCB5b3UgbWFrZSBhIGRldmljZSB0cmVlIGV4YW1wbGUgZm9yIG15
Cj4gPiA+ID4gdXNlLWNhc2U/IChzZWUgYWxzbyBhYm92ZSkKPiA+ID4KPiA+ID4gICAgICZpMmNi
dXMgewo+ID4gPiAgICAgICAgIG1mZC1kZXZpY2VAMTAgewo+ID4gPiAgICAgICAgICAgICBjb21w
YXRpYmxlID0gInNpbXBsZS1tZmQiOwo+ID4gPiAgICAgICAgICAgICByZWcgPSA8MTA+Owo+ID4g
Pgo+ID4gPiAgICAgICAgICAgICBzdWItZGV2aWNlQDEwIHsKPiA+ID4gICAgICAgICAgICAgICAg
IGNvbXBhdGlibGUgPSAidmVuZG9yLHN1Yi1kZXZpY2UiOwo+ID4gPiAgICAgICAgICAgICAgICAg
cmVnID0gPDEwPjsKPiA+ID4gICAgICAgICAgICAgfTsKPiA+ID4gICAgfTsKPiA+ID4KPiA+ID4g
VGhlIFJlZ21hcCBjb25maWcgd291bGQgYmUgcHJlc2VudCBpbiBlYWNoIG9mIHRoZSBjaGlsZCBk
ZXZpY2VzLgo+ID4gPgo+ID4gPiBFYWNoIGNoaWxkIGRldmljZSB3b3VsZCBjYWxsIGRldm1fcmVn
bWFwX2luaXRfaTJjKCkgaW4gLnByb2JlKCkuCj4gPgo+ID4gQWgsIEkgc2VlLiBJZiBJJ20gbm90
IHdyb25nLCB0aGlzIHN0aWxsIG1lYW5zIHRvIGNyZWF0ZSBhbiBpMmMKPiA+IGRldmljZSBkcml2
ZXIgd2l0aCB0aGUgbmFtZSAic2ltcGxlLW1mZCIuCj4KPiBZZXMsIGl0IGRvZXMuCgpUQkMsIHdo
aWxlIGZpbmUgZm9yIGEgZHJpdmVyIHRvIGJpbmQgb24gJ3NpbXBsZS1tZmQnLCBhIERUIGNvbXBh
dGlibGUKd2l0aCB0aGF0IGFsb25lIGlzIG5vdCBmaW5lLgoKPiA+IEJlc2lkZXMgdGhhdCwgSSBk
b24ndCBsaWtlIHRoaXMsIGJlY2F1c2U6Cj4gPiAgLSBSb2IgYWxyZWFkeSBleHByZXNzZWQgaXRz
IGNvbmNlcm5zIHdpdGggInNpbXBsZS1tZmQiIGFuZCBzbyBvbi4KPgo+IFdoZXJlIGRpZCB0aGlz
IHRha2UgcGxhY2U/ICBJJ2QgbGlrZSB0byByZWFkIHVwIG9uIHRoaXMuCj4KPiA+ICAtIHlvdSBu
ZWVkIHRvIGR1cGxpY2F0ZSB0aGUgY29uZmlnIGluIGVhY2ggc3ViIGRldmljZQo+Cj4gWW91IGNh
biBoYXZlIGEgc2hhcmUgYSBzaW5nbGUgY29uZmlnLgo+Cj4gPiAgLSB3aGljaCBhbHNvIG1lYW5z
IHlvdSBhcmUgcmVzdHJpY3RpbmcgdGhlIHN1YiBkZXZpY2VzIHRvIGJlCj4gPiAgICBpMmMgb25s
eSAodW5sZXNzIHlvdSBpbXBsZW1lbnQgYW5kIGR1cGxpY2F0ZSBvdGhlciByZWdtYXAgY29uZmln
cywKPiA+ICAgIHRvbykuIEZvciB0aGlzIGRyaXZlciwgU1BJIGFuZCBNTUlPIG1heSBiZSB2aWFi
bGUgb3B0aW9ucy4KPgo+IFlvdSBjb3VsZCBhbHNvIGhhdmUgYSBzaGFyZWQgaW1wbGVtZW50YXRp
b24gdG8gY2hvb3NlIGJldHdlZW4gZGlmZmVyZW50Cj4gYnVzc2VzLgoKSSB0aGluayBpdCBpcyBy
ZWFsbHkgdGhlIHN5c2NvbiBtZmQgZHJpdmVyIHlvdSB3YW50IHRvIGdlbmVyYWxpemUgdG8Kb3Ro
ZXIgYnVzZXMuIFRob3VnaCB3aXRoIGEgcXVpY2sgbG9vayBhdCBpdCwgdGhlcmUncyBub3QgcmVh
bGx5IGEKd2hvbGUgbG90IHRvIHNoYXJlLiBUaGUgcmVnbWFwIGxvb2t1cCB3b3VsZCBiZSB0aGUg
bWFpbiB0aGluZy4gWW91IGFyZQpnb2luZyB0byBuZWVkIGEgZHJpdmVyIGluc3RhbmNlIGZvciBl
YWNoIGJ1cyB0eXBlLgoKPiA+IFRodXMsIEknZCByYXRoZXIgaW1wbGVtZW50IGEgc2ltcGxlLW1m
ZC5jIHdoaWNoIGltcGxlbWVudCBhIGNvbW1vbgo+ID4gSTJDIGRyaXZlciBmb3Igbm93IGFuZCBw
b3B1bGF0ZSBpdHMgY2hpbGRyZW4gdXNpbmcKPiA+IGRldm1fb2ZfcGxhdGZvcm1fcG9wdWxhdGUo
KS4gVGhpcyBjb3VsZCBiZSBleHRlbmRlZCB0byBzdXBwb3J0IG90aGVyCj4gPiB0eXBlIG9mIHJl
Z21hcHMgbGlrZSBTUEkgaW4gdGhlIGZ1dHVyZS4KPiA+Cj4gPiBBbHNvIHNvbWUgTUZEIGRyaXZl
cnMgY291bGQgYmUgbW92ZWQgdG8gdGhpcywgYSBsaWtlbHkgY2FuZGlkYXRlIGlzCj4gPiB0aGUg
c21zYy1lY2UxMDk5LmMuIEFsdGhvdWdoIEkgZG9uJ3QgcmVhbGx5IHVuZGVyc3RhbmQgaXRzIHB1
cnBvc2UsCj4gPiBpZiBkb24ndCBoYXZlIENPTkZJR19PRi4KPiA+Cj4gPiBKdWRnaW5nIGZyb20g
dGhlIGV4aXN0aW5nIGNvZGUsIHRoaXMgc2ltcGxlLW1mZC5jIHdvdWxkbid0IGp1c3QgYmUKPiA+
ICJhIGxpc3Qgb2YgY29tcGF0aWJsZSIgc3RyaW5ncyBidXQgYWxzbyBhZGRpdGlvbmFsIHF1aXJr
cyBhbmQgdHdlYWtzCj4gPiBmb3IgcGFydGljdWxhciBkZXZpY2VzIGluIHRoaXMgbGlzdC4KClll
cywgdGhpcyBpcyB3aHkgc3BlY2lmaWMgY29tcGF0aWJsZSBzdHJpbmdzIGFyZSByZXF1aXJlZC4K
Cj4gSG9sZCBvZmYgb24gdGhlIHNpbXBsZS1tZmQuYyBpZGVhLCBhcyBJJ20gbm90IHRha2VuIGJ5
IGl0IHlldCBhbmQKPiB3b3VsZG4ndCB3YW50IHlvdSB0byB3YXN0ZSB5b3VyIHRpbWUuICBJIGhh
dmUgYW5vdGhlciBpZGVhIHdoaWNoIHdvdWxkCj4gaGVscC4gIEdpdmUgbWUgYSBmZXcgZGF5cyB0
byBwdXQgc29tZXRoaW5nIHRvZ2V0aGVyLgo+Cj4gLS0KPiBMZWUgSm9uZXMgW+adjueQvOaWr10K
PiBTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKPiBMaW5hcm8ub3Jn
IOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQXJtIFNvQ3MKPiBGb2xsb3cgTGluYXJvOiBG
YWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
