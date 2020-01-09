Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E54BC1359C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:10:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TgMjJI0fEG7wpNjBVn7vHY4SRGgcvXFUfvmE73gc5+I=; b=cEALZly0FFLwcb07/xSYYfVVi
	ejUDqIi6oFFtnwmWfrJWUdDR3FHMHng8pkjsZP64cE2jqbvjp3wQMsc9OsdPG+oSsy91exVpLLAZA
	UMfYsJsp+L6cyMribikkqxvGYIpwFAFyRzE3yy5boj9Du0fEXouel9fdDvpwJJTqwPHzh4R4+BXyL
	nLLr8HLaeQTC5sEd/dLo0lkuvrEXuONr9RZ6HwmmvuUWP7kuA3pJRvra3N/JMerCKU/FaW6dhWtMf
	zxGessYBrUpxvtv1RGG8/68uvHAZFhhWitvS3h480Gw1YXswtvTAvMi1nin2FvgUJI7RQ7xCylZwM
	O5OCwNrxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipXaK-0000pG-GG; Thu, 09 Jan 2020 13:10:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipXaB-0000oC-HF; Thu, 09 Jan 2020 13:10:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B2FD031B;
 Thu,  9 Jan 2020 05:10:36 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 95ED13F534;
 Thu,  9 Jan 2020 05:10:34 -0800 (PST)
Subject: Re: [PATCH v2 0/7] Add dts for mt8183 GPU (and misc panfrost patches)
To: Steven Price <steven.price@arm.com>,
 Nicolas Boichat <drinkcat@chromium.org>, Rob Herring <robh+dt@kernel.org>
References: <20200108052337.65916-1-drinkcat@chromium.org>
 <79fe7055-c11b-c9f6-64e5-48e3d5687dfe@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <ca77cd74-b747-20c4-b07c-60df23421690@arm.com>
Date: Thu, 9 Jan 2020 13:10:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <79fe7055-c11b-c9f6-64e5-48e3d5687dfe@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_051039_659524_B97655C3 
X-CRM114-Status: GOOD (  25.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDkvMDEvMjAyMCAxMjowMSBwbSwgU3RldmVuIFByaWNlIHdyb3RlOgo+IE9uIDA4LzAxLzIw
MjAgMDU6MjMsIE5pY29sYXMgQm9pY2hhdCB3cm90ZToKPj4gSGkhCj4+Cj4+IFNvcnJ5IGZvciB0
aGUgbG9uZyBkZWxheSBzaW5jZSAKPj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRj
aC8xMTEzMjM4MS8sCj4+IGZpbmFsbHkgZ290IGFyb3VuZCB0byBnaXZlIHRoaXMgYSByZWFsIHRy
eS4KPj4KPj4gVGhlIG1haW4gcHVycG9zZSBvZiB0aGlzIHNlcmllcyBpcyB0byB1cHN0cmVhbSB0
aGUgZHRzIGNoYW5nZSBhbmQgdGhlIAo+PiBiaW5kaW5nCj4+IGRvY3VtZW50LCBidXQgSSB3YW50
ZWQgdG8gc2VlIGhvdyBmYXIgSSBjb3VsZCBwcm9iZSB0aGUgR1BVLCB0byBjaGVjayAKPj4gdGhh
dCB0aGUKPj4gYmluZGluZyBpcyBpbmRlZWQgY29ycmVjdC4gVGhlIHJlc3Qgb2YgdGhlIHBhdGNo
ZXMgYXJlIAo+PiBSRkMvd29yay1pbi1wcm9ncmVzcywgYnV0Cj4+IEkgdGhpbmsgc29tZSBvZiB0
aGVtIGNvdWxkIGFscmVhZHkgYmUgcGlja2VkIHVwLgo+Pgo+PiBTbyB0aGlzIGlzIHRlc3RlZCBv
biBNVDgxODMgd2l0aCBhIGNocm9tZW9zLTQuMTkga2VybmVsLCBhbmQgYSB0b24gb2YKPj4gYmFj
a3BvcnRzIHRvIGdldCB0aGUgbGF0ZXN0IHBhbmZyb3N0IGRyaXZlciAoSSBzaG91bGQgcHJvYmFi
bHkgdHJ5IG9uCj4+IGxpbnV4LW5leHQgYXQgc29tZSBwb2ludCBidXQgdGhpcyB3YXMgdGhlIHBh
dGggb2YgbGVhc3QgcmVzaXN0YW5jZSkuCj4+Cj4+IEkgdGVzdGVkIGl0IGFzIGEgbW9kdWxlIGFz
IGl0J3MgbW9yZSBjaGFsbGVuZ2luZyAob3JpZ2luYWxseSBwcm9iaW5nIAo+PiB3b3VsZAo+PiB3
b3JrIGJ1aWx0LWluLCBvbiBib290LCBidXQgbm90IGFzIGEgbW9kdWxlLCBhcyBJIGRpZG4ndCBo
YXZlIHRoZSBwb3dlcgo+PiBkb21haW4gY2hhbmdlcywgYW5kIGFsbCBwb3dlciBkb21haW5zIGFy
ZSBvbiBieSBkZWZhdWx0IGR1cmluZyBib290KS4KPj4KPj4gUHJvYmluZyBsb2dzIGxvb2tzIGxp
a2UgdGhpcywgY3VycmVudGx5Ogo+PiBbwqAgMjIxLjg2NzcyNl0gcGFuZnJvc3QgMTMwNDAwMDAu
Z3B1OiBjbG9jayByYXRlID0gNTExOTk5OTcwCj4+IFvCoCAyMjEuODY3OTI5XSBwYW5mcm9zdCAx
MzA0MDAwMC5ncHU6IExpbmtlZCBhcyBhIGNvbnN1bWVyIHRvIAo+PiByZWd1bGF0b3IuMTQKPj4g
W8KgIDIyMS44Njg2MDBdIHBhbmZyb3N0IDEzMDQwMDAwLmdwdTogTGlua2VkIGFzIGEgY29uc3Vt
ZXIgdG8gCj4+IHJlZ3VsYXRvci4zMQo+PiBbwqAgMjIxLjg3MDU4Nl0gcGFuZnJvc3QgMTMwNDAw
MDAuZ3B1OiBMaW5rZWQgYXMgYSBjb25zdW1lciB0byAKPj4gZ2VucGQ6MDoxMzA0MDAwMC5ncHUK
Pj4gW8KgIDIyMS44NzE0OTJdIHBhbmZyb3N0IDEzMDQwMDAwLmdwdTogTGlua2VkIGFzIGEgY29u
c3VtZXIgdG8gCj4+IGdlbnBkOjE6MTMwNDAwMDAuZ3B1Cj4+IFvCoCAyMjEuODcxODY2XSBwYW5m
cm9zdCAxMzA0MDAwMC5ncHU6IExpbmtlZCBhcyBhIGNvbnN1bWVyIHRvIAo+PiBnZW5wZDoyOjEz
MDQwMDAwLmdwdQo+PiBbwqAgMjIxLjg3MjQyN10gcGFuZnJvc3QgMTMwNDAwMDAuZ3B1OiBtYWxp
LWc3MiBpZCAweDYyMjEgbWFqb3IgMHgwIAo+PiBtaW5vciAweDMgc3RhdHVzIDB4MAo+PiBbwqAg
MjIxLjg3MjQzOV0gcGFuZnJvc3QgMTMwNDAwMDAuZ3B1OiBmZWF0dXJlczogMDAwMDAwMDAsMTNk
ZTc3ZmYsIAo+PiBpc3N1ZXM6IDAwMDAwMDAwLDAwMDAwNDAwCj4+IFvCoCAyMjEuODcyNDQ1XSBw
YW5mcm9zdCAxMzA0MDAwMC5ncHU6IEZlYXR1cmVzOiBMMjoweDA3MTIwMjA2IAo+PiBTaGFkZXI6
MHgwMDAwMDAwMCBUaWxlcjoweDAwMDAwODA5IE1lbToweDEgTU1VOjB4MDAwMDI4MzAgQVM6MHhm
ZiBKUzoweDcKPj4gW8KgIDIyMS44NzI0NDldIHBhbmZyb3N0IDEzMDQwMDAwLmdwdTogc2hhZGVy
X3ByZXNlbnQ9MHg3IGwyX3ByZXNlbnQ9MHgxCj4+IFvCoCAyMjEuODczNTI2XSBwYW5mcm9zdCAx
MzA0MDAwMC5ncHU6IGVycm9yIHBvd2VyaW5nIHVwIGdwdSBzdGFjawo+PiBbwqAgMjIxLjg3ODA4
OF0gW2RybV0gSW5pdGlhbGl6ZWQgcGFuZnJvc3QgMS4xLjAgMjAxODA5MDggZm9yIAo+PiAxMzA0
MDAwMC5ncHUgb24gbWlub3IgMgo+PiBbwqAgMjIxLjk0MDgxN10gcGFuZnJvc3QgMTMwNDAwMDAu
Z3B1OiBlcnJvciBwb3dlcmluZyB1cCBncHUgc3RhY2sKPj4gW8KgIDIyMi4wMTgyMzNdIHBhbmZy
b3N0IDEzMDQwMDAwLmdwdTogZXJyb3IgcG93ZXJpbmcgdXAgZ3B1IHN0YWNrCj4+IChyZXBlYXRl
ZCkKPiAKPiBJdCdzIGludGVyZXN0aW5nIHRoYXQgaXQncyBvbmx5IHRoZSBzdGFjayB0aGF0IGlz
IGZhaWxpbmcuIEluIGhhcmR3YXJlIAo+IHRoZXJlJ3MgYSBkZXBlbmRlbmN5OiBMMi0+c3RhY2st
PnNoYWRlciAtIHNvIGluIHRoZW9yeSB0aGUgc2hhZGVyIGNvcmVzIAo+IHNob3VsZG4ndCBiZSBh
YmxlIHRvIHBvd2VyIHVwIGVpdGhlci4gVGhlcmUgYXJlIHNvbWUga25vd24gaGFyZHdhcmUgYnVn
cyAKPiBoZXJlIHRob3VnaFsxXToKPiAKPiAgwqDCoMKgwqBNT0RVTEVfUEFSTV9ERVNDKGNvcmVz
dGFja19kcml2ZXJfY29udHJvbCwKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiTGV0IHRoZSBk
cml2ZXIgcG93ZXIgb24vb2ZmIHRoZSBHUFUgY29yZSBzdGFjayAKPiBpbmRlcGVuZGVudGx5ICIK
PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAid2l0aG91dCBpbnZvbHZpbmcgdGhlIFBvd2VyIERv
bWFpbiBDb250cm9sbGVyLiBUaGlzIHNob3VsZCAiCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Im9ubHkgYmUgZW5hYmxlZCBvbiBwbGF0Zm9ybXMgZm9yIHdoaWNoIGludGVncmF0aW9uIG9mIHRo
ZSAKPiBQREMgIgo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJ0byB0aGUgTWFsaSBHUFUgaXMg
a25vd24gdG8gYmUgcHJvYmxlbWF0aWMuIik7Cj4gCj4gWzFdIAo+IGh0dHBzOi8vZ2l0aHViLmNv
bS9pYW5tYWNkL2Qycy9ibG9iL21hc3Rlci9kcml2ZXJzL2dwdS9hcm0vYl9yMTZwMC9iYWNrZW5k
L2dwdS9tYWxpX2tiYXNlX3BtX2RyaXZlci5jI0w1NyAKPiAKPiAKPiBJdCBtaWdodCBiZSB3b3J0
aCBqdXN0IGRyb3BwaW5nIHRoZSBjb2RlIGZvciBwb3dlcmluZyB1cC9kb3duIHN0YWNrcyBhbmQg
Cj4gbGV0IHRoZSBHUFUncyBvd24gZGVwZW5kZW5jeSBtYW5hZ2VtZW50IGhhbmRsZSBpdC4KCkZX
SVcgSSByZW1lbWJlciBkaWdnaW5nIGludG8gdGhhdCBzYW1lIG1lc3NhZ2UgYSB3aGlsZSBiYWNr
IChhbHRob3VnaCAKSSd2ZSBmb3Jnb3R0ZW4gd2hpY2ggcGFydGljdWxhciBHUFUgSSB3YXMgcGxh
eWluZyB3aXRoIGF0IHRoZSB0aW1lKSwgYW5kIApjb25jbHVkZWQgdGhhdCB0aGUgU1RBQ0tfUFdS
T04vU1RBQ0tfUkVBRFkgcmVnaXN0ZXJzIG1pZ2h0IGp1c3Qgbm90IGJlIAppbXBsZW1lbnRlZCBv
biBzb21lIEdQVXMsIGFuZC9vciB0aGlzIGVhc3ktdG8tb3Zlcmxvb2sgcmVnaXN0ZXIgYml0IApj
b3VsZCBiZSBzb21lIGtpbmQgb2YgZW5hYmxlIGZvciB0aGUgZnVuY3Rpb25hbGl0eToKCmh0dHBz
Oi8vZ2l0aHViLmNvbS9pYW5tYWNkL2Qycy9ibG9iL21hc3Rlci9kcml2ZXJzL2dwdS9hcm0vYl9y
MTZwMC9iYWNrZW5kL2dwdS9tYWxpX2tiYXNlX3BtX2RyaXZlci5jI0wxNjMxCgpTaW5jZSBldmVu
IGluIGtiYXNlIHRoaXMgaXMgYWxsIGJlaGluZCBhbiAnZXhwZXJ0JyBjb25maWcgb3B0aW9uLCBJ
J20gCmluY2xpbmVkIHRvIGFncmVlIHRoYXQganVzdCBkcm9wcGluZyBpdCBmcm9tIHBhbmZyb3N0
IHVubGVzcyBhbmQgdW50aWwgCml0IHByb3ZlcyBuZWNlc3NhcnkgaXMgcHJvYmFibHkgcHJlZmVy
YWJsZSB0byBhZGRpbmcgbW9yZSBsb2dpYyBhbmQgCmluc2NydXRhYmxlIHJlZ2lzdGVyLW1hZ2lj
LgoKUm9iaW4uCgo+IAo+IFN0ZXZlCj4gCj4+Cj4+IFNvIHRoZSBHUFUgaXMgcHJvYmVkLCBidXQg
dGhlcmUncyBhbiBpc3N1ZSB3aGVuIHBvd2VyaW5nIHVwIHRoZSBTVEFDSywgCj4+IG5vdAo+PiBx
dWl0ZSBzdXJlIHdoeSwgSSdsbCB0cnkgdG8gaGF2ZSBhIGRlZXBlciBsb29rLCBhdCBzb21lIHBv
aW50Lgo+Pgo+PiBUaGFua3MhCj4+Cj4+IE5pY29sYXMKPj4KPj4gdjI6Cj4+IMKgIC0gVXNlIHNy
YW0gaW5zdGVhZCBvZiBtYWxpX3NyYW0gYXMgU1JBTSBzdXBwbHkgbmFtZS4KPj4gwqAgLSBSZW5h
bWUgbWFsaUAgdG8gZ3B1QC4KPj4gwqAgLSBBZGQgZHQtYmluZGluZ3MgY2hhbmdlcwo+PiDCoCAt
IFN0YWNraW5nIHBhdGNoZXMgYWZ0ZXIgdGhlIGRldmljZSB0cmVlIGNoYW5nZSB0aGF0IGFsbG93
IGJhc2ljCj4+IMKgwqDCoCBwcm9iaW5nIChzdGlsbCBpbmNvbXBsZXRlIGFuZCBicm9rZW4pLgo+
Pgo+PiBOaWNvbGFzIEJvaWNoYXQgKDcpOgo+PiDCoMKgIGR0LWJpbmRpbmdzOiBncHU6IG1hbGkt
Ymlmcm9zdDogQWRkIE1lZGlhdGVrIE1UODE4Mwo+PiDCoMKgIGFybTY0OiBkdHM6IG10ODE4Mzog
QWRkIG5vZGUgZm9yIHRoZSBNYWxpIEdQVQo+PiDCoMKgIGRybS9wYW5mcm9zdDogSW1wcm92ZSBl
cnJvciByZXBvcnRpbmcgaW4gcGFuZnJvc3RfZ3B1X3Bvd2VyX29uCj4+IMKgwqAgZHJtL3BhbmZy
b3N0OiBBZGQgc3VwcG9ydCBmb3IgYSBzZWNvbmQgcmVndWxhdG9yIGZvciB0aGUgR1BVCj4+IMKg
wqAgZHJtL3BhbmZyb3N0OiBBZGQgc3VwcG9ydCBmb3IgbXVsdGlwbGUgcG93ZXIgZG9tYWluIHN1
cHBvcnQKPj4gwqDCoCBSRkM6IGRybS9wYW5mcm9zdDogQWRkIGJpZnJvc3QgY29tcGF0aWJsZSBz
dHJpbmcKPj4gwqDCoCBSRkM6IGRybS9wYW5mcm9zdDogZGV2ZnJlcTogQWRkIHN1cHBvcnQgZm9y
IDIgcmVndWxhdG9ycwo+Pgo+PiDCoCAuLi4vYmluZGluZ3MvZ3B1L2FybSxtYWxpLWJpZnJvc3Qu
eWFtbMKgwqDCoMKgwqDCoMKgIHzCoCAyMCArKysrCj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMv
bWVkaWF0ZWsvbXQ4MTgzLWV2Yi5kdHPCoMKgIHzCoMKgIDcgKysKPj4gwqAgYXJjaC9hcm02NC9i
b290L2R0cy9tZWRpYXRlay9tdDgxODMuZHRzacKgwqDCoMKgwqAgfCAxMDQgKysrKysrKysrKysr
KysrKysKPj4gwqAgZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2RldmZyZXEuY8Kg
wqAgfMKgIDE4ICsrKwo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZGV2
aWNlLmPCoMKgwqAgfCAxMDggKysrKysrKysrKysrKysrKy0tCj4+IMKgIGRyaXZlcnMvZ3B1L2Ry
bS9wYW5mcm9zdC9wYW5mcm9zdF9kZXZpY2UuaMKgwqDCoCB8wqDCoCA3ICsrCj4+IMKgIGRyaXZl
cnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9kcnYuY8KgwqDCoMKgwqDCoCB8wqDCoCAxICsK
Pj4gwqAgZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2dwdS5jwqDCoMKgwqDCoMKg
IHzCoCAxNSArKy0KPj4gwqAgOCBmaWxlcyBjaGFuZ2VkLCAyNjcgaW5zZXJ0aW9ucygrKSwgMTMg
ZGVsZXRpb25zKC0pCj4+Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpLWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
