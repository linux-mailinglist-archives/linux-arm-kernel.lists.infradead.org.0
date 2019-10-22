Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40204E0856
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6PcVm4nqJaiKIWI9JAOa0XJXIyL5ZiHuPh9hW4tyAp4=; b=fosUGWTXquBkSG
	ABKscAwRYg7ga5h8kNvj+otUK7HBAVawaMahsFS2iGe/MCJ45jz3NrLXtUlp+7g4E+IAy6dD9Zkfy
	HtFZPj5uobw14pdCqRxz7bM1g8k/MW/b98PHasXXgoC1w2moPqAVnRWMjvE/duLhzrDkEcr1VvAPC
	QkmhTVjwpQG6sYT2hTK14KgwU3GzpVAXWwG8EqoOAqbhNwIfBewo0abol3BeGArnZhfqYeQ8ozlM+
	8qUDapjnt4Tcsti2/M5uKMoVd+EiOdzKDTqRc9FfIMrT+yRSNTpc+npIFVTY7L8X5I96UI437o0uD
	M9dzkom7Js1V7ASt8Lfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMwjw-0001kl-9x; Tue, 22 Oct 2019 16:10:32 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwjk-0001kO-A6
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:10:21 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 9C3C580FA;
 Tue, 22 Oct 2019 16:10:54 +0000 (UTC)
Date: Tue, 22 Oct 2019 09:10:16 -0700
From: Tony Lindgren <tony@atomide.com>
To: Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
Subject: Re: [PATCH] ARM: OMAP1: ams-delta FIQ: Fix a typo ("Initiaize")
Message-ID: <20191022161016.GS5610@atomide.com>
References: <20191002145301.11332-1-j.neuschaefer@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002145301.11332-1-j.neuschaefer@gmx.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_091020_393327_5E1BA567 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 Aaro Koskinen <aaro.koskinen@iki.fi>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KiBKb25hdGhhbiBOZXVzY2jDpGZlciA8ai5uZXVzY2hhZWZlckBnbXgubmV0PiBbMTkxMDAyIDA3
OjU0XToKPiBTaWduZWQtb2ZmLWJ5OiBKb25hdGhhbiBOZXVzY2jDpGZlciA8ai5uZXVzY2hhZWZl
ckBnbXgubmV0Pgo+IC0tLQo+ICBhcmNoL2FybS9tYWNoLW9tYXAxL2Ftcy1kZWx0YS1maXEuYyB8
IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtb21hcDEvYW1zLWRlbHRhLWZpcS5jIGIvYXJj
aC9hcm0vbWFjaC1vbWFwMS9hbXMtZGVsdGEtZmlxLmMKPiBpbmRleCAwMjU0ZWI5Y2Y4YzYuLjRl
ZWEzZTM5ZTYzMyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9tYWNoLW9tYXAxL2Ftcy1kZWx0YS1m
aXEuYwo+ICsrKyBiL2FyY2gvYXJtL21hY2gtb21hcDEvYW1zLWRlbHRhLWZpcS5jCj4gQEAgLTEx
MCw3ICsxMTAsNyBAQCB2b2lkIF9faW5pdCBhbXNfZGVsdGFfaW5pdF9maXEoc3RydWN0IGdwaW9f
Y2hpcCAqY2hpcCwKPiAKPiAgCQkvKgo+ICAJCSAqIEZJUSBoYW5kbGVyIHRha2VzIGZ1bGwgY29u
dHJvbCBvdmVyIHNlcmlvIGRhdGEgYW5kIGNsayBHUElPCj4gLQkJICogcGlucy4gIEluaXRpYWl6
ZSB0aGVtIGFuZCBrZWVwIHJlcXVlc3RlZCBzbyBub2JvZHkgY2FuCj4gKwkJICogcGlucy4gIElu
aXRpYWxpemUgdGhlbSBhbmQga2VlcCByZXF1ZXN0ZWQgc28gbm9ib2R5IGNhbgo+ICAJCSAqIGlu
dGVyZmVyZS4gIEZhaWwgaWYgYW55IG9mIHRob3NlIHR3byBjb3VsZG4ndCBiZSByZXF1ZXN0ZWQu
Cj4gIAkJICovCj4gIAkJc3dpdGNoIChpKSB7Cj4gLS0KClRoYW5rcyBhcHBseWluZyBpbnRvIG9t
YXAtZm9yLXY1LjUvb21hcDEuCgpSZWdhcmRzLAoKVG9ueQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
