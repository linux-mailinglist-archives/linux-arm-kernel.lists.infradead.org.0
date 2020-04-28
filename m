Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 675621BC63D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 19:11:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tEndSG81OU2i/6aWgpWgR48cs6ytVEHSnoJ27NGLM90=; b=mkTYdoKFWtjHGvsXlkF7iPYgG
	qYTnybPCmwaQ3UuL2g8x0zZgsz1pcShZvYX9mJJf+6l9R+ICvK9nrBXy6UM9yZ292+v9/b2xXazzF
	Fm9l6Rsrps+/h2GUqKBaAa/KN35bArn9dtV9q9y34335vOyIGqYJxuUhWtLywEXm7SjzPy2Ob//rA
	SXxadDUYTJ9JSko//JR+P1EjhQUJ9AK8BfuFodh6/v74QazxRJ3q17yYzgdbXP/Ig5NhhsEOkZ74j
	N5BG+G4++yptp4tUdfQTKir5ivuTzgjSze+U9HkFcbAeVgkwC+RMLhpHLjyW4CBa4rDX9c8iWORiN
	W82Ybwcpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTll-0006Zn-Vc; Tue, 28 Apr 2020 17:11:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTlb-0006Z6-47
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 17:11:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3FC6430E;
 Tue, 28 Apr 2020 10:11:30 -0700 (PDT)
Received: from [10.57.33.170] (unknown [10.57.33.170])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D0ADD3F305;
 Tue, 28 Apr 2020 10:11:27 -0700 (PDT)
Subject: Re: Audio sound card name [was [PATCH 4/7] arm64: dts: allwinner:
 a64: Add HDMI audio]
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Mark Brown <broonie@kernel.org>
References: <20200426120442.11560-1-peron.clem@gmail.com>
 <20200426120442.11560-5-peron.clem@gmail.com>
 <20200428080020.35qcuylwq2ylmubu@gilmour.lan>
 <CAJiuCcc2LQ4L36KSfO8iLVFBUO6k+zsZFX+_Ovm_10PoWO4AsA@mail.gmail.com>
 <20200428160417.6q5oab2guaumhhwi@gilmour.lan>
 <CAJiuCccFFUJJzXwygLQbDK4fGJ61p72Hv7vj3WVP-=z=J1Yj0Q@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <031ee5d3-8a30-82ee-76db-c0e8a1073046@arm.com>
Date: Tue, 28 Apr 2020 18:11:26 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAJiuCccFFUJJzXwygLQbDK4fGJ61p72Hv7vj3WVP-=z=J1Yj0Q@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_101131_285130_2F61C6BD 
X-CRM114-Status: GOOD (  19.17  )
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime@cerno.tech>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNC0yOCA1OjQ5IHBtLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gSGkgTWFyaywg
Um9iLAo+IAo+IE9uIFR1ZSwgMjggQXByIDIwMjAgYXQgMTg6MDQsIE1heGltZSBSaXBhcmQgPG1h
eGltZUBjZXJuby50ZWNoPiB3cm90ZToKPj4KPj4gT24gVHVlLCBBcHIgMjgsIDIwMjAgYXQgMTA6
NTQ6MDBBTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+Pj4gSGkgTWF4aW1lLAo+Pj4K
Pj4+IE9uIFR1ZSwgMjggQXByIDIwMjAgYXQgMTA6MDAsIE1heGltZSBSaXBhcmQgPG1heGltZUBj
ZXJuby50ZWNoPiB3cm90ZToKPj4+Pgo+Pj4+IE9uIFN1biwgQXByIDI2LCAyMDIwIGF0IDAyOjA0
OjM5UE0gKzAyMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPj4+Pj4gRnJvbTogTWFyY3VzIENv
b3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+Cj4+Pj4+Cj4+Pj4+IEFkZCBhIHNpbXBsZS1zb3Vu
ZGNhcmQgdG8gbGluayBhdWRpbyBiZXR3ZWVuIEhETUkgYW5kIEkyUy4KPj4+Pj4KPj4+Pj4gU2ln
bmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+Pj4+
PiBTaWduZWQtb2ZmLWJ5OiBNYXJjdXMgQ29vcGVyIDxjb2Rla2lwcGVyQGdtYWlsLmNvbT4KPj4+
Pj4gU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4K
Pj4+Pj4gLS0tCj4+Pj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2
NC5kdHNpIHwgMjEgKysrKysrKysrKysrKysrKysrKwo+Pj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCAy
MSBpbnNlcnRpb25zKCspCj4+Pj4+Cj4+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdp
bm5lci9zdW41MGktYTY0LmR0c2kKPj4+Pj4gaW5kZXggZTU2ZTFlM2Q0YjczLi4wOGFiNmI1ZTcy
YTUgMTAwNjQ0Cj4+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1hNjQuZHRzaQo+Pj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktYTY0LmR0c2kKPj4+Pj4gQEAgLTEwMiw2ICsxMDIsMjUgQEAKPj4+Pj4gICAgICAgICAgICAg
ICAgc3RhdHVzID0gImRpc2FibGVkIjsKPj4+Pj4gICAgICAgIH07Cj4+Pj4+Cj4+Pj4+ICsgICAg
IGhkbWlfc291bmQ6IGhkbWktc291bmQgewo+Pj4+PiArICAgICAgICAgICAgIGNvbXBhdGlibGUg
PSAic2ltcGxlLWF1ZGlvLWNhcmQiOwo+Pj4+PiArICAgICAgICAgICAgIHNpbXBsZS1hdWRpby1j
YXJkLGZvcm1hdCA9ICJpMnMiOwo+Pj4+PiArICAgICAgICAgICAgIHNpbXBsZS1hdWRpby1jYXJk
LG5hbWUgPSAiYWxsd2lubmVyLGhkbWkiOwo+Pj4+Cj4+Pj4gSSdtIG5vdCBzdXJlIHdoYXQgdGhl
IHVzdWFsIGNhcmQgbmFtZSBzaG91bGQgYmUgbGlrZSB0aG91Z2guIEkgd291bGQgYXNzdW1lIHRo
YXQKPj4+PiB0aGlzIHNob3VsZCBiZSBzb21ldGhpbmcgc3BlY2lmaWMgZW5vdWdoIHNvIHRoYXQg
eW91J3JlIGFibGUgdG8gZGlmZmVyZW50aWF0ZQo+Pj4+IGJldHdlZW4gYm9hcmRzIC8gU29DIHNv
IHRoYXQgdGhlIHVzZXJzcGFjZSBjYW4gY2hvb3NlIGEgZGlmZmVyZW50IGNvbmZpZ3VyYXRpb24K
Pj4+PiBiYXNlZCBvbiBpdD8KPj4+Cj4+PiBJIHJlYWxseSBkb24ndCBrbm93IHdoYXQgd2Ugc2hv
dWxkIHVzZSBoZXJlLAo+Pj4gSSBqdXN0IGhhdmUgYSBsb29rIGF0IG90aGVyIFNvQzoKPj4+IHJr
MzMyODogIkhETUkiCj4+PiByazMzOTk6ICJoZG1pLXNvdW5kIgo+Pj4gcjhhNzc0YzAtY2F0ODc0
OiAiQ0FUODc0IEhETUkgc291bmQiCj4+Pgo+Pj4gQnV0IG1heWJlIGl0J3MgdGltZSB0byBpbnRy
b2R1Y2UgcHJvcGVyIG5hbWU6Cj4+PiBXaGF0IGFib3V0IDoKPj4+IHBhdAo+Pj4gc3VuNTBpLWg2
LWhkbWkKPj4KPj4gSXQncyBwcmV0dHkgbXVjaCB3aGF0IHdlJ3ZlIGJlZW4gdXNpbmcgZm9yIHRo
ZSBvdGhlciBzb3VuZCBjYXJkcyB3ZSBoYXZlLCBzbyBpdAo+PiBtYWtlcyBzZW5zZSB0byBtZS4K
PiAKPiBJIGhhdmUgYSBxdWVzdGlvbiByZWdhcmRpbmcgdGhlIHNpbXBsZS1hdWRpby1jYXJkLG5h
bWUuCj4gSW4gdGhpcyBwYXRjaCwgSSB3b3VsZCBsaWtlIHRvIGludHJvZHVjZSBhIHNpbXBsZS1h
dWRpby1jYXJkIGZvciB0aGUKPiBBbGx3aW5uZXIgQTY0IEhETUkuCj4gCj4gV2hhdCBzaG91bGQg
YmUgdGhlIHByZWZlcnJlZCBuYW1lIGZvciB0aGlzIHNvdW5kIGNhcmQ/Cj4gInN1bjUwaS1hNjQt
aGRtaSIgPyAiYWxsd2lubmVyLCBzdW41MGktYTY0LWhkbWkiID8KCkkgY2FuIGF0IGxlYXN0IHNw
ZWFrIGZvciBSSzMzMjgsIGFuZCB0aGUgcmVhc29uaW5nIHRoZXJlIHdhcyB0aGF0IGFzIHRoZSAK
dXNlciBsb29raW5nIGF0IHdoYXQgYGFwbGF5IC1sYCBzYXlzLCBJIGRvbid0IGdpdmUgYSBob290
IGFib3V0IHdoYXQgdGhlIApTb0MgbWF5IGJlIGNhbGxlZCwgSSBzZWUgdHdvIGNhcmRzIGFuZCBJ
IHdhbnQgdG8ga25vdywgd2l0aCB0aGUgbGVhc3QgCmFtb3VudCBvZiB1bmNlcnRhaW50eSwgd2hp
Y2ggb25lIHdpbGwgbWFrZSB0aGUgc291bmQgY29tZSBvdXQgb2YgdGhlIApwb3J0IHRoYXQncyBs
YWJlbGxlZCAiSERNSSIgb24gdGhlIGJveCA7KQoKUm9iaW4uCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
