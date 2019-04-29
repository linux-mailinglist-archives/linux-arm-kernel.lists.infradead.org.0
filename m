Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 237ABE9C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 20:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Me98+yxuPxKGeZEytYjXSCG8481+zKA4KB4Zv/GBUEo=; b=XPcW9BkhEOiHVa
	n+tyHCp+57AkXXh2ng7yc90of+PLFwDWH5j/YmgUFRqxXC5sX/iMa8efP+n41UqBoaFmtPekrSlMC
	26viJ+7jUAzEKwLwsIP9eYQeQ5UhcVEpPgbbcSco2hRzxKT//2+3YxeZn9jrGRFxaYjtxRhEqozHD
	NAlGl8SXuzkc1hui345FR0HH1lBRIDM+Nn/tvILgfHg8dC8xxvlAUXJTBdS42zvPdUgWnJiFqFZaJ
	KfZwud88SyJmbOsR4mcycCn6Cnj0i86yNT/puTCVzA+ug47kAK3KoAN4UbdNlsNlspdluzQRdHhch
	0wRFIu2jpSrQbDeEc7Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLAjX-0001zm-Pc; Mon, 29 Apr 2019 18:10:31 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLAjR-0001zH-9x
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 18:10:26 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 1927920002;
 Mon, 29 Apr 2019 18:10:12 +0000 (UTC)
Date: Mon, 29 Apr 2019 20:10:11 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Timothy Krantz" <tkrantz@stahurabrenner.com>
Subject: Re: espressobin device tree with kernel 5.1 RC
Message-ID: <20190429201011.3eeb0c5f@xps13>
In-Reply-To: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABFrsjXmIg1Q6VJqGysUaK8AQAAAAA=@stahurabrenner.com>
References: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABB6J1kxOR7T73eMrM92Eq+AQAAAAA=@stahurabrenner.com>
 <20190429095727.48de0b7c@xps13>
 <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABFrsjXmIg1Q6VJqGysUaK8AQAAAAA=@stahurabrenner.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_111025_495734_293FF1F5 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
PiB3cm90ZSBvbiBNb24sIDI5IEFwciAyMDE5CjExOjAzOjMzIC0wNDAwOgoKPiBIaSBNaXF1ZWwg
dGhhbmtzIGZvciB0aGUgcmVzcG9uc2UuCj4gCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQo+ID4gRnJvbTogTWlxdWVsIFJheW5hbCBbbWFpbHRvOm1pcXVlbC5yYXluYWxAYm9vdGxpbi5j
b21dCj4gPiBTZW50OiBNb25kYXksIEFwcmlsIDI5LCAyMDE5IDM6NTcgQU0KPiA+IFRvOiBUaW1v
dGh5IEtyYW50eiA8dGtyYW50ekBzdGFodXJhYnJlbm5lci5jb20+OyBsaW51eC1hcm0tCj4gPiBr
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gU3ViamVjdDogUmU6IGVzcHJlc3NvYmluIGRl
dmljZSB0cmVlIHdpdGgga2VybmVsIDUuMSBSQwo+ID4gCj4gPiBIaSBUaW1vdGh5LAo+ID4gCj4g
PiAiVGltb3RoeSBLcmFudHoiIDx0a3JhbnR6QHN0YWh1cmFicmVubmVyLmNvbT4gd3JvdGUgb24g
TW9uLCAyMiBBcHIKPiA+IDIwMTkKPiA+IDE1OjA3OjEyIC0wNDAwOgo+ID4gICAKPiA+ID4gSGks
Cj4gPiA+IFBsZWFzZSBleGN1c2UgbXkgZW1haWxpbmcgeW91IGRpcmVjdGx5LiAgSSBkbyBub3Qg
a25vdyB0aGUgcHJvcGVyCj4gPiA+IGNoYW5uZWxzIHRvIHJlcG9ydCBteSBwcm9ibGVtLgo+ID4g
PiAgCj4gPiAKPiA+IEZvciB0aGlzIGtpbmQgb2YgcXVlc3Rpb24gSSB0aGluayBhZGRpbmcgdGhl
IExpbnV4IEFSTSBLZXJuZWwgTWFpbGluZyBMaXN0Cj4gPiAoTEFLTUwpIGlzIHRoZSByaWdodCB0
aGluZyB0byBkby4gIAo+IAo+IEdvdCBpdCwgdGhhbmtzIGZvciB0aGUgaW5mb3JtYXRpb24uCj4g
Cj4gPiAgIAo+ID4gPiBJIGJ1aWxkIG15IG93biBrZXJuZWxzIGZvciBteSAzIGVzcHJlc3NvYmlu
cy4gIFVwIHRocm91Z2gga2VybmVsIDUuMAo+ID4gPiB0aGluZ3Mgd29yayBmaW5lLgo+ID4gPgo+
ID4gPiBJbiB0aGUgNS4xIFJDIGtlcm5lbHMgSSBoYXZlIGJlZW4gdW5hYmxlIHRvIGJvb3QgdXNp
bmcgdGhlIDUuMSBSQwo+ID4gPiBkZXZpY2UgdHJlZS4gIEkgZ2V0IDoKPiA+ID4KPiA+ID4gYWhj
aS1tdmVidSBkMDBlMDAwMC5zYXRhOiBjb3VsZG4ndCBnZXQgUEhZIGluIG5vZGUgc2F0YTogLTUx
NwoKLTUxNyBpcyAtRVBST0JFX0RFRkZFUi4gV2hpbGUgYSBuZXcgY2FzZSBpbiB0aGUgc3dpdGNo
IGxvY2F0ZWQgaW4KYWhjaV9wbGF0Zm9ybV9nZXRfcGh5KCkgc2hvdWxkIHByb2JhYmx5IGhhbmRs
ZSB0aGlzIGNhc2Ugc2lsZW50bHksIGl0CmRvZXMgbm90IGV4cGxhaW4gd2h5IGl0IGhhbmdzLgoK
Q291bGQgeW91IGFkZCB0cmFjZXMgaW4gYWhjaV9tdmVidS5jIHRvIGNoZWNrIHdoZXJlIGl0IGhh
bmdzPwoKQXMgVXdlIHRvbGQgeW91LCAjYXJtbGludXggb3IgI212bGludXggbWlnaHQgYmUgZ29v
ZCBwbGFjZXMgdG8gZGlzY3Vzcwp0aGlzIHRvcGljLgoKClRoYW5rcywKTWlxdcOobAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
