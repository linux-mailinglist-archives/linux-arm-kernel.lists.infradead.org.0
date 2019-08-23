Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D362B9B30A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 17:09:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXxjE61pXAaNbY+ppDAC4OeKNGs8zaGFFwV8aAZULxw=; b=sI+d4dur5FjGQy
	E58quSJk8VASotZngjUx0qzB3CotnAruvwW71yXzLsKQhxhfxTBdmNqc+j0lFogyJnPaYfqASAg71
	FUIVX0QzEn5wcMhb2oEDJvyj8eFVO4QMKgP+R9BAkW+KFcK7Fl3a8KR9JkJGVXrcbSw4iMQnxvO62
	5FU5FFuzy9l+1pIIBA08XJFDOsx1DQ3XtqJFjCE26wxDKSQqPPi8/weECyyHNVTWcXV0/1pmbEP1l
	22MeOBvsDZ+Ws9EBvqAJvyTYYDmPr51zWrFEWVjyms1NHS2CKqZvehqeWL2lRGLiWOLKUcegJZ9JE
	LPP6GtgWp0zc2omrmLOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1BCA-0001sm-DQ; Fri, 23 Aug 2019 15:09:42 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1BC2-0001sE-Tf
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 15:09:36 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 7DD32240007;
 Fri, 23 Aug 2019 15:09:21 +0000 (UTC)
Date: Fri, 23 Aug 2019 17:09:21 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: mirq-linux@rere.qmqm.pl
Subject: Re: [PATCH 1/5] ASoC: atmel: enable SSC_PCM_DMA in Kconfig
Message-ID: <20190823150921.GC30479@piout.net>
References: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
 <ee65cc7b889b2a8d1139d1d25977842c956d1cf4.1563819483.git.mirq-linux@rere.qmqm.pl>
 <1f3a4256-58de-27a4-8095-54fc6baa6d89@microchip.com>
 <20190723164312.GA4772@qmqm.qmqm.pl>
 <20190723183915.GJ24911@piout.net>
 <20190723232505.GA21811@qmqm.qmqm.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723232505.GA21811@qmqm.qmqm.pl>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_080935_110691_9D7B80B7 
X-CRM114-Status: GOOD (  21.12  )
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com, tiwai@suse.com,
 perex@perex.cz, Ludovic.Desroches@microchip.com, broonie@kernel.org,
 Codrin.Ciubotariu@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjQvMDcvMjAxOSAwMToyNTowNSswMjAwLCBtaXJxLWxpbnV4QHJlcmUucW1xbS5wbCB3cm90
ZToKPiBPbiBUdWUsIEp1bCAyMywgMjAxOSBhdCAwODozOToxNVBNICswMjAwLCBBbGV4YW5kcmUg
QmVsbG9uaSB3cm90ZToKPiA+IE9uIDIzLzA3LzIwMTkgMTg6NDM6MTIrMDIwMCwgbWlycS1saW51
eEByZXJlLnFtcW0ucGwgd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgSnVsIDIzLCAyMDE5IGF0IDAxOjM2
OjM3UE0gKzAwMDAsIENvZHJpbi5DaXVib3Rhcml1QG1pY3JvY2hpcC5jb20gd3JvdGU6Cj4gPiA+
ID4gT24gMjIuMDcuMjAxOSAyMToyNywgTWljaGHFgiBNaXJvc8WCYXcgd3JvdGU6Cj4gPiA+ID4g
PiBBbGxvdyBTU0MgdG8gYmUgdXNlZCBvbiBwbGF0Zm9ybXMgZGVzY3JpYmVkIHVzaW5nIGF1ZGlv
LWdyYXBoLWNhcmQKPiA+ID4gPiA+IGluIERldmljZSBUcmVlLgo+ID4gPiA+ID4gCj4gPiA+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIE1pcm9zxYJhdyA8bWlycS1saW51eEByZXJlLnFtcW0u
cGw+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICAgc291bmQvc29jL2F0bWVsL0tjb25maWcgfCAy
ICstCj4gPiA+ID4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQo+ID4gPiA+ID4gCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvc291bmQvc29jL2F0bWVsL0tj
b25maWcgYi9zb3VuZC9zb2MvYXRtZWwvS2NvbmZpZwo+ID4gPiA+ID4gaW5kZXggMDZjMWQ1Y2U2
NDJjLi45ZWY5ZDI1YmI1MTcgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9zb3VuZC9zb2MvYXRtZWwv
S2NvbmZpZwo+ID4gPiA+ID4gKysrIGIvc291bmQvc29jL2F0bWVsL0tjb25maWcKPiA+ID4gPiA+
IEBAIC0yNSw3ICsyNSw3IEBAIGNvbmZpZyBTTkRfQVRNRUxfU09DX0RNQQo+ID4gPiA+ID4gICAJ
ZGVmYXVsdCB5IGlmIFNORF9BVE1FTF9TT0NfU1NDX0RNQT15IHx8IChTTkRfQVRNRUxfU09DX1NT
Q19ETUE9bSAmJiBTTkRfQVRNRUxfU09DX1NTQz15KQo+ID4gPiA+ID4gICAKPiA+ID4gPiA+ICAg
Y29uZmlnIFNORF9BVE1FTF9TT0NfU1NDX0RNQQo+ID4gPiA+ID4gLQl0cmlzdGF0ZQo+ID4gPiA+
ID4gKwl0cmlzdGF0ZSAiU29DIFBDTSBEQUkgc3VwcG9ydCBmb3IgQVQ5MSBTU0MgY29udHJvbGxl
ciB1c2luZyBETUEiCj4gPiA+ID4gCj4gPiA+ID4gQ291bGQgeW91IHBsZWFzZSBtYWtlIHNvbWV0
aGluZyBzaW1pbGFyIGZvciBTTkRfQVRNRUxfU09DX1NTQ19QREM/IEFsc28sIAo+ID4gPiA+IEkg
dGhpbmsgdGhhdCBpdCBzaG91bGQgc2VsZWN0IEFUTUVMX1NTQywgdG8gYmUgYWJsZSB0byB1c2Ug
Cj4gPiA+ID4gc2ltcGxlL2dyYXBoLWNhcmQgd2l0aCBTU0MuCj4gPiA+IAo+ID4gPiBIbW0uIFRo
ZSBLY29uZmlnIGRlcGVuZGVuY2llcyBzZWVtcyBvdmVybHkgY29tcGxpY2F0ZWQsIGRvIHlvdSBt
aW5kIGlmIEkKPiA+ID4gZ2V0IHJpZCBvZiBtb3N0IG9mIHRoZSBlbnRyaWVzIGluIHRoZSBwcm9j
ZXNzPwo+ID4gPiAKPiA+IAo+ID4gVW5mb3J0dW5hdGVseSwgaXQgaXMganVzdCBjb21wbGljYXRl
ZCBlbm91Z2guIFRoaXMgaXMgZG9uZSB0byBzdXBwb3J0Cj4gPiBhbGwgdGhlIHBvc3NpYmxlIGNv
bmZpZ3VyYXRpb25zLiBSZW1vdmluZyB0aGVtIHdpbGwgbGVhZCB0byBsaW5raW5nCj4gPiBlcnJv
cnMuCj4gPiAKPiA+IEFmdGVyIGhhdmluZyB0aGF0IGRpc2N1c3Npb24gYmFjayBpbiBNYXJjaCwg
SSBoYWQgYSB2ZXJ5IHF1aWNrIGxvb2sgYW5kCj4gPiBkaWRuJ3Qgc2VuZCBhIHBhdGNoIGJlY2F1
c2UgSSBzdGlsbCBoYWQgbGlua2luZyBpc3N1ZXMuIEl0IGlzIG5vdAo+ID4gaW1wb3NzaWJsZSBi
dXQgaXQgcmVxdWlyZWQgbW9yZSB0aW1lIHRoYW4gSSBoYWQuCj4gCj4gQ2FuIHlvdSB0cnkgcGF0
Y2ggYmVsb3cgaWYgaXQgY292ZXJzIHRoZSBjb25maWd1cmF0aW9ucyB5b3UgbWVudGlvbj8KPiBU
aGlzIHVzZXMgS2NvbmZpZydzIG0veSByZXNvbHV0aW9uIGluc3RlYWQgb2Ygb3Blbi1jb2RlZCBk
ZWZhdWx0cy4KPiAKClNlZW1zIGdvb2QgdG8gbWUsIHRoYW5rcy4KCgotLSAKQWxleGFuZHJlIEJl
bGxvbmksIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwpodHRw
czovL2Jvb3RsaW4uY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
