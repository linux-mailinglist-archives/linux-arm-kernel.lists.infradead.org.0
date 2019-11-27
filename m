Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C819210BA28
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 22:02:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKjwhzskZa2H5t97KMa87Vs+9w9ga8tA5xS/P4pnYXE=; b=YQQioWbNZScePd
	uChFhMea31MkMKzh5V9xAbvrnTFwbpYyTQsG3WcQ/pmudS6i2Kc8gNC1VrUr+FSL7TVgiwkpVd9Wr
	HJ/tJ6nmDJwVJ4JbSwzxtKRsbHtRH2wOAB2O98EXp/kebUOjn7aWZIBie6KTOdzdeSJnnVtsqybif
	Krcj/kSDg8FRS7nRP7TPdM50iw8IFZKlxKtv3x6/sbvj4LjoLrD7cJny8Ip4CN8j/Kd+WuZZ8h0iN
	BUdO21c4T5s5k2AXtvf+o8cpddau/R2ce6GS53XWjIiFvhtdc9TxlEzoHMG/qrkl9X+ZNBFefT25X
	j4u7jpeA5/W6KZxIflBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia4S9-00084P-AD; Wed, 27 Nov 2019 21:02:25 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia4Ru-00082O-SZ; Wed, 27 Nov 2019 21:02:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7B612AC1A;
 Wed, 27 Nov 2019 21:02:09 +0000 (UTC)
Subject: Re: [PATCH 1/5] pinctrl: actions: Use the correct style for SPDX
 License Identifier
To: Nishad Kamdar <nishadkamdar@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <cover.1574871463.git.nishadkamdar@gmail.com>
 <5b588fc885efca6efdc73869aa4b1eeeb3d6f6c5.1574871463.git.nishadkamdar@gmail.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <c76290a7-b9bb-7f70-e750-04fe6fdbb7e1@suse.de>
Date: Wed, 27 Nov 2019 22:02:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <5b588fc885efca6efdc73869aa4b1eeeb3d6f6c5.1574871463.git.nishadkamdar@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_130211_066496_3E8D419D 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-gpio@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>, Linus Walleij <linus.walleij@linaro.org>,
 Sean Wang <sean.wang@kernel.org>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Joe Perches <joe@perches.com>,
 linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-amlogic@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjcuMTEuMTkgdW0gMTc6NDAgc2NocmllYiBOaXNoYWQgS2FtZGFyOgo+IFRoaXMgcGF0Y2gg
Y29ycmVjdHMgdGhlIFNQRFggTGljZW5zZSBJZGVudGlmaWVyIHN0eWxlIGluCj4gaGVhZGVyIGZp
bGUgcmVsYXRlZCBBY3Rpb25zIFNlbWkgT1dMIHBpbmN0cmwgZHJpdmVyLgoKT3dsCgo+IEZvciBD
IGhlYWRlciBmaWxlcyBEb2N1bWVudGF0aW9uL3Byb2Nlc3MvbGljZW5zZS1ydWxlcy5yc3QKPiBt
YW5kYXRlcyBDLWxpa2UgY29tbWVudHMgKG9wcG9zZWQgdG8gQyBzb3VyY2UgZmlsZXMgd2hlcmUK
PiBDKysgc3R5bGUgc2hvdWxkIGJlIHVzZWQpLgo+IAo+IENoYW5nZXMgbWFkZSBieSB1c2luZyBh
IHNjcmlwdCBwcm92aWRlZCBieSBKb2UgUGVyY2hlcyBoZXJlOgo+IGh0dHBzOi8vbGttbC5vcmcv
bGttbC8yMDE5LzIvNy80Ni4KPiAKPiBTdWdnZXN0ZWQtYnk6IEpvZSBQZXJjaGVzIDxqb2VAcGVy
Y2hlcy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTmlzaGFkIEthbWRhciA8bmlzaGFka2FtZGFyQGdt
YWlsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9waW5jdHJsL2FjdGlvbnMvcGluY3RybC1vd2wuaCB8
IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGluY3RybC9hY3Rpb25zL3BpbmN0cmwtb3dsLmggYi9k
cml2ZXJzL3BpbmN0cmwvYWN0aW9ucy9waW5jdHJsLW93bC5oCj4gaW5kZXggZGFlMmU4MzYzZmQ1
Li5mZWVlN2FkN2UyN2UgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waW5jdHJsL2FjdGlvbnMvcGlu
Y3RybC1vd2wuaAo+ICsrKyBiL2RyaXZlcnMvcGluY3RybC9hY3Rpb25zL3BpbmN0cmwtb3dsLmgK
PiBAQCAtMSw0ICsxLDQgQEAKPiAtLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAr
Cj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKyAqLwoKVGhpcyBpcyBub3Qg
YSB1YXBpIG9yIGFzbSBoZWFkZXIsIHdoaWNoIHRoYXQgLyogKi8gcnVsZSB3YXMgbGF0ZXIgYWRk
ZWQKZm9yLCBJIHRob3VnaHQ/Cgo+ICAvKgo+ICAgKiBPV0wgU29DJ3MgUGluY3RybCBkZWZpbml0
aW9ucwo+ICAgKgoKTm90IG9iamVjdGluZywganVzdCBtYWtpbmcgc3VyZSB3ZSdyZSBub3QgYmxp
bmRseSByZWZhY3RvcmluZyBjb2RlLgoKSWYgZG9pbmcgdGhpcywgSSBzdWdnZXN0IHVwZGF0aW5n
IHRvIEdQTC0yLjAtb3ItbGF0ZXIuCgpSZWdhcmRzLApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2Fy
ZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywg
R2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
