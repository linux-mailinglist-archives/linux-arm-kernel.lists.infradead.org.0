Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 295712D7C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 10:28:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzlICQsRGOfYiaD3EF/l2H+F9FyKrasj6/spsWhlXEM=; b=V9Qx9+gJsiTa7d
	mGBhOoyywEQ0ygRJQkWpnrfDaAVa470CCwBaJSf9vJvsmQkIOGmGjEZ9jKpC6C3SDptjhkppyLDPw
	0pUmVzLpZ4neyAkSjlFCRS2T3zDS5CqeJHcT2GthiqVezmUE5HLTSvrgy3/pNTnmt2vor/pP+JeEP
	a90zD7luNYEI1RX9BaTNNWF+eCRtkOupAf8yE1m4akJNookcg37R3HMVUiPHz1Rv4mrcYNyX1VAj5
	ue7FiYhOxhAS0It+wBos43LBbz4CZDgajqWKJHLGGEcqyG9EC0m6n31kAbiOs3mjbpSrwMX6H604Q
	xFiwy1cnHVVyWx7DGy+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtwG-0003ij-Md; Wed, 29 May 2019 08:28:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtvy-0003Yt-DM
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 08:27:43 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hVtvx-0006Xn-1n; Wed, 29 May 2019 10:27:41 +0200
Message-ID: <1559118460.4039.19.camel@pengutronix.de>
Subject: Re: [PATCH 3/3] ARM: dts: imx6: rdu2: Limit USBH1 to Full Speed
From: Lucas Stach <l.stach@pengutronix.de>
To: Andrey Smirnov <andrew.smirnov@gmail.com>, 
 linux-arm-kernel@lists.infradead.org
Date: Wed, 29 May 2019 10:27:40 +0200
In-Reply-To: <20190529071843.24767-3-andrew.smirnov@gmail.com>
References: <20190529071843.24767-1-andrew.smirnov@gmail.com>
 <20190529071843.24767-3-andrew.smirnov@gmail.com>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_012742_604752_27D1D161 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gTWl0dHdvY2gsIGRlbiAyOS4wNS4yMDE5LCAwMDoxOCAtMDcwMCBzY2hyaWViIEFuZHJleSBT
bWlybm92Ogo+IENhYmxpbmcgdXNlZCB0byBjb25uZWN0IGRldmljZXMgdG8gVVNCSDEgb24gUkRV
MiBkb2VzIG5vdCBtZWV0IFVTQgo+IHNwZWMgY2FibGUgcXVhbGl0eSBhbmQgY2FibGUgbGVuZ3Ro
IHJlcXVpcmVtZW50cyB0byBvcGVyYXRlIGF0IEhpZ2gKPiBTcGVlZCwgc28gbGltaXQgdGhlIHBv
cnQgdG8gRnVsbCBTcGVlZCBvbmx5Lgo+IAo+ID4gUmVwb3J0ZWQtYnk6IENocmlzIEhlYWx5IDxj
cGhlYWx5QGdtYWlsLmNvbT4KPiA+IFJldmlld2VkLWJ5OiBDaHJpcyBIZWFseSA8Y3BoZWFseUBn
bWFpbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmRyZXkgU21pcm5vdiA8YW5kcmV3LnNtaXJu
b3ZAZ21haWwuY29tPgo+ID4gQ2M6IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4KPiA+
IENjOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+Cj4gPiBDYzogTHVjYXMgU3Rh
Y2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+IENjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCgpSZXZpZXdl
ZC1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cgo+IC0tLQo+IMKgYXJj
aC9hcm0vYm9vdC9kdHMvaW14NnFkbC16aWktcmR1Mi5kdHNpIHwgMSArCj4gwqAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMv
aW14NnFkbC16aWktcmR1Mi5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC16aWktcmR1
Mi5kdHNpCj4gaW5kZXggMDRkNGQ0ZDdlNDNjLi5lMWQ4NDc4ODg0ZjkgMTAwNjQ0Cj4gLS0tIGEv
YXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC16aWktcmR1Mi5kdHNpCj4gKysrIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvaW14NnFkbC16aWktcmR1Mi5kdHNpCj4gQEAgLTgwNSw2ICs4MDUsNyBAQAo+IMKg
JnVzYmgxIHsKPiA+IMKgCXZidXMtc3VwcGx5ID0gPCZyZWdfNXAwdl9tYWluPjsKPiA+IMKgCWRp
c2FibGUtb3Zlci1jdXJyZW50Owo+ID4gKwltYXhpbXVtLXNwZWVkID0gImZ1bGwtc3BlZWQiOwo+
ID4gwqAJc3RhdHVzID0gIm9rYXkiOwo+IMKgfTsKPiDCoAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
