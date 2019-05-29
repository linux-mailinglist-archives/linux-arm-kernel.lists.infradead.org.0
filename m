Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 888AB2E141
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 17:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=632KDBsRH8MrCfKWrTdD8MKInLxD33sA9EQWwc8D6V8=; b=WyVbSweLmh9WaN
	iczecNxCoQvHWIc2gKfUDmO5aCNrGbpAuaAWCWbaXmp64EVb9QvOF/5HkwTaQ4Y0VCW7xJEEz6ioe
	YPwqfwhJblqLCfHg+RX7GsTs1BCApwgoh91McvhdwBolbiATCkjBD35DK9s2Z9J1MTn6E2IeDW41k
	d0EFRZAztgbGM5ArgRQ4PU0XDKjEVwFMWwk4/3AYstP8hj1NqP9zEtlXhI/nTT+cJ/NC8r+aSTN0U
	1hEP+p5Htu8Gozt0H25w2eFPD8fuqkSm/aLp4q5kN/6CAESi4thVpDop3hqFsPwVqRL34tgt7jKMy
	zK7AYaB9ilf/LiEqd4KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW0e7-0003b9-CI; Wed, 29 May 2019 15:37:43 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW0e0-0003ag-4x
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 15:37:37 +0000
Received: by mail-yb1-xb44.google.com with SMTP id a21so943554ybg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 08:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fio7dUlt1rGxd4N/JsSZl4I2zSSJgskybyhAabp8qBE=;
 b=aqFQqfF0W37PBUI4pUUi1s3R0B9YCG94oFaD32p1rxydRqcrlud9PXInaYEZYaQZvo
 sGsnxMSZkcqJQHGyxHxtSncB30qEXQ19+uaapDAnIrtZ73jWV6TWpLC7otcw4YN1+/hQ
 aVPrwYV1S8R6kYw1/5lTd5+TDw8enkJD/k7XJyuDJ1ZOKDpVVcc1jR42tQVdpN1N7USE
 liW+g5slJey0iv1hKBLMaYzsXOxSV1PyNDWOrwMQ8A2FLni8O0acyDBPYX6V59/whap6
 ALs+RSmpV5uc58ExJhJcDC0YqPeiH0g7u4sAGKvNsnPEKoGNDA7U2x6PC5SD/iBQouDa
 KUww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fio7dUlt1rGxd4N/JsSZl4I2zSSJgskybyhAabp8qBE=;
 b=qNPNm4Ah7xPzLPAIoP8tecpku9KmkYKp7waLi7YAcDK6jLFW9VNkBnnUu9Vq8Oh0Dc
 W9QctfgyWjpKBLvYy0VwXbyFfy/oqHREyFg3lEYDAyNJBkc3c5mfRbee/nEhFPqDJQ5Z
 0/S8uzTzLlFxIbPayCp+nM0tNxyELRkzLGqF2YctFl4cUjML6Qa9h4E6leiFMJSbVXTh
 sR+vOmsRN2MQYe5vLeXwC4PK5p+Mo2mHHUIeJz0Fhd7ijP7Uce5lSiGhGPvcnMGsf9KY
 gWT4T1szVPXtGYnlnJUuPuv0n6F8evqK76k1baEG1VUV9bG1fFbkpgXCMaAtfuikHV06
 tm2w==
X-Gm-Message-State: APjAAAXzYUbQW0YOFicOhyAuWI3C+scHF+gndeC4PwL+3WC5FLIRfUEH
 Cdo9l/zDryTo4b1bp5K8p9K/wzke4zeGbiIpHew=
X-Google-Smtp-Source: APXvYqyBTjFLtYiS6Id21vTREplP4Km3FL3I4Q5/YF52rJ6kB/IA8HTvnF4aOQE13ZODp24lCwjl85FnzE5EtEIkwwk=
X-Received: by 2002:a25:ae22:: with SMTP id a34mr26488141ybj.438.1559144254880; 
 Wed, 29 May 2019 08:37:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190521161102.29620-1-peron.clem@gmail.com>
 <20190529153255.40038-1-tomeu.vizoso@collabora.com>
In-Reply-To: <20190529153255.40038-1-tomeu.vizoso@collabora.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Wed, 29 May 2019 17:37:23 +0200
Message-ID: <CAJiuCccFG1SATp7QuSOi11MmbjmgX0ZHsTv=4zuXqXMG+=-7Dw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: Add GPU operating points for H6
To: Tomeu Vizoso <tomeu.vizoso@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_083736_242389_893568D4 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVG9tZXUsCgpPbiBXZWQsIDI5IE1heSAyMDE5IGF0IDE3OjMzLCBUb21ldSBWaXpvc28gPHRv
bWV1LnZpem9zb0Bjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IFRoZSBHUFUgZHJpdmVyIG5lZWRz
IHRoZW0gdG8gY2hhbmdlIHRoZSBjbG9jayBmcmVxdWVuY3kgYW5kIHJlZ3VsYXRvcgo+IHZvbHRh
Z2UgZGVwZW5kaW5nIG9uIHRoZSBsb2FkLgoKQXMgcmVxdWVzdGVkIGJ5IE1heGltZSwgSSBoYXZl
IGRyb3BwZWQgdGhlc2UgT1BQIHRhYmxlIGFzIEl0J3MgdGFrZW4KZnJvbSB2ZW5kb3IgYW5kIHVu
dGVzdGVkIHdpdGggUGFuZnJvc3QuCgpodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdvcmsv
cGF0Y2gvMTA2MDM3NC8KClJlZ2FyZHMsCkNsw6ltZW50Cgo+Cj4gU2lnbmVkLW9mZi1ieTogVG9t
ZXUgVml6b3NvIDx0b21ldS52aXpvc29AY29sbGFib3JhLmNvbT4KPiBDYzogQ2zDqW1lbnQgUMOp
cm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KPgo+IC0tLQo+Cj4gRmVlbCBmcmVlIHRvIHBpY2sg
dXAgdGhpcyBwYXRjaCBpZiB5b3UgYXJlIGdvaW5nIHRvIGtlZXAgcHVzaGluZyB0aGlzCj4gc2Vy
aWVzIGZvcndhcmQuCj4KPiBUaGFua3MsCj4KPiBUb21ldQo+IC0tLQo+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSB8IDY2ICsrKysrKysrKysrKysrKysrKysr
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA2NiBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQo+IGluZGV4IDZhYWQwNjA5NWM0MC4uZGVj
ZjdiNTZlMmRmIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1
bjUwaS1oNi5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBp
LWg2LmR0c2kKPiBAQCAtMTU3LDYgKzE1Nyw3MSBAQAo+ICAgICAgICAgICAgICAgICAgICAgICAg
IGFsbHdpbm5lcixzcmFtID0gPCZ2ZV9zcmFtIDE+Owo+ICAgICAgICAgICAgICAgICB9Owo+Cj4g
KyAgICAgICAgICAgICAgIGdwdV9vcHBfdGFibGU6IG9wcC10YWJsZTIgewo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAib3BlcmF0aW5nLXBvaW50cy12MiI7Cj4gKwo+ICsg
ICAgICAgICAgICAgICAgICAgICAgIG9wcDAwIHsKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIG9wcC1oeiA9IC9iaXRzLyA2NCA8NzU2MDAwMDAwPjsKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQgPSA8MTA0MDAwMD47Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAgICAgICAgICAgICBvcHAwMSB7Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtaHogPSAvYml0cy8gNjQgPDYyNDAwMDAwMD47
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0ID0gPDk1MDAw
MD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAgICAgICAgICAg
ICBvcHAwMiB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtaHogPSAvYml0
cy8gNjQgPDU3NjAwMDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAt
bWljcm92b2x0ID0gPDkzMDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsKPiArICAg
ICAgICAgICAgICAgICAgICAgICBvcHAwMyB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBvcHAtaHogPSAvYml0cy8gNjQgPDU0MDAwMDAwMD47Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBvcHAtbWljcm92b2x0ID0gPDkxMDAwMD47Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgfTsKPiArICAgICAgICAgICAgICAgICAgICAgICBvcHAwNCB7Cj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBvcHAtaHogPSAvYml0cy8gNjQgPDUwNDAwMDAwMD47Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0ID0gPDg5MDAwMD47
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAgICAgICAgICAgICBv
cHAwNSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtaHogPSAvYml0cy8g
NjQgPDQ1NjAwMDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWlj
cm92b2x0ID0gPDg3MDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsKPiArICAgICAg
ICAgICAgICAgICAgICAgICBvcHAwNiB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBvcHAtaHogPSAvYml0cy8gNjQgPDQzMjAwMDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBvcHAtbWljcm92b2x0ID0gPDg2MDAwMD47Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgfTsKPiArICAgICAgICAgICAgICAgICAgICAgICBvcHAwNyB7Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBvcHAtaHogPSAvYml0cy8gNjQgPDQyMDAwMDAwMD47Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0ID0gPDg1MDAwMD47Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAgICAgICAgICAgICBvcHAw
OCB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtaHogPSAvYml0cy8gNjQg
PDQwODAwMDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92
b2x0ID0gPDg0MDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAg
ICAgICAgICAgICAgICBvcHAwOSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBv
cHAtaHogPSAvYml0cy8gNjQgPDM4NDAwMDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBvcHAtbWljcm92b2x0ID0gPDgzMDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgfTsKPiArICAgICAgICAgICAgICAgICAgICAgICBvcHAxMCB7Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBvcHAtaHogPSAvYml0cy8gNjQgPDM2MDAwMDAwMD47Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0ID0gPDgyMDAwMD47Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAgICAgICAgICAgICBvcHAxMSB7
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtaHogPSAvYml0cy8gNjQgPDMz
NjAwMDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0
ID0gPDgxMDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAg
ICAgICAgICAgICBvcHAxMiB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAt
aHogPSAvYml0cy8gNjQgPDMxMjAwMDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBvcHAtbWljcm92b2x0ID0gPDgxMDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAg
fTsKPiArICAgICAgICAgICAgICAgICAgICAgICBvcHAxMyB7Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBvcHAtaHogPSAvYml0cy8gNjQgPDI2NDAwMDAwMD47Cj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0ID0gPDgxMDAwMD47Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAgICAgICAgICAgICBvcHAxNCB7Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtaHogPSAvYml0cy8gNjQgPDIxNjAw
MDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0ID0g
PDgxMDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAgICAg
fTsKPiArCj4gICAgICAgICAgICAgICAgIGdwdTogZ3B1QDE4MDAwMDAgewo+ICAgICAgICAgICAg
ICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1tYWxpIiwKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImFybSxtYWxpLXQ3MjAiOwo+IEBA
IC0xNjgsNiArMjMzLDcgQEAKPiAgICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNj
dSBDTEtfR1BVPiwgPCZjY3UgQ0xLX0JVU19HUFU+Owo+ICAgICAgICAgICAgICAgICAgICAgICAg
IGNsb2NrLW5hbWVzID0gImNvcmUiLCAiYnVzIjsKPiAgICAgICAgICAgICAgICAgICAgICAgICBy
ZXNldHMgPSA8JmNjdSBSU1RfQlVTX0dQVT47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgb3Bl
cmF0aW5nLXBvaW50cy12MiA9IDwmZ3B1X29wcF90YWJsZT47Cj4gICAgICAgICAgICAgICAgICAg
ICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiAgICAgICAgICAgICAgICAgfTsKPgo+IC0tCj4g
Mi4yMC4xCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
