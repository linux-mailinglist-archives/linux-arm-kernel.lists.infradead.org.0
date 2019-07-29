Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8622F7935D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 20:46:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJ8CUGZMggRAjqYsO88hpsvjsSyICZrt/TWDzHDHK0w=; b=qKmjDCGUZHw/XF
	+THwGxEZ2uZsd/3daomzKTLlU/9KDP9kz81Uppd51OaTm9Ss+uA7FM7LbbWb3jGehUZHTy5DOeg0G
	1z1m6KeYq7ZMFqJIasQLnwiqdCqKQMJI3vRmoN08FAAlmFCQnKWi1KnwgULEwZ+zCQYbDbDFcXTZs
	gbdp/oi0NeDCl5tj6uL1A50ArBbeL4jORytxEVW5K82/pXdoFP5IMkubh3Cupw1VzP4/MIIxHkJ+o
	pTwe0VWnfk3SSFmdhv72dXITSZfrDPydyQV8IKUvmy0hfZlGbOTWHQjLVWJJWb4oF9Gm5byea3o6r
	us/ylVt39mgMbGtO89Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsAfa-0007Cd-4Q; Mon, 29 Jul 2019 18:46:50 +0000
Received: from mailoutvs41.siol.net ([185.57.226.232] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsAfK-0007Br-EZ
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 18:46:36 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id E42D2521EA5;
 Mon, 29 Jul 2019 20:46:26 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id ptq6DxYnJ009; Mon, 29 Jul 2019 20:46:26 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 52C3E5225A9;
 Mon, 29 Jul 2019 20:46:26 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-194-152-11-237.cable.triera.net
 [194.152.11.237]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id A5E33521EA5;
 Mon, 29 Jul 2019 20:46:25 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [linux-sunxi] Re: [PATCH 4/6] pwm: sun4i: Add support for H6 PWM
Date: Mon, 29 Jul 2019 20:46:25 +0200
Message-ID: <173825848.1FZsmuHfpq@jernej-laptop>
In-Reply-To: <20190729184041.vlvfz3vz3ykhufdk@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <2346193.MplWYqIveT@jernej-laptop>
 <20190729184041.vlvfz3vz3ykhufdk@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_114634_812157_15942A9A 
X-CRM114-Status: GOOD (  31.23  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
 devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 kernel@pengutronix.de, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIHBvbmVkZWxqZWssIDI5LiBqdWxpaiAyMDE5IG9iIDIwOjQwOjQxIENFU1QgamUgVXdlIEts
ZWluZS1Lw7ZuaWcgCm5hcGlzYWwoYSk6Cj4gT24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMDY6NDA6
MTVQTSArMDIwMCwgSmVybmVqIMWga3JhYmVjIHdyb3RlOgo+ID4gRG5lIHBvbmVkZWxqZWssIDI5
LiBqdWxpaiAyMDE5IG9iIDE4OjI0OjI4IENFU1QgamUgVXdlIEtsZWluZS1Lw7ZuaWcKPiA+IAo+
ID4gbmFwaXNhbChhKToKPiA+ID4gSGVsbG8sCj4gPiA+IAo+ID4gPiBPbiBUdWUsIEp1bCAzMCwg
MjAxOSBhdCAxMjowOTo0MEFNICswODAwLCBDaGVuLVl1IFRzYWkgd3JvdGU6Cj4gPiA+ID4gT24g
VHVlLCBKdWwgMzAsIDIwMTkgYXQgMTI6MDcgQU0gVXdlIEtsZWluZS1Lw7ZuaWcKPiA+ID4gPiAK
PiA+ID4gPiA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiA+ID4gPiA+
IE9uIE1vbiwgSnVsIDI5LCAyMDE5IGF0IDA1OjU1OjUyUE0gKzAyMDAsIEplcm5laiDFoGtyYWJl
YyB3cm90ZToKPiA+ID4gPiA+ID4gRG5lIHBvbmVkZWxqZWssIDI5LiBqdWxpaiAyMDE5IG9iIDA4
OjQwOjMwIENFU1QgamUgVXdlCj4gPiA+ID4gPiA+IEtsZWluZS1Lw7ZuaWcKPiA+ID4gPiA+ID4g
Cj4gPiA+ID4gPiA+IG5hcGlzYWwoYSk6Cj4gPiA+ID4gPiA+ID4gT24gRnJpLCBKdWwgMjYsIDIw
MTkgYXQgMDg6NDA6NDNQTSArMDIwMCwgSmVybmVqIFNrcmFiZWMgd3JvdGU6Cj4gPiA+ID4gPiA+
ID4gPiAtLS0gYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4gPiA+ID4gPiA+ID4gKysrIGIv
ZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+ID4gPiA+ID4gPiA+IEBAIC0zMzEsNiArMzMxLDEz
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc3VuNGlfcHdtX2RhdGEKPiA+ID4gPiA+ID4gPiA+IHN1
bjRpX3B3bV9zaW5nbGVfYnlwYXNzID0gez4KPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+
ID4gICAubnB3bSA9IDEsCj4gPiA+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ID4gPiAgfTsKPiA+
ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgc3VuNGlf
cHdtX2RhdGEKPiA+ID4gPiA+ID4gPiA+IHN1bjUwaV9wd21fZHVhbF9ieXBhc3NfY2xrX3JzdAo+
ID4gPiA+ID4gPiA+ID4gPSB7Cj4gPiA+ID4gPiA+ID4gPiArIC5oYXNfYnVzX2Nsb2NrID0gdHJ1
ZSwKPiA+ID4gPiA+ID4gPiA+ICsgLmhhc19wcmVzY2FsZXJfYnlwYXNzID0gdHJ1ZSwKPiA+ID4g
PiA+ID4gPiA+ICsgLmhhc19yZXNldCA9IHRydWUsCj4gPiA+ID4gPiA+ID4gPiArIC5ucHdtID0g
MiwKPiA+ID4gPiA+ID4gPiA+ICt9Owo+ID4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ID4g
Cj4gPiA+ID4gPiA+ID4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgc3VuNGlf
cHdtX2R0X2lkc1tdID0gewo+ID4gPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiA+ID4gICB7Cj4g
PiA+ID4gPiA+ID4gPiAgIAo+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgIC5jb21wYXRpYmxlID0g
ImFsbHdpbm5lcixzdW40aS1hMTAtcHdtIiwKPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+
ID4gQEAgLTM0Nyw2ICszNTQsOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZAo+
ID4gPiA+ID4gPiA+ID4gc3VuNGlfcHdtX2R0X2lkc1tdID0KPiA+ID4gPiA+ID4gPiA+IHsKPiA+
ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gICB9LCB7Cj4gPiA+ID4gPiA+ID4gPiAgIAo+
ID4gPiA+ID4gPiA+ID4gICAgICAgICAgIC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW44aS1o
My1wd20iLAo+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgIC5kYXRhID0gJnN1bjRpX3B3bV9zaW5n
bGVfYnlwYXNzLAo+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiArIH0sIHsKPiA+ID4g
PiA+ID4gPiA+ICsgICAgICAgICAuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXB3
bSIsCj4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgLmRhdGEgPSAmc3VuNTBpX3B3bV9kdWFsX2J5
cGFzc19jbGtfcnN0LAo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IElmIHlvdSBmb2xsb3cg
bXkgc3VnZ2VzdGlvbiBmb3IgdGhlIHR3byBwcmV2aW91cyBwYXRjaGVzLCB5b3UKPiA+ID4gPiA+
ID4gPiBjYW4KPiA+ID4gPiA+ID4gPiBqdXN0Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4g
dXNlOgo+ID4gPiA+ID4gPiA+ICAgICBjb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktaDYt
cHdtIiwKPiA+ID4gPiA+ID4gPiAgICAgImFsbHdpbm5lcixzdW41aS1hMTBzLXB3bSI7Cj4gPiA+
ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gYW5kIGRyb3AgdGhpcyBwYXRjaC4KPiA+ID4gPiA+ID4g
Cj4gPiA+ID4gPiA+IE1heGltZSBmb3VuZCBvdXQgdGhhdCBpdCdzIG5vdCBjb21wYXRpYmxlIHdp
dGggQTEwcyBkdWUgdG8KPiA+ID4gPiA+ID4gZGlmZmVyZW5jZQo+ID4gPiA+ID4gPiBpbiBieXBh
c3MgYml0LCBidXQgeWVzLCBJIGtub3cgd2hhdCB5b3UgbWVhbi4KPiA+ID4gPiA+ID4gCj4gPiA+
ID4gPiA+IFNpbmNlIEg2IHJlcXVpcmVzIHJlc2V0IGxpbmUgYW5kIGJ1cyBjbG9jayB0byBiZSBz
cGVjaWZpZWQsIGl0J3MKPiA+ID4gPiA+ID4gbm90Cj4gPiA+ID4gPiA+IGNvbXBhdGlibGUgZnJv
bSBEVCBiaW5kaW5nIHNpZGUuIE5ldyB5YW1sIGJhc2VkIGJpbmRpbmcgbXVzdAo+ID4gPiA+ID4g
PiBzb21laG93Cj4gPiA+ID4gPiA+IGtub3cgdGhhdCBpbiBvcmRlciB0byBiZSBhYmxlIHRvIHZh
bGlkYXRlIERUIG5vZGUsIHNvIGl0IG5lZWRzCj4gPiA+ID4gPiA+IHN0YW5kYWxvbmUgY29tcGF0
aWJsZS4gSG93ZXZlciwgZGVwZW5kaW5nIG9uIGNvbmNsdXNpb25zIG9mIG90aGVyCj4gPiA+ID4g
PiA+IGRpc2N1c3Npb25zLCB0aGlzIG5ldyBjb21wYXRpYmxlIGNhbiBiZSBhc3NvY2lhdGVkIHdp
dGggYWxyZWFkeQo+ID4gPiA+ID4gPiBhdmFpbGFibGUgcXVpcmtzIHN0cnVjdHVyZSBvciBoYXZl
IGl0J3Mgb3duLj4gPgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBJIGNhbm5vdCBmb2xsb3cuIFlvdSBz
aG91bGQgYmUgYWJsZSB0byBzcGVjaWZ5IGluIHRoZSBiaW5kaW5nIHRoYXQKPiA+ID4gPiA+IHRo
ZQo+ID4gPiA+ID4gcmVzZXQgbGluZSBhbmQgYnVzIGNsb2NrIGlzIG9wdGlvbmFsLiBUaGVuIGFs
bHdpbm5lcixzdW41MGktaDYtcHdtCj4gPiA+ID4gPiB3aXRob3V0IGEgcmVzZXQgbGluZSBhbmQg
YnVzIGNsb2NrIGFsc28gdmVyaWZpZXMsIGJ1dCB0aGlzIGRvZXNuJ3QKPiA+ID4gPiA+IHJlYWxs
eSBodXJ0IChhbmQgd2hvIGtub3dzLCBtYXliZSB0aGUgbmV4dCBhbGx3aW5uZXIgY2hpcCBuZWVk
cwo+ID4gPiA+ID4gZXhhY3RseQo+ID4gPiA+ID4gdGhpcykuCj4gPiA+ID4gCj4gPiA+ID4gSXQg
aXMgbm90IG9wdGlvbmFsLiBJdCB3aWxsIG5vdCB3b3JrIGlmIGVpdGhlciB0aGUgY2xvY2tzIG9y
IHJlc2V0Cj4gPiA+ID4gY29udHJvbHMKPiA+ID4gPiBhcmUgbWlzc2luZy4gSG93IHdvdWxkIHRo
ZXNlIGJlIG9wdGlvbmFsIGFueXdheT8gRWl0aGVyIGl0J3MgY29ubmVjdGVkCj4gPiA+ID4gYW5k
Cj4gPiA+ID4gdGh1cyByZXF1aXJlZCwgb3IgaXQncyBub3QgYW5kIHRoZXJlZm9yZSBzaG91bGQg
YmUgb21pdHRlZCBmcm9tIHRoZQo+ID4gPiA+IGRlc2NyaXB0aW9uLgo+ID4gPiAKPiA+ID4gW0p1
c3QgYXJndWluZyBhYm91dCB0aGUgY2xvY2sgaGVyZSwgdGhlIGFyZ3VtZW50YXRpb24gaXMgYW5h
bG9nb3VzIGZvcgo+ID4gPiB0aGUgcmVzZXQgY29udHJvbC5dCj4gPiA+IAo+ID4gPiBGcm9tIHRo
ZSBkcml2ZXIncyBwZXJzcGVjdGl2ZSBpdCdzIG9wdGlvbmFsOiBUaGVyZSBhcmUgZGV2aWNlcyB3
aXRoIGFuZAo+ID4gPiB3aXRob3V0IGEgYnVzIGNsb2NrLiBUaGlzIGRvZXNuJ3QgbWVhbiB0aGF0
IHlvdSBjYW4ganVzdCBpZ25vcmUgdGhpcwo+ID4gPiBjbG9jayBpZiBpdCdzIHNwZWNpZmllZC4g
SXQncyBvcHRpb25hbCBpbiB0aGUgc2Vuc2UgIklmIGR0IGRvZXNuJ3QKPiA+ID4gc3BlY2lmeSBp
dCwgdGhlbiBhc3N1bWUgdGhpcyBpcyBhIGRldmljZSB0aGF0IGRvZXNuJ3QgaGF2ZSBpdCBhbmQg
c28geW91Cj4gPiA+IGRvbid0IG5lZWQgdG8gaGFuZGxlIGl0LiIgYnV0IG5vdCBpbiB0aGUgc2Vu
c2UgIml0IGRvZXNuJ3QgbWF0dGVyIGlmCj4gPiA+IHlvdSBoYW5kbGUgaXQgb3Igbm90LiIuCj4g
PiA+IAo+ID4gPiBPdGhlciB0aGFuIHRoYXQgSSdtIG9uIHlvdXIgc2lkZS4gU28gZm9yIGV4YW1w
bGUgSSB0aGluayBpdCdzIG5vdAo+ID4gPiBvcHRpbWFsIHRoYXQgZ3Bpb2RfZ2V0X29wdGlvbmFs
IHJldHVybnMgTlVMTCBpZiBHUElPTElCPW4gb3IgdGhhdAo+ID4gPiBkZXZtX3Jlc2V0X2NvbnRy
b2xfZ2V0X29wdGlvbmFsIHJldHVybnMgTlVMTCBpZiBSRVNFVF9DT05UUk9MTEVSPW4KPiA+ID4g
YmVjYXVzZSB0aGlzIGhpZGVzIGV4YWN0bHkgdGhlIGtpbmQgb2YgcHJvYmxlbSB5b3UgcG9pbnQg
b3V0IGhlcmUuCj4gPiAKPiA+IEkgdGhpbmsgdGhlcmUncyBtaXN1bmRlcnN0YW5kaW5nLiBJIG9u
bHkgYXJndWVkIHRoYXQgd2UgY2FuJ3QgdXNlCj4gPiAKPiA+IGNvbXBhdGlibGUgPSAiYWxsd2lu
bmVyLHN1bjUwaS1oNi1wd20iLAo+ID4gCj4gPiAJICJhbGx3aW5uZXIsc3VuNWktYTEwcy1wd20i
Owo+ID4gCj4gPiBhcyB5b3Ugc3VnZ2VzdGVkIGFuZCBvbmx5Cj4gPiAKPiA+IGNvbXBhdGlibGUg
PSAiYWxsd2lubmVyLHN1bjUwaS1oNi1wd20iOwo+ID4gCj4gPiB3aWxsIHdvcmsuIE5vdCBiZWNh
dXNlIG9mIGRyaXZlciBpdHNlbGYgKGl0IGNhbiBzdGlsbCB1c2UgX29wdGlvbmFsKCkKPiA+IHZh
cmlhbnRzKSwgYnV0IGJlY2F1c2Ugb2YgRFQgYmluZGluZywgd2hpY2ggc2hvdWxkIGJlIGFibGUg
dG8gdmFsaWRhdGUgSDYKPiA+IFBXTSBub2RlIC0gcmVzZXQgYW5kIGJ1cyBjbG9jayByZWZlcmVu
Y2VzIGFyZSByZXF1aXJlZCBpbiB0aGlzIGNhc2UuCj4gCj4gSSB0aGluayBJIHVuZGVyc3Rvb2Qu
IEluIG15IGV5ZXMgdGhlcmUgaXMgbm8gbmVlZCB0byBsZXQgdmFsaWRhdGlvbiBvZgo+IHRoZSBE
VCBiaW5kaW5ncyBjYXRjaCBhIG1pc3NpbmcgIm9wdGlvbmFsIiBwcm9wZXJ0eSB0aGF0IGlzIG5l
ZWRlZCBvbgo+IEg2Lgo+IAo+IFlvdSBoYXZlIHRvIGRyYXcgdGhlIGxpbmUgc29tZXdoZXJlIHdo
aWNoIGluZm9ybWF0aW9uIHRoZSBkcml2ZXIgaGFzCj4gaGFyZC1jb2RlZCBhbmQgd2hhdCBpcyBv
bmx5IHByb3ZpZGVkIGJ5IHRoZSBkZXZpY2UgdHJlZSBhbmQganVzdCBhc3N1bWVkCj4gdG8gYmUg
Y29ycmVjdCBieSB0aGUgZHJpdmVyLiBZb3UgYXJndWUgdGhlIGRyaXZlciBzaG91bGQga25vdyB0
aGF0IAoKTm8sIGluIHRoaXMgdGhyZWFkIEkgYXJndWUgdGhhdCBEVCB2YWxpZGF0aW9uIHRvb2ws
IGV4ZWN1dGVkIGJ5CgptYWtlIEFSQ0g9YXJtNjQgZHRic19jaGVjawoKc2hvdWxkIGNhdGNoIHRo
YXQuIFRoaXMgaXMgbm90IGEgZHJpdmVyLCBidXQgRFQgYmluZGluZyBkZXNjcmliZWQgaW4gWUFN
TC4KCkJlc3QgcmVnYXJkcywKSmVybmVqCgo+IGlmIGl0Cj4gY2FyZXMgZm9yIGEgImFsbHdpbm5l
cixzdW41MGktaDYtcHdtIiBkZXZpY2UgaXQgc2hvdWxkIGtub3cgKGFuZCBjaGVjaykKPiB0aGF0
IHRoZXJlIGlzIGEgY2xvY2sgbmFtZWQgImJ1cyIgYW5kIGEgcmVzZXRzIHByb3BlcnR5IHRoYXQg
bGlua3MgdG8gYQo+IHJlc2V0IGNvbnRyb2xsZXIuIEhvdyBpcyB0aGF0IGRpZmZlcmVudCBmcm9t
IGNoZWNraW5nIHRoYXQgdGhlIGJhc2UKPiBhZGRyZXNzIGlzIDB4MDMwMGEwMDAgb3IgdGhhdCB0
aGUgInB3bSIgY2xvY2sgaXMgdGhlIG9zYzI0TSBjbG9jawo+IHJ1bm5pbmcgYXQgMjQgTUh6PyBU
aGlzIGlzbid0IGNoZWNrZWQgaW4gdGhlIGRyaXZlciBvciB0aGUgZHQgc2NoZW1hLgo+IFN0aWxs
IGlmIHRoZSBkZXZpY2UgdHJlZSBnb3Qgb25lIG9mIHRoZW0gd3JvbmcgdGhpcyB5aWVsZHMgYW4K
PiBub24td29ya2luZyBwd20gZGV2aWNlIHRoYXQgaXNuJ3QgY2F0Y2hlZCBpbiB0aGUgZHJpdmVy
Lgo+IAo+IEJlc3QgcmVnYXJkcwo+IFV3ZQoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
