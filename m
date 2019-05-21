Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EC8256C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 19:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EmnHaxmuCNRM9Zg4hFmLJfsVhRoeLnYcagcFQ3Sk1XI=; b=cEy0thGdnlDn9S
	edFetnSfvpGumrL8sI6dskOCHOaftPXZgWUQuMg6D0QmQrk+izOXR2AlFpfRvHB+l0YEz6l6vVD1P
	OKAV0IH1bkUc2oDwl8b6bwySf+z3y4bowKjk/4NfZ4gRqQbtBTgKK18cK7wXmBcpqh3e/FC1N7vtj
	czYvgrPfpaiNwTkXglcQfHE35sfjWFsclgjmIpRhQxHarmPQSZqgrH3dWg7k9Kv0a5rnTjqf0fxR6
	BCjU19/ZTNU8szyW3wnYIFkoAPcnjAKoFQpR8dlMOo4XAOoaATZtiRpG3L8sIwZuy+U/3MaTdAgLM
	fdtc27K5d+LHaK7X4Y0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT8dy-0007te-NW; Tue, 21 May 2019 17:33:42 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT8dp-0007sr-Md
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 17:33:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558460009; bh=8XpWGxJiEQwnYFL7fQjANvL039ojO3exLChRMSO028s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dIy/gWb9Qz7kwegZvq4raKYo3HNXNjX27y7C9IzTA5mcebmVIWVMdCkUupCWGaQ81
 OsUGgwvtEx5tMhX2kmvM0cNrc11Pw9UHzcX9MB1GXziih22AgLwnp68mqh2WvI5JsJ
 LgGTnKlBmlSUwO5izjC1MK0JURrtSDg9FUT8p8+A=
Date: Tue, 21 May 2019 19:33:28 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
Message-ID: <20190521173328.bzwbyuy6mobzyvb5@core.my.home>
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
 <20190521102721.5hgks6guzlhubj6d@core.my.home>
 <20190521142734.fvhdomqhuntpop52@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521142734.fvhdomqhuntpop52@flea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_103334_243385_419EDF80 
X-CRM114-Status: GOOD (  29.68  )
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

T24gVHVlLCBNYXkgMjEsIDIwMTkgYXQgMDQ6Mjc6MzRQTSArMDIwMCwgTWF4aW1lIFJpcGFyZCB3
cm90ZToKPiBPbiBUdWUsIE1heSAyMSwgMjAxOSBhdCAxMjoyNzoyMVBNICswMjAwLCBPbmTFmWVq
IEppcm1hbiB3cm90ZToKPiA+IE9uIFR1ZSwgTWF5IDIxLCAyMDE5IGF0IDEwOjA1OjE1QU0gKzAy
MDAsIE1heGltZSBSaXBhcmQgd3JvdGU6Cj4gPiA+IE9uIFNhdCwgTWF5IDE4LCAyMDE5IGF0IDAx
OjI3OjM5QU0gKzA4MDAsIEZyYW5rIExlZSB3cm90ZToKPiA+ID4gPiBPbiBGcmksIE1heSAxNywg
MjAxOSBhdCAzOjM2IFBNIE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+
IHdyb3RlOgo+ID4gPiA+ID4KPiA+ID4gPiA+IE9uIEZyaSwgTWF5IDE3LCAyMDE5IGF0IDAxOjUx
OjU2QU0gKzA4MDAsIEZyYW5rIExlZSB3cm90ZToKPiA+ID4gPiA+ID4gPiA+ICtzdHJ1Y3Qgc3Vu
NTBpX3RoZXJtYWxfY2hpcCB7Cj4gPiA+ID4gPiA+ID4gPiArICAgICBpbnQgICAgIHNlbnNvcl9u
dW07Cj4gPiA+ID4gPiA+ID4gPiArICAgICBpbnQgICAgIG9mZnNldDsKPiA+ID4gPiA+ID4gPiA+
ICsgICAgIGludCAgICAgc2NhbGU7Cj4gPiA+ID4gPiA+ID4gPiArICAgICBpbnQgICAgIGZ0X2Rl
dmlhdGlvbjsKPiA+ID4gPiA+ID4gPiA+ICsgICAgIGludCAgICAgdGVtcF9jYWxpYl9iYXNlOwo+
ID4gPiA+ID4gPiA+ID4gKyAgICAgaW50ICAgICB0ZW1wX2RhdGFfYmFzZTsKPiA+ID4gPiA+ID4g
PiA+ICsgICAgIGludCAgICAgKCplbmFibGUpKHN0cnVjdCB0c2Vuc19kZXZpY2UgKnRtZGV2KTsK
PiA+ID4gPiA+ID4gPiA+ICsgICAgIGludCAgICAgKCpkaXNhYmxlKShzdHJ1Y3QgdHNlbnNfZGV2
aWNlICp0bWRldik7Cj4gPiA+ID4gPiA+ID4gPiArfTsKPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4g
PiA+IEknbSBub3Qgc3VwZXIgZm9uZCBvZiBoYXZpbmcgYSBsb3Qgb2YgcXVpcmtzIHRoYXQgYXJl
IG5vdCBuZWVkZWQuIElmCj4gPiA+ID4gPiA+ID4gd2UgZXZlciBuZWVkIHRob3NlIHF1aXJrcyB3
aGVuIGFkZGluZyBzdXBwb3J0IGZvciBhIG5ldyBTb0MsIHRoZW4KPiA+ID4gPiA+ID4gPiB5ZWFo
LCB3ZSBzaG91bGQgdG90YWxseSBoYXZlIHNvbWUsIGJ1dCBvbmx5IHdoZW4gYW5kIGlmIGl0J3Mg
bmVlZGVkLgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gT3RoZXJ3aXNlLCB0aGUgZHJpdmVy
IGlzIG1vcmUgY29tcGxpY2F0ZWQgZm9yIG5vIHBhcnRpY3VsYXIgcmVhc29uLgo+ID4gPiA+ID4g
Pgo+ID4gPiA+ID4gPiBUaGlzIGlzIHVuYXZvaWRhYmxlIGJlY2F1c2Ugb2YgdGhlIGRpZmZlcmVu
Y2UgaW4gc29jLgo+ID4gPiA+ID4KPiA+ID4gPiA+IEkga25vdywgYnV0IHRoaXMgaXNuJ3QgbXkg
cG9pbnQuCj4gPiA+ID4gPgo+ID4gPiA+ID4gTXkgcG9pbnQgaXMgdGhhdCBhdCB0aGlzIHRpbWUg
b2YgdGhlIGRyaXZlciBkZXZlbG9wbWVudCwgd2UgZG9uJ3Qga25vdwo+ID4gPiA+ID4gd2hhdCBp
cyBnb2luZyB0byBiZSBuZWVkZWQgdG8gc3VwcG9ydCBhbGwgb2YgdGhvc2UgU29Dcy4KPiA+ID4g
PiA+Cj4gPiA+ID4gPiBTb21lIG9mIHRoZSBwYXJhbWV0ZXJzIHlvdSBhZGRlZCBtaWdodCBub3Qg
YmUgbmVlZGVkLCBzb21lIHBhcmFtZXRlcnMKPiA+ID4gPiA+IG1pZ2h0IGJlIG1pc3NpbmcsIHdl
IGRvbid0IGtub3cuIFNvIGxldCdzIGtlZXAgaXQgc2ltcGxlIGZvciBub3cuCj4gPiA+ID4gPgo+
ID4gPiA+ID4gPiA+ID4gK3N0YXRpYyBpbnQgdHNlbnNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPiA+ID4gPiA+ID4gPiA+ICt7Cj4gPiA+ID4gPiA+ID4gPiArICAgICBzdHJ1
Y3QgdHNlbnNfZGV2aWNlICp0bWRldjsKPiA+ID4gPiA+ID4gPiA+ICsgICAgIHN0cnVjdCBkZXZp
Y2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gPiA+ID4gPiA+ID4gPiArICAgICBpbnQgcmV0Owo+ID4g
PiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ID4gKyAgICAgdG1kZXYgPSBkZXZtX2t6YWxsb2Mo
ZGV2LCBzaXplb2YoKnRtZGV2KSwgR0ZQX0tFUk5FTCk7Cj4gPiA+ID4gPiA+ID4gPiArICAgICBp
ZiAoIXRtZGV2KQo+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsK
PiA+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiA+ICsgICAgIHRtZGV2LT5kZXYgPSBkZXY7
Cj4gPiA+ID4gPiA+ID4gPiArICAgICB0bWRldi0+Y2hpcCA9IG9mX2RldmljZV9nZXRfbWF0Y2hf
ZGF0YSgmcGRldi0+ZGV2KTsKPiA+ID4gPiA+ID4gPiA+ICsgICAgIGlmICghdG1kZXYtPmNoaXAp
Cj4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ID4gPiA+ID4g
PiA+ID4gKwo+ID4gPiA+ID4gPiA+ID4gKyAgICAgcmV0ID0gdHNlbnNfaW5pdCh0bWRldik7Cj4g
PiA+ID4gPiA+ID4gPiArICAgICBpZiAocmV0KQo+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAg
ICByZXR1cm4gcmV0Owo+ID4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ID4gKyAgICAgcmV0
ID0gdHNlbnNfcmVnaXN0ZXIodG1kZXYpOwo+ID4gPiA+ID4gPiA+ID4gKyAgICAgaWYgKHJldCkK
PiA+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ID4gPiA+ID4gPiA+
ICsKPiA+ID4gPiA+ID4gPiA+ICsgICAgIHJldCA9IHRtZGV2LT5jaGlwLT5lbmFibGUodG1kZXYp
Owo+ID4gPiA+ID4gPiA+ID4gKyAgICAgaWYgKHJldCkKPiA+ID4gPiA+ID4gPiA+ICsgICAgICAg
ICAgICAgcmV0dXJuIHJldDsKPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiArICAgICBw
bGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCB0bWRldik7Cj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+
ID4gPiBZb3VyIHJlZ2lzdHJhdGlvbiBzaG91bGQgYmUgdGhlIHZlcnkgbGFzdCB0aGluZyB5b3Ug
ZG8uIE90aGVyd2lzZSwgeW91Cj4gPiA+ID4gPiA+ID4gaGF2ZSBhIHNtYWxsIHdpbmRvdyB3aGVy
ZSB0aGUgZ2V0X3RlbXAgY2FsbGJhY2sgY2FuIGJlIGNhbGxlZCwgYnV0IHRoZQo+ID4gPiA+ID4g
PiA+IGRyaXZlciB3aWxsIG5vdCBiZSBmdW5jdGlvbmFsIHlldC4KPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gTm8uIEFueXdheSwgdGhzIGRhdGEgcWNxdWlzaXRpb24gaXMgbXMgbGV2ZWwuCj4gPiA+
ID4gPgo+ID4gPiA+ID4gVGhhdCdzIGtpbmQgb2YgaXJyZWxldmFudC4gVGhlcmUncyBub3RoaW5n
IHByZXZlbnRpbmcgZ2V0X3RlbXAgdG8gYmUKPiA+ID4gPiA+IGNhbGxlZCByaWdodCBhd2F5Lgo+
ID4gPiA+Cj4gPiA+ID4gQXMgT25kxZllaiBzYWlkLAo+ID4gPiA+Cj4gPiA+ID4gUmVnaXN0cmF0
aW9uIGFmdGVyIGVuYWJsaW5nIHdpbGwgbGVhZCB0byBjYWxsIHR6IHVwZGF0ZSBvbiBub24tcmVn
aXN0ZXJlZCB0ego+ID4gPiA+IGZyb20gYW4gaW50ZXJydXB0IGhhbmRsZXIuCj4gPiA+Cj4gPiA+
IEknbSBwcm9iYWJseSBtaXNzaW5nIHNvbWV0aGluZyBidXQgeW91J3JlIG5vdCB1c2luZyB0aGUg
aW50ZXJydXB0cywgc28KPiA+ID4gaG93IGNvdWxkIGFuIGludGVycnVwdCBoYW5kbGVyIGNhbGwg
aXQ/Cj4gPiA+Cj4gPiA+IEFsc28sIG90aGVyIGRyaXZlcnMgc2VlbSB0byBiZSBkb2luZyB0aGF0
IGp1c3QgZmluZSAobXRrX3RoZXJtYWwgZm9yCj4gPiA+IGV4YW1wbGUpLCBzbyBzdXJlbHkgdGhl
cmUncyBhIHdheT8KPiA+Cj4gPiBMYXN0IHZlcnNpb24gaXMgdXNpbmcgdGhlIGludGVycnVwdHMu
Cj4gPgo+ID4gRHJpdmVycyBkbyBpdCBpbiB2YXJpb3VzIHdheXMuIEZvciBleGFtcGxlIGlteF90
aGVybWFsIChhbmQgb3RoZXJzIGxpa2UKPiA+IGhpc2lfdGhlcm1hbCkgZG9lcyBpdCB0aGUgc3Vn
Z2VzdGVkIHdheS4gSXQgZW5hYmxlcyBpbnRlcnJ1cHRzIGFmdGVyIHRoZXJtYWwKPiA+IHpvbmUg
cmVnaXN0cmF0aW9uLCBzbyB0aGF0IElSUSBoYW5kbGVyIGRvZXNuJ3QgZ2V0IGludm9rZWQgYmVm
b3JlIHRoZSB0emQgaXMKPiA+IHJlZ2lzdGVyZWQuCj4gCj4gRW5hYmxpbmcgdGhlIGludGVycnVw
dHMgYWZ0ZXIgdGhlIHJlZ2lzdHJhdGlvbiBtYWtlcyBzZW5zZSwgeWVzLCBidXQKPiBmaWxsaW5n
IHRoZSBkZXZpY2UgcHJpdmF0ZSBwb2ludGVyIHdpdGggdGhlIHByaXZhdGUgc3RydWN0dXJlLAo+
IGVuYWJsaW5nIHRoZSBjbG9ja3MsIHNldHRpbmcgdXAgdGhlIGNvbnRyb2xsZXIgYW5kIHNvIG9u
IGNhbiBiZSBkb25lCj4gYmVmb3JlLgoKSSBhZ3JlZS4gCgoJby4KCj4gTWF4aW1lCj4gCj4gLS0K
PiBNYXhpbWUgUmlwYXJkLCBCb290bGluCj4gRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdp
bmVlcmluZwo+IGh0dHBzOi8vYm9vdGxpbi5jb20KCgoKPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
