Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2A711A87A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:01:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jd8sj5wJ4u5RZjuRlnYmALVjtdCAeDXXYhVU7ycy8Mg=; b=Pa5YE4iI1jgEIs
	RyAn7m6hNdLu82M8neqYCr4PZ87ngnT3xzx44lQecWDn1QXQdJemQSoHIg1WmGV0PZVzpz4ZX3W6n
	OdyggWex3V7BFGnWV3h+4eFFsKecimOfpsMqJJ7w75kZMN7KdmPZQFliaqiuM6d1oP82iGzSfoE9T
	eLY+quuFJAcbve5+wDxLE9X2Jpv+FYWBSuumg3c/U9IGWe0Yw4sCCz6MjB7eMXKGANHSRcHloMR42
	2XQXU5HSvJ35Us0TSneSaKAdiwpBl6jftvcR+FXaGi2y6dEvtdeqQxydu8OB7KH3jVTY4fMuJrOTE
	1tvZidtj4KleaRbFmCdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyo6-0004KV-75; Wed, 11 Dec 2019 10:01:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieynm-0004AI-Ld
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 10:01:04 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ieynh-0002xu-4L; Wed, 11 Dec 2019 11:00:57 +0100
Message-ID: <c5fcb87bb36831776d17101e0e6e0e99b86f434c.camel@pengutronix.de>
Subject: Re: [PATCH] ARM: davinci: select CONFIG_RESET_CONTROLLER
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>, Arnd Bergmann
 <arnd@arndb.de>
Date: Wed, 11 Dec 2019 11:00:56 +0100
In-Reply-To: <CAMpxmJX0jAa4-52pT0rutPz9naRHb4nnZ=cDdvCMLxGh=3m_=A@mail.gmail.com>
References: <20191210195202.622734-1-arnd@arndb.de>
 <CAMpxmJX0jAa4-52pT0rutPz9naRHb4nnZ=cDdvCMLxGh=3m_=A@mail.gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_020102_756074_EFE0C571 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: arm-soc <linux-arm-kernel@lists.infradead.org>,
 Sekhar Nori <nsekhar@ti.com>, David Lechner <david@lechnology.com>,
 "Stable # 4 . 20+" <stable@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTEyLTExIGF0IDEwOjE0ICswMTAwLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdy
b3RlOgo+IHd0LiwgMTAgZ3J1IDIwMTkgbyAyMDo1MiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRi
LmRlPiBuYXBpc2HFgihhKToKPiA+IFNlbGVjdGluZyBSRVNFVF9DT05UUk9MTEVSIGlzIGFjdHVh
bGx5IHJlcXVpcmVkLCBvdGhlcndpc2Ugd2UKPiA+IGNhbiBnZXQgYSBsaW5rIGZhaWx1cmUgaW4g
dGhlIGNsb2NrIGRyaXZlcjoKPiA+IAo+ID4gZHJpdmVycy9jbGsvZGF2aW5jaS9wc2MubzogSW4g
ZnVuY3Rpb24gYF9fZGF2aW5jaV9wc2NfcmVnaXN0ZXJfY2xvY2tzJzoKPiA+IHBzYy5jOigudGV4
dCsweDlhMCk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGRldm1fcmVzZXRfY29udHJvbGxlcl9y
ZWdpc3RlcicKPiA+IGRyaXZlcnMvY2xrL2RhdmluY2kvcHNjLWRhODUwLm86IEluIGZ1bmN0aW9u
IGBkYTg1MF9wc2MwX2luaXQnOgo+ID4gcHNjLWRhODUwLmM6KC50ZXh0KzB4MjQpOiB1bmRlZmlu
ZWQgcmVmZXJlbmNlIHRvIGByZXNldF9jb250cm9sbGVyX2FkZF9sb29rdXAnCj4gPiAKPiA+IEZp
eGVzOiBmOTYyMzk2Y2UyOTIgKCJBUk06IGRhdmluY2k6IHN1cHBvcnQgbXVsdGlwbGF0Zm9ybSBi
dWlsZCBmb3IgQVJNIHY1IikKPiA+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2NS40
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgo+ID4gLS0t
Cj4gPiAgYXJjaC9hcm0vbWFjaC1kYXZpbmNpL0tjb25maWcgfCAxICsKPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKykKPiA+IAo+IAo+IFJldmlld2VkLWJ5OiBCYXJ0b3N6IEdvbGFz
emV3c2tpIDxiZ29sYXN6ZXdza2lAYmF5bGlicmUuY29tPgoKUmV2aWV3ZWQtYnk6IFBoaWxpcHAg
WmFiZWwgPHAuemFiZWxAcGVuZ3V0cm9uaXguZGU+CgpyZWdhcmRzClBoaWxpcHAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
