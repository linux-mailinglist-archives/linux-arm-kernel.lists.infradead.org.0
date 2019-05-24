Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2722F29CF4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m/ZLF5Um4fQJEs/eGrQM/Jt0xEYiky3w0iWyGjtHfXo=; b=U1WhvpQucZg6haXPwq08VbcLa
	w2AUtk4ALut+GGOIJ/4rBhgv42m2KZvqBSUcr+4jhPAOJf+BQkIO4Hqf1esW0mCN3wEUNkUq3E6gg
	xrqqNb9wT9LbE15haFseJp+Ltnog/1a/3fm6aHgRy6npWnP2T8DZ7IZLtWk0bgv9AQ3SEP86A2VHq
	ykAZXZZCdb4DIuy6u1064zbxenPhVMj+YUT7N63kFA/aUhMvrVwPn69FynRjFH1dIVCzriTToF0If
	6jhG8g1NFOa150BL15dRbs1QwYNlPhbeF0Dpx+tdEMM885+WPll+kvhJ8+RKFgSh6UXZLYgK0D//E
	umBeFv+cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUDwu-0005UM-SV; Fri, 24 May 2019 17:25:44 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUDwm-0005TX-Np
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:25:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6D0AE80D;
 Fri, 24 May 2019 10:25:34 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BB1173F703;
 Fri, 24 May 2019 10:25:31 -0700 (PDT)
Subject: Re: [PATCH v6 0/6] Allwinner H6 Mali GPU support
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, Will Deacon
 <will.deacon@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Neil Armstrong <narmstrong@baylibre.com>, Steven Price <steven.price@arm.com>
References: <20190521161102.29620-1-peron.clem@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <61088426-43cd-338b-ca77-50c00fcb7c5e@arm.com>
Date: Fri, 24 May 2019 18:25:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521161102.29620-1-peron.clem@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_102538_366588_2A1D0F93 
X-CRM114-Status: GOOD (  28.08  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjEvMDUvMjAxOSAxNzoxMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+IEhpLAo+IAo+IFRo
ZSBBbGx3aW5uZXIgSDYgaGFzIGEgTWFsaS1UNzIwIE1QMiB3aGljaCBzaG91bGQgYmUgc3VwcG9y
dGVkIGJ5Cj4gdGhlIG5ldyBwYW5mcm9zdCBkcml2ZXIuIFRoaXMgc2VyaWVzIGZpeCB0d28gaXNz
dWVzIGFuZCBpbnRyb2R1Y2UgdGhlCj4gZHQtYmluZGluZ3MgYnV0IGEgc2ltcGxlIGJlbmNobWFy
ayBzaG93IHRoYXQgaXQncyBzdGlsbCBOT1QgV09SS0lORy4KPiAKPiBJJ20gcHVzaGluZyBpdCBp
biBjYXNlIHNvbWVvbmUgd2FudCB0byBjb250aW51ZSB0aGUgd29yay4KPiAKPiBUaGlzIGhhcyBi
ZWVuIHRlc3RlZCB3aXRoIE1lc2EzRCAxOS4xLjAtUkMyIGFuZCBhIEdQVSBiaXRuZXNzIHBhdGNo
WzFdLgo+IAo+IE9uZSBwYXRjaCBpcyBmcm9tIEljZW5vd3kgWmhlbmcgd2hlcmUgSSBjaGFuZ2Vk
IHRoZSBvcmRlciBhcyByZXF1aXJlZAo+IGJ5IFJvYiBIZXJyaW5nWzJdLgo+IAo+IFRoYW5rcywK
PiBDbGVtZW50Cj4gCj4gWzFdIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9rc3phcS9t
ZXNhL3RyZWUvcGFuZnJvc3RfNjRfMzIKPiBbMl0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9y
Zy9wYXRjaC8xMDY5OTgyOS8KPiAKPiAKPiBbICAzNDUuMjA0ODEzXSBwYW5mcm9zdCAxODAwMDAw
LmdwdTogbW11IGlycSBzdGF0dXM9MQo+IFsgIDM0NS4yMDk2MTddIHBhbmZyb3N0IDE4MDAwMDAu
Z3B1OiBVbmhhbmRsZWQgUGFnZSBmYXVsdCBpbiBBUzAgYXQgVkEKPiAweDAwMDAwMDAwMDI0MDA0
MDAKPiBbICAzNDUuMjA5NjE3XSBSZWFzb246IFRPRE8KPiBbICAzNDUuMjA5NjE3XSByYXcgZmF1
bHQgc3RhdHVzOiAweDgwMDAwMkMxCj4gWyAgMzQ1LjIwOTYxN10gZGVjb2RlZCBmYXVsdCBzdGF0
dXM6IFNMQVZFIEZBVUxUCj4gWyAgMzQ1LjIwOTYxN10gZXhjZXB0aW9uIHR5cGUgMHhDMTogVFJB
TlNMQVRJT05fRkFVTFRfTEVWRUwxCj4gWyAgMzQ1LjIwOTYxN10gYWNjZXNzIHR5cGUgMHgyOiBS
RUFECj4gWyAgMzQ1LjIwOTYxN10gc291cmNlIGlkIDB4ODAwMAo+IFsgIDM0NS43Mjk5NTddIHBh
bmZyb3N0IDE4MDAwMDAuZ3B1OiBncHUgc2NoZWQgdGltZW91dCwganM9MCwKPiBzdGF0dXM9MHg4
LCBoZWFkPTB4MjQwMDQwMCwgdGFpbD0weDI0MDA0MDAsIHNjaGVkX2pvYj0wMDAwMDAwMDllMjA0
ZGU5Cj4gWyAgMzQ2LjA1NTg3Nl0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IG1tdSBpcnEgc3RhdHVz
PTEKPiBbICAzNDYuMDYwNjgwXSBwYW5mcm9zdCAxODAwMDAwLmdwdTogVW5oYW5kbGVkIFBhZ2Ug
ZmF1bHQgaW4gQVMwIGF0IFZBCj4gMHgwMDAwMDAwMDAyQzAwQTAwCj4gWyAgMzQ2LjA2MDY4MF0g
UmVhc29uOiBUT0RPCj4gWyAgMzQ2LjA2MDY4MF0gcmF3IGZhdWx0IHN0YXR1czogMHg4MTAwMDJD
MQo+IFsgIDM0Ni4wNjA2ODBdIGRlY29kZWQgZmF1bHQgc3RhdHVzOiBTTEFWRSBGQVVMVAo+IFsg
IDM0Ni4wNjA2ODBdIGV4Y2VwdGlvbiB0eXBlIDB4QzE6IFRSQU5TTEFUSU9OX0ZBVUxUX0xFVkVM
MQo+IFsgIDM0Ni4wNjA2ODBdIGFjY2VzcyB0eXBlIDB4MjogUkVBRAo+IFsgIDM0Ni4wNjA2ODBd
IHNvdXJjZSBpZCAweDgxMDAKPiBbICAzNDYuNTYxOTU1XSBwYW5mcm9zdCAxODAwMDAwLmdwdTog
Z3B1IHNjaGVkIHRpbWVvdXQsIGpzPTEsCj4gc3RhdHVzPTB4OCwgaGVhZD0weDJjMDBhMDAsIHRh
aWw9MHgyYzAwYTAwLCBzY2hlZF9qb2I9MDAwMDAwMDBiNTVhOWE4NQo+IFsgIDM0Ni41NzM5MTNd
IHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBtbXUgaXJxIHN0YXR1cz0xCj4gWyAgMzQ2LjU3ODcwN10g
cGFuZnJvc3QgMTgwMDAwMC5ncHU6IFVuaGFuZGxlZCBQYWdlIGZhdWx0IGluIEFTMCBhdCBWQQo+
IDB4MDAwMDAwMDAwMkMwMEI4MAoKRldJVyBJIHNlZW0gdG8gaGF2ZSByZXByb2R1Y2VkIHRoZSBz
YW1lIGJlaGF2aW91ciBvbiBhIGRpZmZlcmVudCBUNzIwIApzZXR1cCwgc28gdGhpcyBtYXkgd2Vs
bCBiZSBtb3JlIGFib3V0IHRoZSBHUFUgdGhhbiB0aGUgcGxhdGZvcm0uIFRoZXJlIApkb2Vzbid0
IGxvb2sgdG8gYmUgYW55dGhpbmcgb2J2aW91c2x5IHdyb25nIHdpdGggdGhlIHBhZ2V0YWJsZXMs
IGJ1dCBpZiAKSSBjYW4gZmluZCBzb21lIG1vcmUgZnJlZSB0aW1lIEkgbWF5IGhhdmUgYSBiaXQg
bW9yZSBvZiBhIHBva2UgYXJvdW5kLgoKUm9iaW4uCgo+IAo+IENoYW5nZSBpbiB2NToKPiAgIC0g
UmVtb3ZlIGZpeCBpbmRlbnQKPiAKPiBDaGFuZ2VzIGluIHY0Ogo+ICAgLSBBZGQgYnVzX2Nsb2Nr
IHByb2JlCj4gICAtIEZpeCBzYW5pdHkgY2hlY2sgaW4gaW8tcGd0YWJsZQo+ICAgLSBBZGQgdnJh
bXAtZGVsYXkKPiAgIC0gTWVyZ2UgYWxsIGJvYXJkcyBpbnRvIG9uZSBwYXRjaAo+ICAgLSBSZW1v
dmUgdXBzdHJlYW1lZCBOZWlsIEEuIHBhdGNoCj4gCj4gQ2hhbmdlIGluIHYzIChUaGFua3MgdG8g
TWF4aW1lIFJpcGFyZCk6Cj4gICAtIFJlYXV0aG9yIEljZW5vd3kgZm9yIGhlciBwYXRoCj4gCj4g
Q2hhbmdlcyBpbiB2MiAoVGhhbmtzIHRvIE1heGltZSBSaXBhcmQpOgo+ICAgLSBEcm9wIEdQVSBP
UFAgVGFibGUKPiAgIC0gQWRkIGNsb2NrcyBhbmQgY2xvY2stbmFtZXMgaW4gcmVxdWlyZWQKPiAK
PiBDbMOpbWVudCBQw6lyb24gKDUpOgo+ICAgIGRybTogcGFuZnJvc3Q6IGFkZCBvcHRpb25hbCBi
dXNfY2xvY2sKPiAgICBpb21tdTogaW8tcGd0YWJsZTogZml4IHNhbml0eSBjaGVjayBmb3Igbm9u
IDQ4LWJpdCBtYWxpIGlvbW11Cj4gICAgZHQtYmluZGluZ3M6IGdwdTogbWFsaS1taWRnYXJkOiBB
ZGQgSDYgbWFsaSBncHUgY29tcGF0aWJsZQo+ICAgIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogQWRk
IEFSTSBNYWxpIEdQVSBub2RlIGZvciBINgo+ICAgIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogQWRk
IG1hbGkgR1BVIHN1cHBseSBmb3IgSDYgYm9hcmRzCj4gCj4gSWNlbm93eSBaaGVuZyAoMSk6Cj4g
ICAgZHQtYmluZGluZ3M6IGdwdTogYWRkIGJ1cyBjbG9jayBmb3IgTWFsaSBNaWRnYXJkIEdQVXMK
PiAKPiAgIC4uLi9iaW5kaW5ncy9ncHUvYXJtLG1hbGktbWlkZ2FyZC50eHQgICAgICAgICB8IDE1
ICsrKysrKysrKysrKy0KPiAgIC4uLi9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdz
MS5kdHMgICB8ICA2ICsrKysrCj4gICAuLi4vZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3Jhbmdl
cGktMy5kdHMgICAgfCAgNiArKysrKwo+ICAgLi4uL2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9y
YW5nZXBpLmR0c2kgICAgIHwgIDYgKysrKysKPiAgIC4uLi9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LXBpbmUtaDY0LmR0cyB8ICA2ICsrKysrCj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL2Fs
bHdpbm5lci9zdW41MGktaDYuZHRzaSAgfCAxNCArKysrKysrKysrKysKPiAgIGRyaXZlcnMvZ3B1
L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9kZXZpY2UuYyAgICB8IDIyICsrKysrKysrKysrKysrKysr
KysKPiAgIGRyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9kZXZpY2UuaCAgICB8ICAx
ICsKPiAgIGRyaXZlcnMvaW9tbXUvaW8tcGd0YWJsZS1hcm0uYyAgICAgICAgICAgICAgICB8ICAy
ICstCj4gICA5IGZpbGVzIGNoYW5nZWQsIDc2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
