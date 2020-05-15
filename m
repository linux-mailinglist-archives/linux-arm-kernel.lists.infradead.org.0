Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 796091D4D5E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 14:05:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tXnPpYQgejw5+h7hyYaorK8jwWE4IwAObKqTG780GmE=; b=aMQGryp7tC4FAN
	xiG6EQqyQDLC07dto8KoU7v1DuO5ngXLLwMSH3rfg3dxlm2jmkJq0kKXiZdGGpiej1wZ+KQxgfRsr
	Z6cZIDX1ZD5edsUcAWsd8gjdWKJSdtRhcVoJaf8Qip7zrJhrmRlFSASZ/HHn5v5DQ/qg553CEA15Q
	bfYmjOpSJrNrsS4tYP8cdIqyv0IVYYFI8BDKQodx0uyLf+5epDZ2pPi15f2vcrv8r3P9t/Diul1Om
	YzpyPNT9c1tBer4uj/IUq7eZ7Lf+y7190upF2+r8Y2XaD0Bzk8Q5D0I7Jj3CSCXFrP1Dl7toREIq0
	/k3CdVPNVmqFBAXrh3Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZ5t-0002qv-3K; Fri, 15 May 2020 12:05:37 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZ58-0000A7-Kk; Fri, 15 May 2020 12:04:52 +0000
Received: from mail-qk1-f175.google.com ([209.85.222.175]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MCsgS-1jQndg1sga-008saa; Fri, 15 May 2020 14:04:48 +0200
Received: by mail-qk1-f175.google.com with SMTP id n14so2181665qke.8;
 Fri, 15 May 2020 05:04:48 -0700 (PDT)
X-Gm-Message-State: AOAM532Y6TqtA/35AwWXP7O/uS7+xkB0RKtMVtkryG7+yLpAJzQXDz5y
 xG630Css8XspRBnLA12DzaoPdQsyAauNdHFUjQk=
X-Google-Smtp-Source: ABdhPJy/QisBXP8EQRdO9MZV12WEoweyNWMuyrh9ANXT/Y3Ielto24GQxnJVmqWTbMQYGO0VBAlJTfiYoaSJo5kMMAg=
X-Received: by 2002:ae9:ed95:: with SMTP id c143mr2964142qkg.394.1589544287159; 
 Fri, 15 May 2020 05:04:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200514075942.10136-1-brgl@bgdev.pl>
 <20200514075942.10136-11-brgl@bgdev.pl>
 <CAK8P3a3=xgbvqrSpCK5h96eRH32AA7xnoK2ossvT0-cLFLzmXA@mail.gmail.com>
 <CAMRc=MeypzZBHo6dJGKm4JujYyejqHxtdo7Ts95DXuL0VuMYCw@mail.gmail.com>
In-Reply-To: <CAMRc=MeypzZBHo6dJGKm4JujYyejqHxtdo7Ts95DXuL0VuMYCw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 15 May 2020 14:04:30 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0u53rHSW=72CnnbhrY28Z+9f=Yv2K-bbj5OD+2Ds4unA@mail.gmail.com>
Message-ID: <CAK8P3a0u53rHSW=72CnnbhrY28Z+9f=Yv2K-bbj5OD+2Ds4unA@mail.gmail.com>
Subject: Re: [PATCH v3 10/15] net: ethernet: mtk-eth-mac: new driver
To: Bartosz Golaszewski <brgl@bgdev.pl>
X-Provags-ID: V03:K1:bPQsiOq/Rxv+SAcVEfxK1fqOc+Hq07q7Njk6sRMlw5Lq9tNRk7/
 50qQmy4MOHxVg9gI3SusI+x4Mtu87Ly/8kLGCSyFyV+VqSrAHz7uJ5EPrjDhN/dE4evLgjn
 IRoJrIosuU1H5Rklws38uQP77kLjgqVTA9Bn1nKtgwhAUdX1HokuOVyPMAE6XyGK1TmYY5c
 DolDX2Ek61z8NXI/g0I3w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1axjd/mTbQE=:HNePToiSDMBw8k17QIPfBP
 kiH0Bz50jRuFMaMa7ZZ2eLW9rzeepR1cP8LzzHofYwkrHVcqPeuX8m+VbQHZjED1o2GJbt+cX
 Nv5SO7sYrBF1sA5RF/4JS8UXHxZTqUzalfnNfXuJsQi3Ro7ei+lbn781Vq8gB2lajBefK9PF6
 umzXnmfwt1T2pKjoIDCq5qfgmuJzt6yLnMd/brSFAh8P6Hw2lX4RYO+AYHJNVBCv6+S5xqDOf
 E9eOOiTLZExCJxflZN2581RhEv3bb3khvRhm/g7ocBfb0QIhnn8SlXh6p9GpvV8jLzqhKSRlb
 GgsNuKQD4s5R6lakHgyZiVo7jBj5ijPYMgq1BrJ3pvVoIVePGua7cGu2wbF3toV9W2aaP8Y37
 LY9jvnQoIYKqFElgMjGXrRdTtir52YknWCODLfLg1PUyF1n3ix34U4Q2QZtcq8pLPSmH52RVZ
 8ZqQ4ALrY69MqmwdWg+qT/5ytx7QK7dKT+b1TVF7gNxVyInQ/sLQrep0ZQ6zQKh3T4I4zcHSd
 p5ffmyFOGAHlct6KyzxXad1H/x7P8lFr4qCVNvJtk5/Fd4iNDv4Ys3HnZHuQCXQ3QIUqrt69h
 egx7Fbvi5n2ft8Wt+AnDCYIIpLZ814W2G+uhYE38lxch+eY29BJBr0g7TaX2nTu6Aou0oBN+X
 DCQ7K0hYs4HEgkAgHH1auCjqFNSEcUeAWblq3q8m1WNNyrwqsFLqvYkAHhAUg4qhhPkLdc5E8
 mz/etNkiK89gk6y9oSGUlU3SHLrvI8UsrTudyMhujwa8ca+kxpo2w6wh+Hk1IbAGX1ERN/bdW
 wLaZI5pxesBTU/7pDpFtiwN4NW0A+YFqz6aX4ALCuNsnDUVCfE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_050450_979337_BF1ACC25 
X-CRM114-Status: GOOD (  29.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Edwin Peer <edwin.peer@broadcom.com>, DTML <devicetree@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Jonathan Corbet <corbet@lwn.net>, Networking <netdev@vger.kernel.org>,
 Sean Wang <sean.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pedro Tsai <pedro.tsai@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Fabien Parent <fparent@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMTUsIDIwMjAgYXQgOToxMSBBTSBCYXJ0b3N6IEdvbGFzemV3c2tpIDxicmds
QGJnZGV2LnBsPiB3cm90ZToKPgo+IGN6dy4sIDE0IG1haiAyMDIwIG8gMTg6MTkgQXJuZCBCZXJn
bWFubiA8YXJuZEBhcm5kYi5kZT4gbmFwaXNhxYIoYSk6Cj4gPgo+ID4gT24gVGh1LCBNYXkgMTQs
IDIwMjAgYXQgMTA6MDAgQU0gQmFydG9zeiBHb2xhc3pld3NraSA8YnJnbEBiZ2Rldi5wbD4gd3Jv
dGU6Cj4gPiA+ICtzdGF0aWMgdW5zaWduZWQgaW50IG10a19tYWNfaW50cl9yZWFkX2FuZF9jbGVh
cihzdHJ1Y3QgbXRrX21hY19wcml2ICpwcml2KQo+ID4gPiArewo+ID4gPiArICAgICAgIHVuc2ln
bmVkIGludCB2YWw7Cj4gPiA+ICsKPiA+ID4gKyAgICAgICByZWdtYXBfcmVhZChwcml2LT5yZWdz
LCBNVEtfTUFDX1JFR19JTlRfU1RTLCAmdmFsKTsKPiA+ID4gKyAgICAgICByZWdtYXBfd3JpdGUo
cHJpdi0+cmVncywgTVRLX01BQ19SRUdfSU5UX1NUUywgdmFsKTsKPiA+ID4gKwo+ID4gPiArICAg
ICAgIHJldHVybiB2YWw7Cj4gPiA+ICt9Cj4gPgo+ID4gRG8geW91IGFjdHVhbGx5IG5lZWQgdG8g
cmVhZCB0aGUgcmVnaXN0ZXI/IFRoYXQgaXMgdXN1YWxseSBhIHJlbGF0aXZlbHkKPiA+IGV4cGVu
c2l2ZSBvcGVyYXRpb24sIHNvIGlmIHBvc3NpYmxlIHRyeSB0byB1c2UgY2xlYXIgdGhlIGJpdHMg
d2hlbgo+ID4geW91IGRvbid0IGNhcmUgd2hpY2ggYml0cyB3ZXJlIHNldC4KPiA+Cj4KPiBJIGRv
IGNhcmUsIEknbSBhZnJhaWQuIFRoZSByZXR1cm5lZCB2YWx1ZSBpcyBiZWluZyB1c2VkIGluIHRo
ZSBuYXBpCj4gcG9sbCBjYWxsYmFjayB0byBzZWUgd2hpY2ggcmluZyB0byBwcm9jZXNzLgoKSSBz
dXBwb3NlIHRoZSBvdGhlciBjYWxsZXJzIGFyZSBub3QgcGVyZm9ybWFuY2UgY3JpdGljYWwuCgpG
b3IgdGhlIHJ4IGFuZCB0eCBwcm9jZXNzaW5nLCBpdCBzaG91bGQgYmUgYmV0dGVyIHRvIGp1c3Qg
YWx3YXlzIGxvb2sgYXQKdGhlIHF1ZXVlIGRpcmVjdGx5IGFuZCBpZ25vcmUgdGhlIGlycSBzdGF0
dXMsIGluIHBhcnRpY3VsYXIgd2hlbiB5b3UKYXJlIGFscmVhZHkgaW4gcG9sbGluZyBtb2RlOiBz
dXBwb3NlIHlvdSByZWNlaXZlIHRlbiBmcmFtZXMgYXQgb25jZQphbmQgb25seSBwcm9jZXNzIGZp
dmUgYnV0IGNsZWFyIHRoZSBpcnEgZmxhZy4KCldoZW4gdGhlIHBvbGwgZnVuY3Rpb24gaXMgY2Fs
bGVkIGFnYWluLCB5b3Ugc3RpbGwgbmVlZCB0byBwcm9jZXNzIHRoZQpvdGhlcnMsIGJ1dCBJIHdv
dWxkIGFzc3VtZSB0aGF0IHRoZSBzdGF0dXMgdGVsbHMgeW91IHRoYXQgbm90aGluZwpuZXcgaGFz
IGFycml2ZWQgc28geW91IGRvbid0IHByb2Nlc3MgdGhlbSB1bnRpbCB0aGUgbmV4dCBpbnRlcnJ1
cHQuCgpGb3IgdGhlIHN0YXRpc3RpY3MsIEkgYXNzdW1lIHlvdSBkbyBuZWVkIHRvIGxvb2sgYXQg
dGhlIGlycSBzdGF0dXMsCmJ1dCB0aGlzIGRvZXNuJ3QgaGF2ZSB0byBiZSBkb25lIGluIHRoZSBw
b2xsIGZ1bmN0aW9uLiBIb3cgYWJvdXQKc29tZXRoaW5nIGxpa2U6CgotIGluIGhhcmRpcnEgY29u
dGV4dCwgcmVhZCB0aGUgaXJxIHN0YXR1cyB3b3JkCi0gaXJxIHJ4IG9yIHR4IGlycSBwZW5kaW5n
LCBjYWxsIG5hcGlfc2NoZWR1bGUKLSBpZiBzdGF0cyBpcnEgcGVuZGluZywgc2NoZWR1bGUgYSB3
b3JrIGZ1bmN0aW9uCi0gaW4gbmFwaSBwb2xsLCBwcm9jZXNzIGJvdGggcXVldWVzIHVudGlsIGVt
cHR5IG9yCiAgYnVkZ2V0IGV4aGF1c3RlZAotIGlmIHBhY2tldCBwcm9jZXNzaW5nIGNvbXBsZXRl
ZCBpbiBwb2xsIGZ1bmN0aW9uCiAgYWNrIHRoZSBpcnEgYW5kIGNoZWNrIGFnYWluLCBjYWxsIG5h
cGlfY29tcGxldGUKLSBpbiB3b3JrIGZ1bmN0aW9uLCBoYW5kbGUgc3RhdHMgaXJxLCB0aGVuIGFj
ayBpdAoKPiA+ID4gK3N0YXRpYyB2b2lkIG10a19tYWNfdHhfY29tcGxldGVfYWxsKHN0cnVjdCBt
dGtfbWFjX3ByaXYgKnByaXYpCj4gPiA+ICt7Cj4gPiA+ICsgICAgICAgc3RydWN0IG10a19tYWNf
cmluZyAqcmluZyA9ICZwcml2LT50eF9yaW5nOwo+ID4gPiArICAgICAgIHN0cnVjdCBuZXRfZGV2
aWNlICpuZGV2ID0gcHJpdi0+bmRldjsKPiA+ID4gKyAgICAgICBpbnQgcmV0Owo+ID4gPiArCj4g
PiA+ICsgICAgICAgZm9yICg7Oykgewo+ID4gPiArICAgICAgICAgICAgICAgbXRrX21hY19sb2Nr
KHByaXYpOwo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgICBpZiAoIW10a19tYWNfcmluZ19k
ZXNjc19hdmFpbGFibGUocmluZykpIHsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgbXRr
X21hY191bmxvY2socHJpdik7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+
ID4gPiArICAgICAgICAgICAgICAgfQo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgICByZXQg
PSBtdGtfbWFjX3R4X2NvbXBsZXRlX29uZShwcml2KTsKPiA+ID4gKyAgICAgICAgICAgICAgIGlm
IChyZXQpIHsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgbXRrX21hY191bmxvY2socHJp
dik7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gPiArICAgICAgICAg
ICAgICAgfQo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgICBpZiAobmV0aWZfcXVldWVfc3Rv
cHBlZChuZGV2KSkKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgbmV0aWZfd2FrZV9xdWV1
ZShuZGV2KTsKPiA+ID4gKwo+ID4gPiArICAgICAgICAgICAgICAgbXRrX21hY191bmxvY2socHJp
dik7Cj4gPiA+ICsgICAgICAgfQo+ID4gPiArfQo+ID4KPiA+IEl0IGxvb2tzIGxpa2UgbW9zdCBv
ZiB0aGUgc3R1ZmYgaW5zaWRlIG9mIHRoZSBsb29wIGNhbiBiZSBwdWxsZWQgb3V0Cj4gPiBhbmQg
b25seSBkb25lIG9uY2UgaGVyZS4KPiA+Cj4KPiBJIGRpZCB0aGF0IGluIG9uZSBvZiB0aGUgcHJl
dmlvdXMgc3VibWlzc2lvbnMgYnV0IGl0IHdhcyBwb2ludGVkIG91dAo+IHRvIG1lIHRoYXQgYSBw
YXJhbGxlbCBUWCBwYXRoIG1heSBmaWxsIHVwIHRoZSBxdWV1ZSBiZWZvcmUgSSB3YWtlIGl0LgoK
UmlnaHQsIEkgc2VlIHlvdSBwbHVnZ2VkIHRoYXQgaG9sZSwgaG93ZXZlciB0aGUgd2F5IHlvdSBo
b2xkIHRoZQpzcGlubG9jayBhY3Jvc3MgdGhlIGV4cGVuc2l2ZSBETUEgbWFuYWdlbWVudCBidXQg
dGhlbiBnaXZlIGl0CnVwIGluIGVhY2ggbG9vcCBpdGVyYXRpb24gZmVlbHMgbGlrZSB0aGlzIGlz
IG5vdCB0aGUgbW9zdCBlZmZpY2llbnQKd2F5LgoKVGhlIGVhc3kgd2F5IHdvdWxkIGJlIHRvIGp1
c3QgaG9sZCB0aGUgbG9jayBhY3Jvc3MgdGhlIGVudGlyZQpsb29wIGFuZCB0aGVuIGJlIHN1cmUg
eW91IGRvIGl0IHJpZ2h0LiBBbHRlcm5hdGl2ZWx5IHlvdSBjb3VsZAptaW5pbWl6ZSB0aGUgbG9j
a2luZyBhbmQgb25seSBkbyB0aGUgd2FrZXVwIGFmdGVyIHVwIGRvIHRoZSBmaW5hbAp1cGRhdGUg
dG8gdGhlIHRhaWwgcG9pbnRlciwgYXQgd2hpY2ggcG9pbnQgeW91IGtub3cgdGhlIHF1ZXVlIGlz
IG5vdApmdWxsIGJlY2F1c2UgeW91IGhhdmUganVzdCBmcmVlZCB1cCBhdCBsZWFzdCBvbmUgZW50
cnkuCgo+ID4gPiArc3RhdGljIGludCBtdGtfbWFjX3BvbGwoc3RydWN0IG5hcGlfc3RydWN0ICpu
YXBpLCBpbnQgYnVkZ2V0KQo+ID4gPiArewo+ID4gPiArICAgICAgIHN0cnVjdCBtdGtfbWFjX3By
aXYgKnByaXY7Cj4gPiA+ICsgICAgICAgdW5zaWduZWQgaW50IHN0YXR1czsKPiA+ID4gKyAgICAg
ICBpbnQgcmVjZWl2ZWQgPSAwOwo+ID4gPiArCj4gPiA+ICsgICAgICAgcHJpdiA9IGNvbnRhaW5l
cl9vZihuYXBpLCBzdHJ1Y3QgbXRrX21hY19wcml2LCBuYXBpKTsKPiA+ID4gKwo+ID4gPiArICAg
ICAgIHN0YXR1cyA9IG10a19tYWNfaW50cl9yZWFkX2FuZF9jbGVhcihwcml2KTsKPiA+ID4gKwo+
ID4gPiArICAgICAgIC8qIENsZWFuIHVwIFRYICovCj4gPiA+ICsgICAgICAgaWYgKHN0YXR1cyAm
IE1US19NQUNfQklUX0lOVF9TVFNfVE5UQykKPiA+ID4gKyAgICAgICAgICAgICAgIG10a19tYWNf
dHhfY29tcGxldGVfYWxsKHByaXYpOwo+ID4gPiArCj4gPiA+ICsgICAgICAgLyogUmVjZWl2ZSB1
cCB0byAkYnVkZ2V0IHBhY2tldHMgKi8KPiA+ID4gKyAgICAgICBpZiAoc3RhdHVzICYgTVRLX01B
Q19CSVRfSU5UX1NUU19GTlJDKQo+ID4gPiArICAgICAgICAgICAgICAgcmVjZWl2ZWQgPSBtdGtf
bWFjX3Byb2Nlc3NfcngocHJpdiwgYnVkZ2V0KTsKPiA+ID4gKwo+ID4gPiArICAgICAgIC8qIE9u
ZSBvZiB0aGUgY291bnRlciByZWFjaGVkIDB4ODAwMDAwMCAtIHVwZGF0ZSBzdGF0cyBhbmQgcmVz
ZXQgYWxsCj4gPiA+ICsgICAgICAgICogY291bnRlcnMuCj4gPiA+ICsgICAgICAgICovCj4gPiA+
ICsgICAgICAgaWYgKHN0YXR1cyAmIE1US19NQUNfUkVHX0lOVF9TVFNfTUlCX0NOVF9USCkgewo+
ID4gPiArICAgICAgICAgICAgICAgbXRrX21hY191cGRhdGVfc3RhdHMocHJpdik7Cj4gPiA+ICsg
ICAgICAgICAgICAgICBtdGtfbWFjX3Jlc2V0X2NvdW50ZXJzKHByaXYpOwo+ID4gPiArICAgICAg
IH0KPiA+ID4gKwo+ID4gPiArICAgICAgIGlmIChyZWNlaXZlZCA8IGJ1ZGdldCkKPiA+ID4gKyAg
ICAgICAgICAgICAgIG5hcGlfY29tcGxldGVfZG9uZShuYXBpLCByZWNlaXZlZCk7Cj4gPiA+ICsK
PiA+ID4gKyAgICAgICBtdGtfbWFjX2ludHJfdW5tYXNrX2FsbChwcml2KTsKPiA+ID4gKwo+ID4g
PiArICAgICAgIHJldHVybiByZWNlaXZlZDsKPiA+ID4gK30KPiA+Cj4gPiBJIHRoaW5rIHlvdSB3
YW50IHRvIGxlYXZlIChhdCBsZWFzdCBzb21lIG9mKSB0aGUgaW50ZXJydXB0cyBtYXNrZWQKPiA+
IGlmIHlvdXIgYnVkZ2V0IGlzIGV4aGF1c3RlZCwgdG8gYXZvaWQgZ2VuZXJhdGluZyB1bm5lY2Vz
c2FyeQo+ID4gaXJxcy4KPiA+Cj4KPiBUaGUgbmV0d29ya2luZyBzdGFjayBzaG91bGRuJ3QgcXVl
dWUgYW55IG5ldyBUWCBwYWNrZXRzIGlmIHRoZSBxdWV1ZQo+IGlzIHN0b3BwZWQgLSBpcyB0aGlz
IHJlYWxseSB3b3J0aCBjb21wbGljYXRpbmcgdGhlIGNvZGU/IExvb2tzIGxpa2UKPiBwcmVtYXR1
cmUgb3B0aW1pemF0aW9uIElNTy4KCkF2b2lkaW5nIElSUXMgaXMgb25lIG9mIHRoZSBjZW50cmFs
IGFzcGVjdHMgb2YgdXNpbmcgTkFQSSAtLSB0aGUgaWRlYQppcyB0aGF0IGVpdGhlciB5b3Uga25v
dyB0aGVyZSBpcyBtb3JlIHdvcmsgdG8gZG8gYW5kIHlvdSB3aWxsIGJlIGNhbGxlZAphZ2FpbiBp
biB0aGUgbmVhciBmdXR1cmUgd2l0aCBhZGRpdGlvbmFsIGJ1ZGdldCwgb3IgeW91IGVuYWJsZSBp
bnRlcnJ1cHRzCmFuZCB0aGUgaXJxIGhhbmRsZXIgY2FsbHMgbmFwaV9zY2hlZHVsZSwgYnV0IG5v
dCBib3RoLgoKVGhpcyBpcyBtb3N0bHkgYWJvdXQgUlggcHJvY2Vzc2luZywgd2hpY2ggaXMgbGlt
aXRlZCBieSB0aGUgYnVkZ2V0LApmb3IgVFggeW91IGFscmVhZHkgZnJlZSBhbGwgZGVzY3JpcHRv
cnMgcmVnYXJkbGVzcyBvZiB0aGUgYnVkZ2V0LgoKICAgICBBcm5kCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
