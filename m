Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C562A792
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 03:25:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bjf0oYRWaKSMR8ZW1RmuAiU57Z0X/UDH2ySHyPel+WE=; b=p4GEZy7mxORndq
	94C2TDUsAk97ennHBG8tJfd5FMTw0D6CQIZ77r2NmCf5oQjAK0w93jzU4UdzmGARH9uGK+6UobgyH
	FMAc+ZjkUc5PCQfUcSYg1TySf048auzy9xZLRfxRJ0hU0OchTOaWVB34sQmQnrboFkRYmJl8WcwOs
	kbnuZ7S1MPzzzO9ZGamL3pA89yg1j3eV6RKDwEKM4siSgMTbQRDVzRga+rOby8H7FKeq26hpLxlnW
	a3qhsUzHsEBG3WK/vkdoQd8SxqhItiu6HFsyaMCvfBUaoB1AZITC2+S0J5S54C59Jy9sUWJhYmwic
	umqlA1gHfFOlGklFztjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUhuO-0007Qg-4a; Sun, 26 May 2019 01:25:08 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUhuC-0007Pj-3L
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 01:24:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558833885; bh=vvKWkGbp9K2vIliSPzvDEraQISpPMpRwGfH6Zi4LJd4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Oxb0w8/z/TFyS6ZmcEarY5+TIxaVwuNA6TUXSEQ3SiFSPdI/nMZGijsppYnTUG/M/
 lJ2b9JECtdxy4o8UojXPuIIlNXC6gmmHHJ+vdmvGbF86+mefO7jPQKGGlcyjWBodep
 cXx0Gle207O0oDNP0DPNyf+RzVduWqxpfr9U+FJI=
Date: Sun, 26 May 2019 03:24:44 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
Message-ID: <20190526012444.yrcellg3xdrt3bo5@core.my.home>
Mail-Followup-To: Frank Lee <tiny.windzz@gmail.com>, rui.zhang@intel.com,
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, robh+dt@kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, catalin.marinas@arm.com,
 will.deacon@arm.com, David Miller <davem@davemloft.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan.Cameron@huawei.com,
 Nicolas Ferre <nicolas.ferre@microchip.com>, paulmck@linux.ibm.com,
 Andy Gross <andy.gross@linaro.org>, olof@lixom.net,
 bjorn.andersson@linaro.org, Jagan Teki <jagan@amarulasolutions.com>,
 marc.w.gonzalez@free.fr, stefan.wahren@i2se.com,
 enric.balletbo@collabora.com, devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux PM <linux-pm@vger.kernel.org>
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512221612.ubmknvim4utnqpl4@core.my.home>
 <CAEExFWv5A5mhpV7afQT=AaYx2ko5QnfbM6HvfuTgT1Na=ssOcw@mail.gmail.com>
 <20190516182936.h6xdzp3gtg4ikave@core.my.home>
 <CAEExFWvDO3wJd6wp1hFudf3EGF0NixgKAwAd5-b1=VLF+7-jCw@mail.gmail.com>
 <20190519142239.eolisexp5mrdyafz@core.my.home>
 <CAEExFWsc_YB8NORW4ULfuoicL=xr_oAdtHSaxz4ELv53qvCAsQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEExFWsc_YB8NORW4ULfuoicL=xr_oAdtHSaxz4ELv53qvCAsQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_182456_480227_7E7F7A12 
X-CRM114-Status: GOOD (  20.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, paulmck@linux.ibm.com,
 stefan.wahren@i2se.com, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Andy Gross <andy.gross@linaro.org>, rui.zhang@intel.com,
 devicetree@vger.kernel.org, marc.w.gonzalez@free.fr,
 Eduardo Valentin <edubezval@gmail.com>, olof@lixom.net, robh+dt@kernel.org,
 Jonathan.Cameron@huawei.com, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux PM <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 enric.balletbo@collabora.com, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gWWFuZ3RhbywKCk9uIFN1biwgTWF5IDI2LCAyMDE5IGF0IDAyOjQ4OjEzQU0gKzA4MDAs
IEZyYW5rIExlZSB3cm90ZToKPiBPbiBTdW4sIE1heSAxOSwgMjAxOSBhdCAxMDoyMiBQTSBPbmTF
mWVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+IHdyb3RlOgo+ID4KPiA+IEkga25vdywgSSBk
b24ndCB0aGluayBpdCBuZWVkcyB0byBiZSBwZXItc29jLiBUaGVzZSBhY3Rpb25zIGFyZSBhbGwg
c2hhcmVkIGJ5Cj4gPiBhbGwgU29Dcy4gTWF5YmUgd2l0aCBhbiBleGNlcHRpb24gdGhhdCBzb21l
IFNvQ3MgbWF5IG5lZWQgb25lIG1vcmUgY2xvY2ssIGJ1dAo+ID4gdGhhdCBjYW4gYmUgbWFkZSBv
cHRpb25hbGx5LXJlcXVpcmVkIGJ5IHNvbWUgZmxhZyBpbiBzdHJ1Y3Qgc3VueGlfdGhlcm1hbF9j
aGlwLgo+ID4KPiA+IE9ubHkgaGlnaGx5IFNvQyBzcGVjaWZpYyB0aGluZyBpcyBjb25maWd1cmlu
ZyB0aGUgVEhTIHJlZ2lzdGVycyBmb3Igc2FtcGxpbmcKPiA+IGZyZXF1ZW5jeS9hdmVyYWdpbmcv
ZW5hYmxpbmcgaW50ZXJydXB0cy4gVGhlIHJlc2V0L2Nsb2NrIGVuYWJsZSBpcyBnZW5lcmljLCBh
bmQKPiA+IGFscmVhZHkgYWJzdHJhY3RlZCBieSB0aGUgY2xvY2svcmVzZXQgZnJhbWV3b3JrLgo+
ID4KPiA+IFNvIHdoYXQgSSBzdWdnZXN0IGlzIGhhdmluZzoKPiA+Cj4gPiBzdW54aV90aHNfZW5h
YmxlKCkKPiA+ICAgICAgICAgcmVzZXQgZGVhc3NlcnQKPiA+ICAgICAgICAgYnVzIGNsb2NrIHBy
ZXBhcmUgZW5hYmxlCj4gPiAgICAgICAgIG9wdGlvbmFsbHkgbW9kdWxlIGNsb2NrIHByZXBhcmUg
ZW5hYmxlIChpbiB0aGUgZnV0dXJlKQo+ID4gICAgICAgICBjYWxsIHBlci1zb2MgY2FsaWJyYXRp
b24KPiA+ICAgICAgICAgY2FsbCBwZXItc29jIHNldHVwIGNhbGxiYWNrCj4gPgo+ID4gc3VueGlf
dGhzX2Rpc2FibGUoKQo+ID4gICAgICAgICByZXNldCBhc3NlcnQKPiA+ICAgICAgICAgYnVzIGNs
b2NrIHVucHJlcGFyZSBkaXNhYmxlCj4gPiAgICAgICAgIG9wdGlvbmFsbHkgbW9kdWxlIGNsb2Nr
IHVucHJlcGFyZSBkaXNhYmxlCj4gPgo+ID4gQW5kIGlmIHlvdSBjb3VsZCBtb3ZlIGRldm1fbnZt
ZW1fY2VsbF9nZXQgdG8gcHJvYmUgdGhhdCBzaG91bGQgbWFrZSBwZXItU29DCj4gPiBjYWxpYnJh
dGlvbiBjYWxsYmFjayBhbHNvIGxlc3MgcmVwZXRpdGl2ZSBhbmQgY291bGQgYXZvaWQgdW5kb2lu
ZyB0aGUgZW5hYmxlCj4gPiBpbiBjYXNlIGl0IHJldHVybnMgRVBST0JFX0RFRkVSICh3aGljaCBp
cyBwb3NzaWJsZSkuCj4gPgo+ID4gQWxsIHRoaXMgc2hvdWxkIG1ha2UgaXQgZWFzaWVyIHRvIHN1
cHBvcnQgUE0gaW4gdGhlIGZ1dHVyZSBhbmQgYWRkIGxlc3MKPiA+IGN1bWJlcnNvbWUgdG8gYWRk
IHN1cHBvcnQgZm9yIEE4M1QgYW5kIEgzL0g1Lgo+ID4KPiA+IEJUVywgd2hhdCBhcmUgeW91ciBw
bGFucyBmb3IgbW9yZSBTb0Mgc3VwcG9ydD8gSSdkIGxpa2UgdG8gYWRkIHN1cHBvcnQgZm9yCj4g
PiBBODNUIGFuZCBIMy9INSwgbWF5YmUgZXZlbiBkdXJpbmcgdGhlIDUuMyBjeWNsZSBpZiB0aGlz
IGRyaXZlciBoYXBwZW5zIHRvIGxhbmQKPiA+IGVhcmx5IGVub3VnaC4gSWYgeW91IGRvbid0IGhh
dmUgYW55IHBsYW5zIEknbGwgdGFrZSBpdCBvbi4KPiA+Cj4gCj4gSSBwbGFuIHRvIHN1cHBvcnQg
aDMgYW5kIGEzMyBsYXRlci4KPiBDYW4geW91IHN1cHBvcnQgb3RoZXIgcGxhdGZvcm1zPwoKWWVz
LCBJIGNhbiBkbyBBODNULiBINSBpcyBzaW1pbGFyICh0aGUgc2FtZT8pIGFzIEgzLgoKdGhhbmsg
eW91IGFuZCByZWdhcmRzLAoJby4KCj4gQ2hlZXJzLAo+IFlhbmd0YW8KPiAKPiA+IHRoYW5rIHlv
dSBhbmQgcmVnYXJkcywKPiA+ICAgICAgICAgby4KPiA+Cj4gPiA+ID4KPiA+ID4gPiB0aGFuayB5
b3UgYW5kIHJlZ2FyZHMsCj4gPiA+ID4gICAgICAgICBvLgo+ID4gPiA+Cj4gPiA+ID4gPiBSZWdh
cmRzLAo+ID4gPiA+ID4gWWFuZ3Rhbwo+ID4gPgo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdAo+ID4gPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+ID4gaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBs
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
