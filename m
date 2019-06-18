Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C9D4A58C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 17:36:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vv+4qjlMc7quNruLvrgtqxw614pY2xGj0Erm7k7ddlk=; b=bLQoMlMMhkQWeA
	sRIO9ynqw7exc9DC5mvt6iI+nQ2upcUOvqEvlVZDedMy1CpsZJbiRfTGpXAN2G8JCMjzpNHlD+Zve
	kf9QoslAW7MMOvwWu1NXEKD8uavUUmzTX+a5bZLsFMyvPuIsH8tmlExbCShWbc4N2cqPS79KyUpNU
	XWpxikl/xqHW5e+K8DcrjfUFzR9lQwXF6cO1tK6ADwYSptRuuJq1sNNdjdxXEfNrddtXIW42XI1sg
	jlBEVOMV7zGzFoxITBYovw50QmT6ry5cxGjgsD5GVWepW+E8/agDMl40bKpB98DQi9FbmoyGOoPlB
	tVB6F11PVhdy8cCBGTxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdG9m-0004pk-UO; Tue, 18 Jun 2019 15:36:23 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdG9Y-0004pF-Tp
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 15:36:10 +0000
X-Originating-IP: 90.88.23.150
Received: from xps13 (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 1DBF440012;
 Tue, 18 Jun 2019 15:36:05 +0000 (UTC)
Date: Tue, 18 Jun 2019 17:36:04 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Timothy Krantz" <tkrantz@stahurabrenner.com>
Subject: Re: espressobin device tree with kernel 5.1 RC
Message-ID: <20190618173604.4958474c@xps13>
In-Reply-To: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAACUGsZ5zJFbR6X1CG+aiyUMAQAAAAA=@stahurabrenner.com>
References: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABB6J1kxOR7T73eMrM92Eq+AQAAAAA=@stahurabrenner.com>
 <20190429095727.48de0b7c@xps13>
 <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAAABdzCVMdZ+R6253dvJGHcXAQAAAAA=@stahurabrenner.com>
 <20190617113841.60032387@xps13> <20190617114016.10fb9e03@xps13>
 <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAADly4/rI9w9RYcxQAoCt9xgAQAAAAA=@stahurabrenner.com>
 <20190618095812.48a2746b@xps13>
 <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAADKxydx2LOeRKSPqV4VA77dAQAAAAA=@stahurabrenner.com>
 <20190618162428.0417f247@xps13>
 <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAACUGsZ5zJFbR6X1CG+aiyUMAQAAAAA=@stahurabrenner.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_083609_273675_BD90D84B 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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

SGkgVGltb3RoeSwKCj4gPiA+IFsgICAgNC4yMDM2OTJdIGNhY2hlaW5mbzogVW5hYmxlIHRvIGRl
dGVjdCBjYWNoZSBoaWVyYXJjaHkgZm9yIENQVSAwCj4gPiA+IFsgICAgNC4yMTAxOTJdIGluIG12
ZWJ1IHByb2JlCj4gPiA+IFsgICAgNC4yMTI5MjRdIGNoZWNrIGRldmljZSBtYXRjaAo+ID4gPiBb
ICAgIDQuMjE2MDI2XSBkZXZpY2UgZGlkIG1hdGNoCj4gPiA+IFsgICAgNC4yMTkwNThdIGNoZWNr
IHJlc291cmNlcwo+ID4gPiBbICAgIDQuMjIxODU4XSByZXNvdXJjZXMgb2sKPiA+ID4gWyAgICA0
LjIyNDQ1OF0gZW5hYmxlIHJlc291cmNlcwo+ID4gPiBbICAgIDQuMjI3NDA1XSBwYXN0IGVuYWJs
ZSByZXNvdXJjZXMKPiA+ID4gWyAgICA0LjIzMDgxN10gZGlzZW5hYmxlIHJlc291cmNlcwo+ID4g
PiBbICAgIDQuMjM0MDQyXSBwYXN0IGRpc2FibGUgcmVzb3VyY2VzCj4gPiA+IFsgICAgNC4yMzc1
MzZdIGluaXQgaG9zdAo+ID4gPiBbICAgIDQuMjM5OTMxXSBhaGNpLW12ZWJ1IGQwMGUwMDAwLnNh
dGE6IEFIQ0kgMDAwMS4wMzAwIDMyIHNsb3RzIDEgcG9ydHMgNiAgCj4gPiBHYnBzIDB4MSBpbXBs
IHBsYXRmb3JtIG1vZGUgIAo+ID4gPiBbICAgIDQuMjQ5MTk2XSBhaGNpLW12ZWJ1IGQwMGUwMDAw
LnNhdGE6IGZsYWdzOiBuY3Egc250ZiBsZWQgb25seSBwbXAgZmJzIHBpbyAgCj4gPiBzbHVtIHBh
cnQgc3hzICAKPiA+ID4gWyAgICA0LjI1ODY0N10gc2NzaSBob3N0MDogYWhjaS1tdmVidQo+ID4g
PiBbICAgIDQuMjYyNDkxXSBhdGExOiBTQVRBIG1heCBVRE1BLzEzMyBtbWlvIFttZW0gMHhkMDBl
MDAwMC0gIAo+ID4gMHhkMDBlMWZmZl0gcG9ydCAweDEwMCBpcnEgMjEgIAo+ID4gPiBbICAgIDQu
MjcwNjA5XSBwYXN0IGluaXQgaG9zdAo+ID4gPiBbICAgIDQuMjczMzUzXSBwYXN0IHJjIGNoZWNr
Cj4gPiA+IFsgICAgNC4yNzY0NTVdIEV0aGVybmV0IENoYW5uZWwgQm9uZGluZyBEcml2ZXI6IHYz
LjcuMSAoQXByaWwgMjcsIDIwMTEpCj4gPiA+IFsgICAgNC4yODQ0MDhdIE1BQ3NlYyBJRUVFIDgw
Mi4xQUUKPiA+ID4gWyAgICA0LjI4Nzk2NV0gbGlicGh5OiBGaXhlZCBNRElPIEJ1czogcHJvYmVk
Cj4gPiA+IFtzbmlwXQo+ID4gPgo+ID4gPiBVbmZvcnR1bmF0ZWx5IHRoYXQgZG9lcyBub3QgdGVs
bCBtZSBtdWNoLiAgRG9lcyBpdCBzYXkgYW55dGhpbmcgdG8geW91Pwo+ID4gPiBJIG1lYW4gSSBn
dWVzcyAgICAgICAgcmMgPSBhaGNpX3BsYXRmb3JtX2VuYWJsZV9yZXNvdXJjZXMoaHByaXYpOyBJ
cyBmYWlsaW5nLCAgCj4gPiBzaG91bGQgSSBwdXQgc29tZSB0cmFjZXMgaW4gdGhhdD8KPiA+IAo+
ID4gWWVzLCBpbiBwYXJ0aWN1bGFyIGFyb3VuZCB0aGUgUEhZIGluaXRpYWxpemF0aW9uLCB1bnRp
bCB5b3UgZm91bmQgd2hlcmUgaXQgZmFpbHMKPiA+IGV4YWN0bHkuCj4gPiAKPiA+IAo+ID4gVGhh
bmtzLAo+ID4gTWlxdcOobCAgCj4gCj4gSSBoYXZlIHRyYWNlZCBpdCBkb3duIHRvIHBoeV9pbml0
IGluIHBoeS1jb3JlLmMgYW5kIGhhdmUgcHV0IGluIHRoZSBmb2xsb3dpbmcgdHJhY2VzOgo+IAo+
IGludCBwaHlfaW5pdChzdHJ1Y3QgcGh5ICpwaHkpCj4gewo+ICAgICAgICAgaW50IHJldDsKPiAK
PiAgICAgICAgIGlmICghcGh5KQo+ICAgICAgICAgICAgICAgICByZXR1cm4gMDsKPiAKPiAgICAg
ICAgIHJldCA9IHBoeV9wbV9ydW50aW1lX2dldF9zeW5jKHBoeSk7Cj4gICAgICAgICBpZiAocmV0
IDwgMCAmJiByZXQgIT0gLUVOT1RTVVBQKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+
ICAgICAgICAgcmV0ID0gMDsgLyogT3ZlcnJpZGUgcG9zc2libGUgcmV0ID09IC1FTk9UU1VQUCAq
Lwo+IAo+ICAgICAgICAgbXV0ZXhfbG9jaygmcGh5LT5tdXRleCk7Cj4gcHJpbnRrKEtFUk5fSU5G
TyAiaW4gcGh5IGluaXQgYmVmb3JlIGNoZWNrXG4iKTsKPiBwcmludGsoS0VSTl9JTkZPICJwaHkt
PmluaXRfY291bnQgJWRcbiIsIHBoeS0+aW5pdF9jb3VudCk7Cj4gcHJpbnRrKEtFUk5fSU5GTyAi
cGh5LT5vcHMtPmluaXQgJXByXG4iLCBwaHktPm9wcy0+aW5pdCk7Cj4gICAgICAgICBpZiAocGh5
LT5pbml0X2NvdW50ID09IDAgJiYgcGh5LT5vcHMtPmluaXQpIHsKPiBwcmludGsoS0VSTl9JTkZP
ICJpbiBwaHkgaW5pdCBwYXN0IGNoZWNrXG4iKTsKPiAgICAgICAgICAgICAgICAgcmV0ID0gcGh5
LT5vcHMtPmluaXQocGh5KTsKPiAgICAgICAgICAgICAgICAgaWYgKHJldCA8IDApIHsKPiBwcmlu
dGsoS0VSTl9JTkZPICJpbiBwaHkgaW5pdCAgcGh5LT5vcHMtPmluaXQocGh5KSBmYWlsZWRcbiIp
Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIGRldl9lcnIoJnBoeS0+ZGV2LCAicGh5IGluaXQg
ZmFpbGVkIC0tPiAlZFxuIiwgcmV0KTsKPiAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIG91
dDsKPiAgICAgICAgICAgICAgICAgfQo+ICAgICAgICAgfQo+ICAgICAgICAgKytwaHktPmluaXRf
Y291bnQ7Cj4gCj4gb3V0Ogo+ICAgICAgICAgbXV0ZXhfdW5sb2NrKCZwaHktPm11dGV4KTsKPiAg
ICAgICAgIHBoeV9wbV9ydW50aW1lX3B1dChwaHkpOwo+ICAgICAgICAgcmV0dXJuIHJldDsKPiB9
Cj4gCj4gV2hpY2ggcHJvZHVjZXMgdGhlIGZvbGxvd2luZyBkbWVzZyA6Cj4gWyAgICA0LjE5NDgz
NV0gU2VyaWFsOiA4MjUwLzE2NTUwIGRyaXZlciwgMzIgcG9ydHMsIElSUSBzaGFyaW5nIGVuYWJs
ZWQKPiBbICAgIDQuMjA1MjcwXSBjYWNoZWluZm86IFVuYWJsZSB0byBkZXRlY3QgY2FjaGUgaGll
cmFyY2h5IGZvciBDUFUgMAo+IFsgICAgNC4yMTE3NzddIGluIG12ZWJ1IHByb2JlCj4gWyAgICA0
LjIxNDUwOF0gY2hlY2sgZGV2aWNlIG1hdGNoCj4gWyAgICA0LjIxNzYwOV0gZGV2aWNlIGRpZCBt
YXRjaAo+IFsgICAgNC4yMjA2NjJdIGNoZWNrIHJlc291cmNlcwo+IFsgICAgNC4yMjM0NTVdIHJl
c291cmNlcyBvawo+IFsgICAgNC4yMjYwNjFdIGluIHBoeSBpbml0IGJlZm9yZSBjaGVjawo+IFsg
ICAgNC4yMjk3MThdIHBoeS0+aW5pdF9jb3VudCAwCj4gWyAgICA0LjIzMjc3NF0gcGh5LT5vcHMt
PmluaXQgKG51bGwpCj4gWyAgICA0LjIzNjE4OF0gcGh5IHBoeS1kMDAxODMwMC5waHkuMjogcGh5
IHBvd2Vyb24gZmFpbGVkIC0tPiAtMQo+IFsgICAgNC4yNDIwOTVdIGVuYWJsZSByZXNvdXJjZXMK
PiBbICAgIDQuMjQ1MDcyXSBhaGNpLW12ZWJ1OiBwcm9iZSBvZiBkMDBlMDAwMC5zYXRhIGZhaWxl
ZCB3aXRoIGVycm9yIC0xCj4gWyAgICA0LjI1MTgzMV0gRXRoZXJuZXQgQ2hhbm5lbCBCb25kaW5n
IERyaXZlcjogdjMuNy4xIChBcHJpbCAyNywgMjAxMSkKPiBbICAgIDQuMjU5NzUzXSBNQUNzZWMg
SUVFRSA4MDIuMUFFCj4gWyAgICA0LjI2MzM3MV0gbGlicGh5OiBGaXhlZCBNRElPIEJ1czogcHJv
YmVkCj4gWyAgICA0LjI2Nzc3N10gdHVuOiBVbml2ZXJzYWwgVFVOL1RBUCBkZXZpY2UgZHJpdmVy
LCAxLjYKPiBbICAgIDQuMjczMzc1XSBsaWJwaHk6IG9yaW9uX21kaW9fYnVzOiBwcm9iZWQKPiAK
PiBJIGJlbGlldmUgdGhlIHNpZ25pZmljYW50IGxpbmUgaXMgWyAgICA0LjIzMjc3NF0gcGh5LT5v
cHMtPmluaXQgKG51bGwpCj4gCj4gSSdtIG5vdCBzdXJlIHdoZXJlIHRoYXQgd2FzIHN1cHBvc2Vk
IHRvIGhhdmUgYmVlbiBpbml0aWFsaXplZCBidXQgaXQgYXBwYXJlbnRseSB3YXMgbm90LgoKU29t
ZXRoaW5nIGxvb2tzIHdyb25nIGluIHlvdXIgbG9nczogeW91IGhhdmUgaW5pdF9jb3VudCB0byAw
IGFuZApvcHMtPmluaXQoKSB0byBOVUxMLCBob3cgY2FuICIocGh5LT5pbml0X2NvdW50ID09IDAg
JiYgcGh5LT5vcHMtPmluaXQpIgpiZSBldmFsdWF0ZWQgdG8gdHJ1ZT8KCk1pcXXDqGwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
