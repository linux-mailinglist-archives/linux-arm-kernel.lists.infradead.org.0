Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC61263CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 14:28:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdVgGXA9sioQrnuwbQQnY+liZfZwCJN+Ccfc4jXgFBk=; b=hXMY2z78vqr2ur
	Lwne2/xGMSLcpUILtn/xjIPOOT3JaBK/AFwrcczwKEY6ACp4h1129PHiYsFAJmX0CF9q4RFcv2fSC
	VfoqsMyf8H7n8HMlgDqDqVKVsX1LDMtMrtxi2/u6pNIb8cxW2BxSFBJqJRM4Fy3Yhqc12U1k1IwDR
	LsAH3PudwomATunZNErTielLm+gIs6zeiuhlEdrouVeYDWZh1wPJ49C3TMV3JTDi8XFnch6aDLeZN
	v4S6HxNjy617AUUjYTrfLeX64vVpfjRO0HptxmhbbqRRygZuN13zsF4vbzA4wxblOuL7cflyZDp96
	LGqz792plcwbEIYX2IVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTQLg-0002YT-Sn; Wed, 22 May 2019 12:28:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTQLY-0002XJ-4b; Wed, 22 May 2019 12:27:54 +0000
Received: from we0524.dip.tu-dresden.de ([141.76.178.12] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hTQLJ-0000jJ-2R; Wed, 22 May 2019 14:27:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Enric Balletbo Serra <eballetbo@gmail.com>
Subject: Re: [PATCH v3 1/3] thermal: rockchip: fix up the tsadc pinctrl
 setting error
Date: Wed, 22 May 2019 14:27:35 +0200
Message-ID: <2174314.1vfUlvne1O@phil>
In-Reply-To: <CAFqH_53nbiwzQKctNa7MBzgCcsRFn1p8g31Xgvo3E9k6eA8AKw@mail.gmail.com>
References: <1556618986-18923-1-git-send-email-zhangqing@rock-chips.com>
 <785392a0-282a-1e51-a4d6-a6d5ca478949@linaro.org>
 <CAFqH_53nbiwzQKctNa7MBzgCcsRFn1p8g31Xgvo3E9k6eA8AKw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_052752_331583_0160C528 
X-CRM114-Status: GOOD (  28.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Elaine Zhang <zhangqing@rock-chips.com>, huangtao@rock-chips.com,
 Linux PM list <linux-pm@vger.kernel.org>, xxx@rock-chips.com,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, vicencb@gmail.com,
 xf@rock-chips.com, Eduardo Valentin <edubezval@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Doug Anderson <dianders@chromium.org>,
 Zhang Rui <rui.zhang@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRW5yaWMsCgpBbSBNb250YWcsIDIwLiBNYWkgMjAxOSwgMTU6Mzg6MzIgQ0VTVCBzY2hyaWVi
IEVucmljIEJhbGxldGJvIFNlcnJhOgo+IEhpIGFsbCwKPiAKPiBBcyBwb2ludGVkIGJ5IFsxXSBh
bmQgWzJdIHRoaXMgY29tbWl0LCB0aGF0IG5vdyBpcyB1cHN0cmVhbSwgYnJlYWtzCj4gdmV5cm9u
IChyazMyODgpIGFuZCBrZXZpbiAocmszMzk5KSBib2FyZHMuIFRoZSBwcm9ibGVtIGlzIGVzcGVj
aWFsbHkKPiBjcml0aWNhbCBmb3IgdmV5cm9uIGJvYXJkcyBiZWNhdXNlIHRoZXkgZG9uJ3QgYm9v
dCBhbnltb3JlLgo+IAo+IEkgZGlkbid0IGxvb2sgZGVlcCBhdCB0aGUgcHJvYmxlbSBidXQgSSBo
YXZlIHNvbWUgY29uY2VybnMgYWJvdXQgdGhpcwo+IHBhdGNoLCBzZWUgYmVsb3cuCj4gCj4gWzFd
IGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2xpbnV4LXJvY2tjaGlwL21zZzI0NjU3Lmh0
bWwKPiBbMl0gaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvbGludXgtcm9ja2NoaXAvbXNn
MjQ3MzUuaHRtbAo+IAo+IE1pc3NhdGdlIGRlIERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fu
b0BsaW5hcm8ub3JnPiBkZWwgZGlhIGR0LiwgMzAKPiBk4oCZYWJyLiAyMDE5IGEgbGVzIDE1OjM5
Ogo+ID4KPiA+IE9uIDMwLzA0LzIwMTkgMTI6MDksIEVsYWluZSBaaGFuZyB3cm90ZToKPiA+ID4g
RXhwbGljaXRseSB1c2UgdGhlIHBpbmN0cmwgdG8gc2V0L3Vuc2V0IHRoZSByaWdodCBtb2RlCj4g
PiA+IGluc3RlYWQgb2YgcmVseWluZyBvbiB0aGUgcGluY3RybCBpbml0IG1vZGUuCj4gPiA+IEFu
ZCBpdCByZXF1aXJlcyBzZXR0aW5nIHRoZSB0c2h1dCBwb2xhcml0eSBiZWZvcmUgc2VsZWN0IHBp
bmN0cmwuCj4gPiA+Cj4gPiA+IFdoZW4gdGhlIHRlbXBlcmF0dXJlIHNlbnNvciBtb2RlIGlzIHNl
dCB0byAwLCBpdCB3aWxsIGF1dG9tYXRpY2FsbHkKPiA+ID4gcmVzZXQgdGhlIGJvYXJkIHZpYSB0
aGUgQ2xvY2stUmVzZXQtVW5pdCAoQ1JVKSBpZiB0aGUgb3ZlciB0ZW1wZXJhdHVyZQo+ID4gPiB0
aHJlc2hvbGQgaXMgcmVhY2hlZC4gSG93ZXZlciwgd2hlbiB0aGUgcGluY3RybCBpbml0aWFsaXpl
cywgaXQgZG9lcyBhCj4gPiA+IHRyYW5zaXRpb24gdG8gIm90cF9vdXQiIHdoaWNoIG1heSBsZWFk
IHRoZSBTb0MgcmVzdGFydCBhbGwgdGhlIHRpbWUuCj4gPiA+Cj4gPiA+ICJvdHBfb3V0IiBJTyBt
YXkgYmUgY29ubmVjdGVkIHRvIHRoZSBSRVNFVCBjaXJjdWl0IG9uIHRoZSBoYXJkd2FyZS4KPiA+
ID4gSWYgdGhlIElPIGlzIGluIHRoZSB3cm9uZyBzdGF0ZSwgaXQgd2lsbCB0cmlnZ2VyIFJFU0VU
Lgo+ID4gPiAoc2ltaWxhciB0byB0aGUgZWZmZWN0IG9mIHByZXNzaW5nIHRoZSBSRVNFVCBidXR0
b24pCj4gPiA+IHdoaWNoIHdpbGwgY2F1c2UgdGhlIHNvYyB0byByZXN0YXJ0IGFsbCB0aGUgdGlt
ZS4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9j
ay1jaGlwcy5jb20+Cj4gPgo+ID4gUmV2aWV3ZWQtYnk6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwu
bGV6Y2Fub0BsaW5hcm8ub3JnPgo+ID4KPiA+Cj4gPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMv
dGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMgfCAzNiArKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKystLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL3JvY2tj
aGlwX3RoZXJtYWwuYyBiL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPiA+ID4g
aW5kZXggOWM3NjQzZDYyZWQ3Li42ZGM3ZmM1MTZhYmYgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZl
cnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPiA+ID4gKysrIGIvZHJpdmVycy90aGVybWFs
L3JvY2tjaGlwX3RoZXJtYWwuYwo+ID4gPiBAQCAtMTcyLDYgKzE3Miw5IEBAIHN0cnVjdCByb2Nr
Y2hpcF90aGVybWFsX2RhdGEgewo+ID4gPiAgICAgICBpbnQgdHNodXRfdGVtcDsKPiA+ID4gICAg
ICAgZW51bSB0c2h1dF9tb2RlIHRzaHV0X21vZGU7Cj4gPiA+ICAgICAgIGVudW0gdHNodXRfcG9s
YXJpdHkgdHNodXRfcG9sYXJpdHk7Cj4gPiA+ICsgICAgIHN0cnVjdCBwaW5jdHJsICpwaW5jdHJs
Owo+ID4gPiArICAgICBzdHJ1Y3QgcGluY3RybF9zdGF0ZSAqZ3Bpb19zdGF0ZTsKPiA+ID4gKyAg
ICAgc3RydWN0IHBpbmN0cmxfc3RhdGUgKm90cF9zdGF0ZTsKPiA+ID4gIH07Cj4gPiA+Cj4gPiA+
ICAvKioKPiA+ID4gQEAgLTEyNDIsNiArMTI0NSw4IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdGhl
cm1hbF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gPiAgICAgICAgICAg
ICAgIHJldHVybiBlcnJvcjsKPiA+ID4gICAgICAgfQo+ID4gPgo+ID4gPiArICAgICB0aGVybWFs
LT5jaGlwLT5jb250cm9sKHRoZXJtYWwtPnJlZ3MsIGZhbHNlKTsKPiA+ID4gKwo+IAo+IFRoYXQn
cyB0aGUgbGluZSB0aGF0IGNhdXNlcyB0aGUgaGFuZy4gQ29tbWVudGluZyB0aGlzIG1ha2VzIHRo
ZSB2ZXlyb24KPiBib290IGFnYWluLiBQcm9iYWJseSB0aGlzIG5lZWRzIHRvIGdvIGFmdGVyIGNo
aXAtPmluaXRpYWxpemU/CgpJdCBuZWVkcyB0byBnbyBhZnRlciB0aGUgY2xrX2VuYWJsZSBjYWxs
cy4KQXQgdGhpcyBwb2ludCB0aGUgdHNhZGMgbWF5IHN0aWxsIGJlIHVuY2xvY2tlZC4KCj4gCj4g
PiA+ICAgICAgIGVycm9yID0gY2xrX3ByZXBhcmVfZW5hYmxlKHRoZXJtYWwtPmNsayk7Cj4gPiA+
ICAgICAgIGlmIChlcnJvcikgewo+ID4gPiAgICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRl
diwgImZhaWxlZCB0byBlbmFibGUgY29udmVydGVyIGNsb2NrOiAlZFxuIiwKPiA+ID4gQEAgLTEy
NjcsNiArMTI3MiwzMCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3RoZXJtYWxfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ID4gICAgICAgdGhlcm1hbC0+Y2hpcC0+aW5pdGlh
bGl6ZSh0aGVybWFsLT5ncmYsIHRoZXJtYWwtPnJlZ3MsCj4gPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgdGhlcm1hbC0+dHNodXRfcG9sYXJpdHkpOwo+ID4gPgo+ID4gPiArICAg
ICBpZiAodGhlcm1hbC0+dHNodXRfbW9kZSA9PSBUU0hVVF9NT0RFX0dQSU8pIHsKPiA+ID4gKyAg
ICAgICAgICAgICB0aGVybWFsLT5waW5jdHJsID0gZGV2bV9waW5jdHJsX2dldCgmcGRldi0+ZGV2
KTsKPiA+ID4gKyAgICAgICAgICAgICBpZiAoSVNfRVJSKHRoZXJtYWwtPnBpbmN0cmwpKSB7Cj4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICBkZXZfZXJyKCZwZGV2LT5kZXYsICJmYWlsZWQgdG8g
ZmluZCB0aGVybWFsIHBpbmN0cmxcbiIpOwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgcmV0
dXJuIFBUUl9FUlIodGhlcm1hbC0+cGluY3RybCk7Cj4gPiA+ICsgICAgICAgICAgICAgfQo+ID4g
PiArCj4gPiA+ICsgICAgICAgICAgICAgdGhlcm1hbC0+Z3Bpb19zdGF0ZSA9IHBpbmN0cmxfbG9v
a3VwX3N0YXRlKHRoZXJtYWwtPnBpbmN0cmwsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJncGlvIik7Cj4gCj4gU2hvdWxkbid0
IHRoaXMgbW9kZSBiZSBkb2N1bWVudGVkIHByb3Blcmx5IGluIHRoZSBiaW5kaW5nIGZpcnN0PwoK
TW9yZSBpbXBvcnRhbnRseSwgaXQgc2hvdWxkIGJlIF9iYWNrd2FyZHMtY29tcGF0aWJsZV8sIGFr
YSB3b3JrIHdpdGgKb2xkIGRldmljZXRyZWVzIHdpdGhvdXQgdGhhdCBwcm9wZXJ0eSBhbmQgbm90
IGJyZWFrIHRoZXJtYWwgaGFuZGxpbmcgZm9yCnRoZW0gZW50aXJlbHkuCgoKPiAKPiBUaGUgYmlu
ZGluZyBbM10gdGFsa3MgYWJvdXQgaW5pdCwgZGVmYXVsdCBhbmQgc2xlZXAgc3RhdGVzIGJ1dCAq
bm90Kgo+IGdwaW8gYW5kIG90cG91dC4gVGhlIHBhdGNoIHNlcmllcyBsb29rcyBpbmNvbXBsZXRl
IHRvIG1lIG9yIG5vdCB1c2luZwo+IHRoZSBwcm9wZXIgbmFtZXMuCj4gCj4gWzNdIGh0dHBzOi8v
ZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjItcmMxL3NvdXJjZS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9yb2NrY2hpcC10aGVybWFsLnR4dAo+IAo+ID4gPiAr
ICAgICAgICAgICAgIGlmIChJU19FUlJfT1JfTlVMTCh0aGVybWFsLT5ncGlvX3N0YXRlKSkgewo+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRv
IGZpbmQgdGhlcm1hbCBncGlvIHN0YXRlXG4iKTsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
IHJldHVybiAtRUlOVkFMOwo+ID4gPiArICAgICAgICAgICAgIH0KPiA+ID4gKwo+ID4gPiArICAg
ICAgICAgICAgIHRoZXJtYWwtPm90cF9zdGF0ZSA9IHBpbmN0cmxfbG9va3VwX3N0YXRlKHRoZXJt
YWwtPnBpbmN0cmwsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIm90cG91dCIpOwo+ID4gPiArICAgICAgICAgICAgIGlmIChJU19F
UlJfT1JfTlVMTCh0aGVybWFsLT5vdHBfc3RhdGUpKSB7Cj4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICBkZXZfZXJyKCZwZGV2LT5kZXYsICJmYWlsZWQgdG8gZmluZCB0aGVybWFsIG90cG91dCBz
dGF0ZVxuIik7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiA+
ID4gKyAgICAgICAgICAgICB9Cj4gPiA+ICsKPiAKPiBTYW1lIGhlcmUgb3Rwb3V0IGlzIG5vdCBh
IGRvY3VtZW50ZWQuCj4gCj4gQXMgdGhpcyBjaGFuZ2UgaXMgbm93IGluIG1haW5saW5lIGFuZCBp
cyBjYXVzaW5nIHZleXJvbiB0byBoYW5nIEknZAo+IHN1Z2dlc3QgcmV2ZXJ0aW5nIHRoaXMgY2hh
bmdlIGZvciBub3cuIEV2ZW4gZml4aW5nIHRoZSByb290IGNhdXNlCj4gKG1heWJlIHRoZSBvbmUg
SSBwb2ludGVkIGFib3ZlKSBhZnRlciB0aGlzIHBhdGNoIHdlIHdpbGwgaGF2ZSB0aGUKPiB0aGVy
bWFsIGRyaXZlciB0byBmYWlsIGJlY2F1c2UgImdwaW8iIGFuZCAib3Rwb3V0IiBzdGF0ZXMgYXJl
IG5vdAo+IGRlZmluZWQgbm9yIGRvY3VtZW50ZWQgKGEgY2hhbmdlIG9uIHRoaXMgd2lsbCBuZWVk
IHNvbWUgcmV2aWV3cyBhbmQKPiBhY2tzIGFuZCB0aW1lIEkgZ3Vlc3MpLgoKSSBkZWZpbml0bHkg
YWdyZWUgaGVyZS4gSGFuZGxpbmcgKyBjaGVja2luZyB0aGUgYmluZGluZyBjaGFuZ2UKYXMgd2Vs
bCBhcyBuZWVkZWQgZmFsbGJhY2sgY29kZSBpcyBkZWZpbml0bHkgbm90IG1hdGVyaWFsIGZvciAt
cmMta2VybmVscwpzbyB3ZSBzaG91bGQganVzdCByZXZlcnQgZm9yIG5vdyBhbmQgbGV0IEVsYWlu
ZSBmaXggdGhlIGlzc3VlcyBmb3IgNS4zLgoKQW55b25lIHZvbHVudGVlcmluZyBmb3Igc2VuZGlu
ZyBhIHJldmVydC1wYXRjaCB0byBFZHVhcmRvPyA6LSkKCkhlaWtvCgoKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
