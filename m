Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 790BD97FA7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 18:05:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tYiwlcT1hQKD8Z8noE5yxlBn4DHi71nixmT0UlMcl3Q=; b=sPCRY9vjn06O9i
	bGk1Qw99WCq5936FpGxT2+m+6+OdOa0gZIOd/sNG+y11BQ7XBI+PZZJOB9r0WDFIJ/bJ3XX50uXkL
	P5H9R4vYPXk5VYMOVUEO9kk6w+Doi2056gCxjbz8RnNgv8lKntBvDRHS4CPBvqU4qcKan8J4+Jgnv
	2qSuTjm1FYTiy3Zuye/AsBNkK9e+ncBFwufogvv6K6vpFrUUjIN/6uCtyzIbqqhfbw4HneESiGYWZ
	dBX01P+UwxB1+lvAwK7/gqEsV42Y0kAlzm4b683JCMWc++tHxsK6gxybmxrwzX5Ym1r7S/7P8FwYn
	lrGvaQ488UKAP/yKFUYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0T6W-0006T3-54; Wed, 21 Aug 2019 16:04:56 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0T6N-0006Si-D1
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 16:04:49 +0000
Received: by mail-oi1-f194.google.com with SMTP id g128so2008072oib.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 09:04:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RynLZSvey/kZnxVVVLyjk8KwWQHiCOLQUV51xUwB0Yk=;
 b=IhtQp64H9nlioEKF0Qmo6OfK9b0rWtUtLaj/JsYtc/lLBxqRzywkJ4cUaNd2v3RKaG
 IhobN6AcvemtmEZAo7l7oTB4IITXyK7OX71gtkqwiTFZojq4cVBxCtpjLZ2Ghwu8WezO
 /02oFHQxmPq2Ovs/ke2ZILk3H+U5yhW1tcI/A+hCns/PPrAnVy4NtZsuNgftEZZwqxXk
 c+QYFvVYuJHQQ0qhYAtgQU58vo6DJ4J8bVKJL5A5fZChyJRpthUTRWeq1uxkQSpCC79y
 ZZ2DEZNsKKpRg7lyG2MJYN7sPxBbQIZMNg0hvpweDxOKZZGEhY0EFH/I60//1CDoQBfO
 qFhQ==
X-Gm-Message-State: APjAAAUzjg2ojYbEhmABBHPeInMcbSblpCPqxbl+2I0BZ0MzNoLjASru
 S++5HKSm7erwRo4VrNh2bxDQ0JXrBgTdK9OOmZk=
X-Google-Smtp-Source: APXvYqyCyYAXkVjRaQGsnU23tWjV9XaQliV6h6E6vgonh7EnvSf18y72SQkeo8O2ThkeTII/zk4tfeUibNzePnGmHQk=
X-Received: by 2002:aca:ea82:: with SMTP id i124mr538173oih.153.1566403485948; 
 Wed, 21 Aug 2019 09:04:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190814092757.13726-1-geert+renesas@glider.be>
 <20190814092924.13857-1-geert+renesas@glider.be>
 <20190814092924.13857-2-geert+renesas@glider.be>
 <20190814093558.xlx5ck54dw2dgb6k@pengutronix.de>
 <CAMuHMdWNj-H9B8E9=NeCgLracBuJODfPyBYJERh=vt4oNFUkGw@mail.gmail.com>
 <20190814110804.2ceo2upc3su7muup@pengutronix.de>
 <95a9b7ed-71a5-f58c-92dd-913893535f3a@gmail.com>
 <352d8f55-afe2-9f76-ad92-f15a9faa16a8@gmail.com>
In-Reply-To: <352d8f55-afe2-9f76-ad92-f15a9faa16a8@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 21 Aug 2019 18:04:34 +0200
Message-ID: <CAMuHMdU0c_QRFm8Y=mJmuX9HHXGugcmLVwyQRZKqnTj+C5r6RQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] serial: atmel: Don't check for mctrl_gpio_to_gpiod()
 returning error
To: Richard Genoud <richard.genoud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_090447_443338_F58486E2 
X-CRM114-Status: GOOD (  26.30  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 NXP Linux Team <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmljaGFyZCwKCk9uIFdlZCwgQXVnIDIxLCAyMDE5IGF0IDU6MjcgUE0gUmljaGFyZCBHZW5v
dWQgPHJpY2hhcmQuZ2Vub3VkQGdtYWlsLmNvbT4gd3JvdGU6Cj4gTGUgMjAvMDgvMjAxOSDDoCAx
Nzo0NywgUmljaGFyZCBHZW5vdWQgYSDDqWNyaXQgOgo+ID4gTGUgMTQvMDgvMjAxOSDDoCAxMzow
OCwgVXdlIEtsZWluZS1Lw7ZuaWcgYSDDqWNyaXQgOgo+ID4+IE9uIFdlZCwgQXVnIDE0LCAyMDE5
IGF0IDEyOjIwOjMzUE0gKzAyMDAsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPiA+Pj4gSGkg
VXdlLAo+ID4+Pgo+ID4+PiBPbiBXZWQsIEF1ZyAxNCwgMjAxOSBhdCAxMTozNiBBTSBVd2UgS2xl
aW5lLUvDtm5pZwo+ID4+PiA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToK
PiA+Pj4+IE9uIFdlZCwgQXVnIDE0LCAyMDE5IGF0IDExOjI5OjIyQU0gKzAyMDAsIEdlZXJ0IFV5
dHRlcmhvZXZlbiB3cm90ZToKPiA+Pj4+PiBTaW5jZSBjb21taXQgMWQyNjdlYTY1MzlmMjY2MyAo
InNlcmlhbDogbWN0cmwtZ3Bpbzogc2ltcGxpZnkgaW5pdAo+ID4+Pj4+IHJvdXRpbmUiKSwgbWN0
cmxfZ3Bpb19pbml0KCkgcmV0dXJucyBmYWlsdXJlIGlmIHRoZSBhc3NpZ25tZW50IHRvIGFueQo+
ID4+Pj4+IG1lbWJlciBvZiB0aGUgZ3BpbyBhcnJheSByZXN1bHRzIGluIGFuIGVycm9yIHBvaW50
ZXIuCj4gPj4+Pj4gU2luY2UgY29tbWl0IGMzNTk1MjIxOTQ1OTM4MTUgKCJzZXJpYWw6IG1jdHJs
X2dwaW86IEF2b2lkIHByb2JlIGZhaWx1cmVzCj4gPj4+Pj4gaW4gY2FzZSBvZiBtaXNzaW5nIGdw
aW9saWIiKSwgbWN0cmxfZ3Bpb190b19ncGlvZCgpIHJldHVybnMgTlVMTCBpbiB0aGUKPiA+Pj4+
PiAhQ09ORklHX0dQSU9MSUIgY2FzZS4KPiA+Pj4+PiBIZW5jZSB0aGVyZSBpcyBubyBsb25nZXIg
YSBuZWVkIHRvIGNoZWNrIGZvciBtY3RybF9ncGlvX3RvX2dwaW9kKCkKPiA+Pj4+PiByZXR1cm5p
bmcgYW4gZXJyb3IgdmFsdWUuICBBIHNpbXBsZSBOVUxMIGNoZWNrIGlzIHN1ZmZpY2llbnQuCj4g
Pj4+Pj4KPiA+Pj4+PiBUaGlzIGZvbGxvd3MgdGhlIHNwaXJpdCBvZiBjb21taXQgNDQ1ZGY3ZmYz
ZmQxYTBhOSAoInNlcmlhbDogbWN0cmwtZ3BpbzoKPiA+Pj4+PiBkcm9wIHVzYWdlcyBvZiBJU19F
UlJfT1JfTlVMTCIpIGluIHRoZSBtY3RybC1ncGlvIGNvcmUuCj4gPj4+Pj4KPiA+Pj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+
ID4+Pj4+IC0tLQo+ID4+Pj4+ICBkcml2ZXJzL3R0eS9zZXJpYWwvYXRtZWxfc2VyaWFsLmMgfCAx
MiArKysrLS0tLS0tLS0KPiA+Pj4+PiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
OCBkZWxldGlvbnMoLSkKPiA+Pj4+Pgo+ID4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3R0eS9z
ZXJpYWwvYXRtZWxfc2VyaWFsLmMgYi9kcml2ZXJzL3R0eS9zZXJpYWwvYXRtZWxfc2VyaWFsLmMK
PiA+Pj4+PiBpbmRleCAxOWE4NWQ2ZmUzZDIwNTQxLi5lOTYyMGE4MTE2NmI3ZGMxIDEwMDY0NAo+
ID4+Pj4+IC0tLSBhL2RyaXZlcnMvdHR5L3NlcmlhbC9hdG1lbF9zZXJpYWwuYwo+ID4+Pj4+ICsr
KyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9hdG1lbF9zZXJpYWwuYwo+ID4+Pj4+IEBAIC0zMDMsMzIg
KzMwMywyOCBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGF0bWVsX2dldF9saW5lc19zdGF0dXMoc3Ry
dWN0IHVhcnRfcG9ydCAqcG9ydCkKPiA+Pj4+Pgo+ID4+Pj4+ICAgICAgIG1jdHJsX2dwaW9fZ2V0
KGF0bWVsX3BvcnQtPmdwaW9zLCAmcmV0KTsKPiA+Pj4+Pgo+ID4+Pj4+IC0gICAgIGlmICghSVNf
RVJSX09SX05VTEwobWN0cmxfZ3Bpb190b19ncGlvZChhdG1lbF9wb3J0LT5ncGlvcywKPiA+Pj4+
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgVUFSVF9HUElP
X0NUUykpKSB7Cj4gPj4+Pj4gKyAgICAgaWYgKG1jdHJsX2dwaW9fdG9fZ3Bpb2QoYXRtZWxfcG9y
dC0+Z3Bpb3MsIFVBUlRfR1BJT19DVFMpKSB7Cj4gPj4+Pj4gICAgICAgICAgICAgICBpZiAocmV0
ICYgVElPQ01fQ1RTKQo+ID4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgJj0gfkFU
TUVMX1VTX0NUUzsKPiA+Pj4+PiAgICAgICAgICAgICAgIGVsc2UKPiA+Pj4+PiAgICAgICAgICAg
ICAgICAgICAgICAgc3RhdHVzIHw9IEFUTUVMX1VTX0NUUzsKPiA+Pj4+PiAgICAgICB9Cj4gPj4+
Pgo+ID4+Pj4gVGhlIGNoYW5nZSBpcyBmaW5lLCBidXQgaXQgc2VlbXMgdGhlIGF0bWVsIGRyaXZl
ciBkb2Vzbid0IHVzZSBtY3RybF9ncGlvCj4gPj4+PiBhcyBleHBlY3RlZCAoYXQgbGVhc3QgYXMg
ZXhwZWN0ZWQgYnkgbWUpLiBJTUhPIGRyaXZpbmcgdGhlIGhhcmR3YXJlCj4gPj4+PiBmdW5jdGlv
biBvZiB0aGUgQ1RTIHBpbiBzaG91bGRuJ3QgYmUgY29uZGl0aW9uYWwgb24gdGhlIHByZXNlbmNl
IG9mIGEKPiA+Pj4+IGN0cy1ncGlvLiBJcyB0aGVyZSBhIHJlYXNvbiBub3QgdG8ganVzdCBkcm9w
IHRoZSBpZiBjb21wbGV0ZWx5Pwo+ID4+Pgo+ID4+PiBUaGUgYWJvdmUgY29kZSByZXR1cm5zIHRo
ZSBoYXJkd2FyZSBzdGF0dXMgaWYgQ1RTIGlzIG5vdCBhIEdQSU8sIGFuZAo+ID4+PiByZXR1cm5z
IChvdmVycmlkZXMgd2l0aCkgdGhlIEdQSU8gc3RhdHVzIGlmIENUUyBpcyBhIEdQSU8uCj4gPj4+
IElzbid0IHRoYXQgY29ycmVjdCwgb3IgYW0gSSBtaXNzaW5nIHNvbWV0aGluZz8KPiA+Pgo+ID4+
IEkgdG9vayBhIGRlZXBlciBsb29rIGludG8gdGhpcyBkcml2ZXIgbm93LiBUaGUgdGFzayBmb3IK
PiA+PiBhdG1lbF9nZXRfbGluZXNfc3RhdHVzKCkgaXNuJ3QgdG8gaW1wbGVtZW50IHRoZSBnZXRf
bWN0cmwoKSBjYWxsYmFjay4KPiA+Pgo+ID4+IEluc3RlYWQgdGhpcyBpcyBjYWxsZWQgaW4gdGhl
IGlycWhhbmRsZXIgdG8gc2V0IEFUTUVMX1VTX1JJIGluIGEKPiA+PiAicGVuZGluZyIgdmFsdWUg
dGhhdCB0aGVuIGxhdGVyIGluIGF0bWVsX2hhbmRsZV9zdGF0dXMoKSBpcyB0cmFuc2xhdGVkCj4g
Pj4gdG8gYSAicmluZyIgZXZlbnQgdGhhdCBpcyBoYW5kbGVkIHRoZXJlLgo+ID4+Cj4gPj4gU28g
dGhlIHJpZ2h0IGNsZWFudXAgd291bGQgYmUgdG8gbGV0IGF0bWVsX2dldF9saW5lc19zdGF0dXMo
KSBqdXN0IGJlCj4gPj4KPiA+PiAgICAgIHJldHVybiBhdG1lbF91YXJ0X3JlYWRsKHBvcnQsIEFU
TUVMX1VTX0NTUik7Cj4gPj4KPiA+PiAuIElmIHNvbWV0aGluZyBoYXBwZW5kIG9uIHRoZSBsaW5l
cyBpbXBsZW1lbnRlZCBhcyBncGlvIHRoZSBkcml2ZXIncyBpcnEKPiA+PiBmdW5jdGlvbiBpc24n
dCBjYWxsZWQgYW55aG93Lgo+ID4KPiA+IEknZCBsaWtlIHRvIGdpdmUgaXQgYSBnb29kIHRlc3Qg
dG8gYmUgc3VyZSwgYW5kIEknbGwgZ2V0IGJhY2sgdG8geW91Lgo+Cj4gU28sIFV3ZSBpcyByaWdo
dC4KPiBTaW5jZSBjb21taXQgY2U1OWU0OGZkYmFkICgic2VyaWFsOiBtY3RybF9ncGlvOiBpbXBs
ZW1lbnQgaW50ZXJydXB0IGhhbmRsaW5nIiksCj4gYXRtZWxfZ2V0X2xpbmVzX3N0YXR1cygpIGNh
biBiZSBjb21wbGV0bHkga2lsbGVkIGFuZCByZXBsYWNlZCBieSA6Cj4gYXRtZWxfdWFydF9yZWFk
bChwb3J0LCBBVE1FTF9VU19DU1IpOwo+Cj4gR2VlcnQsIGRvIHlvdSB3YW50IHRvIHNlbmQgYSBw
YXRjaCBmb3IgdGhhdCwgb3Igc2hvdWxkIEkgZG8gaXQgPwoKRmVlbCBmcmVlIHRvIHNlbmQgYSAg
cGF0Y2guCkkgZG9uJ3QgaGF2ZSB0aGUgQXRtZWwgaGFyZHdhcmUgIGFueXdheS4KVGhhbmtzIQoK
R3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdl
ZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0g
Z2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNo
bmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2lu
ZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlr
ZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRz
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
