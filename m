Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8903F1991
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 16:07:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRHyZ6rwovjhOwKb42gwU6LG+6PjB1KitrN0odMEsoM=; b=N9BxmFL/fBgPWR
	S6qNwcNbB15vMDeCGIegmTYihybG6PoxuFi4xdy6DxEJirwFF7asIi/x32lWYJprQF01Kf/im9mUT
	mHrCPPguwFAIl+nBJVmPeCA23H5fskRYhHZ9mayjnaryPmPpN3azT6MnQS70Xh7W5nN4bu/iP0niK
	+zet055VROu2oK8Uc/gcy1QsI/DowA2FkIUHldE8GyaBJZk3aO1Nnfelh5MoTtM7+d1AbOR0Vbd2M
	tkyx3XjkAKWlq4Wg3R84GdX9F1BngRYsqFP5VgIDvKYeNPmUbX7UAz5V4coBuxLIgQrz6IYrmzvVq
	0lO+vXT0Dz+duqbZsBkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSMuA-00036O-Cy; Wed, 06 Nov 2019 15:07:30 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSMtz-00035X-Pz; Wed, 06 Nov 2019 15:07:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DA53BB143;
 Wed,  6 Nov 2019 15:07:17 +0000 (UTC)
Message-ID: <82d17114302562e0c553e2ea936974f77734e86b.camel@suse.de>
Subject: Re: [PATCH 1/7] dt-bindings: gpu: mali-midgard: Tidy up conversion
 to YAML
From: Andreas =?ISO-8859-1?Q?F=E4rber?= <afaerber@suse.de>
To: Rob Herring <robh@kernel.org>
Date: Wed, 06 Nov 2019 16:07:39 +0100
In-Reply-To: <CAL_JsqL3NOstoa5ZY1JE9e3Ay=WTmz153H-KbHErhi-GBX-5GA@mail.gmail.com>
References: <20191104013932.22505-1-afaerber@suse.de>
 <20191104013932.22505-2-afaerber@suse.de>
 <CAL_JsqL3NOstoa5ZY1JE9e3Ay=WTmz153H-KbHErhi-GBX-5GA@mail.gmail.com>
Organization: SUSE Linux GmbH
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_070719_981057_9975E633 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Guillaume Gardet <guillaume.gardet@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-realtek-soc@lists.infradead.org, David Airlie <airlied@linux.ie>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gTWl0dHdvY2gsIGRlbiAwNi4xMS4yMDE5LCAwODoyNCAtMDYwMCBzY2hyaWViIFJvYiBIZXJy
aW5nOgo+IE9uIFN1biwgTm92IDMsIDIwMTkgYXQgNzo0MCBQTSBBbmRyZWFzIEbDpHJiZXIgPGFm
YWVyYmVyQHN1c2UuZGU+Cj4gd3JvdGU6Cj4gPiBJbnN0ZWFkIG9mIGdyb3VwaW5nIGFscGhhYmV0
aWNhbGx5IGJ5IHRoaXJkLXBhcnR5IHZlbmRvciwgbGVhZGluZwo+ID4gdG8KPiA+IG9uZS1lbGVt
ZW50IGVudW1zLCBzb3J0IGJ5IE1hbGkgbW9kZWwgbnVtYmVyLCBhcyBkb25lIGZvciBVdGdhcmQu
Cj4gPiAKPiA+IFRoaXMgYWxyZWFkeSBhbGxvd3MgdXMgdG8gZGUtZHVwbGljYXRlIHR3byAiYXJt
LG1hbGktdDc2MCIgc2VjdGlvbnMKPiA+IGFuZAo+ID4gd2lsbCBtYWtlIGl0IGVhc2llciB0byBh
ZGQgbmV3IHZlbmRvciBjb21wYXRpYmxlcy4KPiAKPiBUaGF0IHdhcyB0aGUgaW50ZW50LiBOb3Qg
c3VyZSBob3cgSSBtZXNzZWQgdGhhdCB1cC4uLgo+IAo+IFRoaXMgcGF0Y2ggaXMgcHJvYmxlbWF0
aWMgYmVjYXVzZSB0aGVyZSdzIGNoYW5nZXMgaW4gYXJtLXNvYyBqdW5vL2R0Cj4gYnJhbmNoIGFu
ZCB0aGVyZSdzIG5vdyBhIHBhdGNoIGZvciBleHlub3M1NDIwICh0NjI4KS4gSSdkIHByb3Bvc2Ug
SQo+IGFwcGx5IHRoaXMgc3VjaCB0aGF0IHdlIGRvbid0IGdldCBhIG1lcmdlIGNvbmZsaWN0IHdp
dGgganVuby9kdCBhbmQKPiB3ZQo+IGZpbmlzaCByZXNvcnRpbmcgYWZ0ZXIgcmMxIChvciB3aGVu
IGJvdGggYnJhbmNoZXMgYXJlIGluIExpbnVzJwo+IHRyZWUpLgoKVGhpcyBzZXJpZXMgaGFzIGRl
cGVuZGVuY2llcyBmb3IgdGhlIFJlYWx0ZWstc2lkZSBSRkMgcGF0Y2hlcyBhbmQgaXMKbm90IHll
dCByZWFkeSB0byBtZXJnZSwgc28geW91IGNhbiB0YWtlIHRoaXMgcHJlcCBQQVRDSCB0aHJvdWdo
IHlvdXIKdHJlZSBmb3IgdjUuNiBwcm9iYWJseSwgb3IgZmVlbCBmcmVlIHRvIHJlYmFzZS9yZXdv
cmsgYXMgeW91IHNlZSBmaXQgLQpJJ2QganVzdCBhcHByZWNpYXRlIGJlaW5nIGNyZWRpdGVkIGF0
IGxlYXN0IHZpYSBSZXBvcnRlZC1ieS4gOikKClRoYW5rcywKQW5kcmVhcwoKLS0gClNVU0UgU29m
dHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJl
cmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVy
ZykKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
