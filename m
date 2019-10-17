Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 947AFDB2CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 18:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dZNgLZqmE1GucMdeYaSf9hclcAdvCn5vlTJCdHg5ffo=; b=aBfGa2r8FpnyAS
	x2MOuK/wAjylmdOdWWg57cuxYRo2+R41bwMT86BSibnSwV8PFVUzdueTj07zno+oaxKwmKbiuDBQz
	Wbu8uy8t+7S9vBZDDSAuWKcYJxQZ14OBeLVsKK7zqZSVF3AOAZsvi7u1LyJWhuSPUA1M4MEsfJMGf
	nMt7fDvERRwbFNLDQOzxj6nSR9DDg4pWsVz9/qnA8fuqJFJ19iucO8suNNoNR8Wua+AKlwGsth2Mr
	+FCtnJ1TQltCkXmV12RF3a+gbcDD/KgyWw2+DRAf2Pyke9ZPNDNz3x8KFJbOEFququs0bFPETqcIq
	uWdbOIyCm+XWvVnlB3EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL8zS-0007X2-Av; Thu, 17 Oct 2019 16:51:06 +0000
Received: from mailoutvs29.siol.net ([185.57.226.220] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL8zH-0007VQ-Px
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 16:50:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 30B93521752;
 Thu, 17 Oct 2019 18:50:44 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id ctlfp8DRqJtw; Thu, 17 Oct 2019 18:50:43 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id AAB075217B6;
 Thu, 17 Oct 2019 18:50:43 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id D71F4521752;
 Thu, 17 Oct 2019 18:50:42 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v3 5/6] media: sun4i: Add H3 deinterlace driver
Date: Thu, 17 Oct 2019 18:50:42 +0200
Message-ID: <1811024.Ag6lDGI2hk@jernej-laptop>
In-Reply-To: <d768b2bc-a942-03a6-253d-4bcc31f1b11e@xs4all.nl>
References: <20191016192807.1278987-1-jernej.skrabec@siol.net>
 <20191016192807.1278987-6-jernej.skrabec@siol.net>
 <d768b2bc-a942-03a6-253d-4bcc31f1b11e@xs4all.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_095056_164032_F15C5AB1 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.220 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIMSNZXRydGVrLCAxNy4gb2t0b2JlciAyMDE5IG9iIDA5OjUxOjI4IENFU1QgamUgSGFucyBW
ZXJrdWlsIG5hcGlzYWwoYSk6Cj4gT24gMTAvMTYvMTkgOToyOCBQTSwgSmVybmVqIFNrcmFiZWMg
d3JvdGU6Cj4gPiBBbGx3aW5uZXIgSDMgU29DIGNvbnRhaW5zIGRlaW50ZXJsYWNlIHVuaXQsIHdo
aWNoIGhhcyBzZXZlcmFsIG1vZGVzIG9mCj4gPiBvcGVyYXRpb24gLSBieXBhc3MsIHdlYXZlLCBi
b2IgYW5kIG1peGVkIChhZHZhbmNlZCkgbW9kZS4gSSBkb24ndCBrbm93Cj4gPiBob3cgbWl4ZWQg
bW9kZSB3b3JrcywgYnV0IGFjY29yZGluZyB0byBBbGx3aW5uZXIgaXQgZ2l2ZXMgYmVzdCByZXN1
bHRzLAo+ID4gc28gdGhleSB1c2UgaXQgZXhjbHVzaXZlbHkuIEN1cnJlbnRseSB0aGlzIG1vZGUg
aXMgYWxzbyBoYXJkY29kZWQgaGVyZS4KPiA+IAo+ID4gRm9yIGVhY2ggaW50ZXJsZWF2ZWQgZnJh
bWUgcXVldWVkLCB0aGlzIGRyaXZlciBwcm9kdWNlcyAyIGRlaW50ZXJsYWNlZAo+ID4gZnJhbWVz
LiBEZWludGVybGFjZWQgZnJhbWVzIGFyZSBiYXNlZCBvbiAyIGNvbnNlcXV0aXZlIG91dHB1dCBi
dWZmZXJzLAo+ID4gZXhjZXB0IGZvciB0aGUgZmlyc3QgMiwgd2hlcmUgc2FtZSBvdXRwdXQgYnVm
ZmVyIGlzIGdpdmVuIHRvIHBlcmlwaGVyYWwKPiA+IGFzIGN1cnJlbnQgYW5kIHByZXZpb3VzLgo+
ID4gCj4gPiBUaGVyZSBpcyBubyBkb2N1bWVudGF0aW9uIGZvciB0aGlzIGNvcmUsIHNvIHJlZ2lz
dGVyIGxheW91dCBhbmQgZml4ZWQKPiA+IHZhbHVlcyB3ZXJlIHRha2VuIGZyb20gQlNQIGRyaXZl
ci4KPiA+IAo+ID4gSSdtIG5vdCBzdXJlIGlmIG1heGltdW0gc2l6ZSBvZiB0aGUgaW1hZ2UgdW5p
dCBpcyBjYXBhYmxlIHRvIHByb2Nlc3MgaXMKPiA+IGdvdmVybmVkIGJ5IHNpemUgb2YgImZsYWci
IGJ1ZmZlcnMsIGZyZXF1ZW5jeSBvciBpdCByZWFsbHkgaXMgc29tZSBIVwo+ID4gbGltaXRhdGlv
bi4gQ3VycmVudGx5IGRyaXZlciBjYW4gcHJvY2VzcyBmdWxsIEhEIGltYWdlIGluIH4xNW1zICg3
LjVtcwo+ID4gZm9yIGVhY2ggY2FwdHVyZSBidWZmZXIpLCB3aGljaCBhbGxvd3MgdG8gcHJvY2Vz
cyAxOTIweDEwODBANjBpIHZpZGVvCj4gPiBzbW9vdGhseSBpbiByZWFsIHRpbWUuCj4gPiAKPiA+
IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4K
PiA+IC0tLQo+ID4gCj4gPiAgTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICAgNyArCj4gPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9LY29uZmln
ICAgICAgICAgIHwgICAgMSArCj4gPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9NYWtl
ZmlsZSAgICAgICAgIHwgICAgMSArCj4gPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9z
dW44aS1kaS9LY29uZmlnIHwgICAxMSArCj4gPiAgLi4uL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1
bjhpLWRpL01ha2VmaWxlICAgIHwgICAgMiArCj4gPiAgLi4uL21lZGlhL3BsYXRmb3JtL3N1bnhp
L3N1bjhpLWRpL3N1bjhpLWRpLmMgIHwgMTAyMCArKysrKysrKysrKysrKysrKwo+ID4gIC4uLi9t
ZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW44aS1kaS9zdW44aS1kaS5oICB8ICAyMzcgKysrKwo+ID4g
IDcgZmlsZXMgY2hhbmdlZCwgMTI3OSBpbnNlcnRpb25zKCspCj4gPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuOGktZGkvS2NvbmZpZwo+ID4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjhpLWRpL01h
a2VmaWxlCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3Vu
eGkvc3VuOGktZGkvc3VuOGktZGkuYwo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjhpLWRpL3N1bjhpLWRpLmgKPiA+IAo+ID4gZGlmZiAtLWdp
dCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMKPiA+IGluZGV4IGM3YjQ4NTI1ODIyYS4uYzM3
NTQ1NTEyNWZiIDEwMDY0NAo+ID4gLS0tIGEvTUFJTlRBSU5FUlMKPiA+ICsrKyBiL01BSU5UQUlO
RVJTCj4gPiBAQCAtNDY0Niw2ICs0NjQ2LDEzIEBAIE06CSJNYWNpZWogVy4gUm96eWNraSIgPG1h
Y3JvQGxpbnV4LW1pcHMub3JnPgo+ID4gCj4gPiAgUzoJTWFpbnRhaW5lZAo+ID4gIEY6CWRyaXZl
cnMvbmV0L2ZkZGkvZGVmeHguKgo+ID4gCj4gPiArREVJTlRFUkxBQ0UgRFJJVkVSUyBGT1IgQUxM
V0lOTkVSIEgzCj4gPiArTToJSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0
Pgo+ID4gK0w6CWxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+ID4gK1Q6CWdpdCBnaXQ6Ly9s
aW51eHR2Lm9yZy9tZWRpYV90cmVlLmdpdAo+ID4gK1M6CU1haW50YWluZWQKPiA+ICtGOglkcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjhpLWRpLwo+ID4gKwo+ID4gCj4gPiAgREVMTCBT
TUJJT1MgRFJJVkVSCj4gPiAgTToJUGFsaSBSb2jDoXIgPHBhbGkucm9oYXJAZ21haWwuY29tPgo+
ID4gIE06CU1hcmlvIExpbW9uY2llbGxvIDxtYXJpby5saW1vbmNpZWxsb0BkZWxsLmNvbT4KPiA+
IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvS2NvbmZpZwo+
ID4gYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL0tjb25maWcgaW5kZXggNzE4MDhlOTNh
YzJlLi5kN2E1NjIxYmYzMjcKPiA+IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9zdW54aS9LY29uZmlnCj4gPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhp
L0tjb25maWcKPiA+IEBAIC0xLDIgKzEsMyBAQAo+ID4gCj4gPiAgc291cmNlICJkcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjRpLWNzaS9LY29uZmlnIgo+ID4gIHNvdXJjZSAiZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW42aS1jc2kvS2NvbmZpZyIKPiA+IAo+ID4gK3NvdXJj
ZSAiZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW44aS1kaS9LY29uZmlnIgo+IAo+IFRo
aXMgaXMgYSBtMm0gZHJpdmVyLCBzbyB0aGlzIGJlbG9uZ3MgaW4gZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9LY29uZmlnIGluCj4gdGhlIE1lbW9yeS10by1tZW1vcnkgc2VjdGlvbi4KPiAKPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL01ha2VmaWxlCj4gPiBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvTWFrZWZpbGUgaW5kZXggYTA1MTI3NTI5MDA2Li4z
ODc4Y2I0ZWZkYzIKPiA+IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9z
dW54aS9NYWtlZmlsZQo+ID4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9NYWtl
ZmlsZQo+ID4gQEAgLTEsMiArMSwzIEBACj4gPiAKPiA+ICBvYmoteQkJKz0gc3VuNGktY3NpLwo+
ID4gIG9iai15CQkrPSBzdW42aS1jc2kvCj4gPiAKPiA+ICtvYmoteQkJKz0gc3VuOGktZGkvCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW44aS1kaS9LY29u
ZmlnCj4gPiBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuOGktZGkvS2NvbmZpZyBu
ZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5kYmQ3N2E2MWUzYjMK
PiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkv
c3VuOGktZGkvS2NvbmZpZwo+ID4gQEAgLTAsMCArMSwxMSBAQAo+ID4gKyMgU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQo+ID4gK2NvbmZpZyBWSURFT19TVU44SV9ERUlOVEVS
TEFDRQo+ID4gKwl0cmlzdGF0ZSAiQWxsd2lubmVyIERlaW50ZXJsYWNlIGRyaXZlciIKPiA+ICsJ
ZGVwZW5kcyBvbiBWSURFT19ERVYgJiYgVklERU9fVjRMMgo+ID4gKwlkZXBlbmRzIG9uIEhBU19E
TUEKPiA+ICsJZGVwZW5kcyBvbiBPRgo+ID4gKwlkZXBlbmRzIG9uIFBNCj4gPiArCXNlbGVjdCBW
SURFT0JVRjJfRE1BX0NPTlRJRwo+ID4gKwlzZWxlY3QgVjRMMl9NRU0yTUVNX0RFVgo+ID4gKwlo
ZWxwCj4gPiArCSAgIFN1cHBvcnQgZm9yIHRoZSBBbGx3aW5uZXIgRGVpbnRlcmxhY2UgdW5pdCBm
b3VuZCBvbiBzb21lIFNvQ3MuCj4gCj4gU2hvdWxkbid0IHRoaXMgZGVwZW5kIG9uIEFSQ0hfU1VO
WEkgfHwgQ09NUElMRV9URVNUPwo+IEFuZCBhbHNvIG9uIENPTU1PTl9DTEs/CgpZZXMgdG8gYm90
aC4gQWxzbyBJIGRvbid0IHNlZSBhIHJlYXNvbiB3aHkgaXQgd291bGQgZGVwZW5kIG9uIEhBU19E
TUEsIHNvIEkgCndpbGwgcmVtb3ZlIHRoYXQuCgpCZXN0IHJlZ2FyZHMsCkplcm5lagoKPiAKPiBS
ZWdhcmRzLAo+IAo+IAlIYW5zCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
