Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B553018F413
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:09:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5/uf/v+O80Thq993iq4E0bt0mUa0lEhjgLC25sD6AI=; b=hacYBqJL7DxyV8
	60CKfHg1JJE2sf1iIBpLWweCrGt7CJYF3sxDxSAIeR4k2mYrzBrFiPRQWTact0RS4HL2unTcSS6Nu
	XJdR7Ig7oCC2HbKFaSEVy3/Gm83IfykXvv83N6PVpJqkJQP9XxhNhlzEET9yHqj9CvdWbXSirQCwx
	zBj7du/yfW3MvI3o+2SZ9sBjdeRKayF8fD//P+YOk9UTZ+TpNuCcVzzH10DQ9oDGJ4csAPs3F484z
	CaaNozg+OKvADtvFrE9id/4UGzNtmosJDtV8ZqHMj+ko01CMcVTTC385OsGHBZWWBGFEW48iKsuJQ
	G9eTeRZVn+eQ10u4A9TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGLtT-0002yZ-JM; Mon, 23 Mar 2020 12:09:23 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGLtJ-0002xv-8Y
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 12:09:15 +0000
Received: from basile.remlab.net (87-92-31-51.bb.dnainternet.fi [87.92.31.51])
 (Authenticated sender: remi)
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTPSA id 0E6085FCA2;
 Mon, 23 Mar 2020 13:08:54 +0100 (CET)
From: =?ISO-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/3] arm64: clean up trampoline vector loads
Date: Mon, 23 Mar 2020 14:08:53 +0200
Message-ID: <2345780.q8flsOIESp@basile.remlab.net>
Organization: Remlab
In-Reply-To: <20200323120700.GB2597@C02TD0UTHF1T.local>
References: <1938400.7m7sAWtiY1@basile.remlab.net>
 <20200319091407.51449-1-remi@remlab.net>
 <20200323120700.GB2597@C02TD0UTHF1T.local>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_050913_443555_42D133A1 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: catalin.marinas@arm.com, will@kernel.org, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgbWFhbmFudGFpbmEgMjMuIG1hYWxpc2t1dXRhIDIwMjAsIDE0LjA3LjAwIEVFVCBNYXJrIFJ1
dGxhbmQgYSDDqWNyaXQgOgo+IE9uIFRodSwgTWFyIDE5LCAyMDIwIGF0IDExOjE0OjA1QU0gKzAy
MDAsIFLDqW1pIERlbmlzLUNvdXJtb250IHdyb3RlOgo+ID4gRnJvbTogUsOpbWkgRGVuaXMtQ291
cm1vbnQgPHJlbWkuZGVuaXMuY291cm1vbnRAaHVhd2VpLmNvbT4KPiA+IAo+ID4gVGhpcyBzd2l0
Y2hlcyBmcm9tIGN1c3RvbSBpbnN0cnVjdGlvbiBwYXR0ZXJucyB0byB0aGUgcmVndWxhciBsYXJn
ZQo+ID4gbWVtb3J5IG1vZGVsIHNlcXVlbmNlIHdpdGggQURSUCBhbmQgTERSLiBJbiBkb2luZyBz
bywgdGhlIEFERAo+ID4gaW5zdHJ1Y3Rpb24gY2FuIGJlIGVsaW1pbmF0ZWQgaW4gdGhlIFNERUkg
aGFuZGxlciwgYW5kIHRoZSBjb2RlIG5vCj4gPiBsb25nZXIgYXNzdW1lcyB0aGF0IHRoZSB0cmFt
cG9saW5lIHZlY3RvcnMgYW5kIHRoZSB2ZWN0b3JzIGFkZHJlc3MgYm90aAo+ID4gc3RhcnQgb24g
YSBwYWdlIGJvdW5kYXJ5Lgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBSw6ltaSBEZW5pcy1Db3Vy
bW9udCA8cmVtaS5kZW5pcy5jb3VybW9udEBodWF3ZWkuY29tPgo+ID4gLS0tCj4gPiAKPiA+ICBh
cmNoL2FybTY0L2tlcm5lbC9lbnRyeS5TIHwgOSArKysrLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUyBiL2FyY2gvYXJtNjQva2VybmVsL2VudHJ5LlMKPiA+
IGluZGV4IGU1ZDRlMzBlZTI0Mi4uMjRmODI4NzM5Njk2IDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9h
cm02NC9rZXJuZWwvZW50cnkuUwo+ID4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUwo+
ID4gQEAgLTgwNSw5ICs4MDUsOSBAQCBhbHRlcm5hdGl2ZV9lbHNlX25vcF9lbmRpZgo+ID4gCj4g
PiAgMjoKPiA+ICAJdHJhbXBfbWFwX2tlcm5lbAl4MzAKPiA+ICAKPiA+ICAjaWZkZWYgQ09ORklH
X1JBTkRPTUlaRV9CQVNFCj4gPiAKPiA+IC0JYWRyCXgzMCwgdHJhbXBfdmVjdG9ycyArIFBBR0Vf
U0laRQo+ID4gKwlhZHJwCXgzMCwgdHJhbXBfdmVjdG9ycyArIFBBR0VfU0laRQo+ID4gCj4gPiAg
YWx0ZXJuYXRpdmVfaW5zbiBpc2IsIG5vcCwgQVJNNjRfV09SS0FST1VORF9RQ09NX0ZBTEtPUl9F
MTAwMwo+ID4gCj4gPiAtCWxkcgl4MzAsIFt4MzBdCj4gPiArCWxkcgl4MzAsIFt4MzAsICM6bG8x
MjpfX2VudHJ5X3RyYW1wX2RhdGFfc3RhcnRdCj4gCj4gSSB0aGluayB0aGlzIGlzIGJ1c3RlZCBm
b3IgITRLIGtlcm5lbHMgb25jZSB3ZSByZWR1Y2UgdGhlIGFsaWdubWVudCBvZgo+IF9fZW50cnlf
dHJhbXBfZGF0YV9zdGFydC4KPiAKPiBUaGUgQURSUCBnaXZlcyB1cyBhIDY0SyBhbGlnbmVkIGFk
ZHJlc3MgKHdpdGggYml0cyAxNTowIGNsZWFyKS4gVGhlIGxvMTIKPiByZWxvY2F0aW9uIGdpdmVz
IHVzIGJpdHMgMTE6MCwgc28gd2UgaGF2ZW4ndCBhY2NvdW50ZWQgZm9yIGJpdHMgMTU6MTIuCgpJ
TVUsIEFEUlAgZ2l2ZXMgYSA0SyBhbGlnbmVkIHZhbHVlLCByZWdhcmRsZXNzIG9mIE1NVSAoVENS
KSBzZXR0aW5ncy4KCkkgcmF0aGVyIHN1c3BlY3QgdGhhdCB0aGUgcHJvYmxlbSBpcyB3aXRoIG15
IEMgY29kZSBkaWZmIGFzc3VtaW5nIHRoYXQgClBBR0VfTUFTSyBpcyA0MDk1LgoKLS0gClLDqW1p
IERlbmlzLUNvdXJtb250Cmh0dHA6Ly93d3cucmVtbGFiLm5ldC8KCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
