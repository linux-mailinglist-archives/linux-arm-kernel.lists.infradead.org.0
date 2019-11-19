Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 899D110301F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 00:25:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5gItjsAh7aJS3z1Qmk36JhZMIDXrtoFRY+1X6Kb7Zvw=; b=PZ87gkb0LP3KYV
	6vFa+ARrcGF6o7GjIdMJVy9bs616n4olqhpAkeVKWHWI9EqM79YshvM999XvU/ncu9qFsWkID3mJM
	j9YDekBpo7upHErphkB8DjRFjGEjgMhPLBVF9QP89QQZMRrlqGhaDHXbA2TKkwlf2h3X/bPGB9S+P
	Fh0OK12JBkRmOZjYl2RHlRQNoYIoX6ufSDACFnOLDhOK1lBxWDV2ZGMHNp76lyqycGGoSZE07ot3/
	Fg90IYMsALvByNxM8GbLNEAm0njqiQILWVuYsTTSt82QI4WEL8t5m0cDQheJ2hF2meDbKO4hu+gNW
	7TAT3ZX3BmRUhdvHAt4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXCsP-00065e-KM; Tue, 19 Nov 2019 23:25:41 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXCsE-00064c-Ed; Tue, 19 Nov 2019 23:25:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D9B13ACC0;
 Tue, 19 Nov 2019 23:25:26 +0000 (UTC)
Subject: Re: [PATCH v4 2/8] irqchip: Add Realtek RTD1295 mux driver
To: Marc Zyngier <maz@kernel.org>
References: <20191119021917.15917-1-afaerber@suse.de>
 <20191119021917.15917-3-afaerber@suse.de>
 <a34e00cac16899b53d0b6445f0e81f4c@www.loen.fr>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <0bff78c1-a1d0-9631-fbf4-e0d1ef1264ea@suse.de>
Date: Wed, 20 Nov 2019 00:25:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <a34e00cac16899b53d0b6445f0e81f4c@www.loen.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_152530_784355_96648DC3 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: James Tai <james.tai@realtek.com>,
 Aleix Roca Nonell <kernelrocks@gmail.com>,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTkuMTEuMTkgdW0gMTM6MDEgc2NocmllYiBNYXJjIFp5bmdpZXI6Cj4gT24gMjAxOS0xMS0x
OSAwMjoxOSwgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9p
cnFjaGlwL2lycS1ydGQxMTk1LW11eC5jCj4+IGIvZHJpdmVycy9pcnFjaGlwL2lycS1ydGQxMTk1
LW11eC5jCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uZTZi
MDg0MzhiMjNjCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvZHJpdmVycy9pcnFjaGlwL2lycS1y
dGQxMTk1LW11eC5jClsuLi5dCj4+ICtzdGF0aWMgdm9pZCBydGQxMTk1X211eF9pcnFfaGFuZGxl
KHN0cnVjdCBpcnFfZGVzYyAqZGVzYykKPj4gK3sKPj4gK8KgwqDCoCBzdHJ1Y3QgcnRkMTE5NV9p
cnFfbXV4X2RhdGEgKmRhdGEgPSBpcnFfZGVzY19nZXRfaGFuZGxlcl9kYXRhKGRlc2MpOwo+PiAr
wqDCoMKgIHN0cnVjdCBpcnFfY2hpcCAqY2hpcCA9IGlycV9kZXNjX2dldF9jaGlwKGRlc2MpOwo+
PiArwqDCoMKgIHUzMiBpc3IsIG1hc2s7Cj4+ICvCoMKgwqAgaW50IGk7Cj4+ICsKPj4gK8KgwqDC
oCBjaGFpbmVkX2lycV9lbnRlcihjaGlwLCBkZXNjKTsKPj4gKwo+PiArwqDCoMKgIGlzciA9IHJl
YWRsX3JlbGF4ZWQoZGF0YS0+cmVnX2lzcik7Cj4+ICsKPj4gK8KgwqDCoCB3aGlsZSAoaXNyKSB7
Cj4+ICvCoMKgwqDCoMKgwqDCoCBpID0gX19mZnMoaXNyKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGlz
ciAmPSB+QklUKGkpOwo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoCBtYXNrID0gZGF0YS0+aW5mby0+
aXNyX3RvX2ludF9lbl9tYXNrW2ldOwo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKG1hc2sgJiYgIShk
YXRhLT5zY3B1X2ludF9lbiAmIG1hc2spKQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250
aW51ZTsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKCFnZW5lcmljX2hhbmRsZV9pcnEoaXJx
X2ZpbmRfbWFwcGluZyhkYXRhLT5kb21haW4sIGkpKSkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgd3JpdGVsX3JlbGF4ZWQoQklUKGkpLCBkYXRhLT5yZWdfaXNyKTsKPiAKPiBXaGF0IGRvZXMg
dGhpcyB3cml0ZSBkbyBleGFjdGx5PyBJdCBpcyB0aGUgc2FtZSB0aGluZyBhcyBhICdtYXNrJywK
PiB3aGljaCBpcyBwcmV0dHkgb2RkLiBTbyBlaXRoZXI6Cj4gCj4gLSB0aGlzIGlzIG5vdCBkb2lu
ZyBhbnl0aGluZyBhbmQgeW91ciAnbWFzaycgY2FsbGJhY2sgaXMgYm9ndXMKPiDCoCAob3RoZXJ3
aXNlIHlvdSdkIG5ldmVyIGhhdmUgbW9yZSB0aGFuIGEgc2luZ2xlIGludGVycnVwdCkKPiAKPiAt
IG9yIHRoaXMgaXMgYW4gQUNLIG9wZXJhdGlvbiwgYW5kIHRoaXMgc2hvdWxkIGJlIGRlc2NyaWJl
ZCBhcwo+IMKgIHN1Y2ggKGFuZCB0aGVuIGZpeCB0aGUgbWFzay91bm1hc2svZW5hYmxlL2Rpc2Fi
bGUgbWVzcyB0aGF0Cj4gwqAgcmVzdWx0cyBmcm9tIGl0KS4KClRoaXMgaXMgc3VwcG9zZWQgdG8g
YmUgYW4gQUNLLCBpLmUuIGNsZWFyLTEtYml0cyBvcGVyYXRpb24uCgpUaGUgQlNQIGhhZCBleHRl
bmRlZCB2YXJpb3VzIGRyaXZlcnMsIHN1Y2ggYXMgODI1MCBVQVJULCB0byBkbyB0aGlzIGFjawpp
biB0aGVpciBpbnRlcnJ1cHQgaGFuZGxlciB0aHJvdWdoIGFuIGFkZGl0aW9uYWwgRFQgcmVnIHJl
Z2lvbi4gSSB0cmllZAp0byBjbGVhbiB0aGF0IHVwIGJ5IGhhbmRsaW5nIGl0IGNlbnRyYWxseSBo
ZXJlIGluIHRoZSBpcnFjaGlwIGRyaXZlci4KCj4gCj4gYXMgSSBjYW4ndCBzZWUgaG93IHRoZSBz
YW1lIHJlZ2lzdGVyIGNhbiBiZSB1c2VkIGZvciBib3RoIHB1cnBvc2VzLgo+IFlvdSBzaG91bGQg
YmUgYWJsZSB0byB2ZXJpZnkgdGhpcyBleHBlcmltZW50YWxseSwgZXZlbiB3aXRob3V0Cj4gZG9j
dW1lbnRhdGlvbi4KClRoZXJlIGFyZSB0aHJlZSByZWdpc3RlcnMgaGVyZToKCk1JU19VTVNLX0lT
UiAgICAtIE1JU0MgdW5tYXNrZWQgaW50ZXJydXB0IHN0YXR1cyByZWdpc3RlcgpNSVNfSVNSICAg
ICAgICAgLSBNSVNDICAgbWFza2VkIGludGVycnVwdCBzdGF0dXMgcmVnaXN0ZXIKTUlTX1NDUFVf
SU5UX0VOIC0gTUlTQyBTQ1BVIGludGVycnVwdCBlbmFibGUgcmVnaXN0ZXIKClRoZSBsYXR0ZXIg
aXMgYSByZWd1bGFyIFIvVyByZWdpc3RlcjsgdGhlIGZvcm1lciB0d28gaGF2ZSBhIHdyaXRlX2Rh
dGEKZmllbGQgYXMgQklUKDApLCB3aXRoIDEgaW5kaWNhdGluZyBhIHdyaXRlIHZzLiAwIGluZGlj
YXRpbmcgY2xlYXIsIFJBWi4KCkJ5IGVuYWJsaW5nL2Rpc2FibGluZyBpbiBfU0NQVV9JTlRfRU4g
d2UgbWFzay91bm1hc2sgdGhlbSBpbiBfSVNSIGJ1dApub3QgaW4gX1VNU0tfSVNSLgoKRG9lcyB0
aGF0IHNoZWQgYW55IG1vcmUgbGlnaHQ/CgpTbyBnaXZlbiB0aGF0IHdlJ3JlIGl0ZXJhdGluZyBv
dmVyIHJlZ19pc3IgYWJvdmUsIHdlIGNvdWxkIHByb2JhYmx5IGRyb3AKdGhlIG1hc2sgY2hlY2sg
aGVyZS4uLgoKSW4gYWRkaXRpb24gdGhlcmUgYXJlIE1JU19bVU1TS19dSVNSX1NXQyBhbmQgTUlT
X1NFVFRJTkdfU1dDIHJlZ2lzdGVycwpmb3IgU2VjdXJlIFdvcmxkLCBhbmQgTUlTX0ZBU1RfSU5U
X0VOXyogYW5kIE1JU19GQVNUX0lTUiBhcyB3ZWxsIGFzCnZhcmlvdXMgR1BJTyBpbnRlcnJ1cHQg
cmVnaXN0ZXJzLgoKUmVnYXJkcywKQW5kcmVhcwoKPj4gK8KgwqDCoCB9Cj4+ICsKPj4gK8KgwqDC
oCBjaGFpbmVkX2lycV9leGl0KGNoaXAsIGRlc2MpOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgdm9p
ZCBydGQxMTk1X211eF9tYXNrX2lycShzdHJ1Y3QgaXJxX2RhdGEgKmRhdGEpCj4+ICt7Cj4+ICvC
oMKgwqAgc3RydWN0IHJ0ZDExOTVfaXJxX211eF9kYXRhICptdXhfZGF0YSA9Cj4+IGlycV9kYXRh
X2dldF9pcnFfY2hpcF9kYXRhKGRhdGEpOwo+PiArCj4+ICvCoMKgwqAgd3JpdGVsX3JlbGF4ZWQo
QklUKGRhdGEtPmh3aXJxKSwgbXV4X2RhdGEtPnJlZ19pc3IpOwo+PiArfQo+PiArCj4+ICtzdGF0
aWMgdm9pZCBydGQxMTk1X211eF91bm1hc2tfaXJxKHN0cnVjdCBpcnFfZGF0YSAqZGF0YSkKPj4g
K3sKPj4gK8KgwqDCoCBzdHJ1Y3QgcnRkMTE5NV9pcnFfbXV4X2RhdGEgKm11eF9kYXRhID0KPj4g
aXJxX2RhdGFfZ2V0X2lycV9jaGlwX2RhdGEoZGF0YSk7Cj4+ICsKPj4gK8KgwqDCoCB3cml0ZWxf
cmVsYXhlZChCSVQoZGF0YS0+aHdpcnEpLCBtdXhfZGF0YS0+cmVnX3Vtc2tfaXNyKTsKPj4gK30K
Pj4gKwo+PiArc3RhdGljIHZvaWQgcnRkMTE5NV9tdXhfZW5hYmxlX2lycShzdHJ1Y3QgaXJxX2Rh
dGEgKmRhdGEpCj4+ICt7Cj4+ICvCoMKgwqAgc3RydWN0IHJ0ZDExOTVfaXJxX211eF9kYXRhICpt
dXhfZGF0YSA9Cj4+IGlycV9kYXRhX2dldF9pcnFfY2hpcF9kYXRhKGRhdGEpOwo+PiArwqDCoMKg
IHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4+ICvCoMKgwqAgdTMyIG1hc2s7Cj4+ICsKPj4gK8KgwqDC
oCBtYXNrID0gbXV4X2RhdGEtPmluZm8tPmlzcl90b19pbnRfZW5fbWFza1tkYXRhLT5od2lycV07
Cj4+ICvCoMKgwqAgaWYgKCFtYXNrKQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+IAo+IEhv
dyBjYW4gdGhpcyBoYXBwZW4/IFlvdSd2ZSBtYXBwZWQgdGhlIGludGVycnVwdCwgc28gaXQgZXhp
c3RzLgo+IEkgY2FuJ3Qgc2VlIGhvdyB5b3UgY2FuIGRlY2lkZSB0byBmYWlsIHN1Y2ggZW5hYmxl
Lgo+IAo+PiArCj4+ICvCoMKgwqAgcmF3X3NwaW5fbG9ja19pcnFzYXZlKCZtdXhfZGF0YS0+bG9j
aywgZmxhZ3MpOwo+PiArCj4+ICvCoMKgwqAgbXV4X2RhdGEtPnNjcHVfaW50X2VuIHw9IG1hc2s7
Cj4+ICvCoMKgwqAgd3JpdGVsX3JlbGF4ZWQobXV4X2RhdGEtPnNjcHVfaW50X2VuLCBtdXhfZGF0
YS0+cmVnX3NjcHVfaW50X2VuKTsKPj4gKwo+PiArwqDCoMKgIHJhd19zcGluX3VubG9ja19pcnFy
ZXN0b3JlKCZtdXhfZGF0YS0+bG9jaywgZmxhZ3MpOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgdm9p
ZCBydGQxMTk1X211eF9kaXNhYmxlX2lycShzdHJ1Y3QgaXJxX2RhdGEgKmRhdGEpCj4+ICt7Cj4+
ICvCoMKgwqAgc3RydWN0IHJ0ZDExOTVfaXJxX211eF9kYXRhICptdXhfZGF0YSA9Cj4+IGlycV9k
YXRhX2dldF9pcnFfY2hpcF9kYXRhKGRhdGEpOwo+PiArwqDCoMKgIHVuc2lnbmVkIGxvbmcgZmxh
Z3M7Cj4+ICvCoMKgwqAgdTMyIG1hc2s7Cj4+ICsKPj4gK8KgwqDCoCBtYXNrID0gbXV4X2RhdGEt
PmluZm8tPmlzcl90b19pbnRfZW5fbWFza1tkYXRhLT5od2lycV07Cj4+ICvCoMKgwqAgaWYgKCFt
YXNrKQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+PiArCj4+ICvCoMKgwqAgcmF3X3NwaW5f
bG9ja19pcnFzYXZlKCZtdXhfZGF0YS0+bG9jaywgZmxhZ3MpOwo+PiArCj4+ICvCoMKgwqAgbXV4
X2RhdGEtPnNjcHVfaW50X2VuICY9IH5tYXNrOwo+PiArwqDCoMKgIHdyaXRlbF9yZWxheGVkKG11
eF9kYXRhLT5zY3B1X2ludF9lbiwgbXV4X2RhdGEtPnJlZ19zY3B1X2ludF9lbik7Cj4+ICsKPj4g
K8KgwqDCoCByYXdfc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmbXV4X2RhdGEtPmxvY2ssIGZsYWdz
KTsKPj4gK30KPj4gKwo+PiArc3RhdGljIHN0cnVjdCBpcnFfY2hpcCBydGQxMTk1X211eF9pcnFf
Y2hpcCA9IHsKPj4gK8KgwqDCoCAubmFtZcKgwqDCoMKgwqDCoMKgID0gInJ0ZDExOTUtbXV4IiwK
Pj4gK8KgwqDCoCAuaXJxX21hc2vCoMKgwqAgPSBydGQxMTk1X211eF9tYXNrX2lycSwKPj4gK8Kg
wqDCoCAuaXJxX3VubWFza8KgwqDCoCA9IHJ0ZDExOTVfbXV4X3VubWFza19pcnEsCj4+ICvCoMKg
wqAgLmlycV9lbmFibGXCoMKgwqAgPSBydGQxMTk1X211eF9lbmFibGVfaXJxLAo+PiArwqDCoMKg
IC5pcnFfZGlzYWJsZcKgwqDCoCA9IHJ0ZDExOTVfbXV4X2Rpc2FibGVfaXJxLAo+PiArfTsKPiAK
PiBbLi4uXQo+IAo+IEFsdGhvdWdoIHRoZSBjb2RlIGlzIHByZXR0eSBjbGVhbiwgdGhlIHdheSB5
b3UgZHJpdmUgdGhlIEhXIGxvb2tzCj4gc3VzcGljaW91cywgYW5kIHJlcXVpcmVzIGNsYXJpZmlj
YXRpb24uCj4gCj4gVGhhbmtzLAo+IAo+IMKgwqDCoMKgwqDCoMKgIE0uCgoKLS0gClNVU0UgU29m
dHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJl
cmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVy
ZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
