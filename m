Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C689727121
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 22:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yI0dvARsYyO8hjlULLfOb0hDpDsjjjFUARfb0vZdSHo=; b=jyWyE2Yw+eXibz
	5mr9ciKgoEdXrVEUdzlMuhhWFgpXkBplT1F8n4lUPivNmFmf9Ge0ehQ4UCtlS4sFCpp4gc/oX3zJ3
	aQTZpqA7MxGOeBsGrMfK1y/ehg+8QLE1oz6FbXa7VzwDGHdNVdOp1dF+AArNBzsIUsA7T+ZyUDubh
	NzmOP6wD+pxRM/VyFlGy2S+rd1chzyRFDBAxEnEX1A+KSZS0WGEmPncrutcdssqUHTk9ZZDa9kCXQ
	oXFC//7hvk3QAU0eGxfPEMUxjMnMgWTSxInHGuXSDrQdYTJ3QIiNyVkqXHZjZTfVk02FOzh8usiGt
	EpZNvcOCatXf1sW+OOmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTYDF-00042P-FP; Wed, 22 May 2019 20:51:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTYD8-000424-6b
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 20:51:43 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CBAB217D7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 20:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558558301;
 bh=dcl6XpzG1DDiMx3oHbMcInJ4R+XbGpCs4f6YYoK6WEk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LJZbItmKpX56PBXWugXHQzTgAjsfEm5s1uaBT2O8qqjizQ/Es1rq0wQCtlYQF+jCB
 cjUHCJjB6zbf4/stUzWPHJTzh7/zwfY+5Jx2/LRyFn/O9x2nw/3NqkFQdaZpfBkbE2
 okPV6H9Cu2UdrP1Nh4TKrBEgZ92kMJasUrH+HspE=
Received: by mail-qt1-f177.google.com with SMTP id t1so4132755qtc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 13:51:41 -0700 (PDT)
X-Gm-Message-State: APjAAAXhWGKrTDFUS3DjpQ+BC/BUQY9YZKf5e3mbtkO6iZPDHSkkeQEO
 Dg8gkbd0dr7j2hfsJ/FObTft1fZFAWv4PLn9+A==
X-Google-Smtp-Source: APXvYqyuy3fJbwEjpTWrBUVbta5lNl+N55jezZNxTU+YA/kaLAInc8ArDeyhPPPfhRkmH2QkuaA5kq4A9TjtCfyoUE8=
X-Received: by 2002:aed:3f5b:: with SMTP id q27mr75854887qtf.143.1558558300682; 
 Wed, 22 May 2019 13:51:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190521161102.29620-1-peron.clem@gmail.com>
 <CAL_Jsq+86nNEBzjbf_GLWWrAN91jwU+JQ7zrEoFaT_dxUzVv4A@mail.gmail.com>
 <CAJiuCcdPXdG1ZcWypJZy_d04c2obEuqFZXna-voMmbK6Au84CA@mail.gmail.com>
In-Reply-To: <CAJiuCcdPXdG1ZcWypJZy_d04c2obEuqFZXna-voMmbK6Au84CA@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 22 May 2019 15:51:29 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJAMTmSiPD4RqcW_uSPXda-+ifjVKpJ4Xc_C6mx5phaig@mail.gmail.com>
Message-ID: <CAL_JsqJAMTmSiPD4RqcW_uSPXda-+ifjVKpJ4Xc_C6mx5phaig@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] Allwinner H6 Mali GPU support
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_135142_331647_EC30A1AF 
X-CRM114-Status: GOOD (  24.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Linux IOMMU <iommu@lists.linux-foundation.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMjIsIDIwMTkgYXQgMjo0MSBQTSBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNs
ZW1AZ21haWwuY29tPiB3cm90ZToKPgo+IEhpIFJvYiwKPgo+IE9uIFdlZCwgMjIgTWF5IDIwMTkg
YXQgMjE6MjcsIFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+
IE9uIFR1ZSwgTWF5IDIxLCAyMDE5IGF0IDExOjExIEFNIENsw6ltZW50IFDDqXJvbiA8cGVyb24u
Y2xlbUBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBIaSwKPiA+ID4KPiA+ID4gVGhlIEFs
bHdpbm5lciBINiBoYXMgYSBNYWxpLVQ3MjAgTVAyIHdoaWNoIHNob3VsZCBiZSBzdXBwb3J0ZWQg
YnkKPiA+ID4gdGhlIG5ldyBwYW5mcm9zdCBkcml2ZXIuIFRoaXMgc2VyaWVzIGZpeCB0d28gaXNz
dWVzIGFuZCBpbnRyb2R1Y2UgdGhlCj4gPiA+IGR0LWJpbmRpbmdzIGJ1dCBhIHNpbXBsZSBiZW5j
aG1hcmsgc2hvdyB0aGF0IGl0J3Mgc3RpbGwgTk9UIFdPUktJTkcuCj4gPiA+Cj4gPiA+IEknbSBw
dXNoaW5nIGl0IGluIGNhc2Ugc29tZW9uZSB3YW50IHRvIGNvbnRpbnVlIHRoZSB3b3JrLgo+ID4g
Pgo+ID4gPiBUaGlzIGhhcyBiZWVuIHRlc3RlZCB3aXRoIE1lc2EzRCAxOS4xLjAtUkMyIGFuZCBh
IEdQVSBiaXRuZXNzIHBhdGNoWzFdLgo+ID4gPgo+ID4gPiBPbmUgcGF0Y2ggaXMgZnJvbSBJY2Vu
b3d5IFpoZW5nIHdoZXJlIEkgY2hhbmdlZCB0aGUgb3JkZXIgYXMgcmVxdWlyZWQKPiA+ID4gYnkg
Um9iIEhlcnJpbmdbMl0uCj4gPiA+Cj4gPiA+IFRoYW5rcywKPiA+ID4gQ2xlbWVudAo+ID4gPgo+
ID4gPiBbMV0gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2tzemFxL21lc2EvdHJlZS9w
YW5mcm9zdF82NF8zMgo+ID4gPiBbMl0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRj
aC8xMDY5OTgyOS8KPiA+ID4KPiA+ID4KPiA+ID4gWyAgMzQ1LjIwNDgxM10gcGFuZnJvc3QgMTgw
MDAwMC5ncHU6IG1tdSBpcnEgc3RhdHVzPTEKPiA+ID4gWyAgMzQ1LjIwOTYxN10gcGFuZnJvc3Qg
MTgwMDAwMC5ncHU6IFVuaGFuZGxlZCBQYWdlIGZhdWx0IGluIEFTMCBhdCBWQQo+ID4gPiAweDAw
MDAwMDAwMDI0MDA0MDAKPiA+ID4gWyAgMzQ1LjIwOTYxN10gUmVhc29uOiBUT0RPCj4gPiA+IFsg
IDM0NS4yMDk2MTddIHJhdyBmYXVsdCBzdGF0dXM6IDB4ODAwMDAyQzEKPiA+ID4gWyAgMzQ1LjIw
OTYxN10gZGVjb2RlZCBmYXVsdCBzdGF0dXM6IFNMQVZFIEZBVUxUCj4gPiA+IFsgIDM0NS4yMDk2
MTddIGV4Y2VwdGlvbiB0eXBlIDB4QzE6IFRSQU5TTEFUSU9OX0ZBVUxUX0xFVkVMMQo+ID4gPiBb
ICAzNDUuMjA5NjE3XSBhY2Nlc3MgdHlwZSAweDI6IFJFQUQKPiA+ID4gWyAgMzQ1LjIwOTYxN10g
c291cmNlIGlkIDB4ODAwMAo+ID4gPiBbICAzNDUuNzI5OTU3XSBwYW5mcm9zdCAxODAwMDAwLmdw
dTogZ3B1IHNjaGVkIHRpbWVvdXQsIGpzPTAsCj4gPiA+IHN0YXR1cz0weDgsIGhlYWQ9MHgyNDAw
NDAwLCB0YWlsPTB4MjQwMDQwMCwgc2NoZWRfam9iPTAwMDAwMDAwOWUyMDRkZTkKPiA+ID4gWyAg
MzQ2LjA1NTg3Nl0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IG1tdSBpcnEgc3RhdHVzPTEKPiA+ID4g
WyAgMzQ2LjA2MDY4MF0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IFVuaGFuZGxlZCBQYWdlIGZhdWx0
IGluIEFTMCBhdCBWQQo+ID4gPiAweDAwMDAwMDAwMDJDMDBBMDAKPiA+ID4gWyAgMzQ2LjA2MDY4
MF0gUmVhc29uOiBUT0RPCj4gPiA+IFsgIDM0Ni4wNjA2ODBdIHJhdyBmYXVsdCBzdGF0dXM6IDB4
ODEwMDAyQzEKPiA+ID4gWyAgMzQ2LjA2MDY4MF0gZGVjb2RlZCBmYXVsdCBzdGF0dXM6IFNMQVZF
IEZBVUxUCj4gPiA+IFsgIDM0Ni4wNjA2ODBdIGV4Y2VwdGlvbiB0eXBlIDB4QzE6IFRSQU5TTEFU
SU9OX0ZBVUxUX0xFVkVMMQo+ID4gPiBbICAzNDYuMDYwNjgwXSBhY2Nlc3MgdHlwZSAweDI6IFJF
QUQKPiA+ID4gWyAgMzQ2LjA2MDY4MF0gc291cmNlIGlkIDB4ODEwMAo+ID4gPiBbICAzNDYuNTYx
OTU1XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogZ3B1IHNjaGVkIHRpbWVvdXQsIGpzPTEsCj4gPiA+
IHN0YXR1cz0weDgsIGhlYWQ9MHgyYzAwYTAwLCB0YWlsPTB4MmMwMGEwMCwgc2NoZWRfam9iPTAw
MDAwMDAwYjU1YTlhODUKPiA+ID4gWyAgMzQ2LjU3MzkxM10gcGFuZnJvc3QgMTgwMDAwMC5ncHU6
IG1tdSBpcnEgc3RhdHVzPTEKPiA+ID4gWyAgMzQ2LjU3ODcwN10gcGFuZnJvc3QgMTgwMDAwMC5n
cHU6IFVuaGFuZGxlZCBQYWdlIGZhdWx0IGluIEFTMCBhdCBWQQo+ID4gPiAweDAwMDAwMDAwMDJD
MDBCODAKPiA+ID4KPiA+ID4gQ2hhbmdlIGluIHY1Ogo+ID4gPiAgLSBSZW1vdmUgZml4IGluZGVu
dAo+ID4gPgo+ID4gPiBDaGFuZ2VzIGluIHY0Ogo+ID4gPiAgLSBBZGQgYnVzX2Nsb2NrIHByb2Jl
Cj4gPiA+ICAtIEZpeCBzYW5pdHkgY2hlY2sgaW4gaW8tcGd0YWJsZQo+ID4gPiAgLSBBZGQgdnJh
bXAtZGVsYXkKPiA+ID4gIC0gTWVyZ2UgYWxsIGJvYXJkcyBpbnRvIG9uZSBwYXRjaAo+ID4gPiAg
LSBSZW1vdmUgdXBzdHJlYW1lZCBOZWlsIEEuIHBhdGNoCj4gPiA+Cj4gPiA+IENoYW5nZSBpbiB2
MyAoVGhhbmtzIHRvIE1heGltZSBSaXBhcmQpOgo+ID4gPiAgLSBSZWF1dGhvciBJY2Vub3d5IGZv
ciBoZXIgcGF0aAo+ID4gPgo+ID4gPiBDaGFuZ2VzIGluIHYyIChUaGFua3MgdG8gTWF4aW1lIFJp
cGFyZCk6Cj4gPiA+ICAtIERyb3AgR1BVIE9QUCBUYWJsZQo+ID4gPiAgLSBBZGQgY2xvY2tzIGFu
ZCBjbG9jay1uYW1lcyBpbiByZXF1aXJlZAo+ID4gPgo+ID4gPiBDbMOpbWVudCBQw6lyb24gKDUp
Ogo+ID4gPiAgIGRybTogcGFuZnJvc3Q6IGFkZCBvcHRpb25hbCBidXNfY2xvY2sKPiA+ID4gICBp
b21tdTogaW8tcGd0YWJsZTogZml4IHNhbml0eSBjaGVjayBmb3Igbm9uIDQ4LWJpdCBtYWxpIGlv
bW11Cj4gPiA+ICAgZHQtYmluZGluZ3M6IGdwdTogbWFsaS1taWRnYXJkOiBBZGQgSDYgbWFsaSBn
cHUgY29tcGF0aWJsZQo+ID4gPiAgIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogQWRkIEFSTSBNYWxp
IEdQVSBub2RlIGZvciBINgo+ID4gPiAgIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogQWRkIG1hbGkg
R1BVIHN1cHBseSBmb3IgSDYgYm9hcmRzCj4gPiA+Cj4gPiA+IEljZW5vd3kgWmhlbmcgKDEpOgo+
ID4gPiAgIGR0LWJpbmRpbmdzOiBncHU6IGFkZCBidXMgY2xvY2sgZm9yIE1hbGkgTWlkZ2FyZCBH
UFVzCj4gPgo+ID4gSSd2ZSBhcHBsaWVkIHBhdGNoZXMgMSBhbmQgMyB0byBkcm0tbWlzYy4gSSB3
YXMgZ29pbmcgdG8gZG8gcGF0Y2ggNAo+ID4gdG9vLCBidXQgaXQgZG9lc24ndCBhcHBseS4KPgo+
IFRoYW5rcywKPgo+IEkgaGF2ZSB0cmllZCB0byBhcHBsaWVkIG9uIGRybS1taXNjL2Zvci1saW51
eC1uZXh0IGJ1dCBpdCBkb2Vzbid0IGFwcGx5IHRvby4KPiBJdCBsb29rcyBsaWtlIGNvbW1pdCBk
NWZmMWFkYjM4MDllMmY3NGEzYjU3Y2VhMmU1N2M4ZTM3ZDY5M2M0IGlzCj4gbWlzc2luZyBvbiBk
cm0tbWlzYyA/Cj4gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2NvbW1pdC9kNWZm
MWFkYjM4MDllMmY3NGEzYjU3Y2VhMmU1N2M4ZTM3ZDY5M2M0I2RpZmYtYzMxNzJmNWQ0MjFkNDky
ZmY5MWQ3YmI0NGRkNDQ5MTcKCjUuMi1yYzEgaXMgbWVyZ2VkIGluIG5vdyBhbmQgSSd2ZSBhcHBs
aWVkIHBhdGNoIDQuCgpSb2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
