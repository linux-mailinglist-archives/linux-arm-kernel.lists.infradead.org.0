Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BAF12B3FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 11:38:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0o8V6/a/B/KNEitNthkbK3tBxX4tYDcQXxWG7xedLjk=; b=XvQ9O6zYLr7bxI
	ICJVxlG958hzhnrwziEUvTL8KI/FhMRK1dTBXp1h1fPQtELwUxEQwRql1SuNnmYMjutYTHbAM1RGU
	kCuN6fsBkMHW0kyHNaAcNMKq87BpXU/pSL+0rrv1X/I4ZIfbzYEqy+xatB8J3cg8nteXDm8CvO6KJ
	Xwr42TycOqoLrebKPPYgH092KNb7DRvFyVBg2U4LHH1teZFCey2gKm6XPwnch5ti9/tuJ2ZKcEsH9
	PgbgVQM7uO5kqQXmYjXohNiYpaJsgHqyHHSMN6QBanshz8To5LOIe5BQcC1pG6UrEPPdX7TVNL2aL
	XJzgf38/Sukf/5eBeoCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikn18-0004HZ-7t; Fri, 27 Dec 2019 10:38:50 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikn0t-0004FV-U6
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 10:38:37 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1ikn0s-0007O6-GV; Fri, 27 Dec 2019 18:38:34 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1ikn0o-0005nC-B6; Fri, 27 Dec 2019 18:38:30 +0800
Date: Fri, 27 Dec 2019 18:38:30 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH V3 1/3] crypto: caam: Add support for i.MX8M Mini
Message-ID: <20191227103830.savjawvuzjolpfuj@gondor.apana.org.au>
References: <20191218130616.13860-1-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218130616.13860-1-aford173@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_023836_125755_7FD51FA8 
X-CRM114-Status: GOOD (  10.77  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Horia =?utf-8?Q?Geant=C4=83?= <horia.geanta@nxp.com>,
 Iuliana Prodan <iuliana.prodan@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Will Deacon <will@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBEZWMgMTgsIDIwMTkgYXQgMDc6MDY6MTRBTSAtMDYwMCwgQWRhbSBGb3JkIHdyb3Rl
Ogo+IFRoZSBpLk1YOE0gTWluaSB1c2VzIHRoZSBzYW1lIGNyeXB0byBlbmdpbmUgYXMgdGhlIGku
TVg4TVEsIGJ1dAo+IHRoZSBkcml2ZXIgaXMgcmVzdHJpY3RpbmcgdGhlIGNoZWNrIHRvIGp1c3Qg
dGhlIGkuTVg4TVEuCj4gCj4gVGhpcyBwYXRjaCBleHBhbmRzIHRoZSBjaGVjayBmb3IgZWl0aGVy
IGkuTVg4TVEgb3IgaS5NWDhNTS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBZGFtIEZvcmQgPGFmb3Jk
MTczQGdtYWlsLmNvbT4KPiBUZXN0ZWQtYnk6IEl1bGlhbmEgUHJvZGFuIDxpdWxpYW5hLnByb2Rh
bkBueHAuY29tPgo+IFJldmlld2VkLWJ5OiBJdWxpYW5hIFByb2RhbiA8aXVsaWFuYS5wcm9kYW5A
bnhwLmNvbT4KPiBSZXZpZXdlZC1ieTogSG9yaWEgR2VhbnTEgyA8aG9yaWEuZ2VhbnRhQG54cC5j
b20+Cj4gLS0tCj4gVjM6ICBObyBDaGFuZ2UKPiBWMjogIEV4cGFuZCB0aGUgY2hlY2sgdGhhdCBm
b3JjZXMgdGhlIHNldHRpbmcgb24gaW14OG1xIHRvIGFsc28gYmUgdHJ1ZSBmb3IgaW14OG1tCj4g
ICAgICBFeHBsaWN0bHkgc3RhdGUgaW14OG1tIGNvbXBhdGlibGl0eSBpbnN0ZWFkIG9mIG1ha2lu
ZyBpdCBnZW5lcmljIHRvIGFsbCBpbXg4bSoKPiAgICAgICB0aGlzIGlzIG1vc3RseSBkdWUgdG8g
bGFjayBvZiBvdGhlciBoYXJkd2FyZSB0byB0ZXN0CgpQYXRjaCBhcHBsaWVkLiAgVGhhbmtzLgot
LSAKRW1haWw6IEhlcmJlcnQgWHUgPGhlcmJlcnRAZ29uZG9yLmFwYW5hLm9yZy5hdT4KSG9tZSBQ
YWdlOiBodHRwOi8vZ29uZG9yLmFwYW5hLm9yZy5hdS9+aGVyYmVydC8KUEdQIEtleTogaHR0cDov
L2dvbmRvci5hcGFuYS5vcmcuYXUvfmhlcmJlcnQvcHVia2V5LnR4dAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
