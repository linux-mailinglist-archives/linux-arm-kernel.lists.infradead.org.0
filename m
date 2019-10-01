Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6C4C2CF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 07:33:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3EGtod9t4H+HsAxUPuRQcAJYBsbqNVum0MEosJXZ34=; b=nqPPCigLnMyomt
	DaFtuftSo6Hd0SPTxJyvptr1bVo2OL0RyYkp/cg6LtCVBQ8FTqFB2tElCve4+1/xddi/u0vXKYvjU
	71C/LI6cSw+myME8gbL8TcXZVhpE8Gd7DhMnTmoCk9U5koUbGSeXtRZAPdji1U4mxq59bN3eZYrdj
	+u5vcjNnaBMMJrpDUcuqYsbkSC/q6r/LsrLF+3Y1ms6i1QYhag8ZZ8WwTybC1VvogAwOB6PqvIRYi
	oo5z3udkgPuchVkyEMfz9JKGykOh2PWbQ/Az7GoIiL5U1ndT/AbMd3ZbXfKL8K9uCbysManYRJQN0
	6dEv+Zq8YoS/RjEBwsfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFAn1-0001b3-SC; Tue, 01 Oct 2019 05:33:35 +0000
Received: from mailoutvs14.siol.net ([185.57.226.205] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFAms-0001Zy-2a
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 05:33:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 01FBE5214A7;
 Tue,  1 Oct 2019 07:33:19 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id C3Ar8QFXxW9r; Tue,  1 Oct 2019 07:33:19 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 4E5C25214C3;
 Tue,  1 Oct 2019 07:33:19 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id E624C5214A7;
 Tue,  1 Oct 2019 07:33:17 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH v2 0/6] media: cedrus: h264: Support multi-slice frames
Date: Tue, 01 Oct 2019 07:33:17 +0200
Message-ID: <1947541.RCUY4WSgCv@jernej-laptop>
In-Reply-To: <eb127b9a-e226-d230-67b5-069795bd76fb@xs4all.nl>
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
 <4342181.Ehiz7mZe5m@jernej-laptop>
 <eb127b9a-e226-d230-67b5-069795bd76fb@xs4all.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_223326_273176_9EB935E0 
X-CRM114-Status: GOOD (  22.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.205 listed in list.dnswl.org]
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
IHRoZSBkcml2ZXIsIHNvIG91dF92YiB3aWxsIGluZGVlZCBiZSBOVUxMLgoKSXQncyBiZXR0ZXIs
IGJ1dCBzdGlsbCBub3Qgd29ya2luZy4gQ3VycmVudGx5IGZmbXBlZyBzb21ldGltZXMgcmVwb3J0
cyBzdWNoIAptZXNzYWdlczogaHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3Lzl0VlZ0YzIwIFRoaXMg
aXMgZG1lc2cgb3V0cHV0OiBodHRwOi8vCml4LmlvLzFMMUwKCkl0IHNlZW1zIHRvIG1lIGxpa2Ug
YSByYWNlIGNvbmRpdGlvbi4gU29tZXRpbWVzIGZsdXNoIHdvcmtzIGFzIGluZGVuZGVudCBhbmQg
CnNvbWV0aW1lcyBpdCBpbmZsdWVuY2VzIG5leHQgZnJhbWUuCgpCZXN0IHJlZ2FyZHMsCkplcm5q
ZQoKPiAKPiBTb3JyeSBmb3IgdGhlIGNvbmZ1c2lvbi4KPiAKPiBSZWdhcmRzLAo+IAo+IAlIYW5z
Cj4gCj4gPiBCZXN0IHJlZ2FyZHMsCj4gPiBKZXJuZWoKPiA+IAo+ID4+IFJlZ2FyZHMsCj4gPj4g
Cj4gPj4gCUhhbnMKPiA+PiAJCj4gPj4+IFRoYW5rcyB0byBKb25hcyBmb3IgYWRqdXN0aW5nIGZm
bXBlZy4KPiA+Pj4gCj4gPj4+IFBsZWFzZSBsZXQgbWUga25vdyB3aGF0IHlvdSB0aGluay4KPiA+
Pj4gCj4gPj4+IEJlc3QgcmVnYXJkcywKPiA+Pj4gSmVybmVqCj4gPj4+IAo+ID4+PiBDaGFuZ2Vz
IGZyb20gdjE6Cj4gPj4+IC0gYWRkZWQgUmIgdGFncwo+ID4+PiAtIHVwZGF0ZWQgVjRMMl9ERUNf
Q01EX0ZMVVNIIGRvY3VtZW50YXRpb24KPiA+Pj4gLSB1cGRhdGVkIGZpcnN0IHNsaWNlIGRldGVj
dGlvbiBpbiBDZWRydXMKPiA+Pj4gLSBob2xkIGNhcHR1cmUgYnVmZmVyIGZsYWcgaXMgc2V0IGFj
Y29yZGluZyB0byBzb3VyY2UgZm9ybWF0Cj4gPj4+IC0gYWRkZWQgdjRsIG0ybSBzdGF0ZWxlc3Nf
KHRyeV8pZGVjb2Rlcl9jbWQgaW9jdGwgaGVscGVycwo+ID4+PiAKPiA+Pj4gSGFucyBWZXJrdWls
ICgyKToKPiA+Pj4gICB2YjI6IGFkZCBWNEwyX0JVRl9GTEFHX00yTV9IT0xEX0NBUFRVUkVfQlVG
Cj4gPj4+ICAgdmlkZW9kZXYyLmg6IGFkZCBWNEwyX0RFQ19DTURfRkxVU0gKPiA+Pj4gCj4gPj4+
IEplcm5laiBTa3JhYmVjICg0KToKPiA+Pj4gICBtZWRpYTogdjRsMi1tZW0ybWVtOiBhZGQgc3Rh
dGVsZXNzXyh0cnlfKWRlY29kZXJfY21kIGlvY3RsIGhlbHBlcnMKPiA+Pj4gICBtZWRpYTogY2Vk
cnVzOiBEZXRlY3QgZmlyc3Qgc2xpY2Ugb2YgYSBmcmFtZQo+ID4+PiAgIG1lZGlhOiBjZWRydXM6
IGgyNjQ6IFN1cHBvcnQgbXVsdGlwbGUgc2xpY2VzIHBlciBmcmFtZQo+ID4+PiAgIG1lZGlhOiBj
ZWRydXM6IEFkZCBzdXBwb3J0IGZvciBob2xkaW5nIGNhcHR1cmUgYnVmZmVyCj4gPj4+ICAKPiA+
Pj4gIERvY3VtZW50YXRpb24vbWVkaWEvdWFwaS92NGwvYnVmZmVyLnJzdCAgICAgICB8IDEzICsr
KysrKwo+ID4+PiAgLi4uL21lZGlhL3VhcGkvdjRsL3ZpZGlvYy1kZWNvZGVyLWNtZC5yc3QgICAg
IHwgMTAgKysrLQo+ID4+PiAgLi4uL21lZGlhL3VhcGkvdjRsL3ZpZGlvYy1yZXFidWZzLnJzdCAg
ICAgICAgIHwgIDYgKysrCj4gPj4+ICAuLi4vbWVkaWEvdmlkZW9kZXYyLmgucnN0LmV4Y2VwdGlv
bnMgICAgICAgICAgfCAgMSArCj4gPj4+ICAuLi4vbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRl
b2J1ZjItdjRsMi5jICAgfCAgOCArKystCj4gPj4+ICBkcml2ZXJzL21lZGlhL3Y0bDItY29yZS92
NGwyLW1lbTJtZW0uYyAgICAgICAgfCAzNSArKysrKysrKysrKysrKwo+ID4+PiAgZHJpdmVycy9z
dGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXMuaCAgIHwgIDEgKwo+ID4+PiAgLi4uL3N0
YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19kZWMuYyAgIHwgMTEgKysrKysKPiA+Pj4g
IC4uLi9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NC5jICB8IDExICsrKyst
Cj4gPj4+ICAuLi4vc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2h3LmMgICAgfCAg
OCArKy0tCj4gPj4+ICAuLi4vc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX3ZpZGVv
LmMgfCAxNCArKysrKysKPiA+Pj4gIGluY2x1ZGUvbWVkaWEvdjRsMi1tZW0ybWVtLmggICAgICAg
ICAgICAgICAgICB8IDQ2ICsrKysrKysrKysrKysrKysrKysKPiA+Pj4gIGluY2x1ZGUvbWVkaWEv
dmlkZW9idWYyLWNvcmUuaCAgICAgICAgICAgICAgICB8ICAzICsrCj4gPj4+ICBpbmNsdWRlL21l
ZGlhL3ZpZGVvYnVmMi12NGwyLmggICAgICAgICAgICAgICAgfCAgNSArKwo+ID4+PiAgaW5jbHVk
ZS91YXBpL2xpbnV4L3ZpZGVvZGV2Mi5oICAgICAgICAgICAgICAgIHwgMTQgKysrKy0tCj4gPj4+
ICAxNSBmaWxlcyBjaGFuZ2VkLCAxNzUgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgoK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
