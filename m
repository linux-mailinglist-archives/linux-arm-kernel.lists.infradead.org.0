Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 807AA112DC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 15:51:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uWTeViw/08bbLvBk1XP0lnFfGwsRbcQJA0bcNRufdzI=; b=hSc5fdlKQ/IsMbu1kM1DN3M5J
	nOw8Zu3Yrv7Jp4xUaQBui6pe3IZJRlBXG9aUbmoVaxhLVNyVMSATbv+aGBb6WyddTBmesd6eFmiNX
	fxXY6L16hdKcEkUoggd9izX5Z8521M9bdhirJOS68Gm0hmPrskDMhOrbG2N2Z7RU8fz+BchkZptM3
	AmWkefUS/rV3aTd7JS9dyPGoqlLwAo+G5ribxDPKnJl3HxUl7F2+5u0NRcg++7ywweZ1cXi5c7HSf
	xWtd+Zm8PK2aTPHucDY7IiE4PyyFm8AkuLp4y2v62Pd7WbfM8RugJ+X7q0NPyeZozymsQWPVLPIlB
	71XpaQSog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icW0C-0006ex-Hk; Wed, 04 Dec 2019 14:51:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icW05-0006e4-4a; Wed, 04 Dec 2019 14:51:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E56031FB;
 Wed,  4 Dec 2019 06:51:30 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9C0573F52E;
 Wed,  4 Dec 2019 06:51:26 -0800 (PST)
Subject: Re: perf record doesn't work on rtd129x SoC
From: Robin Murphy <robin.murphy@arm.com>
To: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>,
 Wang YanQing <udknight@gmail.com>
References: <20191204045559.GA10458@udknight>
 <f90748d0-8112-3aa8-0c88-e35a8d6e72d3@suse.de>
 <1b2d2bc3-afcf-02c3-ccd6-e2a227c23fd3@arm.com>
Message-ID: <b9788139-d2cb-9ed4-e887-04651968e5b1@arm.com>
Date: Wed, 4 Dec 2019 14:51:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1b2d2bc3-afcf-02c3-ccd6-e2a227c23fd3@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_065133_222234_8B773D40 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-realtek-soc@lists.infradead.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 linux-soc@vger.kernel.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDQvMTIvMjAxOSAxMToyMCBhbSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIwMTktMTIt
MDQgNzoyOCBhbSwgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOgo+PiBIaSBZYW5RaW5nLAo+Pgo+PiAr
IExBS01MICsgTWFyayArIFdpbGwKPj4KPj4gQW0gMDQuMTIuMTkgdW0gMDU6NTUgc2NocmllYiBX
YW5nIFlhblFpbmc6Cj4+PiBJIHVzZSAicGVyZiByZWNvcmQiIHRvIGRlYnVnIHBlcmZvcm1hbmNl
IGlzc3VlIG9uIFJURDEyOTYgU09DLCBpdCAKPj4+IGRvZXMndCB3b3JrLCBidXQKPj4+IHRoZSAi
cGVyZiBzdGF0IiBpcyBvayEKPj4KPj4gVGhhbmtzIGZvciB0aGUgcmVwb3J0IC0gd2hpY2ggYm9h
cmQsIGJyYW5jaCBhbmQgKGJhc2UpIHRhZyBhcmUgeW91Cj4+IHRlc3RpbmcgYWdhaW5zdD8gQW5k
IGFyZSB5b3UgYnVpbGRpbmcgcGVyZiB5b3Vyc2VsZiBmcm9tIGtlcm5lbCBzb3VyY2VzLAo+PiBv
ciBhcmUgeW91IHVzaW5nIHNvbWUgZGlzdHJvIHBhY2thZ2U/Cj4+Cj4+IEkgb25seSBoYXZlIEJ1
c3lib3ggaW4gbXkgaW5pdHJkIG9uIERTNDE4OyBJIGhhdmUgbm90IHRlc3RlZCBwZXJmLgo+Pgo+
Pj4gQWZ0ZXIgc29tZSBkaWcgaW4gdGhlIGtlcm5lbCwgSSBmaW5kIHRoZSByZWFzb24gaXMgbm8g
cG11IG92ZXJmbG93IAo+Pj4gaW50ZXJydXB0LCBJIHRoaW5rCj4+PiBiZWxvdyBwbXUgY29uZmln
dXJhdGlvbiBpc24ndCByaWdodCBmb3IgUlREMTI5NjoKPj4+ICIKPj4+IMKgwqDCoMKgwqDCoMKg
wqAgYXJtX3BtdTogYXJtLXBtdSB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBjb21wYXRpYmxlID0gImFybSxjb3J0ZXgtYTUzLXBtdSI7Cj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNDggSVJRX1RZUEVfTEVWRUxf
SElHSD47Cj4+PiDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+PiAiCj4+Pgo+Pj4gV2UgbmVlZCA0IFBN
VSBTUEkgZm9yIFJURDEyOTYgKDQgY29yZXMpLCBhbmQgSSBndWVzcyB0aGUgNDggaXNuJ3QgCj4+
PiByaWdodCB0b28uCj4+Cj4+IE5vdGUgdGhhdCBhYm92ZSBydGQxMjl4LmR0c2kgc25pcHBldCBp
cyBub3QgY29tcGxldGUuIFNlZSBydGQxMjk2LmR0c2k6Cj4+Cj4+ICZhcm1fcG11IHsKPj4gwqDC
oMKgwqBpbnRlcnJ1cHQtYWZmaW5pdHkgPSA8JmNwdTA+LCA8JmNwdTE+LCA8JmNwdTI+LCA8JmNw
dTM+Owo+PiB9Owo+IAo+IFRoYXQgZG9lc24ndCBoZWxwIG11Y2gsIHNpbmNlIDQgYWZmaW5pdGll
cyBmb3Igb25lIFNQSSBpcyByYXRoZXIgCj4gbm9uc2Vuc2ljYWwuCj4gCj4+IDQ4IGFuZCBoaWdo
LzQgbWF0Y2ggd2hhdCBJIHNlZSBpbiB0aGUgbGF0ZXN0IEJTUDoKPj4KPj4gaHR0cHM6Ly9naXRo
dWIuY29tL0JQSS1TSU5PVk9JUC9CUEktTTQtYnNwL2Jsb2IvbWFzdGVyL2xpbnV4LXJ0ay9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC9ydGQtMTI5Ni5kdHNpI0wxMTYgCj4+Cj4+
Cj4+PiBBbnkgc3VnZ2VzdGlvbiBpcyB3ZWxjb21lLgo+Pj4KPj4+IFRoYW5rcyEKPj4KPj4gVGhl
IG9ubHkgZGlmZmVyZW5jZSBJIHNlZSBpcyAiYXJtLGNvcnRleC1hNTMtcG11IiB2cy4gImFybSxh
cm12OC1wbXV2MyIuCj4+IEJ5IG15IHJlYWRpbmcgb2YgYXJjaC9hcm02NC9rZXJuZWwvcGVyZl9l
dmVudC5jIHRoZSBvbmx5IGRpZmZlcmVuY2UKPj4gYmV0d2VlbiB0aGUgdHdvIHNob3VsZCBiZSB0
aGUgbmFtZSBhbmQgYW4gZXh0cmEgY2FjaGVfbWFwLiBZb3UgY291bGQgdHJ5Cj4+IHRoZSBvdGhl
ciBjb21wYXRpYmxlIHN0cmluZyBpbiB5b3VyIC5kdHMsIGJ1dCBJIGRvdWJ0IGl0J2xsIGhlbHAu
Cj4+Cj4+IEhvcGVmdWxseSB0aGUgUmVhbHRlayBvciBBcm0gZ3V5cyBjYW4gc2hlZCBzb21lIGxp
Z2h0Lgo+IAo+IElmIHRoZSBTb0MgcmVhbGx5IGhhcyBhbGwgNCBvdmVyZmxvdyBpbnRlcnJ1cHRz
IGNvbWJpbmVkIGludG8gYSBzaW5nbGUgCj4gU1BJIGxpbmUsIHRoZW4gc2FtcGxpbmcganVzdCBp
c24ndCBnb2luZyB0byBiZSBzdXBwb3J0ZWQgLSBpdCdzIAo+IHVucmVhc29uYWJseSBkaWZmaWN1
bHQgdG8gaGFuZGxlIG92ZXJmbG93IHdoZW4gdGhlIElSUSBtYXkgYmUgdGFrZW4gb24gCj4gdGhl
IHdyb25nIENQVS4KCk9uIGNsb3NlciBpbnNwZWN0aW9uLCB0aGF0IEJTUCBrZXJuZWwgaW1wbGVt
ZW50cyBhIHdob2xlIGhydGltZXItYmFzZWQgCmJvZGdlIGluIGFybV9wbXUgdG8gYXBwYXJlbnRs
eSB3b3JrIGFyb3VuZCBub3QgaGF2aW5nIHVzYWJsZSBpbnRlcnJ1cHRzLCAKc28geWVhaCwgdGhp
cyBpc24ndCBnb2luZyB0byBiZSB1c2FibGUsIHNvcnJ5LgoKUm9iaW4uCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
