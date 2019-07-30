Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A16E7A326
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 10:33:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KcbAtl4Mf2YFVC+fH+KZ1FNX1pRUxggAVEcL9XDPEFI=; b=CnOajcDS7UbqgL
	1D9f1N8tvemyxz4VDD7W/0PhdGoUTGeQusGlLr3d/fJwO+y3Mk0gASQoJBopmZ6QIikIHkkmOGbhM
	vEao9P5XZTfQjxgWQDQXV3RPAodLrbABmJi3XCs3W2n3A8wXvEMQeX7/yHQMzouXHGudsxTLhqmFL
	evrsEklIWSVPFssvACT0JTJEDLJWl7B9ZwcjwwEc8YOYYGGvmkuDoJnkzZ1XtiQIGNNbIyC+U9nwB
	6ilPAs4JOCjrWbXW7qLCpatCnDvamZAfzhIQhvsZAWwBFwDfqqaYWNfWYyjYlh73mFN2bRupeNKJm
	n+kDsTQJ9fOGQjh5yW+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsNZd-0004jr-LB; Tue, 30 Jul 2019 08:33:33 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsNZJ-0004j1-Ke
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 08:33:15 +0000
Received: by mail-ed1-f68.google.com with SMTP id w20so61772238edd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 01:33:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Q84VjJRDJ4OplkCoHhwYo8/gOcoNfhF91Mul/YA2O6A=;
 b=VREp5HzOxEXIcYKAu1hdxBBD8TUWGdggxoFOWPUnLmz6Jr8H6HcjaJkIo/m/WFMLYw
 Xa6JgulzwTbMDvH0piz2CRasbBYgrMurUhfbpOSUZbBB/HwBh8oLVffvRqdPPhZdgn2h
 CA6DaQn2u3jm3pwdIZdG1NRK0fzXoQe5z7QaNf2oHVhjcwSFTzGYoi4f0AQZ83GwziMC
 0fy3BrfUjy7iEiJRPpdfGcY3riAyW/kcSKUo9wd5cZz2cM0TtHnFFBu/ePesMsMMlVJQ
 /07O6lOA6lKPPi2soY3+f8629aq/jWm321+UKWA3aye+fMOLRgsrYFkOXlmntoQZ8UHY
 gWaA==
X-Gm-Message-State: APjAAAVInRH/rV5uY+ArzkjlbF044Ra9eD3ZzcMDtGmRds1ufHjBgAK5
 s6rVlJ49x6fe2gkRgXz7o586Y+ar9vc=
X-Google-Smtp-Source: APXvYqwzrNp9vYY3V3Z7rVrKkzvoL2CG9as61y2z7izvMP0iKN35ntToM0O5OAWFKSkYi60E9LyrzQ==
X-Received: by 2002:a05:6402:1556:: with SMTP id
 p22mr98365931edx.75.1564475589515; 
 Tue, 30 Jul 2019 01:33:09 -0700 (PDT)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com.
 [209.85.128.45])
 by smtp.gmail.com with ESMTPSA id s17sm11816697ejz.70.2019.07.30.01.33.07
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 01:33:08 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id 207so56268940wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 01:33:07 -0700 (PDT)
X-Received: by 2002:a7b:c051:: with SMTP id u17mr101736986wmc.25.1564475587103; 
 Tue, 30 Jul 2019 01:33:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <173825848.1FZsmuHfpq@jernej-laptop>
 <20190729185108.tpilwoooxvi2z72e@pengutronix.de>
 <2452836.v7ux4bnEjb@jernej-laptop>
 <20190730080900.hhxrqun7vk4nsj2h@pengutronix.de>
In-Reply-To: <20190730080900.hhxrqun7vk4nsj2h@pengutronix.de>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 30 Jul 2019 16:32:53 +0800
X-Gmail-Original-Message-ID: <CAGb2v65jFdFZGLti4_B=2QPbtrj1b8wh63R5G3NpY_ndpJoV5g@mail.gmail.com>
Message-ID: <CAGb2v65jFdFZGLti4_B=2QPbtrj1b8wh63R5G3NpY_ndpJoV5g@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH 4/6] pwm: sun4i: Add support for H6 PWM
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_013313_679247_3E86838D 
X-CRM114-Status: GOOD (  46.04  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgNDowOSBQTSBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IEhlbGxvIFJvYiBhbmQgRnJhbmss
Cj4KPiBNYXhpbWUgYW5kIEplcm5laiBvbiBvbmUgc2lkZSBhbmQgbWUgb24gdGhlIG90aGVyIGNh
bm5vdCBhZ3JlZSBhYm91dCBhCj4gZGV0YWlsIGluIHRoZSBjaGFuZ2UgdG8gdGhlIGJpbmRpbmdz
IGhlcmUuIEknbSB0cnlpbmcgdG8gb2JqZWN0aXZlbHkKPiBzdW1tYXJpemUgdGhlIHNpdHVhdGlv
biBmb3IgeW91IHRvIGhlbHAgZGVjaWRpbmcgd2hhdCBpcyB0aGUgcmlnaHQgdGhpbmcKPiB0byBk
byBoZXJlLgo+Cj4gVExEUjogVGhlIHN1bjRpIHB3bSBkcml2ZXIgaXMgZXh0ZW5kZWQgdG8gc3Vw
cG9ydCBhIG5ldyB2YXJpYW50IG9mIHRoYXQKPiBkZXZpY2Ugb24gdGhlIEg2IFNvQy4gQ29tcGFy
ZWQgdG8gdGhlIGVhcmxpZXIgc3VwcG9ydGVkIHZhcmlhbnRzCj4gYWxsd2lubmVyLHN1bjUwaS1o
Ni1wd20gb24gSDYgbmVlZHMgdG8gaGFuZGxlIGEgcmVzZXQgY29udHJvbGxlciBhbmQgYW4KPiBh
ZGRpdGlvbmFsIGNsb2NrLgo+Cj4gVGhlIHR3byBwb3NpdGlvbnMgYXJlOgo+Cj4gIC0gV2UgbmVl
ZCBhIG5ldyBjb21wYXRpYmxlIGJlY2F1c2Ugb25seSB0aGVuIHRoZSBkcml2ZXIgYW5kL29yIHRo
ZSBkdAo+ICAgIHNjaGVtYSBjaGVja2VyIGNhbiBjaGVjayB0aGF0IGVhY2ggImFsbHdpbm5lcixz
dW41MGktaDYtcHdtIiBkZXZpY2UKPiAgICBoYXMgYSByZXNldCBwcm9wZXJ0eSBhbmQgYSAiYnVz
IiBjbG9jazsgYW5kIHRoZSBlYXJsaWVyIHZhcmlhbnRzCj4gICAgZG9uJ3QuCj4KPiAgLSBUaGUg
ZHJpdmVyIGNhbiBiZSBzaW1wbGVyIGFuZCB0aGUgZGV2aWNlIHNwZWNpZmljIGtub3dsZWRnZSBp
cyBvbmx5Cj4gICAgaW4gYSBzaW5nbGUgcGxhY2UgKHRoZSBkdCkgaWYgdGhlIGRldmljZSB0cmVl
IGlzIGNvbnNpZGVyZWQgdmFsaWQgYW5kCj4gICAgYSByZXNldCBwcm9wZXJ0eSBhbmQgImJ1cyIg
Y2xvY2sgaXMgdXNlZCBpZmYgaXQncyBwcm92aWRlZCBpbiB0aGUKPiAgICBkZXZpY2UgdHJlZSB3
aXRob3V0IGFkZGl0aW9uYWwgY29tcGFyaXNvbiBmb3IgdGhlIGNvbXBhdGlibGUuCj4KPiBOb3cg
b3VyIGFyZ3VtZW50cyBzZWVtIHRvIGdvIGluIGNpcmNsZXMgYW5kIEplcm5laiB3YXMgaW50ZXJl
c3RlZCBpbgo+IHlvdXIgcG9zaXRpb24uIFRoYXQncyBzb21ldGhpbmcgSSBhZ3JlZSB3aXRoIDst
KSBDYW4geW91IHBsZWFzZSBzaGFyZQo+IHlvdXIgdmlldz8KPgo+IEZpbmQgYmVsb3cgc29tZSBj
b250ZXh0IGFib3V0IHRoZSBhcmd1bWVudHMuCgpBIGJpdCBtb3JlIGNvbnRleHQgb24gdGhlIGZh
aWx1cmUgbW9kZXM6CgpJZiB0aGUgcmVzZXQgY29udHJvbCBpcyBtaXNzaW5nLCBhbnl0aGluZyBk
b25lIHRvIGhhcmR3YXJlIHdpbGwgYmUKc2lsZW50bHkgaWdub3JlZCwgc2luY2UgYW55IHdyaXRl
cyB0byB0aGUgcmVnaXN0ZXJzIGFyZSBpZ25vcmVkLgoKT24gdGhlIG90aGVyIGhhbmQsIGlmIHRo
ZSBidXMgY2xvY2sgaXMgbWlzc2luZyBhbmQgb3RoZXJ3aXNlIG5vdCBlbmFibGVkLAphY2Nlc3Np
bmcgdGhlIGRldmljZSdzIHJlZ2lzdGVycyBjb3VsZCBhY3R1YWxseSBzdGFsbCB0aGUgd2hvbGUg
c3lzdGVtLgoKQ2hlbll1Cgo+IEJlc3QgcmVnYXJkcwo+IFV3ZQo+Cj4gT24gVHVlLCBKdWwgMzAs
IDIwMTkgYXQgMTI6MDQ6NDdBTSArMDIwMCwgSmVybmVqIMWga3JhYmVjIHdyb3RlOgo+ID4gRG5l
IHBvbmVkZWxqZWssIDI5LiBqdWxpaiAyMDE5IG9iIDIwOjUxOjA4IENFU1QgamUgVXdlIEtsZWlu
ZS1Lw7ZuaWcKPiA+IG5hcGlzYWwoYSk6Cj4gPiA+IE9uIE1vbiwgSnVsIDI5LCAyMDE5IGF0IDA4
OjQ2OjI1UE0gKzAyMDAsIEplcm5laiDFoGtyYWJlYyB3cm90ZToKPiA+ID4gPiBEbmUgcG9uZWRl
bGplaywgMjkuIGp1bGlqIDIwMTkgb2IgMjA6NDA6NDEgQ0VTVCBqZSBVd2UgS2xlaW5lLUvDtm5p
Zwo+ID4gPiA+IG5hcGlzYWwoYSk6Cj4gPiA+ID4gPiBPbiBNb24sIEp1bCAyOSwgMjAxOSBhdCAw
Njo0MDoxNVBNICswMjAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gPiA+ID4gPiA+IERuZSBw
b25lZGVsamVrLCAyOS4ganVsaWogMjAxOSBvYiAxODoyNDoyOCBDRVNUIGplIFV3ZSBLbGVpbmUt
S8O2bmlnCj4gPiA+ID4gPiA+IG5hcGlzYWwoYSk6Cj4gPiA+ID4gPiA+ID4gT24gVHVlLCBKdWwg
MzAsIDIwMTkgYXQgMTI6MDk6NDBBTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+ID4gPiA+
ID4gPiA+ID4gT24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMTI6MDcgQU0gVXdlIEtsZWluZS1Lw7Zu
aWcKPiA+ID4gPiA+ID4gPiA+IDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+IHdyb3Rl
Ogo+ID4gPiA+ID4gPiA+ID4gPiBPbiBNb24sIEp1bCAyOSwgMjAxOSBhdCAwNTo1NTo1MlBNICsw
MjAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gRG5lIHBvbmVk
ZWxqZWssIDI5LiBqdWxpaiAyMDE5IG9iIDA4OjQwOjMwIENFU1QgamUgVXdlIEtsZWluZS1Lw7Zu
aWcKPiA+ID4gPiA+ID4gPiA+ID4gPiBuYXBpc2FsKGEpOgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4g
T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDg6NDA6NDNQTSArMDIwMCwgSmVybmVqIFNrcmFiZWMg
d3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40
aS5jCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5j
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IEBAIC0zMzEsNiArMzMxLDEzIEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3Qgc3VuNGlfcHdtX2RhdGEKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gc3VuNGlfcHdt
X3NpbmdsZV9ieXBhc3MgPSB7Pgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gPiAgIC5ucHdtID0gMSwKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+
ID4gPiA+ID4gPiA+ID4gIH07Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4g
PiA+ID4gPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHN1bjRpX3B3bV9kYXRhCj4gPiA+ID4gPiA+
ID4gPiA+ID4gPiA+IHN1bjUwaV9wd21fZHVhbF9ieXBhc3NfY2xrX3JzdAo+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gPiA9IHsKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gKyAuaGFzX2J1c19jbG9jayA9
IHRydWUsCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ICsgLmhhc19wcmVzY2FsZXJfYnlwYXNzID0g
dHJ1ZSwKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gKyAuaGFzX3Jlc2V0ID0gdHJ1ZSwKPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gKyAubnB3bSA9IDIsCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ICt9
Owo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+ID4gPiA+ID4gPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBzdW40
aV9wd21fZHRfaWRzW10gPSB7Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4g
PiA+ID4gPiA+ICAgewo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gPiA+
ID4gPiAgICAgICAgICAgLmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjRpLWExMC1wd20iLAo+
ID4gPiA+ID4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBAQCAtMzQ3LDYg
KzM1NCw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkCj4gPiA+ID4gPiA+ID4g
PiA+ID4gPiA+IHN1bjRpX3B3bV9kdF9pZHNbXSA9Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IHsK
PiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gICB9LCB7Cj4g
PiA+ID4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAu
Y29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuOGktaDMtcHdtIiwKPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gICAgICAgICAgIC5kYXRhID0gJnN1bjRpX3B3bV9zaW5nbGVfYnlwYXNzLAo+ID4gPiA+
ID4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiArIH0sIHsKPiA+ID4gPiA+
ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgIC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGkt
aDYtcHdtIiwKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgIC5kYXRhID0gJnN1bjUw
aV9wd21fZHVhbF9ieXBhc3NfY2xrX3JzdCwKPiA+ID4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4g
PiA+ID4gPiA+ID4gPiBJZiB5b3UgZm9sbG93IG15IHN1Z2dlc3Rpb24gZm9yIHRoZSB0d28gcHJl
dmlvdXMgcGF0Y2hlcywKPgo+IChpLmUuIHVzZSBkZXZtX2Nsa19nZXRfb3B0aW9uYWwgaW5zdGVh
ZCBvZiB1c2luZyBkZXZtX2Nsa19nZXQgaWZmIHRoZQo+IGNvbXBhdGlibGUgaXMgYWxsd2lubmVy
LHN1bjUwaS1oNi1wd207IGFuYWxvZ291cyBmb3IgdGhlIHJlc2V0Cj4gY29udHJvbGxlci4pCj4K
PiA+ID4gPiA+ID4gPiA+ID4gPiA+IHlvdSBjYW4ganVzdCB1c2U6Cj4gPiA+ID4gPiA+ID4gPiA+
ID4gPgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gICAgIGNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1
bjUwaS1oNi1wd20iLCAiYWxsd2lubmVyLHN1bjVpLWExMHMtcHdtIjsKPiA+ID4gPiA+ID4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBhbmQgZHJvcCB0aGlzIHBhdGNoLgo+ID4gPiA+
ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+ID4gTWF4aW1lIGZvdW5kIG91dCB0aGF0IGl0
J3Mgbm90IGNvbXBhdGlibGUgd2l0aCBBMTBzIGR1ZSB0byBkaWZmZXJlbmNlCj4gPiA+ID4gPiA+
ID4gPiA+ID4gaW4gYnlwYXNzIGJpdCwgYnV0IHllcywgSSBrbm93IHdoYXQgeW91IG1lYW4uCj4g
PiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiBTaW5jZSBINiByZXF1aXJlcyBy
ZXNldCBsaW5lIGFuZCBidXMgY2xvY2sgdG8gYmUgc3BlY2lmaWVkLCBpdCdzIG5vdAo+ID4gPiA+
ID4gPiA+ID4gPiA+IGNvbXBhdGlibGUgZnJvbSBEVCBiaW5kaW5nIHNpZGUuIE5ldyB5YW1sIGJh
c2VkIGJpbmRpbmcgbXVzdCBzb21laG93Cj4gPiA+ID4gPiA+ID4gPiA+ID4ga25vdyB0aGF0IGlu
IG9yZGVyIHRvIGJlIGFibGUgdG8gdmFsaWRhdGUgRFQgbm9kZSwgc28gaXQgbmVlZHMKPiA+ID4g
PiA+ID4gPiA+ID4gPiBzdGFuZGFsb25lIGNvbXBhdGlibGUuIEhvd2V2ZXIsIGRlcGVuZGluZyBv
biBjb25jbHVzaW9ucyBvZiBvdGhlcgo+ID4gPiA+ID4gPiA+ID4gPiA+IGRpc2N1c3Npb25zLCB0
aGlzIG5ldyBjb21wYXRpYmxlIGNhbiBiZSBhc3NvY2lhdGVkIHdpdGggYWxyZWFkeQo+ID4gPiA+
ID4gPiA+ID4gPiA+IGF2YWlsYWJsZSBxdWlya3Mgc3RydWN0dXJlIG9yIGhhdmUgaXQncyBvd24u
Cj4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+IEkgY2Fubm90IGZvbGxvdy4gWW91
IHNob3VsZCBiZSBhYmxlIHRvIHNwZWNpZnkgaW4gdGhlIGJpbmRpbmcgdGhhdCB0aGUKPiA+ID4g
PiA+ID4gPiA+ID4gcmVzZXQgbGluZSBhbmQgYnVzIGNsb2NrIGlzIG9wdGlvbmFsLiBUaGVuIGFs
bHdpbm5lcixzdW41MGktaDYtcHdtCj4gPiA+ID4gPiA+ID4gPiA+IHdpdGhvdXQgYSByZXNldCBs
aW5lIGFuZCBidXMgY2xvY2sgYWxzbyB2ZXJpZmllcywgYnV0IHRoaXMgZG9lc24ndAo+ID4gPiA+
ID4gPiA+ID4gPiByZWFsbHkgaHVydCAoYW5kIHdobyBrbm93cywgbWF5YmUgdGhlIG5leHQgYWxs
d2lubmVyIGNoaXAgbmVlZHMgZXhhY3RseSB0aGlzKS4KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4g
PiA+ID4gPiBJdCBpcyBub3Qgb3B0aW9uYWwuIEl0IHdpbGwgbm90IHdvcmsgaWYgZWl0aGVyIHRo
ZSBjbG9ja3Mgb3IgcmVzZXQgY29udHJvbHMKPiA+ID4gPiA+ID4gPiA+IGFyZSBtaXNzaW5nLiBI
b3cgd291bGQgdGhlc2UgYmUgb3B0aW9uYWwgYW55d2F5PyBFaXRoZXIgaXQncyBjb25uZWN0ZWQg
YW5kCj4gPiA+ID4gPiA+ID4gPiB0aHVzIHJlcXVpcmVkLCBvciBpdCdzIG5vdCBhbmQgdGhlcmVm
b3JlIHNob3VsZCBiZSBvbWl0dGVkIGZyb20gdGhlIGRlc2NyaXB0aW9uLgo+ID4gPiA+ID4gPiA+
Cj4gPiA+ID4gPiA+ID4gW0p1c3QgYXJndWluZyBhYm91dCB0aGUgY2xvY2sgaGVyZSwgdGhlIGFy
Z3VtZW50YXRpb24gaXMgYW5hbG9nb3VzIGZvcgo+ID4gPiA+ID4gPiA+IHRoZSByZXNldCBjb250
cm9sLl0KPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IEZyb20gdGhlIGRyaXZlcidzIHBlcnNw
ZWN0aXZlIGl0J3Mgb3B0aW9uYWw6IFRoZXJlIGFyZSBkZXZpY2VzIHdpdGggYW5kCj4gPiA+ID4g
PiA+ID4gd2l0aG91dCBhIGJ1cyBjbG9jay4gVGhpcyBkb2Vzbid0IG1lYW4gdGhhdCB5b3UgY2Fu
IGp1c3QgaWdub3JlIHRoaXMKPiA+ID4gPiA+ID4gPiBjbG9jayBpZiBpdCdzIHNwZWNpZmllZC4g
SXQncyBvcHRpb25hbCBpbiB0aGUgc2Vuc2UgIklmIGR0IGRvZXNuJ3QKPiA+ID4gPiA+ID4gPiBz
cGVjaWZ5IGl0LCB0aGVuIGFzc3VtZSB0aGlzIGlzIGEgZGV2aWNlIHRoYXQgZG9lc24ndCBoYXZl
IGl0IGFuZCBzbyB5b3UKPiA+ID4gPiA+ID4gPiBkb24ndCBuZWVkIHRvIGhhbmRsZSBpdC4iIGJ1
dCBub3QgaW4gdGhlIHNlbnNlICJpdCBkb2Vzbid0IG1hdHRlciBpZgo+ID4gPiA+ID4gPiA+IHlv
dSBoYW5kbGUgaXQgb3Igbm90LiIuCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBPdGhlciB0
aGFuIHRoYXQgSSdtIG9uIHlvdXIgc2lkZS4gU28gZm9yIGV4YW1wbGUgSSB0aGluayBpdCdzIG5v
dAo+ID4gPiA+ID4gPiA+IG9wdGltYWwgdGhhdCBncGlvZF9nZXRfb3B0aW9uYWwgcmV0dXJucyBO
VUxMIGlmIEdQSU9MSUI9biBvciB0aGF0Cj4gPiA+ID4gPiA+ID4gZGV2bV9yZXNldF9jb250cm9s
X2dldF9vcHRpb25hbCByZXR1cm5zIE5VTEwgaWYgUkVTRVRfQ09OVFJPTExFUj1uCj4gPiA+ID4g
PiA+ID4gYmVjYXVzZSB0aGlzIGhpZGVzIGV4YWN0bHkgdGhlIGtpbmQgb2YgcHJvYmxlbSB5b3Ug
cG9pbnQgb3V0IGhlcmUuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEkgdGhpbmsgdGhlcmUncyBt
aXN1bmRlcnN0YW5kaW5nLiBJIG9ubHkgYXJndWVkIHRoYXQgd2UgY2FuJ3QgdXNlCj4gPiA+ID4g
PiA+Cj4gPiA+ID4gPiA+IGNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1wd20iLCAi
YWxsd2lubmVyLHN1bjVpLWExMHMtcHdtIjsKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gYXMgeW91
IHN1Z2dlc3RlZCBhbmQgb25seQo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBjb21wYXRpYmxlID0g
ImFsbHdpbm5lcixzdW41MGktaDYtcHdtIjsKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gd2lsbCB3
b3JrLiBOb3QgYmVjYXVzZSBvZiBkcml2ZXIgaXRzZWxmIChpdCBjYW4gc3RpbGwgdXNlIF9vcHRp
b25hbCgpCj4gPiA+ID4gPiA+IHZhcmlhbnRzKSwgYnV0IGJlY2F1c2Ugb2YgRFQgYmluZGluZywg
d2hpY2ggc2hvdWxkIGJlIGFibGUgdG8gdmFsaWRhdGUgSDYKPiA+ID4gPiA+ID4gUFdNIG5vZGUg
LSByZXNldCBhbmQgYnVzIGNsb2NrIHJlZmVyZW5jZXMgYXJlIHJlcXVpcmVkIGluIHRoaXMgY2Fz
ZS4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJIHRoaW5rIEkgdW5kZXJzdG9vZC4gSW4gbXkgZXllcyB0
aGVyZSBpcyBubyBuZWVkIHRvIGxldCB2YWxpZGF0aW9uIG9mCj4gPiA+ID4gPiB0aGUgRFQgYmlu
ZGluZ3MgY2F0Y2ggYSBtaXNzaW5nICJvcHRpb25hbCIgcHJvcGVydHkgdGhhdCBpcyBuZWVkZWQg
b24KPiA+ID4gPiA+IEg2Lgo+ID4gPiA+ID4KPiA+ID4gPiA+IFlvdSBoYXZlIHRvIGRyYXcgdGhl
IGxpbmUgc29tZXdoZXJlIHdoaWNoIGluZm9ybWF0aW9uIHRoZSBkcml2ZXIgaGFzCj4gPiA+ID4g
PiBoYXJkLWNvZGVkIGFuZCB3aGF0IGlzIG9ubHkgcHJvdmlkZWQgYnkgdGhlIGRldmljZSB0cmVl
IGFuZCBqdXN0IGFzc3VtZWQKPiA+ID4gPiA+IHRvIGJlIGNvcnJlY3QgYnkgdGhlIGRyaXZlci4g
WW91IGFyZ3VlIHRoZSBkcml2ZXIgc2hvdWxkIGtub3cgdGhhdAo+ID4gPiA+Cj4gPiA+ID4gTm8s
IGluIHRoaXMgdGhyZWFkIEkgYXJndWUgdGhhdCBEVCB2YWxpZGF0aW9uIHRvb2wsIGV4ZWN1dGVk
IGJ5Cj4gPiA+ID4KPiA+ID4gPiBtYWtlIEFSQ0g9YXJtNjQgZHRic19jaGVjawo+ID4gPiA+Cj4g
PiA+ID4gc2hvdWxkIGNhdGNoIHRoYXQuIFRoaXMgaXMgbm90IGEgZHJpdmVyLCBidXQgRFQgYmlu
ZGluZyBkZXNjcmliZWQgaW4gWUFNTC4KPiA+ID4KPiA+ID4gVGhlIGFyZ3VtZW50YXRpb24gaXMg
dGhlIHNhbWUuIGR0YnNfY2hlY2sgZG9lc24ndCBub3RpY2UgaWYgdGhlIGJhc2UKPiA+ID4gYWRk
cmVzcyBvZiB5b3VyICJhbGx3aW5uZXIsc3VuNTBpLWg2LXB3bSIgZGV2aWNlIGlzIHdyb25nLiBT
byB3aHkgc2hvdWxkCj4gPiA+IGl0IGNhdGNoIGEgbWlzc2luZyByZXNldCBjb250cm9sbGVyIHBo
YW5kbGU/Cj4gPgo+ID4gT2YgY291cnNlIGNoZWNraW5nIGFjdHVhbCB2YWx1ZXMgb2Ygbm9kZSBw
cm9wZXJ0aWVzIGRvZXNuJ3QgbWFrZSBzZW5zZSBpbgo+ID4gZHRic19jaGVjaywgb3RoZXJ3aXNl
IHdlIHdvdWxkIGhhdmUgbWlsbGlvbiBEVCBiaW5kaW5ncy4gSWYgeW91IGhhdmUgMTAgY29waWVz
Cj4gPiBvZiB0aGUgc2FtZSBJUCBjb3JlLCBvZiBjb3Vyc2UgeW91IHdvdWxkIHVzZSBzYW1lIGNv
bXBhdGlibGUsIGJ1dCBhY3R1YWwKPiA+IHJlZ2lzdGVyIHJhbmdlcywgaW50ZXJydXB0cywgZXRj
LiB3b3VsZCBiZSBkaWZmZXJlbnQgaW4gRFQgbm9kZXMuCj4gPgo+ID4gQXQgdGhpcyBwb2ludCBJ
IHdvdWxkIG1ha2Ugc2FtZSBhcmd1bWVudCBhcyB3ZXJlIG1hZGUgYmVmb3JlLCBidXQgdGhlcmUg
aXMgbm8KPiA+IHBvaW50IGdvaW5nIGluIGNpcmNsZXMuIEknbSBpbnRlcmVzdGVkIHdoYXQgaGF2
ZSBEVCBtYWludGFpbmVycyB0byBzYXkuCj4KPiAtLQo+IFBlbmd1dHJvbml4IGUuSy4gICAgICAg
ICAgICAgICAgICAgICAgICAgICB8IFV3ZSBLbGVpbmUtS8O2bmlnICAgICAgICAgICAgfAo+IElu
ZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVu
Z3V0cm9uaXguZGUvICB8Cj4KPiAtLQo+IFlvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVz
ZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgImxpbnV4LXN1bnhpIiBn
cm91cC4KPiBUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5n
IGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRvIGxpbnV4LXN1bnhpK3Vuc3Vic2NyaWJl
QGdvb2dsZWdyb3Vwcy5jb20uCj4gVG8gdmlldyB0aGlzIGRpc2N1c3Npb24gb24gdGhlIHdlYiwg
dmlzaXQgaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2xpbnV4LXN1bnhpLzIwMTkw
NzMwMDgwOTAwLmhoeHJxdW43dms0bnNqMmglNDBwZW5ndXRyb25peC5kZS4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
