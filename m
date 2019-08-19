Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D7C91F1E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 10:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLU0bVvtjiUIuBlv26kWT9Iv+SyBOQLjecdC+HAL6h4=; b=cb8i7GbMvbqXGh
	F6oUXCwxuSOihCQrQcnopiFraqrkA9EmP6NaGdwOk/5o8z0el7W1A6wQ0CcZTOdxnHhaREzcVTLg5
	4KbKw1rrRhT5b85/RzwYVy6x0Husv4R0K+RzJEBsj2XHUCDx2eW7i3jntIYPV4s1GD+/rKsAZLDFB
	FZxtGH18MZMvKI8xL8xLMBd6DoUDQ46Ojy+SPIeTNVx2J5FGGcEjLuGmf5PDCfI0Q+Gq8vERmN5Xa
	lTqKqWN4GpTanx8dJn7lC69IrlDuhn197GgISggSuHR+o8brRQk0reBQH3AstQNQlLbIyZ9tIyEF8
	P0dfYOQDdh58ljzBALDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdDo-0002uJ-5k; Mon, 19 Aug 2019 08:41:00 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdDb-0002uB-O1
 for linux-arm-kernel@bombadil.infradead.org; Mon, 19 Aug 2019 08:40:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wUTzoErjPzc0CWbaPik2DDOC5P7AvuyA5vKNPT5Nn6c=; b=G+5F1r/5EvUfmzoJcQm7+UY+d1
 vayDJPrsK0rUZ9nNyfXIWdvD2M1DNe7NzqpZVqCRIhBwf1r59L/VmZTxHkWY8Sk6dmtocbn7TB929
 nusat3JEmdiBF8zk678Gm8MbVCemGXidEc5JZgGC3YCl/xgeWOvePf8kmKuWiZmc/AMWjpdXYPNsV
 HttuSotSpmQRTEW1yaIEGDEdV4mQ5U6F/QSwq5A3XwTxqMN7ZhJnaNcce7JPwc3RRsXD/aTvMqa1U
 KdahmCRsIfYJhso9kG94w84nf6veYays9/YLf25otEVr7bNNSLWNjW//5oc5NzfvqhngGMqeUL24G
 KB2fAqBQ==;
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdDs-0007Ax-Ko
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 08:41:06 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 3EFA660003;
 Mon, 19 Aug 2019 08:40:10 +0000 (UTC)
Date: Mon, 19 Aug 2019 10:40:09 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 13/19] dt-bindings: phy: Add Marvell COMPHY clocks
Message-ID: <20190819104009.44b76442@xps13>
In-Reply-To: <20190812212946.GA6120@bogus>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
 <20190731122126.3049-14-miquel.raynal@bootlin.com>
 <20190812212946.GA6120@bogus>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_094104_733354_6BBBA926 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4gd3JvdGUgb24gTW9uLCAxMiBB
dWcgMjAxOSAxNToyOTo0NiAtMDYwMDoKCj4gT24gV2VkLCAzMSBKdWwgMjAxOSAxNDoyMToyMCAr
MDIwMCwgTWlxdWVsIFJheW5hbCB3cm90ZToKPiA+IE1hcnZlbGwgQ1AxMTAgQ09NUEhZIGJsb2Nr
IGlzIGZlZCBieSAzIGNsb2Nrcy4gRGVzY3JpYmUgZWFjaCBvZiB0aGVtIGluIHRoZQo+ID4gYmlu
ZGluZ3MuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXlu
YWxAYm9vdGxpbi5jb20+Cj4gPiAtLS0KPiA+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cGh5LW12ZWJ1LWNvbXBoeS50eHQgICAgICAgfCAxMCArKysrKysrKysrCj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDEwIGluc2VydGlvbnMoKykKPiA+IAo+IAo+IFBsZWFzZSBhZGQgQWNrZWQtYnkvUmV2
aWV3ZWQtYnkgdGFncyB3aGVuIHBvc3RpbmcgbmV3IHZlcnNpb25zLiBIb3dldmVyLAo+IHRoZXJl
J3Mgbm8gbmVlZCB0byByZXBvc3QgcGF0Y2hlcyAqb25seSogdG8gYWRkIHRoZSB0YWdzLiBUaGUg
dXBzdHJlYW0KPiBtYWludGFpbmVyIHdpbGwgZG8gdGhhdCBmb3IgYWNrcyByZWNlaXZlZCBvbiB0
aGUgdmVyc2lvbiB0aGV5IGFwcGx5Lgo+IAo+IElmIGEgdGFnIHdhcyBub3QgYWRkZWQgb24gcHVy
cG9zZSwgcGxlYXNlIHN0YXRlIHdoeSBhbmQgd2hhdCBjaGFuZ2VkLgoKT29wcywgSSBrbm93IEkg
a25vdywgSSBqdXN0IGZvcmdvdCB0byBhZGQgbWFudWFsbHkgeW91ciBSZXZpZXdlZC1ieS4KCklm
IHRoZSBtYWludGFpbmVycyBjYW4gYWRkIGl0IG1hbnVhbGx5IGl0J3MgZ3JlYXQ7IGF2b2lkaW5n
IHRvIHJlc2VuZAoxOSBwYXRjaGVzIGZvciB0aGF0IHNvdW5kcyBzYW5lIDopCgoKVGhhbmtzLApN
aXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
