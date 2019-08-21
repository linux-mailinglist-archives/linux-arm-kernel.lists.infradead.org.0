Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEBC975E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 11:21:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pL3tnLQ+gJBTdVMAVAVMOZZIOIGGxCl808Kyztb4R0A=; b=RitWE3LmN6FFL8
	Vq8YbyDBK7rrOJEiRjy58XFVPXvK+mwWAPEcY8y04EKZWbeUBITr4L0pKlNrSs79VtEm2MgW/99Cg
	yqM30Mhg8kZnjMmQosgzwToGXqnesa2G71Rv/bq7qoPtAoVkTgpotYdabJjPIvJBjTpYJWBXdMy65
	RJLwpmDaGjfs1IQPAEb+7BCEvCyQHR5y0hZn6rM0xjET4xjqOHorY0rTKOpZPI/z0T6e79znCvV3S
	euGHEaxmKm0ohSlWr+Oq5yQT5qoYbS3sqStLfHB7Y28qXRZURjH75wieIUE4q2tomBESyx9V9hihN
	GHpgbfO4itwoHrmPIJfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0MnP-0007GM-Si; Wed, 21 Aug 2019 09:20:48 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Mn0-0007Fw-Hv
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 09:20:24 +0000
Received: from [199.195.250.187] (port=49917 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1i0Mmq-00088t-Sj; Wed, 21 Aug 2019 10:20:17 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 327BF718AC;
 Wed, 21 Aug 2019 09:20:01 +0000 (UTC)
Message-ID: <759c0003961f627c3a172cb81d5779439a83b33b.camel@aosc.io>
Subject: Re: [PATCH] ARM64: dts: allwinner: Add devicetree for pine H64
 modelA evaluation board
From: Icenowy Zheng <icenowy@aosc.io>
To: Maxime Ripard <mripard@kernel.org>, Corentin Labbe
 <clabbe.montjoie@gmail.com>
Date: Wed, 21 Aug 2019 17:19:42 +0800
In-Reply-To: <20190820135831.hrvrgqhrvynntkbl@flea>
References: <20190808084253.10573-1-clabbe.montjoie@gmail.com>
 <20190812094000.ebdmhyxx7xzbevef@flea> <20190814131741.GB24324@Red>
 <20190814133322.dawzv3ityakxtqs4@flea> <20190816093513.GA25042@Red>
 <20190816113650.hstbi5ntstx3wh4a@flea> <20190816115750.GA24545@Red>
 <20190816135206.pnf3iperzyhcbg4h@flea> <20190816140016.GA30445@Red>
 <20190820135831.hrvrgqhrvynntkbl@flea>
Organization: Anthon Open-Source Community
MIME-Version: 1.0
X-BlackCat-Spam-Score: 14
X-Spam-Status: No, score=1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_022022_734326_8994C949 
X-CRM114-Status: GOOD (  39.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:86:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wens@csie.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

5ZyoIDIwMTktMDgtMjDkuoznmoQgMTU6NTggKzAyMDDvvIxNYXhpbWUgUmlwYXJk5YaZ6YGT77ya
Cj4gT24gRnJpLCBBdWcgMTYsIDIwMTkgYXQgMDQ6MDA6MTZQTSArMDIwMCwgQ29yZW50aW4gTGFi
YmUgd3JvdGU6Cj4gPiBPbiBGcmksIEF1ZyAxNiwgMjAxOSBhdCAwMzo1MjowNlBNICswMjAwLCBN
YXhpbWUgUmlwYXJkIHdyb3RlOgo+ID4gPiBPbiBGcmksIEF1ZyAxNiwgMjAxOSBhdCAwMTo1Nzo1
MFBNICswMjAwLCBDb3JlbnRpbiBMYWJiZSB3cm90ZToKPiA+ID4gPiBPbiBGcmksIEF1ZyAxNiwg
MjAxOSBhdCAwMTozNjo1MFBNICswMjAwLCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+ID4gPiA+ID4g
T24gRnJpLCBBdWcgMTYsIDIwMTkgYXQgMTE6MzU6MTNBTSArMDIwMCwgQ29yZW50aW4gTGFiYmUK
PiA+ID4gPiA+IHdyb3RlOgo+ID4gPiA+ID4gPiBPbiBXZWQsIEF1ZyAxNCwgMjAxOSBhdCAwMzoz
MzoyMlBNICswMjAwLCBNYXhpbWUgUmlwYXJkCj4gPiA+ID4gPiA+IHdyb3RlOgo+ID4gPiA+ID4g
PiA+IE9uIFdlZCwgQXVnIDE0LCAyMDE5IGF0IDAzOjE3OjQxUE0gKzAyMDAsIENvcmVudGluIExh
YmJlCj4gPiA+ID4gPiA+ID4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiBPbiBNb24sIEF1ZyAxMiwg
MjAxOSBhdCAxMTo0MDowMEFNICswMjAwLCBNYXhpbWUgUmlwYXJkCj4gPiA+ID4gPiA+ID4gPiB3
cm90ZToKPiA+ID4gPiA+ID4gPiA+ID4gT24gVGh1LCBBdWcgMDgsIDIwMTkgYXQgMTA6NDI6NTNB
TSArMDIwMCwgQ29yZW50aW4KPiA+ID4gPiA+ID4gPiA+ID4gTGFiYmUgd3JvdGU6Cj4gPiA+ID4g
PiA+ID4gPiA+ID4gVGhpcyBwYXRjaCBhZGRzIHRoZSBldmFsdWF0aW9uIHZhcmlhbnQgb2YgdGhl
IG1vZGVsCj4gPiA+ID4gPiA+ID4gPiA+ID4gQSBvZiB0aGUgUGluZUg2NC4KPiA+ID4gPiA+ID4g
PiA+ID4gPiBUaGUgbW9kZWwgQSBoYXMgdGhlIHNhbWUgc2l6ZSBvZiB0aGUgcGluZTY0IGFuZCBo
YXMKPiA+ID4gPiA+ID4gPiA+ID4gPiBhIFBDSUUgc2xvdC4KPiA+ID4gPiA+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gPiA+ID4gPiBUaGUgb25seSBkZXZpY2V0cmVlIGRpZmZlcmVuY2Ugd2l0aCBj
dXJyZW50Cj4gPiA+ID4gPiA+ID4gPiA+ID4gcGluZUg2NCwgaXMgdGhlIFBIWQo+ID4gPiA+ID4g
PiA+ID4gPiA+IHJlZ3VsYXRvci4KPiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBDb3JlbnRpbiBMYWJiZSA8Cj4gPiA+ID4gPiA+ID4gPiA+ID4g
Y2xhYmJlLm1vbnRqb2llQGdtYWlsLmNvbT4KPiA+ID4gPiA+ID4gPiA+ID4gPiAtLS0KPiA+ID4g
PiA+ID4gPiA+ID4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvTWFrZWZpbGUgICAg
ICAgIHwgIDEKPiA+ID4gPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gPiA+ID4gIC4uLi9z
dW41MGktaDYtcGluZS1oNjQtbW9kZWxBLWV2YWwuZHRzICAgICAgICB8IDI2Cj4gPiA+ID4gPiA+
ID4gPiA+ID4gKysrKysrKysrKysrKysrKysrKwo+ID4gPiA+ID4gPiA+ID4gPiA+ICAyIGZpbGVz
IGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKykKPiA+ID4gPiA+ID4gPiA+ID4gPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0Cj4gPiA+ID4gPiA+ID4gPiA+ID4gYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LXBpbmUtaDY0LQo+ID4gPiA+ID4gPiA+ID4gPiA+IG1vZGVsQS1ldmFsLmR0
cwo+ID4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9NYWtlZmlsZQo+ID4gPiA+ID4gPiA+ID4gPiA+
IGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvTWFrZWZpbGUKPiA+ID4gPiA+ID4gPiA+
ID4gPiBpbmRleCBmNmRiMDYxMWNiODUuLjlhMDIxNjZjYmY3MiAxMDA2NDQKPiA+ID4gPiA+ID4g
PiA+ID4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9NYWtlZmlsZQo+ID4g
PiA+ID4gPiA+ID4gPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL01ha2Vm
aWxlCj4gPiA+ID4gPiA+ID4gPiA+ID4gQEAgLTI1LDMgKzI1LDQgQEAgZHRiLSQoQ09ORklHX0FS
Q0hfU1VOWEkpICs9Cj4gPiA+ID4gPiA+ID4gPiA+ID4gc3VuNTBpLWg2LW9yYW5nZXBpLTMuZHRi
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1NVTlhJKSArPSBzdW41MGkt
aDYtb3JhbmdlcGktCj4gPiA+ID4gPiA+ID4gPiA+ID4gbGl0ZTIuZHRiCj4gPiA+ID4gPiA+ID4g
PiA+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1NVTlhJKSArPSBzdW41MGktaDYtb3JhbmdlcGktCj4g
PiA+ID4gPiA+ID4gPiA+ID4gb25lLXBsdXMuZHRiCj4gPiA+ID4gPiA+ID4gPiA+ID4gIGR0Yi0k
KENPTkZJR19BUkNIX1NVTlhJKSArPSBzdW41MGktaDYtcGluZS1oNjQuZHRiCj4gPiA+ID4gPiA+
ID4gPiA+ID4gK2R0Yi0kKENPTkZJR19BUkNIX1NVTlhJKSArPSBzdW41MGktaDYtcGluZS1oNjQt
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gbW9kZWxBLWV2YWwuZHRiCj4gPiA+ID4gPiA+ID4gPiA+ID4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS0KPiA+ID4g
PiA+ID4gPiA+ID4gPiBoNi1waW5lLWg2NC1tb2RlbEEtZXZhbC5kdHMKPiA+ID4gPiA+ID4gPiA+
ID4gPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC0K
PiA+ID4gPiA+ID4gPiA+ID4gPiBtb2RlbEEtZXZhbC5kdHMKPiA+ID4gPiA+ID4gPiA+ID4gPiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gPiA+ID4gPiA+ID4gPiA+IGluZGV4IDAwMDAwMDAwMDAw
MC4uZDhmZjAyNzQ3ZWZlCj4gPiA+ID4gPiA+ID4gPiA+ID4gLS0tIC9kZXYvbnVsbAo+ID4gPiA+
ID4gPiA+ID4gPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni1waW5lLQo+ID4gPiA+ID4gPiA+ID4gPiA+IGg2NC1tb2RlbEEtZXZhbC5kdHMKPiA+ID4gPiA+
ID4gPiA+ID4gPiBAQCAtMCwwICsxLDI2IEBACj4gPiA+ID4gPiA+ID4gPiA+ID4gKy8vIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgb3IgTUlUKQo+ID4gPiA+ID4gPiA+ID4gPiA+
ICsvKgo+ID4gPiA+ID4gPiA+ID4gPiA+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTkgQ29yZW50aW4g
TGFiYmUgPAo+ID4gPiA+ID4gPiA+ID4gPiA+IGNsYWJiZS5tb250am9pZUBnbWFpbC5jb20+Cj4g
PiA+ID4gPiA+ID4gPiA+ID4gKyAqLwo+ID4gPiA+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4g
PiA+ID4gPiArI2luY2x1ZGUgInN1bjUwaS1oNi1waW5lLWg2NC5kdHMiCj4gPiA+ID4gPiA+ID4g
PiA+ID4gKwo+ID4gPiA+ID4gPiA+ID4gPiA+ICsvIHsKPiA+ID4gPiA+ID4gPiA+ID4gPiArCW1v
ZGVsID0gIlBpbmUgSDY0IG1vZGVsIEEgZXZhbHVhdGlvbiBib2FyZCI7Cj4gPiA+ID4gPiA+ID4g
PiA+ID4gKwljb21wYXRpYmxlID0gInBpbmU2NCxwaW5lLWg2NC1tb2RlbEEtZXZhbCIsCj4gPiA+
ID4gPiA+ID4gPiA+ID4gImFsbHdpbm5lcixzdW41MGktaDYiOwo+ID4gPiA+ID4gPiA+ID4gPiA+
ICsKPiA+ID4gPiA+ID4gPiA+ID4gPiArCXJlZ19nbWFjXzN2MzogZ21hYy0zdjMgewo+ID4gPiA+
ID4gPiA+ID4gPiA+ICsJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiA+ID4gPiA+
ID4gPiA+ID4gPiArCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2MtZ21hYy0zdjMiOwo+ID4gPiA+ID4g
PiA+ID4gPiA+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ID4gPiA+
ID4gPiA+ID4gPiA+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ID4g
PiA+ID4gPiA+ID4gPiA+ICsJCXN0YXJ0dXAtZGVsYXktdXMgPSA8MTAwMDAwPjsKPiA+ID4gPiA+
ID4gPiA+ID4gPiArCQlncGlvID0gPCZwaW8gMiAxNiBHUElPX0FDVElWRV9ISUdIPjsKPiA+ID4g
PiA+ID4gPiA+ID4gPiArCQllbmFibGUtYWN0aXZlLWhpZ2g7Cj4gPiA+ID4gPiA+ID4gPiA+ID4g
Kwl9Owo+ID4gPiA+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiA+ID4gPiArfTsKPiA+ID4g
PiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gPiA+ID4gKyZlbWFjIHsKPiA+ID4gPiA+ID4g
PiA+ID4gPiArCXBoeS1zdXBwbHkgPSA8JnJlZ19nbWFjXzN2Mz47Cj4gPiA+ID4gPiA+ID4gPiA+
ID4gK307Cj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiBJIG1pZ2h0IGJlIG1p
c3Npbmcgc29tZSBjb250ZXh0IGhlcmUsIGJ1dCBJJ20gcHJldHR5Cj4gPiA+ID4gPiA+ID4gPiA+
IHN1cmUgdGhhdCB0aGUKPiA+ID4gPiA+ID4gPiA+ID4gaW5pdGlhbCBpbnRlbnQgb2YgdGhlIHBp
bmUgaDY0IERUUyB3YXMgdG8gc3VwcG9ydCB0aGUKPiA+ID4gPiA+ID4gPiA+ID4gbW9kZWwgQSBh
bGwKPiA+ID4gPiA+ID4gPiA+ID4gYWxvbmcuCj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4g
PiA+ID4gCj4gPiA+ID4gPiA+ID4gPiBUaGUgcmVndWxhdG9yIGNoYW5nZWQgYmV0d2VlbiBtb2Rl
bEEgYW5kIEIuCj4gPiA+ID4gPiA+ID4gPiBTZWUgdGhpcyBvbGQgcGF0Y2hzZXQgKHN1cHBvcnRp
bmcgbW9kZWxBKSAKPiA+ID4gPiA+ID4gPiA+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcv
cGF0Y2gvMTA1MzkxNDkvIGZvcgo+ID4gPiA+ID4gPiA+ID4gZXhhbXBsZS4KPiA+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gPiBJJ20gbm90IHN1cmUgd2hhdCB5b3VyIHBvaW50IGlzLCBidXQgbWlu
ZSBpcyB0aGF0Cj4gPiA+ID4gPiA+ID4gZXZlcnl0aGluZyBhYm91dCB0aGUKPiA+ID4gPiA+ID4g
PiBtb2RlbCBBIHNob3VsZCBiZSBpbiBzdW41MGktaDYtcGluZS1oNjQuZHRzLgo+ID4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gbW9kZWwgQSBhbmQgQiBhcmUgZGlmZmVyZW50
IGVub3VnaCBmb3IgZGlzdGluY3QgZHRiLCAoc2VlCj4gPiA+ID4gPiA+IHN1Yi10aHJlYWQKPiA+
ID4gPiA+ID4gb24gSERNSSBkaWZmZXJlbmNlIGZvciBhbiBvdGhlciBkaWZmZXJlbmNlIHRoYW4g
UEhZCj4gPiA+ID4gPiA+IHJlZ3VsYXRvcikKPiA+ID4gPiA+IAo+ID4gPiA+ID4gSSBkb24ndCBt
aW5kIGhhdmluZyBzZXBhcmF0ZSBEVEJzIGZvciBtb2RlbCBBIGFuZCBtb2RlbCBCLgo+ID4gPiA+
ID4gCj4gPiA+ID4gPiA+IEFuZCBjbGVhcmx5LCB0aGUgY3VycmVudCBkdGIgaXMgZm9yIG1vZGVs
IEIuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoYXQgRFRTIHdhcyBhZGRlZCBhbG1vc3QgYSB5ZWFy
IGJlZm9yZSB0aGUgbW9kZWwgQiB3YXMKPiA+ID4gPiA+IGFubm91bmNlZCwgYW5kCj4gPiA+ID4g
PiBubyBjb21taXQgdG8gdGhhdCBmaWxlIG1lbnRpb24gdGhlIG1vZGVsIEIsIHNvIGl0J3MKPiA+
ID4gPiA+IGRlZmluaXRlbHkgbm90Cj4gPiA+ID4gPiBjbGVhci4KPiA+ID4gPiAKPiA+ID4gPiBO
b3JtYWwgaXQgd2FzIGFkZGVkIGZvciBtb2RlbCBBICh3aXRob3V0IGFueSBldGhlcm5ldC9IRE1J
Cj4gPiA+ID4gc3VwcG9ydCwKPiA+ID4gPiBzbyBub3RoaW5nIGRpc3RpbmN0IGZyb20gbW9kZWwg
QiksIGFuZCB0aGUgbW9kZWxCIGV0aGVybmV0L0hETUkKPiA+ID4gPiBzdXBwb3J0IGNhbWVzIGFm
dGVyLgo+ID4gPiAKPiA+ID4gQ2hhbmdpbmcgdGhlIGJvYXJkIGEgRFQgaXMgbWVhbnQgdG8gaGFs
ZndheSB0aHJvdWdoIHRoZQo+ID4gPiBkZXZlbG9wbWVudCBpcwo+ID4gPiBkZWZpbml0ZWx5IG5v
dCBvay4KPiA+ID4gCj4gPiA+ID4gPiA+IFNvIGRvIHlvdSBtZWFuIHRoYXQgd2UgbmVlZCB0byBj
cmVhdGUgYSBuZXcgZHRiIGZvciBtb2RlbCBCCj4gPiA+ID4gPiA+ID8gKGFuZAo+ID4gPiA+ID4g
PiBoYWNrIHRoZSBjdXJyZW50IGJhY2sgdG8gbW9kZWwgQSA/KQo+ID4gPiA+ID4gCj4gPiA+ID4g
PiBJJ2QgcHJlZmVyIG5vdCB0byBoYWNrIGFueXRoaW5nLCBidXQgeWVzCj4gPiA+ID4gPiAKPiA+
ID4gPiAKPiA+ID4gPiBTaW5jZSBtb2RlbCBBIGlzIG5vdCBwdWJsaWMgKG9ubHkgZXZhbHVhdGlv
bnMgYm9hcmRzIGV4aXN0cyksCj4gPiA+ID4gdGhlCj4gPiA+ID4gcHJvYmFiaWxpdHkgb2YgYSBw
cm9kdWN0aW9uIG1vZGVsIEEgaXMgbG93IGFuZCB0aGUgY3VycmVudCBkdGIKPiA+ID4gPiBpcwo+
ID4gPiA+IHBlcmZlY3QgZm9yIG1vZGVsIEIgLCBjb3VsZCB5b3UgcmVjb25zaWRlciB0aGlzID8K
PiA+ID4gCj4gPiA+IEkgbWVhbiwgeW91IGNvdWxkIGJ1eSBpdCwgc28gaXQncyBkZWZpbml0ZWx5
IHB1YmxpYy4KPiA+IAo+ID4gV2hlcmUgPyBvZmZpY2lhbCBwaW5laDY0IHNpdGUgc3BlYWtzIG9u
bHkgb2YgbW9kZWxCLgo+IAo+IEl0J3Mgbm90IGF2YWlsYWJsZSBhbnltb3JlLCBidXQgaXQgdXNl
ZCB0byBiZS4KClRoZXJlJ3JlIG5ldmVyIG1vZGVsIEEgYm9hcmRzIHRoYXQgYXJlIHJlYWxseSBz
b2xkLiBXaGVuIG1vZGVsIEEgaXMgcHV0Cm9uIHRoZSB3ZWJzaXRlLCBpdHMgc3RvY2sgaXMgYWx3
YXlzIDAuCgpPbmx5IG1vZGVsIEIgYm9hcmRzIGFyZSByZWFsbHkgc29sZC4KCkJUVyBmcm9tIG15
IGNvbW11bmljYXRpb24gd2l0aCBUTCBMaW0sIG1vZGVsIEEgd2lsbCBnZXQgcmVkZXNpZ25lZCB0
bwpnZXQgdGhlIHNvZnR3YXJlIGNvbXBhdGlibGl0eSB3aXRoIG1vZGVsIEIsIGlmIGl0J3MgZ29p
bmcgdG8gYmUgcmUtCmF2YWlsYWJsZSBvbiB0aGUgbWFya2V0IGFnYWluLiBTbyBhbGwga25vd24g
ZGlmZmVyZW5jZSB3aWxsIGJlIG5vdApkaWZmZXJlbmNlIGJldHdlZW4gbW9kZWxzLCBidXQgZGlm
ZmVyZW5jZSBiZXR3ZWVuIHNhbXBsZSB2ZXJzaW9uIGFuZApmaW5hbCB2ZXJzaW9uLiBCdXQgZXZl
biBpZiB0aGUgbmV3IG1vZGVsIEEgaXMgb3V0LCBpdCB3aWxsIHN0aWxsIG5lZWQgYQpkaWZmZXJl
bnQgZGV2aWNldHJlZSB3aXRoIG1vZGVsIEIsIGFzIFBDSWUgaXMgbW9kZWwtQS1vbmx5IGZlYXR1
cmUsIGFuZAptb2RlbCBBIHdpbGwgaGF2ZSBubyBvbi1ib2FyZCBXaS1GaSAobW9kZWwgQiBoYXMg
UlRMODcyM0JTIG9uLWJvYXJkKS4KCj4gCj4gPiA+IE1vZGVsIEEgYWxzbyBoYWQgSERNSSwgYW5k
IGl0IGRvZXNuJ3QgbG9vayBsaWtlIHRoZXJlJ3MgYW55dGhpbmcKPiA+ID4gcGFydGljdWxhcmx5
IHNwZWNpZmljIHdpdGggdGhhdCBib2FyZC4KPiA+IAo+ID4gQSBzdWJ0aHJlYWQganVzdCBzYXkg
dGhlIG9wcG9zaXRlLCBtb2RlbEEgbmVlZCBzb21ldGhpbmcgbW9yZSBmb3IKPiA+IEhETUkKPiA+
IGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzgvMTIvMzk0Cj4gCj4gUmlnaHQsIGJ1dCB0aGF0
J3Mgbm90IGluIHRoZSBEVCBhdCB0aGUgbW9tZW50Lgo+IAo+IE1heGltZQo+IAo+IC0tCj4gTWF4
aW1lIFJpcGFyZCwgQm9vdGxpbgo+IEVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJp
bmcKPiBodHRwczovL2Jvb3RsaW4uY29tCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
