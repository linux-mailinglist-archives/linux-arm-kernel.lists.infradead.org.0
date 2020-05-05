Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEE91C5F8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 20:02:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNie7PrvVsek4h200tX/gB4bUbkpcjDAKvaFXsVVghA=; b=pyYYh1n4HHmIK9
	D0yben9GWa9/4LgACsK6xuwqAv9d329+H7EF5s/qKvV8/T4NXgCkHW6Lf2Q9dFvCVtOwMUBCGdUGC
	X8g8d5nVk14l2z8rSqU8lc4RqHN2yFg203mh39DkDhNL+cBHIcdk7lrt4C0Prh59LFBww1IttGXg6
	HYSeomLRKa+pNv7T9uhkw3hRwd5AWXVVLxyBSg08NuiR36sZKH/rcnBHihSp0X5FDwM6fcq6fBV6Q
	w98lJ+FAKuClBI9zmgE74DK96N1fkbz6188nEsutFSYcKvbi7RP2puBop3EdLFvj5T+2qcl7JiS58
	gJceDCBtffwyl0OYHJWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1to-0001HN-2c; Tue, 05 May 2020 18:02:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW1tc-0001Ft-9d
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 18:02:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB08631B;
 Tue,  5 May 2020 11:02:16 -0700 (PDT)
Received: from [192.168.2.22] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 846713F305;
 Tue,  5 May 2020 11:02:15 -0700 (PDT)
Subject: Re: [PATCH 03/16] dt-bindings: ehci/ohci: Allow iommus property
 (fixed subject line)
To: Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20200505165212.76466-1-andre.przywara@arm.com>
 <20200505165212.76466-4-andre.przywara@arm.com>
 <eee99db5-4100-5064-97c0-abf54d2eec15@arm.com>
From: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Organization: ARM Ltd.
Message-ID: <2f7ee405-5950-c40e-80d6-43aef5c203bc@arm.com>
Date: Tue, 5 May 2020 19:01:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <eee99db5-4100-5064-97c0-abf54d2eec15@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_110220_382523_D656CE97 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDUvMDUvMjAyMCAxODo1MSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIwMjAtMDUtMDUg
NTo1MSBwbSwgQW5kcmUgUHJ6eXdhcmEgd3JvdGU6Cj4+IERhdGU6IE1vbiwgNCBNYXkgMjAyMCAx
Mjo0MzoxOCArMDEwMAo+PiBTdWJqZWN0OiBbUEFUQ0ggMDMvMTZdIGR0LWJpbmRpbmdzOiBlaGNp
L29oY2k6IEFsbG93IGlvbW11cyBwcm9wZXJ0eQo+Pgo+PiBBIE9IQ0kvRUhDSSBjb250cm9sbGVy
IGNvdWxkIGJlIGJlaGluZCBhbiBJT01NVSwgaW4gd2hpY2ggY2FzZSBhbiBpb21tdXMKPj4gcHJv
cGVydHkgYXNzaWducyB0aGUgc3RyZWFtIElEIGZvciB0aGlzIGRldmljZS4KPiAKPiBIbW0sIHBy
ZXR0eSBtdWNoIGFueSBETUEgbWFzdGVyIGRldmljZSBjb3VsZCBiZSBiZWhpbmQgYW4gSU9NTVUs
IGFuZCBpbgo+IGEgd2F5IHRoYXQncyBiYXNpY2FsbHkgZW50aXJlbHkgaXJyZWxldmFudCB0byB0
aGUgZGV2aWNlIGl0c2VsZiAoYW5kCj4gdGh1cyB0aGUgY29uc3VtZXIgb2YgaXRzIGJpbmRpbmcp
LiBJcyB0aGVyZSBhIGJldHRlciB3YXkgd2UgY2FuIGhhbmRsZQo+IHRoaXMgdGhhbiByZXBlYXRp
bmcgc3VjaCAic2VtaS1zdGFuZGFyZCIgcHJvcGVydGllcyBpbiBpbmRpdmlkdWFsCj4gYmluZGlu
Z3MgZm9yIGV2ZXIgbW9yZT8KCkkgd2FzIGFza2luZyBleGFjdGx5IHRoZSBzYW1lIHF1ZXN0aW9u
IHRvIFJvYi4KSW5kZWVkIHRoaXMgaXMgbW9yZSBvZiBhIHBhcmVudCBidXMgcHJvcGVydHksIGlm
IGF0IGFsbCwgYW5kIGluZGl2aWR1YWwKZHJpdmVycyBhcmUgbm90IGV2ZW4gYXdhcmUgb2YgdGhp
cy4KQnV0IHdoYXQgaXMgYSBkZXZpY2UgcHJvcGVydHkgaXMgdGhlIG51bWJlciBvZiBkZXZpY2Ug
SURzIHRoYXQgdGhlCmRldmljZSB1c2VzIGFuZCB0aGF0IHdvdWxkIG5lZWQgdG8gYmUgdHJhbnNs
YXRlZCBpbnRvIHN0cmVhbSBJRHMuCgpTbyBJIHRoaW5rIHRoaXMgaXMgbWVyZWx5IHNheWluZzog
anVzdCBhIHNpbmdsZSBkZXZpY2UgSUQuCgpBbmQgbm8sIHdlIGNvdWxkbid0IGNvbWUgdXAgd2l0
aCBzb21lIG1vcmUgZ2VuZXJpYyBzb2x1dGlvbiAoeWV0KS4gSQp0aGluayBhIHNpbWlsYXIgcHJv
YmxlbSBjb21lcyB1cCB3aXRoIHBvd2VyLWRvbWFpbnMgYW5kIG90aGVyIHByb3BlcnRpZXMKaGFu
ZGxlZCBieSBjb2RlIGluIGRyaXZlcnMvb2YuCgpDaGVlcnMsCkFuZHJlCgo+IAo+IFJvYmluLgo+
IAo+PiBBbGxvdyB0aGF0IHByb3BlcnR5IGluIHRoZSBEVCBiaW5kaW5ncyB0byBmaXggYSBjb21w
bGFpbnQgYWJvdXQgdGhlCj4+IEFybSBKdW5vCj4+IGJvYXJkJ3MgRFRTIGZpbGUuCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IEFuZHJlIFByenl3YXJhIDxhbmRyZS5wcnp5d2FyYUBhcm0uY29tPgo+PiAt
LS0KPj4gwqAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9nZW5lcmljLWVo
Y2kueWFtbCB8IDMgKysrCj4+IMKgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91
c2IvZ2VuZXJpYy1vaGNpLnlhbWwgfCAzICsrKwo+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3VzYi9nZW5lcmljLWVoY2kueWFtbAo+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy91c2IvZ2VuZXJpYy1laGNpLnlhbWwKPj4gaW5kZXggMTBlZGQwNTg3MmVhLi4y
MDY2NGMyOGJmYjIgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy91c2IvZ2VuZXJpYy1laGNpLnlhbWwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3VzYi9nZW5lcmljLWVoY2kueWFtbAo+PiBAQCAtNzQsNiArNzQsOSBAQCBw
cm9wZXJ0aWVzOgo+PiDCoMKgwqAgcGh5LW5hbWVzOgo+PiDCoMKgwqDCoMKgIGNvbnN0OiB1c2IK
Pj4gwqAgK8KgIGlvbW11czoKPj4gK8KgwqDCoCBtYXhJdGVtczogMQo+PiArCj4+IMKgIHJlcXVp
cmVkOgo+PiDCoMKgwqAgLSBjb21wYXRpYmxlCj4+IMKgwqDCoCAtIHJlZwo+PiBkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9nZW5lcmljLW9oY2kueWFt
bAo+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvZ2VuZXJpYy1vaGNp
LnlhbWwKPj4gaW5kZXggYmNmZmVjMWYxMzQxLi5mZjZjMDRjZGU2OTUgMTAwNjQ0Cj4+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvZ2VuZXJpYy1vaGNpLnlhbWwK
Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9nZW5lcmljLW9o
Y2kueWFtbAo+PiBAQCAtNzMsNiArNzMsOSBAQCBwcm9wZXJ0aWVzOgo+PiDCoMKgwqAgcGh5LW5h
bWVzOgo+PiDCoMKgwqDCoMKgIGNvbnN0OiB1c2IKPj4gwqAgK8KgIGlvbW11czoKPj4gK8KgwqDC
oCBtYXhJdGVtczogMQo+PiArCj4+IMKgIHJlcXVpcmVkOgo+PiDCoMKgwqAgLSBjb21wYXRpYmxl
Cj4+IMKgwqDCoCAtIHJlZwo+PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
