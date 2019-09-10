Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49552AE630
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 11:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Xp5I9JnZxIyYR+Tt5uiM6/49KAHluT1grK6jYgo/nw=; b=AmtJWP4wIhXCMs
	QkPWEqF04Q4vGA6ijLa5iLkuMJTKiwA2OCiXp02AMAuPHiHWGLedEEJPGGruHMRUd090y6a56OYpD
	7Wk2n8MJRDqAgn56FiA0JxntpcVeFiwi4PUJ2+csBcWtn+z4WB4iYEPV5smY3EllFu7qBd2CnQMYc
	VARovt8E4/gi7pHh9aV7EXp3R0gwcJXiV7taTfq6EiEzbSBCGRPkEtq+lPFeycOCD9Fq1qVzo3Sfp
	kUQDV2FTIkYxEW+C9y9GRitSgy82H8tgwwQRBqBweRl/hKHlv0//xNYRDF6ZDABsrJFGnz3vQFrO1
	fgjGPJxT6RWzJSJyv1Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7c0f-00028q-L7; Tue, 10 Sep 2019 09:00:25 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7c0M-0001J0-4v
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 09:00:07 +0000
Received: by mail-ot1-f66.google.com with SMTP id c10so17303715otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 02:00:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tDTK3OLpchCjCRU8TOfjhGkxmXXLcL73wfiJk/3qy3k=;
 b=M2zrUf7OJw0s9CU4OtteuO+83ShnF3PtT7xPfVK+EB+87IqxPrVUD2u9rcWlZRVI8Z
 6b5O0WSLTe2Yn4ssWdFgkN/6TXls/z7NMtVOAa7TCrO7TK/uAPw5LmiNdxS/Wj17q00V
 2SCmI0cvPsFSwqbH2TZi5mssbS+MN0A5fHYr+OwDfeYoTAf1tjCBiqDBR6mNdR8f5RsT
 bGH1hYfbh27vqww06Sr3RuCTUmfzTMLBSD5eFxAuWydsQhRAWRvVqXroX3NcVMZQk1oD
 YzmmD1qyuh5F7OQq5wqAnr7rUvJ5Le+O71Z0mGlbNmpSA3lXqp++xfV1ksbnz1YOPkYT
 6k3A==
X-Gm-Message-State: APjAAAX+ezofiRVU1+igYwx7eADMI9fKjs4xPP8GTe33HDFCrpcNZH/e
 BJ9eJUUT5j0BLJJPpCRrQUY30cY4WdcLrBNk7N0=
X-Google-Smtp-Source: APXvYqw1/V7JJZY7iU4ASdisuWl7yMwdrDM7D32UeSrm/lIre9DoD2PTYCLldEyJ3F30z/x0IGm9trL79jz0Nifw45k=
X-Received: by 2002:a9d:2cc:: with SMTP id 70mr24743844otl.145.1568106003005; 
 Tue, 10 Sep 2019 02:00:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190906084539.21838-1-geert+renesas@glider.be>
 <CAMpxmJVrQ92+ULRrzyN52LwEcdPTuK7OZssZjUcRPRSTBQ=fwg@mail.gmail.com>
In-Reply-To: <CAMpxmJVrQ92+ULRrzyN52LwEcdPTuK7OZssZjUcRPRSTBQ=fwg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 10 Sep 2019 10:59:51 +0200
Message-ID: <CAMuHMdWpDOSpz3Mak7Vd=CY7r_kxPUx3A0CMqC-VY6TXtD9cqg@mail.gmail.com>
Subject: Re: [PATCH 0/4] gpio: API boundary cleanups
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_020006_201521_CBFA4945 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linus Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQmFydG9zeiwKCk9uIFR1ZSwgU2VwIDEwLCAyMDE5IGF0IDEwOjUxIEFNIEJhcnRvc3ogR29s
YXN6ZXdza2kKPGJnb2xhc3pld3NraUBiYXlsaWJyZS5jb20+IHdyb3RlOgo+IHB0LiwgNiB3cnog
MjAxOSBvIDEwOjQ1IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+
IG5hcGlzYcWCKGEpOgo+ID4gVGhpcyBwYXRjaCBzZXJpZXMgY29udGFpbnMgdmFyaW91cyBBUEkg
Ym91bmRhcnkgY2xlYW51cHMgZm9yIGdwaW9saWI6Cj4gPiAgIC0gVGhlIGZpcnN0IHR3byBwYXRj
aGVzIG1ha2UgdHdvIGZ1bmN0aW9ucyBwcml2YXRlLAo+ID4gICAtIFRoZSBsYXN0IHR3byBwYXRj
aGVzIHN3aXRjaCB0aGUgcmVtYWluaW5nIGdwaW9saWIgZXhwb3J0ZWQgZnVuY3Rpb25zCj4gPiAg
ICAgZnJvbSBFWFBPUlRfU1lNQk9MKCkgdG8gRVhQT1JUX1NZTUJPTF9HUEwoKS4KPiA+Cj4gPiBB
ZnRlciB0aGlzIHRoZXJlIGlzIG9ubHkgYSBzaW5nbGUgR1BJTyBkcml2ZXIgZnVuY3Rpb24gZXhw
b3J0ZWQgd2l0aAo+ID4gRVhQT1JUX1NZTUJPTCgpOwo+ID4KPiA+ICAgICBkcml2ZXJzL2dwaW8v
Z3Bpby1odGMtZWdwaW8uYzpFWFBPUlRfU1lNQk9MKGh0Y19lZ3Bpb19nZXRfd2FrZXVwX2lycSk7
Cj4gPgo+ID4gSSBiZWxpZXZlIHRoaXMgc3ltYm9sIHdhcyBuZXZlciB1c2VkIHVwc3RyZWFtLCBh
bmQgbWF5IGJlIGEgcmVsaWMgb2YgdGhlCj4gPiBvcmlnaW5hbCBvdXQtb2YtdHJlZSBjb2RlIHRo
ZSBodGMtZWdwaW8gd2FzIGJhc2VkIG9uLiAgSSBkb24ndCBrbm93IGlmCj4gPiB0aGVyZSAoc3Rp
bGwpIGV4aXN0IG91dC1vZi10cmVlIHVzZXJzIG9mIHRoZSBzeW1ib2wuCj4gPgo+ID4gVGhhbmtz
IGZvciB5b3VyIGNvbW1lbnRzIQo+Cj4gQWxsIGxvb2tzIGdvb2QgdG8gbWUuIEFyZSB5b3UgZmlu
ZSB3aXRoIHRoaXMgYmVpbmcgcGlja2VkIHVwIGFmdGVyIHRoZQo+IHY1LjQgbWVyZ2Ugd2luZG93
PwoKU3VyZSwgd2hhdGV2ZXIgc3VpdHMgeW91IGJlc3QuCgpUaGFua3MhCgo+ID4gR2VlcnQgVXl0
dGVyaG9ldmVuICg0KToKPiA+ICAgZ3Bpbzogb2Y6IE1ha2Ugb2ZfZ2V0X25hbWVkX2dwaW9kX2Zs
YWdzKCkgcHJpdmF0ZQo+ID4gICBncGlvOiBvZjogTWFrZSBvZl9ncGlvX3NpbXBsZV94bGF0ZSgp
IHByaXZhdGUKPiA+ICAgZ3Bpbzogb2Y6IFN3aXRjaCB0byBFWFBPUlRfU1lNQk9MX0dQTCgpCj4g
PiAgIGdwaW86IGRldnJlczogU3dpdGNoIHRvIEVYUE9SVF9TWU1CT0xfR1BMKCkKCkdye29ldGpl
LGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0
ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxp
bnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBl
b3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91
cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4K
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
