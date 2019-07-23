Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D28571F72
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:40:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HETqkbZ0m60axZw+b3MdNkPx3b6xli4+S9MV1oeeLzI=; b=B4gB8Z3CyRvINs
	Uc4gqO2MmxvohPdO+XWJOm3N824ybDc2it2efPdAmdUf2nxKDT3Qd20qpzt41M12UaMV/kSn99JbL
	Um0U7mG0XtzlDiAoBRnCSn9sEFQfj763ec7v+FIBKpt/ghV2Y+a0tAbFWgfg9St08WwE3u3GPTIUn
	9mlJsq95270m7WmPBsaYEehtrUZ4ZNA1xepK5q2ELnfWO0X5FWBcilRK3eB/WG9+MAYwDauFwvGzp
	qDpUdWfPtl+cr0HYkwvo7vSrmVKjHZFmDKpVxaohgMdm8VXCAknP7SCv7Bw1QbxZrP9hXHfuKjuJp
	5kxPnsPoln32i9jmCvPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpzht-0003nF-Hs; Tue, 23 Jul 2019 18:40:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpzhb-0003n9-Uq
 for linux-arm-kernel@bombadil.infradead.org; Tue, 23 Jul 2019 18:39:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HpIzSY7FNS/Bol5rU73DnS2Fg84In4Ref47Yz81YBaI=; b=INmiezAIJYOaVJok+y1RRpluz+
 88HSDTmeEifsJVY3evFKWLROuHFBUbtj1mYOA4MaBbftl0O15y5l2++9VFpN43nofPUa0K/WCBRze
 GOINERRZWihpfihcXtNno9k7ezi/iAh2ANanzj7ui2JjAg6Mt5xg2VNF5mtsXAbXbOwjcVsdTqjuK
 5RZU8oDJQJzaMuZCFa0oRkoNSJjTiYcn1TVuQOcyT79+U4Cqef0wPqIj2x6meOg5H06OVnvsyU+bc
 lsxsoASeELJdixvU8hHuZL/z1LLPlLsFwIslfSLOFzIG14QSXik8o+Mv53olpsidLYscQKwuFCr9l
 A0dlYaNQ==;
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpzhh-0006Wg-3O
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 18:40:03 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id B922C60008;
 Tue, 23 Jul 2019 18:39:15 +0000 (UTC)
Date: Tue, 23 Jul 2019 20:39:15 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: mirq-linux@rere.qmqm.pl
Subject: Re: [PATCH 1/5] ASoC: atmel: enable SSC_PCM_DMA in Kconfig
Message-ID: <20190723183915.GJ24911@piout.net>
References: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
 <ee65cc7b889b2a8d1139d1d25977842c956d1cf4.1563819483.git.mirq-linux@rere.qmqm.pl>
 <1f3a4256-58de-27a4-8095-54fc6baa6d89@microchip.com>
 <20190723164312.GA4772@qmqm.qmqm.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723164312.GA4772@qmqm.qmqm.pl>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_194001_186899_67067DE5 
X-CRM114-Status: GOOD (  23.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com, tiwai@suse.com,
 perex@perex.cz, Ludovic.Desroches@microchip.com, broonie@kernel.org,
 Codrin.Ciubotariu@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjMvMDcvMjAxOSAxODo0MzoxMiswMjAwLCBtaXJxLWxpbnV4QHJlcmUucW1xbS5wbCB3cm90
ZToKPiBPbiBUdWUsIEp1bCAyMywgMjAxOSBhdCAwMTozNjozN1BNICswMDAwLCBDb2RyaW4uQ2l1
Ym90YXJpdUBtaWNyb2NoaXAuY29tIHdyb3RlOgo+ID4gT24gMjIuMDcuMjAxOSAyMToyNywgTWlj
aGHFgiBNaXJvc8WCYXcgd3JvdGU6Cj4gPiA+IEFsbG93IFNTQyB0byBiZSB1c2VkIG9uIHBsYXRm
b3JtcyBkZXNjcmliZWQgdXNpbmcgYXVkaW8tZ3JhcGgtY2FyZAo+ID4gPiBpbiBEZXZpY2UgVHJl
ZS4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IE1pY2hhxYIgTWlyb3PFgmF3IDxtaXJxLWxp
bnV4QHJlcmUucW1xbS5wbD4KPiA+ID4gLS0tCj4gPiA+ICAgc291bmQvc29jL2F0bWVsL0tjb25m
aWcgfCAyICstCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvc291bmQvc29jL2F0bWVsL0tjb25maWcg
Yi9zb3VuZC9zb2MvYXRtZWwvS2NvbmZpZwo+ID4gPiBpbmRleCAwNmMxZDVjZTY0MmMuLjllZjlk
MjViYjUxNyAxMDA2NDQKPiA+ID4gLS0tIGEvc291bmQvc29jL2F0bWVsL0tjb25maWcKPiA+ID4g
KysrIGIvc291bmQvc29jL2F0bWVsL0tjb25maWcKPiA+ID4gQEAgLTI1LDcgKzI1LDcgQEAgY29u
ZmlnIFNORF9BVE1FTF9TT0NfRE1BCj4gPiA+ICAgCWRlZmF1bHQgeSBpZiBTTkRfQVRNRUxfU09D
X1NTQ19ETUE9eSB8fCAoU05EX0FUTUVMX1NPQ19TU0NfRE1BPW0gJiYgU05EX0FUTUVMX1NPQ19T
U0M9eSkKPiA+ID4gICAKPiA+ID4gICBjb25maWcgU05EX0FUTUVMX1NPQ19TU0NfRE1BCj4gPiA+
IC0JdHJpc3RhdGUKPiA+ID4gKwl0cmlzdGF0ZSAiU29DIFBDTSBEQUkgc3VwcG9ydCBmb3IgQVQ5
MSBTU0MgY29udHJvbGxlciB1c2luZyBETUEiCj4gPiAKPiA+IENvdWxkIHlvdSBwbGVhc2UgbWFr
ZSBzb21ldGhpbmcgc2ltaWxhciBmb3IgU05EX0FUTUVMX1NPQ19TU0NfUERDPyBBbHNvLCAKPiA+
IEkgdGhpbmsgdGhhdCBpdCBzaG91bGQgc2VsZWN0IEFUTUVMX1NTQywgdG8gYmUgYWJsZSB0byB1
c2UgCj4gPiBzaW1wbGUvZ3JhcGgtY2FyZCB3aXRoIFNTQy4KPiAKPiBIbW0uIFRoZSBLY29uZmln
IGRlcGVuZGVuY2llcyBzZWVtcyBvdmVybHkgY29tcGxpY2F0ZWQsIGRvIHlvdSBtaW5kIGlmIEkK
PiBnZXQgcmlkIG9mIG1vc3Qgb2YgdGhlIGVudHJpZXMgaW4gdGhlIHByb2Nlc3M/Cj4gCgpVbmZv
cnR1bmF0ZWx5LCBpdCBpcyBqdXN0IGNvbXBsaWNhdGVkIGVub3VnaC4gVGhpcyBpcyBkb25lIHRv
IHN1cHBvcnQKYWxsIHRoZSBwb3NzaWJsZSBjb25maWd1cmF0aW9ucy4gUmVtb3ZpbmcgdGhlbSB3
aWxsIGxlYWQgdG8gbGlua2luZwplcnJvcnMuCgpBZnRlciBoYXZpbmcgdGhhdCBkaXNjdXNzaW9u
IGJhY2sgaW4gTWFyY2gsIEkgaGFkIGEgdmVyeSBxdWljayBsb29rIGFuZApkaWRuJ3Qgc2VuZCBh
IHBhdGNoIGJlY2F1c2UgSSBzdGlsbCBoYWQgbGlua2luZyBpc3N1ZXMuIEl0IGlzIG5vdAppbXBv
c3NpYmxlIGJ1dCBpdCByZXF1aXJlZCBtb3JlIHRpbWUgdGhhbiBJIGhhZC4KCi0tIApBbGV4YW5k
cmUgQmVsbG9uaSwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5n
Cmh0dHBzOi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
