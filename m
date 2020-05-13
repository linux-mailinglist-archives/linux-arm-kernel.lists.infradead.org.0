Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 237511D1720
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:09:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5aIpvQkUv0txFcjvMjaT0ObLTDOtSDfYtmXId3E6Xw=; b=f0W0488ODEa8mA
	37WJ0D8RJR7JGGvxAAZ/RdO9xRbWdpByIKwCkP/da4NODpaH3Yp0YURF4xt8ALcmgvIh+OaEIhcJt
	9WsLiyBuqQ1mjMrHZ1KFS77NB/Jz6C5ZF0cvu70NorYhTWJ74QrUUfzhvKDB6RK+UQ7Rm+7Y6URFZ
	i2Gl9xxVSlzoQfKxdDMy4Uas7vpbYTt6eY3at2S8aXn1BjdqradX1cd94iSjR44D6ZCd1qyfiVZVP
	3tnYgJAdiwirFXprcmjcUIoeng39m7qF/cU2lIyAjz+3w+lYKoDS1jsPYPIEjmE7sbRFnI7bkkV4i
	3bAPxIWwXRK2qhpgxtCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYs4f-0006KA-C1; Wed, 13 May 2020 14:09:29 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYs42-0005zh-Lb
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:08:55 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1A28E51F;
 Wed, 13 May 2020 16:08:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1589378918;
 bh=gh7vku4NSeMzv0KAbhmRoUNTTiQEMMmz2tOWPU+t3L0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DW8Ulm8GXyANsGVzvVAWzAOk5XS36pIHFFHuRpXd2XeugUiSohRQUz9TJb5l8Z0mK
 6VNGO4rVE3YJDcU6uAypWgeEcNmzFju/RrpWTCbtzUrqb8OVmdM35QuRXp5PoYS9O+
 YIR48/JMbXv6oU+RM7cCqj8NLsdr7FFMhYC91WUA=
Date: Wed, 13 May 2020 17:08:32 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
Subject: Re: [RFC PATCH] dt-bindings: display: ti,tfp410.txt: convert to yaml
Message-ID: <20200513140832.GI5945@pendragon.ideasonboard.com>
References: <20200428092048.14939-1-ricardo.canuelo@collabora.com>
 <3e377c73-25a3-a7b3-0604-41c54d70039e@ti.com>
 <20200506155320.GC15206@pendragon.ideasonboard.com>
 <20200513110957.dgb3axle24pmqp3a@rcn-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513110957.dgb3axle24pmqp3a@rcn-XPS-13-9360>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_070850_864841_7CA8936B 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmljYXJkbywKCk9uIFdlZCwgTWF5IDEzLCAyMDIwIGF0IDAxOjA5OjU3UE0gKzAyMDAsIFJp
Y2FyZG8gQ2HDsXVlbG8gd3JvdGU6Cj4gT24gbWnDqSAwNi0wNS0yMDIwIDE4OjUzOjIwLCBMYXVy
ZW50IFBpbmNoYXJ0IHdyb3RlOgo+ID4gSSBkaWRuJ3QgaWYgSSByZW1lbWJlciBjb3JyZWN0bHks
IEkganVzdCBtYXBwZWQgaXQgdG8gdGhlIGhhcmR3YXJlCj4gPiBmZWF0dXJlcy4gVGhlIGhhcmR3
YXJlIHJlZ2lzdGVyIGluZGVlZCB0YWtlcyBhIHZhbHVlIGJldHdlZW4gMCBhbmQgNywKPiA+IGFu
ZCB0aGF0IGlzIG1hcHBlZCB0byBbLTQsM10geCB0KFNURVApLiBJIGRvbid0IG1pbmQgZWl0aGVy
IG9wdGlvbi4KPiAKPiBJIHdhcyB0YWtpbmcgYSBsb29rIGF0IHRoZSB0aS10ZnA0MTAuYyBkcml2
ZXIgdG8gc2VlIGlmIGl0IG5lZWRzIGFueQo+IGNoYW5nZXMgdG8gc3VwcG9ydCB0aGUgdXBkYXRl
ZCBkZXNrZXcgcHJvcGVydHkgcmFuZ2VzIFswLTddLCBidXQgSSBkb24ndAo+IGZ1bGx5IHVuZGVy
c3RhbmQgd2hhdCB0aGlzIGRvZXMgKGxpbmUgMjc2KToKPiAKPiAJLyogR2V0IHRoZSBzZXR1cCBh
bmQgaG9sZCB0aW1lIGZyb20gdmVuZG9yLXNwZWNpZmljIHByb3BlcnRpZXMuICovCj4gCW9mX3By
b3BlcnR5X3JlYWRfdTMyKGR2aS0+ZGV2LT5vZl9ub2RlLCAidGksZGVza2V3IiwgKHUzMiAqKSZk
ZXNrZXcpOwo+IAlpZiAoZGVza2V3IDwgLTQgfHwgZGVza2V3ID4gMykKPiAJCXJldHVybiAtRUlO
VkFMOwo+IAo+IAl0aW1pbmdzLT5zZXR1cF90aW1lX3BzID0gbWluKDAsIDEyMDAgLSAzNTAgKiBk
ZXNrZXcpOwo+IAl0aW1pbmdzLT5ob2xkX3RpbWVfcHMgPSBtaW4oMCwgMTMwMCArIDM1MCAqIGRl
c2tldyk7Cj4gCj4gSXQgbG9va3MgbGlrZSB0aGF0IHRoZSBkcml2ZXIgZG9lc24ndCByZWFsbHkg
YXBwbHkgdGhlIGRlc2tldyBzZXR0aW5ncwo+IHRvIHRoZSBkZXZpY2UgYW5kIHRoYXQgdGhpcyBo
YXMgbm90IGJlZW4gcmVhbGx5IHRlc3RlZCwgc28gaXQncyBwcm9iYWJseQo+IG5vdCBhIGJpZyBk
ZWFsLgoKVGhlIGRyaXZlciBkb2Vzbid0IGFwcGx5IGFueSBzZXR0aW5nIHRvIHRoZSBkZXZpY2Ug
Oi0pIFRoZSB0aSxkZXNrZXcKcHJvcGVydHkgaXMgbWVhbnQgdG8gcmVwb3J0IHRoZSBkZXNrZXcg
c2V0dGluZ3Mgc2VsZWN0ZWQgYnkgdGhlIGNoaXAncwpjb25maWd1cmF0aW9uIHBpbnMsIG5vdCB0
byBzZXQgYSB2YWx1ZSB0byBiZSBwcm9ncmFtbWVkIHRvIHRoZSBkZXZpY2UuCgo+IEkgZ3Vlc3Mg
d2hhdCB5b3Ugd2FudGVkIHRvIGRvIHdhcyB0byBhZGp1c3QgdGhlIHNldHVwIGFuZCBob2xkIHRp
bWVzCj4gYXJvdW5kIDEyMDAgYW5kIDEzMDAgcHMgcmVzcGVjdGl2ZWx5IGluIGluY3JlbWVudHMv
ZGVjcmVtZW50cyBvZiAzNTAgcHMKPiBkZXBlbmRpbmcgb24gdGhlIGRlc2tldyB2YWx1ZSwgYXMg
dGhlIGRhdGFzaGVldCBkZXNjcmliZXMuIEJ1dCB0aGlzIGNvZGUKPiB3b3VsZCBzZXQgdGltaW5n
cy0+c2V0dXBfdGltZV9wcyB0byAwIHJlZ2FyZGxlc3Mgb2YgdGhlIGRlc2tldyB2YWx1ZSwKPiBh
bmQgdGltaW5ncy0+aG9sZF90aW1lX3BzIHdvdWxkIGJlIGVpdGhlciAwIG9yIGEgdmVyeSBiaWcg
aW50ZWdlciB2YWx1ZQo+IGlmIGRlc2tldyBpcyAtNCAoYm90aCBzZXR1cF90aW1lX3BzIGFuZCBo
b2xkX3RpbWVfcHMgYXJlIHUzMikuCj4gCj4gQW0gSSBtaXNzaW5nIHNvbWV0aGluZz8gV2FzIHRo
aXMgaW50ZW50aW9uYWw/CgpPb3BzLiBUaGF0J3MgZW1iYXJhc3NpbmcuLi4gSXQgc2hvdWxkIGNs
ZWFybHkgYmUgYSBtYXgoKSwgbm90IGEgbWluKCkuCkFuZCBvbmx5IGZvciBob2xkX3RpbWVfcHMg
aXMgdGhpcyByZXF1aXJlZC4KCldvdWxkIHlvdSBsaWtlIHRvIHNlbmQgYSBwYXRjaCwgb3Igc2hv
dWxkIEkgZG8gc28gPwoKLS0gClJlZ2FyZHMsCgpMYXVyZW50IFBpbmNoYXJ0CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
