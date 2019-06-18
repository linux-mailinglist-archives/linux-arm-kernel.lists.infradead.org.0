Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A6F4A3DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:25:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q5EKZYPhCkndJXJNgP028btAnWznKqU2eqadWwsrpUU=; b=qHRttUwdb9GxTt
	jSd/3/g2NPxQ7SPeuY1KlWRfsbZ8pnMPObcnBIbi3rUo9URSV2OLyThqTmFi591sLDM+/82oUbB0r
	ZoSalmzaAqq4HAftTUd98mmr7JVKRuyEC+lJISbtarJEqomsfm/JBlyaWziPYpmJiGL3JT9FeN1L8
	/2GTHOOe4vWeEqInMEN7lkj+YVbawr/TpOs/M76vY0FFIzxDs3J6RSM2LL/ekV2P2t8DAaNceRKb+
	m8J+Iu+XscJpFzx1g7nfj2vEsf1b0VedDvgQCnCRD5hcIMZMJLlTQjxXY9kNwpuzuVwFcJcoddONs
	GQSfv5xyFyinQacM+TUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdF2i-0005CV-6E; Tue, 18 Jun 2019 14:25:00 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdF2V-0005Bp-Hi
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:24:49 +0000
X-Originating-IP: 90.88.23.150
Received: from xps13 (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 633AC24000E;
 Tue, 18 Jun 2019 14:24:29 +0000 (UTC)
Date: Tue, 18 Jun 2019 16:24:28 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Timothy Krantz" <tkrantz@stahurabrenner.com>
Subject: Re: espressobin device tree with kernel 5.1 RC
Message-ID: <20190618162428.0417f247@xps13>
In-Reply-To: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAADKxydx2LOeRKSPqV4VA77dAQAAAAA=@stahurabrenner.com>
References: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABB6J1kxOR7T73eMrM92Eq+AQAAAAA=@stahurabrenner.com>
 <20190429095727.48de0b7c@xps13>
 <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAAABdzCVMdZ+R6253dvJGHcXAQAAAAA=@stahurabrenner.com>
 <20190617113841.60032387@xps13> <20190617114016.10fb9e03@xps13>
 <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAADly4/rI9w9RYcxQAoCt9xgAQAAAAA=@stahurabrenner.com>
 <20190618095812.48a2746b@xps13>
 <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAADKxydx2LOeRKSPqV4VA77dAQAAAAA=@stahurabrenner.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_072447_896689_CC86582B 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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

SGkgVGltb3RoeSwKCj4gPiBZb3Ugc2hvdWxkIGFkZCB0cmFjZXMgd2hlcmUgdGhlc2VzIHByaW50
cyBjb21lIGZyb20gYW5kIGZpbmQgd2hhdCBpcwo+ID4gbWlzc2luZy4KPiA+ICAgCj4gPiA+IElz
IHdoYXQgSSBnZXQgd2l0aCBhIGtlcm5lbCBjb25maWd1cmVkIHdpdGggeW91ciAuY29uZmlnLgo+
ID4gPgo+ID4gPiBJIHN1c3BlY3QgdGhlcmUgaXMgc29tZSBtYWdpYyBpbgo+ID4gPgo+ID4gPiBD
T05GSUdfSU5JVFJBTUZTX1NPVVJDRT0iL2hvbWUvbXJheW5hbC9idWlsZHJvb3Qvb3V0cHV0LSAg
Cj4gPiBhcm0vaW1hZ2VzL3Jvb3Rmcy5jcGlvIiAgCj4gPiA+Cj4gPiA+IFdoaWNoIEkgZG8gbm90
IGhhdmUgdGhhdCBtYXkgYmUgbWFraW5nIGEgZGlmZmVyZW5jZT8gKHRoYXQgaXMgdGhlIG9ubHkg
IAo+ID4gZGlmZmVyZW5jZSBpbiB3aGF0IEkgY29tcGlsZWQgYW5kIHlvdSBzZW50IHRvIG1lKS4K
PiA+IAo+ID4gTm90IGF0IGFsbCwgdGhpcyBpcyBqdXN0IG15IHJvb3RmcyBhcyBhbiBpbml0cmFt
ZnMsIG5vdCByZWxhdGVkIHRvIHRoZSBjb250ZW50IG9mCj4gPiB0aGUga2VybmVsIGF0IGFsbC4K
PiA+IAo+ID4gCj4gPiBHb29kIGx1Y2shCj4gPiBNaXF1w6hsICAKPiAKPiBJIHB1dCBpbiB0aGlz
IChzaW1wbGlzdGljIGFuZCB1Z2x5KSB0cmFjaW5nOgo+IHN0YXRpYyBpbnQgYWhjaV9tdmVidV9w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+IHsKPiAgICAgICAgIGNvbnN0IHN0
cnVjdCBhaGNpX212ZWJ1X3BsYXRfZGF0YSAqcGRhdGE7Cj4gICAgICAgICBzdHJ1Y3QgYWhjaV9o
b3N0X3ByaXYgKmhwcml2Owo+ICAgICAgICAgaW50IHJjOwo+IAo+IHByaW50ayhLRVJOX0lORk8g
ImluIG12ZWJ1IHByb2JlXG4iKTsKPiAgICAgICAgIHBkYXRhID0gb2ZfZGV2aWNlX2dldF9tYXRj
aF9kYXRhKCZwZGV2LT5kZXYpOwo+IHByaW50ayhLRVJOX0lORk8gImNoZWNrIGRldmljZSBtYXRj
aFxuIik7Cj4gICAgICAgICBpZiAoIXBkYXRhKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVJ
TlZBTDsKPiBwcmludGsoS0VSTl9JTkZPICJkZXZpY2UgZGlkIG1hdGNoXG4iKTsKPiAKPiAgICAg
ICAgIGhwcml2ID0gYWhjaV9wbGF0Zm9ybV9nZXRfcmVzb3VyY2VzKHBkZXYsIDApOwo+IHByaW50
ayhLRVJOX0lORk8gImNoZWNrIHJlc291cmNlc1xuIik7Cj4gICAgICAgICBpZiAoSVNfRVJSKGhw
cml2KSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIoaHByaXYpOwo+IAo+IHByaW50
ayhLRVJOX0lORk8gInJlc291cmNlcyBva1xuIik7Cj4gICAgICAgICBocHJpdi0+ZmxhZ3MgfD0g
cGRhdGEtPmZsYWdzOwo+ICAgICAgICAgaHByaXYtPnBsYXRfZGF0YSA9ICh2b2lkICopcGRhdGE7
Cj4gCj4gICAgICAgICByYyA9IGFoY2lfcGxhdGZvcm1fZW5hYmxlX3Jlc291cmNlcyhocHJpdik7
Cj4gcHJpbnRrKEtFUk5fSU5GTyAiZW5hYmxlIHJlc291cmNlc1xuIik7Cj4gICAgICAgICBpZiAo
cmMpCj4gICAgICAgICAgICAgICAgIHJldHVybiByYzsKPiAKPiBwcmludGsoS0VSTl9JTkZPICJw
YXN0IGVuYWJsZSByZXNvdXJjZXNcbiIpOwo+ICAgICAgICAgaHByaXYtPnN0b3BfZW5naW5lID0g
YWhjaV9tdmVidV9zdG9wX2VuZ2luZTsKPiAKPiAgICAgICAgIHJjID0gcGRhdGEtPnBsYXRfY29u
ZmlnKGhwcml2KTsKPiBwcmludGsoS0VSTl9JTkZPICJkaXNlbmFibGUgcmVzb3VyY2VzXG4iKTsK
PiAgICAgICAgIGlmIChyYykKPiAgICAgICAgICAgICAgICAgZ290byBkaXNhYmxlX3Jlc291cmNl
czsKPiBwcmludGsoS0VSTl9JTkZPICJwYXN0IGRpc2FibGUgcmVzb3VyY2VzXG4iKTsKPiAKPiBw
cmludGsoS0VSTl9JTkZPICJpbml0IGhvc3RcbiIpOwo+ICAgICAgICAgcmMgPSBhaGNpX3BsYXRm
b3JtX2luaXRfaG9zdChwZGV2LCBocHJpdiwgJmFoY2lfbXZlYnVfcG9ydF9pbmZvLAo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmYWhjaV9wbGF0Zm9ybV9zaHQpOwo+IHBy
aW50ayhLRVJOX0lORk8gInBhc3QgaW5pdCBob3N0XG4iKTsKPiAgICAgICAgIGlmIChyYykKPiAg
ICAgICAgICAgICAgICAgZ290byBkaXNhYmxlX3Jlc291cmNlczsKPiBwcmludGsoS0VSTl9JTkZP
ICJwYXN0IHJjIGNoZWNrXG4iKTsKPiAKPiAgICAgICAgIHJldHVybiAwOwo+IAo+IGRpc2FibGVf
cmVzb3VyY2VzOgo+IHByaW50ayhLRVJOX0lORk8gImluIGRpc2FibGUgcmVzb3VyY2VzXG4iKTsK
PiAgICAgICAgIGFoY2lfcGxhdGZvcm1fZGlzYWJsZV9yZXNvdXJjZXMoaHByaXYpOwo+ICAgICAg
ICAgcmV0dXJuIHJjOwo+IH0KPiAKPiAKPiBXaXRoIHRoZSA1LjItcmM1IGRldmljZSB0cmVlIEkg
Z2V0IDoKPiAKPiBbc25pcF0KPiBbICAgIDQuMjA0MzY2XSBjYWNoZWluZm86IFVuYWJsZSB0byBk
ZXRlY3QgY2FjaGUgaGllcmFyY2h5IGZvciBDUFUgMAo+IFsgICAgNC4yMTA4NzZdIGluIG12ZWJ1
IHByb2JlCj4gWyAgICA0LjIxMzYwOF0gY2hlY2sgZGV2aWNlIG1hdGNoCj4gWyAgICA0LjIxNjcx
MF0gZGV2aWNlIGRpZCBtYXRjaAo+IFsgICAgNC4yMTk3NjJdIGNoZWNrIHJlc291cmNlcwo+IFsg
ICAgNC4yMjI1NTVdIHJlc291cmNlcyBvawo+IFsgICAgNC4yMjUxNzRdIHBoeSBwaHktZDAwMTgz
MDAucGh5LjI6IHBoeSBwb3dlcm9uIGZhaWxlZCAtLT4gLTEKPiBbICAgIDQuMjMxMDY5XSBlbmFi
bGUgcmVzb3VyY2VzCj4gWyAgICA0LjIzNDA1NF0gYWhjaS1tdmVidTogcHJvYmUgb2YgZDAwZTAw
MDAuc2F0YSBmYWlsZWQgd2l0aCBlcnJvciAtMQo+IFsgICAgNC4yNDA4MDBdIEV0aGVybmV0IENo
YW5uZWwgQm9uZGluZyBEcml2ZXI6IHYzLjcuMSAoQXByaWwgMjcsIDIwMTEpCj4gWyAgICA0LjI0
ODczNl0gTUFDc2VjIElFRUUgODAyLjFBRQo+IFsgICAgNC4yNTIzNDRdIGxpYnBoeTogRml4ZWQg
TURJTyBCdXM6IHByb2JlZAo+IFtzbmlwXQo+IAo+IFdpdGggZXhhY3RseSB0aGUgc2FtZSBrZXJu
ZWwgYnV0IHRoZSA1LjAgZGV2aWNlIHRyZWUgSSBnZXQgOgo+IAo+IFtzbmlwXQo+IFsgICAgNC4y
MDM2OTJdIGNhY2hlaW5mbzogVW5hYmxlIHRvIGRldGVjdCBjYWNoZSBoaWVyYXJjaHkgZm9yIENQ
VSAwCj4gWyAgICA0LjIxMDE5Ml0gaW4gbXZlYnUgcHJvYmUKPiBbICAgIDQuMjEyOTI0XSBjaGVj
ayBkZXZpY2UgbWF0Y2gKPiBbICAgIDQuMjE2MDI2XSBkZXZpY2UgZGlkIG1hdGNoCj4gWyAgICA0
LjIxOTA1OF0gY2hlY2sgcmVzb3VyY2VzCj4gWyAgICA0LjIyMTg1OF0gcmVzb3VyY2VzIG9rCj4g
WyAgICA0LjIyNDQ1OF0gZW5hYmxlIHJlc291cmNlcwo+IFsgICAgNC4yMjc0MDVdIHBhc3QgZW5h
YmxlIHJlc291cmNlcwo+IFsgICAgNC4yMzA4MTddIGRpc2VuYWJsZSByZXNvdXJjZXMKPiBbICAg
IDQuMjM0MDQyXSBwYXN0IGRpc2FibGUgcmVzb3VyY2VzCj4gWyAgICA0LjIzNzUzNl0gaW5pdCBo
b3N0Cj4gWyAgICA0LjIzOTkzMV0gYWhjaS1tdmVidSBkMDBlMDAwMC5zYXRhOiBBSENJIDAwMDEu
MDMwMCAzMiBzbG90cyAxIHBvcnRzIDYgR2JwcyAweDEgaW1wbCBwbGF0Zm9ybSBtb2RlCj4gWyAg
ICA0LjI0OTE5Nl0gYWhjaS1tdmVidSBkMDBlMDAwMC5zYXRhOiBmbGFnczogbmNxIHNudGYgbGVk
IG9ubHkgcG1wIGZicyBwaW8gc2x1bSBwYXJ0IHN4cwo+IFsgICAgNC4yNTg2NDddIHNjc2kgaG9z
dDA6IGFoY2ktbXZlYnUKPiBbICAgIDQuMjYyNDkxXSBhdGExOiBTQVRBIG1heCBVRE1BLzEzMyBt
bWlvIFttZW0gMHhkMDBlMDAwMC0weGQwMGUxZmZmXSBwb3J0IDB4MTAwIGlycSAyMQo+IFsgICAg
NC4yNzA2MDldIHBhc3QgaW5pdCBob3N0Cj4gWyAgICA0LjI3MzM1M10gcGFzdCByYyBjaGVjawo+
IFsgICAgNC4yNzY0NTVdIEV0aGVybmV0IENoYW5uZWwgQm9uZGluZyBEcml2ZXI6IHYzLjcuMSAo
QXByaWwgMjcsIDIwMTEpCj4gWyAgICA0LjI4NDQwOF0gTUFDc2VjIElFRUUgODAyLjFBRQo+IFsg
ICAgNC4yODc5NjVdIGxpYnBoeTogRml4ZWQgTURJTyBCdXM6IHByb2JlZAo+IFtzbmlwXQo+IAo+
IFVuZm9ydHVuYXRlbHkgdGhhdCBkb2VzIG5vdCB0ZWxsIG1lIG11Y2guICBEb2VzIGl0IHNheSBh
bnl0aGluZyB0byB5b3U/Cj4gSSBtZWFuIEkgZ3Vlc3MgICAgICAgIHJjID0gYWhjaV9wbGF0Zm9y
bV9lbmFibGVfcmVzb3VyY2VzKGhwcml2KTsgSXMgZmFpbGluZywgc2hvdWxkIEkgcHV0IHNvbWUg
dHJhY2VzIGluIHRoYXQ/CgpZZXMsIGluIHBhcnRpY3VsYXIgYXJvdW5kIHRoZSBQSFkgaW5pdGlh
bGl6YXRpb24sIHVudGlsIHlvdSBmb3VuZCB3aGVyZQppdCBmYWlscyBleGFjdGx5LgoKClRoYW5r
cywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
