Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC651BDA5A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 13:08:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=14eQ1i9jsalYmGTBg9hYau8YnQqBxp5Ff+o12wyJcog=; b=nWiTLoXYPSvKIGTbw7yqJIsJu
	mmgQRkFkR0JPxJw8XQ9bqArzdxU3NnvB0BvdMybgGor7tuY2CBwmeAb0qfjj87i+ubcCofuXCkuRP
	KTUIXeyHFmmeps7rQkxWB/kni8ETG5eTvHixXd3oeBz4TovBC4zX2+DlG44fWPY/+9dLsNj/VAFMV
	D3X/MGNX1EBpy+H7bEZPtzrNN4fCdd7uEnZem7FGC4pldPQMk8FbbUraSDPnoE8yfh4neO4temeiM
	k1DuF6mxw+AKmFzo4Kv/sRKiRojpcSTGxKcYVVHIUU6F0DaVgY7expkDnuevvbN6Uo4BvRe75eYoC
	trJb3t0fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTkZY-00022U-IN; Wed, 29 Apr 2020 11:08:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTkZO-00021S-VT
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 11:08:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CBABE1042;
 Wed, 29 Apr 2020 04:08:01 -0700 (PDT)
Received: from [10.57.33.170] (unknown [10.57.33.170])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2E52D3F73D;
 Wed, 29 Apr 2020 04:07:59 -0700 (PDT)
Subject: Re: [linux-sunxi] Re: Audio sound card name [was [PATCH 4/7] arm64:
 dts: allwinner: a64: Add HDMI audio]
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>
References: <20200426120442.11560-1-peron.clem@gmail.com>
 <20200429081729.qa3gqtl5sof2jhem@gilmour.lan>
 <f9b701d9-0c4e-6e41-1ce8-52adf0f59a2a@arm.com>
 <2545943.S5iK65abk1@jernej-laptop>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <8a6b9707-d6c0-04ea-97a6-27cbbe468631@arm.com>
Date: Wed, 29 Apr 2020 12:07:56 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <2545943.S5iK65abk1@jernej-laptop>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_040803_100649_DC4FE90E 
X-CRM114-Status: GOOD (  24.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Marcus Cooper <codekipper@gmail.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Mark Brown <broonie@kernel.org>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNC0yOSAxMTo1MyBhbSwgSmVybmVqIMWga3JhYmVjIHdyb3RlOgo+IERuZSBzcmVk
YSwgMjkuIGFwcmlsIDIwMjAgb2IgMTI6NDM6MDYgQ0VTVCBqZSBSb2JpbiBNdXJwaHkgbmFwaXNh
bChhKToKPj4gT24gMjAyMC0wNC0yOSA5OjE3IGFtLCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+Pj4g
T24gV2VkLCBBcHIgMjksIDIwMjAgYXQgMDI6MjQ6MDBQTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdy
b3RlOgo+Pj4+IE9uIFdlZCwgQXByIDI5LCAyMDIwIGF0IDE6MTEgQU0gUm9iaW4gTXVycGh5IDxy
b2Jpbi5tdXJwaHlAYXJtLmNvbT4KPiB3cm90ZToKPj4+Pj4gT24gMjAyMC0wNC0yOCA1OjQ5IHBt
LCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4+Pj4+PiBIaSBNYXJrLCBSb2IsCj4+Pj4+Pgo+Pj4+
Pj4gT24gVHVlLCAyOCBBcHIgMjAyMCBhdCAxODowNCwgTWF4aW1lIFJpcGFyZCA8bWF4aW1lQGNl
cm5vLnRlY2g+IHdyb3RlOgo+Pj4+Pj4+IE9uIFR1ZSwgQXByIDI4LCAyMDIwIGF0IDEwOjU0OjAw
QU0gKzAyMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPj4+Pj4+Pj4gSGkgTWF4aW1lLAo+Pj4+
Pj4+Pgo+Pj4+Pj4+PiBPbiBUdWUsIDI4IEFwciAyMDIwIGF0IDEwOjAwLCBNYXhpbWUgUmlwYXJk
IDxtYXhpbWVAY2Vybm8udGVjaD4KPiB3cm90ZToKPj4+Pj4+Pj4+IE9uIFN1biwgQXByIDI2LCAy
MDIwIGF0IDAyOjA0OjM5UE0gKzAyMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPj4+Pj4+Pj4+
PiBGcm9tOiBNYXJjdXMgQ29vcGVyIDxjb2Rla2lwcGVyQGdtYWlsLmNvbT4KPj4+Pj4+Pj4+Pgo+
Pj4+Pj4+Pj4+IEFkZCBhIHNpbXBsZS1zb3VuZGNhcmQgdG8gbGluayBhdWRpbyBiZXR3ZWVuIEhE
TUkgYW5kIEkyUy4KPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEplcm5laiBT
a3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPj4+Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5
OiBNYXJjdXMgQ29vcGVyIDxjb2Rla2lwcGVyQGdtYWlsLmNvbT4KPj4+Pj4+Pj4+PiBTaWduZWQt
b2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+Pj4+Pj4+Pj4+
IC0tLQo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gICAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lu
bmVyL3N1bjUwaS1hNjQuZHRzaSB8IDIxCj4+Pj4+Pj4+Pj4gICAgICsrKysrKysrKysrKysrKysr
KysKPj4+Pj4+Pj4+PiAgICAgMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykKPj4+Pj4+
Pj4+Pgo+Pj4+Pj4+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5l
ci9zdW41MGktYTY0LmR0c2kKPj4+Pj4+Pj4+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lu
bmVyL3N1bjUwaS1hNjQuZHRzaSBpbmRleAo+Pj4+Pj4+Pj4+IGU1NmUxZTNkNGI3My4uMDhhYjZi
NWU3MmE1IDEwMDY0NAo+Pj4+Pj4+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lu
bmVyL3N1bjUwaS1hNjQuZHRzaQo+Pj4+Pj4+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaQo+Pj4+Pj4+Pj4+IEBAIC0xMDIsNiArMTAyLDI1IEBA
Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxl
ZCI7Cj4+Pj4+Pj4+Pj4gICAgICAgICAgCj4+Pj4+Pj4+Pj4gICAgICAgICAgfTsKPj4+Pj4+Pj4+
Pgo+Pj4+Pj4+Pj4+ICsgICAgIGhkbWlfc291bmQ6IGhkbWktc291bmQgewo+Pj4+Pj4+Pj4+ICsg
ICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJzaW1wbGUtYXVkaW8tY2FyZCI7Cj4+Pj4+Pj4+Pj4g
KyAgICAgICAgICAgICBzaW1wbGUtYXVkaW8tY2FyZCxmb3JtYXQgPSAiaTJzIjsKPj4+Pj4+Pj4+
PiArICAgICAgICAgICAgIHNpbXBsZS1hdWRpby1jYXJkLG5hbWUgPSAiYWxsd2lubmVyLGhkbWki
Owo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEknbSBub3Qgc3VyZSB3aGF0IHRoZSB1c3VhbCBjYXJkIG5h
bWUgc2hvdWxkIGJlIGxpa2UgdGhvdWdoLiBJIHdvdWxkCj4+Pj4+Pj4+PiBhc3N1bWUgdGhhdCB0
aGlzIHNob3VsZCBiZSBzb21ldGhpbmcgc3BlY2lmaWMgZW5vdWdoIHNvIHRoYXQgeW91J3JlCj4+
Pj4+Pj4+PiBhYmxlIHRvIGRpZmZlcmVudGlhdGUgYmV0d2VlbiBib2FyZHMgLyBTb0Mgc28gdGhh
dCB0aGUgdXNlcnNwYWNlCj4+Pj4+Pj4+PiBjYW4gY2hvb3NlIGEgZGlmZmVyZW50IGNvbmZpZ3Vy
YXRpb24gYmFzZWQgb24gaXQ/Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEkgcmVhbGx5IGRvbid0IGtub3cg
d2hhdCB3ZSBzaG91bGQgdXNlIGhlcmUsCj4+Pj4+Pj4+IEkganVzdCBoYXZlIGEgbG9vayBhdCBv
dGhlciBTb0M6Cj4+Pj4+Pj4+IHJrMzMyODogIkhETUkiCj4+Pj4+Pj4+IHJrMzM5OTogImhkbWkt
c291bmQiCj4+Pj4+Pj4+IHI4YTc3NGMwLWNhdDg3NDogIkNBVDg3NCBIRE1JIHNvdW5kIgo+Pj4+
Pj4+Pgo+Pj4+Pj4+PiBCdXQgbWF5YmUgaXQncyB0aW1lIHRvIGludHJvZHVjZSBwcm9wZXIgbmFt
ZToKPj4+Pj4+Pj4gV2hhdCBhYm91dCA6Cj4+Pj4+Pj4+IHBhdAo+Pj4+Pj4+PiBzdW41MGktaDYt
aGRtaQo+Pj4+Pj4+Cj4+Pj4+Pj4gSXQncyBwcmV0dHkgbXVjaCB3aGF0IHdlJ3ZlIGJlZW4gdXNp
bmcgZm9yIHRoZSBvdGhlciBzb3VuZCBjYXJkcyB3ZQo+Pj4+Pj4+IGhhdmUsIHNvIGl0IG1ha2Vz
IHNlbnNlIHRvIG1lLgo+Pj4+Pj4KPj4+Pj4+IEkgaGF2ZSBhIHF1ZXN0aW9uIHJlZ2FyZGluZyB0
aGUgc2ltcGxlLWF1ZGlvLWNhcmQsbmFtZS4KPj4+Pj4+IEluIHRoaXMgcGF0Y2gsIEkgd291bGQg
bGlrZSB0byBpbnRyb2R1Y2UgYSBzaW1wbGUtYXVkaW8tY2FyZCBmb3IgdGhlCj4+Pj4+PiBBbGx3
aW5uZXIgQTY0IEhETUkuCj4+Pj4+Pgo+Pj4+Pj4gV2hhdCBzaG91bGQgYmUgdGhlIHByZWZlcnJl
ZCBuYW1lIGZvciB0aGlzIHNvdW5kIGNhcmQ/Cj4+Pj4+PiAic3VuNTBpLWE2NC1oZG1pIiA/ICJh
bGx3aW5uZXIsIHN1bjUwaS1hNjQtaGRtaSIgPwo+Pj4+Pgo+Pj4+PiBJIGNhbiBhdCBsZWFzdCBz
cGVhayBmb3IgUkszMzI4LCBhbmQgdGhlIHJlYXNvbmluZyB0aGVyZSB3YXMgdGhhdCBhcyB0aGUK
Pj4+Pj4gdXNlciBsb29raW5nIGF0IHdoYXQgYGFwbGF5IC1sYCBzYXlzLCBJIGRvbid0IGdpdmUg
YSBob290IGFib3V0IHdoYXQgdGhlCj4+Pj4+IFNvQyBtYXkgYmUgY2FsbGVkLCBJIHNlZSB0d28g
Y2FyZHMgYW5kIEkgd2FudCB0byBrbm93LCB3aXRoIHRoZSBsZWFzdAo+Pj4+PiBhbW91bnQgb2Yg
dW5jZXJ0YWludHksIHdoaWNoIG9uZSB3aWxsIG1ha2UgdGhlIHNvdW5kIGNvbWUgb3V0IG9mIHRo
ZQo+Pj4+PiBwb3J0IHRoYXQncyBsYWJlbGxlZCAiSERNSSIgb24gdGhlIGJveCA7KQo+Pj4+Cj4+
Pj4gSSBhZ3JlZS4gVGhlIHVzZXIgcmVhbGx5IGRvZXNuJ3QgY2FyZSB3aGF0IFNvQyB0aGUgc3lz
dGVtIHVzZXMuIFRoZSBvbmx5Cj4+Pj4gcmVhbCByZXF1aXJlbWVudCBpcyB0byBiZSBhYmxlIHRv
IHRlbGwgd2hpY2ggb3V0cHV0IHRoZSBjYXJkIGlzIHJlbGF0ZWQKPj4+PiB0bywgaS5lLiBpcyBp
dCBvbmJvYXJkIG9yIGFuIGV4dGVybmFsIERBQywgaXMgaXQgYW5hbG9nIG9yIEhETUksIGV0Yy4u
Cj4+Pgo+Pj4gWWVhaCwgYnV0IGl0J3MgZXhhY3RseSB0aGUgcG9pbnQuCj4+Pgo+Pj4gSWYgd2Ug
YWxzbyBlbmQgdXAgd2l0aCAiSERNSSIgYXMgb3VyIGNhcmQgbmFtZSwgdGhlbiB0aGUgdXNlcnNw
YWNlIGhhcyBubwo+Pj4gd2F5IHRvIHRlbGwgYW55bW9yZSBpZiBpdCdzIHJ1bm5pbmcgZnJvbSBh
biByazMzMjggb3IgYW4gYWxsd2lubmVyIFNvQywKPj4+IG9yIHNvbWV0aGluZyBlbHNlIGVudGly
ZWx5LiBBbmQgdGhlcmVmb3JlIGl0IGNhbm5vdCByZWFsbHkgY29uZmlndXJlCj4+PiBhbnl0aGlu
ZyB0byB3b3JrIG91dCBvZiB0aGUgYm94IGFueW1vcmUuCj4+Cj4+IE9LLCB5b3UncmUgYSB1c2Vy
c3BhY2UgYXVkaW8gYXBwbGljYXRpb24gLSBlbmxpZ2h0ZW4gbWUgYXMgdG8gd2hhdCBleGFjdAo+
PiBjaGlwIHlvdSdyZSBydW5uaW5nIG9uIGhlcmUsIGFuZCB3aHkgeW91IG5lZWQgdG8ga25vdzoK
Pj4KPj4gY2FyZCAwOiBIRE1JIFtIREEgQVRJIEhETUldCj4+Cj4+IG9yIGhvdyBhYm91dCBoZXJl
Pwo+Pgo+PiBjYXJkIDA6IEludGVsIFtIREEgSW50ZWxdCj4+Cj4+Cj4+IEZ1cnRoZXJtb3JlLCB5
b3VyIGFyZ3VtZW50IHdvcmtzIGJvdGggd2F5cyAtIGlmIHRoZSBlcXVpdmFsZW50IChvciBpbgo+
PiBjb21tb24gY2FzZXMgbGlrZSBEZXNpZ25XYXJlIElQIGJsb2NrcywgZXhhY3Qgc2FtZSkgdGhp
bmcgYWNyb3NzIDMKPj4gZGlmZmVyZW50IFNvQ3MgaGFzIDMgZGlmZmVyZW50IG5hbWVzLCB0aGVu
IGl0J3MgdGhhdCBtdWNoIGhhcmRlciBmb3IKPj4gdXNlcnNwYWNlIHRoYXQgd2FudHMgdG8gcHJl
c2VudCBhIGNvbnNpc3RlbnQgYmVoYXZpb3VyLiBJIGRvbid0IGtub3cKPj4gZXhhY3RseSB3aHkg
TGlicmVFTEVDIGhhdmUgZG93bnN0cmVhbSBwYXRjaGVzIHRoYXQgc3RhbmRhcmRpc2UgYWxsIHRo
ZQo+PiBSb2NrY2hpcCBvbmVzIHRvICJIRE1JIiwgYnV0IEkgY2FuJ3QgaGVscCBub3RpbmcgdGhh
dCB0aGV5IGRvLgo+Pgo+PiBXaXRoIHNpbXBsZS1hdWRpby1jYXJkIHdlJ3JlIHRhbGtpbmcgYWJv
dXQgdHJpdmlhbCBpbnRlcmZhY2VzIHRoYXQgb2Z0ZW4KPj4gZG9uJ3QgZXhwb3NlIGFueSBjb250
cm9scyBhdCBhbGwsIHNvIHRoZXJlJ3MgdW5saWtlbHkgdG8gYmUgbXVjaAo+PiAnY29uZmlndXJh
dGlvbicgZm9yIHVzZXJzcGFjZSB0byBkbyBiZXlvbmQgY2hvb3Npbmcgd2hpY2ggY2FyZCB0byBv
dXRwdXQgdG8uCj4gCj4gVGhpcyBjb21iaW5hdGlvbiAoRGVzaWduV2FyZSBIRE1JIGNvbnRyb2xs
ZXIgKyBJMlMpIGlzIHNhbWUgYXMgb24gUm9ja2NoaXAuCj4gT25seSBkaWZmZXJlbmNlIGlzIHNs
aWdodGx5IGRpZmZlcmVudCB2ZXJzaW9uIG9mIEhETUkgY29udHJvbGxlciBhbmQgZGlmZmVyZW50
Cj4gSTJTIGNvcmUuIE5vdCBzdXJlIHdoYXQga2luZCBvZiBjb25maWd1cmF0aW9uIGRvIHlvdSBo
YXZlIGluIG1pbmQsIGJ1dCBhbGwKPiB0aGVzZSBjb250cm9sbGVycyBzdXBwb3J0IDItOCBjaGFu
bmVscywgZGlmZmVyZW50IHNhbXBsZSBzaXplcywgZXZlbgo+IHBhc3N0aHJvdWdoIG1vZGUgY2Fu
IGJlIHNldCAoYnV0IGl0J3Mgbm90IGltcGxlbWVudGVkIHlldCkuIEkgd291bGQgc2F5IHRoYXQK
PiB0aGlzIGF1ZGlvIG91dHB1dCBzdXBwb3J0cyBxdWlldCBhIGZldyBwb3NzaWJsZSBjb25maWd1
cmF0aW9ucy4KClJpZ2h0LCB3aGF0IEknbSBnZXR0aW5nIGF0IGlzIHRoYXQgdGhlIHN0dWZmIHRo
YXQgbWF0dGVycyBpcyBhbGwgcmVndWxhciAKYXVkaW8gY2FwYWJpbGl0aWVzIGV4cG9zZWQgdmlh
IHRoZSBhcHByb3ByaWF0ZSBBUElzLCBhbmQgYW55IGNob2ljZXMgYXJlIApnb2luZyB0byBiZSBt
b3N0bHkgYmFzZWQgb24gdGhlIGF1ZGlvIGJlaW5nIHBsYXllZCBhbmQgd2hhdCB0aGUgcmVjZWl2
ZXIgCm9uIHRoZSBvdGhlciBlbmQgb2YgdGhlIGxpbmsgc3VwcG9ydHMuIEknbSBnZW51aW5lbHkg
Y3VyaW91cyBhcyB0byB3aGF0IAphY3R1YWwgY29uZmlndXJhdGlvbiBkZWNpc2lvbiBjb3VsZCBi
ZSBtYWRlIHB1cmVseSBiYXNlZCBvbiB0aGUgU29DIApuYW1lLCByZWdhcmRsZXNzIG9mIHRoZSBi
b2FyZCwgcmVjZWl2ZXIsIG9yIHRoZSBjYXBhYmlsaXRpZXMgYWR2ZXJ0aXNlZCAKYnkgdGhlIGlu
dGVyZmFjZSBpdHNlbGYuCgpUaGFua3MsClJvYmluLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
