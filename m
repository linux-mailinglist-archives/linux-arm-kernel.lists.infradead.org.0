Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A11226FE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 16:23:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ku9S7PyTeSBToH4twIq2ZwwA8Yfn2pN3Lm3UR6faRE=; b=jG6kX1GF0H2+wS
	+XqfBMuWQTCKj1A7BWqmhckxOidT8S7VPM6qAShmDTUsviEIQ0T7/Vr4EYSGvjBYSb7BeIqDGaaRv
	T+IfnQfiHbNjVGSYtNOjdeEbByUvGt+35d9oAcjFvS29pA6A5a5aCNX//+lTQrSXh4EWp3R2GeOt7
	lK/fiBlkLhqzFqpdAvgzN4otQ5frivWrV4B9fBinvD5+UWVdvZbHjH2uIsMXlZwMfyQ4kYTN1kuDa
	rMql5/XAt7vx9pC3OY8Nt3DoY5K8Z7HnmRni7n2fChbojZiMze3s0wYRjDmd4Xwb6i7fpgUpOxPcY
	GfA+ThH7dsXjcIraGIjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSMiB-0000DU-N8; Sun, 19 May 2019 14:22:51 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSMi3-0000D3-43
 for linux-arm-kernel@lists.infradead.org; Sun, 19 May 2019 14:22:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558275760; bh=lFF/AdVO9omdk1uyvjkzJYRIbqcQEkaQzcuTPAnqh4U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cV97mwD3nF9Z06u79LQgsT1o028s5wCQnA0408IymvQPuQI5rKEdY8m5dFchP8EPO
 xZsfbl6rUP8Ka9h7enBDJ/l2QqbyHFRHTIJRnNf8lZhUwPyzsJfnZYWAkZYZMdRYeb
 4iDwT2iUSUDJ2DLD1nqHSbbTdFGkjuaRtdQYEQKo=
Date: Sun, 19 May 2019 16:22:39 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
Message-ID: <20190519142239.eolisexp5mrdyafz@core.my.home>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEExFWvDO3wJd6wp1hFudf3EGF0NixgKAwAd5-b1=VLF+7-jCw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_072243_661554_F186753A 
X-CRM114-Status: GOOD (  34.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

SGVsbG8gWWFuZ3RhbywKCk9uIFNhdCwgTWF5IDE4LCAyMDE5IGF0IDEyOjM0OjU3QU0gKzA4MDAs
IEZyYW5rIExlZSB3cm90ZToKPiBISSwKPiAKPiBPbiBGcmksIE1heSAxNywgMjAxOSBhdCAyOjI5
IEFNIE9uZMWZZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4gd3JvdGU6Cj4gPgo+ID4gSGkg
WWFuZ3RhbywKPiA+Cj4gPiB0aGFuayB5b3UgZm9yIHdvcmsgb24gdGhpcyBkcml2ZXIuCj4gPgo+
ID4gT24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgMDI6MDY6NTNBTSArMDgwMCwgRnJhbmsgTGVlIHdy
b3RlOgo+ID4gPiBISSBPbmTFmWVqLAo+ID4gPgo+ID4gPiBPbiBNb24sIE1heSAxMywgMjAxOSBh
dCA2OjE2IEFNIE9uZMWZZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4gd3JvdGU6Cj4gPiA+
ID4gPiArCj4gPiA+ID4gPiArLyogVGVtcCBVbml0OiBtaWxsaWRlZ3JlZSBDZWxzaXVzICovCj4g
PiA+ID4gPiArc3RhdGljIGludCB0c2Vuc19yZWcydGVtcChzdHJ1Y3QgdHNlbnNfZGV2aWNlICp0
bWRldiwKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgcmVnKQo+ID4g
PiA+Cj4gPiA+ID4gUGxlYXNlIG5hbWUgYWxsIGZ1bmN0aW9ucyBzbyB0aGF0IHRoZXkgYXJlIG1v
cmUgY2xlYXJseSBpZGVudGlmaWFibGUKPiA+ID4gPiBpbiBzdGFjayB0cmFjZXMgYXMgYmVsb25n
aW5nIHRvIHRoaXMgZHJpdmVyLiBGb3IgZXhhbXBsZToKPiA+ID4gPgo+ID4gPiA+ICAgc3VuOGlf
dGhzX3JlZzJ0ZW1wCj4gPiA+ID4KPiA+ID4gPiBUaGUgc2FtZSBhcHBsaWVzIGZvciBhbGwgdHNl
bnNfKiBmdW5jdGlvbnMgYmVsb3cuIHRzZW5zXyogaXMgdG9vCj4gPiA+ID4gZ2VuZXJpYy4KPiA+
ID4KPiA+ID4gRG9uZSBidXQgbm8gc3VuOGlfdGhzX3JlZzJ0ZW1wLgo+ID4gPgo+ID4gPiB0aHNf
cmVnMnRlbSgpIHNob3VsZCBiZSBhIGdlbmVyaWMgZnVuYy4KPiA+ID4gSSB0aGluayBpdCBzaG91
bGQgYmUgc3VpdGFibGUgZm9yIGFsbCBwbGF0Zm9ybXPvvIwgc28gbm8gcGxhdGZvcm0gcHJlZml4
Lgo+ID4KPiA+IFlvdSd2ZSBtaXNzZWQgbXkgcG9pbnQuIFRoZSBkcml2ZXIgbmFtZSBpcyBzdW44
aV90aGVybWFsIGFuZCBpZiB5b3UgZ2V0Cj4gPiBhbmQgb29wcyBmcm9tIHRoZSBrZXJuZWwgeW91
J2xsIGdldCBhIHN0YWNrIHRyYWNlIHdoZXJlIHRoZXJlIGFyZSBqdXN0IGZ1bmN0aW9uCj4gPiBu
YW1lcy4gSWYgeW91IHVzZSB0b28gZ2VuZXJpYyBmdW5jdGlvbiBuYW1lcywgaXQgd2lsbCBub3Qg
YmUgY2xlYXIgd2hpY2gKPiA+IGRyaXZlciBpcyBvb3BzaW5nLgo+ID4KPiA+ICAgLSBzdW44aV90
aHNfcmVnMnRlbXAgd2lsbCB0ZWxsIHlvdSBtdWNoIG1vcmUgY2xlYXJseSB3aGVyZSB0byBzZWFy
Y2ggdGhhbgo+ID4gICAtIHRoc19yZWcydGVtcAo+ID4KPiA+IE9mIGNvdXJzZSB5b3UgY2FuIGFs
d2F5cyBncmVwLCBidXQgbW9zdCB0aGVybWFsIGRyaXZlcnMgYXJlIHRoZXJtYWwgc2Vuc29yICh0
aHMpCj4gPiBkcml2ZXJzLCBhbmQgaWYgbXVsdGlwbGUgb2YgdGhlbSB1c2VkIHRoaXMgdG9vLWdl
bmVyaWMgbmFtaW5nIHNjaGVtZSB5b3UnZAo+ID4gaGF2ZSBoYXJkIHRpbWUgZGVidWdnaW5nLgo+
ID4KPiA+IExvb2sgYXQgb3RoZXIgdGhlcm1hbCBkcml2ZXJzLiBUaGV5IHVzdWFsbHkgZW5jb2Rl
IGRyaXZlciBuYW1lIGluIHRoZSBmdW5jdGlvbgo+ID4gbmFtZXMgdG8gaGVscCB3aXRoIGlkZW50
aWZpY2F0aW9uIChldmVuIGlmIHRoZXNlIGFyZSBzdGF0aWMgZHJpdmVyLWxvY2FsCj4gPiBmdW5j
dGlvbnMpLgo+ID4KPiAKPiBDYW4gd2UgY2hhbmdlIHRvIHN1bnhpX3Roc18gcHJlZml4PwoKSXQg
c2hvdWxkIHByb2JhYmx5IG1hdGNoIHRoZSBkcml2ZXIgbmFtZSwgYnV0IHllcywgdGhhdCdzIGJl
dHRlci4KCj4gPiA+ID4gPiArc3RhdGljIGludCB0c2Vuc19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQo+ID4gPiA+ID4gK3sKPiA+ID4gPiA+ICsgICAgIHN0cnVjdCB0c2Vuc19k
ZXZpY2UgKnRtZGV2Owo+ID4gPiA+ID4gKyAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYt
PmRldjsKPiA+ID4gPiA+ICsgICAgIGludCByZXQ7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAg
ICB0bWRldiA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqdG1kZXYpLCBHRlBfS0VSTkVMKTsK
PiA+ID4gPiA+ICsgICAgIGlmICghdG1kZXYpCj4gPiA+ID4gPiArICAgICAgICAgICAgIHJldHVy
biAtRU5PTUVNOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgdG1kZXYtPmRldiA9IGRldjsK
PiA+ID4gPiA+ICsgICAgIHRtZGV2LT5jaGlwID0gb2ZfZGV2aWNlX2dldF9tYXRjaF9kYXRhKCZw
ZGV2LT5kZXYpOwo+ID4gPiA+ID4gKyAgICAgaWYgKCF0bWRldi0+Y2hpcCkKPiA+ID4gPiA+ICsg
ICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgICBy
ZXQgPSB0c2Vuc19pbml0KHRtZGV2KTsKPiA+ID4gPiA+ICsgICAgIGlmIChyZXQpCj4gPiA+ID4g
PiArICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgICBy
ZXQgPSB0c2Vuc19yZWdpc3Rlcih0bWRldik7Cj4gPiA+ID4gPiArICAgICBpZiAocmV0KQo+ID4g
PiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiA+Cj4gPiA+ID4gV2h5IHNwbGl0
IHRoaXMgb3V0IG9mIHByb2JlIGludG8gc2VwYXJhdGUgZnVuY3Rpb25zPwo+ID4gPiA+Cj4gPiA+
ID4gPiArICAgICByZXQgPSB0bWRldi0+Y2hpcC0+ZW5hYmxlKHRtZGV2KTsKPiA+ID4gPiA+ICsg
ICAgIGlmIChyZXQpCj4gPiA+ID4gPiArICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ID4g
PiArCj4gPiA+ID4gPiArICAgICBwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCB0bWRldik7Cj4g
PiA+ID4gPiArCj4gPiA+ID4gPiArICAgICByZXR1cm4gcmV0Owo+ID4gPiA+ID4gK30KPiA+ID4g
PiA+ICsKPiA+ID4gPiA+ICtzdGF0aWMgaW50IHRzZW5zX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQo+ID4gPiA+ID4gK3sKPiA+ID4gPiA+ICsgICAgIHN0cnVjdCB0c2Vuc19k
ZXZpY2UgKnRtZGV2ID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7Cj4gPiA+ID4gPiArCj4g
PiA+ID4gPiArICAgICB0bWRldi0+Y2hpcC0+ZGlzYWJsZSh0bWRldik7Cj4gPiA+ID4gPiArCj4g
PiA+ID4gPiArICAgICByZXR1cm4gMDsKPiA+ID4gPiA+ICt9Cj4gPiA+ID4gPiArCj4gPiA+ID4g
PiArc3RhdGljIGludCBzdW41MGlfdGhlcm1hbF9lbmFibGUoc3RydWN0IHRzZW5zX2RldmljZSAq
dG1kZXYpCj4gPiA+ID4gPiArewo+ID4gPiA+ID4gKyAgICAgaW50IHJldCwgdmFsOwo+ID4gPiA+
ID4gKwo+ID4gPiA+ID4gKyAgICAgcmV0ID0gcmVzZXRfY29udHJvbF9kZWFzc2VydCh0bWRldi0+
cmVzZXQpOwo+ID4gPiA+ID4gKyAgICAgaWYgKHJldCkKPiA+ID4gPiA+ICsgICAgICAgICAgICAg
cmV0dXJuIHJldDsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsgICAgIHJldCA9IGNsa19wcmVwYXJl
X2VuYWJsZSh0bWRldi0+YnVzX2Nsayk7Cj4gPiA+ID4gPiArICAgICBpZiAocmV0KQo+ID4gPiA+
ID4gKyAgICAgICAgICAgICBnb3RvIGFzc2VydF9yZXNldDsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+
ICsgICAgIHJldCA9IHRzZW5zX2NhbGlicmF0ZSh0bWRldik7Cj4gPiA+ID4gPiArICAgICBpZiAo
cmV0KQo+ID4gPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiA+Cj4gPiA+ID4g
SWYgdGhpcyBmYWlscyAoaXQgbWF5IGxpa2VseSBmYWlsIHdpdGggRVBST0JFX0RFRkVSKSB5b3Ug
YXJlIGxlYXZpbmcgcmVzZXQKPiA+ID4gPiBkZWFzc2VydGVkLCBhbmQgY2xvY2sgZW5hYmxlZC4K
PiA+ID4gPgo+ID4gPiA+IE92ZXJhbGwsIEkgdGhpbmssIHJlc2V0L2Nsb2NrIG1hbmFnZW1lbnQg
YW5kIG52bWVtIHJlYWRpbmcgd2lsbCBiZSBjb21tb24KPiA+ID4gPiB0byBhbGwgdGhlIEhXIHZh
cmlhbnRzLCBzbyBpdCBkb2Vzbid0IG1ha2UgbXVjaCBzZW5zZSBzcGxpdHRpbmcgaXQgb3V0Cj4g
PiA+ID4gb2YgcHJvYmUgaW50byBzZXBhcmF0ZSBmdW5jdGlvbnMsIGFuZCBtYWtlcyBpdCBtb3Jl
IGVycm9yIHByb25lLgo+ID4gPgo+ID4gPiBPdXIgbG9uZy10ZXJtIGdvYWwgaXMgdG8gc3VwcG9y
dCBhbGwgcGxhdGZvcm1zLgo+ID4gPiBCYWNpY2FsbHQgdGhlcmUgaXMgYSBkaWZmZXJlbmNyIGJl
dHdlZW4gZWFjaCBnZW5lcmF0aW9uLgo+ID4gPiBTbyBJIGZlZWwgaXQgbmVjZXNzYXJ5IHRvIGlz
b2xhdGUgdGhlc2UgZGlmZmVyZW5jZXMuCj4gPiA+Cj4gPiA+IE1heWJlOgo+ID4gPiBBdCBzb21l
IHBvaW50LCB3ZSBjYW4gZHJhdyBhIHBhcnQgb2YgdGhlIHB1YmxpYyBwYXJ0IGFuZCBwbGF0Zm9y
bQo+ID4gPiBkaWZmZXJlbmNlIGludG8gZGlmZmVyZW50Cj4gPiA+IGZpbGVzLiBzb21ldGhpbmcg
bGlrZSBxY29tIHRoZXJtYWwgZHJpdmVyLgo+ID4KPiA+IEkgdW5kZXJzdGFuZCwgYnV0IEkgd3Jv
dGUgdGhzIGRyaXZlcnMgZm9yIEgzL0g1L0E4M1QgYW5kIGl0IHNvIGZhciBpdCBsb29rcyBsaWtl
Cj4gPiBhbGwgb2YgdGhlbSB3b3VsZCBzaGFyZSB0aGVzZSAzIGNhbGxzLgo+ID4KPiA+IFlvdSds
bCBiZSBlbmFibGluZyBjbG9jay9yZXNldCBhbmQgY2FsbGlicmF0aW5nIGV2ZXJ5d2hlcmUuIFNv
IHB1dHRpbmcgdGhpcyB0bwo+ID4gcGVyLVNvQyBmdW5jdGlvbiBzZWVtcyBwcmVtYXR1cmUuCj4g
Cj4gSW4gZmFjdCwgZW5hbGJlIGFuZCBkaXNhYmxlIGFyZSB0aGUgc3VzcGVuZCBhbmQgcmVzdW1l
IGZ1bmN0aW9ucy4oUE0KPiBjYWxsYmFjayB3aWxsIGJlIGFkZGVkIGluIHRoZSBmdXR1cmUpCj4g
V2hlbiBleGl0aW5nIGZyb20gczJyYW0sIHRoZSByZWdpc3RlciB3aWxsIGJlY29tZSB0aGUgaW5p
dGlhbCB2YWx1ZS4KPiBXZSBuZWVkIHRvIGRvIGFsbCB0aGUgd29yaywgZW5hYmxpbmcgcmVzZXQv
Y2xrICxjYWxpYnJhdGluZyBhbmQKPiBpbml0aWFsaXppbmcgb3RoZXIgcmVnLgo+IAo+IFNvIEkg
dGhpbmsgaXQgaXMgbm8gbmVlZCB0byBwdXQgZW5hYmxpbmcgcmVzZXQvY2xrIGFuZCBjYWxpYnJh
dGluZyB0bwo+IHByb2JlIGZ1bmMsIGFuZCBJJ2QgbGlrZQo+IHRvIGtlZXAgZW5hYmxlIGFuZCBk
aXNhYmxlIGZ1bmMuCgpJIGtub3csIEkgZG9uJ3QgdGhpbmsgaXQgbmVlZHMgdG8gYmUgcGVyLXNv
Yy4gVGhlc2UgYWN0aW9ucyBhcmUgYWxsIHNoYXJlZCBieQphbGwgU29Dcy4gTWF5YmUgd2l0aCBh
biBleGNlcHRpb24gdGhhdCBzb21lIFNvQ3MgbWF5IG5lZWQgb25lIG1vcmUgY2xvY2ssIGJ1dAp0
aGF0IGNhbiBiZSBtYWRlIG9wdGlvbmFsbHktcmVxdWlyZWQgYnkgc29tZSBmbGFnIGluIHN0cnVj
dCBzdW54aV90aGVybWFsX2NoaXAuCgpPbmx5IGhpZ2hseSBTb0Mgc3BlY2lmaWMgdGhpbmcgaXMg
Y29uZmlndXJpbmcgdGhlIFRIUyByZWdpc3RlcnMgZm9yIHNhbXBsaW5nCmZyZXF1ZW5jeS9hdmVy
YWdpbmcvZW5hYmxpbmcgaW50ZXJydXB0cy4gVGhlIHJlc2V0L2Nsb2NrIGVuYWJsZSBpcyBnZW5l
cmljLCBhbmQKYWxyZWFkeSBhYnN0cmFjdGVkIGJ5IHRoZSBjbG9jay9yZXNldCBmcmFtZXdvcmsu
CgpTbyB3aGF0IEkgc3VnZ2VzdCBpcyBoYXZpbmc6CgpzdW54aV90aHNfZW5hYmxlKCkKCXJlc2V0
IGRlYXNzZXJ0CglidXMgY2xvY2sgcHJlcGFyZSBlbmFibGUKCW9wdGlvbmFsbHkgbW9kdWxlIGNs
b2NrIHByZXBhcmUgZW5hYmxlIChpbiB0aGUgZnV0dXJlKQoJY2FsbCBwZXItc29jIGNhbGlicmF0
aW9uCgljYWxsIHBlci1zb2Mgc2V0dXAgY2FsbGJhY2sKCnN1bnhpX3Roc19kaXNhYmxlKCkKCXJl
c2V0IGFzc2VydAoJYnVzIGNsb2NrIHVucHJlcGFyZSBkaXNhYmxlCglvcHRpb25hbGx5IG1vZHVs
ZSBjbG9jayB1bnByZXBhcmUgZGlzYWJsZQoKQW5kIGlmIHlvdSBjb3VsZCBtb3ZlIGRldm1fbnZt
ZW1fY2VsbF9nZXQgdG8gcHJvYmUgdGhhdCBzaG91bGQgbWFrZSBwZXItU29DCmNhbGlicmF0aW9u
IGNhbGxiYWNrIGFsc28gbGVzcyByZXBldGl0aXZlIGFuZCBjb3VsZCBhdm9pZCB1bmRvaW5nIHRo
ZSBlbmFibGUKaW4gY2FzZSBpdCByZXR1cm5zIEVQUk9CRV9ERUZFUiAod2hpY2ggaXMgcG9zc2li
bGUpLgoKQWxsIHRoaXMgc2hvdWxkIG1ha2UgaXQgZWFzaWVyIHRvIHN1cHBvcnQgUE0gaW4gdGhl
IGZ1dHVyZSBhbmQgYWRkIGxlc3MKY3VtYmVyc29tZSB0byBhZGQgc3VwcG9ydCBmb3IgQTgzVCBh
bmQgSDMvSDUuCgpCVFcsIHdoYXQgYXJlIHlvdXIgcGxhbnMgZm9yIG1vcmUgU29DIHN1cHBvcnQ/
IEknZCBsaWtlIHRvIGFkZCBzdXBwb3J0IGZvcgpBODNUIGFuZCBIMy9INSwgbWF5YmUgZXZlbiBk
dXJpbmcgdGhlIDUuMyBjeWNsZSBpZiB0aGlzIGRyaXZlciBoYXBwZW5zIHRvIGxhbmQKZWFybHkg
ZW5vdWdoLiBJZiB5b3UgZG9uJ3QgaGF2ZSBhbnkgcGxhbnMgSSdsbCB0YWtlIGl0IG9uLgoKdGhh
bmsgeW91IGFuZCByZWdhcmRzLAogCW8uCgo+ID4KPiA+IHRoYW5rIHlvdSBhbmQgcmVnYXJkcywK
PiA+ICAgICAgICAgby4KPiA+Cj4gPiA+IFJlZ2FyZHMsCj4gPiA+IFlhbmd0YW8KPiAKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
