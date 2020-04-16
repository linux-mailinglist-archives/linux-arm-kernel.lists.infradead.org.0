Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C298C1AB8AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 08:52:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fCBX2xkSSR+yYmJalsMQHtHw4tXt8u/EuVdxzjx+2Ng=; b=d1kX7NpOY0qMF1
	QsIn9sD7UyGk2Qcw8hNqWgVQ54nvhyB7cbMBSbWnESPIqW/Xg+BF4/0/B5u9tZPmvdj2ymfUW/mNC
	Tr6B+hBSSNi1K9NzC4CG/UyA/8sRW/T+/UUWQqwVtTjwCj3wnjFTJNaX8UfZjm8I0OOgHZyQCFNR/
	79PulWQJGsD3cmYUZEQIp8s42h1Gc6zKe18whv2wzQRaSVuwLjleI33Th6lABt3/yxAO4l4G5POSu
	yj4TxzV7bAG51If6Y+ge82+S9i4ZNx7jRnSzjfHipReUMs8IefM/e/U7M4jHP7wsRxMB9Bk58n3lA
	X9XFqW7pAMSpulNyfJPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOyNv-0000H3-Nk; Thu, 16 Apr 2020 06:52:27 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOyNX-0008SO-UO
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 06:52:05 +0000
Received: from gwarestrin.me.apana.org.au ([192.168.0.7]
 helo=gwarestrin.arnor.me.apana.org.au)
 by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
 id 1jOyNU-0005Ks-25; Thu, 16 Apr 2020 16:52:01 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Thu, 16 Apr 2020 16:51:59 +1000
Date: Thu, 16 Apr 2020 16:51:59 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] crypto: sun8i-ss - Delete an error message in
 sun8i_ss_probe()
Message-ID: <20200416065159.GI7901@gondor.apana.org.au>
References: <c7e1193f-7d8b-7da3-a2a8-e92ca0fd83b2@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c7e1193f-7d8b-7da3-a2a8-e92ca0fd83b2@web.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_235204_265368_C2AB96E4 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Tang Bin <tangbin@cmss.chinamobile.com>, kernel-janitors@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, Colin Ian King <colin.king@canonical.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBBcHIgMDQsIDIwMjAgYXQgMDU6NDU6MjZQTSArMDIwMCwgTWFya3VzIEVsZnJpbmcg
d3JvdGU6Cj4gRnJvbTogTWFya3VzIEVsZnJpbmcgPGVsZnJpbmdAdXNlcnMuc291cmNlZm9yZ2Uu
bmV0Pgo+IERhdGU6IFNhdCwgNCBBcHIgMjAyMCAxNzozNDo1MyArMDIwMAo+IAo+IFRoZSBmdW5j
dGlvbiDigJxwbGF0Zm9ybV9nZXRfaXJx4oCdIGNhbiBsb2cgYW4gZXJyb3IgYWxyZWFkeS4KPiBU
aHVzIG9taXQgYSByZWR1bmRhbnQgbWVzc2FnZSBmb3IgdGhlIGV4Y2VwdGlvbiBoYW5kbGluZyBp
biB0aGUKPiBjYWxsaW5nIGZ1bmN0aW9uLgo+IAo+IFRoaXMgaXNzdWUgd2FzIGRldGVjdGVkIGJ5
IHVzaW5nIHRoZSBDb2NjaW5lbGxlIHNvZnR3YXJlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1hcmt1
cyBFbGZyaW5nIDxlbGZyaW5nQHVzZXJzLnNvdXJjZWZvcmdlLm5ldD4KPiAtLS0KPiAgZHJpdmVy
cy9jcnlwdG8vYWxsd2lubmVyL3N1bjhpLXNzL3N1bjhpLXNzLWNvcmUuYyB8IDQgKy0tLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0pCgpQYXRjaCBhcHBs
aWVkLiAgVGhhbmtzLgotLSAKRW1haWw6IEhlcmJlcnQgWHUgPGhlcmJlcnRAZ29uZG9yLmFwYW5h
Lm9yZy5hdT4KSG9tZSBQYWdlOiBodHRwOi8vZ29uZG9yLmFwYW5hLm9yZy5hdS9+aGVyYmVydC8K
UEdQIEtleTogaHR0cDovL2dvbmRvci5hcGFuYS5vcmcuYXUvfmhlcmJlcnQvcHVia2V5LnR4dAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
