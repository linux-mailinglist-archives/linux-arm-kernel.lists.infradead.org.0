Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB4779060
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:10:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uEBenfKmyJroP8Zb1rIm1O94/rr/rq5KMgzbwJ3ADHk=; b=MK1Zqs4nOOuxV+
	24BegfCuiyAZHE5Nnalcu1wAu4jwYZB/va91XDanEEE+tCEkDATpcQRix9EBlmDXhMgwbImY1Y/vj
	siaY/PK+SdA1aXasdm4pkQ/SeNNrofxe21qsUDSsekowUyep1lmSO0qgD9jr81u3/PcztQL6YX9ib
	a5lWI+7DjLgI0VKUCMvTKkl4ov5U+OdLxi2NQ/oebQylJW7bRsVPZCBkGX+Eus5+8j8YgVTUntvXu
	3edVnqiX/8DZXiimhasXW1Ca8JSiUmLGkmYJam0f+Y7GE+bH6rS4iMWoG2/L2CoRU+G220z/IunZb
	8Z80WVmCV7KOXWpwrKXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8E4-0007ZH-GG; Mon, 29 Jul 2019 16:10:16 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8Dm-0007YT-2g
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:09:59 +0000
Received: by mail-ed1-f67.google.com with SMTP id w20so59794819edd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 09:09:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pUWi5s/lZaidbjPDb3R/qRFf6NikitzloPwYU7hh5ag=;
 b=j3X/q0ZN9HO1LzTK/nX58dtgFcv9NwNhQLaCJhCJJwLPYb2VXJWwQeU39Ejnt3fc1/
 6iZ+qdrcMekkSB9WGjCAR0W7fVFjrMxUjMXhgKz7SJk8QDj1TbMMn2dTx4pyimG/YBTY
 K9sWFGVnEH8iIElaIkA9WrUCo+JSLrkuidahNLuR0UEFu050GwdWK7MJmzIOCwPRuTdX
 KuPVmSqU77iZ4U2+VKkVqrxMzjQl0eRgU59rVDspRJU/qlGkOhVd39IKKqEsX/r46etx
 ml2GSMx4kv28ZsB8rMi5krX/MREWdS77bFBcQMs5/5Mvmt2sEVSoMIONVAWS3HUqiDzD
 x7vw==
X-Gm-Message-State: APjAAAXUinTbPsNyNItEuIYHcSKdwPKKmhfnFg+aVoGXV/JErT5uFCXV
 173h7h3SERtH68tZ/+9Gic+fSfo3mSk=
X-Google-Smtp-Source: APXvYqwRvF6/irJNkRQEkjb+uW0wwHa8CaOAiE2n6oMpXG4csiNFv9nbAZK8CvHwZqNUCtjLnsJQKg==
X-Received: by 2002:a50:972a:: with SMTP id c39mr97119295edb.46.1564416593977; 
 Mon, 29 Jul 2019 09:09:53 -0700 (PDT)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com.
 [209.85.128.54])
 by smtp.gmail.com with ESMTPSA id j7sm16335749eda.97.2019.07.29.09.09.53
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 09:09:53 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id v15so54406404wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 09:09:53 -0700 (PDT)
X-Received: by 2002:a7b:cc04:: with SMTP id f4mr35947541wmh.125.1564416592986; 
 Mon, 29 Jul 2019 09:09:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-5-jernej.skrabec@siol.net>
 <20190729064030.7uenld2kbof45zti@pengutronix.de>
 <223488703.0I5IR7NXoI@jernej-laptop>
 <20190729160723.am3cs5pasi22pibi@pengutronix.de>
In-Reply-To: <20190729160723.am3cs5pasi22pibi@pengutronix.de>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 30 Jul 2019 00:09:40 +0800
X-Gmail-Original-Message-ID: <CAGb2v66C=ghjck6rxTg6Vt4xN2DcXntzVOa=KJWh98KRjkhnHQ@mail.gmail.com>
Message-ID: <CAGb2v66C=ghjck6rxTg6Vt4xN2DcXntzVOa=KJWh98KRjkhnHQ@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH 4/6] pwm: sun4i: Add support for H6 PWM
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_090958_122164_2F1A4F04 
X-CRM114-Status: GOOD (  27.53  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
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
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMTI6MDcgQU0gVXdlIEtsZWluZS1Lw7ZuaWcKPHUua2xl
aW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBPbiBNb24sIEp1bCAyOSwgMjAx
OSBhdCAwNTo1NTo1MlBNICswMjAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gPiBIaSBVd2Us
Cj4gPgo+ID4gRG5lIHBvbmVkZWxqZWssIDI5LiBqdWxpaiAyMDE5IG9iIDA4OjQwOjMwIENFU1Qg
amUgVXdlIEtsZWluZS1Lw7ZuaWcKPiA+IG5hcGlzYWwoYSk6Cj4gPiA+IE9uIEZyaSwgSnVsIDI2
LCAyMDE5IGF0IDA4OjQwOjQzUE0gKzAyMDAsIEplcm5laiBTa3JhYmVjIHdyb3RlOgo+ID4gPiA+
IE5vdyB0aGF0IHN1bjRpIFBXTSBkcml2ZXIgc3VwcG9ydHMgZGVhc3NlcnRpbmcgcmVzZXQgbGlu
ZSBhbmQgZW5hYmxpbmcKPiA+ID4gPiBidXMgY2xvY2ssIHN1cHBvcnQgZm9yIEg2IFBXTSBjYW4g
YmUgYWRkZWQuCj4gPiA+ID4KPiA+ID4gPiBOb3RlIHRoYXQgd2hpbGUgSDYgUFdNIGhhcyB0d28g
Y2hhbm5lbHMsIG9ubHkgZmlyc3Qgb25lIGlzIHdpcmVkIHRvCj4gPiA+ID4gb3V0cHV0IHBpbi4g
U2Vjb25kIGNoYW5uZWwgaXMgdXNlZCBhcyBhIGNsb2NrIHNvdXJjZSB0byBjb21wYW5pb24gQUMy
MDAKPiA+ID4gPiBjaGlwIHdoaWNoIGlzIGJ1bmRsZWQgaW50byBzYW1lIHBhY2thZ2UuCj4gPiA+
ID4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNA
c2lvbC5uZXQ+Cj4gPiA+ID4gLS0tCj4gPiA+ID4KPiA+ID4gPiAgZHJpdmVycy9wd20vcHdtLXN1
bjRpLmMgfCAxMCArKysrKysrKysrCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRp
b25zKCspCj4gPiA+ID4KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vcHdtLXN1bjRp
LmMgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4gPiA+IGluZGV4IDdkM2FjM2YyZGMzZi4u
OWUwZWNhNzlmZjg4IDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5j
Cj4gPiA+ID4gKysrIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+ID4gPiBAQCAtMzMxLDYg
KzMzMSwxMyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHN1bjRpX3B3bV9kYXRhCj4gPiA+ID4gc3Vu
NGlfcHdtX3NpbmdsZV9ieXBhc3MgPSB7Pgo+ID4gPiA+ICAgLm5wd20gPSAxLAo+ID4gPiA+Cj4g
PiA+ID4gIH07Cj4gPiA+ID4KPiA+ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBzdW40aV9wd21f
ZGF0YSBzdW41MGlfcHdtX2R1YWxfYnlwYXNzX2Nsa19yc3QgPSB7Cj4gPiA+ID4gKyAuaGFzX2J1
c19jbG9jayA9IHRydWUsCj4gPiA+ID4gKyAuaGFzX3ByZXNjYWxlcl9ieXBhc3MgPSB0cnVlLAo+
ID4gPiA+ICsgLmhhc19yZXNldCA9IHRydWUsCj4gPiA+ID4gKyAubnB3bSA9IDIsCj4gPiA+ID4g
K307Cj4gPiA+ID4gKwo+ID4gPiA+Cj4gPiA+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2
aWNlX2lkIHN1bjRpX3B3bV9kdF9pZHNbXSA9IHsKPiA+ID4gPgo+ID4gPiA+ICAgewo+ID4gPiA+
Cj4gPiA+ID4gICAgICAgICAgIC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW40aS1hMTAtcHdt
IiwKPiA+ID4gPgo+ID4gPiA+IEBAIC0zNDcsNiArMzU0LDkgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgc3VuNGlfcHdtX2R0X2lkc1tdID0KPiA+ID4gPiB7Cj4gPiA+ID4KPiA+
ID4gPiAgIH0sIHsKPiA+ID4gPgo+ID4gPiA+ICAgICAgICAgICAuY29tcGF0aWJsZSA9ICJhbGx3
aW5uZXIsc3VuOGktaDMtcHdtIiwKPiA+ID4gPiAgICAgICAgICAgLmRhdGEgPSAmc3VuNGlfcHdt
X3NpbmdsZV9ieXBhc3MsCj4gPiA+ID4KPiA+ID4gPiArIH0sIHsKPiA+ID4gPiArICAgICAgICAg
LmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1wd20iLAo+ID4gPiA+ICsgICAgICAg
ICAuZGF0YSA9ICZzdW41MGlfcHdtX2R1YWxfYnlwYXNzX2Nsa19yc3QsCj4gPiA+Cj4gPiA+IElm
IHlvdSBmb2xsb3cgbXkgc3VnZ2VzdGlvbiBmb3IgdGhlIHR3byBwcmV2aW91cyBwYXRjaGVzLCB5
b3UgY2FuIGp1c3QKPiA+ID4gdXNlOgo+ID4gPgo+ID4gPiAgICAgY29tcGF0aWJsZSA9ICJhbGx3
aW5uZXIsc3VuNTBpLWg2LXB3bSIsICJhbGx3aW5uZXIsc3VuNWktYTEwcy1wd20iOwo+ID4gPgo+
ID4gPiBhbmQgZHJvcCB0aGlzIHBhdGNoLgo+ID4KPiA+IE1heGltZSBmb3VuZCBvdXQgdGhhdCBp
dCdzIG5vdCBjb21wYXRpYmxlIHdpdGggQTEwcyBkdWUgdG8gZGlmZmVyZW5jZSBpbiBieXBhc3MK
PiA+IGJpdCwgYnV0IHllcywgSSBrbm93IHdoYXQgeW91IG1lYW4uCj4gPgo+ID4gU2luY2UgSDYg
cmVxdWlyZXMgcmVzZXQgbGluZSBhbmQgYnVzIGNsb2NrIHRvIGJlIHNwZWNpZmllZCwgaXQncyBu
b3QgY29tcGF0aWJsZQo+ID4gZnJvbSBEVCBiaW5kaW5nIHNpZGUuIE5ldyB5YW1sIGJhc2VkIGJp
bmRpbmcgbXVzdCBzb21laG93IGtub3cgdGhhdCBpbiBvcmRlcgo+ID4gdG8gYmUgYWJsZSB0byB2
YWxpZGF0ZSBEVCBub2RlLCBzbyBpdCBuZWVkcyBzdGFuZGFsb25lIGNvbXBhdGlibGUuIEhvd2V2
ZXIsCj4gPiBkZXBlbmRpbmcgb24gY29uY2x1c2lvbnMgb2Ygb3RoZXIgZGlzY3Vzc2lvbnMsIHRo
aXMgbmV3IGNvbXBhdGlibGUgY2FuIGJlCj4gPiBhc3NvY2lhdGVkIHdpdGggYWxyZWFkeSBhdmFp
bGFibGUgcXVpcmtzIHN0cnVjdHVyZSBvciBoYXZlIGl0J3Mgb3duLgo+Cj4gSSBjYW5ub3QgZm9s
bG93LiBZb3Ugc2hvdWxkIGJlIGFibGUgdG8gc3BlY2lmeSBpbiB0aGUgYmluZGluZyB0aGF0IHRo
ZQo+IHJlc2V0IGxpbmUgYW5kIGJ1cyBjbG9jayBpcyBvcHRpb25hbC4gVGhlbiBhbGx3aW5uZXIs
c3VuNTBpLWg2LXB3bQo+IHdpdGhvdXQgYSByZXNldCBsaW5lIGFuZCBidXMgY2xvY2sgYWxzbyB2
ZXJpZmllcywgYnV0IHRoaXMgZG9lc24ndAo+IHJlYWxseSBodXJ0IChhbmQgd2hvIGtub3dzLCBt
YXliZSB0aGUgbmV4dCBhbGx3aW5uZXIgY2hpcCBuZWVkcyBleGFjdGx5Cj4gdGhpcykuCgpJdCBp
cyBub3Qgb3B0aW9uYWwuIEl0IHdpbGwgbm90IHdvcmsgaWYgZWl0aGVyIHRoZSBjbG9ja3Mgb3Ig
cmVzZXQgY29udHJvbHMKYXJlIG1pc3NpbmcuIEhvdyB3b3VsZCB0aGVzZSBiZSBvcHRpb25hbCBh
bnl3YXk/IEVpdGhlciBpdCdzIGNvbm5lY3RlZCBhbmQKdGh1cyByZXF1aXJlZCwgb3IgaXQncyBu
b3QgYW5kIHRoZXJlZm9yZSBzaG91bGQgYmUgb21pdHRlZCBmcm9tIHRoZQpkZXNjcmlwdGlvbi4K
CkNoZW5ZdQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
