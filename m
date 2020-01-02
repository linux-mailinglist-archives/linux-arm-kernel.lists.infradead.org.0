Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 491FF12EB40
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 22:20:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1+MbuZXZ0VaLTppT1rUYUTABvj4EjKZJ7b7ns8MGH0=; b=u+DZsq/EXNdmvq
	DU09uzpbDTk5RZ6TWWSqfc4enU1kbN3WWcTp0AJ/P02BpnpSmnp1S6vxs3YyU8+8yL0qyHh72/O8u
	blBAYuPKUsOio6mDBRIPU9OftKT9HzsgMXPefDC8q2prwRkPJtPsZNwCFrh+PRTH6tYMkwPis1SDA
	7SLnOWOpANnR6v0TwzTgtd9Gn0YgcU4e3Bu6Xhj+iZSST5qd5mvEVBJMRA5Ize385WkChK08ffwd3
	JW677kSIM2vzrwchWvqVtNEDytOQ8nq0VxDWfCkPtsiM/teL+AuYGNr0927kYlepGRf5yxYgv4Cxg
	hHzXmC+WbWpMQbxS/oMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in7t9-0000r2-7F; Thu, 02 Jan 2020 21:20:15 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in7t1-0000Dj-8c
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 21:20:09 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 7871F8087;
 Thu,  2 Jan 2020 21:20:44 +0000 (UTC)
Date: Thu, 2 Jan 2020 13:20:00 -0800
From: Tony Lindgren <tony@atomide.com>
To: =?utf-8?B?QW5kcsOp?= Hentschel <nerv@dawncrow.de>
Subject: Re: [PATCH v2 1/2] ARM: dts: Move interconnect target module for
 omap3 sgx to separate dtsi files
Message-ID: <20200102212000.GG16702@atomide.com>
References: <20191230202037.28836-1-nerv@dawncrow.de>
 <20200102193359.GE16702@atomide.com>
 <9e39831c-bfa8-d497-7d3e-ff6ec04b8e52@dawncrow.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9e39831c-bfa8-d497-7d3e-ff6ec04b8e52@dawncrow.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_132007_347618_1F6C3D69 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux@arm.linux.org.uk,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, bcousson@baylibre.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KiBBbmRyw6kgSGVudHNjaGVsIDxuZXJ2QGRhd25jcm93LmRlPiBbMjAwMTAyIDIxOjE2XToKPiBB
bSAwMi4wMS4yMCB1bSAyMDozMyBzY2hyaWViIFRvbnkgTGluZGdyZW46Cj4gPiAqIEFuZHLDqSBI
ZW50c2NoZWwgPG5lcnZAZGF3bmNyb3cuZGU+IFsxOTEyMzAgMjA6MjJdOgo+ID4+IE9ubHkgZG0z
NzMwIGFuZCBhbTM3MTUgY29tZSB3aXRoIFNHWCBzdXBwb3J0Cj4gPiAKPiA+IEFGQUlLIGRtMzcz
MCBpcyBqdXN0IGEgbWFya2V0aW5nIG5hbWUgZm9yIGEgY2F0YWxvZyB2ZXJzaW9uIG9mCj4gPiBv
bWFwMzYzMC4gU28gdXNpbmcgb21hcDM2eHguZHRzaSBpcyBjb3JyZWN0IGFuZCB3ZSBzaG91bGQg
bm90Cj4gPiBjaGFuZ2UgdGhhdC4KPiA+IAo+ID4gQ2FuIHlvdSBwbGVhc2UganVzdCBhZGQgYSBt
aW5pbWFsIGRtMzcyNS5kdHNpIHRoYXQgeW91ciBib2FyZCBkdHMKPiA+IGNhbiBpbmNsdWRlIGFu
ZCBhdm9pZCBkaXNhYmxpbmcgc2d4IGluIHRoZSBib2FyZCBzcGVjaWZpYyBmaWxlPwo+ID4gVGhh
dCBpcyBhc3N1bWluZyB5b3UgaGF2ZSBkbTM3MjUgd2l0aCBkc3AgYW5kIGlzcCBidXQgbm8gc2d4
Lgo+IAo+IEkgcmVtb3ZlZCB0aGUgc2d4IGRpc2FibGUgcGFydCBhbHJlYWR5IGluIDIvMi4KPiBD
b25zdWx0aW5nIG15IHRhYmxlOgo+ICAgICAgRE0zNzMwIHwgRE0zNzI1IHwgQU0zNzE1IHwgQU0z
NzAzCj4gRFNQICAgIFggICAgfCAgIFggICAgfCAgICAgICAgfCAgICAKPiBTR1ggICAgWCAgICB8
ICAgICAgICB8ICAgWCAgICB8ICAgIAo+IFdoZXJlIFggaXMgInN1cHBvcnRlZCIKPiAKPiBTbyBp
bmNsdWRpbmcgb21hcDYzeHguZHRzaSBzZWVtcyByaWdodCBhZnRlciB0aGlzIHBhdGNoIG1vdmVz
IHRoZQo+IHNneCBwYXJ0IHRvIHNlcGFyYXRlIGR0c2kuIE9yIGRvIHlvdSB3YW50IHRvIGhhdmUg
dGhlIHN4Zwo+IGRpc2FibGluZyBpbiB0aGUgZG0zNzI1LmR0c2k/CgpZZXMgcGxlYXNlIGp1c3Qg
YWRkIGEgbWluaW1hbCBkbTM3MjUuZHRzaSBpbmNsdWRpbmcgb21hcDM2eHguZHRzaQphbmQgc2V0
dGluZyBzZ3ggdG8gc3RhdHVzID0gImRpc2FibGVkIi4gQW5kIHRoZW4geW91IGNhbiBpbmNsdWRl
CmRtMzcyNS5kdHNpIGZyb20geW91ciBib2FyZCBzcGVjaWZpYyBkdHMgZmlsZS4KCj4gPiBZb3Ug
Y2FuIHJlYWQgdGhlIGRldGVjdGVkIFNvQyB3aXRoOgo+ID4gCj4gPiAjIGNhdCAvc3lzL2J1cy9z
b2MvZGV2aWNlcy9zb2MwL21hY2hpbmUKPiAKPiAjIGNhdCAvc3lzL2J1cy9zb2MvZGV2aWNlcy9z
b2MwL21hY2hpbmUKPiBETTM3MjUKPiAjIGNhdCAvc3lzL2J1cy9zb2MvZGV2aWNlcy9zb2MwL3Jl
dmlzaW9uIAo+IEVTMS4yCgpPSyB5ZWFoIG1ha2VzIHNlbnNlIGZvciB0aGF0IHByb2R1Y3QgYXMg
cG90ZW50aWFsbHkgb25seSB0aGUgZHNwCmlzIHVzZWQgZm9yIGF1ZGlvLgoKUmVnYXJkcywKClRv
bnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
