Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0604711D068
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 16:01:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUpXFR+DYmrZzI4QSzVC9Wg9LHi6ryMgmYqPqgyQ9hc=; b=FmTuNzKt06pGQI
	H1IP8waC8ddTvmj24twz8JO0cO3MPBAvxoJNdR/zpbvgoRxWzmXJ08hP1Lk8PZxT4wnjHsd03SUz2
	iouyfjCN06mPUkmAbjlrY1fuN3NbeqmX055F5L9KGJ5Nf/wnBc3JlDp1n1Ih5lRcr+m12Quc+2I81
	yM3k6a1pHbKqWfeFBxdu/s2WZfmchQWTnVRikzvCeHhcpT9W05UFtcH7/4MafE+gMPSWRd5cB4hF1
	mNyik16T28oWRa++1lv1aUZBmJIaD6NXYEYGVpIBNri0sKFEVu0Gpzs03Faxm4Wg0RNhc5rQebZnM
	FWHIK2pp9TpmfyPAd9gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifPxa-0008PH-Gn; Thu, 12 Dec 2019 15:00:58 +0000
Received: from mail.fuzziesquirrel.com ([173.167.31.197]
 helo=bajor.fuzziesquirrel.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifPwT-0006Oy-DB
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 14:59:50 +0000
X-Virus-Scanned: amavisd-new at fuzziesquirrel.com
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
Subject: Re: [PATCH v2 2/2] reset: simple: Add AST2600 compatibility string
From: Brad Bishop <bradleyb@fuzziesquirrel.com>
In-Reply-To: <2498da189d5e21ae70fb6884df6fc16ecfee2087.camel@pengutronix.de>
Date: Thu, 12 Dec 2019 09:51:58 -0500
Message-Id: <EFF7E049-08C0-40A0-946A-18822C7AEEE3@fuzziesquirrel.com>
References: <20191129000827.650566-1-joel@jms.id.au>
 <20191129000827.650566-3-joel@jms.id.au>
 <2498da189d5e21ae70fb6884df6fc16ecfee2087.camel@pengutronix.de>
To: Philipp Zabel <p.zabel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_065949_531653_6F3E3455 
X-CRM114-Status: UNSURE (   5.65  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGhpbGlwcC4gIFRoYW5rcyBmb3IgeW91ciB0aW1lLgoKPiBPbiBEZWMgMiwgMjAxOSwgYXQg
Nzo1MyBBTSwgUGhpbGlwcCBaYWJlbCA8cC56YWJlbEBwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4g
Cj4gT24gRnJpLCAyMDE5LTExLTI5IGF0IDEwOjM4ICsxMDMwLCBKb2VsIFN0YW5sZXkgd3JvdGU6
Cj4+IEZyb206IEJyYWQgQmlzaG9wIDxicmFkbGV5YkBmdXp6aWVzcXVpcnJlbC5jb20+Cj4+IAo+
PiBUaGUgQVNUMjYwMCBTb0MgY29udGFpbnMgdGhlIHNhbWUgTFBDIHJlZ2lzdGVyIHNldCBhcyB0
aGUgQVNUMjUwMC4KPiAKPiBJZiB0aGUgTFBDIHJlZ2lzdGVyIHNldCBpcyBleGFjdGx5IHRoZSBz
YW1lLCBzaG91bGRuJ3QgQVNUMjYwMCByZXVzZSB0aGUKPiBBU1QyNTAwIGNvbXBhdGlibGUsIGku
ZS46Cj4gCWNvbXBhdGlibGUgPSAiYXNwZWVkLGFzdDI2MDAtbHBjLXJlc2V0IiwgImFzcGVlZCxh
c3QyNTAwLWxwYy1yZXNldCI7Cj4gPwoKSeKAmW0gbm90IHN1cmUuICBJIGxldCB3aGF0IHdhcyBh
bHJlYWR5IHRoZXJlIGJlIG15IGd1aWRlIC0gdGhlIGFzdDI1MDAgTFBDIHJlZ2lzdGVycyBhcmUg
dGhlIHNhbWUgYXMgdGhlIGFzdDI0MDAgYXMgd2VsbCBhbmQgdGhvc2UgZ290IHRoZWlyIG93biBj
b21wYXRpYmxlcy4gIElzIHRoZXJlIGEgZ3VpZGVsaW5lIHdyaXR0ZW4gZG93biBzb21ld2hlcmUg
dGhhdCBiYWNrcyB5b3VyIHRoaW5raW5nIHVwPwoKdGhhbmtzIC0gYnJhZApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
