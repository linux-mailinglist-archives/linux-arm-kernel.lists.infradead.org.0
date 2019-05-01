Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9929B10DDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1nVUObyPNobM25AS+UvaBkR74Qw8u3Hdy9OBdonYZAA=; b=QIWl7wQ5gIq1fl
	yGFRZjgB9rVUT6LB5V62y/BGe2RTnpySFmsdI5iUU2nK65mLZifESqqkDRxA3Oi8Bif0h3W5fNuMV
	+XljuYxzuGknpheigmvFsb9CfcpG+4RM0bKGz2ouXMStP+h9kMcPJdUecTPIX8RfUJVzRscWrP8GD
	t4EjmiCqqjUg9bxnG0BN3Nl3ptzkuMLhhpsnMg6Oce/Cyqu1NMtMKM8+71SAxiCqttwjeqLenqwlv
	R9Od1JJekuV43h6Rtf952yv0OeCXDxDO5MNqAmDMU+6X03ueFBdJFAtTdEecRAWEdSaHihlksp7yp
	TMVw/RH9RRXGACz4Kqqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvir-0000us-6U; Wed, 01 May 2019 20:20:57 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvij-0000to-IW; Wed, 01 May 2019 20:20:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9EB1BAD12;
 Wed,  1 May 2019 20:20:45 +0000 (UTC)
Subject: Re: [PATCH] clk: actions: Use the correct style for SPDX License
 Identifier
To: Nishad Kamdar <nishadkamdar@gmail.com>
References: <20190501070707.GA5619@nishad>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Openpgp: preference=signencrypt
Organization: SUSE Linux GmbH
Message-ID: <057d9b37-7475-1902-bce7-6d519c2e0fdf@suse.de>
Date: Wed, 1 May 2019 22:20:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501070707.GA5619@nishad>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_132049_762064_6814D9BD 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Joe Perches <joe@perches.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KyBsaW51eC1hY3Rpb25zCgpBbSAwMS4wNS4xOSB1bSAwOTowNyBzY2hyaWViIE5pc2hhZCBLYW1k
YXI6Cj4gVGhpcyBwYXRjaCBjb3JyZWN0cyB0aGUgU1BEWCBMaWNlbnNlIElkZW50aWZpZXIgc3R5
bGUKPiBpbiBoZWFkZXIgZmlsZXMgcmVsYXRlZCB0byBDbG9jayBEcml2ZXJzIGZvciBBY3Rpb25z
IFNlbWkgU29jcy4KPiBGb3IgQyBoZWFkZXIgZmlsZXMgRG9jdW1lbnRhdGlvbi9wcm9jZXNzL2xp
Y2Vuc2UtcnVsZXMucnN0Cj4gbWFuZGF0ZXMgQy1saWtlIGNvbW1lbnRzIChvcHBvc2VkIHRvIEMg
c291cmNlIGZpbGVzIHdoZXJlCj4gQysrIHN0eWxlIHNob3VsZCBiZSB1c2VkKQpbLi4uXQo+ICBk
cml2ZXJzL2Nsay9hY3Rpb25zL293bC1jb21tb24uaCAgICAgICB8IDIgKy0KPiAgZHJpdmVycy9j
bGsvYWN0aW9ucy9vd2wtY29tcG9zaXRlLmggICAgfCAyICstCj4gIGRyaXZlcnMvY2xrL2FjdGlv
bnMvb3dsLWRpdmlkZXIuaCAgICAgIHwgMiArLQo+ICBkcml2ZXJzL2Nsay9hY3Rpb25zL293bC1m
YWN0b3IuaCAgICAgICB8IDIgKy0KPiAgZHJpdmVycy9jbGsvYWN0aW9ucy9vd2wtZml4ZWQtZmFj
dG9yLmggfCAyICstCj4gIGRyaXZlcnMvY2xrL2FjdGlvbnMvb3dsLWdhdGUuaCAgICAgICAgIHwg
MiArLQo+ICBkcml2ZXJzL2Nsay9hY3Rpb25zL293bC1tdXguaCAgICAgICAgICB8IDIgKy0KPiAg
ZHJpdmVycy9jbGsvYWN0aW9ucy9vd2wtcGxsLmggICAgICAgICAgfCAyICstCj4gIGRyaXZlcnMv
Y2xrL2FjdGlvbnMvb3dsLXJlc2V0LmggICAgICAgIHwgMiArLQo+ICA5IGZpbGVzIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCldoZXJlJ3MgdGhlIHByYWN0aWNhbCBi
ZW5lZml0IG9mIHRoaXMgcGF0Y2g/IFRoZXNlIGFyZSBhbGwgcHJpdmF0ZQpoZWFkZXJzIHVzZWQg
ZnJvbSBDIGZpbGVzLCBzbyB0aGV5IGNhbiBoYW5kbGUgQysrIGNvbW1lbnRzIGp1c3QgZmluZSwK
b3RoZXJ3aXNlIHdlIHdvdWxkJ3ZlIHNlZW4gYnVpbGQgZmFpbHVyZXMuCgpJIGNvdWxkIHVuZGVy
c3RhbmQgaWYgeW91IHdlcmUgcGF0Y2hpbmcgZmlsZXMgaW4gaW5jbHVkZS8gYnV0IG5vdCBoZXJl
LgoKUmVnYXJkcywKQW5kcmVhcwoKLS0gClNVU0UgTGludXggR21iSCwgTWF4ZmVsZHN0ci4gNSwg
OTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIsIE1hcnkgSGln
Z2lucywgU3JpIFJhc2lhaApIUkIgMjEyODQgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
