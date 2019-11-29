Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C1210D044
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 01:54:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KXPHbNbWSh5AS9bpv5XQFSDm4fVL9cG7kyfOjQkVqtw=; b=bocZQTSnkdkXGP
	keqN15nH7rW/dZBC7Sp6luDj+/ClCJi4ewwUg/+VAe1aFFSKjteHsDAHI40nvkcc7mnGuqU9iUUc3
	iA7eaMBvrrIUp2YVU0+9zUBHewzu16gTo1j1H8ym6dhQf7bQYwDIDGaKdyAtGJpkwDoPG6Qx3NJtF
	s/OM9PnFcqCnkkA6inNDY05JX7A4GNuLuSbCnQivZ6rzSXMgFHAMYctmcOBWHmXS1VbsbOMkszYYK
	Tp6XplA+obfcp8X66DeS4OhJppaeODU+I+H6gOBF6uZqkGhfdF37SsVgGhgFG8KleORWfGg43wMiH
	VXTnvbCWrll+BG2tNmBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaUY4-0007dD-5c; Fri, 29 Nov 2019 00:54:16 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaUXs-0007bj-Ia
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 00:54:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1574988839; bh=yNdzTaqRi2OqvGvJl0eaByi87kOwOz2kFUkxJaYh3zI=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=GnnztAQFZHPDLDA0YI0aNQoV/T50Pn6KqSqEspvntuA7lZlVSrZwHhX1+yProIQOu
 1u+OSyaV1z7WcoZ3SzNAeKb2XxNoXIqqNdM9tjGN1cJVFnwEYlL/f1OLhuq6NMnlY5
 RQjI3YZhr2sf1mNClJilCxgaIQr0BvATHw6dWddk=
Date: Fri, 29 Nov 2019 01:53:59 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH v6 1/7] thermal: sun8i: add thermal driver for
 H6/H5/H3/A64/A83T/R40
Message-ID: <20191129005359.lyxtk5p7ebcon5uq@core.my.home>
Mail-Followup-To: Frank Lee <tiny.windzz@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <20191127052935.1719897-1-anarsoul@gmail.com>
 <20191127052935.1719897-2-anarsoul@gmail.com>
 <20191127111419.z5hfu5soxceiivg6@core.my.home>
 <20191127173547.ch3pcv3lxgdcrfnu@gilmour.lan>
 <CAEExFWvG-Af4qtUrxQV4ssNQCVQAmpXfxB+92wX+6ZxUNfX-Jw@mail.gmail.com>
 <CA+E=qVcdwQO3Y8ismmBN-gRVNMs1Thx+TPLqstKM9fYf2_0qFQ@mail.gmail.com>
 <20191127222427.coyeggbxs5miioxn@core.my.home>
 <CAEExFWtBifY-1O0wBzk7ft8C9fxSUUx_cCJAribdP8dE9cteUg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEExFWtBifY-1O0wBzk7ft8C9fxSUUx_cCJAribdP8dE9cteUg@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_165404_957330_5C121E5A 
X-CRM114-Status: GOOD (  26.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBOb3YgMjgsIDIwMTkgYXQgMTE6MTY6MDVQTSArMDgwMCwgRnJhbmsgTGVlIHdyb3Rl
Ogo+IE9uIFRodSwgTm92IDI4LCAyMDE5IGF0IDY6MjQgQU0gT25kxZllaiBKaXJtYW4gPG1lZ291
c0BtZWdvdXMuY29tPiB3cm90ZToKPiA+Cj4gPiBPbiBXZWQsIE5vdiAyNywgMjAxOSBhdCAxMTo0
ODozMkFNIC0wODAwLCBWYXNpbHkgS2hvcnV6aGljayB3cm90ZToKPiA+ID4gT24gV2VkLCBOb3Yg
MjcsIDIwMTkgYXQgMTE6NDQgQU0gRnJhbmsgTGVlIDx0aW55LndpbmR6ekBnbWFpbC5jb20+IHdy
b3RlOgo+ID4gPiA+Cj4gPiA+ID4gSGVsbG8gVmFzaWx5LAo+ID4gPiA+Cj4gPiA+ID4gVGhhbmsg
eW91IHZlcnkgbXVjaCBmb3IgeW91ciB3b3JrIG9uIHRoaXMuCj4gPiA+ID4gVGhpcyBsb29rcyBn
b29kIHRvIG1lLgo+ID4gPgo+ID4gPiBUaGFua3MhCj4gPiA+Cj4gPiA+ID4gQnkgdGhlIHdheSwg
SSB3b3VsZCBsaWtlIHRvIGFzayBjb21tZW50cyBhYm91dCBhZGRpbmcgdGhlIGZvbGxvd2luZyBj
b2RlLgo+ID4gPgo+ID4gPiBDYW4gd2UgYWRkIGl0IGFzIGZvbGxvdyB1cCBwYXRjaD8gSSBkb24n
dCB0aGluayB0aGF0IEkgaGF2ZSBhIGRldmljZQo+ID4gPiB3aXRoIHdvcmtpbmcgc3VzcGVuZCB0
byB0ZXN0IGl0IGFuZCBJJ20gaGVzaXRhbnQgdG8gYWRkIGFueSBjb2RlIHRoYXQKPiA+ID4gSSBj
YW4ndCB0ZXN0Lgo+ID4KPiA+IEkgaGF2ZSwgYnV0IGl0IGRvZXNuJ3QgdXNlIGFueSBvZiB0aGUg
Y2xvY2tzIGFuZCByZXNldHMsIHNvIGl0IHdvdWxkbid0Cj4gPiB0ZXN0IHRoaXMgZnVsbHksIGFu
ZCBiYXNpY2FseSBkb2Vzbid0IG5lZWQgcmUtY2FsaWJyYXRpb24gYXQgYWxsLCBwcm9iYWJseS4K
PiA+Cj4gPiBTbyB0aGF0IG1heSBiZSBvbmUgZmVlZGJhY2suIE9uIGE4M3QsIEknZCBtYWRlIHRo
ZXNlIGNhbGxiYWNrcyBhIG5vLW9wLgo+IAo+IFRoaXMgaXMganVzdCB0aGF0IHRoZSBtYWlubGlu
ZSBjb2RlIGRvZXMgbm90IHlldCBoYXZlIHRoZSBTMlJBTSBjb2RlCj4gaW1wbGVtZW50YXRpb24g
b2YgdGhlc2UgU09Dcy4KPiBFYWNoIG1vZHVsZSBoYXMgaXRzIG93biBzdXNwZW5kIGZ1bmN0aW9u
IGFuZCByZXN1bWUgZnVuY3Rpb24gYXMgcGFydAo+IG9mIHRoZSBzeXN0ZW0gc3VzcGVuZCBmdW5j
dGlvbi4KPiBXaGVuIHRoZSBzeXN0ZW0gaXMgaW4gUzJSQU0sIHRoZSBlbnRpcmUgU09DIHdpbGwg
YmUgY29tcGxldGVseSBwb3dlcmVkCj4gb2ZmLCBhbmQgZWFjaCBtb2R1bGUKPiBuZWVkcyB0byBz
YXZlIGFuZCByZXN0b3JlIGl0cyBvd24gc3RhdGUuCgpJIGtub3csIGJ1dCBvbiBBODNUIFRIUyAo
bmFtZWQgUl9USCBpbiB0aGUgZGF0YXNoZWV0KSBpcyBpbiB0aGUgUlRDIHBvd2VyCmRvbWFpbiwg
c28gaXQgd2lsbCBub3QgYmUgcG93ZXJlZCBkb3duLCBldmVuIGlmIHlvdSBwb3dlciBkb3duIHJl
c3Qgb2YgdGhlIFNvQy4KCkkgZ3Vlc3MgeW91IGNhbiBtYWtlIGl0IG5vdCBydW4gYnkgb3RoZXIg
bWVhbnMsIGJ1dCBpdCB3aWxsIG5vdCBuZWVkIHJlc3RvcmluZwphbnkgc3RhdGUsIHNpbmNlIGl0
IHdpbGwgbm90IGxvc2UgYW55IGR1cmluZyBzdXNwZW5kLgoKcmVnYXJkcywKCW8uCgo+IFlhbmd0
YW8KPiAKPiA+Cj4gPiByZWdhcmRzLAo+ID4gICAgICAgICBvLgo+ID4KPiA+ID4gPgo+ID4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3RoZXJtYWwvc3VuOGlfdGhlcm1hbC5jIGIvZHJpdmVycy90
aGVybWFsL3N1bjhpX3RoZXJtYWwuYwo+ID4gPiA+IGluZGV4IGMwZWQ2MDc4MmIxMS4uNTc5ZGRl
NWUwNzAxIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9zdW44aV90aGVybWFs
LmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL3RoZXJtYWwvc3VuOGlfdGhlcm1hbC5jCj4gPiA+ID4g
QEAgLTYyOSwxMSArNjI5LDYzIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIG9m
X3Roc19tYXRjaFtdID0gewo+ID4gPiA+ICB9Owo+ID4gPiA+ICBNT0RVTEVfREVWSUNFX1RBQkxF
KG9mLCBvZl90aHNfbWF0Y2gpOwo+ID4gPiA+Cj4gPiA+ID4gK3N0YXRpYyBpbnQgX19tYXliZV91
bnVzZWQgc3VuOGlfdGhlcm1hbF9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+ID4gPiAr
ewo+ID4gPiA+ICsgc3RydWN0IHRoc19kZXZpY2UgKnRtZGV2OyA9IGRldl9nZXRfZHJ2ZGF0YShk
ZXYpOwo+ID4gPiA+ICsKPiA+ID4gPiArIGNsa19kaXNhYmxlKHRtZGV2LT5tb2RfY2xrKTsKPiA+
ID4gPiArIGNsa19kaXNhYmxlKHRtZGV2LT5idXNfY2xrKTsKPiA+ID4gPiArCj4gPiA+ID4gKyBy
ZXNldF9jb250cm9sX2Fzc2VydCh0bWRldi0+cmVzZXQpOwo+ID4gPiA+ICsKPiA+ID4gPiArIHJl
dHVybiAwOwo+ID4gPiA+ICt9Cj4gPiA+ID4gKwo+ID4gPiA+ICtzdGF0aWMgaW50IF9fbWF5YmVf
dW51c2VkIHN1bjhpX3RoZXJtYWxfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+ID4gPiAr
ewo+ID4gPiA+ICsgc3RydWN0IHRoc19kZXZpY2UgKnRtZGV2OyA9IGRldl9nZXRfZHJ2ZGF0YShk
ZXYpOwo+ID4gPiA+ICsgaW50IGVycm9yOwo+ID4gPiA+ICsKPiA+ID4gPiArIGVycm9yID0gcmVz
ZXRfY29udHJvbF9kZWFzc2VydCh0bWRldi0+cmVzZXQpOwo+ID4gPiA+ICsgaWYgKGVycm9yKQo+
ID4gPiA+ICsgcmV0dXJuIGVycm9yOwo+ID4gPiA+ICsKPiA+ID4gPiArIGVycm9yID0gY2xrX2Vu
YWJsZSh0bWRldi0+YnVzX2Nsayk7Cj4gPiA+ID4gKyBpZiAoZXJyb3IpCj4gPiA+ID4gKyBnb3Rv
IGFzc2VydF9yZXNldDsKPiA+ID4gPiArCj4gPiA+ID4gKyBjbGtfc2V0X3JhdGUodG1kZXYtPm1v
ZF9jbGssIDI0MDAwMDAwKTsKPiA+ID4gPiArIGVycm9yID0gY2xrX2VuYWJsZSh0bWRldi0+bW9k
X2Nsayk7Cj4gPiA+ID4gKyBpZiAoZXJyb3IpCj4gPiA+ID4gKyBnb3RvIGJ1c19kaXNhYmxlOwo+
ID4gPiA+ICsKPiA+ID4gPiArIHN1bjhpX3Roc19jYWxpYnJhdGUodG1kZXYpOwo+ID4gPiA+ICsK
PiA+ID4gPiArIHJldCA9IHRtZGV2LT5jaGlwLT5pbml0KHRtZGV2KTsKPiA+ID4gPiArIGlmIChy
ZXQpCj4gPiA+ID4gKyBnb3RvIG1vZF9kaXNhYmxlOwo+ID4gPiA+ICsKPiA+ID4gPiArIHJldHVy
biAwOwo+ID4gPiA+ICsKPiA+ID4gPiArbW9kX2Rpc2FibGU6Cj4gPiA+ID4gKyBjbGtfZGlzYWJs
ZSh0bWRldi0+bW9kX2Nsayk7Cj4gPiA+ID4gK2J1c19kaXNhYmxlOgo+ID4gPiA+ICsgY2xrX2Rp
c2FibGUodG1kZXYtPmJ1c19jbGspOwo+ID4gPiA+ICthc3NlcnRfcmVzZXQ6Cj4gPiA+ID4gKyBy
ZXNldF9jb250cm9sX2Fzc2VydCh0bWRldi0+cmVzZXQpOwo+ID4gPiA+ICsKPiA+ID4gPiArIHJl
dHVybiAwOwo+ID4gPiA+ICt9Cj4gPiA+ID4gKwo+ID4gPiA+ICtzdGF0aWMgU0lNUExFX0RFVl9Q
TV9PUFMoc3VuOGlfdGhlcm1hbF9wbV9vcHMsCj4gPiA+ID4gKyBzdW44aV90aGVybWFsX3N1c3Bl
bmQsIHN1bjhpX3RoZXJtYWxfcmVzdW1lKTsKPiA+ID4gPiArCj4gPiA+ID4gIHN0YXRpYyBzdHJ1
Y3QgcGxhdGZvcm1fZHJpdmVyIHRoc19kcml2ZXIgPSB7Cj4gPiA+ID4gICAucHJvYmUgPSBzdW44
aV90aHNfcHJvYmUsCj4gPiA+ID4gICAucmVtb3ZlID0gc3VuOGlfdGhzX3JlbW92ZSwKPiA+ID4g
PiAgIC5kcml2ZXIgPSB7Cj4gPiA+ID4gICAubmFtZSA9ICJzdW44aS10aGVybWFsIiwKPiA+ID4g
PiArIC5wbSA9ICZzdW44aV90aGVybWFsX3BtX29wcywKPiA+ID4gPiAgIC5vZl9tYXRjaF90YWJs
ZSA9IG9mX3Roc19tYXRjaCwKPiA+ID4gPiAgIH0sCj4gPiA+ID4gIH07Cj4gPiA+ID4KPiA+ID4g
PiBZYW5ndGFvCj4gPiA+Cj4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gPiA+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gPiA+IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gPiBodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKPiAKPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4g
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
