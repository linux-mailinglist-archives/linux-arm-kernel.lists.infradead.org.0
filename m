Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8481323BB1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 17:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dHulJyQz27V6u1lAz1fQ/ds4t1AFeoRhkaz6li1NYks=; b=u74YxHeymBqiBu
	BYOmIZrrEN7Fb2v/6u6PDmIxTlHOGg+3cZ0oyYa9QpiPBvn8Uq96bxVl/wb0cul6it6GnRntNLSLw
	AAnenXOzVl1tdl9mLMCVN4WpU7kTOq6Q5sTXpAdVCJBA2UaTFpPpo7CinPA0+UGSMVVLYSUIzdT4B
	atq0YpttN+NnBGZMhwsHHaJMPdUB3g6B6oaW6Lwn9V0JyiKziNeisb/TLrVjCfLk0pjPBEDfqtqS9
	Lx174S9MMJmozbc30O13M95ivQFx7I5nNNKXp10CPHCQX/hC1KBrROUDJDkFliIUanZIUdCbjcokk
	tCiHiMqK7mwZPLhIgbgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjtP-0005Go-Mk; Mon, 20 May 2019 15:07:59 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjsj-0004Ml-0n
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 15:07:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558364835; bh=TEr7i31yNx24HM5cWJqgaJZtfhPyh6xdxVF9Qq8QrB8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HnaRjJ3KC9vtsRLMjH40GJAQFZtQMiki01p2lAI6c+0A/ZgxPryJQlZeGV/WnPNlB
 X713wATpHj2aOsFTjPK+0AwXuE5JCSE+A7/DUckBwZYWVpSc0sBirvBRSGDWNzYQ7J
 sUbuR0EylqAHq8jyZG/ntcnbmM7o6R/tvbFCUUls=
Date: Mon, 20 May 2019 17:07:15 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 4/6] ARM: dts: sun8i: a83t: Add device node for CSI
 (Camera Sensor Interface)
Message-ID: <20190520150715.revitoh3edeps7du@core.my.home>
Mail-Followup-To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
References: <20190408165744.11672-5-wens@kernel.org>
 <20190409075804.4zrwjil7ie2gjigu@flea>
 <CAGb2v64CYV68Q0a7x5p-XabS74vaQWP3paPopodmqQPTOrq2gQ@mail.gmail.com>
 <20190409082818.z33mq2qrxethldzf@flea>
 <CAGb2v67pX+7ccihmGEWPKrXg8mMhht-vh37p2auWYgt=qGDA6A@mail.gmail.com>
 <20190409145225.2ltluiyqa5xha4zd@flea>
 <20190519135422.l2bnumyjr3dxehhx@core.my.home>
 <20190520111048.cnh435fnmz7esyks@flea>
 <20190520113854.ngyaw4mgki77gdbn@core.my.home>
 <20190520140550.hgywrzgmaswmguev@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520140550.hgywrzgmaswmguev@flea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_080718_366823_D778032A 
X-CRM114-Status: GOOD (  38.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 devicetree <devicetree@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Yong Deng <yong.deng@magewell.com>, Chen-Yu Tsai <wens@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMjAsIDIwMTkgYXQgMDQ6MDU6NTBQTSArMDIwMCwgTWF4aW1lIFJpcGFyZCB3
cm90ZToKPiBPbiBNb24sIE1heSAyMCwgMjAxOSBhdCAwMTozODo1NFBNICswMjAwLCBPbmTFmWVq
IEppcm1hbiB3cm90ZToKPiA+IEhpIE1heGltZSwKPiA+Cj4gPiBPbiBNb24sIE1heSAyMCwgMjAx
OSBhdCAwMToxMDo0OVBNICswMjAwLCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+ID4gPiBIaSBPbmTF
mWVqLAo+ID4gPgo+ID4gPiBPbiBTdW4sIE1heSAxOSwgMjAxOSBhdCAwMzo1NDoyMlBNICswMjAw
LCBPbmTFmWVqIEppcm1hbiB3cm90ZToKPiA+ID4gPiBPbiBUdWUsIEFwciAwOSwgMjAxOSBhdCAw
NDo1MjoyNVBNICswMjAwLCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+ID4gPiA+ID4gT24gVHVlLCBB
cHIgMDksIDIwMTkgYXQgMDQ6NDA6NDBQTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+ID4g
PiA+ID4gPiBPbiBUdWUsIEFwciA5LCAyMDE5IGF0IDQ6MjggUE0gTWF4aW1lIFJpcGFyZCA8bWF4
aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4g
PiBPbiBUdWUsIEFwciAwOSwgMjAxOSBhdCAwNDowNzozNFBNICswODAwLCBDaGVuLVl1IFRzYWkg
d3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiBPbiBUdWUsIEFwciA5LCAyMDE5IGF0IDM6NTggUE0gTWF4
aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+
ID4gPiA+IE9uIFR1ZSwgQXByIDA5LCAyMDE5IGF0IDEyOjU3OjQyQU0gKzA4MDAsIENoZW4tWXUg
VHNhaSB3cm90ZToKPiA+ID4gPiA+ID4gPiA+ID4gPiBGcm9tOiBDaGVuLVl1IFRzYWkgPHdlbnNA
Y3NpZS5vcmc+Cj4gPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiBUaGUgQTgz
VCBTb0MgaGFzIGEgY2FtZXJhIHNlbnNvciBpbnRlcmZhY2UgKGtub3duIGFzIENTSSBpbiBBbGx3
aW5uZXIKPiA+ID4gPiA+ID4gPiA+ID4gPiBsaW5nbyksIHdoaWNoIGlzIHNpbWlsYXIgdG8gdGhl
IG9uZSBmb3VuZCBvbiB0aGUgQTY0IGFuZCBIMy4gVGhlIG9ubHkKPiA+ID4gPiA+ID4gPiA+ID4g
PiBkaWZmZXJlbmNlIHNlZW1zIHRvIGJlIHRoYXQgc3VwcG9ydCBvZiBNSVBJIENTSSB0aHJvdWdo
IGEgY29ubmVjdGVkCj4gPiA+ID4gPiA+ID4gPiA+ID4gTUlQSSBDU0ktMiBicmlkZ2UuCj4gPiA+
ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiBBZGQgYSBkZXZpY2Ugbm9kZSBmb3Ig
aXQsIGFuZCBwaW5jdHJsIG5vZGVzIGZvciB0aGUgY29tbW9ubHkgdXNlZCBNQ0xLCj4gPiA+ID4g
PiA+ID4gPiA+ID4gYW5kIDgtYml0IHBhcmFsbGVsIGludGVyZmFjZS4gVGhlIHByb3BlcnR5IC9v
bWl0LWlmLW5vLXJlZi8gaXMgYWRkZWQgdG8KPiA+ID4gPiA+ID4gPiA+ID4gPiB0aGUgcGluY3Ry
bCBub2RlcyB0byBrZWVwIHRoZSBkZXZpY2UgdHJlZSBibG9iIHNpemUgZG93biBpZiB0aGV5IGFy
ZQo+ID4gPiA+ID4gPiA+ID4gPiA+IHVudXNlZC4KPiA+ID4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+
ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IENoZW4tWXUgVHNhaSA8d2Vuc0Bjc2llLm9yZz4K
PiA+ID4gPiA+ID4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ID4gPiA+ID4gPiAgYXJjaC9hcm0vYm9v
dC9kdHMvc3VuOGktYTgzdC5kdHNpIHwgMzEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kwo+ID4gPiA+ID4gPiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKQo+
ID4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3QuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4
M3QuZHRzaQo+ID4gPiA+ID4gPiA+ID4gPiA+IGluZGV4IGY3MzliODhlZmI1My4uMGM1MmY5NDVm
ZDVmIDEwMDY0NAo+ID4gPiA+ID4gPiA+ID4gPiA+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1
bjhpLWE4M3QuZHRzaQo+ID4gPiA+ID4gPiA+ID4gPiA+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L3N1bjhpLWE4M3QuZHRzaQo+ID4gPiA+ID4gPiA+ID4gPiA+IEBAIC02ODIsNiArNjgyLDIwIEBA
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICNpbnRlcnJ1cHQtY2Vs
bHMgPSA8Mz47Cj4gPiA+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICNncGlv
LWNlbGxzID0gPDM+Owo+ID4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgIC9vbWl0LWlmLW5vLXJlZi8KPiA+ID4gPiA+ID4gPiA+ID4gPiAr
ICAgICAgICAgICAgICAgICAgICAgY3NpXzhiaXRfcGFyYWxsZWxfcGluczogY3NpLThiaXQtcGFy
YWxsZWwtcGlucyB7Cj4gPiA+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcGlucyA9ICJQRTAiLCAiUEUyIiwgIlBFMyIsICJQRTYiLCAiUEU3IiwKPiA+ID4gPiA+
ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIlBFOCIsICJQ
RTkiLCAiUEUxMCIsICJQRTExIiwKPiA+ID4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIlBFMTIiLCAiUEUxMyI7Cj4gPiA+ID4gPiA+ID4gPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZnVuY3Rpb24gPSAiY3NpIjsKPiA+ID4gPiA+
ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ID4gPiA+ID4gPiA+ID4gPiAr
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIC9vbWl0LWlmLW5vLXJl
Zi8KPiA+ID4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgY3NpX21jbGtfcGlu
OiBjc2ktbWNsay1waW4gewo+ID4gPiA+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHBpbnMgPSAiUEUxIjsKPiA+ID4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBmdW5jdGlvbiA9ICJjc2kiOwo+ID4gPiA+ID4gPiA+ID4gPiA+ICsg
ICAgICAgICAgICAgICAgICAgICB9Owo+ID4gPiA+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4g
PiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgZW1hY19yZ21paV9waW5zOiBlbWFjLXJnbWlp
LXBpbnMgewo+ID4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHBpbnMgPSAiUEQyIiwgIlBEMyIsICJQRDQiLCAiUEQ1IiwgIlBENiIsICJQRDciLAo+ID4gPiA+
ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiUEQxMSIs
ICJQRDEyIiwgIlBEMTMiLCAiUEQxNCIsICJQRDE4IiwKPiA+ID4gPiA+ID4gPiA+ID4gPiBAQCAt
OTk0LDYgKzEwMDgsMjMgQEAKPiA+ID4gPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAg
ICAgaW50ZXJydXB0cyA9IDxHSUNfUFBJIDkgKEdJQ19DUFVfTUFTS19TSU1QTEUoOCkgfCBJUlFf
VFlQRV9MRVZFTF9ISUdIKT47Cj4gPiA+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgICB9Owo+
ID4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICBjc2k6
IGNhbWVyYUAxY2IwMDAwIHsKPiA+ID4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuOGktYTgzdC1jc2kiOwo+ID4gPiA+ID4gPiA+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgwMWNiMDAwMCAweDEwMDA+Owo+
ID4gPiA+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJ
Q19TUEkgODQgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gPiA+ID4gPiA+ID4gPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2N1IENMS19CVVNfQ1NJPiwKPiA+ID4gPiA+ID4g
PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjY3UgQ0xLX0NTSV9TQ0xL
PiwKPiA+ID4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZj
Y3UgQ0xLX0RSQU1fQ1NJPjsKPiA+ID4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgY2xvY2stbmFtZXMgPSAiYnVzIiwgIm1vZCIsICJyYW0iOwo+ID4gPiA+ID4gPiA+ID4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICByZXNldHMgPSA8JmNjdSBSU1RfQlVTX0NTST47Cj4gPiA+
ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICBjc2lfaW46IHBvcnQgewo+ID4gPiA+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ID4gPiA+ID4gPiA+ID4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+Owo+ID4gPiA+
ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gPiBJZiB3ZSBleHBlY3QgYSBzaW5nbGUgZW5wb2lu
dCwgdGhlbiB3ZSBkb24ndCBuZWVkIHRoZSBhZGRyZXNzLWNlbGxzCj4gPiA+ID4gPiA+ID4gPiA+
IGFuZCBzaXplLWNlbGxzIHByb3BlcnRpZXMuCj4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+
ID4gSSB3b3VsZG4ndCBiZXQgb24gYW55dGhpbmcuIFRoZSB3YXkgdGhlIFE4IHRhYmxldHMgZGlk
IGZyb250L2JhY2sgY2FtZXJhcwo+ID4gPiA+ID4gPiA+ID4gaXMga2luZCBvZiBnZW5pdXMgaWYg
bm90IHZlcnkgaGFja3kuIFRoZXkgaGF2ZSB0d28gImlkZW50aWNhbCIgc2Vuc29ycwo+ID4gPiA+
ID4gPiA+ID4gb24gdGhlIHNhbWUgSTJDIGJ1cyBhbmQgQ1NJIGJ1cywgd2l0aCBzaGFyZWQgcmVz
ZXQgbGluZSBidXQgc2VwYXJhdGUKPiA+ID4gPiA+ID4gPiA+IHNodXRkb3duIGxpbmVzLiBTaW5j
ZSB0aGV5IGFyZSBpZGVudGljYWwsIHRoZXkgYWxzbyBoYXZlIHRoZSBzYW1lIEkyQwo+ID4gPiA+
ID4gPiA+ID4gYWRkcmVzcy4gSSBoYXZlbid0IGZpZ3VyZWQgb3V0IGhvdyB0byBtb2RlbCB0aGlz
IGluIHRoZSBkZXZpY2UgdHJlZS4KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBUaGUg
cG9pbnQgaXMsIGl0J3MgcGVyZmVjdGx5IHBvc3NpYmxlIHRvIGhhdmUgdHdvIG9yIG1vcmUgc2Vu
c29ycyB1c2UKPiA+ID4gPiA+ID4gPiA+IHRoZSBzYW1lIGNvbnRyb2xsZXIsIHByb3ZpZGVkIG9u
bHkgb25lIGJlIGFjdGl2ZSBhdCBhIHRpbWUuCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBS
aWdodCwgYnV0IEkgZ3Vlc3MgdGhlIGNvbW1vbiBjYXNlIHdvdWxkIGJlIHRvIGhhdmUgYSBzaW5n
bGUgc2Vuc29yLAo+ID4gPiA+ID4gPiA+IHdoZXJlIHRoYXQgd291bGRuJ3QgYmUgbmVlZGVkLgo+
ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gSW4gb2RkIGNhc2VzLCB3ZSBjYW4gYWx3YXlzIHNw
ZWNpZnkgaXQgaW4gdGhlIERUUywgYW5kIGlmIGl0IGJlY29tZXMKPiA+ID4gPiA+ID4gPiBjb21t
b24gZW5vdWdoLCB3ZSBjYW4gbW92ZSBpdCB0byB0aGUgRFRTSS4KPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gTWFrZXMgc2Vuc2UuIERvIHlvdSB3YW50IG1lIHRvIHJlLXNwaW4/Cj4gPiA+ID4gPgo+
ID4gPiA+ID4gSWYgdGhlcmUncyBubyBvdGhlciBjb21tZW50LCB3ZSdsbCBmaXggaXQgd2hlbiBh
cHBseWluZy4KPiA+ID4gPgo+ID4gPiA+IFRoaXMgcGF0Y2ggc2VyaWVzIHNlZW1zIHRvIGhhdmUg
YmVlbiBmb3Jnb3R0ZW4uIEl0IGRvZXNuJ3Qgc2VlbSB0aGVyZSBhcmUgYW55Cj4gPiA+ID4gYmxv
Y2tlcnMuCj4gPiA+Cj4gPiA+IFNvcnJ5IGFib3V0IHRoYXQgOi8KPiA+ID4KPiA+ID4gPiBDYW4g
eW91IHBsZWFzZSBhcHBseSBpdCBub3c/IEkgaGF2ZSBzb21lIGZ1cnRoZXIgc2VyaWVzIChjYW1l
cmEgbW9kdWxlCj4gPiA+ID4gc3VwcG9ydCBmb3IgVEJTLUE3MTEpIHRoYXQgZGVwZW5kIG9uIHRo
aXMuCj4gPiA+Cj4gPiA+IFNvbWUgcGFydHMgb2YgaXQgd2lsbCBoYXZlIHRvIGJlIG1lcmdlZCB0
aHJvdWdoIHY0bDIsIGFuZCBJIGNhbid0Cj4gPiA+IGFwcGx5IHRob3NlIHBhdGNoZXMuCj4gPiA+
Cj4gPiA+IENhbiB5b3UgcmVzZW5kIHRoYXQgc2VyaWVzLCBhbmQgcGluZyBvbiBhIHJlZ3VsYXIg
YmFzaXMgKGxpa2Ugb25jZSBhCj4gPiA+IHdlZWspIGlmIHlvdSBkb24ndCBnZXQgYW55IGZlZWRi
YWNrPwo+ID4KPiA+IFlvdSBtZWFuIHRoaXMgc2VyaWVzIGZvciBBODN0IENTST8KPiAKPiBZZXMK
Ck9rLCBkb25lLiA6KQoKcmVnYXJkcywKCU9uZHJlagoKPiBNYXhpbWUKPiAKPiAtLQo+IE1heGlt
ZSBSaXBhcmQsIEJvb3RsaW4KPiBFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5n
Cj4gaHR0cHM6Ly9ib290bGluLmNvbQoKCgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
