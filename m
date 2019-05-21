Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E1924C9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:27:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qPSGEO6iDpTBPIabVdObVZ9STOEXIYeLzaTOWkzaJ8=; b=owS/0j5XFpsJY/
	e9qXVNzPZhnJfatiFoQIPhsSGH1bJEH0iQt8KVfZWGNozTaXBoPpiCFzLJxllkQCgzoCDcOmVtaJ9
	YlHnOD3wdrcobc8Y7f4dkquSgRbVDDWMZ6nBJOh39xEg9nLiDxT9x2muOn94q3lhJJ9LQ8uVDXeuJ
	KVxEb+LvIM1F59xHoH03Rnr44u/mZQ4+J0CcgU091yLsyOh4EixcVHWwOaWCccV1IekBqM7dI8r+D
	kNpVbsZ5ugAakMEMyXqdrW7T5GwkyI7bmuR5581TUSnHvFOSZrbl/A+y4XDH59IfIg+wC3KjAKXRp
	chGXWJcFvKghwMcZ+UCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1zY-0005Ac-8w; Tue, 21 May 2019 10:27:32 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1zP-0005AC-SM
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:27:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558434441; bh=H6MrKqqtdax1I2XXyrIgpDdBNiCoz5e/dUQ3W4MknQk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m29HCqX2SN+8L1d5/7f5EvQHqPXlEn9XXs31rwizmVmEdBITHL/a3TU6OMvTBHDcw
 yUjXEsxaziEiajsSIS0H84WyhAC2+H0eBJWcb+jZqN2avYXfv90LK3Q1e+1qfkVgAJ
 uJODrBg6bk4nHXnynQwSIMwDEaWMaD5TL+M7adhA=
Date: Tue, 21 May 2019 12:27:21 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
Message-ID: <20190521102721.5hgks6guzlhubj6d@core.my.home>
Mail-Followup-To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Frank Lee <tiny.windzz@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, catalin.marinas@arm.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 paulmck@linux.ibm.com, stefan.wahren@i2se.com,
 Linux PM <linux-pm@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Andy Gross <andy.gross@linaro.org>, rui.zhang@intel.com,
 devicetree@vger.kernel.org, marc.w.gonzalez@free.fr,
 Eduardo Valentin <edubezval@gmail.com>,
 enric.balletbo@collabora.com, robh+dt@kernel.org,
 Jonathan.Cameron@huawei.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 olof@lixom.net, David Miller <davem@davemloft.net>
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512133930.t5txssl7mou2gljt@flea>
 <CAEExFWvcMbiCJ4HD0UAtv1P6AuBJ=oUdmhu886BNZhrRz483Ug@mail.gmail.com>
 <20190517073634.izdmba3yqvxviyg3@flea>
 <CAEExFWtNhTqLR+v3o6vn0Y4L65i_XsrEeiex6DNLEPEkhseCjA@mail.gmail.com>
 <20190521080515.qlni2lnmcwh7itl7@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521080515.qlni2lnmcwh7itl7@flea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_032724_423473_776C8E46 
X-CRM114-Status: GOOD (  33.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Frank Lee <tiny.windzz@gmail.com>,
 catalin.marinas@arm.com, will.deacon@arm.com, bjorn.andersson@linaro.org,
 marc.w.gonzalez@free.fr, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 paulmck@linux.ibm.com, stefan.wahren@i2se.com,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Chen-Yu Tsai <wens@csie.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Andy Gross <andy.gross@linaro.org>,
 rui.zhang@intel.com, devicetree@vger.kernel.org,
 Linux PM <linux-pm@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 olof@lixom.net, robh+dt@kernel.org, Jonathan.Cameron@huawei.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 enric.balletbo@collabora.com, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gVHVlLCBNYXkgMjEsIDIwMTkgYXQgMTA6MDU6MTVBTSArMDIwMCwgTWF4
aW1lIFJpcGFyZCB3cm90ZToKPiBPbiBTYXQsIE1heSAxOCwgMjAxOSBhdCAwMToyNzozOUFNICsw
ODAwLCBGcmFuayBMZWUgd3JvdGU6Cj4gPiBPbiBGcmksIE1heSAxNywgMjAxOSBhdCAzOjM2IFBN
IE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+IHdyb3RlOgo+ID4gPgo+
ID4gPiBPbiBGcmksIE1heSAxNywgMjAxOSBhdCAwMTo1MTo1NkFNICswODAwLCBGcmFuayBMZWUg
d3JvdGU6Cj4gPiA+ID4gPiA+ICtzdHJ1Y3Qgc3VuNTBpX3RoZXJtYWxfY2hpcCB7Cj4gPiA+ID4g
PiA+ICsgICAgIGludCAgICAgc2Vuc29yX251bTsKPiA+ID4gPiA+ID4gKyAgICAgaW50ICAgICBv
ZmZzZXQ7Cj4gPiA+ID4gPiA+ICsgICAgIGludCAgICAgc2NhbGU7Cj4gPiA+ID4gPiA+ICsgICAg
IGludCAgICAgZnRfZGV2aWF0aW9uOwo+ID4gPiA+ID4gPiArICAgICBpbnQgICAgIHRlbXBfY2Fs
aWJfYmFzZTsKPiA+ID4gPiA+ID4gKyAgICAgaW50ICAgICB0ZW1wX2RhdGFfYmFzZTsKPiA+ID4g
PiA+ID4gKyAgICAgaW50ICAgICAoKmVuYWJsZSkoc3RydWN0IHRzZW5zX2RldmljZSAqdG1kZXYp
Owo+ID4gPiA+ID4gPiArICAgICBpbnQgICAgICgqZGlzYWJsZSkoc3RydWN0IHRzZW5zX2Rldmlj
ZSAqdG1kZXYpOwo+ID4gPiA+ID4gPiArfTsKPiA+ID4gPiA+Cj4gPiA+ID4gPiBJJ20gbm90IHN1
cGVyIGZvbmQgb2YgaGF2aW5nIGEgbG90IG9mIHF1aXJrcyB0aGF0IGFyZSBub3QgbmVlZGVkLiBJ
Zgo+ID4gPiA+ID4gd2UgZXZlciBuZWVkIHRob3NlIHF1aXJrcyB3aGVuIGFkZGluZyBzdXBwb3J0
IGZvciBhIG5ldyBTb0MsIHRoZW4KPiA+ID4gPiA+IHllYWgsIHdlIHNob3VsZCB0b3RhbGx5IGhh
dmUgc29tZSwgYnV0IG9ubHkgd2hlbiBhbmQgaWYgaXQncyBuZWVkZWQuCj4gPiA+ID4gPgo+ID4g
PiA+ID4gT3RoZXJ3aXNlLCB0aGUgZHJpdmVyIGlzIG1vcmUgY29tcGxpY2F0ZWQgZm9yIG5vIHBh
cnRpY3VsYXIgcmVhc29uLgo+ID4gPiA+Cj4gPiA+ID4gVGhpcyBpcyB1bmF2b2lkYWJsZSBiZWNh
dXNlIG9mIHRoZSBkaWZmZXJlbmNlIGluIHNvYy4KPiA+ID4KPiA+ID4gSSBrbm93LCBidXQgdGhp
cyBpc24ndCBteSBwb2ludC4KPiA+ID4KPiA+ID4gTXkgcG9pbnQgaXMgdGhhdCBhdCB0aGlzIHRp
bWUgb2YgdGhlIGRyaXZlciBkZXZlbG9wbWVudCwgd2UgZG9uJ3Qga25vdwo+ID4gPiB3aGF0IGlz
IGdvaW5nIHRvIGJlIG5lZWRlZCB0byBzdXBwb3J0IGFsbCBvZiB0aG9zZSBTb0NzLgo+ID4gPgo+
ID4gPiBTb21lIG9mIHRoZSBwYXJhbWV0ZXJzIHlvdSBhZGRlZCBtaWdodCBub3QgYmUgbmVlZGVk
LCBzb21lIHBhcmFtZXRlcnMKPiA+ID4gbWlnaHQgYmUgbWlzc2luZywgd2UgZG9uJ3Qga25vdy4g
U28gbGV0J3Mga2VlcCBpdCBzaW1wbGUgZm9yIG5vdy4KPiA+ID4KPiA+ID4gPiA+ID4gK3N0YXRp
YyBpbnQgdHNlbnNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ID4gPiA+
ID4gK3sKPiA+ID4gPiA+ID4gKyAgICAgc3RydWN0IHRzZW5zX2RldmljZSAqdG1kZXY7Cj4gPiA+
ID4gPiA+ICsgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gPiA+ID4gPiA+
ICsgICAgIGludCByZXQ7Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKyAgICAgdG1kZXYgPSBk
ZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnRtZGV2KSwgR0ZQX0tFUk5FTCk7Cj4gPiA+ID4gPiA+
ICsgICAgIGlmICghdG1kZXYpCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1FTk9N
RU07Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKyAgICAgdG1kZXYtPmRldiA9IGRldjsKPiA+
ID4gPiA+ID4gKyAgICAgdG1kZXYtPmNoaXAgPSBvZl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEoJnBk
ZXYtPmRldik7Cj4gPiA+ID4gPiA+ICsgICAgIGlmICghdG1kZXYtPmNoaXApCj4gPiA+ID4gPiA+
ICsgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4g
KyAgICAgcmV0ID0gdHNlbnNfaW5pdCh0bWRldik7Cj4gPiA+ID4gPiA+ICsgICAgIGlmIChyZXQp
Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ID4gPiA+ID4gKwo+ID4g
PiA+ID4gPiArICAgICByZXQgPSB0c2Vuc19yZWdpc3Rlcih0bWRldik7Cj4gPiA+ID4gPiA+ICsg
ICAgIGlmIChyZXQpCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ID4g
PiA+ID4gKwo+ID4gPiA+ID4gPiArICAgICByZXQgPSB0bWRldi0+Y2hpcC0+ZW5hYmxlKHRtZGV2
KTsKPiA+ID4gPiA+ID4gKyAgICAgaWYgKHJldCkKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICBy
ZXR1cm4gcmV0Owo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiArICAgICBwbGF0Zm9ybV9zZXRfZHJ2
ZGF0YShwZGV2LCB0bWRldik7Cj4gPiA+ID4gPgo+ID4gPiA+ID4gWW91ciByZWdpc3RyYXRpb24g
c2hvdWxkIGJlIHRoZSB2ZXJ5IGxhc3QgdGhpbmcgeW91IGRvLiBPdGhlcndpc2UsIHlvdQo+ID4g
PiA+ID4gaGF2ZSBhIHNtYWxsIHdpbmRvdyB3aGVyZSB0aGUgZ2V0X3RlbXAgY2FsbGJhY2sgY2Fu
IGJlIGNhbGxlZCwgYnV0IHRoZQo+ID4gPiA+ID4gZHJpdmVyIHdpbGwgbm90IGJlIGZ1bmN0aW9u
YWwgeWV0Lgo+ID4gPiA+Cj4gPiA+ID4gTm8uIEFueXdheSwgdGhzIGRhdGEgcWNxdWlzaXRpb24g
aXMgbXMgbGV2ZWwuCj4gPiA+Cj4gPiA+IFRoYXQncyBraW5kIG9mIGlycmVsZXZhbnQuIFRoZXJl
J3Mgbm90aGluZyBwcmV2ZW50aW5nIGdldF90ZW1wIHRvIGJlCj4gPiA+IGNhbGxlZCByaWdodCBh
d2F5Lgo+ID4KPiA+IEFzIE9uZMWZZWogc2FpZCwKPiA+Cj4gPiBSZWdpc3RyYXRpb24gYWZ0ZXIg
ZW5hYmxpbmcgd2lsbCBsZWFkIHRvIGNhbGwgdHogdXBkYXRlIG9uIG5vbi1yZWdpc3RlcmVkIHR6
Cj4gPiBmcm9tIGFuIGludGVycnVwdCBoYW5kbGVyLgo+IAo+IEknbSBwcm9iYWJseSBtaXNzaW5n
IHNvbWV0aGluZyBidXQgeW91J3JlIG5vdCB1c2luZyB0aGUgaW50ZXJydXB0cywgc28KPiBob3cg
Y291bGQgYW4gaW50ZXJydXB0IGhhbmRsZXIgY2FsbCBpdD8KPiAKPiBBbHNvLCBvdGhlciBkcml2
ZXJzIHNlZW0gdG8gYmUgZG9pbmcgdGhhdCBqdXN0IGZpbmUgKG10a190aGVybWFsIGZvcgo+IGV4
YW1wbGUpLCBzbyBzdXJlbHkgdGhlcmUncyBhIHdheT8KCkxhc3QgdmVyc2lvbiBpcyB1c2luZyB0
aGUgaW50ZXJydXB0cy4KCkRyaXZlcnMgZG8gaXQgaW4gdmFyaW91cyB3YXlzLiBGb3IgZXhhbXBs
ZSBpbXhfdGhlcm1hbCAoYW5kIG90aGVycyBsaWtlCmhpc2lfdGhlcm1hbCkgZG9lcyBpdCB0aGUg
c3VnZ2VzdGVkIHdheS4gSXQgZW5hYmxlcyBpbnRlcnJ1cHRzIGFmdGVyIHRoZXJtYWwKem9uZSBy
ZWdpc3RyYXRpb24sIHNvIHRoYXQgSVJRIGhhbmRsZXIgZG9lc24ndCBnZXQgaW52b2tlZCBiZWZv
cmUgdGhlIHR6ZCBpcwpyZWdpc3RlcmVkLgoKcmVnYXJkcywKCW8uCgo+ID4gPiA+ID4gPiArICAg
ICByZXQgPSB0c2Vuc19jYWxpYnJhdGUodG1kZXYpOwo+ID4gPiA+ID4gPiArICAgICBpZiAocmV0
KQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ID4gPiA+ICsKPiA+
ID4gPiA+ID4gKyAgICAgLyoKPiA+ID4gPiA+ID4gKyAgICAgICogY2xraW4gPSAyNE1Iego+ID4g
PiA+ID4gPiArICAgICAgKiBUIGFjcXVpcmUgPSBjbGtpbiAvIChTVU41MElfVEhTX0NUUkwwX1Rf
QUNRICsgMSkKPiA+ID4gPiA+ID4gKyAgICAgICogICAgICAgICAgID0gMjB1cwo+ID4gPiA+ID4g
PiArICAgICAgKi8KPiA+ID4gPiA+ID4gKyAgICAgcmVnbWFwX3dyaXRlKHRtZGV2LT5yZWdtYXAs
IFNVTjUwSV9USFNfQ1RSTDAsCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICBTVU41MElf
VEhTX0NUUkwwX1RfQUNRKDQ3OSkpOwo+ID4gPiA+ID4gPiArICAgICAvKiBhdmVyYWdlIG92ZXIg
NCBzYW1wbGVzICovCj4gPiA+ID4gPiA+ICsgICAgIHJlZ21hcF93cml0ZSh0bWRldi0+cmVnbWFw
LCBTVU41MElfSDZfVEhTX01GQywKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgIFNVTjUw
SV9USFNfRklMVEVSX0VOIHwKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgIFNVTjUwSV9U
SFNfRklMVEVSX1RZUEUoMSkpOwo+ID4gPiA+ID4gPiArICAgICAvKiBwZXJpb2QgPSAoU1VONTBJ
X0g2X1RIU19QQ19URU1QX1BFUklPRCArIDEpICogNDA5NiAvIGNsa2luOyB+MTBtcyAqLwo+ID4g
PiA+ID4gPiArICAgICByZWdtYXBfd3JpdGUodG1kZXYtPnJlZ21hcCwgU1VONTBJX0g2X1RIU19Q
QywKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgIFNVTjUwSV9INl9USFNfUENfVEVNUF9Q
RVJJT0QoNTgpKTsKPiA+ID4gPiA+ID4gKyAgICAgLyogZW5hYmxlIHNlbnNvciAqLwo+ID4gPiA+
ID4gPiArICAgICB2YWwgPSBHRU5NQVNLKHRtZGV2LT5jaGlwLT5zZW5zb3JfbnVtIC0gMSwgMCk7
Cj4gPiA+ID4gPiA+ICsgICAgIHJlZ21hcF93cml0ZSh0bWRldi0+cmVnbWFwLCBTVU41MElfSDZf
VEhTX0VOQUJMRSwgdmFsKTsKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArICAgICByZXR1cm4g
MDsKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArYXNzZXJ0X3Jlc2V0Ogo+ID4gPiA+ID4gPiAr
ICAgICByZXNldF9jb250cm9sX2Fzc2VydCh0bWRldi0+cmVzZXQpOwo+ID4gPiA+ID4gPiArCj4g
PiA+ID4gPiA+ICsgICAgIHJldHVybiByZXQ7Cj4gPiA+ID4gPgo+ID4gPiA+ID4gQ2FuJ3Qgd2Ug
ZG8gdGhhdCB3aXRoIHJ1bnRpbWVfcG0/Cj4gPiA+ID4KPiA+ID4gPiBTYXZpbmcgZW5lcmd5IGRv
ZXNuJ3QgbWFrZSBtdWNoIHNlbnNlIGNvbXBhcmVkIHRvIHN5c3RlbSBzZWN1cml0eS4KPiA+ID4K
PiA+ID4gSSdtIG5vdCBzdXJlIHdoYXQgeW91IG1lYW4gYnkgc2VjdXJpdHkuCj4gPgo+ID4gUHJv
dGVjdCBzeXN0ZW0gaGFyZHdhcmUgZnJvbSBkYW1hZ2UuCj4gCj4gVGhlIHBvaW50IG9mIHJ1bnRp
bWVfcG0gaXMgdG8ga2VlcCB0aGUgZGV2aWNlIG9uIGFzIGxvbmcgYXMgaXQgaXMKPiB1c2VkLCBz
byBpdCB3b3VsZG4ndCBjaGFuZ2UgYW55dGhpbmcgdGhlcmUuCj4gCj4gSSBtZWFuLCB5b3UgY2Fu
IGV2ZW4gZW5hYmxlIGl0IGluIHRoZSBwcm9iZSBpZiB5b3Ugd2FudCwgbXkgcG9pbnQgaXMKPiB0
aGF0IHRoZSBob29rcyB0aGF0IHlvdSBoYXZlIGFyZSBleGFjdCBlcXVpdmFsZW50cyB0byB0aGUg
b25lIHByb3ZpZGVkCj4gYnkgcnVudGltZV9wbSBhbHJlYWR5LCBzbyB0aGVyZSdzIG5vIG5lZWQg
dG8gZGVmaW5lIHRoZW0gaW4gdGhlIGZpcnN0Cj4gcGxhY2UuCj4gCj4gTWF4aW1lCj4gCj4gLS0K
PiBNYXhpbWUgUmlwYXJkLCBCb290bGluCj4gRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdp
bmVlcmluZwo+IGh0dHBzOi8vYm9vdGxpbi5jb20KCgoKPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
