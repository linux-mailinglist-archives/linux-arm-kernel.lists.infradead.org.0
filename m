Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C1EA7C3E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 09:03:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i6BXrHjOAKlOK+JLmxTyey8Tzdu/9ABhIR0qDtIinZk=; b=TYQiYoPaBf88Sl
	8ngi7Ydd+tCrfshFM/E1a9nNWpczs4Jn1fLPdruGxOdyUQfu8WvHrYPvrSQZBq7ucQAqTiTi2dzm8
	K3U9vrA8yAcDhx+34BWaHs6/TRzaziADteudiBnOhL4NXZEDvi953HCg0iUSGbmv6W6c5oqWKBpkM
	dBc6gH/9Jl/vdHYCJd51o40DlvXOZcdfhjPGE1JokcE0JYWEvSMoloKi7zPism0T/asgTV3GFvK1O
	1hTnZqpl1DK0JACljaVzE1oF9s096qzSqoHFnWoTXc7gk3hgHS0AadyAaMqW9dPqKMfsjT3E+KMaA
	ctIbgUAQCk7+ypiYEuXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5PKU-0002k0-BO; Wed, 04 Sep 2019 07:03:46 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5PJW-0002jM-3S
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 07:02:48 +0000
Received: by mail-ot1-x341.google.com with SMTP id p23so19585818oto.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 00:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hJb8C0XxHQ+BPdFitXGai/GvOOBT3Zt2EUfRo7xRmzs=;
 b=a4yHwUrxocYrJolETfDC/dVE5GboZjW8JiuE3msRZRCguq5K4r/1oDLfRqaoJmbSH5
 cZI/QYpDHXUrcZotRjrf/trcRlqB8ltA3kJK6DjfGFk3hmeG+jXApv3k7ApeIlJO7AFR
 u4xiR3hK90QpFCVn6HPEsug1s8QSoJBV5XzlMHywHUadBrAyy3Q+bmm3Z68VXeZH43IC
 BjK6Nl3lnDt6qR04RYGBn0zAQ+XvmjU2z9x2H8MgGPQSsPdLycKbhOhmph0C4YMPDCw8
 0RfbGDgCXiPYDnO8jlo/vKaMVj26uIkvRHpk+oocjJrN6gwqA2WzgWoxaJXQX2evtFw3
 3gIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hJb8C0XxHQ+BPdFitXGai/GvOOBT3Zt2EUfRo7xRmzs=;
 b=dZhzVn/VsHC6b5VO2FeINqbqNAYO/c7PT+qp7+JjDkow7XgZM9UIEy/iQW/QmnMjLd
 ITDtcjpeHDsn+JtJLoACrytPVQFosQPq5a09c7ZurrfWYlaEpkY4eB6e+cb94YNxNxrn
 3/SBs1LPzZQBOiGva9wB86xMfxy8Vlta06KrOQUyUh889T1OTaMISlivHiZe9Fnsteyj
 b+/eDaJqvN9bSGQlJ+4gZBZ0oCO6H6+6l93cVvqqAUGdfFEVZ+ayaEUfCEJcUEqPyMWH
 g1/3eOqGwJHQk9KsKNxXB7OFbBoxBYInFkQ2VT3dooaC9d+5deoPBv0FvPwzBslnN75D
 nP6g==
X-Gm-Message-State: APjAAAXWar3bJB2jlBglxPpaTspxkHtNNIonVCO7NlGrN2eBDxXor5S+
 3/kvYzh+zsCS4Hb7g+k3x01YHPPs+FYFU3lSF0UhoA==
X-Google-Smtp-Source: APXvYqxxks9djuMMHQfVLolM/IUn9zgO3O4jtGuHuSO1CHv6NW5x0Jn250yoKjvs6bRFbiPnut+ChZu3saOUiE5+Idk=
X-Received: by 2002:a9d:68c5:: with SMTP id i5mr15201774oto.250.1567580564651; 
 Wed, 04 Sep 2019 00:02:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190904061245.30770-1-rashmica.g@gmail.com>
 <20190904061245.30770-4-rashmica.g@gmail.com>
In-Reply-To: <20190904061245.30770-4-rashmica.g@gmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 4 Sep 2019 09:02:33 +0200
Message-ID: <CAMpxmJUGm3Zs8VHwHnXTQ2cKnpF0caR=7V4bBi1_sy1U2mWc0g@mail.gmail.com>
Subject: Re: [PATCH 4/4] gpio: Update documentation with ast2600 controllers
To: Rashmica Gupta <rashmica.g@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_000246_405254_70FFF138 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Linus Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Joel Stanley <joel@jms.id.au>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xZtyLiwgNCB3cnogMjAxOSBvIDA4OjEzIFJhc2htaWNhIEd1cHRhIDxyYXNobWljYS5nQGdtYWls
LmNvbT4gbmFwaXNhxYIoYSk6Cj4KCkFnYWluLCB0aGlzIG5lZWRzIGEgcHJvcGVyIGNvbW1pdCBk
ZXNjcmlwdGlvbiBhbmQgdGhlIHN1YmplY3Qgc2hvdWxkCnN0YXJ0IHdpdGggImR0LWJpbmRpbmdz
OiAuLi4iLgoKWW91IGFsc28gbmVlZCB0byBDYyB0aGUgZGV2aWNlLXRyZWUgbWFpbnRhaW5lcnMu
IFVzZQpzY3JpcHRzL2dldF9tYWludGFpbmVyLnBsIHRvIGxpc3QgYWxsIHBlb3BsZSB0aGF0IHNo
b3VsZCBnZXQgdGhpcwpwYXRjaC4KCkJhcnQKCj4gU2lnbmVkLW9mZi1ieTogUmFzaG1pY2EgR3Vw
dGEgPHJhc2htaWNhLmdAZ21haWwuY29tPgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvZ3Bpby9ncGlvLWFzcGVlZC50eHQgfCAzICsrLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vZ3Bpby1hc3BlZWQudHh0IGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vZ3Bpby1hc3BlZWQudHh0Cj4gaW5kZXgg
N2U5YjU4Njc3MGIwLi5jZDM4ODc5N2UwN2MgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vZ3Bpby1hc3BlZWQudHh0Cj4gKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vZ3Bpby1hc3BlZWQudHh0Cj4gQEAgLTIsNyAr
Miw4IEBAIEFzcGVlZCBHUElPIGNvbnRyb2xsZXIgRGV2aWNlIFRyZWUgQmluZGluZ3MKPiAgLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+Cj4gIFJlcXVpcmVkIHBy
b3BlcnRpZXM6Cj4gLS0gY29tcGF0aWJsZSAgICAgICAgICAgOiBFaXRoZXIgImFzcGVlZCxhc3Qy
NDAwLWdwaW8iIG9yICJhc3BlZWQsYXN0MjUwMC1ncGlvIgo+ICstIGNvbXBhdGlibGUgICAgICAg
ICAgIDogRWl0aGVyICJhc3BlZWQsYXN0MjQwMC1ncGlvIiwgImFzcGVlZCxhc3QyNTAwLWdwaW8i
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJhc3BlZWQsYXN0
MjYwMC1ncGlvIiwgb3IgImFzcGVlZCxhc3QyNjAwLTEtOHYtZ3BpbyIKPgo+ICAtICNncGlvLWNl
bGxzICAgICAgICAgIDogU2hvdWxkIGJlIHR3bwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
LSBGaXJzdCBjZWxsIGlzIHRoZSBHUElPIGxpbmUgbnVtYmVyCj4gLS0KPiAyLjIwLjEKPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
