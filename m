Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC6574B0D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 12:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dNTxecob+oH7I50ijmhAEYjuUYyx+slG4rw8nbGEZk=; b=WsNa3Yd21rYbJm
	xMHkJ07/VjQem/Yi8WqgBiEP1uemT5sdOBm3uMK0ka4375h4GfAXYvke54GXXw0L18mx4QC8RH97+
	C5FiVaoTA5DYt55E5+SkFkwcxtnC4XDbmKnkY6Dk+1LpdZs+Hxo/6Z5UonpMfu5CemcQeLKNaZrrN
	lom6a/Pk3F2UU6YhsZk32mytX3URRYhCX31/tMzgwDj67PIvHKy+GjATmuLXXLHo9PDpMLPk81q2U
	OWiRSJECDr2cYhXtgm8N9VswesLy2Lyip9pJDTqj287zyRI6U3KHIzEeIJeojtqfjT0OYkzpr1l5l
	g8pf+wEYOvRO9TdB1G8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqadL-0004hw-6a; Thu, 25 Jul 2019 10:05:59 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqad6-0004gs-KI
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 10:05:46 +0000
Received: by mail-qk1-x741.google.com with SMTP id 201so35944398qkm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 03:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7MqY5TdYDukrmEcvyvH1Gy2JxiZVpxAfuPKcTJpAIOc=;
 b=bZG05YAAVga3Lrh/0yIRiZu0OwBZ1sptqRJR8ItXyufWxbjZiVGIoqJ0QpP+TPerhF
 VS0hlrNFycUS3jM5WWtRoTESWbMzjpbMJgoMIj2JvhSvGV8FVTTpKMFtDJdX9DvdLpM6
 9DRwIIX/Qy19YhgVSoNRaga21XU0ELRRBHGN2XVRcrCVDHwsYoEyrRoa/m2wMLE0DfON
 diKx1f2P1O9zbznpnDIteD9wOHwQ/zzPS3GCxbbLKKO1EAKn3XcjR9ESC3eEnrRNBXfq
 D5x8VcJmwr7IFSNLpFwemFmEYv6f9thE4MW8BI/eQmHOwtYrPEkfgzCM7MUc4qpuJRo3
 GiUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7MqY5TdYDukrmEcvyvH1Gy2JxiZVpxAfuPKcTJpAIOc=;
 b=S/bb/yB8fetgrH1X3NQvlobnw+917cHKAC/VAAqfewjRUVuXNNI/r4UBBCykqCWB41
 /MLbI1yjMSR5OqUX2euUVfyIkgLzl6nxcbLRjj1n/+LvH8fRIhHRYtvjAPrF6h7nRU+6
 hKwbrG66PTmuGFEmc0apySrn9ktMS5Z9NfBKvdn3yCodKSU+6QOvyMtqAkPkrIEu1C5q
 ifyNrQg1mnAgcZ9LPe+FMl8fAeUNfzvJ+D9mD6umkKgTmLez53yXNeRVOPgN8JSCNa+S
 oJcjLyJGS48pBqbz5niuky8PrUCnWxkbZY5rfsI9KtZSf4d7wyIHpuwftugcCJcTXmF5
 KmRg==
X-Gm-Message-State: APjAAAXmqGRMX7CAgdpxiovEe/aW/kCLr/+J8ER4Izz8kErx968hQBBU
 VAT10r/KTpqV8tTfjhAUdVQzi+zc5QsjsNNbkPmt6A==
X-Google-Smtp-Source: APXvYqyhCeRsfUMKnaFdLn3aJWF2r7C0su+s5w1UqLu1cTlcNydCdWit5JkkqefwAGH3hmKajOG/V6rCyDq9aRuGQfA=
X-Received: by 2002:a37:bcc7:: with SMTP id
 m190mr56245928qkf.433.1564049143158; 
 Thu, 25 Jul 2019 03:05:43 -0700 (PDT)
MIME-Version: 1.0
References: <1563811560-29589-1-git-send-email-olivier.moysan@st.com>
 <1563811560-29589-2-git-send-email-olivier.moysan@st.com>
In-Reply-To: <1563811560-29589-2-git-send-email-olivier.moysan@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Thu, 25 Jul 2019 12:05:32 +0200
Message-ID: <CA+M3ks5v7vF_mPBr4mkwsHidc-N4jfJDgqWWE7qRv0LDsYJ-pQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] drm/bridge: sii902x: fix missing reference to mclk
 clock
To: Olivier Moysan <olivier.moysan@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_030544_676451_574AB5E0 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 jernej.skrabec@siol.net, Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>, Jyri Sarha <jsarha@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgbHVuLiAyMiBqdWlsLiAyMDE5IMOgIDE4OjA2LCBPbGl2aWVyIE1veXNhbiA8b2xpdmllci5t
b3lzYW5Ac3QuY29tPiBhIMOpY3JpdCA6Cj4KPiBBZGQgZGV2bV9jbGtfZ2V0IGNhbGwgdG8gcmV0
cmlldmUgcmVmZXJlbmNlIHRvIG1hc3RlciBjbG9jay4KPgo+IEZpeGVzOiBmZjU3ODE2MzRjNDEg
KCJkcm0vYnJpZGdlOiBzaWk5MDJ4OiBJbXBsZW1lbnQgSERNSSBhdWRpbyBzdXBwb3J0IikKPgo+
IFNpZ25lZC1vZmYtYnk6IE9saXZpZXIgTW95c2FuIDxvbGl2aWVyLm1veXNhbkBzdC5jb20+Cj4g
UmV2aWV3ZWQtYnk6IEp5cmkgU2FyaGEgPGpzYXJoYUB0aS5jb20+Cj4gQWNrZWQtYnk6IEFuZHJ6
ZWogSGFqZGEgPGEuaGFqZGFAc2Ftc3VuZy5jb20KCkFwcGxpZWQgb24gZHJtLW1pc2MtbmV4dC4K
VGhhbmtzLApCZW5qYW1pbgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zaWk5MDJ4
LmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zaWk5MDJ4LmMgYi9kcml2ZXJzL2dwdS9kcm0vYnJp
ZGdlL3NpaTkwMnguYwo+IGluZGV4IGMyZjk3ZTU5OTdhMS4uOTYyOTMxYzIwZWZlIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc2lpOTAyeC5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9zaWk5MDJ4LmMKPiBAQCAtNzUxLDYgKzc1MSw3IEBAIHN0YXRpYyBpbnQg
c2lpOTAyeF9hdWRpb19jb2RlY19pbml0KHN0cnVjdCBzaWk5MDJ4ICpzaWk5MDJ4LAo+ICAgICAg
ICAgICAgICAgICBzaWk5MDJ4LT5hdWRpby5pMnNfZmlmb19zZXF1ZW5jZVtpXSB8PSBhdWRpb19m
aWZvX2lkW2ldIHwKPiAgICAgICAgICAgICAgICAgICAgICAgICBpMnNfbGFuZV9pZFtsYW5lc1tp
XV0gfCBTSUk5MDJYX1RQSV9JMlNfRklGT19FTkFCTEU7Cj4KPiArICAgICAgIHNpaTkwMngtPmF1
ZGlvLm1jbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAibWNsayIpOwo+ICAgICAgICAgaWYgKElTX0VS
UihzaWk5MDJ4LT5hdWRpby5tY2xrKSkgewo+ICAgICAgICAgICAgICAgICBkZXZfZXJyKGRldiwg
IiVzOiBObyBjbG9jayAoYXVkaW8gbWNsaykgZm91bmQ6ICVsZFxuIiwKPiAgICAgICAgICAgICAg
ICAgICAgICAgICBfX2Z1bmNfXywgUFRSX0VSUihzaWk5MDJ4LT5hdWRpby5tY2xrKSk7Cj4gLS0K
PiAyLjcuNAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
LWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
