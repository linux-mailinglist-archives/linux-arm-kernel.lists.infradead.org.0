Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFB6EE9C8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 21:38:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PD1J/kx5mWlf5cYJC0DYnkKzueULrLyFleNagJPuwMg=; b=cLspIFJKT9EfaS
	LOPQzN+GDKKRZZhfy1hw34SHsHfKUhvX2IpvX4LqMHWmHOO8rBQhLQM5WR3B8FOeBrQh6tW/2mDN7
	OU9aZ8n+qr6484XIiTddw78imYe3Kt1ioeJ/Y0z6/8YE0gfksnwjCAy1RZHkdKZCskhEu9QXAQVjo
	/I+qDBqknAXq536RlhGrFS15Iv45mxKb43Tnkh1o9w8ErSjMGb8oA4qRjIbLSXSB+GEgJYQcEBFmS
	Mr/lEt9G82GFUpKGPmeP3wkb86Q17vW2iJikHPzP11lW9AulEjpeXrPod52ZIUFxR4ojldfuAMubU
	/pUar2MO2m+RmqfWvQEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRj7c-0002mP-AP; Mon, 04 Nov 2019 20:38:44 +0000
Received: from mailoutvs8.siol.net ([185.57.226.199] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRj7U-0002ln-LX
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 20:38:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 99859524703;
 Mon,  4 Nov 2019 21:38:32 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Xas64fhSD14G; Mon,  4 Nov 2019 21:38:32 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id F320B5250A1;
 Mon,  4 Nov 2019 21:38:31 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-86-58-102-7.static.triera.net
 [86.58.102.7]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 72C21524703;
 Mon,  4 Nov 2019 21:38:31 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: =?ISO-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 3/7] pwm: sun4i: Add an optional probe for bus clock
Date: Mon, 04 Nov 2019 21:38:31 +0100
Message-ID: <2257359.GL6loUrO9r@jernej-laptop>
In-Reply-To: <CAJiuCcfCo2QiKEvaRphcBkdTtFui3ympU9aikJTmXDa4OoiXZQ@mail.gmail.com>
References: <20191103203334.10539-1-peron.clem@gmail.com>
 <524459750.Kvg9uK5Sr7@jernej-laptop>
 <CAJiuCcfCo2QiKEvaRphcBkdTtFui3ympU9aikJTmXDa4OoiXZQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_123837_029671_F7687AD2 
X-CRM114-Status: GOOD (  39.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIHBvbmVkZWxqZWssIDA0LiBub3ZlbWJlciAyMDE5IG9iIDIxOjI3OjA0IENFVCBqZSBDbMOp
bWVudCBQw6lyb24gbmFwaXNhbChhKToKPiBIaSwKPiAKPiBPbiBNb24sIDQgTm92IDIwMTkgYXQg
MjE6MTksIEplcm5laiDFoGtyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+IHdyb3RlOgo+
ID4gRG5lIHBvbmVkZWxqZWssIDA0LiBub3ZlbWJlciAyMDE5IG9iIDIxOjEwOjUyIENFVCBqZSBV
d2UgS2xlaW5lLUvDtm5pZwo+ID4gCj4gPiBuYXBpc2FsKGEpOgo+ID4gPiBIZWxsbyBDbMOpbWVu
dCwKPiA+ID4gCj4gPiA+IE9uIE1vbiwgTm92IDA0LCAyMDE5IGF0IDA3OjA3OjAwUE0gKzAxMDAs
IENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+ID4gPiBPbiBNb24sIDQgTm92IDIwMTkgYXQgMDk6
MjQsIFV3ZSBLbGVpbmUtS8O2bmlnCj4gPiA+ID4gCj4gPiA+ID4gPHUua2xlaW5lLWtvZW5pZ0Bw
ZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gPiA+ID4gPiBPbiBTdW4sIE5vdiAwMywgMjAxOSBhdCAw
OTozMzozMFBNICswMTAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiA+ID4gPiA+IEZyb206
IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+ID4gPiA+ID4gCj4g
PiA+ID4gPiA+IEg2IFBXTSBjb3JlIG5lZWRzIGJ1cyBjbG9jayB0byBiZSBlbmFibGVkIGluIG9y
ZGVyIHRvIHdvcmsuCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBBZGQgYW4gb3B0aW9uYWwgcHJv
YmUgZm9yIGl0IGFuZCBhIGZhbGxiYWNrIGZvciBwcmV2aW91cwo+ID4gPiA+ID4gPiBiaW5kaW5n
cyB3aXRob3V0IG5hbWUgb24gbW9kdWxlIGNsb2NrLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4g
U2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+
ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21h
aWwuY29tPgo+ID4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ICBkcml2ZXJz
L3B3bS9wd20tc3VuNGkuYyB8IDM2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kwo+ID4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKykKPiA+ID4gPiA+
ID4gCj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYyBiL2Ry
aXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gPiA+ID4gPiA+IGluZGV4IGQxOTRiOGViZGIwMC4uYjVl
N2FjMzY0ZjU5IDEwMDY0NAo+ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3B3bS9wd20tc3VuNGku
Ywo+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4gPiA+ID4gPiBA
QCAtNzgsNiArNzgsNyBAQCBzdHJ1Y3Qgc3VuNGlfcHdtX2RhdGEgewo+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gIHN0cnVjdCBzdW40aV9wd21fY2hpcCB7Cj4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+
ID4gICAgICAgc3RydWN0IHB3bV9jaGlwIGNoaXA7Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAr
ICAgICBzdHJ1Y3QgY2xrICpidXNfY2xrOwo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gICAgICAg
c3RydWN0IGNsayAqY2xrOwo+ID4gPiA+ID4gPiAgICAgICBzdHJ1Y3QgcmVzZXRfY29udHJvbCAq
cnN0Owo+ID4gPiA+ID4gPiAgICAgICB2b2lkIF9faW9tZW0gKmJhc2U7Cj4gPiA+ID4gPiA+IAo+
ID4gPiA+ID4gPiBAQCAtMzY3LDYgKzM2OCwzMSBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9wcm9i
ZShzdHJ1Y3QKPiA+ID4gPiA+ID4gcGxhdGZvcm1fZGV2aWNlCj4gPiA+ID4gPiA+ICpwZGV2KT4g
Pgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBBZGRpbmcgbW9yZSBjb250ZXh0IGhlcmU6Cj4gPiA+ID4g
PiB8ICAgICAgIHB3bS0+Y2xrID0gZGV2bV9jbGtfZ2V0KCZwZGV2LT5kZXYsIE5VTEwpOwo+ID4g
PiA+ID4gfCAgICAgICAKPiA+ID4gPiA+ID4gICAgICAgaWYgKElTX0VSUihwd20tPmNsaykpCj4g
PiA+ID4gPiA+ICAgICAgIAo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJS
KHB3bS0+Y2xrKTsKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ICsgICAgIC8qIEdldCBhbGwgY2xv
Y2tzIGFuZCByZXNldCBsaW5lICovCj4gPiA+ID4gPiA+ICsgICAgIHB3bS0+Y2xrID0gZGV2bV9j
bGtfZ2V0X29wdGlvbmFsKCZwZGV2LT5kZXYsICJtb2QiKTsKPiA+ID4gPiA+ID4gKyAgICAgaWYg
KElTX0VSUihwd20tPmNsaykpIHsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICBkZXZfZXJyKCZw
ZGV2LT5kZXYsICJnZXQgY2xvY2sgZmFpbGVkICVsZFxuIiwKPiA+ID4gPiA+ID4gKyAgICAgICAg
ICAgICAgICAgICAgIFBUUl9FUlIocHdtLT5jbGspKTsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAg
ICByZXR1cm4gUFRSX0VSUihwd20tPmNsayk7Cj4gPiA+ID4gPiA+ICsgICAgIH0KPiA+ID4gPiA+
IAo+ID4gPiA+ID4gSSBndWVzcyB5b3Ugd2FudCB0byBkcm9wIHRoZSBmaXJzdCBhc3NpZ25tZW50
IHRvIHB3bS0+Y2xrLgo+ID4gPiA+IAo+ID4gPiA+IGRldm1fY2xrX2dldF9vcHRpb25hbCB3aWxs
IHJldHVybiBOVUxMIGlmIHRoZXJlIGlzIG5vIGVudHJ5LCBJIGRvbid0Cj4gPiA+ID4gZ2V0IHdo
ZXJlIEkgbmVlZCB0byBkcm9wIGl0IGFzc2lnbm1lbnQuCj4gPiA+IAo+ID4gPiBXaXRoIHlvdXIg
cGF0Y2ggdGhlIGNvZGUgbG9va3MgYXMgZm9sbG93czoKPiA+ID4gICAgICAgcHdtLT5jbGsgPSBk
ZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwgTlVMTCk7Cj4gPiA+ICAgICAgIGlmIChJU19FUlIocHdt
LT5jbGspKQo+ID4gPiAgICAgICAKPiA+ID4gICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihw
d20tPmNsayk7Cj4gPiA+ICAgICAgIAo+ID4gPiAgICAgICAvKiBHZXQgYWxsIGNsb2NrcyBhbmQg
cmVzZXQgbGluZSAqLwo+ID4gPiAgICAgICBwd20tPmNsayA9IGRldm1fY2xrX2dldF9vcHRpb25h
bCgmcGRldi0+ZGV2LCAibW9kIik7Cj4gPiAKPiA+IEFjdHVhbGx5LCBpdCdzIHRoZSBvdGhlciB3
YXkgYXJvdW5kLCBlLmcuICJtb2QiIGNsb2NrIGlzIGNoZWNrZWQgZmlyc3QuCj4gCj4gVGhlIGZp
cnN0IGRldm1fY2xrX2dldCBpcyBpbmRlZWQgd3JvbmcsIEkgd2lsbCByZW1vdmUgaXQhCgpTb3Jy
eSwgSSBtaXNzZWQgdGhhdCB0b28uIFllYWgsIGl0IHNob3VsZCBiZSByZW1vdmVkLgoKQmVzdCBy
ZWdhcmRzLApKZXJuZWoKCj4gCj4gPiA+ICAgICAgIC4uLgo+ID4gPiAKPiA+ID4gVGhlIGFzc2ln
bm1lbnQgdG8gcHdtLT5jbGsgYWJvdmUgdGhlIGNvbW1lbnQgaXMgdGhlIG9uZSBJIHN1Z2dlc3Rl
ZCB0bwo+ID4gPiBkcm9wLgo+ID4gCj4gPiBOZWl0aGVyIGNhbiBiZSBkcm9wcGVkLiBEVCBmaWxl
cyBmb3Igb3RoZXIgU29DcyBkb24ndCBoYXZlIGNsb2NrLW5hbWVzCj4gPiBwcm9wZXJ0eSwgc28g
c2VhcmNoIGZvciAibW9kIiBjbG9jayB3aWxsIGZhaWwgYW5kIHRoZW4gZmFsbGJhY2sgb3B0aW9u
Cj4gPiB3aXRob3V0IG5hbWUgaXMgdXNlZC4KPiA+IAo+ID4gQmVzdCByZWdhcmRzLAo+ID4gSmVy
bmVqCj4gPiAKPiA+ID4gPiA+ID4gKyAgICAgLyogRmFsbGJhY2sgZm9yIG9sZCBkdGJzIHdpdGgg
YSBzaW5nbGUgY2xvY2sgYW5kIG5vIG5hbWUgKi8KPiA+ID4gPiA+ID4gKyAgICAgaWYgKCFwd20t
PmNsaykgewo+ID4gPiA+ID4gPiArICAgICAgICAgICAgIHB3bS0+Y2xrID0gZGV2bV9jbGtfZ2V0
KCZwZGV2LT5kZXYsIE5VTEwpOwo+ID4gPiA+ID4gPiArICAgICAgICAgICAgIGlmIChJU19FUlIo
cHdtLT5jbGspKSB7Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBkZXZfZXJyKCZw
ZGV2LT5kZXYsICJnZXQgY2xvY2sgZmFpbGVkCj4gPiA+ID4gPiA+ICVsZFxuIiwKPiA+ID4gPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUFRSX0VSUihwd20tPmNsaykpOwo+ID4g
PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIocHdtLT5jbGspOwo+
ID4gPiA+ID4gPiArICAgICAgICAgICAgIH0KPiA+ID4gPiA+ID4gKyAgICAgfQo+ID4gPiA+ID4g
Cj4gPiA+ID4gPiBUaGVyZSBpcyBhIHNsaWdodCBjaGFuZ2Ugb2YgYmVoYXZpb3VyIGlmIEknbSBu
b3QgbWlzdGFrZW4uIElmIHlvdQo+ID4gPiA+ID4gaGF2ZQo+ID4gPiA+ID4gCj4gPiA+ID4gPiB0
aGlzOgo+ID4gPiA+ID4gICAgICAgICBjbG9ja3MgPSA8JmNsazE+Owo+ID4gPiA+ID4gICAgICAg
ICBjbG9jay1uYW1lcyA9ICJtb2QiOwo+ID4gPiA+ID4gICAgICAgICAKPiA+ID4gPiA+ICAgICAg
ICAgcHdtIHsKPiA+ID4gPiA+ICAgICAgICAgCj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgY29t
cGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNGktYTEwLXB3bSIKPiA+ID4gPiA+ICAgICAgICAgICAg
ICAgICBjbG9ja3MgPSA8JmNsazI+Owo+ID4gPiA+ID4gICAgICAgICAKPiA+ID4gPiA+ICAgICAg
ICAgfQo+ID4gPiA+ID4gCj4gPiA+ID4gPiB5b3Ugbm93IHVzZSBjbGsxIGluc3RlYWQgb2YgY2xr
MiBiZWZvcmUuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IEFzc3VtaW5nIHRoaXMgaXMgb25seSBhIHRo
ZW9yZXRpY2FsIHByb2JsZW0sIGF0IGxlYXN0IHBvaW50aW5nIHRoaXMKPiA+ID4gPiA+IG91dAo+
ID4gPiA+ID4gaW4gdGhlIGNvbW1pdCBsb2cgd291bGQgYmUgZ29vZCBJIHRoaW5rLgo+ID4gPiA+
IAo+ID4gPiA+IFllcyBpdCdzIGNvcnJlY3QgYW5kIGFzIHlvdSBzYWlkIHRoZSBkcml2ZXIgZG9u
J3QgY2hlY2sgZm9yIGEgY29ycmVjdAo+ID4gPiA+IGRldmljZSB0cmVlLCB0aGF0IHdoeSBpdCdz
IG5vdyBvcHRpb25hbCBwcm9iZS4KPiA+ID4gPiBMZXQncyBhc3N1bWUgdGhhdCdzIHRoZSBkZXZp
Y2UtdHJlZSBpcyBjb3JyZWN0LCBJIHdpbGwgYWRkIGEgY29tbWVudAo+ID4gPiA+IGluIHRoZSBj
b21taXQgbG9nLgo+ID4gPiAKPiA+ID4gSWYgdGhlIG1vZCBjbG9jayB3YXMgc2hhcmVkIGJ5IGFs
bCBwZXJpcGhlcmFscyBvbiB0aGUgYnVzIHRoaXMgd291bGQgYmUKPiA+ID4gSU1ITyBxdWl0ZSBl
bGVnYW50LiBQcm9iYWJseSBpdCBkZXBlbmRzIG9uIHdoYXQgeW91IG1lYW4gYnkgc2F5aW5nCj4g
PiA+ICJpbmNvcnJlY3QiIGlmIHRoaXMgc25pcHBldCBpcyBpbmNvcnJlY3QuIChJdCBjYW4gYmUg
cGFydCBvZiBhIHZhbGlkIGR0Ygo+ID4gPiB0aGF0IGV2ZW4gY29tcGxpZXMgdG8gdGhlIGJpbmRp
bmcgZG9jdW1lbnRhdGlvbi4gSG93ZXZlciB0aGF0J3Mgbm90IGhvdwo+ID4gPiBhbnkgZXhpc3Rp
bmcgYWxsd2lubmVyIGhhcmR3YXJlIGxvb2tzIGxpa2UuKSBCdXQgbGV0J3Mgc3RvcCBhcmd1aW5n
IGFzCj4gPiA+IHdlIGFncmVlIGl0J3MgYSBjb3JuZXIgY2FzZSBhbmQgaWYgeW91IG1lbnRpb24g
aXQgaW4gdGhlIGNvbW1pdCBsb2cKPiA+ID4gd2UncmUgYm90aCBoYXBweS4KPiA+ID4gCj4gPiA+
ID4gPiBXaGF0IGlzIHRoYXQgY2xvY2sgdXNlZCBmb3I/IElzIGl0IHJlcXVpcmVkIHRvIGFjY2Vz
cyB0aGUgaGFyZHdhcmUKPiA+ID4gPiA+IHJlZ2lzdGVycz8gT3IgaXMgaXQgb25seSByZXF1aXJl
ZCB3aGlsZSB0aGUgUFdNIGlzIGVuYWJsZWQ/IElmIHNvCj4gPiA+ID4gPiB5b3UKPiA+ID4gPiA+
IGNvdWxkIGVuYWJsZSB0aGUgY2xvY2sgbW9yZSBmaW5lZ3JhaW5kZWQuCj4gPiA+ID4gCj4gPiA+
ID4gUmVnYXJkaW5nIHRoZSBkYXRhc2hlZXQgaXQncyByZXF1aXJlZCB0byBhY2Nlc3MgdGhlIGhh
cmR3YXJlLgo+ID4gPiA+IHBhZ2UgMjYxIDoKPiA+ID4gPiBodHRwczovL2xpbnV4LXN1bnhpLm9y
Zy9GaWxlOkFsbHdpbm5lcl9INl9WMjAwX1VzZXJfTWFudWFsX1YxLjEucGRmCj4gPiA+IAo+ID4g
PiBTbyBlbmFibGluZyB0aGUgYnVzIGNsb2NrIGlzIGNhbGxlZCAib3BlbiBBUEIxIEJ1cyBnYXRp
bmciIGluIHRoYXQKPiA+ID4gbWFudWFsPyBJZiBJIHVuZGVyc3RhbmQgdGhhdCBjb3JyZWN0bHkg
dGhlIGJ1cyBjbG9jayB0aGVuIG9ubHkgbmVlZCB0bwo+ID4gPiBiZSBvbiB3aGlsZSBhY2Nlc3Np
bmcgdGhlIHJlZ2lzdGVycyBhbmQgY291bGQgYmUgZGlzYWJsZWQgb25jZSB0aGUKPiA+ID4gaGFy
ZHdhcmUgaXMgcHJvZ3JhbW1lZCBhbmQgcnVubmluZy4KPiA+ID4gCj4gPiA+IENhbiB5b3UgcGxl
YXNlIGRlc2NyaWJlIHRoYXQgaW4gYSBjb21tZW50LiBTb21ldGhpbmcgbGlrZToKPiA+ID4gICAg
ICAgLyoKPiA+ID4gICAgICAgCj4gPiA+ICAgICAgICAqIFdlJ3JlIGtlZXBpbmcgdGhlIGJ1cyBj
bG9jayBvbiBmb3IgdGhlIHNha2Ugb2Ygc2ltcGxpY2l0eS4KPiA+ID4gICAgICAgICogQWN0dWFs
bHkgaXQgb25seSBuZWVkcyB0byBiZSBvbiBmb3IgaGFyZHdhcmUgcmVnaXN0ZXIKPiA+ID4gICAg
ICAgICogYWNjZXNzZXMuCj4gPiA+ICAgICAgICAqLwo+ID4gPiAKPiA+ID4gc2hvdWxkIGJlIGZp
bmUuIFRoaXMgd2F5IGl0J3MgYXQgbGVhc3Qgb2J2aW91cyB0aGF0IHRoZSBoYW5kbGluZyBjb3Vs
ZAo+ID4gPiBiZSBpbXByb3ZlZC4KPiA+ID4gCj4gPiA+IEJlc3QgcmVnYXJkcwo+ID4gPiBVd2UK
CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
