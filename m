Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB62F1E2F3F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 21:45:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjDh76cPJfttbP0BeGdHVFD1XSA9YaJYF+QbcE7iRWo=; b=HEP1AiYVRpGDfT
	SHmABJQksAkLVX7LPiI1HAassHhsEtkTT3gLJqdr9+WbcvUnNcsDFMzQWWCe8FMFEKoF6WD4Zu0eY
	59zK6DlPmHCJGBaUADvCjOjfDl95OgUpPxU9x4feGWX/FodHh1BkhicKH8MIvKew3J67vvilGsaK3
	iGmA6UbBotqcjpeoQUp4DKXzdv/hnPqx6jvdZLiMYaCWkY9Cc3YMHNIdQRc38snWzqN47BxkMMqz9
	+brTISdEHyusgtsnchPqgm35LKvJCCTwp8lpAkv1xBT5U39JqsHPvwWpoHvfhHFqiBXX9j/tlwn5N
	q0OubARcoNcZ+SDhhWVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdfW1-0000Vx-7n; Tue, 26 May 2020 19:45:33 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdfVk-0008Nc-QV
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 19:45:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 1D5B82A0390
Message-ID: <a0a8d9178c4b5c05835115f5d2f4301e44146e8f.camel@collabora.com>
Subject: Re: [PATCH v2 6/6] dt-bindings: drm: bridge: adi,adv7511.txt:
 convert to yaml
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>
Date: Tue, 26 May 2020 16:45:03 -0300
In-Reply-To: <CAMuHMdUV+qHpfLfbYwQwPXAUsh7HXvonUNWNh-SeTC-RpHwrog@mail.gmail.com>
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-7-ricardo.canuelo@collabora.com>
 <20200514015412.GF7425@pendragon.ideasonboard.com>
 <20200514093617.dwhmqaasc3z5ixy6@rcn-XPS-13-9360>
 <20200514152239.GG5955@pendragon.ideasonboard.com>
 <20200525074335.grnjvdjnipq5g3kf@rcn-XPS-13-9360>
 <20200526014444.GB6179@pendragon.ideasonboard.com>
 <CAMuHMdXinhY13us9rt9h7EvrT_8zhnQg6tmOBtA0nEQ=1G1O7Q@mail.gmail.com>
 <20200526101158.GA5903@pendragon.ideasonboard.com>
 <CAMuHMdUV+qHpfLfbYwQwPXAUsh7HXvonUNWNh-SeTC-RpHwrog@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_124517_038619_203C1218 
X-CRM114-Status: GOOD (  18.43  )
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
Cc: "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Wei Xu <xuwei5@hisilicon.com>,
 Rob Herring <robh+dt@kernel.org>, Collabora Kernel ML <kernel@collabora.com>,
 Ricardo =?ISO-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDIwLTA1LTI2IGF0IDEyOjM5ICswMjAwLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3Jv
dGU6Cj4gSGkgTGF1cmVudCwKPiAKPiBPbiBUdWUsIE1heSAyNiwgMjAyMCBhdCAxMjoxMiBQTSBM
YXVyZW50IFBpbmNoYXJ0Cj4gPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4gd3Jv
dGU6Cj4gPiBPbiBUdWUsIE1heSAyNiwgMjAyMCBhdCAwOTowMzowOUFNICswMjAwLCBHZWVydCBV
eXR0ZXJob2V2ZW4gd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgTWF5IDI2LCAyMDIwIGF0IDM6NDQgQU0g
TGF1cmVudCBQaW5jaGFydCB3cm90ZToKPiA+ID4gPiBPbiBNb24sIE1heSAyNSwgMjAyMCBhdCAw
OTo0MzozNUFNICswMjAwLCBSaWNhcmRvIENhw7F1ZWxvIHdyb3RlOgo+ID4gPiA+ID4gT24ganVl
IDE0LTA1LTIwMjAgMTg6MjI6MzksIExhdXJlbnQgUGluY2hhcnQgd3JvdGU6Cj4gPiA+ID4gPiA+
ID4gSWYgd2Ugd2FudCB0byBiZSBtb3JlIHN0cmljdCBhbmQgcmVxdWlyZSB0aGUgZGVmaW5pdGlv
biBvZiBhbGwgdGhlCj4gPiA+ID4gPiA+ID4gc3VwcGxpZXMsIHRoZXJlIHdpbGwgYmUgbWFueSBt
b3JlIERUcyBjaGFuZ2VzIGluIHRoZSBzZXJpZXMsIGFuZCBJJ20gbm90Cj4gPiA+ID4gPiA+ID4g
c3VyZSBJJ2xsIGJlIGFibGUgdG8gZG8gdGhhdCBpbiBhIHJlYXNvbmFibGUgYW1vdW50IG9mIHRp
bWUuIEknbSBsb29raW5nCj4gPiA+ID4gPiA+ID4gYXQgdGhlbSBhbmQgaXQncyBub3QgYWx3YXlz
IGNsZWFyIHdoaWNoIHJlZ3VsYXRvcnMgdG8gdXNlIG9yIGlmIHRoZXkgYXJlCj4gPiA+ID4gPiA+
ID4gZXZlbiBkZWZpbmVkLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gV2UgY2FuIGRlY291cGxl
IHRoZSB0d28gdGhvdWdoIChJIHRoaW5rKS4gVGhlIGJpbmRpbmdzIHNob3VsZCByZWZsZWN0Cj4g
PiA+ID4gPiA+IHdoYXQgd2UgY29uc2lkZXIgcmlnaHQsIGFuZCB0aGUgZHRzIGZpbGVzIGNvdWxk
IGJlIGZpeGVkIG9uIHRvcC4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gRG8geW91IGhhdmUgYSBzdWdn
ZXN0aW9uIG9uIGhvdyB0byBkbyB0aGlzPyBJZiB3ZSBkZWNvdXBsZSB0aGUgdHdvCj4gPiA+ID4g
PiB0YXNrcyBtb3N0IG9mIHRoZSB3b3JrIHdvdWxkIGJlIHNlYXJjaGluZyBmb3IgRFRzIHRvIGZp
eCBhbmQgZmluZGluZyBhCj4gPiA+ID4gPiB3YXkgdG8gZml4IGVhY2ggb25lIG9mIHRoZW0sIGFu
ZCB1bmxlc3MgSSBkbyB0aGlzIF9iZWZvcmVfIHRoZSBiaW5kaW5nCj4gPiA+ID4gPiBjb252ZXJz
aW9uIEknbGwgZ2V0IGEgbG90IG9mIGR0YnNfY2hlY2sgZXJyb3JzLgo+ID4gPiA+IAo+ID4gPiA+
IFJvYiBzaG91bGQgYW5zd2VyIHRoaXMgcXVlc3Rpb24gYXMgaXQgd2lsbCBiZSBoaXMgZGVjaXNp
b24sIGJ1dCBJJ3ZlCj4gPiA+ID4gcGVyc29uYWxseSBuZXZlciBjb25zaWRlcmVkIG5vbi1jb21w
bGlhbnQgRFQgc291cmNlcyB0byBiZSBhbiBvYnN0YWNsZQo+ID4gPiA+IHRvIGJpbmRpbmdzIGNv
bnZlcnNpb24gdG8gWUFNTC4gVGhlIERUIHNvdXJjZXMgc2hvdWxkIGJlIGZpeGVkLCBidXQgSQo+
ID4gPiA+IGRvbid0IHNlZSBpdCBhcyBhIHByZXJlcXVpc2l0ZSAoYWx0aG91Z2ggaXQncyBhIGdv
b2QgcHJhY3RpY2UpLgo+ID4gPiAKPiA+ID4gSSBkbyBteSBiZXN0IHRvIGF2b2lkIGludHJvZHVj
aW5nIHJlZ3Jlc3Npb25zIHdoZW4gdGhlIGJpbmRpbmcgY29udmVyc2lvbnMKPiA+ID4gZ28gdXBz
dHJlYW0uCj4gPiAKPiA+IFBsZWFzZSBub3RlIHRoYXQgd2UncmUgbm90IHRhbGtpbmcgYWJvdXQg
cnVudGltZSByZWdyZXNzaW9ucywgYXMgZHJpdmVycwo+ID4gYXJlIG5vdCB1cGRhdGVkLiBJdCdz
ICJvbmx5IiBkdGJzX2NoZWNrIHRoYXQgd291bGQgcHJvZHVjZSBuZXcgZXJyb3JzLgo+IAo+IEV4
YWN0bHkuICBJIHdhcyB0YWxraW5nIGFib3V0ICJtYWtlIGR0YnNfY2hlY2siIHJlZ3Jlc3Npb25z
LCB0b28uCj4gCgpBICJtYWtlIGR0YnNfY2hlY2siIGZhaWx1cmUsIGR1ZSB0byBzb21lIGZvby5k
dHMgdGhhdCBmYWlscyB0aGUgY2hlY2sKZHVlIHRvIGEgY29ycmVjdCBZQU1MIGNvbnZlcnNpb24s
IGNhbid0IGJlIGNvbnNpZGVyZWQgYSByZWdyZXNzaW9uLgoKSSBzdHJvbmdseSBhZ3JlZSB3aXRo
IExhdXJlbnQgaGVyZSwgd2Ugd2FudCB0byBjb252ZXJ0IHRoZSBiaW5kaW5ncwp0byBZQU1MIGFu
ZCB3ZSBjYW4ndCBjb25zaWRlciBub24tY29tcGxpYW50IERUIHNvdXJjZXMgdG8gcHJldmVudCB0
aGVtLgoKUmVnYXJkcywKRXplcXVpZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
