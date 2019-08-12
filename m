Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCD589B80
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dD2Zc2u/vJ7UH3qYmAGgaQMNLJH3ZQWrme9jg5nSlwc=; b=RB3EGchs5kPEw/
	xjxCZnVbSCmXcHeUNU3B2gS8DF+JxB2MTfsMQpsICOrft9ZGfll4383qmlLWpab3YhQhAZB3GgTjj
	VkYXDbuaiRobG4/uJJK1JnrkBY9MJnA5PED9Tml/y3w94gPxr1/dIDLhMR82S94Jx6Rdwg5rX6VCf
	EMCxeB0UnjqAVf/IvLITgRhViUV9V2pgRTDZvvVvK3MTEstmEezD96MCnEBciMfDKc09eLx6mu/Aa
	/cQWCFeXzMeuPnZldpzPc2bJCa42xuirw/TECiHqjpF65sIQNEfDQWssVVTue5QLhhGNu4kyuBMuV
	sNb5wxf/jh4UpVm9+aig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7au-0000fh-9X; Mon, 12 Aug 2019 10:30:28 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7af-0000ev-0g
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:30:14 +0000
Received: by mail-wr1-x443.google.com with SMTP id t16so13978587wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 03:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=/xJkw3HJipqZsGqksy3Y3Kh8Zd6FZDx8Lzcx83UAp1E=;
 b=ClsxrPQnDz+StEaMCZFcJZvBHropFOtgMNmG2NxTqoUDwh6xgtGinyNwjek/gGcDsb
 QP1OJM6Xd1F2+jtVWeFLi1FSsRcufM8taxrEwcf0QUaqX+LUqCR3UVrdQTaqW2LpQ1y3
 dsDIJaW+Js6+nyJmMmkLZcAHA2Op1QVU1Zz2KJtwS5ol4eh1LyS+b6Wmj6TYA8FAvXWD
 8cfVzTGdcHIaSf4XbL3iIGj9rO5BeaiZuA8wzFzzEJc68yQgXpSSXAN0sTUNkAeyBUoj
 Q+kMB94rY4bxav5iCDcv+Z52AxWXy7i9GHlFR5KcPojz5YMEn3iZ+w/apQKAo6E42J5I
 Ux1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=/xJkw3HJipqZsGqksy3Y3Kh8Zd6FZDx8Lzcx83UAp1E=;
 b=WMtYZp5lGcmpNv2HrPheOi4PP4w8QM0WJSvqZ4RAUEufycBUiq3b+oNHgAYQhVvMna
 oW/mms/CPSht2724jWUkKttlBqCcNEjT+NQ/JKXUEXJY/rq7OrGKNWoIjE49ngBGTEy/
 NJKXn1LUg55QdAyWiIAFta1NHsnlPBSYnUI1SmtFTMzLXl/JKxqQKaiDpLyL04f/i2Yh
 C3VqEc0XYAn7nFcycF4fa8aWN55TvYX0bZTBgx540MKOhlIzlLgxPbIMlojcYhPu5nsI
 /aaReNaYFu8+FHoJFdLXuzZXl0gnV+rNUYYQyubtUeU1U5hyhxtRSRTN+or51DB1QsVW
 cIBQ==
X-Gm-Message-State: APjAAAXUTjD7gTp0dlvwBuHec7tfADXtqowKmv7kxmn1lPVtbyfMOk6/
 BLhtwKr8N6BUBC9lX8zS6uLyqP0ooys=
X-Google-Smtp-Source: APXvYqysIRjAaDtd2ibOzQb9fjpi50O1qhEVT0kIXTChSIdIo1wq0xFRIV2BJs//0/kavloNGsljaA==
X-Received: by 2002:adf:ef07:: with SMTP id e7mr21348509wro.242.1565605811394; 
 Mon, 12 Aug 2019 03:30:11 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id n8sm90185885wro.89.2019.08.12.03.30.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 03:30:10 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:30:09 +0100
From: Lee Jones <lee.jones@linaro.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] mfd: db8500-prcmu: Mark expected switch fall-throughs
Message-ID: <20190812103009.GL26727@dell>
References: <20190728235614.GA23618@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190728235614.GA23618@embeddedor>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_033013_064683_80FDE235 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAyOCBKdWwgMjAxOSwgR3VzdGF2byBBLiBSLiBTaWx2YSB3cm90ZToKCj4gTWFyayBz
d2l0Y2ggY2FzZXMgd2hlcmUgd2UgYXJlIGV4cGVjdGluZyB0byBmYWxsIHRocm91Z2guCj4gCj4g
VGhpcyBwYXRjaCBmaXhlcyB0aGUgZm9sbG93aW5nIHdhcm5pbmdzOgo+IAo+IGRyaXZlcnMvbWZk
L2RiODUwMC1wcmNtdS5jOiBJbiBmdW5jdGlvbiAnZHNpY2xrX3JhdGUnOgo+IGRyaXZlcnMvbWZk
L2RiODUwMC1wcmNtdS5jOjE1OTI6Nzogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwg
dGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCj4gICAgZGl2ICo9IDI7Cj4gICAgfn5+
fl5+fn4KPiBkcml2ZXJzL21mZC9kYjg1MDAtcHJjbXUuYzoxNTkzOjI6IG5vdGU6IGhlcmUKPiAg
IGNhc2UgUFJDTV9EU0lfUExMT1VUX1NFTF9QSElfMjoKPiAgIF5+fn4KPiBkcml2ZXJzL21mZC9k
Yjg1MDAtcHJjbXUuYzoxNTk0Ojc6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRo
cm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQo+ICAgIGRpdiAqPSAyOwo+ICAgIH5+fn5e
fn5+Cj4gZHJpdmVycy9tZmQvZGI4NTAwLXByY211LmM6MTU5NToyOiBub3RlOiBoZXJlCj4gICBj
YXNlIFBSQ01fRFNJX1BMTE9VVF9TRUxfUEhJOgo+ICAgXn5+fgo+IAo+IFJlcG9ydGVkLWJ5OiBT
dGVwaGVuIFJvdGh3ZWxsIDxzZnJAY2FuYi5hdXVnLm9yZy5hdT4KPiBTaWduZWQtb2ZmLWJ5OiBH
dXN0YXZvIEEuIFIuIFNpbHZhIDxndXN0YXZvQGVtYmVkZGVkb3IuY29tPgo+IC0tLQo+ICBkcml2
ZXJzL21mZC9kYjg1MDAtcHJjbXUuYyB8IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKQoKQXBwbGllZCwgdGhhbmtzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5h
cm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29m
dHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJs
b2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
