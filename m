Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1382A20EAA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 20:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWLHWlu0annpy7X15f+FVBGg/Wj1CrnXVXN+l1b4Yoo=; b=AaDmpl1D5hNTgW
	tnhSTVKqbBy5+bY2a/xdbqRmhzUGQ8sYmBicT4rymVFPA13+4X+cZZParawKQYqR0OaW+b2b2BWMK
	G4pSHhqJJHqfWt+mxdKe7zcUquI1Id+BjxguSm65kviQxkxwB9l32BiL86+a9R8iUrtfUwcBwcQuM
	CXNONqeX8qbAFugO3j1N3SRSnmWL8HYyZ+Cz3dS2wD3g9JrH1OFAPMrQnsBC1cSAxLmDel5x6ChVt
	s2c3oac2PFanQqhDsmemU6wc8tZWWgyWj/jc9Z3E+Sr+r7P7IceLIFbyaL9Hn1WRc7uwF6VHNZYqt
	f1V08SaZoO136N2FkAng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRL8T-0003WS-Q8; Thu, 16 May 2019 18:29:45 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRL8M-0003W6-IL
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 18:29:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558031376; bh=+nSXq6K8D525DqumN8hX/hXw6BuzgBYTSZ5zpX1yqMo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DvT1vnFG1JzohjaD6Ipxouz0agYvhmjyLA4av1glnZElsR6SKmCs24cQ3jDKBcXeY
 EiTHL44Sla99BoABrvWO89x5ew6seLkkze3Xo+O1l3rl+9VkiFIC86sMICKadMHXsh
 3qL1H4pV+dSAgYzGYTsYIn3r79CJOpqw9CKrUunI=
Date: Thu, 16 May 2019 20:29:36 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
Message-ID: <20190516182936.h6xdzp3gtg4ikave@core.my.home>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEExFWv5A5mhpV7afQT=AaYx2ko5QnfbM6HvfuTgT1Na=ssOcw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_112939_108596_647B86F4 
X-CRM114-Status: GOOD (  20.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

SGkgWWFuZ3RhbywKCnRoYW5rIHlvdSBmb3Igd29yayBvbiB0aGlzIGRyaXZlci4KCk9uIEZyaSwg
TWF5IDE3LCAyMDE5IGF0IDAyOjA2OjUzQU0gKzA4MDAsIEZyYW5rIExlZSB3cm90ZToKPiBISSBP
bmTFmWVqLAo+IAo+IE9uIE1vbiwgTWF5IDEzLCAyMDE5IGF0IDY6MTYgQU0gT25kxZllaiBKaXJt
YW4gPG1lZ291c0BtZWdvdXMuY29tPiB3cm90ZToKPiA+ID4gKwo+ID4gPiArLyogVGVtcCBVbml0
OiBtaWxsaWRlZ3JlZSBDZWxzaXVzICovCj4gPiA+ICtzdGF0aWMgaW50IHRzZW5zX3JlZzJ0ZW1w
KHN0cnVjdCB0c2Vuc19kZXZpY2UgKnRtZGV2LAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgaW50IHJlZykKPiA+Cj4gPiBQbGVhc2UgbmFtZSBhbGwgZnVuY3Rpb25zIHNvIHRoYXQg
dGhleSBhcmUgbW9yZSBjbGVhcmx5IGlkZW50aWZpYWJsZQo+ID4gaW4gc3RhY2sgdHJhY2VzIGFz
IGJlbG9uZ2luZyB0byB0aGlzIGRyaXZlci4gRm9yIGV4YW1wbGU6Cj4gPgo+ID4gICBzdW44aV90
aHNfcmVnMnRlbXAKPiA+Cj4gPiBUaGUgc2FtZSBhcHBsaWVzIGZvciBhbGwgdHNlbnNfKiBmdW5j
dGlvbnMgYmVsb3cuIHRzZW5zXyogaXMgdG9vCj4gPiBnZW5lcmljLgo+IAo+IERvbmUgYnV0IG5v
IHN1bjhpX3Roc19yZWcydGVtcC4KPiAKPiB0aHNfcmVnMnRlbSgpIHNob3VsZCBiZSBhIGdlbmVy
aWMgZnVuYy4KPiBJIHRoaW5rIGl0IHNob3VsZCBiZSBzdWl0YWJsZSBmb3IgYWxsIHBsYXRmb3Jt
c++8jCBzbyBubyBwbGF0Zm9ybSBwcmVmaXguCgpZb3UndmUgbWlzc2VkIG15IHBvaW50LiBUaGUg
ZHJpdmVyIG5hbWUgaXMgc3VuOGlfdGhlcm1hbCBhbmQgaWYgeW91IGdldAphbmQgb29wcyBmcm9t
IHRoZSBrZXJuZWwgeW91J2xsIGdldCBhIHN0YWNrIHRyYWNlIHdoZXJlIHRoZXJlIGFyZSBqdXN0
IGZ1bmN0aW9uCm5hbWVzLiBJZiB5b3UgdXNlIHRvbyBnZW5lcmljIGZ1bmN0aW9uIG5hbWVzLCBp
dCB3aWxsIG5vdCBiZSBjbGVhciB3aGljaApkcml2ZXIgaXMgb29wc2luZy4KCiAgLSBzdW44aV90
aHNfcmVnMnRlbXAgd2lsbCB0ZWxsIHlvdSBtdWNoIG1vcmUgY2xlYXJseSB3aGVyZSB0byBzZWFy
Y2ggdGhhbgogIC0gdGhzX3JlZzJ0ZW1wCgpPZiBjb3Vyc2UgeW91IGNhbiBhbHdheXMgZ3JlcCwg
YnV0IG1vc3QgdGhlcm1hbCBkcml2ZXJzIGFyZSB0aGVybWFsIHNlbnNvciAodGhzKQpkcml2ZXJz
LCBhbmQgaWYgbXVsdGlwbGUgb2YgdGhlbSB1c2VkIHRoaXMgdG9vLWdlbmVyaWMgbmFtaW5nIHNj
aGVtZSB5b3UnZApoYXZlIGhhcmQgdGltZSBkZWJ1Z2dpbmcuCgpMb29rIGF0IG90aGVyIHRoZXJt
YWwgZHJpdmVycy4gVGhleSB1c3VhbGx5IGVuY29kZSBkcml2ZXIgbmFtZSBpbiB0aGUgZnVuY3Rp
b24KbmFtZXMgdG8gaGVscCB3aXRoIGlkZW50aWZpY2F0aW9uIChldmVuIGlmIHRoZXNlIGFyZSBz
dGF0aWMgZHJpdmVyLWxvY2FsCmZ1bmN0aW9ucykuCgo+ID4gPiArc3RhdGljIGludCB0c2Vuc19w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gPiArewo+ID4gPiArICAgICBz
dHJ1Y3QgdHNlbnNfZGV2aWNlICp0bWRldjsKPiA+ID4gKyAgICAgc3RydWN0IGRldmljZSAqZGV2
ID0gJnBkZXYtPmRldjsKPiA+ID4gKyAgICAgaW50IHJldDsKPiA+ID4gKwo+ID4gPiArICAgICB0
bWRldiA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqdG1kZXYpLCBHRlBfS0VSTkVMKTsKPiA+
ID4gKyAgICAgaWYgKCF0bWRldikKPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsK
PiA+ID4gKwo+ID4gPiArICAgICB0bWRldi0+ZGV2ID0gZGV2Owo+ID4gPiArICAgICB0bWRldi0+
Y2hpcCA9IG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YSgmcGRldi0+ZGV2KTsKPiA+ID4gKyAgICAg
aWYgKCF0bWRldi0+Y2hpcCkKPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiA+
ID4gKwo+ID4gPiArICAgICByZXQgPSB0c2Vuc19pbml0KHRtZGV2KTsKPiA+ID4gKyAgICAgaWYg
KHJldCkKPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiArCj4gPiA+ICsgICAg
IHJldCA9IHRzZW5zX3JlZ2lzdGVyKHRtZGV2KTsKPiA+ID4gKyAgICAgaWYgKHJldCkKPiA+ID4g
KyAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4KPiA+IFdoeSBzcGxpdCB0aGlzIG91dCBvZiBw
cm9iZSBpbnRvIHNlcGFyYXRlIGZ1bmN0aW9ucz8KPiA+Cj4gPiA+ICsgICAgIHJldCA9IHRtZGV2
LT5jaGlwLT5lbmFibGUodG1kZXYpOwo+ID4gPiArICAgICBpZiAocmV0KQo+ID4gPiArICAgICAg
ICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ICsKPiA+ID4gKyAgICAgcGxhdGZvcm1fc2V0X2RydmRh
dGEocGRldiwgdG1kZXYpOwo+ID4gPiArCj4gPiA+ICsgICAgIHJldHVybiByZXQ7Cj4gPiA+ICt9
Cj4gPiA+ICsKPiA+ID4gK3N0YXRpYyBpbnQgdHNlbnNfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gPiA+ICt7Cj4gPiA+ICsgICAgIHN0cnVjdCB0c2Vuc19kZXZpY2UgKnRt
ZGV2ID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7Cj4gPiA+ICsKPiA+ID4gKyAgICAgdG1k
ZXYtPmNoaXAtPmRpc2FibGUodG1kZXYpOwo+ID4gPiArCj4gPiA+ICsgICAgIHJldHVybiAwOwo+
ID4gPiArfQo+ID4gPiArCj4gPiA+ICtzdGF0aWMgaW50IHN1bjUwaV90aGVybWFsX2VuYWJsZShz
dHJ1Y3QgdHNlbnNfZGV2aWNlICp0bWRldikKPiA+ID4gK3sKPiA+ID4gKyAgICAgaW50IHJldCwg
dmFsOwo+ID4gPiArCj4gPiA+ICsgICAgIHJldCA9IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQodG1k
ZXYtPnJlc2V0KTsKPiA+ID4gKyAgICAgaWYgKHJldCkKPiA+ID4gKyAgICAgICAgICAgICByZXR1
cm4gcmV0Owo+ID4gPiArCj4gPiA+ICsgICAgIHJldCA9IGNsa19wcmVwYXJlX2VuYWJsZSh0bWRl
di0+YnVzX2Nsayk7Cj4gPiA+ICsgICAgIGlmIChyZXQpCj4gPiA+ICsgICAgICAgICAgICAgZ290
byBhc3NlcnRfcmVzZXQ7Cj4gPiA+ICsKPiA+ID4gKyAgICAgcmV0ID0gdHNlbnNfY2FsaWJyYXRl
KHRtZGV2KTsKPiA+ID4gKyAgICAgaWYgKHJldCkKPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4g
cmV0Owo+ID4KPiA+IElmIHRoaXMgZmFpbHMgKGl0IG1heSBsaWtlbHkgZmFpbCB3aXRoIEVQUk9C
RV9ERUZFUikgeW91IGFyZSBsZWF2aW5nIHJlc2V0Cj4gPiBkZWFzc2VydGVkLCBhbmQgY2xvY2sg
ZW5hYmxlZC4KPiA+Cj4gPiBPdmVyYWxsLCBJIHRoaW5rLCByZXNldC9jbG9jayBtYW5hZ2VtZW50
IGFuZCBudm1lbSByZWFkaW5nIHdpbGwgYmUgY29tbW9uCj4gPiB0byBhbGwgdGhlIEhXIHZhcmlh
bnRzLCBzbyBpdCBkb2Vzbid0IG1ha2UgbXVjaCBzZW5zZSBzcGxpdHRpbmcgaXQgb3V0Cj4gPiBv
ZiBwcm9iZSBpbnRvIHNlcGFyYXRlIGZ1bmN0aW9ucywgYW5kIG1ha2VzIGl0IG1vcmUgZXJyb3Ig
cHJvbmUuCj4gCj4gT3VyIGxvbmctdGVybSBnb2FsIGlzIHRvIHN1cHBvcnQgYWxsIHBsYXRmb3Jt
cy4KPiBCYWNpY2FsbHQgdGhlcmUgaXMgYSBkaWZmZXJlbmNyIGJldHdlZW4gZWFjaCBnZW5lcmF0
aW9uLgo+IFNvIEkgZmVlbCBpdCBuZWNlc3NhcnkgdG8gaXNvbGF0ZSB0aGVzZSBkaWZmZXJlbmNl
cy4KPiAKPiBNYXliZToKPiBBdCBzb21lIHBvaW50LCB3ZSBjYW4gZHJhdyBhIHBhcnQgb2YgdGhl
IHB1YmxpYyBwYXJ0IGFuZCBwbGF0Zm9ybQo+IGRpZmZlcmVuY2UgaW50byBkaWZmZXJlbnQKPiBm
aWxlcy4gc29tZXRoaW5nIGxpa2UgcWNvbSB0aGVybWFsIGRyaXZlci4KCkkgdW5kZXJzdGFuZCwg
YnV0IEkgd3JvdGUgdGhzIGRyaXZlcnMgZm9yIEgzL0g1L0E4M1QgYW5kIGl0IHNvIGZhciBpdCBs
b29rcyBsaWtlCmFsbCBvZiB0aGVtIHdvdWxkIHNoYXJlIHRoZXNlIDMgY2FsbHMuCgpZb3UnbGwg
YmUgZW5hYmxpbmcgY2xvY2svcmVzZXQgYW5kIGNhbGxpYnJhdGluZyBldmVyeXdoZXJlLiBTbyBw
dXR0aW5nIHRoaXMgdG8KcGVyLVNvQyBmdW5jdGlvbiBzZWVtcyBwcmVtYXR1cmUuCgp0aGFuayB5
b3UgYW5kIHJlZ2FyZHMsCglvLgoKPiBSZWdhcmRzLAo+IFlhbmd0YW8KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
