Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4641451A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 09:26:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZN/+awt4uzbTSU7nY9gg1mcX/MZVPPDfPJk8dTkd8c=; b=OgoqxWt5zNCGSo
	gsejiO1tZGKr2BTtfpwAhWs2hDSLLZS5TLFk/uSogPLrcYJYiltkOkjwCUAk0/f6gMHPHe5GEjz17
	rIUegtqL+Ui3nI3g2goUm5+xr9Qm9GQt64VEn/sBXkI+kShmFQKJD7VfNGKx02VeZgkXwDZWddu7C
	5LPXNSYyNGYVZ9tFfdZMZ2fWYijp//C9+Zu5s/HhbWKfWZWqQwW8QssyRr2X1whSLVwdwEpOXzSBR
	f9Bx6y/xAsYiCsrd1DX0xQR93zBL0PbIajwc0MZ9jkA3SLefj+5D6u+5fBc0MivLQalmT8gcO7dHd
	TngxR+3EG2SKEVcOx00Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNY0f-0007yR-EK; Mon, 06 May 2019 07:26:01 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNY0Q-0007pY-Ii
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 07:25:48 +0000
Received: by mail-qk1-x742.google.com with SMTP id k189so61917qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 00:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pO57+WHM9icAQXA84tNTYrkL98PNEsC+5xBzFAyNyVg=;
 b=Q4sRowf0YZqref5eztkLd8S7ufHGsFLRndJMSOMuqY3b4S0MmgjZiYllijIxccx3+i
 d8qqm5j/vpnQrGZwJxPwwlWKsTrjEKWY6V1DThjLxMKK0nJ3OLFoyeqykRh4uzGe/OfR
 dByViWZvEs33mHGK/JVSuWGgxQUZHf262x09TCQPzgdAysQkppKolZRuF8gPsb228h1n
 iZNxlwS9hfyLFHgtVphlUl3yYDAaS0SGzHvmBgn3v+C0jrO4dnMBQekgtaTwTwxTYNQj
 JDN9iFu/x6u/ntfRt42Z+55u5TsUjZFp48zR3MbdjmPhULajgsdi4kI1dK6BPdNnQTjK
 OxHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pO57+WHM9icAQXA84tNTYrkL98PNEsC+5xBzFAyNyVg=;
 b=SqG9BwlHoLtoDRenVaWzyCR7uCBFEqI+e9lvJ9xuj0gYYphu8SpUDFxiGGFfnv/Bp+
 64AFov/J1IayPLJ3VzVk4AHBS3kNaWN6YJhaPkvh/Y88iNA/Ze6uNidSwiBCJVt3g5zN
 PbB6homBQerJsvW2ChK5Tzk/1wMCN/+bAKpS2Gk2XxsTt02icMYDqf+DmhjLyHljPUUg
 xC6X46v3zSOWS9UhQfZglUxV83c3gkOD6zb5vBanXOsleK6oI5nO6hMo6+lWSfw7VD6m
 RuJN0K6gBfMK5qsUMU8A0qWlsGddxyKMCgdphyL0iSmJOYS1GDbSeu8hIm3vj3GHqhbF
 Sm+w==
X-Gm-Message-State: APjAAAVYUDC8vwlNRjPDZSWoFOI010PaiYsEAkdEXNb+ue2pJiETFVlZ
 mi6I4uSq1OiihoSqXUs0/nYP5tRwDimWQTo35drByA==
X-Google-Smtp-Source: APXvYqzi6kaFJ7dpE+n+VOhA31cBwTt9A6DfQSW/RJ6FOD2P+M23nMnX4FFbt/nvMku6Ns54SMrMIRxJijtROfat5M4=
X-Received: by 2002:a37:8843:: with SMTP id k64mr18569492qkd.8.1557127545107; 
 Mon, 06 May 2019 00:25:45 -0700 (PDT)
MIME-Version: 1.0
References: <1556114601-30936-1-git-send-email-fabien.dessenne@st.com>
 <1556114601-30936-2-git-send-email-fabien.dessenne@st.com>
 <c445397b-36a7-3511-603a-e94ae6ddcf12@st.com>
In-Reply-To: <c445397b-36a7-3511-603a-e94ae6ddcf12@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Mon, 6 May 2019 09:25:34 +0200
Message-ID: <CA+M3ks6M7BC3VP-4O7suVucnYySJps4CxyAyVz_ra5EVDUzrag@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/stm: ltdc: manage the get_irq probe defer case
To: Philippe CORNU <philippe.cornu@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_002546_621255_63D6CBD5 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Fabien DESSENNE <fabien.dessenne@st.com>,
 Yannick FERTRE <yannick.fertre@st.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Vincent ABRIOU <vincent.abriou@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgdmVuLiAyNiBhdnIuIDIwMTkgw6AgMTQ6MzAsIFBoaWxpcHBlIENPUk5VIDxwaGlsaXBwZS5j
b3JudUBzdC5jb20+IGEgw6ljcml0IDoKPgo+IEhpIEZhYmllbiwKPiBhbmQgdGhhbmsgeW91IGZv
ciB5b3VyIHBhdGNoLAo+Cj4gQWNrZWQtYnk6IFBoaWxpcHBlIENvcm51IDxwaGlsaXBwZS5jb3Ju
dUBzdC5jb20+Cj4KPiBQaGlsaXBwZSA6LSkKPgo+IE9uIDQvMjQvMTkgNDowMyBQTSwgRmFiaWVu
IERlc3Nlbm5lIHdyb3RlOgo+ID4gTWFuYWdlIHRoZSAtRVBST0JFX0RFRkVSIGVycm9yIGNhc2Ug
Zm9yIHRoZSBsdGRjIElSUS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBGYWJpZW4gRGVzc2VubmUg
PGZhYmllbi5kZXNzZW5uZUBzdC5jb20+CgpBcHBsaWVkIG9uIGRybS1taXNjLW5leHQuClRoYW5r
cywKQmVuamFtaW4KCj4gPiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMgfCAz
ICsrKwo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jIGIvZHJpdmVycy9ncHUvZHJtL3N0bS9s
dGRjLmMKPiA+IGluZGV4IDU2NmIwZDguLjUyMWJhODMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vc3RtL2x0ZGMuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMK
PiA+IEBAIC0xMTc0LDYgKzExNzQsOSBAQCBpbnQgbHRkY19sb2FkKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZGV2KQo+ID4KPiA+ICAgICAgIGZvciAoaSA9IDA7IGkgPCBNQVhfSVJROyBpKyspIHsKPiA+
ICAgICAgICAgICAgICAgaXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2LCBpKTsKPiA+ICsgICAg
ICAgICAgICAgaWYgKGlycSA9PSAtRVBST0JFX0RFRkVSKQo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIGdvdG8gZXJyOwo+ID4gKwo+ID4gICAgICAgICAgICAgICBpZiAoaXJxIDwgMCkKPiA+ICAg
ICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiA+Cj4gPgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
