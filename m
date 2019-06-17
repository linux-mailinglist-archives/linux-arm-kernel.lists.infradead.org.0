Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCCD47EA0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 11:39:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/BulDwQrQhaxGuKX7+xT/vjzMcxt9CbEGkaDxtsRSw=; b=TLg1kDC0+EqpEb
	nTgoE/gvIMiesa5KIG/GVAxX700OFl5UqZY8NnJNwyRQjAcKkw8DbkdHOCMcyWe5EC7vHMvhUYbNQ
	/IzpFeJyyFrsLOZptlUEfwuXhPlINRn7LOMjOtXCMV+6yN8T4sMyfyV5q4rhbbS9zDyxyOUicmwAG
	rp/l+MZehrCXaU/5IrPm8DBSDBY/HEfdK5THJfR/7BYjzSoqLs+zqtyKKWY2cy/j6wpHHxvXp11ZC
	hrIz4Rc/MlMy9hoE8zlXei/3Xg15AmnXgHhKlzIz5+31D5W+mMhHbvzuaFWJALNWEDfqVXzQqmdjF
	qCB5iAJP6hnSt0RD4T0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hco6V-0008OQ-QD; Mon, 17 Jun 2019 09:39:07 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hco6I-0008Na-8f
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 09:38:55 +0000
X-Originating-IP: 90.88.23.150
Received: from xps13 (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id E56821BF218;
 Mon, 17 Jun 2019 09:38:42 +0000 (UTC)
Date: Mon, 17 Jun 2019 11:38:41 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Timothy Krantz" <tkrantz@stahurabrenner.com>
Subject: Re: espressobin device tree with kernel 5.1 RC
Message-ID: <20190617113841.60032387@xps13>
In-Reply-To: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAAABdzCVMdZ+R6253dvJGHcXAQAAAAA=@stahurabrenner.com>
References: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABB6J1kxOR7T73eMrM92Eq+AQAAAAA=@stahurabrenner.com>
 <20190429095727.48de0b7c@xps13>
 <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAAABdzCVMdZ+R6253dvJGHcXAQAAAAA=@stahurabrenner.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_023854_466559_0CF75EAA 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVGltb3RoeSwKClBsZWFzZSBrZWVwIHRoZSBMaW51eCBBUk0ga2VybmVsIE1MIGluIGNvcHku
CgoiVGltb3RoeSBLcmFudHoiIDx0a3JhbnR6QHN0YWh1cmFicmVubmVyLmNvbT4gd3JvdGUgb24g
U2F0LCAxNSBKdW4gMjAxOQoxODo1NjowMCAtMDQwMDoKCj4gSGVsbG8sCj4gSSBhbSBzdGlsbCB1
bmFibGUgdG8gZ2V0IDUuMSBvciA1LjJyYyBrZXJuZWxzIHRvIGJvb3Qgd2l0aCB0aGUgYXNzb2Np
YXRlZCBkdGIuICBUaGV5IGFsbCBzZWVtIHRvIHdvcmsgZmluZSB3aXRoIHRoZSBvbGRlciBkdGIu
Cj4gCj4gSSBhbSBjZXJ0YWluIHRoYXQgaXQgaXMgc29tZXRoaW5nIGluIG15IC5jb25maWcgdGhh
dCBpcyBub3QgcHJvcGVybHkgc2V0Lgo+IAo+IEkgZG9uJ3Qgc3VwcG9zZSB5b3UgY2FuIHNlbmQg
bWUgYSBjb3B5IG9mIHlvdXIgLmNvbmZpZyB0aGF0IHdvcmtzIHNvIHRoYXQgSSBjYW4gdHJ5IHdp
dGggdGhhdD8KCk15SGVyZSBpcyBteSBjb25maWd1cmF0aW9uIGZvciBhIDUuMi1yYzEga2VybmVs
Lgo+IAo+IFRoYW5rcyBmb3IgeW91ciBjb25zaWRlcmF0aW9uLgo+IAo+IFRpbSBLcmFudHoKPiAK
PiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBNaXF1ZWwgUmF5bmFsIFtt
YWlsdG86bWlxdWVsLnJheW5hbEBib290bGluLmNvbV0KPiA+IFNlbnQ6IE1vbmRheSwgQXByaWwg
MjksIDIwMTkgMzo1NyBBTQo+ID4gVG86IFRpbW90aHkgS3JhbnR6IDx0a3JhbnR6QHN0YWh1cmFi
cmVubmVyLmNvbT47IGxpbnV4LWFybS0KPiA+IGtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4g
PiBTdWJqZWN0OiBSZTogZXNwcmVzc29iaW4gZGV2aWNlIHRyZWUgd2l0aCBrZXJuZWwgNS4xIFJD
Cj4gPiAKPiA+IEhpIFRpbW90aHksCj4gPiAKPiA+ICJUaW1vdGh5IEtyYW50eiIgPHRrcmFudHpA
c3RhaHVyYWJyZW5uZXIuY29tPiB3cm90ZSBvbiBNb24sIDIyIEFwcgo+ID4gMjAxOQo+ID4gMTU6
MDc6MTIgLTA0MDA6Cj4gPiAgIAo+ID4gPiBIaSwKPiA+ID4gUGxlYXNlIGV4Y3VzZSBteSBlbWFp
bGluZyB5b3UgZGlyZWN0bHkuICBJIGRvIG5vdCBrbm93IHRoZSBwcm9wZXIKPiA+ID4gY2hhbm5l
bHMgdG8gcmVwb3J0IG15IHByb2JsZW0uCj4gPiA+ICAKPiA+IAo+ID4gRm9yIHRoaXMga2luZCBv
ZiBxdWVzdGlvbiBJIHRoaW5rIGFkZGluZyB0aGUgTGludXggQVJNIEtlcm5lbCBNYWlsaW5nIExp
c3QKPiA+IChMQUtNTCkgaXMgdGhlIHJpZ2h0IHRoaW5nIHRvIGRvLgo+ID4gICAKPiA+ID4gSSBi
dWlsZCBteSBvd24ga2VybmVscyBmb3IgbXkgMyBlc3ByZXNzb2JpbnMuICBVcCB0aHJvdWdoIGtl
cm5lbCA1LjAKPiA+ID4gdGhpbmdzIHdvcmsgZmluZS4KPiA+ID4KPiA+ID4gSW4gdGhlIDUuMSBS
QyBrZXJuZWxzIEkgaGF2ZSBiZWVuIHVuYWJsZSB0byBib290IHVzaW5nIHRoZSA1LjEgUkMKPiA+
ID4gZGV2aWNlIHRyZWUuICBJIGdldCA6Cj4gPiA+Cj4gPiA+IGFoY2ktbXZlYnUgZDAwZTAwMDAu
c2F0YTogY291bGRuJ3QgZ2V0IFBIWSBpbiBub2RlIHNhdGE6IC01MTcKPiA+ID4KPiA+ID4gdGhl
biB0aGUgYm9vdCBmYWlscyB3YWl0aW5nIGZvciB0aGUgcm9vdGZzIG9uIG15IHNhdGEgZGV2aWNl
Lgo+ID4gPgo+ID4gPiBJZiBJIHVzZSBhIGtlcm5lbCA1LjAgZGV2aWNlIHRyZWUgd2l0aCBhIDUu
MSBSQyBrZXJuZWwgaXQgYm9vdHMgZmluZS4KPiA+ID4KPiA+ID4gSSBhbSBnbGFkIHRvIHRlc3Qg
YW55dGhpbmcgaWYgdGhhdCB3b3VsZCBoZWxwLiAgCj4gPiAKPiA+IERvIHlvdSBoYXZlIFBIWV9N
VkVCVV9BMzcwMF9DT01QSFkgZW5hYmxlZD8KPiA+ICAgCj4gPiA+Cj4gPiA+IFRpbSBLcmFudHoK
PiA+ID4gIAo+ID4gCj4gPiAKPiA+IFRoYW5rcywKPiA+IE1pcXXDqGwgIAo+IAoKCgoKVGhhbmtz
LApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
