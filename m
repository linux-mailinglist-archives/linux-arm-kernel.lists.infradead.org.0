Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8724C2173
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 15:06:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XIetFaGXIZ+rQF30nA22Kl3y0t8oFJQabVYo+SWjqsY=; b=pQLHrX4t1Zv0RB4CZhS+bDHZR
	VzjKK5vJx5a7NOakMhdTIPzq73a0Em37AOpbUaYLL+nemAxMYZEu+U3P5cJfStmiuI6HphQ+KT304
	l5KKyzRNFUUZa67mVEE5ZUV3CNyKW3wofQ5aqUi3UlZb0VgBycWitq27+csIRb5UuzmWOyZkWUeLw
	BUFrx12v0F/9KcPrGksdMFbqE39ZnbUCP8/gtMbBLWNlpAAfomCUdR6S6MRRYS52WjlrDwRYzH13X
	lSYbENTeaPd3PhKqA04MFeYVUM+ryx7Xq+69fshX0W54NKP+bEJPI5WAMIcxtRocbb1rziBUcIh22
	TlOk88HYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEvNE-0003WU-C7; Mon, 30 Sep 2019 13:05:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEvN5-0003VU-GR
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 13:05:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B17F11000;
 Mon, 30 Sep 2019 06:05:46 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DD2783F706;
 Mon, 30 Sep 2019 06:05:44 -0700 (PDT)
Subject: Re: [PATCH 00/11] of: dma-ranges fixes and improvements
To: Marek Vasut <marek.vasut@gmail.com>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190927002455.13169-1-robh@kernel.org>
 <106d5b37-5732-204f-4140-8d528256a59b@gmail.com>
 <40bdf7cf-3bb1-24f8-844d-3eefbc761aba@arm.com>
 <807a4f96-cbda-da4d-a3f1-2bfe5788105b@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <107d3a83-7448-b5c8-4b38-9b376848a1fa@arm.com>
Date: Mon, 30 Sep 2019 14:05:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <807a4f96-cbda-da4d-a3f1-2bfe5788105b@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_060547_593614_10E6038A 
X-CRM114-Status: GOOD (  16.90  )
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 Frank Rowand <frowand.list@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzAvMDkvMjAxOSAxMzo1NCwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4gT24gOS8zMC8xOSAyOjUy
IFBNLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+IE9uIDMwLzA5LzIwMTkgMTM6NDAsIE1hcmVrIFZh
c3V0IHdyb3RlOgo+Pj4gT24gOS8yNy8xOSAyOjI0IEFNLCBSb2IgSGVycmluZyB3cm90ZToKPj4+
PiBUaGlzIHNlcmllcyBmaXhlcyBzZXZlcmFsIGlzc3VlcyByZWxhdGVkIHRvICdkbWEtcmFuZ2Vz
Jy4gUHJpbWFyaWx5LAo+Pj4+ICdkbWEtcmFuZ2VzJyBpbiBhIFBDSSBicmlkZ2Ugbm9kZSBkb2Vz
IGNvcnJlY3RseSBzZXQgZG1hIG1hc2tzIGZvciBQQ0kKPj4+PiBkZXZpY2VzIG5vdCBkZXNjcmli
ZWQgaW4gdGhlIERULiBBIGNvbW1vbiBjYXNlIG5lZWRpbmcgZG1hLXJhbmdlcyBpcyBhCj4+Pj4g
MzItYml0IFBDSWUgYnJpZGdlIG9uIGEgNjQtYml0IHN5c3RlbS4gVGhpcyBhZmZlY3RzIHNldmVy
YWwgcGxhdGZvcm1zCj4+Pj4gaW5jbHVkaW5nIEJyb2FkY29tLCBOWFAsIFJlbmVzYXMsIGFuZCBB
cm0gSnVuby4gVGhlcmUncyBiZWVuIHNldmVyYWwKPj4+PiBhdHRlbXB0cyB0byBmaXggdGhlc2Ug
aXNzdWVzLCBtb3N0IHJlY2VudGx5IGVhcmxpZXIgdGhpcyB3ZWVrWzFdLgo+Pj4+Cj4+Pj4gSW4g
dGhlIHByb2Nlc3MsIEkgZm91bmQgc2V2ZXJhbCBidWdzIGluIHRoZSBhZGRyZXNzIHRyYW5zbGF0
aW9uLiBJdAo+Pj4+IGFwcGVhcnMgdGhhdCB0aGluZ3MgaGF2ZSBoYXBwZW5lZCB0byB3b3JrIGFz
IHZhcmlvdXMgRFRzIGhhcHBlbiB0byB1c2UKPj4+PiAxOjEgYWRkcmVzc2VzLgo+Pj4+Cj4+Pj4g
Rmlyc3QgMyBwYXRjaGVzIGFyZSBqdXN0IHNvbWUgY2xlYW4tdXAuIFRoZSA0dGggcGF0Y2ggYWRk
cyBhIHVuaXR0ZXN0Cj4+Pj4gZXhoaWJpdGluZyB0aGUgaXNzdWVzLiBQYXRjaGVzIDUtOSByZXdv
cmsgaG93IG9mX2RtYV9jb25maWd1cmUoKSB3b3Jrcwo+Pj4+IG1ha2luZyBpdCB3b3JrIG9uIGVp
dGhlciBhIHN0cnVjdCBkZXZpY2UgY2hpbGQgbm9kZSBvciBhIHN0cnVjdAo+Pj4+IGRldmljZV9u
b2RlIHBhcmVudCBub2RlIHNvIHRoYXQgaXQgd29ya3Mgb24gYnVzIGxlYWYgbm9kZXMgbGlrZSBQ
Q0kKPj4+PiBicmlkZ2VzLiBQYXRjaGVzIDEwIGFuZCAxMSBmaXggMiBpc3N1ZXMgd2l0aCBhZGRy
ZXNzIHRyYW5zbGF0aW9uIGZvcgo+Pj4+IGRtYS1yYW5nZXMuCj4+Pj4KPj4+PiBNeSB0ZXN0aW5n
IG9uIHRoaXMgaGFzIGJlZW4gd2l0aCBRRU1VIHZpcnQgbWFjaGluZSBoYWNrZWQgdXAgdG8gc2V0
IFBDSQo+Pj4+IGRtYS1yYW5nZXMgYW5kIHRoZSB1bml0dGVzdC4gTmljb2xhcyByZXBvcnRzIHRo
aXMgc2VyaWVzIHJlc29sdmVzIHRoZQo+Pj4+IGlzc3VlcyBvbiBScGk0IGFuZCBOWFAgTGF5ZXJz
Y2FwZSBwbGF0Zm9ybXMuCj4+Pgo+Pj4gV2l0aCB0aGUgZm9sbG93aW5nIHBhdGNoZXMgYXBwbGll
ZDoKPj4+ICDCoMKgwqDCoMKgwqAgaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8x
MTQ0ODcwLwo+Pj4gIMKgwqDCoMKgwqDCoCBodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3Bh
dGNoLzExNDQ4NzEvCj4+Cj4+IENhbiB5b3UgdHJ5IGl0IHdpdGhvdXQgdGhvc2UgYWRkaXRpb25h
bCBwYXRjaGVzPyBUaGlzIHNlcmllcyBhaW1zIHRvCj4+IG1ha2UgdGhlIHBhcnNpbmcgd29yayBw
cm9wZXJseSBnZW5lcmljYWxseSwgc3VjaCB0aGF0IHdlIHNob3VsZG4ndCBuZWVkCj4+IHRvIGFk
ZCBhbiBhZGRpdGlvbmFsIFBDSS1zcGVjaWZpYyB2ZXJzaW9uIG9mIGFsbW9zdCB0aGUgc2FtZSBj
b2RlLgo+IAo+IFNlZW1zIHRvIHdvcmsgZXZlbiB3aXRob3V0IHRob3NlLgoKR3JlYXQsIHRoYW5r
cyBmb3IgY29uZmlybWluZyEKClJvYmluLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
