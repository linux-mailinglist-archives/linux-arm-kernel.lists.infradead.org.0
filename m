Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0933749B94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 09:58:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mjqOPUff0bFwp1V86n/UBlwJ6FRaK/nu+Iwnc/UJMFM=; b=fcW9mjmTw6Y6bM
	yW0JGDzfb12FsyaulA/8nZSY/fNYFKwO5OHg+rPB34FPgT5PyKp/CP9RH+SYphgVxdf+YKntfkxuv
	u3aPqoltX5tUGV9MatD7ZEhsKq6oWLZV2L+kT4ICq7fnDEkhSjK0MMw1Jtbq+QDgPYx7YZixlisNy
	kwnUYQTrYb47TvdabycwN1QWCwZf2cKmDt7TEOVpqHfzwpcmaOto5Lu4mBqDacYOiPWaIja2hDcXY
	atFNR1AlULHoDW3cBb0wcGSaEC+vNX4RsoR2q1vQPWZPk8EJgZidQLPJrvHgq+rUrkA0IGQjH2Aq3
	WkFmoSQIvqiGxX9gP2CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd90l-0004Eh-Uc; Tue, 18 Jun 2019 07:58:35 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd90Y-0004DL-Ol
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 07:58:25 +0000
X-Originating-IP: 90.88.23.150
Received: from xps13 (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 4E0BB1BF217;
 Tue, 18 Jun 2019 07:58:12 +0000 (UTC)
Date: Tue, 18 Jun 2019 09:58:12 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Timothy Krantz" <tkrantz@stahurabrenner.com>
Subject: Re: espressobin device tree with kernel 5.1 RC
Message-ID: <20190618095812.48a2746b@xps13>
In-Reply-To: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAADly4/rI9w9RYcxQAoCt9xgAQAAAAA=@stahurabrenner.com>
References: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABB6J1kxOR7T73eMrM92Eq+AQAAAAA=@stahurabrenner.com>
 <20190429095727.48de0b7c@xps13>
 <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAAABdzCVMdZ+R6253dvJGHcXAQAAAAA=@stahurabrenner.com>
 <20190617113841.60032387@xps13> <20190617114016.10fb9e03@xps13>
 <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAADly4/rI9w9RYcxQAoCt9xgAQAAAAA=@stahurabrenner.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_005822_958535_B0A62EF3 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVGltb3RoeSwKCiJUaW1vdGh5IEtyYW50eiIgPHRrcmFudHpAc3RhaHVyYWJyZW5uZXIuY29t
PiB3cm90ZSBvbiBNb24sIDE3IEp1biAyMDE5CjEzOjE5OjQ2IC0wNDAwOgoKPiBUaGFua3MgTWlx
dWVsLAo+IAo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IE1pcXVlbCBS
YXluYWwgW21haWx0bzptaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tXQo+ID4gU2VudDogTW9uZGF5
LCBKdW5lIDE3LCAyMDE5IDU6NDAgQU0KPiA+IFRvOiBUaW1vdGh5IEtyYW50eiA8dGtyYW50ekBz
dGFodXJhYnJlbm5lci5jb20+Cj4gPiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCj4gPiBTdWJqZWN0OiBSZTogZXNwcmVzc29iaW4gZGV2aWNlIHRyZWUgd2l0aCBrZXJu
ZWwgNS4xIFJDCj4gPiAKPiA+IEhpIFRpbW90aHksCj4gPiAKPiA+IE1pcXVlbCBSYXluYWwgPG1p
cXVlbC5yYXluYWxAYm9vdGxpbi5jb20+IHdyb3RlIG9uIE1vbiwgMTcgSnVuIDIwMTkKPiA+IDEx
OjM4OjQxICswMjAwOgo+ID4gICAKPiA+ID4gSGkgVGltb3RoeSwKPiA+ID4KPiA+ID4gUGxlYXNl
IGtlZXAgdGhlIExpbnV4IEFSTSBrZXJuZWwgTUwgaW4gY29weS4KPiA+ID4KPiA+ID4gIlRpbW90
aHkgS3JhbnR6IiA8dGtyYW50ekBzdGFodXJhYnJlbm5lci5jb20+IHdyb3RlIG9uIFNhdCwgMTUg
SnVuICAKPiA+IDIwMTkgIAo+ID4gPiAxODo1NjowMCAtMDQwMDoKPiA+ID4gIAo+ID4gPiA+IEhl
bGxvLAo+ID4gPiA+IEkgYW0gc3RpbGwgdW5hYmxlIHRvIGdldCA1LjEgb3IgNS4ycmMga2VybmVs
cyB0byBib290IHdpdGggdGhlIGFzc29jaWF0ZWQgZHRiLiAgCj4gPiBUaGV5IGFsbCBzZWVtIHRv
IHdvcmsgZmluZSB3aXRoIHRoZSBvbGRlciBkdGIuICAKPiA+ID4gPgo+ID4gPiA+IEkgYW0gY2Vy
dGFpbiB0aGF0IGl0IGlzIHNvbWV0aGluZyBpbiBteSAuY29uZmlnIHRoYXQgaXMgbm90IHByb3Bl
cmx5IHNldC4KPiA+ID4gPgo+ID4gPiA+IEkgZG9uJ3Qgc3VwcG9zZSB5b3UgY2FuIHNlbmQgbWUg
YSBjb3B5IG9mIHlvdXIgLmNvbmZpZyB0aGF0IHdvcmtzIHNvIHRoYXQgIAo+ID4gSSBjYW4gdHJ5
IHdpdGggdGhhdD8gIAo+ID4gPgo+ID4gPiBNeUhlcmUgaXMgbXkgY29uZmlndXJhdGlvbiBmb3Ig
YSA1LjItcmMxIGtlcm5lbC4gIAo+ID4gCj4gPiBIZXJlIGl0IGlzIC0+IGh0dHA6Ly9jb2RlLmJ1
bGl4Lm9yZy9uZ2RyOHotNzc0MDcxCj4gPiAKPiA+IFNBVEEgcG9ydCBpcyB3b3JraW5nIHdpdGgg
dGhpcyBzZXR1cC4KPiA+IAo+ID4gVGhhbmtzLAo+ID4gTWlxdcOobCAgCj4gCj4gVGhpcyBodHRw
czovL3Bhc3RlYmluLmNvbS94UFRNZGJieAo+IAoKWW91IHNob3VsZCBhZGQgdHJhY2VzIHdoZXJl
IHRoZXNlcyBwcmludHMgY29tZSBmcm9tIGFuZCBmaW5kIHdoYXQgaXMKbWlzc2luZy4KCj4gSXMg
d2hhdCBJIGdldCB3aXRoIGEga2VybmVsIGNvbmZpZ3VyZWQgd2l0aCB5b3VyIC5jb25maWcuCj4g
Cj4gSSBzdXNwZWN0IHRoZXJlIGlzIHNvbWUgbWFnaWMgaW4gCj4gCj4gQ09ORklHX0lOSVRSQU1G
U19TT1VSQ0U9Ii9ob21lL21yYXluYWwvYnVpbGRyb290L291dHB1dC1hcm0vaW1hZ2VzL3Jvb3Rm
cy5jcGlvIgo+IAo+IFdoaWNoIEkgZG8gbm90IGhhdmUgdGhhdCBtYXkgYmUgbWFraW5nIGEgZGlm
ZmVyZW5jZT8gKHRoYXQgaXMgdGhlIG9ubHkgZGlmZmVyZW5jZSBpbiB3aGF0IEkgY29tcGlsZWQg
YW5kIHlvdSBzZW50IHRvIG1lKS4KCk5vdCBhdCBhbGwsIHRoaXMgaXMganVzdCBteSByb290ZnMg
YXMgYW4gaW5pdHJhbWZzLCBub3QgcmVsYXRlZCB0byB0aGUKY29udGVudCBvZiB0aGUga2VybmVs
IGF0IGFsbC4KCgpHb29kIGx1Y2shCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
