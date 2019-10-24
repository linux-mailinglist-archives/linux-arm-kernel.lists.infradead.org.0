Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 242A6E2BBC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 10:06:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NO69nf3Dr+SYqihcsIrUxq4Zjoj6EEm/LmQM9d7+q8o=; b=T5v27gBGVgflf5
	8W5a1m1Yhag/GZzjvY200Fe8i2G1vI/T+cZ7T8u99IyIFFkB1mr5e7YZjZnqajg7OPCbezjiCvKUr
	UJxK8Wi0BhcZUEMfxCR7rfwyaWfd+MnvRn54ucBTYNPgqSw2TH78UvRblH8Eu5PKane/O6B8USO9s
	xo6is8gOoFnc84EOHR1UHlLFIb1Sr1RO+l/yZPlwcLNHy9/BZS1nzwURQE/+U8adrVlRB1kYKHmsB
	WWD3OjMaL6xZz/JJnBwm2ZDA7Be0/HVEn/wvEUUTr/QoYQqeWTDinprdRw2TYbqOtjIiHjq8g1FwR
	SIhB2g1H6zEdUjJ/xA7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNY8m-0005rV-JU; Thu, 24 Oct 2019 08:06:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNY8Z-0005pe-F4
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 08:06:28 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iNY8X-0007nH-GH; Thu, 24 Oct 2019 10:06:25 +0200
Message-ID: <ee1eaf7255a33bea853daaada702c66f1852bda5.camel@pengutronix.de>
Subject: Re: [PATCH v2 00/11] arm64: Realtek RTD1295 reset controllers
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Andreas =?ISO-8859-1?Q?F=E4rber?= <afaerber@suse.de>, 
 linux-realtek-soc@lists.infradead.org
Date: Thu, 24 Oct 2019 10:06:25 +0200
In-Reply-To: <20191023101317.26656-1-afaerber@suse.de>
References: <20191023101317.26656-1-afaerber@suse.de>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_010627_503777_C96D47D3 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKCk9uIFdlZCwgMjAxOS0xMC0yMyBhdCAxMjoxMyArMDIwMCwgQW5kcmVhcyBG
w6RyYmVyIHdyb3RlOgo+IEhlbGxvLAo+IAo+IFRoaXMgc2VyaWVzIGFkZHMgcmVzZXQgY29udHJv
bGxlcnMgZm9yIHRoZSBSZWFsdGVrIFJURDEyOTUgYW5kIFJURDExOTUgU29Dcy4KPiAKPiB2MiBh
ZG9wdHMgcmVzZXQtc2ltcGxlIGRyaXZlciBhbmQgRGVzaWduV2FyZSBiaW5kaW5ncyBhcyBzaW1w
bGlmaWNhdGlvbgo+IGFuZCBjb3ZlcnMgUlREMTE5NSwgdG9vLgo+IAo+IE5vdGUgdGhhdCByZXNl
dC1zaW1wbGUgZHJpdmVyIHdvdWxkIGFsbG93IHRvIGNvdmVyIFJURDExOTUncyByZXNldDEtMyBp
biBvbmUKPiBEVCBub2RlLCBidXQgaXQgb25seSBtYXBzIHRoZSBmaXJzdCByZXNvdXJjZSwgc28g
UlREMTI5NSdzIHJlc2V0NCB3b3VsZCBuZWVkCj4gdG8gcmVtYWluIHNlcGFyYXRlIGR1ZSB0byBh
IGdhcCBpbiBiZXR3ZWVuLiBJJ3ZlIHRoZXJlZm9yZSBsZWZ0IHRoZW0gYWxsIGFzCj4gc2VwYXJh
dGUgbm9kZXMgZm9yIG5vdy4KPiAKPiBBbHNvIG5vdGUgdGhhdCBteSBpbml0aWFsIDMyLWJpdCBh
cm0gcGF0Y2ggYWxyZWFkeSBzZWxlY3RzIFJFU0VUX0NPTlRST0xMRVIsCj4gdG8gYXZvaWQgbmVl
ZGluZyBhIHNlcGFyYXRlIHBhdGNoIGhlcmUgdG8gYWRkIHRoYXQgb25lIGxpbmUgYXMgZG9uZSBm
b3IgYXJtNjQuCj4gCj4gSWYgSSBjYW4gdGFrZSB0aGUgYmluZGluZ3MgcGF0Y2hlcyB0aHJvdWdo
IHRoZSBSZWFsdGVrIHRyZWUgdGhlbiBJIGNhbiBzcXVhc2gKPiB0aGUgdHdvIGZpbmFsIERUIHBh
dGNoZXMgZGVwZW5kaW5nIG9uIHRoZW0gaW50byB0aGUgcGF0Y2hlcyBhZGRlZCB0aGUgcmVzZXRz
LAo+IG90aGVyd2lzZSB0aGV5IG5lZWQgdG8gZ28gaW50byB2NS42IG9yIGJlIG1lcmdlZCB2aWEg
YSB0b3BpYyBicmFuY2guCgpJJ20gZmluZSB3aXRoIHRoZSBEVCBiaW5kaW5nIHBhdGNoZXMgZ29p
bmcgaW4gdGhyb3VnaCB0aGUgUmVhbHRlayB0cmVlLApmZWVsIGZyZWUgdG8gYWRkCgpBY2tlZC1i
eTogUGhpbGlwcCBaYWJlbCA8cC56YWJlbEBwZW5ndXRyb25peC5kZT4KCnRvIGJvdGguIEknbGwg
anVzdCBwaWNrIHVwIHBhdGNoZXMgMyBhbmQgNC4KCnJlZ2FyZHMKUGhpbGlwcAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
