Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFE49274A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 16:44:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OaX9Rk8aCbQjkWx0JSQJYL3g8K5OrzM7x6b9C6qXkrc=; b=NWSq1k8lSEobi0
	4XHF/GWbn9/Nx5Fd8p+MKIoTYZEkKRr9Q6rv4z9JXVo1FrWgNH6dcL25YvH0X68X5v89aT2LDcXPp
	gNvuwmKVqyYeEu9Um/zfGJXmD52ncd4alneIxPGjVie9sXItw0iYrSpapgoAFS9gl8/JsE6y3mmmo
	7lNxjIq0U10yPbOuqlMddrSWtyOwFwRUsIiEXPRgp71CQuxWtgfwKH7TXMeLjzSMKh2565/DmHLmL
	fwEiviNwC1ayh9lGPmp4iMcqBAiwT+mmdYkt/C0hGGnoM8mg+9ZcVK0NRnz1Rcj9ORFQq8UVF+sCN
	lbAwfDnN8zdR69HM9jsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzitY-0007Z1-Hc; Mon, 19 Aug 2019 14:44:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzitM-0007Ts-Oq; Mon, 19 Aug 2019 14:44:18 +0000
Received: from c-73-71-116-68.hsd1.ca.comcast.net ([73.71.116.68]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hzisw-0007Hy-Me; Mon, 19 Aug 2019 16:43:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2] arm: dts: rockchip: fix vcc_host_5v regulator for usb3
 host
Date: Mon, 19 Aug 2019 16:43:45 +0200
Message-ID: <3811189.poQrIVWTgf@phil>
In-Reply-To: <208c56e1-bfe0-a982-927d-bdddc3116631@rock-chips.com>
References: <20190815081252.27405-1-kever.yang@rock-chips.com>
 <2932927.UJgUFA1Pmh@phil>
 <208c56e1-bfe0-a982-927d-bdddc3116631@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_074416_955255_FFCCF5C6 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Jonas Karlman <jonas@kwiboo.se>, Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Tomohiro Mayama <parly-gh@iris.mystia.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS2V2ZXIsCgpBbSBNb250YWcsIDE5LiBBdWd1c3QgMjAxOSwgMDI6Mjk6MzEgQ0VTVCBzY2hy
aWViIEtldmVyIFlhbmc6Cj4gSGkgSGVpa28sCj4gCj4gT24gMjAxOS84LzE2IOS4i+WNiDg6MjQs
IEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+ID4gSGkgS2V2ZXIsIFRMLAo+ID4KPiA+IFthZGRlZCBU
TCBMaW0gZm9yIGNsYXJpZmljYXRpb25dCj4gPgo+ID4gQW0gRG9ubmVyc3RhZywgMTUuIEF1Z3Vz
dCAyMDE5LCAxMDoxMjo1MiBDRVNUIHNjaHJpZWIgS2V2ZXIgWWFuZzoKPiA+PiBBY2NvcmRpbmcg
dG8gcm9jazY0IHNjaGVtZXRpYyBWMiBhbmQgVjMsIHRoZSBWQ0NfSE9TVF81ViBvdXRwdXQgaXMK
PiA+PiBjb250cm9sbGVkIGJ5IFVTQl8yMF9IT1NUX0RSViwgd2hpY2ggaXMgdGhlIHNhbWUgYXMg
VkNDX0hPU1QxXzVWLgo+ID4gVGhlIHYxIHNjaGVtYXRpY3MgSSBoYXZlIGRvIHJlZmVyZW5jZSB0
aGUgR1BJTzBfQTAgYXMgY29udHJvbGxpbmcgdGhpcwo+ID4gc3VwcGx5LCBzbyB0aGUgYmlnIHF1
ZXN0aW9uIHdvdWxkIGJlIGhvdyB0byBoYW5kbGUgdGhlIGRpZmZlcmVudCB2ZXJzaW9ucy4KPiA+
Cj4gPiBCZWNhdXNlIGFkZGluZyB0aGlzIHdvdWxkIHByb2JhYmx5IGJyZWFrIHYxIGJvYXJkcyBp
biB0aGlzIGZ1bmN0aW9uLgo+ID4KPiA+IEBUTDogd2hlcmUgdjEgYm9hcmRzIGFsc28gc29sZCBv
ciB3ZXJlIHRoZXkgb25seSB1c2VkIGR1cmluZyBkZXZlbG9wbWVudD8KPiAKPiAKPiBJIGhhdmUg
Y2hlY2sgdGhpcyB3aXRoIFRMIHdoZW4gSSBtYWtlIHRoaXMgcGF0Y2gsIHRoZSBWMSBoYXJkd2Fy
ZSB3YXMgCj4gbmV2ZXIgc29sZCBhbmQgb25seSBWMi9WMwo+IAo+IGFyZSBhdmFpbGFibGUgb24g
dGhlIG1hcmtldC4KClRoYW5rcyBmb3IgY2xlYXJpbmcgdGhpcyB1cC4gSSd2ZSBhcHBsaWVkIHRo
aXMgcGF0Y2ggZm9yIDUuNCBub3cuCgpUaGFua3MKSGVpa28KCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
