Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3139C16AB68
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 17:29:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBiFVx2FoLjgv6TL6LxeQ+JR0JiwkSP42rr5YY0dkVI=; b=qBRZ+C8prMQqAl
	0BqGb7i1m4gM07iuH2en5IRtmXOg/dlJdj6Gzbc4G9OhPP6eJhO/g1/jB1C8jtHFIXlD1wPH+pvHs
	lgvcC/b/oui5NalojseFKJoYIh/k5LdnHplXGrtxJjKz1xmnalOSEw8tv0ajDtSN+b1jdnCj4aN0d
	wLHjUpf1sd9GeoTBgfPkZF359+W+4PHf5DYwAYHsdMSCZX54PDDUyi4zWQh5IaN4Umh7qzBFT6ejs
	vfA9/VPu8tT7u8ysRD6Lzv88T0nWxwYKXuUwINvSpX1W4N+FVWMkLyDo28AHPYArn/m3qctVl21Xv
	mQr6N+TOgJNw7rL2GxQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6GbF-0001Ux-3k; Mon, 24 Feb 2020 16:28:53 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Gb4-0001U7-Nh
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 16:28:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582561720; bh=wkV253iNdu34zWLZa2QqrlFlrBm18YkIXQNR8JlEGXc=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=WDKWj//9hWJyzQ+9eJs8ZC/lnXAkW5HiOq9ChU8ruQvc7s2a8caBEhBu0EBTqedJL
 oF0QzLdL5peysOVfOP4s0H2nZXya9z8FBi6xQQZP8L8Am/AvpCoJXQZQq6M2YpXbpR
 Z5xeQIUsADukIZgVk853toibAnc2nrgeVvxDR+jk=
Date: Mon, 24 Feb 2020 17:28:40 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Stefan Mavrodiev <stefan@olimex.com>
Subject: Re: [linux-sunxi] Re: [PATCH 0/4] Add support for charger LED for
 AXP813 and TBS A711 Tablet
Message-ID: <20200224162840.z7csqagz2frwvmf3@core.my.home>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Stefan Mavrodiev <stefan@olimex.com>, linux-sunxi@googlegroups.com,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Lee Jones <lee.jones@linaro.org>, linux-leds@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200223131435.681620-1-megous@megous.com>
 <20200223132730.6g7tnm2f263oubhv@core.my.home>
 <20200223133517.hfqrg5dta2xk4zj3@core.my.home>
 <1464324b-2b69-c20e-4af8-f32ae5451ea6@olimex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464324b-2b69-c20e-4af8-f32ae5451ea6@olimex.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_082843_099569_D8E430C0 
X-CRM114-Status: GOOD (  25.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Lee Jones <lee.jones@linaro.org>, linux-leds@vger.kernel.org,
 Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBGZWIgMjQsIDIwMjAgYXQgMDg6MzE6MDZBTSArMDIwMCwgU3RlZmFuIE1hdnJvZGll
diB3cm90ZToKPiAKPiBPbiAyLzIzLzIwIDM6MzUgUE0sIE9uZMWZZWogSmlybWFuIHdyb3RlOgo+
ID4gT24gU3VuLCBGZWIgMjMsIDIwMjAgYXQgMDI6Mjc6MzBQTSArMDEwMCwgbWVnb3VzIGhsYXZu
aSB3cm90ZToKPiA+ID4gT24gU3VuLCBGZWIgMjMsIDIwMjAgYXQgMDI6MTQ6MzFQTSArMDEwMCwg
bWVnb3VzIGhsYXZuaSB3cm90ZToKPiA+ID4gPiBUaGUgdGFibGV0IGhhcyBhIGNoYXJnZXIgTEVE
IGV4cG9zZWQgb24gdGhlIHRvcC4gVGhpcyBMRUQgaXMgY29udHJvbGxlZAo+ID4gPiA+IGJ5IEFY
UDgxMyBQTUlDLiBBZGQgc3VwcG9ydCBmb3IgZW5hYmxpbmcgdGhlIExFRCBhbmQgdXNpbmcgaXQg
ZWl0aGVyCj4gPiA+ID4gZm9yIGNoYXJnaW5nIGluZGljYXRpb24gKGhhbmRsZWQgYnkgUE1JQyBh
dXRvbWF0aWNhbGx5KSBvciBmb3Igb3RoZXIgdXNlcwo+ID4gPiA+IHZpYSB1c2VyIGNvbnRyb2wu
Cj4gPiA+IERhbmcsIEkganVzdCBub3RpY2VkIHNvbWVvbmUgc2VudCBhIHNpbWlsYXIgZHJpdmVy
IHJlY2VudGx5LCBhbHRob3VnaCBJIGhhZCB0aGlzCj4gPiA+IG9uZSBwcmVwYXJlZCBmb3IgcXVp
dGUgc29tZSB0aW1lIChzaW5jZSAyMDE3KSBpbiBteSB0cmVlLiBJIGd1ZXNzIEkgc2hvdWxkIGhh
dmUKPiA+ID4gc2VudCBpdCBlYXJsaWVyLgo+ID4gPiAKPiA+ID4gUGxlYXNlIGlnbm9yZS4KPiA+
IFRob3VnaCB0aGUgbWVhbmluZyBvZiAicmVjZW50bHkiIGlzIGEgYml0IHJlbGF0aXZlLiBUaGUg
b3RoZXIgd29yayB3YXMgc2VudCBpbgo+ID4gYSB5ZWFyIGFnby4gSGVyZSdzIGEgcmVmZXJlbmNl
Ogo+ID4gCj4gPiAgICBodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdvcmsvY292ZXIvMTA0
Mjc2NC8KPiAKPiBIaSwKPiAKPiBJJ20gdGhlIGF1dGhvciBvZiB0aGUgJ290aGVyJyB3b3JrLiBJ
IGRvbid0IGtub3cgdGhlIGZ1bGwgc3RvcnkgaGVyZSwgYnV0IEkKPiBkb24ndAo+IG1pbmQgc29t
ZW9uZSBlbHNlIHN1Ym1pdHRpbmcgdGhpcyBwYXRjaCBhcyBoaXMuCgpIZWxsbyBTdGVmYW4sCgpU
aGVyZSdzIHJlYWxseSBubyBzdG9yeS4gSnVzdCBtZSBiZWluZyBhIGJpdCBhbm95ZWQgYXQgbXlz
ZWxmLCBmb3Igbm90IGNoZWNraW5nCnRoZSBtYWlsaW5nIGxpc3RzIHByaW9yIHRvIHNwZW5kaW5n
IHNvbWUgdGltZSBjbGVhbmluZyB1cCBhbmQgZXh0ZW5kaW5nIHNvbWUgb2xkCnBhdGNoZXMgdG8g
dXBzdHJlYW0gdGhlbSwgYW5kIHdhc3RpbmcgcXVpdGUgYSBiaXQgb2YgdGltZSBpbiB0aGUgcHJv
Y2Vzcy4KCmh0dHBzOi8vbWVnb3VzLmNvbS9naXQvbGludXgvY29tbWl0Lz9oPWxpbnV4LXRicyZp
ZD03MzdlZWM2NDU2NWQzMjhjYWI5OGI3NTg3OWUzZjllYjFjZjJmNjA5Cgo+IFdoZW4gSSBzdWJt
aXR0ZWQgdGhlIGxhc3QgcGF0Y2gsIHRoZXJlIHdhcyB0aGUgcHJvcG9zYWwgdG8gdXNlIHRoZQo+
IGxlZHRyaWctcGF0dGVybiBpbnN0ZWFkCj4gb2Ygc3lzZnMgZW50cmllcy4gQWxzbyBBWFAyMDkg
aGFzIGludmVydGVkIENUUkwgYml0Lgo+IAo+IFBsZWFzZSByZWFkIHRoZSB0aGUgJ290aGVyJyBk
aXNjdXNzaW9uLgoKVGhhbmtzLCBJJ2xsIGNoZWNrIGl0IG91dC4KCnJlZ2FyZHMsCglvLgoKPiBC
ZXN0IHJlZ2FyZHMsCj4gU3RlZmFuIE1hdnJvZGlldgo+IAo+ID4gCj4gPiA+IHJlZ2FyZHMsCj4g
PiA+IAlvLgo+ID4gPiAKPiA+ID4gCj4gPiA+ID4gUGxlYXNlIHRha2UgYSBsb29rLgo+ID4gPiA+
IAo+ID4gPiA+IHRoYW5rIHlvdSBhbmQgcmVnYXJkcywKPiA+ID4gPiAgICBPbmRyZWogSmlybWFu
Cj4gPiA+ID4gCj4gPiA+ID4gT25kcmVqIEppcm1hbiAoNCk6Cj4gPiA+ID4gICAgZHQtYmluZGlu
Z3M6IGxlZHM6IEFkZCBhIGJpbmRpbmcgZm9yIEFYUDgxMyBjaGFyZ2VyIGxlZAo+ID4gPiA+ICAg
IGxlZHM6IGF4cDIweDogU3VwcG9ydCBjaGFyZ2VyIExFRCBvbiBBWFAyMHggbGlrZSBQTUlDcwo+
ID4gPiA+ICAgIEFSTTogZHRzOiBheHA4MTM6IEFkZCBjaGFyZ2VyIExFRAo+ID4gPiA+ICAgIEFS
TTogZHRzOiBzdW44aS1hODN0LXRicy1hNzExOiBFbmFibGUgY2hhcmdpbmcgTEVECj4gPiA+ID4g
Cj4gPiA+ID4gICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9sZWRzL2xlZHMtYXhwMjB4LnlhbWwg
fCAgMjQgKysKPiA+ID4gPiAgIGFyY2gvYXJtL2Jvb3QvZHRzL2F4cDgxeC5kdHNpICAgICAgICAg
ICAgICAgICB8ICAgNSArCj4gPiA+ID4gICBhcmNoL2FybS9ib290L2R0cy9zdW44aS1hODN0LXRi
cy1hNzExLmR0cyAgICAgfCAgIDQgKwo+ID4gPiA+ICAgZHJpdmVycy9sZWRzL0tjb25maWcgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgICA3ICsKPiA+ID4gPiAgIGRyaXZlcnMvbGVkcy9NYWtl
ZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCj4gPiA+ID4gICBkcml2ZXJzL2xl
ZHMvbGVkcy1heHAyMHguYyAgICAgICAgICAgICAgICAgICAgfCAyNDAgKysrKysrKysrKysrKysr
KysrCj4gPiA+ID4gICBkcml2ZXJzL21mZC9heHAyMHguYyAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgIDMgKwo+ID4gPiA+ICAgNyBmaWxlcyBjaGFuZ2VkLCAyODQgaW5zZXJ0aW9ucygrKQo+
ID4gPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9sZWRzL2xlZHMtYXhwMjB4LnlhbWwKPiA+ID4gPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2xlZHMvbGVkcy1heHAyMHguYwo+ID4gPiA+IAo+ID4gPiA+IC0tIAo+ID4gPiA+IDIu
MjUuMQo+ID4gPiA+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
