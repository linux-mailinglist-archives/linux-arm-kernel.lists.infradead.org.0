Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EF927409
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 03:35:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4M0G9oMeDs8jZK0yFujihcbtEuFam3UY4HPQS/51z30=; b=kDRFuZlCi4hMgqzIalQfc0nFv
	CHFOVyAwgqvTm4CHIFduZ4QFew8fB5QDYsl1VB6FvcY6Gg3lVr862o/SU6lGrQqvRkgqoKGJc17kQ
	gKeD/EGxJ7mbO1d5Wl68wsHc01Uzmrnb4TuL5RqzoeahrajRkDY7SQxqOTsX8wXeu/9Vbhec0grOm
	I/8h0e6urx8IUmFKaHlV4mTjIPWSrhU4mgXr9Ae3E0t1uU76KPDbJySxJBxgMZxNPBLS8hLhd2r2m
	6fO9TjNVwoYhxTe9oMXedtnpYkY1Y6KZB7KHrbirVK8Ii/MaH0pt4a8tgOyLWmqUGM0JUHm41hrd8
	JHwxfpZuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTcdH-0003HZ-HO; Thu, 23 May 2019 01:34:59 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTcd9-0003H5-WA; Thu, 23 May 2019 01:34:54 +0000
Received: from zhangqing?rock-chips.com (unknown [192.168.167.243])
 by regular1.263xmail.com (Postfix) with ESMTP id 3637E32F;
 Thu, 23 May 2019 09:34:41 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.236] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P9439T139953098970880S1558575278592295_; 
 Thu, 23 May 2019 09:34:40 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <0e1d8dc2cb0969a06cf6b0c8eac81de2>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: vicencb@gmail.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 1/3] thermal: rockchip: fix up the tsadc pinctrl
 setting error
To: Heiko Stuebner <heiko@sntech.de>,
 Enric Balletbo Serra <eballetbo@gmail.com>
References: <1556618986-18923-1-git-send-email-zhangqing@rock-chips.com>
 <785392a0-282a-1e51-a4d6-a6d5ca478949@linaro.org>
 <CAFqH_53nbiwzQKctNa7MBzgCcsRFn1p8g31Xgvo3E9k6eA8AKw@mail.gmail.com>
 <2174314.1vfUlvne1O@phil>
From: "elaine.zhang" <zhangqing@rock-chips.com>
Organization: rockchip
Message-ID: <a6780f8f-4144-f817-b4b8-c40f6aa5e806@rock-chips.com>
Date: Thu, 23 May 2019 09:34:37 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2174314.1vfUlvne1O@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_183452_396307_E69EEFEC 
X-CRM114-Status: GOOD (  26.46  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
 Doug Anderson <dianders@chromium.org>, huangtao@rock-chips.com,
 Linux PM list <linux-pm@vger.kernel.org>, xxx@rock-chips.com,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, vicencb@gmail.com,
 xf@rock-chips.com, Eduardo Valentin <edubezval@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aGksIEhlaWtvICYgRW5yaWM6CgrlnKggMjAxOS81LzIyIOS4i+WNiDg6MjcsIEhlaWtvIFN0dWVi
bmVyIOWGmemBkzoKPiBIaSBFbnJpYywKPgo+IEFtIE1vbnRhZywgMjAuIE1haSAyMDE5LCAxNToz
ODozMiBDRVNUIHNjaHJpZWIgRW5yaWMgQmFsbGV0Ym8gU2VycmE6Cj4+IEhpIGFsbCwKPj4KPj4g
QXMgcG9pbnRlZCBieSBbMV0gYW5kIFsyXSB0aGlzIGNvbW1pdCwgdGhhdCBub3cgaXMgdXBzdHJl
YW0sIGJyZWFrcwo+PiB2ZXlyb24gKHJrMzI4OCkgYW5kIGtldmluIChyazMzOTkpIGJvYXJkcy4g
VGhlIHByb2JsZW0gaXMgZXNwZWNpYWxseQo+PiBjcml0aWNhbCBmb3IgdmV5cm9uIGJvYXJkcyBi
ZWNhdXNlIHRoZXkgZG9uJ3QgYm9vdCBhbnltb3JlLgo+Pgo+PiBJIGRpZG4ndCBsb29rIGRlZXAg
YXQgdGhlIHByb2JsZW0gYnV0IEkgaGF2ZSBzb21lIGNvbmNlcm5zIGFib3V0IHRoaXMKPj4gcGF0
Y2gsIHNlZSBiZWxvdy4KPj4KPj4gWzFdIGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2xp
bnV4LXJvY2tjaGlwL21zZzI0NjU3Lmh0bWwKPj4gWzJdIGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0
L2xpc3RzL2xpbnV4LXJvY2tjaGlwL21zZzI0NzM1Lmh0bWwKPj4KPj4gTWlzc2F0Z2UgZGUgRGFu
aWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+IGRlbCBkaWEgZHQuLCAzMAo+
PiBk4oCZYWJyLiAyMDE5IGEgbGVzIDE1OjM5Ogo+Pj4gT24gMzAvMDQvMjAxOSAxMjowOSwgRWxh
aW5lIFpoYW5nIHdyb3RlOgo+Pj4+IEV4cGxpY2l0bHkgdXNlIHRoZSBwaW5jdHJsIHRvIHNldC91
bnNldCB0aGUgcmlnaHQgbW9kZQo+Pj4+IGluc3RlYWQgb2YgcmVseWluZyBvbiB0aGUgcGluY3Ry
bCBpbml0IG1vZGUuCj4+Pj4gQW5kIGl0IHJlcXVpcmVzIHNldHRpbmcgdGhlIHRzaHV0IHBvbGFy
aXR5IGJlZm9yZSBzZWxlY3QgcGluY3RybC4KPj4+Pgo+Pj4+IFdoZW4gdGhlIHRlbXBlcmF0dXJl
IHNlbnNvciBtb2RlIGlzIHNldCB0byAwLCBpdCB3aWxsIGF1dG9tYXRpY2FsbHkKPj4+PiByZXNl
dCB0aGUgYm9hcmQgdmlhIHRoZSBDbG9jay1SZXNldC1Vbml0IChDUlUpIGlmIHRoZSBvdmVyIHRl
bXBlcmF0dXJlCj4+Pj4gdGhyZXNob2xkIGlzIHJlYWNoZWQuIEhvd2V2ZXIsIHdoZW4gdGhlIHBp
bmN0cmwgaW5pdGlhbGl6ZXMsIGl0IGRvZXMgYQo+Pj4+IHRyYW5zaXRpb24gdG8gIm90cF9vdXQi
IHdoaWNoIG1heSBsZWFkIHRoZSBTb0MgcmVzdGFydCBhbGwgdGhlIHRpbWUuCj4+Pj4KPj4+PiAi
b3RwX291dCIgSU8gbWF5IGJlIGNvbm5lY3RlZCB0byB0aGUgUkVTRVQgY2lyY3VpdCBvbiB0aGUg
aGFyZHdhcmUuCj4+Pj4gSWYgdGhlIElPIGlzIGluIHRoZSB3cm9uZyBzdGF0ZSwgaXQgd2lsbCB0
cmlnZ2VyIFJFU0VULgo+Pj4+IChzaW1pbGFyIHRvIHRoZSBlZmZlY3Qgb2YgcHJlc3NpbmcgdGhl
IFJFU0VUIGJ1dHRvbikKPj4+PiB3aGljaCB3aWxsIGNhdXNlIHRoZSBzb2MgdG8gcmVzdGFydCBh
bGwgdGhlIHRpbWUuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBFbGFpbmUgWmhhbmcgPHpoYW5n
cWluZ0Byb2NrLWNoaXBzLmNvbT4KPj4+IFJldmlld2VkLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFu
aWVsLmxlemNhbm9AbGluYXJvLm9yZz4KPj4+Cj4+Pgo+Pj4KPj4+PiAtLS0KPj4+PiAgIGRyaXZl
cnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMgfCAzNiArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKystLS0KPj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9yb2Nr
Y2hpcF90aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4+Pj4g
aW5kZXggOWM3NjQzZDYyZWQ3Li42ZGM3ZmM1MTZhYmYgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVy
cy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9y
b2NrY2hpcF90aGVybWFsLmMKPj4+PiBAQCAtMTcyLDYgKzE3Miw5IEBAIHN0cnVjdCByb2NrY2hp
cF90aGVybWFsX2RhdGEgewo+Pj4+ICAgICAgICBpbnQgdHNodXRfdGVtcDsKPj4+PiAgICAgICAg
ZW51bSB0c2h1dF9tb2RlIHRzaHV0X21vZGU7Cj4+Pj4gICAgICAgIGVudW0gdHNodXRfcG9sYXJp
dHkgdHNodXRfcG9sYXJpdHk7Cj4+Pj4gKyAgICAgc3RydWN0IHBpbmN0cmwgKnBpbmN0cmw7Cj4+
Pj4gKyAgICAgc3RydWN0IHBpbmN0cmxfc3RhdGUgKmdwaW9fc3RhdGU7Cj4+Pj4gKyAgICAgc3Ry
dWN0IHBpbmN0cmxfc3RhdGUgKm90cF9zdGF0ZTsKPj4+PiAgIH07Cj4+Pj4KPj4+PiAgIC8qKgo+
Pj4+IEBAIC0xMjQyLDYgKzEyNDUsOCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3RoZXJtYWxfcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+PiAgICAgICAgICAgICAgICByZXR1
cm4gZXJyb3I7Cj4+Pj4gICAgICAgIH0KPj4+Pgo+Pj4+ICsgICAgIHRoZXJtYWwtPmNoaXAtPmNv
bnRyb2wodGhlcm1hbC0+cmVncywgZmFsc2UpOwo+Pj4+ICsKPj4gVGhhdCdzIHRoZSBsaW5lIHRo
YXQgY2F1c2VzIHRoZSBoYW5nLiBDb21tZW50aW5nIHRoaXMgbWFrZXMgdGhlIHZleXJvbgo+PiBi
b290IGFnYWluLiBQcm9iYWJseSB0aGlzIG5lZWRzIHRvIGdvIGFmdGVyIGNoaXAtPmluaXRpYWxp
emU/Cj4gSXQgbmVlZHMgdG8gZ28gYWZ0ZXIgdGhlIGNsa19lbmFibGUgY2FsbHMuCj4gQXQgdGhp
cyBwb2ludCB0aGUgdHNhZGMgbWF5IHN0aWxsIGJlIHVuY2xvY2tlZC4KClRoZSBjbGsgaXMgZW5h
YmxlIGJ5IGRlZmF1bHQuCgoKVGhlIHJlYXNvbiBmb3IgdGhpcyBtb2RpZmljYXRpb246CgpUaGUg
b3RwIFBpbiBwb2xhcml0eSBzZXR0aW5nIGZvciB0c2FkYyBtdXN0IGJlIHNldCB3aGVuIHRzYWRj
IGlzIHR1cm5lZCBvZmYuCgpUaGUgb3JkZXI6CgpDbG9zZSB0aGUgdHNhZGMtPlNldCB0aGUgb3Rw
IHBpbiBwb2xhcml0eSAtPlNldCB0aGUgcGluY3RybC0+aW5pdGlhbGl6ZSAKdGhlIHRzYWRjLT5P
cGVuIHRoZSB0c2FkYwoKCkFzIGZvciB0aGUgcHJvYmxlbSB5b3UgbWVudGlvbmVkLCBJIGd1ZXNz
OiBUaGUgZGVmYXVsdCBwb2xhcml0eSBvZiBvdHAgCmRvZXMgbm90IG1hdGNoIHRoZSBkZWZhdWx0
IHN0YXRlLCB0aGF0IGlzLCB0aGUgb3RwIGlzIHRyaWdnZXJlZCBieSAKZGVmYXVsdCwgYW5kIHRo
ZW4gdGhlIHJlc2V0IGNpcmN1aXQgb2YgdGhlIGhhcmR3YXJlIHRha2VzIGVmZmVjdCBhbmQgaXMg
CnJlc3RhcnRlZCBhbGwgdGhlIHRpbWUuCk1vZGlmaWNhdGlvbjoKMS4gRm9yIHRoaXMgaGFyZHdh
cmUsIG90cCBwaW4gZGVmYXVsdCBzdGF0ZSBpcyBtb2RpZmllZC4KMi4gVGhlIG1vZGUgb2YgdXNp
bmcgQ1JVIGlzIHJvY2tjaGlwLGh3LXRzaHV0LW1vZGUgPSA8MD4gaW4gRFRTOwovKiB0c2h1dCBt
b2RlIDA6Q1JVIDE6R1BJTyAqLwoKUmVjb21tZW5kZWQgdXNlIG1ldGhvZCAyLiBZb3UgY2FuIHRy
eSBpdC4KCj4KPj4+PiAgICAgICAgZXJyb3IgPSBjbGtfcHJlcGFyZV9lbmFibGUodGhlcm1hbC0+
Y2xrKTsKPj4+PiAgICAgICAgaWYgKGVycm9yKSB7Cj4+Pj4gICAgICAgICAgICAgICAgZGV2X2Vy
cigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSBjb252ZXJ0ZXIgY2xvY2s6ICVkXG4iLAo+
Pj4+IEBAIC0xMjY3LDYgKzEyNzIsMzAgQEAgc3RhdGljIGludCByb2NrY2hpcF90aGVybWFsX3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+Pj4gICAgICAgIHRoZXJtYWwtPmNo
aXAtPmluaXRpYWxpemUodGhlcm1hbC0+Z3JmLCB0aGVybWFsLT5yZWdzLAo+Pj4+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHRoZXJtYWwtPnRzaHV0X3BvbGFyaXR5KTsKPj4+Pgo+
Pj4+ICsgICAgIGlmICh0aGVybWFsLT50c2h1dF9tb2RlID09IFRTSFVUX01PREVfR1BJTykgewo+
Pj4+ICsgICAgICAgICAgICAgdGhlcm1hbC0+cGluY3RybCA9IGRldm1fcGluY3RybF9nZXQoJnBk
ZXYtPmRldik7Cj4+Pj4gKyAgICAgICAgICAgICBpZiAoSVNfRVJSKHRoZXJtYWwtPnBpbmN0cmwp
KSB7Cj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRldiwgImZhaWxl
ZCB0byBmaW5kIHRoZXJtYWwgcGluY3RybFxuIik7Cj4+Pj4gKyAgICAgICAgICAgICAgICAgICAg
IHJldHVybiBQVFJfRVJSKHRoZXJtYWwtPnBpbmN0cmwpOwo+Pj4+ICsgICAgICAgICAgICAgfQo+
Pj4+ICsKPj4+PiArICAgICAgICAgICAgIHRoZXJtYWwtPmdwaW9fc3RhdGUgPSBwaW5jdHJsX2xv
b2t1cF9zdGF0ZSh0aGVybWFsLT5waW5jdHJsLAo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJncGlvIik7Cj4+IFNob3VsZG4ndCB0
aGlzIG1vZGUgYmUgZG9jdW1lbnRlZCBwcm9wZXJseSBpbiB0aGUgYmluZGluZyBmaXJzdD8KPiBN
b3JlIGltcG9ydGFudGx5LCBpdCBzaG91bGQgYmUgX2JhY2t3YXJkcy1jb21wYXRpYmxlXywgYWth
IHdvcmsgd2l0aAo+IG9sZCBkZXZpY2V0cmVlcyB3aXRob3V0IHRoYXQgcHJvcGVydHkgYW5kIG5v
dCBicmVhayB0aGVybWFsIGhhbmRsaW5nIGZvcgo+IHRoZW0gZW50aXJlbHkuCklmIG5lZWTCoCBf
YmFja3dhcmRzLWNvbXBhdGlibGVfLMKgIEl0J3MgY2FuJ3QgcmV0dXJuIApQVFJfRVJSKHRoZXJt
YWwtPnBpbmN0cmwpIHdoZW4gZ2V0CgpkZXZtX3BpbmN0cmxfZ2V0IGZhaWxlZC4KCj4KPj4gVGhl
IGJpbmRpbmcgWzNdIHRhbGtzIGFib3V0IGluaXQsIGRlZmF1bHQgYW5kIHNsZWVwIHN0YXRlcyBi
dXQgKm5vdCoKPj4gZ3BpbyBhbmQgb3Rwb3V0LiBUaGUgcGF0Y2ggc2VyaWVzIGxvb2tzIGluY29t
cGxldGUgdG8gbWUgb3Igbm90IHVzaW5nCj4+IHRoZSBwcm9wZXIgbmFtZXMuCj4+Cj4+IFszXSBo
dHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS4yLXJjMS9zb3VyY2UvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvcm9ja2NoaXAtdGhlcm1hbC50eHQKPj4K
Pj4+PiArICAgICAgICAgICAgIGlmIChJU19FUlJfT1JfTlVMTCh0aGVybWFsLT5ncGlvX3N0YXRl
KSkgewo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICBkZXZfZXJyKCZwZGV2LT5kZXYsICJmYWls
ZWQgdG8gZmluZCB0aGVybWFsIGdwaW8gc3RhdGVcbiIpOwo+Pj4+ICsgICAgICAgICAgICAgICAg
ICAgICByZXR1cm4gLUVJTlZBTDsKPj4+PiArICAgICAgICAgICAgIH0KPj4+PiArCj4+Pj4gKyAg
ICAgICAgICAgICB0aGVybWFsLT5vdHBfc3RhdGUgPSBwaW5jdHJsX2xvb2t1cF9zdGF0ZSh0aGVy
bWFsLT5waW5jdHJsLAo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIm90cG91dCIpOwo+Pj4+ICsgICAgICAgICAgICAgaWYgKElTX0VS
Ul9PUl9OVUxMKHRoZXJtYWwtPm90cF9zdGF0ZSkpIHsKPj4+PiArICAgICAgICAgICAgICAgICAg
ICAgZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGZpbmQgdGhlcm1hbCBvdHBvdXQgc3Rh
dGVcbiIpOwo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPj4+PiAr
ICAgICAgICAgICAgIH0KPj4+PiArCj4+IFNhbWUgaGVyZSBvdHBvdXQgaXMgbm90IGEgZG9jdW1l
bnRlZC4KPj4KPj4gQXMgdGhpcyBjaGFuZ2UgaXMgbm93IGluIG1haW5saW5lIGFuZCBpcyBjYXVz
aW5nIHZleXJvbiB0byBoYW5nIEknZAo+PiBzdWdnZXN0IHJldmVydGluZyB0aGlzIGNoYW5nZSBm
b3Igbm93LiBFdmVuIGZpeGluZyB0aGUgcm9vdCBjYXVzZQo+PiAobWF5YmUgdGhlIG9uZSBJIHBv
aW50ZWQgYWJvdmUpIGFmdGVyIHRoaXMgcGF0Y2ggd2Ugd2lsbCBoYXZlIHRoZQo+PiB0aGVybWFs
IGRyaXZlciB0byBmYWlsIGJlY2F1c2UgImdwaW8iIGFuZCAib3Rwb3V0IiBzdGF0ZXMgYXJlIG5v
dAo+PiBkZWZpbmVkIG5vciBkb2N1bWVudGVkIChhIGNoYW5nZSBvbiB0aGlzIHdpbGwgbmVlZCBz
b21lIHJldmlld3MgYW5kCj4+IGFja3MgYW5kIHRpbWUgSSBndWVzcykuCj4gSSBkZWZpbml0bHkg
YWdyZWUgaGVyZS4gSGFuZGxpbmcgKyBjaGVja2luZyB0aGUgYmluZGluZyBjaGFuZ2UKPiBhcyB3
ZWxsIGFzIG5lZWRlZCBmYWxsYmFjayBjb2RlIGlzIGRlZmluaXRseSBub3QgbWF0ZXJpYWwgZm9y
IC1yYy1rZXJuZWxzCj4gc28gd2Ugc2hvdWxkIGp1c3QgcmV2ZXJ0IGZvciBub3cgYW5kIGxldCBF
bGFpbmUgZml4IHRoZSBpc3N1ZXMgZm9yIDUuMy4KPgo+IEFueW9uZSB2b2x1bnRlZXJpbmcgZm9y
IHNlbmRpbmcgYSByZXZlcnQtcGF0Y2ggdG8gRWR1YXJkbz8gOi0pCgpJIGFncmVlIHRvIHJldmVy
dCB0aGUgcGF0Y2gsYW5kIEkgd2lsbCBjb3JyZWN0IGl0IGFuZCBwdXNoIGl0IGxhdGVyLgoKRG8g
SSBuZWVkIHRvIGNvbW1pdCB0aGUgcmV2ZXJ0IHRoZSBwYXRjaCBub3c/QEhlaWtvCgo+Cj4gSGVp
a28KPgo+Cj4KPgo+Cj4KPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
