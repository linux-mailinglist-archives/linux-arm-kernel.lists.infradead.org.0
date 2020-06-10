Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D671F5B36
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 20:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2l/c7l+qdPhbg4cgdyf1eNTtNL9bo0uJgvzAetSE760=; b=A/JQb27gDbUeDD
	jbGxvkf91ghKj9ae2Udvb2rSDDcsgHmR1cJlorByOTmYfXIo49WEbp4X3XdtNH3HadlNpnk9HbJJ3
	JK9+cu+NpMSYgVLmsD/7y25VvFls0pmPalNL3iMI0TSl2YBsyYgTqQRD7gEO2Snni78msSc19fwO5
	0T1SPCSif5mXV0dk+FGrInFOf7v/eI+aRAdrTeBGjgE0PoQVo3cEKKtM6RUFjYxNcdKnAisB0rMsJ
	yz1vN7nbMO9E25dJxVoBdfaOBvsEDUY4X94v22ntviDbHV2S8UiUa5rl2PYO8UrJp7tZMT/K56eXG
	7cOLVk74CrYLVGsHDzog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj5VG-0004WD-UO; Wed, 10 Jun 2020 18:31:10 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj5V4-0004US-E0
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 18:31:00 +0000
Received: by mail-wr1-x443.google.com with SMTP id t18so3422140wru.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 11:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=/+J5oO5OnfDiIOVOhIHmtbQvypR4NOyguvZ+vS+VBRA=;
 b=DV34bec3kn8ups3mo1KcqY/YeluhEBHJfMnEoE9K8u+na1nJ1DGGsyc4jU+glucolT
 TUviM5dxviwZLPuM0g8+vQXe6cH2pxFxUWwU93dsLznmfLILTgw0LIRBUGyUiEr5eR3C
 YVHYT4otqvUKNG5g6IBlf3xE5gnzBzFj8GQusuekh3De1azhWfnqZ9zrNkArwxjoeSDN
 OrOIMECTmg9RCEjAQB7ALp90Ij1RGNwkk5LC/8K25KqHj43cQrS4VRgqmzzK2AP4yrmE
 cR6KgKL7WPcVlg8QndhCyIa1+G17DLQVODULBk72RsyfmyYYRSqETFm9e19h9C2G/EmO
 VhdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=/+J5oO5OnfDiIOVOhIHmtbQvypR4NOyguvZ+vS+VBRA=;
 b=QvJlWnqoAm8KbfkWV+ZclLLu2YLupS4/aZJAZZXFHWjc2SpG8aDYBKyFaDcMEfT+36
 9DUGJmH4UQyeu5/YZqU3gE/gPoHg/NTK6D0SKtnj/1/mU+W8y350ZA7q2IrwDTu+3ToL
 m4eEMkTN9eynTHal9hho1j/ucgn5QEL7NMI6nIIDXCjiAdTvYZ5ueNGF+YT13Ke4yk8o
 GS6RCPGdbb0p60ZtH3WXCBbNwzrIsdxv/8367Bv8Fat2CiprVe9e+CiV0ozQVIkTxoB7
 WREbGeTwOd5dzMqOWMrZk73UR6oPp9qHxwPXhTBv096QNzsWFe8X3Uch8VtU4XW6qixm
 1gDQ==
X-Gm-Message-State: AOAM5300GNLvVAtjFzRzw/XR4gj+xGnSjmxmmBgG0bfCJVVufJL1pe9r
 HKCDwh3+QBHEFK7Ayd7Qx3DSVA==
X-Google-Smtp-Source: ABdhPJz6Ni2JYhcqjCdFdfUuYTBOEDs7I3nA8SyUMwPOtX+kOnBTbqU0Si/knyTH6nG0/LiIF9R1rQ==
X-Received: by 2002:adf:c98a:: with SMTP id f10mr5095428wrh.329.1591813856649; 
 Wed, 10 Jun 2020 11:30:56 -0700 (PDT)
Received: from dell ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id a15sm878966wra.86.2020.06.10.11.30.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 11:30:55 -0700 (PDT)
Date: Wed, 10 Jun 2020 19:30:53 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200610183053.GV4106@dell>
References: <20200609064735.GH4106@dell>
 <32287ac0488f7cbd5a7d1259c284e554@walle.cc>
 <20200609151941.GM4106@dell>
 <95e6ec9bbdf6af7a9ff9c31786f743f2@walle.cc>
 <20200609194505.GQ4106@dell>
 <3a6931248f0efcaf8efbb5425a9bd833@walle.cc>
 <20200610071940.GS4106@dell>
 <f7b2b690750edd022000ab56d2f58154@walle.cc>
 <20200610075615.GT4106@dell>
 <b06a79c845e0ab251235d30f7dc94dd5@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b06a79c845e0ab251235d30f7dc94dd5@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_113058_487560_B3E68DB5 
X-CRM114-Status: GOOD (  31.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

T24gV2VkLCAxMCBKdW4gMjAyMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKCj4gQW0gMjAyMC0wNi0x
MCAwOTo1Niwgc2NocmllYiBMZWUgSm9uZXM6Cj4gPiBPbiBXZWQsIDEwIEp1biAyMDIwLCBNaWNo
YWVsIFdhbGxlIHdyb3RlOgo+ID4gCj4gPiA+IEFtIDIwMjAtMDYtMTAgMDk6MTksIHNjaHJpZWIg
TGVlIEpvbmVzOgo+ID4gPiA+IE9uIFdlZCwgMTAgSnVuIDIwMjAsIE1pY2hhZWwgV2FsbGUgd3Jv
dGU6Cj4gPiA+ID4gPiBBbSAyMDIwLTA2LTA5IDIxOjQ1LCBzY2hyaWViIExlZSBKb25lczoKPiA+
ID4gPiA+ID4gT24gVHVlLCAwOSBKdW4gMjAyMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKPiA+ID4g
PiA+ID4gPiA+IFdlIGRvIG5vdCBuZWVkIGEgJ3NpbXBsZS1yZWdtYXAnIHNvbHV0aW9uIGZvciB5
b3VyIHVzZS1jYXNlLgo+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+IFNpbmNlIHlvdXIg
ZGV2aWNlJ3MgcmVnaXN0ZXJzIGFyZSBzZWdyZWdhdGVkLCBqdXN0IHNwbGl0IHVwIHRoZQo+ID4g
PiA+ID4gPiA+ID4gcmVnaXN0ZXIgbWFwIGFuZCBhbGxvY2F0ZSBlYWNoIHN1Yi1kZXZpY2Ugd2l0
aCBpdCdzIG93biBzbGljZS4KPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IEkgZG9uJ3QgZ2V0
IGl0LCBjb3VsZCB5b3UgbWFrZSBhIGRldmljZSB0cmVlIGV4YW1wbGUgZm9yIG15Cj4gPiA+ID4g
PiA+ID4gdXNlLWNhc2U/IChzZWUgYWxzbyBhYm92ZSkKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4g
ICAgICZpMmNidXMgewo+ID4gPiA+ID4gPiAgICAgICAgIG1mZC1kZXZpY2VAMTAgewo+ID4gPiA+
ID4gPiAgICAgICAgICAgICBjb21wYXRpYmxlID0gInNpbXBsZS1tZmQiOwo+ID4gPiA+ID4gPiAg
ICAgICAgICAgICByZWcgPSA8MTA+Owo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiAgICAgICAgICAg
ICBzdWItZGV2aWNlQDEwIHsKPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgIGNvbXBhdGlibGUg
PSAidmVuZG9yLHN1Yi1kZXZpY2UiOwo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgcmVnID0g
PDEwPjsKPiA+ID4gPiA+ID4gICAgICAgICAgICAgfTsKPiA+ID4gPiA+ID4gICAgfTsKPiA+ID4g
PiA+ID4KPiA+ID4gPiA+ID4gVGhlIFJlZ21hcCBjb25maWcgd291bGQgYmUgcHJlc2VudCBpbiBl
YWNoIG9mIHRoZSBjaGlsZCBkZXZpY2VzLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBFYWNoIGNo
aWxkIGRldmljZSB3b3VsZCBjYWxsIGRldm1fcmVnbWFwX2luaXRfaTJjKCkgaW4gLnByb2JlKCku
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gQWgsIEkgc2VlLiBJZiBJJ20gbm90IHdyb25nLCB0aGlzIHN0
aWxsIG1lYW5zIHRvIGNyZWF0ZSBhbiBpMmMKPiA+ID4gPiA+IGRldmljZSBkcml2ZXIgd2l0aCB0
aGUgbmFtZSAic2ltcGxlLW1mZCIuCj4gPiA+ID4KPiA+ID4gPiBZZXMsIGl0IGRvZXMuCj4gPiA+
ID4KPiA+ID4gPiA+IEJlc2lkZXMgdGhhdCwgSSBkb24ndCBsaWtlIHRoaXMsIGJlY2F1c2U6Cj4g
PiA+ID4gPiAgLSBSb2IgYWxyZWFkeSBleHByZXNzZWQgaXRzIGNvbmNlcm5zIHdpdGggInNpbXBs
ZS1tZmQiIGFuZCBzbyBvbi4KPiA+ID4gPgo+ID4gPiA+IFdoZXJlIGRpZCB0aGlzIHRha2UgcGxh
Y2U/ICBJJ2QgbGlrZSB0byByZWFkIHVwIG9uIHRoaXMuCj4gPiA+IAo+ID4gPiBJbiB0aGlzIHRo
cmVhZDoKPiA+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtZGV2aWNldHJlZS8yMDIw
MDYwNDIxMTAzOS4xMjY4OS0xLW1pY2hhZWxAd2FsbGUuY2MvVC8jbTE2ZmRiYTU5NjIwNjllN2Nk
NGFhODE3NTgyZWUzNThjOWZlMmVjYmYKPiA+ID4gCj4gPiA+ID4KPiA+ID4gPiA+ICAtIHlvdSBu
ZWVkIHRvIGR1cGxpY2F0ZSB0aGUgY29uZmlnIGluIGVhY2ggc3ViIGRldmljZQo+ID4gPiA+Cj4g
PiA+ID4gWW91IGNhbiBoYXZlIGEgc2hhcmUgYSBzaW5nbGUgY29uZmlnLgo+ID4gPiA+Cj4gPiA+
ID4gPiAgLSB3aGljaCBhbHNvIG1lYW5zIHlvdSBhcmUgcmVzdHJpY3RpbmcgdGhlIHN1YiBkZXZp
Y2VzIHRvIGJlCj4gPiA+ID4gPiAgICBpMmMgb25seSAodW5sZXNzIHlvdSBpbXBsZW1lbnQgYW5k
IGR1cGxpY2F0ZSBvdGhlciByZWdtYXAgY29uZmlncywKPiA+ID4gPiA+ICAgIHRvbykuIEZvciB0
aGlzIGRyaXZlciwgU1BJIGFuZCBNTUlPIG1heSBiZSB2aWFibGUgb3B0aW9ucy4KPiA+ID4gPgo+
ID4gPiA+IFlvdSBjb3VsZCBhbHNvIGhhdmUgYSBzaGFyZWQgaW1wbGVtZW50YXRpb24gdG8gY2hv
b3NlIGJldHdlZW4gZGlmZmVyZW50Cj4gPiA+ID4gYnVzc2VzLgo+ID4gPiAKPiA+ID4gVGhlbiB3
aGF0IGlzIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gdG8gaGF2ZSB0aGlzIHNoYXJlZCBjb25maWcg
aW4gdGhlCj4gPiA+IHBhcmVudCBkcml2ZXIgb25seSBhbmQgdXNlIHRoZSBmdW5jdGlvbnMgd2hp
Y2ggYXJlIGFscmVhZHkgdGhlcmUsIGkuZS4KPiA+ID4gZGV2X2dldF9yZWdtYXAocGFyZW50KS4g
QnV0IHNlZSwgYmVsb3csIEknbGwgd2FpdCB3aXRoIHdoYXQgeW91J3JlCj4gPiA+IGNvbWluZyB1
cC4KPiA+IAo+ID4gVGhlIGRpZmZlcmVuY2UgaXMgdGhlIG9taXNzaW9uIG9mIGFuIG90aGVyd2lz
ZSBwb2ludGxlc3Mvc3VwZXJmbHVvdXMKPiA+IGRyaXZlci4gIEFjdHVhbGx5LCBpdCdzIHRoZSBk
aWZmZXJlbmNlIGJldHdlZW4gdGhlIG9taXNzaW9uIG9mIDEwCj4gPiBwb2ludGxlc3MgZHJpdmVy
cyEKPiAKPiBJZiB5b3Ugd2FudCB0byBvbWl0IGFueXRoaW5nIGdlbmVyaWMgaW4gdGhlIGRldmlj
ZSB0cmVlIC0gYW5kIGFzIGZhciBhcwo+IEkgdW5kZXJzdGFuZCBpdCAtIHRoYXQgc2hvdWxkIGJl
IHRoZSB3YXkgdG8gZ28sIHRoZSBzcGVjaWZpYyBjb21wYXRpYmxlCj4gc3RyaW5nIG9mIHRoZSBw
YXJlbnQgZGV2aWNlIGhhcyB0byBnbyBzb21ld2hlcmUuIFRodXMgSSdkIGFwcHJlY2lhdGUKPiBh
IGNvbnNvbGlkYXRlZCAoTUZEKSBkcml2ZXIgd2hpY2ggaG9sZHMgYWxsIHRoZXNlLCBhcyB5b3Ug
c2F5IGl0Cj4gcG9pbnRsZXNzIGRyaXZlcnMuCj4gQmVjYXVzZSBJTUhPIHRoZXkgYXJlIG5vdCBw
b2ludGxlc3MsIHJhdGhlciB0aGV5IGFyZQo+IHRoZSBhY3R1YWwgZHJpdmVycyBmb3IgdGhlIE1G
RC4gSXRzIHN1YiBub2RlcyBhcmUganVzdCBhbiBpbXBsZW1lbnRhdGlvbgo+IGRldGFpbCB0byBi
ZSBhYmxlIHRvIHVzZSB0aGUgT0YgYmluZGluZ3MKPiAobGlrZSB5b3VyIGNsb2NrIGV4YW1wbGUg
b3IKPiBhIHBoYW5kbGUgdG8gYSBQV00gY29udHJvbGxlcikuIEp1c3QgYmVjYXVzZSBpdCBpcyBh
bG1vc3Qgbm90aGluZyB0aGVyZQo+IGV4Y2VwdCB0aGUgcmVnbWFwIGluc3RhbnRpYXRpb24gZG9l
c24ndCBtZWFuIGl0IGlzIG5vdCBhIHZhbGlkIE1GRCBkcml2ZXIuCgpBIHZhbGlkIE1GRCBkcml2
ZXIgaXMgd2hhdGV2ZXIgd2UgKHRoZSBMaW51eCBjb21tdW5pdHkgYXQgbGFyZ2UpCmRlZmluZSBp
dCB0byBiZS4gIEFuIE1GRCBpcyBub3QgYSByZWFsIHRoaW5nLiAgV2UgbWFkZSBpdCB1cC4gIEl0
J3MKTUZEIHdoaWNoIGlzIHRoZSBpbXBsZW1lbnRhdGlvbiBkZXRhaWwsIG5vdCB0aGUgY2hpbGQg
ZGV2aWNlcy4gIElmIGEKZHJpdmVyIGEpIGRvZXMgdmVyeSBsaXR0bGUsIGFuZCBiKSB0aGUgdmVy
eSBsaXR0bGUgaXQgZG9lcyBkbyBjYW4gYmUKcmVzb2x2ZWQgaW4gYSBkaWZmZXJlbnQgd2F5LCBp
cyBub3QgYSB2YWxpZCBkcml2ZXIuICBJdCdzIGEgd2FzdGUgb2YKZGlzayBzcGFjZS4KCj4gQW5k
IHRoZXJlIGlzIGFsc28gYWRkaXRpb25hbCBzdHVmZiwgbGlrZSBjbG9jayBlbmFibGUsIHZlcnNp
b24gY2hlY2tzLCBldGMuCgpBcyBtb3JlIGZ1bmN0aW9uYWxpdHkgaXMgYWRkZWQgKnRoZW4qIHdl
IGNhbiBqdXN0aWZ5IGEgZHJpdmVyLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3Ig
VGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBz
b3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdp
dHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
