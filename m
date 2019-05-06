Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A17215328
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 19:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTKWvnBFjtoFcNvMBfk4CewlUjpxk5WmQs65z2s2sxs=; b=kNtX757coz0kQS
	M9R3kqoJ3S3qJRQdZVp5v0F5BQaTiwvr74b6lcxSOWfZtZIC+ImMXLAs0lMBR7fTPb47jsFoMEz+l
	TZ7fFxkO8zc6a1FHwZkiMavvpis6rgDzMVEl3fJ6K/7D5hXRH0KuvNQtTRsI/qXf8Kt7h4ySqA/y7
	3PVfw5AdiaGd/YvkQh4aAUzzJgwT6z6ykd4Vz6grioXCNoZrT2HBHcrWS7t5LsxAEeRtsE80xhkuw
	B7MQryVb/U5YsSFQU1CYG3VVvi2HWmmGh4UYN3QQJTWsgIwmJnbDnQQENx0jCpqWITfH18mBKj1H5
	UGv/7xbaqg8/f/k3t94w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNhpw-0001dc-NS; Mon, 06 May 2019 17:55:36 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNhpo-0001dF-M0
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 17:55:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1557165326; bh=QToEKXP2eCsa3a89ivPJya44poxVDY+W0mrcVNncgzU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aC+4w2+sYJQXzcI226MvyxCEq28Ds0mPf9srDIxrQGAflss/0ZPhrSV2Fq/xNlJiO
 iHF6yRftWmuTOR1UssD3uq4Cn9LYZD+6TXm7P04pXINVmEB8dJ9StUX5vVAeHxxNeg
 Nqv6HcP8aHxISL+7r3vHuQLtMuaFF6fx5+DUJY2M=
Date: Mon, 6 May 2019 19:55:25 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH 1/7] iio: adc: sun4i-gpadc: rework for support multiple
 thermal sensor
Message-ID: <20190506175525.swc5u7j6ntry7v3g@core.my.home>
Mail-Followup-To: Frank Lee <tiny.windzz@gmail.com>,
 Icenowy Zheng <icenowy@aosc.io>,
 Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 lars@metafoo.de, Maxime Ripard <maxime.ripard@bootlin.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-iio@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 robh+dt@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, pmeerw@pmeerw.net,
 knaack.h@gmx.de, Lee Jones <lee.jones@linaro.org>,
 Jonathan Cameron <jic23@kernel.org>
References: <20190503072813.2719-1-tiny.windzz@gmail.com>
 <20190503072813.2719-2-tiny.windzz@gmail.com>
 <20190505162215.3594f77d@archlinux>
 <20190506122807.4u323iys74jddcet@flea>
 <282ccf0979e6c58effd0e177917bdf824c32f64e.camel@aosc.io>
 <CAEExFWusPoxtkGCoA+3gXq69cXZEfjZW+UpHW_0UfrcjpLmaXg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEExFWusPoxtkGCoA+3gXq69cXZEfjZW+UpHW_0UfrcjpLmaXg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_105529_231364_801A3A17 
X-CRM114-Status: GOOD (  33.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 lars@metafoo.de, Maxime Ripard <maxime.ripard@bootlin.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-iio@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>, robh+dt@kernel.org,
 Jonathan Cameron <jic23@kernel.org>, pmeerw@pmeerw.net, knaack.h@gmx.de,
 Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBUdWUsIE1heSAwNywgMjAxOSBhdCAwMTowODozOUFNICswODAwLCBGcmFuayBMZWUg
d3JvdGU6Cj4gT24gVHVlLCBNYXkgNywgMjAxOSBhdCAxMjo1MiBBTSBJY2Vub3d5IFpoZW5nIDxp
Y2Vub3d5QGFvc2MuaW8+IHdyb3RlOgo+ID4KPiA+IOWcqCAyMDE5LTA1LTA25LiA55qEIDE0OjI4
ICswMjAw77yMTWF4aW1lIFJpcGFyZOWGmemBk++8mgo+ID4gPiBIaSwKPiA+ID4KPiA+ID4gT24g
U3VuLCBNYXkgMDUsIDIwMTkgYXQgMDQ6MjI6MTVQTSArMDEwMCwgSm9uYXRoYW4gQ2FtZXJvbiB3
cm90ZToKPiA+ID4gPiBPbiBGcmksICAzIE1heSAyMDE5IDAzOjI4OjA3IC0wNDAwCj4gPiA+ID4g
WWFuZ3RhbyBMaSA8dGlueS53aW5kenpAZ21haWwuY29tPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+
ID4gRm9yIHNvbWUgU09DcywgdGhlcmUgYXJlIG1vcmUgdGhhbiBvbmUgdGhlcm1hbCBzZW5zb3Is
IGFuZCB0aGVyZQo+ID4gPiA+ID4gYXJlCj4gPiA+ID4gPiBjdXJyZW50bHkgZm91ciBzZW5zb3Jz
IG9uIHRoZSBBODAuIFNvIHdlIG5lZWQgdG8gZG8gc29tZSB3b3JrIGluCj4gPiA+ID4gPiBvcmRl
cgo+ID4gPiA+ID4gdG8gc3VwcG9ydCBtdWx0aXBsZSB0aGVybWFsIHNlbnNvcnM6Cj4gPiA+ID4g
Pgo+ID4gPiA+ID4gICAxKSBhZGQgc2Vuc29yX2NvdW50IGluIGdwYWRjX2RhdGEuCj4gPiA+ID4g
PiAgIDIpIGludHJvZHVjZSBzdW40aV9zZW5zb3JfdHpkIGluIHN1bjRpX2dwYWRjX2lpbywgdG8g
c3VwcG9ydAo+ID4gPiA+ID4gbXVsdGlwbGUKPiA+ID4gPiA+ICAgICAgdGhlcm1hbF96b25lX2Rl
dmljZSBhbmQgZGlzdGluZ3Vpc2ggYmV0d2VlbiBkaWZmZXJlbnQKPiA+ID4gPiA+IHNlbnNvcnMu
Cj4gPiA+ID4gPiAgIDMpIG1vZGlmeSByZWFkIHRlbXBlcmF0dXJlIGFuZCBpbml0aWFsaXphdGlv
biBmdW5jdGlvbi4KPiA+ID4gPgo+ID4gPiA+IFRoaXMgY29tbWVudCBkb2Vzbid0IG1lbnRpb24g
dGhlIGRldm0gY2hhbmdlLiBJZiBpdCBoYWQgaXQgd291bGQKPiA+ID4gPiBoYXZlCj4gPiA+ID4g
cmFpc2VkIGltbWVkaWF0ZSBhbGFybSBiZWxscy4KPiA+ID4gPgo+ID4gPiA+IEknbSBhbHNvIG5v
dCBrZWVuIG9uIHRoZSB3ZWIgb2YgcG9pbnRlcnMgdGhhdCB0aGlzIGRyaXZlciBpcwo+ID4gPiA+
IHN0ZWFkaWx5Cj4gPiA+ID4gZXZvbHZpbmcuICBJIGNhbid0IGltbWVkaWF0ZWx5IHNlZSBob3cg
dG8gcmVkdWNlIHRoYXQgY29tcGxleGl0eQo+ID4gPiA+IGhvd2V2ZXIuCj4gPiA+Cj4gPiA+IFNv
IEkgbWlnaHQgYmUgcmVzcG9uc2libGUgZm9yIHRoYXQsIGFuZCBsb29raW5nIGJhY2ssIHRoaXMg
aGFzIGJlZW4gYQo+ID4gPiBtaXN0YWtlLgo+ID4gPgo+ID4gPiBUaGlzIGRyaXZlciB3YXMgaW5p
dGFsbHkgcHV0IHRvZ2V0aGVyIHRvIHN1cHBvcnQgYSBjb250cm9sbGVyIGZvdW5kCj4gPiA+IGlu
Cj4gPiA+IG9sZGVyIChBMTAgdXAgdG8gQTMxKSBBbGx3aW5uZXIgU29Dcy4gVGhpcyBjb250cm9s
bGVyIGhhZCBhbiBBREMKPiA+ID4gZHJpdmVyIHRoYXQgY291bGQgYmUgb3BlcmF0ZWQgYXMgYSB0
b3VjaHNjcmVlbiBjb250cm9sbGVyLCBhbmQgd2FzCj4gPiA+IHByb3ZpZGluZyBhIENQVSB0ZW1w
ZXJhdHVyZSBzZW5zb3IgYW5kIGEgZ2VuZXJhbCBwdXJwb3NlIEFEQy4KPiA+ID4KPiA+ID4gSG93
ZXZlciwgd2UgYWxyZWFkeSBoYWQgYSBkcml2ZXIgZm9yIHRoYXQgY29udHJvbGxlciBpbiBkcml2
ZXJzL2lucHV0Cj4gPiA+IHRvIHJlcG9ydCB0aGUgQ1BVIHRlbXBlcmF0dXJlLCBhbmQgdGhlIG9u
ZSBpbiBJSU8gd2FzIGludHJvZHVjZWQgdG8KPiA+ID4gc3VwcG9ydCB0aGUgZ2VuZXJhbCBwdXJw
b3NlIEFEQyAoYW5kIHRoZSBDUFUgdGVtcGVyYXR1cmUpLiBUaGUgbG9uZwo+ID4gPiB0ZXJtIGdv
YWwgd2FzIHRvIGFkZCB0aGUgdG91Y2hzY3JlZW4gZmVhdHVyZSBhcyB3ZWxsIGV2ZW50dWFsbHkg
c28KPiA+ID4gdGhhdCB3ZSBjb3VsZCByZW1vdmUgdGhlIG9uZSBpbiBkcml2ZXJzL2lucHV0LiBU
aGF0IGRpZG4ndCBoYXBwZW4uCj4gPiA+Cj4gPiA+IEF0IHRoZSBzYW1lIHRpbWUsIHRoZSBBbGx3
aW5uZXIgaGFyZHdhcmUgc2xvd2x5IGV2b2x2ZWQgdG8gcmVtb3ZlIHRoZQo+ID4gPiB0b3VjaHNj
cmVlbiBhbmQgQURDIGZlYXR1cmVzLCBhbmQgb25seSBrZWVwIHRoZSBDUFUgdGVtcGVyYXR1cmUK
PiA+ID4gcmVhZG91dC4gSXQgdGhlbiBldm9sdmVkIGZ1cnRoZXIgb24gdG8gc3VwcG9ydCBtdWx0
aXBsZSB0ZW1wZXJhdHVyZXMKPiA+ID4gKGZvciBkaWZmZXJlbnQgY2x1c3RlcnMsIHRoZSBHUFUs
IGFuZCBzbyBvbikuCj4gPiA+Cj4gPiA+IFNvLCB0b2RheSwgd2UncmUgaW4gYSBzaXR1YXRpb24g
d2hlcmUgSSB3YXMgcHVzaGluZyBldmVyeXRoaW5nIGludG8KPiA+ID4gdGhhdCBJSU8gZHJpdmVy
cyBzaW5jZSB0aGVyZSB3YXMgc2ltaWxpcmF0aWVzIGJldHdlZW4gYWxsIHRoZQo+ID4gPiBnZW5l
cmF0aW9ucywgYnV0IHRoZSBmYWN0IHRoYXQgd2UgaGF2ZSB0byBzdXBwb3J0IHNvIG1hbnkgb2Rk
IGNhc2VzCj4gPiA+IChEVCBiaW5kaW5ncyBjb21wYXRpYmlsaXR5LCBjb250cm9sbGVycyB3aXRo
IGFuZCB3aXRob3V0IEFEQywgZXRjKQo+ID4gPiB0aGF0IGl0IGJlY29tZXMgYSByZWFsIG1lc3Mu
Cj4gPiA+Cj4gPiA+IEFuZCB0aGF0IG1lc3MgaXNuJ3QgcmVhbGx5IHVzZWQgYnkgYW55Ym9keSwg
c2luY2Ugd2Ugd2FudCB0byBoYXZlIHRoZQo+ID4gPiB0b3VjaHNjcmVlbi4KPiA+ID4KPiA+ID4g
VGhlcmUncyBvbmx5IG9uZSBTb0MgdGhhdCBpcyBzdXBwb3J0ZWQgb25seSBieSB0aGF0IGRyaXZl
ciwgd2hpY2ggaXMKPiA+ID4gdGhlIEEzMyB0aGF0IG9ubHkgaGFkIGEgQ1BVIHRlbXBlcmF0dXJl
IHJlYWRvdXQsIGFuZCBpcyBzdGlsbCBwcmV0dHkKPiA+ID4gc2ltaWxhciB0byB0aGUgbGF0ZXN0
IFNvQyBmcm9tIEFsbHdpbm5lciAodGhhdCBpcyBzdXBwb3J0ZWQgYnkgdGhpcwo+ID4gPiBzZXJp
ZXMpLgo+ID4gPgo+ID4gPiBJIGd1ZXNzLCBmb3IgZXZlcnlvbmUncyBzYW5pdHkgYW5kIGluIG9y
ZGVyIHRvIG5vdCBzdGFsbCB0aGlzCj4gPiA+IGZ1cnRoZXIsCj4gPiA+IGl0IHdvdWxkIGp1c3Qg
YmUgYmV0dGVyIHRvIGNyZWF0ZSBhbiBod21vbiBkcml2ZXIgZm9yIHRoZSBBMzMgKGFuZAo+ID4g
PiBvbndhcmRzLCBpbmNsdWRpbmcgdGhlIEg2KSBmb3IgdGhlIFNvQyB0aGF0IGp1c3QgaGF2ZSB0
aGUgdGVtcGVyYXR1cmUKPiA+ID4gcmVhZG91dCBmZWF0dXJlLiBBbmQgZm9yIHRoZSBvbGRlciBT
b0MsIHdlIGp1c3Qga2VlcCB0aGUgb2xkZXIgZHJpdmVyCj4gPiA+IHVuZGVyIGlucHV0Ly4gT25j
ZSB0aGUgQTMzIGlzIHN1cHBvcnRlZCwgd2UnbGwgcmVtb3ZlIHRoZSBkcml2ZXIgaW4KPiA+ID4g
SUlPIChhbmQgdGhlIHJlbGF0ZWQgYml0cyBpbiBkcml2ZXJzL21mZCkuCj4gCj4gYSBod21vbiBk
cml2ZXIgb3IgYSB0aGVybWFsIGRyaXZlcu+8nwo+IAo+ID4KPiA+IEkgdGhpbmsgYSB0aGVybWFs
IGRyaXZlciBpcyBiZXR0ZXIuCj4gCj4gVGhpcyBpcyB3aGF0IEkgaG9wZSB0byBzZWUgYSBmZXcg
bW9udGhzIGFnby4KPiAKPiA+Cj4gPiBPdGhlciBTb0NzJyB0aGVybWFsIHNlbnNvciBkcml2ZXJz
IGFyZSBhbGwgdGhlcm1hbCBkcml2ZXJzLgo+ID4KPiA+ID4KPiA+ID4gQXJtYmlhbiBhbHJlYWR5
IGhhcyBhIGRyaXZlciBmb3IgdGhhdCB0aGV5IG5ldmVyIHVwc3RyZWFtZWQgaWlyYywgc28KPiA+
ID4gaXQgbWlnaHQgYmUgYSBnb29kIHN0YXJ0aW5nIHBvaW50LCBhbmQgd2Ugd291bGQgYWRkIHRo
ZSBzdXBwb3J0IGZvcgo+ID4gPiB0aGUgSDYuIEhvdyBkb2VzIHRoYXQgc291bmQ/Cj4gPgo+ID4g
SSB0aGluayB0aGUgZGV2ZWxvcGVyIGFiYW5kb25lZCB0byB1cHN0cmVhbSBpdCBiZWNhdXNlIG9m
IHRoZSBwcmV2aW91cwo+ID4gcHJvYmxlbSA7LSkKPiA+Cj4gPiBNYXliZSBpdCBjYW4gYmUgdGFr
ZW4gYW5kIGFkZCBBMzMmSDYgc3VwcG9ydC4KPiAKPiBJZiBPSywgSSBhbSBnb2luZyB0byBzdGFy
dCBzb21lIHRoZXJtYWwgZHJpdmVyIHdvcmsgdGhpcyB3ZWVrZW5kLiAgOiApCgpUaGVyZSBhcmUg
cGxlbnR5IG9mIHRoZXJtYWwgZHJpdmVycyBmbHlpbmcgYXJvdW5kLCB3aXRoIHZhcnlpbmcgbGV2
ZWxzCm9mIHN1cHBvcnQgZm9yIHZhcmlvdXMgU29DczoKCi0gSDMvSDU6IGh0dHBzOi8vbWVnb3Vz
LmNvbS9naXQvbGludXgvY29tbWl0Lz9oPXRocy01LjEmaWQ9YjhlMjBjNWRhN2EwMGIzYTNmYTFi
Mjc0ZmM4ZDViZWE5NTg3MmIwYQotIEE4M1Q6IGh0dHBzOi8vbWVnb3VzLmNvbS9naXQvbGludXgv
Y29tbWl0Lz9oPXRocy01LjEmaWQ9Nzk2ZGZmOWE5NDZmZDQ3NWNjMWU0YmI5NDhhNzIzZWE4NDFj
NjQwYwotIEg2OiBodHRwczovL21lZ291cy5jb20vZ2l0L2xpbnV4L2NvbW1pdC8/aD1vcGkzLTUu
MSZpZD1hZWFiNzYyYzE5YjRhYTIyOGEyOTUyNThjOWQ2YjJlMWYxNDNiZjg2CgpGb3IgSDMvSDUg
SWNlbm93eSBhbHNvIHRyaWVkIHRvIHVwc3RyZWFtIHNvbWUgdmFyaWFudCBvZiBteSBUSFMgZHJp
dmVyLCB3aXRoCmJldHRlciBTSUQvY2FsaWJyYXRpb24gZGF0YSByZWFkaW5nIHN1cHBvcnQuCgpJ
J2Qgc3VnZ2VzdCBzdGFydGluZyB3aXRoIHRoZSBINiBkcml2ZXIgYWJvdmUgKGFzIHRoYXQgaW1w
bGVtZW50cyB0aGUKY2FsaWJyYXRpb24gZGF0YSByZWFkb3V0IGNvcnJlY3RseSksIGFuZCBtYWtl
IGl0IHNvIHRoYXQgaXQgY2FuIHN1cHBvcnQgbXVsdGlwbGUKU29Dcy4KCnJlZ2FyZHMsCglvLgoK
PiBDaGVlcnMsCj4gWWFuZ3Rhbwo+IAo+ID4KPiA+ID4KPiA+ID4gU29ycnkgZm9yIHdhc3Rpbmcg
ZXZlcnlib2R5J3MgdGltZSBvbiB0aGlzLgo+ID4gPgo+ID4gPiBNYXhpbWUKPiA+ID4KPiA+ID4g
LS0KPiA+ID4gTWF4aW1lIFJpcGFyZCwgQm9vdGxpbgo+ID4gPiBFbWJlZGRlZCBMaW51eCBhbmQg
S2VybmVsIGVuZ2luZWVyaW5nCj4gPiA+IGh0dHBzOi8vYm9vdGxpbi5jb20KPiA+ID4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4gbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKPiA+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCj4gPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo+ID4KPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
