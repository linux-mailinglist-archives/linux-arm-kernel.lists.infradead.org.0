Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFD51F17E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 13:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e7j+KlDsdOBAX2Qvj8UCyD/goeWgxzXMasBIsbCdkkM=; b=VYrDKMeYyc8YII
	FuSkaYDXdmKgndB9faRcdYaJ4dmYN8gazFyMHXz883Qw1CvoRQKbqKoIJzxjkz1qNWg/MWdvUHAzE
	oLcr2hD0ngNdIvWx2hLo/sKzyPQl6jagvE/dzxZ1PvgnHw68vvyOlcBkFUb5HAj2vSOvV5kcgC2Kd
	4cvKMF0YfOo1mjW8H0v8Y9gMBG+csslnnXTzGMKB2kTWuy5i26sm5Z0T8HgjeVdOzsEtGcxJPQZw3
	7OCuCZyTXmCmSdwf0yN0y80e5VqdmodHD19Xe5Qo0N57BfrA8rmzFM03uRORSdljqRs9shIOR2d7t
	8Msj5PBaYLpYqVe+Lfcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiG0t-0007Qs-Uz; Mon, 08 Jun 2020 11:32:23 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiG0k-0007Pi-M5; Mon, 08 Jun 2020 11:32:16 +0000
Received: by mail-wr1-x443.google.com with SMTP id p5so16971622wrw.9;
 Mon, 08 Jun 2020 04:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=xSWNJpoj9Q+cfvAowlT8L7DGalgysWzhUfSm0eMm4Aw=;
 b=YTnOMmB4tb7Dp7ULkcGrEQ2H44bPw8oI8UxeG8wLRrUOFOX9HKqGiFjpA/+2yyikWg
 TYOAL5M7vN2hsz83LGl5LjLejxt2SDIQED5YjCaeZSRfy6ePf9Rg+2ToMG9xszGpujSr
 7hX8fQU3sC74EfkKhAk1TEt+a17drdUeJLH3eYolZX5+1X9XUSgLbZG7quo+lVq4y8yH
 zIP/6831snBBGt/NRhjDe28Nu28zeDxb4jDCoiML9lrYQAdf/4HgcuyMKjX4UxwTb2ba
 HThTClKTaH1kCL2k02fzgWTmHn9nTrwDG2JUB1l30ZRmO6xk/G+S4UIwjOjaOdChobvR
 sZPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=xSWNJpoj9Q+cfvAowlT8L7DGalgysWzhUfSm0eMm4Aw=;
 b=Tm5cRLW3k1s83O1DaGvVxfkRM7eIgs130kb59x4poyWoCVBaMW42+vHNVQoGKdm9Jl
 U/yW6WTd7oGFRsVEJdn/OHxOWlB+IAZjP+UQWTiskY/KutvVV3E61CkrJZC06Xc482Lb
 mexs+HDhbS/dmssL2AqKp3bnjn99Q8J6GE71yAfyBz36D961kkAgp05Df3zVbSj3zwqL
 1WNBCrlF10FWFsPK7WCcD5i6DQHcuIQRQkUquzRDd7k76/4IkWXoYOc8dHQOVviEP7Tc
 InF8ZHtCcYcbi8gJ7Q1grY1bhUaNnAwB0nFaOOHWdTvomjcZXiXA9ZpAsIrc/qlFKY30
 iExQ==
X-Gm-Message-State: AOAM531GyxzeHY889nm0bTXryF7W+dG0K9elTe0NePthqCUJ/bTfNRCs
 j4Kj+CkpCWEulBGCTASPkSc=
X-Google-Smtp-Source: ABdhPJyWGnzhV7sCJMthf69WCiVGa54Q3A42fYSaonFUzQL96QhkraYk/+8MtD6KJiYecm6g6HARww==
X-Received: by 2002:adf:ff82:: with SMTP id j2mr22242545wrr.375.1591615928639; 
 Mon, 08 Jun 2020 04:32:08 -0700 (PDT)
Received: from [172.16.20.20] ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id d17sm25584732wrg.75.2020.06.08.04.32.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jun 2020 04:32:08 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
Subject: Re: [PATCH] soc: amlogic: meson-gx-socinfo: Fix S905X3 ID
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <7d58e4db-2893-3675-eb93-ea14c3534b5b@baylibre.com>
Date: Mon, 8 Jun 2020 15:32:03 +0400
Message-Id: <ACA41DA3-88A4-4141-AEAD-C056C9834B6B@gmail.com>
References: <20200604044808.30995-1-christianshewitt@gmail.com>
 <7d58e4db-2893-3675-eb93-ea14c3534b5b@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
X-Mailer: Apple Mail (2.3445.104.14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_043214_729137_764A013B 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4gT24gOCBKdW4gMjAyMCwgYXQgMTI6NTggcG0sIE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25n
QGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4gCj4+IFRoZSBjdXJyZW50IHZhbHVlIGlzIHRha2VuIGZy
b20gQW1sb2dpYydzIDQuOSBic3Aga2VybmVsIHdoaWNoIGFwcGVhcnMKPj4gdG8gdXNlIHRoZSB3
cm9uZyBJRC4gRm9yIGNvbXBhcmlzb24sIGhlcmUncyBiZWZvcmUvYWZ0ZXI6Cj4+IAo+PiBbICAg
IDAuMTUyMjM3XSBzb2Mgc29jMDogQW1sb2dpYyBNZXNvbiBTTTEgKFVua25vd24pIFJldmlzaW9u
IDJiOmMgKDEwOjIpIERldGVjdGVkCj4+IFsgICAgMC4xNTI0NjNdIHNvYyBzb2MwOiBBbWxvZ2lj
IE1lc29uIFNNMSAoUzkwNVgzKSBSZXZpc2lvbiAyYjpjICgxMDoyKSBEZXRlY3RlZAo+IAo+IEZv
ciBTTTEgd2UgaGF2ZSB3ZWlyZCB2YWx1ZXMsIGhlcmUgYXJlIHRoZSBvbmUgd2UgZ2VuIG9uIEtl
cm5lbENJOgo+IFNFSTYxMCAoUzkwNUQzKToKPiBBbWxvZ2ljIE1lc29uIFNNMSAoVW5rbm93bikg
UmV2aXNpb24gMmI6YyAoNTA6MikKPiAKPiBWSU0zTCAoUzkwNUQzKQo+IEFtbG9naWMgTWVzb24g
U00xIChVbmtub3duKSBSZXZpc2lvbiAyYjpjICg0OjIpCj4gCj4gQW5kIHlvdSByZXBvcnQgbm93
Ogo+IE9kcm9pZC1DNCAoUzkwNVg0KQo+IEFtbG9naWMgTWVzb24gU00xIChVbmtub3duKSBSZXZp
c2lvbiAyYjpjICgxMDoyKQo+IAo+IEFuZCBhdCB0aGUgdGltZSB5b3UgcmVwb3J0ZWQ6Cj4gVklN
M0wgKFM5MDVEMykKPiBBbWxvZ2ljIE1lc29uIFNNMSAoUzkwNUQzKSBSZXZpc2lvbiAyYjpjIChi
MDoyKQo+IAo+IFNvIEknbSBxdWl0ZSBsb3N0IGhlcmXigKYuCgpJbiBbMV0geW91IGFkZGVkIHRo
ZSBTTTEgU29DIElEIGFuZCBTOTA1WDMgSUQgeyAiUzkwNVgzIiwgMHgyYiwgMHg1LCAweGYgfQp3
aGljaCBtYXRjaGVzIHRoZSBCU1Aga2VybmVsIHNvdXJjZS4KCkluIFsyXSBJIGFkZGVkIGEgc2Vj
b25kIFM5MDVYMyBJRCB7ICJTOTA1WDMiLCAweDJiLCAweGIwLCAweGYyIH0gZm9yIFZJTTNMLCBi
dXQKdGhpcyB3YXMgYSBtaXN0YWtlICh0aGUgY2hpcCBpcyBTOTA1RDMpIHNvIFszXSBjb3JyZWN0
ZWQgaXQgdG8geyAiUzkwNUQzIiwgMHgyYiwKMHhiMCwgMHhmMCB9IHdoaWNoIG1hdGNoZXMgbXkg
VklNM0wgYm9hcmQuIElmIHRoZSBWSU0zTOKAmXMgaW4gS2VybmVsQ0kgbm93IHNob3cKIjJiOmMg
KDQ6MinigJ0gaXQgbG9va3MgdGhlcmUgaGFzIGJlZW4gYSBwYWNrYWdlIGNoYW5nZSAoc2lsaWNv
biBmaXhlcz8pIGFuZCB3ZQpuZWVkIHRvIGFkZCBhbm90aGVyIFM5MDVEMyBwYWNrYWdlIElELgoK
SW4gdGhlIGxhc3Qgd2VlayBJIGhlbHBlZCB0aHJlZSBkaWZmZXJlbnQgdXNlcnMgaW5zdGFsbCBM
RSBvbiBTOTA1WDMgQW5kcm9pZApib3ggZGV2aWNlcywgYWxsIG9mIHdoaWNoIGRlY2xhcmUgIjJi
OmMgKDEwOjIp4oCdIGFzIHRoZSBTb0MgSUQsIHdoaWNoIG1hdGNoZXMKdGhlIG9ubHkgUzkwNVgz
IGRldmljZSBJIG93biAoT2Ryb2lkIEM0KS4gU28gSSBhc3N1bWVkIHRoZSBCU1AgaXMgd3Jvbmcg
YW5kCnNlbnQgdGhpcyBmaXggcGF0Y2guCgpJZiBTRUk2MTAgaXMgUzkwNVgzIChpbXBsaWVkIGJ5
IHRoZSBvcmlnaW5hbCBTTTEgc3VibWlzc2lvbiBmcm9tIHlvdSkgS2VybmVsQ0kKb3V0cHV0IHNo
b3dzIHRoZSBjdXJyZW50IElEIGlzIHdyb25nICjigJhVbmtub3du4oCZKSBzbyB3ZSBwcm9iYWJs
eSBuZWVkIHRvIGZpeCBpdAp3aXRoIHsgIlM5MDVYMyIsIDB4MmIsIDB4NTAsIDB4ZjAgfSB0aGVu
IGFkZCBuZXcgUzkwNUQzIChWSU0zTCkgYW5kIFM5MDVYMyAoYXMKcGVyIHRoaXMgcGF0Y2gpIElE
cy4KCklmIFNFSTYxMCBpcyBTOTA1RDMgKGFzIHN0YXRlZCBpbiB0aGlzIHRocmVhZCkgdGhlIGZp
eCBpbiB0aGlzIHBhdGNoIGlzIHN0aWxsCmNvcnJlY3QsIGJ1dCB3ZSBhbHNvIG5lZWQgdG8gc2Vu
ZCBhIHNlY29uZCBwYXRjaCB0byBhZGQgdHdvIG5ldyBTOTA1RDMgcGFja2FnZQpJRHMgKFNFSTYx
MCArIFZJTTNMKS4KCknigJlsbCBwaW5nIHlvdSBvZmYtbGlzdCB0byBkaXNjdXNzLgoKQ2hyaXN0
aWFuCgpbMV0gYzljYzliZWMzNmQwICgic29jOiBhbWxvZ2ljOiBtZXNvbi1neC1zb2NpbmZvOiBB
ZGQgU00xIGFuZCBTOTA1WDMgSUTigJ0pClsyXSAxZDdjNTQxYjhhNWIgKCJzb2M6IGFtbG9naWM6
IG1lc29uLWd4LXNvY2luZm86IEFkZCBTOTA1WDMgSUQgZm9yIFZJTTNM4oCdKQpbM10gZmRmYzY5
OTdiZDA4ICgic29jOiBhbWxvZ2ljOiBtZXNvbi1neC1zb2NpbmZvOiBGaXggUzkwNUQzIElEIGZv
ciBWSU0zTOKAnSkKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
