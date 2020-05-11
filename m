Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B271CDDF7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 16:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lnxdBkXV2d67M9y22XcRIGdhG46GOWkX1djRj7BdWGI=; b=Kpa9IOnGToEGAZ
	GI66gQrrI9sk65c2rfbi1T4l20Sesw3lwaleZV8A2KcRI5HpZZjD65b/pToGFKdb9NNp2YbRmHsLG
	iLYYwk6B++gR5YNem13WVGVdFAqHpAAFrSS7q8P20UxZMjdrOC2Bvy35/dki9tOel0y+F3dJ9e8Mh
	p6wCV/kLlEUIzsINCds7eoczt0UqPQjyn7M61d2mQ6EZCOQISfq14RfEZaXJWOIQEusLahL03Swbg
	bXAlFDZaiA0xHPwPJo3JgxGTBZZ6oG9cHUDRfNzdU8Y+CLtqSDRtkarTN5jIhQjUsNQiFyeiNkvE3
	gsHy7mRil2Q1XvPlVePw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY9ts-0003Yz-HD; Mon, 11 May 2020 14:59:24 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9tk-0003YL-CW
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 14:59:18 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 67E002A1873
Date: Mon, 11 May 2020 16:59:11 +0200
From: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: robh+dt@kernel.org
Subject: Re: [RFC PATCH] dt-bindings: display: ti,tfp410.txt: convert to yaml
Message-ID: <20200511145911.2yv3aepofxqwdsju@rcn-XPS-13-9360>
Mail-Followup-To: robh+dt@kernel.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, kernel@collabora.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net,
 laurent.pinchart@ideasonboard.com
References: <20200428092048.14939-1-ricardo.canuelo@collabora.com>
 <3e377c73-25a3-a7b3-0604-41c54d70039e@ti.com>
 <20200506155320.GC15206@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506155320.GC15206@pendragon.ideasonboard.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_075916_557981_B023559A 
X-CRM114-Status: GOOD (  25.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, laurent.pinchart@ideasonboard.com,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKV2hhdCdzIHlvdXIgb3BpbmlvbiBvbiB0aGlzPwoKU29tZSBjb250ZXh0OiBJdCdz
IGFib3V0IGJpbmRpbmdzIHRoYXQgZGVmaW5lIHNpZ25lZCBpbnRlZ2VyIHByb3BlcnRpZXMKd2l0
aCByYW5nZSBjaGVja3MgdGhhdCBnbyBiZWxvdyBhbmQgYWJvdmUgemVyby4gVGhlIHNjaGVtYSBj
aGVja2VyIGZhaWxzCmJlY2F1c2UsIGFwcGFyZW50bHksIGl0IGludGVycHJldHMgZXZlcnkgY2Vs
bCB2YWx1ZSBhcyBhbiB1aW50MzIsIHdoaWNoCm1ha2VzIHRoZSByYW5nZSBjaGVjayBmYWlsIGZv
ciBuZWdhdGl2ZSBudW1iZXJzLgoKT24gbWnDqSAwNi0wNS0yMDIwIDE4OjUzOjIwLCBMYXVyZW50
IFBpbmNoYXJ0IHdyb3RlOgo+IEhpIFRvbWksCj4gCj4gT24gVHVlLCBBcHIgMjgsIDIwMjAgYXQg
MTI6NDk6MjhQTSArMDMwMCwgVG9taSBWYWxrZWluZW4gd3JvdGU6Cj4gPiBPbiAyOC8wNC8yMDIw
IDEyOjIwLCBSaWNhcmRvIENhw7F1ZWxvIHdyb3RlOgo+ID4gCj4gPiA+IDIpIFRoZSBkZWZpbml0
aW9uIG9mIHRpLGRlc2tldyBpbiB0aGUgb3JpZ2luYWwgYmluZGluZyBzZWVtcyB0byBiZQo+ID4g
PiB0YWlsb3JlZCB0byB0aGUgY3VycmVudCBkcml2ZXIgYW5kIHRoZSB3YXkgaXQncyBkZWZpbmVk
IG1heSBub3QgYmUgdmVyeQo+ID4gPiBEVC1mcmllbmRseS4KPiA+ID4gCj4gPiA+ICAgIFRoaXMg
cGFyYW1ldGVyIG1hcHMgdG8gYSAzLWJpdCBmaWVsZCBpbiBhIGhhcmR3YXJlIHJlZ2lzdGVyIHRo
YXQgdGFrZXMKPiA+ID4gICAgYSB2YWx1ZSBmcm9tIDAgdG8gNywgc28gdGhlIFstNCwgM10gcmFu
Z2UgZGVzY3JpYmVkIGZvciB0aGlzIHdvdWxkIG1hcAo+ID4gPiAgICB0byBbMDAwLCAxMTFdOiAt
NCAtPiAwMDAsIC0zIC0+IDAwMSwgLTIgLT4gMDEwLCAuLi4gMyAtPiAxMTEuCj4gPiA+IAo+ID4g
PiAgICBUaGVuLCB0aGUgZHJpdmVyIHBhcnNlcyB0aGUgcGFyYW1ldGVyICh1bnNpZ25lZCkgYW5k
IGNhc3RzIGl0IHRvIGEKPiA+ID4gICAgc2lnbmVkIGludGVnZXIgdG8gZ2V0IGEgbnVtYmVyIGlu
IHRoZSBbLTQsIDNdIHJhbmdlLgo+ID4gCj4gPiBJbnRlcmVzdGluZ2x5IHRoZSBjdXJyZW50IGV4
YW1wbGUgaGFzIHRpLGRlc2tldyA9IDw0Pi4uLgo+ID4gCj4gPiA+ICAgIEEgdmVuZG9yLXNwZWNp
ZmljIHByb3BlcnR5IG11c3QgaGF2ZSBhIHR5cGUgZGVmaW5pdGlvbiBpbiBqc29uLXNjaGVtYSwK
PiA+ID4gICAgc28gaWYgSSB0cmFuc2xhdGUgdGhlIG9yaWdpbmFsIGJpbmRpbmdzIHNlbWFudGlj
cyBkaXJlY3RseSwgSSBzaG91bGQKPiA+ID4gICAgZGVmaW5lIHRpLGRlc2tldyBhcyBhbiBpbnQz
MiwgYnV0IHRoaXMgbWFrZXMgZHRfYmluZGluZ19jaGVjayBmYWlsIGlmCj4gPiA+ICAgIHRoZSBw
cm9wZXJ0eSBoYXMgYSBuZWdhdGl2ZSB2YWx1ZSBpbiB0aGUgZXhhbXBsZSBiZWNhdXNlIG9mIHRo
ZQo+ID4gPiAgICBpbnRlcm5hbCByZXByZXNlbnRhdGlvbiBvZiBjZWxscyBhcyB1bnNpZ25lZCBp
bnRlZ2VyczoKPiA+ID4gCj4gPiA+ICAgICAgIHRpLGRlc2tldzowOjA6IDQyOTQ5NjcyOTMgaXMg
Z3JlYXRlciB0aGFuIHRoZSBtYXhpbXVtIG9mIDIxNDc0ODM2NDcKPiA+IAo+ID4gSSBkb24ndCBx
dWl0ZSB1bmRlcnN0YW5kIHRoaXMuIFdlIGNhbm5vdCBoYXZlIG5lZ2F0aXZlIG51bWJlcnMgaW4g
ZHRzIGZpbGVzPyBPciB3ZSBjYW4sIGJ1dCAKPiA+IGR0X2JpbmRpbmdfY2hlY2sgZG9lc24ndCBo
YW5kbGUgdGhlbSBjb3JyZWN0bHk/IE9yIHRoYXQgaW50MzIgaXMgbm90IHN1cHBvcnRlZCBpbiB5
YW1sIGJpbmRpbmdzPwo+ID4gCj4gPiA+ICAgIFNvIEkgY2FuIHRoaW5rIG9mIHR3byBzb2x1dGlv
bnMgdG8gdGhpczoKPiA+ID4gCj4gPiA+ICAgIGEpIEtlZXAgdGhlIHRpLGRlc2tldyBwcm9wZXJ0
eSBhcyBhbiB1aW50MzIgYW5kIGRvY3VtZW50IHRoZSB2YWxpZAo+ID4gPiAgICByYW5nZSAoWy00
LCAzXSkgaW4gdGhlIHByb3BlcnR5IGRlc2NyaXB0aW9uICh0aGlzIGlzIHdoYXQgdGhpcyBwYXRj
aAo+ID4gPiAgICBkb2VzIGN1cnJlbnRseSkuCj4gPiA+IAo+ID4gPiAgICBiKSBSZWRlZmluZSB0
aGlzIHByb3BlcnR5IHRvIGJlIGNsb3NlciB0byB0aGUgZGF0YXNoZWV0IGRlc2NyaXB0aW9uCj4g
PiA+ICAgIChpZS4gdW5zaWduZWQgaW50ZWdlcnMgZnJvbSAwIHRvIDcpIGFuZCBhZGFwdCB0aGUg
ZHJpdmVyIGFjY29yZGluZ2x5Lgo+ID4gPiAgICBUaGlzIHdvdWxkIGFsc28gbGV0IHVzIGRlZmlu
ZSBpdHMgcmFuZ2UgcHJvcGVybHkgdXNpbmcgbWluaW11bSBhbmQKPiA+ID4gICAgbWF4aW11bSBw
cm9wZXJ0aWVzIGZvciBpdC4KPiA+ID4gCj4gPiA+ICAgIEkgdGhpbmsgKGIpIGlzIHRoZSByaWdo
dCB0aGluZyB0byBkbyBidXQgSSB3YW50IHRvIGtub3cgeW91cgo+ID4gPiAgICBvcGluaW9uLiBC
ZXNpZGVzLCBJIGRvbid0IGhhdmUgdGhpcyBoYXJkd2FyZSBhdCBoYW5kIGFuZCBpZiBJIHVwZGF0
ZWQKPiA+ID4gICAgdGhlIGRyaXZlciBJIHdvdWxkbid0IGJlIGFibGUgdG8gdGVzdCBpdC4KPiA+
IAo+ID4gSSBkb24ndCB0aGluayBhbnlvbmUgaGFzIHVzZWQgZGVza2V3IHByb3BlcnR5LCBzbyBJ
IGd1ZXNzIGNoYW5naW5nIGl0IGlzIG5vdCBvdXQgb2YgdGhlIHF1ZXN0aW9uLgo+ID4gCj4gPiBM
YXVyZW50LCBkaWQgeW91IGhhdmUgYSBib2FyZCB0aGF0IG5lZWRzIGRlc2tldyB3aGVuIHlvdSBh
ZGRlZCBpdCB0byB0ZnA0MTA/Cj4gCj4gSSBkaWRuJ3QgaWYgSSByZW1lbWJlciBjb3JyZWN0bHks
IEkganVzdCBtYXBwZWQgaXQgdG8gdGhlIGhhcmR3YXJlCj4gZmVhdHVyZXMuIFRoZSBoYXJkd2Fy
ZSByZWdpc3RlciBpbmRlZWQgdGFrZXMgYSB2YWx1ZSBiZXR3ZWVuIDAgYW5kIDcsCj4gYW5kIHRo
YXQgaXMgbWFwcGVkIHRvIFstNCwzXSB4IHQoU1RFUCkuIEkgZG9uJ3QgbWluZCBlaXRoZXIgb3B0
aW9uLgo+IAo+IC0tIAo+IFJlZ2FyZHMsCj4gCj4gTGF1cmVudCBQaW5jaGFydAoKSSBoYXZlbid0
IGZvdW5kIGFueSBleGFtcGxlcyBvZiB5YW1sIGJpbmRpbmdzIGRlZmluaW5nIHNpZ25lZCBpbnRl
Z2VyCnByb3BlcnRpZXMgc3VjaCBhcyB0aGlzLCB3aGF0J3MgdGhlIG5vcm0gaW4gdGhpcyBjYXNl
PyBEbyB5b3UgYWdyZWUgd2l0aAphbnkgb2YgdGhlIHByb3Bvc2VkIHNvbHV0aW9ucz8gRG8geW91
IGhhdmUgYSBiZXR0ZXIgc3VnZ2VzdGlvbj8KClRoYW5rcywKUmljYXJkbwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
