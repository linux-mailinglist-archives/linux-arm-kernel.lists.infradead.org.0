Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B050DC2A1C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 00:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72ja4s50oxxqD1CW5NSQGgpD6SCxVoc/fxMQUI4IkHM=; b=OO+VAhNqiKRFZ4
	Hf1irJezC9VxfsesgPycywoq8SAGl0YmRev7xlqBBdvGGCl2F0/40BJn560gr67XHwkBcWby4eSK6
	A1zfbpv5RRiLLIU4MJlqv36rELiv23FZwdXTqG/X5IuKSeqqsExiNtaV0Dy8srw8uUoRtdoKyIO30
	uZutg1W8A6Qbs+/MXxtsXxkL2UjpRzNYJpRDHYxBL8QYWZDReQbM71R2Q9XubtaeEXTJlth73UDjf
	i7DWdf5rawdnKD76gdszJk4W0QBO1X9jxDS5n1ndeGTpuQ2bihjYD88dvk0iVD04XO4gXtuArmbn9
	Vq9HeEG+JBt9qql/UR8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF4d4-0002Ap-Ov; Mon, 30 Sep 2019 22:58:54 +0000
Received: from mailoutvs24.siol.net ([185.57.226.215] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF4cp-000292-Vo
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 22:58:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id E103A522E4B;
 Tue,  1 Oct 2019 00:58:36 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id U70U11j2XR3J; Tue,  1 Oct 2019 00:58:36 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 469CF522EAA;
 Tue,  1 Oct 2019 00:58:36 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 7E54B522E4B;
 Tue,  1 Oct 2019 00:58:35 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH v2 0/6] media: cedrus: h264: Support multi-slice frames
Date: Tue, 01 Oct 2019 00:58:35 +0200
Message-ID: <11665334.4LxpHo8hza@jernej-laptop>
In-Reply-To: <eb127b9a-e226-d230-67b5-069795bd76fb@xs4all.nl>
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
 <4342181.Ehiz7mZe5m@jernej-laptop>
 <eb127b9a-e226-d230-67b5-069795bd76fb@xs4all.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_155840_182064_7658DD0D 
X-CRM114-Status: GOOD (  22.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.215 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org, pawel@osciak.com,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, mripard@kernel.org,
 tfiga@chromium.org, paul.kocialkowski@bootlin.com, kyungmin.park@samsung.com,
 boris.brezillon@collabora.com, linux-arm-kernel@lists.infradead.org,
 mchehab@kernel.org, ezequiel@collabora.com, linux-kernel@vger.kernel.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIHRvcmVrLCAwMS4gb2t0b2JlciAyMDE5IG9iIDAwOjQzOjM0IENFU1QgamUgSGFucyBWZXJr
dWlsIG5hcGlzYWwoYSk6Cj4gT24gMTAvMS8xOSAxMjoyNyBBTSwgSmVybmVqIMWga3JhYmVjIHdy
b3RlOgo+ID4gRG5lIHBvbmVkZWxqZWssIDMwLiBzZXB0ZW1iZXIgMjAxOSBvYiAxMDoxMDo0OCBD
RVNUIGplIEhhbnMgVmVya3VpbAo+ID4gCj4gPiBuYXBpc2FsKGEpOgo+ID4+IE9uIDkvMjkvMTkg
MTA6MDAgUE0sIEplcm5laiBTa3JhYmVjIHdyb3RlOgo+ID4+PiBUaGlzIHNlcmllcyBhZGRzIHN1
cHBvcnQgZm9yIGRlY29kaW5nIG11bHRpLXNsaWNlIEgyNjQgZnJhbWVzIGFsb25nIHdpdGgKPiA+
Pj4gc3VwcG9ydCBmb3IgVjRMMl9ERUNfQ01EX0ZMVVNIIGFuZCBWNEwyX0JVRl9GTEFHX00yTV9I
T0xEX0NBUFRVUkVfQlVGLgo+ID4+PiAKPiA+Pj4gQ29kZSB3YXMgdGVzdGVkIGJ5IG1vZGlmaWVk
IGZmbXBlZywgd2hpY2ggY2FuIGJlIGZvdW5kIGhlcmU6Cj4gPj4+IGh0dHBzOi8vZ2l0aHViLmNv
bS9qZXJuZWpzay9GRm1wZWcsIGJyYW5jaCBtYWlubGluZS10ZXN0Cj4gPj4+IEl0IGhhcyB0byBi
ZSBjb25maWd1cmVkIHdpdGggYXQgbGVhc3QgZm9sbG93aW5nIG9wdGlvbnM6Cj4gPj4+IC0tZW5h
YmxlLXY0bDItcmVxdWVzdCAtLWVuYWJsZS1saWJ1ZGV2IC0tZW5hYmxlLWxpYmRybQo+ID4+PiAK
PiA+Pj4gU2FtcGxlcyB1c2VkIGZvciB0ZXN0aW5nOgo+ID4+PiBodHRwOi8vamVybmVqLmxpYnJl
ZWxlYy50di92aWRlb3MvaDI2NC9CQTFfRlRfQy5tcDQKPiA+Pj4gaHR0cDovL2plcm5lai5saWJy
ZWVsZWMudHYvdmlkZW9zL2gyNjQvaDI2NC5tcDQKPiA+Pj4gCj4gPj4+IENvbW1hbmQgbGluZSB1
c2VkIGZvciB0ZXN0aW5nOgo+ID4+PiBmZm1wZWcgLWh3YWNjZWwgZHJtIC1od2FjY2VsX2Rldmlj
ZSAvZGV2L2RyaS9jYXJkMCAtaSBoMjY0Lm1wNCAtcGl4X2ZtdAo+ID4+PiBiZ3JhIC1mIGZiZGV2
IC9kZXYvZmIwCj4gPj4+IAo+ID4+PiBQbGVhc2Ugbm90ZSB0aGF0IFY0TDJfREVDX0NNRF9GTFVT
SCB3YXMgbm90IHRlc3RlZCBiZWNhdXNlIEknbQo+ID4+PiBub3Qgc3VyZSBob3cuIGZmbXBlZyBm
b2xsb3dzIGV4YWN0bHkgd2hpY2ggc2xpY2UgaXMgbGFzdCBpbiBmcmFtZQo+ID4+PiBhbmQgc2V0
cyBob2xkIGZsYWcgYWNjb3JkaW5nbHkuIEltcHJvcGVyIHVzYWdlIG9mIGhvbGQgZmxhZyB3b3Vs
ZAo+ID4+PiBjb3JydXB0IGZmbXBlZyBhc3N1bXB0aW9ucyBhbmQgaXQgd291bGQgcHJvYmFibHkg
Y3Jhc2guIEFueSBpZGVhcwo+ID4+PiBob3cgdG8gdGVzdCB0aGlzIGFyZSB3ZWxjb21lIQo+ID4+
IAo+ID4+IEl0IGNhbiBiZSB0ZXN0ZWQgcGFydGlhbGx5IGF0IGxlYXN0OiBpZiBmZm1wZWcgdGVs
bHMgeW91IGl0IGlzIHRoZSBsYXN0Cj4gPj4gc2xpY2UsIHRoZW4gcXVldWUgdGhlIHNsaWNlIHdp
dGggdGhlIEhPTEQgZmxhZyBzZXQsIHRoZW4gY2FsbCBGTFVTSAo+ID4+IGFmdGVyd2FyZHMuIFRo
aXMgc2hvdWxkIGNsZWFyIHRoZSBIT0xEIGZsYWcgYWdhaW4uIEluIHRoaXMgY2FzZSB0aGUKPiA+
PiBxdWV1ZWQKPiA+PiBidWZmZXIgaXMgcHJvYmFibHkgbm90IHlldCBwcm9jZXNzZWQsIHNvIHRo
ZSBmbGFnIGlzIGNsZWFyZWQgYmVmb3JlIHRoZQo+ID4+IGRlY29kZSBqb2Igc3RhcnRzLgo+ID4+
IAo+ID4+IFlvdSBjYW4gYWxzbyB0cnkgdG8gYWRkIGEgc2xlZXAgYmVmb3JlIGNhbGxpbmcgRkxV
U0ggdG8gc2VlIHdoYXQgaGFwcGVucwo+ID4+IGlmIHRoZSBsYXN0IHF1ZXVlZCBidWZmZXIgaXMg
YWxyZWFkeSBkZWNvZGVkLgo+ID4gCj4gPiBPaywgSSB0cmllZCBmb2xsb3dpbmcgY29kZToKPiA+
IGh0dHBzOi8vZ2l0aHViLmNvbS9qZXJuZWpzay9GRm1wZWcvYmxvYi9mbHVzaF90ZXN0L2xpYmF2
Y29kZWMvCj4gPiB2NGwyX3JlcXVlc3QuYyNMMjIwLUwyMzMKPiA+IAo+ID4gQnV0IHJlc3VsdHMg
YXJlIG5vdCBnb29kLiBJdCBzZWVtcyB0aGF0IG91dF92YiBpbiBmbHVzaCBjb21tYW5kIGlzIGFs
d2F5cwo+ID4gTlVMTCBhbmQgc28gaXQgYWx3YXlzIG1hcmtzIGNhcHR1cmUgYnVmZmVyIGFzIGRv
bmUsIHdoaWNoIGxlYWRzIHRvIGtlcm5lbAo+ID4gd2FybmluZ3MuCj4gPiAKPiA+IGRtZXNnIG91
dHB1dCB3aXRoIGRlYnVnZ2luZyBtZXNzYWdlcyBpcyBoZXJlOiBodHRwOi8vaXguaW8vMUtzOAo+
ID4gCj4gPiBDdXJyZW50bHkgSSdtIG5vdCBzdXJlIHdoYXQgaXMgZ29pbmcgb24uIFNob3VsZG4n
dCBiZSBvdXRwdXQgYnVmZmVyIHF1ZXVlZAo+ID4gYW5kIHdhaXRpbmcgdG8gTUVESUFfUkVRVUVT
VF9JT0NfUVVFVUUgd2hpY2ggaXMgZXhlY3V0ZWQgYWZ0ZXIgZmx1c2gKPiA+IGNvbW1hbmQgYXMg
aXQgY2FuIGJlIHNlZW4gZnJvbSBmZm1wZWcgY29kZSBsaW5rZWQgYWJvdmU/Cj4gCj4gQXJnaCwg
SSBmb3Jnb3QgYWJvdXQgdGhlIGZhY3QgdGhhdCB0aGlzIHVzZXMgcmVxdWVzdHMuCj4gCj4gVGhl
IEZMVVNIIHNob3VsZCBoYXBwZW4gKmFmdGVyKiB0aGUgTUVESUFfUkVRVUVTVF9JT0NfUVVFVUUg
aW9jdGwuIE90aGVyd2lzZQo+IGl0IGhhcyBubyBlZmZlY3QuIEFzIGxvbmcgYXMgdGhlIHJlcXVl
c3QgaGFzbid0IGJlZW4gcXVldWVkLCB0aGUgYnVmZmVyIGlzCj4gYWxzbyBub3QgcXVldWVkIHRv
IHRoZSBkcml2ZXIsIHNvIG91dF92YiB3aWxsIGluZGVlZCBiZSBOVUxMLgoKV2VsbCwgZmx1c2gg
Y21kIGhhcyBlZmZlY3QgaWYgaXQgaXMgY2FsbGVkIGJlZm9yZSBNRURJQV9SRVFVRVNUX0lPQ19R
VUVVRSBpb2N0bCAKYXMgaXQgY2FuIGJlIHNlZW4gZnJvbSBsaW5rZWQgZG1lc2cgb3V0cHV0LiBJ
IGd1ZXNzIHRoZXJlIGlzIG5vdGhpbmcgdGhhdCB3ZSAKY2FuIGRvIHRvIHByZXZlbnQgd3Jvbmcg
dXNhZ2U/CgpCVFcsIGlmIGNhcHR1cmUgYnVmZmVyIGlzIG1hcmtlZCBhcyBkb25lLCBzaG91bGRu
J3QgYmUgYWxzbyByZW1vdmVkIGZyb20gdGhlIApxdWV1ZT8KCkJlc3QgcmVnYXJkcywKSmVybmVq
Cgo+IAo+IFNvcnJ5IGZvciB0aGUgY29uZnVzaW9uLgo+IAo+IFJlZ2FyZHMsCj4gCj4gCUhhbnMK
PiAKPiA+IEJlc3QgcmVnYXJkcywKPiA+IEplcm5lago+ID4gCj4gPj4gUmVnYXJkcywKPiA+PiAK
PiA+PiAJSGFucwo+ID4+IAkKPiA+Pj4gVGhhbmtzIHRvIEpvbmFzIGZvciBhZGp1c3RpbmcgZmZt
cGVnLgo+ID4+PiAKPiA+Pj4gUGxlYXNlIGxldCBtZSBrbm93IHdoYXQgeW91IHRoaW5rLgo+ID4+
PiAKPiA+Pj4gQmVzdCByZWdhcmRzLAo+ID4+PiBKZXJuZWoKPiA+Pj4gCj4gPj4+IENoYW5nZXMg
ZnJvbSB2MToKPiA+Pj4gLSBhZGRlZCBSYiB0YWdzCj4gPj4+IC0gdXBkYXRlZCBWNEwyX0RFQ19D
TURfRkxVU0ggZG9jdW1lbnRhdGlvbgo+ID4+PiAtIHVwZGF0ZWQgZmlyc3Qgc2xpY2UgZGV0ZWN0
aW9uIGluIENlZHJ1cwo+ID4+PiAtIGhvbGQgY2FwdHVyZSBidWZmZXIgZmxhZyBpcyBzZXQgYWNj
b3JkaW5nIHRvIHNvdXJjZSBmb3JtYXQKPiA+Pj4gLSBhZGRlZCB2NGwgbTJtIHN0YXRlbGVzc18o
dHJ5XylkZWNvZGVyX2NtZCBpb2N0bCBoZWxwZXJzCj4gPj4+IAo+ID4+PiBIYW5zIFZlcmt1aWwg
KDIpOgo+ID4+PiAgIHZiMjogYWRkIFY0TDJfQlVGX0ZMQUdfTTJNX0hPTERfQ0FQVFVSRV9CVUYK
PiA+Pj4gICB2aWRlb2RldjIuaDogYWRkIFY0TDJfREVDX0NNRF9GTFVTSAo+ID4+PiAKPiA+Pj4g
SmVybmVqIFNrcmFiZWMgKDQpOgo+ID4+PiAgIG1lZGlhOiB2NGwyLW1lbTJtZW06IGFkZCBzdGF0
ZWxlc3NfKHRyeV8pZGVjb2Rlcl9jbWQgaW9jdGwgaGVscGVycwo+ID4+PiAgIG1lZGlhOiBjZWRy
dXM6IERldGVjdCBmaXJzdCBzbGljZSBvZiBhIGZyYW1lCj4gPj4+ICAgbWVkaWE6IGNlZHJ1czog
aDI2NDogU3VwcG9ydCBtdWx0aXBsZSBzbGljZXMgcGVyIGZyYW1lCj4gPj4+ICAgbWVkaWE6IGNl
ZHJ1czogQWRkIHN1cHBvcnQgZm9yIGhvbGRpbmcgY2FwdHVyZSBidWZmZXIKPiA+Pj4gIAo+ID4+
PiAgRG9jdW1lbnRhdGlvbi9tZWRpYS91YXBpL3Y0bC9idWZmZXIucnN0ICAgICAgIHwgMTMgKysr
KysrCj4gPj4+ICAuLi4vbWVkaWEvdWFwaS92NGwvdmlkaW9jLWRlY29kZXItY21kLnJzdCAgICAg
fCAxMCArKystCj4gPj4+ICAuLi4vbWVkaWEvdWFwaS92NGwvdmlkaW9jLXJlcWJ1ZnMucnN0ICAg
ICAgICAgfCAgNiArKysKPiA+Pj4gIC4uLi9tZWRpYS92aWRlb2RldjIuaC5yc3QuZXhjZXB0aW9u
cyAgICAgICAgICB8ICAxICsKPiA+Pj4gIC4uLi9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVv
YnVmMi12NGwyLmMgICB8ICA4ICsrKy0KPiA+Pj4gIGRyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0
bDItbWVtMm1lbS5jICAgICAgICB8IDM1ICsrKysrKysrKysrKysrCj4gPj4+ICBkcml2ZXJzL3N0
YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1cy5oICAgfCAgMSArCj4gPj4+ICAuLi4vc3Rh
Z2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2RlYy5jICAgfCAxMSArKysrKwo+ID4+PiAg
Li4uL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19oMjY0LmMgIHwgMTEgKysrKy0K
PiA+Pj4gIC4uLi9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaHcuYyAgICB8ICA4
ICsrLS0KPiA+Pj4gIC4uLi9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfdmlkZW8u
YyB8IDE0ICsrKysrKwo+ID4+PiAgaW5jbHVkZS9tZWRpYS92NGwyLW1lbTJtZW0uaCAgICAgICAg
ICAgICAgICAgIHwgNDYgKysrKysrKysrKysrKysrKysrKwo+ID4+PiAgaW5jbHVkZS9tZWRpYS92
aWRlb2J1ZjItY29yZS5oICAgICAgICAgICAgICAgIHwgIDMgKysKPiA+Pj4gIGluY2x1ZGUvbWVk
aWEvdmlkZW9idWYyLXY0bDIuaCAgICAgICAgICAgICAgICB8ICA1ICsrCj4gPj4+ICBpbmNsdWRl
L3VhcGkvbGludXgvdmlkZW9kZXYyLmggICAgICAgICAgICAgICAgfCAxNCArKysrLS0KPiA+Pj4g
IDE1IGZpbGVzIGNoYW5nZWQsIDE3NSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKCgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
