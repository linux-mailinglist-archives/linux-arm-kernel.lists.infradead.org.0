Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CCC11A695
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:15:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhjUwGtRhzlRFWs2dewQwgNoEwVAW36UvCE2WKdKuAY=; b=ZylmJjmHAnCZut
	aIMAP74468YJJDreWi0YrOvgsp655zaU+gv5E3IIiOKO7+0mdzS4AnrGmmwtJc48AxGJ7dKvfNwG7
	CeD/4tGesuf+46BzGDCGEYms/wenpVOaFclgdjRhN85PBEnZ1tP2D732GqTxnCWrq2ykv+bD4K0IL
	FZHt9wqgJgzir/WDwapJTztw1EpO9AtPf3X6Ohr75k/voF438up8p/gEKav/0yzbN55lVbq74akhC
	Jn+fQ8q7fxFothu4Q62bjCxQ3l1aRZFfJ37tRAdci356iqg3rw4YJjmv1o5Y3xyFIitexZ3Petc5w
	FXul/FwM8kzfE5dNGjlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iey5d-0002a6-9c; Wed, 11 Dec 2019 09:15:25 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iey5O-00023n-J5
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:15:12 +0000
Received: by mail-qt1-x844.google.com with SMTP id d5so5681189qto.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 01:15:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=E6wMorO69DZEZ1sE/qWwk4Epgymi3NNrwm1o7yf8uZs=;
 b=gCWjoxJy7TelDBkwoiTu7kjNV9DFP+AVCBuAdLBIuCnDMDOJzEwZfy/Jbv/7wxZExs
 csgHekmcSVZURgTG1D5XLv/tBbnl3J6hyNhYMQeQBITooLkZMZuVZVROyZK3+IqKL5Bs
 3J6RE60DVjlutXxaqTPCRbi5/jx+BqHX3lzbQtkRgppMWUgau0tiuHiT0AbdfudBnV71
 WszMvwqEBhzu2BE2DA2zCAwXaMSzPqGTUYpCb0YcJRmQfNIH9utr0rXh+IxX4jsil0fk
 mvUsoJ8s2KrYqZwnbF4hM19sPd8dnxN3ZYGxnjDtnhR9McZ0mMuxBV692SW5UKj6NOth
 SRbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=E6wMorO69DZEZ1sE/qWwk4Epgymi3NNrwm1o7yf8uZs=;
 b=fBOIF//rmWh0hVgYNESIyffoPDPgTlCc7bSkNC6H/zhD3TSFxDumvpiKV3R4b0N48a
 yX2aQdyM0sp1Sl6WXeISgDMRYlJZxah0DRZ2pmKHEMsb/W+zdWtJynIpKDoo0bGtleB4
 l4zQhhFAurZjIR1p+EpJS8miwKxj/bsscGMCGXyOqAvXfw23MNA1/AKiIsK8K1+Hw88P
 zGJjEr78uLXq07H4j1EaN3rYMrBHQc7AuQATqmt0pJMzOPfbEeJb/RUfezlScOw2cZSr
 yMB7+6RRjIypK8ysZwQ9xW+JUfurVgR54Os53zAg3QxeianRru5JVphLbc8vqpJc3EDr
 YkJw==
X-Gm-Message-State: APjAAAVckRBtDhCAh9pVCd/4rPtA7+E9GadxKy5GLraDzDibMap9day6
 ElO3tUsF5zz/BZPDvgzJCtrpCsDoCDAIEOK1xlz/fA==
X-Google-Smtp-Source: APXvYqxVk6H+v/SBU3kWiS7frnzyOo+1ST2qw1y44jpvjf3X1WWmv6bh0Fr3gtKPzYz3RXnVQ8imgQsqRxL9wvuwlyc=
X-Received: by 2002:ac8:704:: with SMTP id g4mr1818462qth.197.1576055708067;
 Wed, 11 Dec 2019 01:15:08 -0800 (PST)
MIME-Version: 1.0
References: <20191210195202.622734-1-arnd@arndb.de>
In-Reply-To: <20191210195202.622734-1-arnd@arndb.de>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 11 Dec 2019 10:14:57 +0100
Message-ID: <CAMpxmJX0jAa4-52pT0rutPz9naRHb4nnZ=cDdvCMLxGh=3m_=A@mail.gmail.com>
Subject: Re: [PATCH] ARM: davinci: select CONFIG_RESET_CONTROLLER
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_011510_694290_F0A5355B 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Lechner <david@lechnology.com>, Sekhar Nori <nsekhar@ti.com>,
 LKML <linux-kernel@vger.kernel.org>,
 "Stable # 4 . 20+" <stable@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

d3QuLCAxMCBncnUgMjAxOSBvIDIwOjUyIEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+IG5h
cGlzYcWCKGEpOgo+Cj4gU2VsZWN0aW5nIFJFU0VUX0NPTlRST0xMRVIgaXMgYWN0dWFsbHkgcmVx
dWlyZWQsIG90aGVyd2lzZSB3ZQo+IGNhbiBnZXQgYSBsaW5rIGZhaWx1cmUgaW4gdGhlIGNsb2Nr
IGRyaXZlcjoKPgo+IGRyaXZlcnMvY2xrL2RhdmluY2kvcHNjLm86IEluIGZ1bmN0aW9uIGBfX2Rh
dmluY2lfcHNjX3JlZ2lzdGVyX2Nsb2Nrcyc6Cj4gcHNjLmM6KC50ZXh0KzB4OWEwKTogdW5kZWZp
bmVkIHJlZmVyZW5jZSB0byBgZGV2bV9yZXNldF9jb250cm9sbGVyX3JlZ2lzdGVyJwo+IGRyaXZl
cnMvY2xrL2RhdmluY2kvcHNjLWRhODUwLm86IEluIGZ1bmN0aW9uIGBkYTg1MF9wc2MwX2luaXQn
Ogo+IHBzYy1kYTg1MC5jOigudGV4dCsweDI0KTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgcmVz
ZXRfY29udHJvbGxlcl9hZGRfbG9va3VwJwo+Cj4gRml4ZXM6IGY5NjIzOTZjZTI5MiAoIkFSTTog
ZGF2aW5jaTogc3VwcG9ydCBtdWx0aXBsYXRmb3JtIGJ1aWxkIGZvciBBUk0gdjUiKQo+IENjOiA8
c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2NS40Cj4gU2lnbmVkLW9mZi1ieTogQXJuZCBCZXJn
bWFubiA8YXJuZEBhcm5kYi5kZT4KPiAtLS0KPiAgYXJjaC9hcm0vbWFjaC1kYXZpbmNpL0tjb25m
aWcgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KClJldmlld2VkLWJ5
OiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6ZXdza2lAYmF5bGlicmUuY29tPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
