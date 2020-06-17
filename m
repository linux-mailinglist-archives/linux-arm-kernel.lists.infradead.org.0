Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7F51FCDB4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 14:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nmNpDtrVLPzy9qnXWCzkvtp6nZIcLc+46ptjjJNDAG0=; b=MrdTWqlfd+HQVlUw2QBde49zW
	3gIZ8vUICjTgoZR0kW9SFgtnE0O89f94ZIMf410l+GRLNoGm7g2aowNCz4taGCptS1b4RIvabsFNv
	2QotlZLpyW7EPAvoLUtssWmH1z64aF0ayzb/GlLnVO7dUENw+LKz+ZigvUthu8VITVu30rHGNLJDE
	NB5mkrlJXs/JVJJkKe6iNu0l9KkC6Tq7bCR6owhmEAF8AcA2dVh5240YNNZYXjYELwEJohXMt4rLO
	IJ/kv7SL9hkbq4ud2DtxFhC5qGoCPWM0ii5JNDVlw5TqEJMMBEywnGgKI4QRwVVT1ODtThgr/kdgi
	CFPCGP9Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlXWH-00086L-Bi; Wed, 17 Jun 2020 12:50:21 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlXW8-00085V-Eg
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 12:50:14 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05HCo4X6095317;
 Wed, 17 Jun 2020 07:50:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592398204;
 bh=BXXLlXyiZ34Pa+skFKuCFmgnUEithsnyVV/ercr7hMg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=g48g+UOOzBxkV+1nKxOOKDEkHZOSrWF5cwzwCmXc3ket7nwIC2fo6XxfS/2UG8iLd
 q9MZK5aYhm3zhEnYh/JlgIPwoU3kll0336ljll0hrFOy+XzHuYjyh2GQVhO3QQhsyi
 kPwkG4NynPsW3rZEK7BHJhfTWI4YRrJ7dVX/zufo=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05HCo4Nl128396
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 17 Jun 2020 07:50:04 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 17
 Jun 2020 07:50:04 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 17 Jun 2020 07:50:04 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05HCnxCX006519;
 Wed, 17 Jun 2020 07:50:00 -0500
Subject: Re: [PATCH 1/5] drm/omap: Fix suspend resume regression after
 platform data removal
To: Tomi Valkeinen <tomi.valkeinen@ti.com>, Tony Lindgren <tony@atomide.com>
References: <20200531193941.13179-1-tony@atomide.com>
 <20200531193941.13179-2-tony@atomide.com>
 <16ba1808-5c7f-573d-8dd0-c80cac2f476e@ti.com>
 <20200603140639.GG37466@atomide.com>
 <47e286dd-f87a-4440-5bde-1f7b53e8b672@ti.com>
 <20200609151943.GL37466@atomide.com>
 <9ed70121-2a53-d2b3-051a-88eb83e6c53f@ti.com>
 <d03dd04f-6f2c-25ba-fe1f-d5fc0dfb5c68@ti.com>
 <592501c9-2d94-b266-ae76-e383d3bffa29@ti.com>
 <20200616153042.GZ37466@atomide.com>
 <3f2855cc-48b8-ecb8-5d92-beeabe344b26@ti.com>
 <d0488631-e2d8-115f-9900-5838147ec674@ti.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <8404d47b-33bb-499f-4d50-33501e7c5921@ti.com>
Date: Wed, 17 Jun 2020 15:49:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <d0488631-e2d8-115f-9900-5838147ec674@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_055012_659525_105CCE84 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.23.249 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Suman Anna <s-anna@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxNy8wNi8yMDIwIDA5OjA0LCBUb21pIFZhbGtlaW5lbiB3cm90ZToKPiBPbiAxNi8wNi8y
MDIwIDE5OjU2LCBHcnlnb3JpaSBTdHJhc2hrbyB3cm90ZToKPj4KPj4KPj4gT24gMTYvMDYvMjAy
MCAxODozMCwgVG9ueSBMaW5kZ3JlbiB3cm90ZToKPj4+ICogVG9taSBWYWxrZWluZW4gPHRvbWku
dmFsa2VpbmVuQHRpLmNvbT4gWzIwMDYxNiAxMzowMl06Cj4+Pj4gT24gMTEvMDYvMjAyMCAxNzow
MCwgR3J5Z29yaWkgU3RyYXNoa28gd3JvdGU6Cj4+Pj4+IEkgdGhpbmssIHN1c3BlbmQgbWlnaHQg
YmUgZml4ZWQgaWYgYWxsIGRldmljZXMsIHdoaWNoIGFyZSBub3cgY2hpbGQgb2YgdGktc3lzYywg
d2lsbCBkbwo+Pj4+PiBwbV9ydW50aW1lX2ZvcmNlX3h4eCgpIGNhbGxzIGF0IG5vaXJxIHN1c3Bl
bmQgc3RhZ2UgYnkgYWRkaW5nOgo+Pj4+Pgo+Pj4+PiDCoCDCoMKgwqDCoFNFVF9OT0lSUV9TWVNU
RU1fU0xFRVBfUE1fT1BTKHBtX3J1bnRpbWVfZm9yY2Vfc3VzcGVuZCwKPj4+Pj4gwqAgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBtX3J1bnRpbWVfZm9yY2VfcmVz
dW1lKQo+Pj4+Pgo+Pj4+PiBBbSBJIG1pc3Npbmcgc210aD8KPj4+Pgo+Pj4+IElzbid0IHRoaXMg
YWxtb3N0IGV4YWN0bHkgdGhlIHNhbWUgbXkgcGF0Y2ggZG9lcz8gSSBqdXN0IHVzZWQgc3VzcGVu
ZF9sYXRlCj4+Pj4gYW5kIHJlc3VtZV9lYXJseS4gSXMgbm9pcnEgcGhhc2UgYmV0dGVyIHRoYW4g
bGF0ZSAmIGVhcmx5Pwo+Pj4KPj4+IFdlbGwgdXAgdG8geW91IGFzIGZhciBhcyBJJ20gY29uY2Vy
bmVkLiBUaGUgbm9pcnEgcGhhc2UgY29tZXMgd2l0aCBzZXJpb3VzCj4+PiBsaW1pdGF0aW9ucywg
Zm9yIGxldCdzIHNheSBpMmMgYnVzIHVzYWdlIGlmIG5lZWRlZC4gUHJvYmFibHkgYWxzbyBoYXJk
ZXIKPj4+IHRvIGRlYnVnIGZvciBzdXNwZW5kIGFuZCByZXN1bWUuCj4+Cj4+IFVuZm9ydHVuYXRl
bHksIHlvdSBjYW4ndCB1c2UgUE0gcnVudGltZSBmb3JjZSBBUEkgYXQgLnN1c3BlbmQoKSBzdGFn
ZSBhcyBwbV9ydW50aW1lX2dldCB3aWxsIHN0aWxsIHdvcmsgYW5kCj4+IHRoZXJlIGlzIG5vIHN5
bmMgYmV0d2VlbiBzdXNwZW5kIGFuZCBwbV9ydW50aW1lLgo+PiBUaGUgUE0gcnVudGltZSBmb3Jj
ZSBBUEkgY2FuIGJlIHVzZWQgb25seSBkdXJpbmcgbGF0ZS9ub2lycSBhcyBhdCB0aGlzIHRpbWUg
cG1fcnVudGltZSBpcyBkaXNhYmxlZC4KPiAKPiBZZXMsIGJ1dCB3aGljaCBvbmUuLi4gRG8geW91
IGtub3cgd2hhdCB0aGUgZGlmZiBpcyB3aXRoIGxhdGUvbm9pcnEgZnJvbSBkcml2ZXIncyBwZXJz
cGVjdGl2ZT8gSSBndWVzcyBub2lycSBpcyBhdG9taWMgY29udGV4dCwgbGF0ZSBpcyBudG8/Cgpu
b2lycSBpcyAqbm90KiBhdG9taWMsIGp1cyBJUlFzIChub24td2FrZXVwKSB3aWxsIGJlIGRpc2Fi
bGVkIChkaXNiYWxlX2lycSgpKQoKPiAKPiBEaXNwYydzIHN1c3BlbmQgdXNlcyBzeW5jaHJvbml6
ZV9pcnEoKSwgc28gdGhhdCBydWxlcyBvdXQgbm9pcnEuIEFsdGhvdWdoIHRoZSBjYWxsIGlzIG5v
dCBuZWVkZWQgaWYgdXNpbmcgbm9pcnEgdmVyc2lvbiwgc28gdGhhdCBjb3VsZCBhbHNvIGJlIG1h
bmFnZWQgd2l0aCBzbWFsbCBjaGFuZ2UuIEJ1dCBJIHdvbmRlciBpZiB0aGVyZSdzIGFueSBiZW5l
Zml0IGluIHVzaW5nIG5vaXJxIHZlcnN1cyBsYXRlLgoKCgoKLS0gCkJlc3QgcmVnYXJkcywKZ3J5
Z29yaWkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
