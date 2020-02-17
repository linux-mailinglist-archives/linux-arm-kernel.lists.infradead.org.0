Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26390160EEC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:39:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0xX8rEnFjBSLYhNx2PlL07B2jGBpYd00V0qrhwsqio=; b=WKS9YZ1vLabA4R
	OeCzZ3mpxy5HGhb7T2SPdMY6WwVpPMVbdVUDOJvTif2jn0xvTSaayXEQ0kQFSQX8jjHT8OB+9yxa+
	Jzp5ev9l+pUlC1+ZuDAYs4aEBbzS4DZp6VHB+2bF3y/BhlYuid8ku68Omxz3XfeVHW3UIiu3CGPce
	olZ2+jyVY0JBIXSqlCfQMD17pvMHH7AbjA01mB3jbEYt3uJ7LgYQhW21TV8BWtfMs4kSFtpgW7A2j
	+1udT72+glHlCj6uZth3RXLOwjz8iwIZ2DRHiy2WJdp9NI2RWz7yaD9P7CuXtKChLBVLKNlNkm3t7
	GOkQuYUa4/NxfrfxPKTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3crm-0007sm-3v; Mon, 17 Feb 2020 09:39:02 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3crf-0007s6-BZ
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:38:57 +0000
Received: by mail-qk1-x744.google.com with SMTP id p7so15571643qkh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 01:38:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Afwt3f5haicc54NjifQPcLwy6vygZPMQ4dpzw9cQKTs=;
 b=0FeSRJlLGZWcE4RRPtM4gSIGicjoUxKa7odOoqFd72hdA+O7Xh2FTW49Fm7Lpsu7Mi
 lh9RJGPKS+YWQzILdfhjbg2+ReSx1iyh/T9kJ1u7/SJZ6cgpgnWRAj/aO1VsoeNMHsj9
 4tbh6ZUDZ9kxXD6jidbjINrLnHYHzPbiO/uF0q9hQWRzKnuE0Gdv9DEGu6I1nZCgpBMa
 IDiuVxZw031QBeoBhdhzfbPD6PdckAYJJjHUP5h4WH7M5YpAij0mqLKV58ZdYBbzUb+z
 GTs0x/6AOtVfey0ERi+0yuJiGWyYX9Lk6Tp27N3EfBD+oPIIYXmO6rJ9UttLRpQc0KuK
 8KQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Afwt3f5haicc54NjifQPcLwy6vygZPMQ4dpzw9cQKTs=;
 b=NLCOuO4RyggGCQfXRPkQsIdR8z9bCmYJCmIjaIDvFj8u3xKNedYN8uVN5SIN08Xv7K
 8f3dYHXGicrypsvbLp9yv+ZHjZfd4P6VBbW5lvtqsUI2dV1sBJlGTgrPXL9CppumJlWX
 CdK4FiId6X/gVwL5x6OAWqzXakjZK/LeKq1gVGhlAgrNjfVOHzYkePoFSKGKKzQb2Bvu
 OFZyAZPneMh1T0sxGKYDM05B0YW58ZnhZ/hk6I3eM0TnlyItTscP+sEioj6HTs1zv2pi
 uxeL4IWY8Toh/FOcyPECsooitKmsixLOADddNnq1uTYj2nkDBUBYkuANFAXhc2Q2Xu/V
 4UGA==
X-Gm-Message-State: APjAAAWGkYggE12YdF83/qogao+mS7q96rbgfJk1ZobjDxU/XTYae8PI
 iXdTShuujZ3h1xPbCwyrE0dw4BPb8VSyuQ/8JM409w==
X-Google-Smtp-Source: APXvYqy/AKGSo15DXUV1VHmJaTP8/sfbAtmwyM6qsJnZ0s7CRGTWMHJ7xZ5b5fHI3a6UNJekH+6m3F9i4rgssApSRAc=
X-Received: by 2002:a37:8343:: with SMTP id f64mr12901966qkd.21.1581932333854; 
 Mon, 17 Feb 2020 01:38:53 -0800 (PST)
MIME-Version: 1.0
References: <20200211210618.GA29823@embeddedor>
In-Reply-To: <20200211210618.GA29823@embeddedor>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Mon, 17 Feb 2020 10:38:43 +0100
Message-ID: <CAMpxmJUDG6xq2qUq6yDRQQjbZGsjTTbDUCN8hGkiQwGZk=z05A@mail.gmail.com>
Subject: Re: [PATCH] gpio: uniphier: Replace zero-length array with
 flexible-array member
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_013855_393426_781BB53B 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linus Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 linux-gpio <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

d3QuLCAxMSBsdXQgMjAyMCBvIDIyOjAzIEd1c3Rhdm8gQS4gUi4gU2lsdmEgPGd1c3Rhdm9AZW1i
ZWRkZWRvci5jb20+Cm5hcGlzYcWCKGEpOgo+Cj4gVGhlIGN1cnJlbnQgY29kZWJhc2UgbWFrZXMg
dXNlIG9mIHRoZSB6ZXJvLWxlbmd0aCBhcnJheSBsYW5ndWFnZQo+IGV4dGVuc2lvbiB0byB0aGUg
QzkwIHN0YW5kYXJkLCBidXQgdGhlIHByZWZlcnJlZCBtZWNoYW5pc20gdG8gZGVjbGFyZQo+IHZh
cmlhYmxlLWxlbmd0aCB0eXBlcyBzdWNoIGFzIHRoZXNlIG9uZXMgaXMgYSBmbGV4aWJsZSBhcnJh
eSBtZW1iZXJbMV1bMl0sCj4gaW50cm9kdWNlZCBpbiBDOTk6Cj4KPiBzdHJ1Y3QgZm9vIHsKPiAg
ICAgICAgIGludCBzdHVmZjsKPiAgICAgICAgIHN0cnVjdCBib28gYXJyYXlbXTsKPiB9Owo+Cj4g
QnkgbWFraW5nIHVzZSBvZiB0aGUgbWVjaGFuaXNtIGFib3ZlLCB3ZSB3aWxsIGdldCBhIGNvbXBp
bGVyIHdhcm5pbmcKPiBpbiBjYXNlIHRoZSBmbGV4aWJsZSBhcnJheSBkb2VzIG5vdCBvY2N1ciBs
YXN0IGluIHRoZSBzdHJ1Y3R1cmUsIHdoaWNoCj4gd2lsbCBoZWxwIHVzIHByZXZlbnQgc29tZSBr
aW5kIG9mIHVuZGVmaW5lZCBiZWhhdmlvciBidWdzIGZyb20gYmVpbmcKPiBpbmFkdmVydGVubHkg
aW50cm9kdWNlZFszXSB0byB0aGUgY29kZWJhc2UgZnJvbSBub3cgb24uCj4KPiBUaGlzIGlzc3Vl
IHdhcyBmb3VuZCB3aXRoIHRoZSBoZWxwIG9mIENvY2NpbmVsbGUuCj4KPiBbMV0gaHR0cHM6Ly9n
Y2MuZ251Lm9yZy9vbmxpbmVkb2NzL2djYy9aZXJvLUxlbmd0aC5odG1sCj4gWzJdIGh0dHBzOi8v
Z2l0aHViLmNvbS9LU1BQL2xpbnV4L2lzc3Vlcy8yMQo+IFszXSBjb21taXQgNzY0OTc3MzI5MzJm
ICgiY3hnYjMvbDJ0OiBGaXggdW5kZWZpbmVkIGJlaGF2aW91ciIpCj4KPiBTaWduZWQtb2ZmLWJ5
OiBHdXN0YXZvIEEuIFIuIFNpbHZhIDxndXN0YXZvQGVtYmVkZGVkb3IuY29tPgoKUGF0Y2ggYXBw
bGllZCwgdGhhbmtzIQoKQmFydG9zegoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
