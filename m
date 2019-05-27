Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B912B007
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 10:20:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7mCbQxabnofQGM1vKRy4/bs+yBBpTd0hQ+8f9WQyS4=; b=brnqIODR9i9RTD
	1QVi7zfzhYw5o4bARm+yo3oDVjC+otUgxsTD0rOiD7v52QVtVVBHe+0wqRFdgB+WAbluftXVxKn63
	AqScuIYhO60KeGxZK1vKzljjtdQf1s+5nmzdLhIVuZZ2U0fcB9ofFHsUvCGAokCV0lfutZg01JNsQ
	zpPD7jlQn6jGiKBX1wxJvjxQLL6roAKHFbjDyLBWyX117AozCUhvEWyaFLy7budOOz/F6tt71xDeG
	/SMY5FeOYsSSLK3/Z92aKDMYhX6R5pt+T1A3ueeXJm+myhdVcDf3iU17Gowdo+wm6KiZcTVllyFuI
	JUvFliU6eaTFad3GCHYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVArp-0000PX-75; Mon, 27 May 2019 08:20:25 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVAri-0000PB-AH
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 08:20:19 +0000
Received: by mail-yw1-xc41.google.com with SMTP id r200so2460295ywe.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 01:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dJeEKckc8XozRLSFvJQNZuIEHzNmeUHgfWOIaZszYtA=;
 b=BLHzncT1kN7FS46Ig7BbAIzeg0htnEqqcE5Uz6kTPKJlFC+nbFVK3SPSdDD0f1NUBl
 tdYaDl798MdAr6vMuegnctjmteNlLze07H+qB0lg30e5Bxk5nL4UaYUnz/hK1RcxCG/b
 APNdaNsgxTw0UzIEjiJKuAFyL2ARtKVuqEq5zGaAj9/Kjz2B5co2ZhFeii9qEQc1rpc0
 70j/VWj60k9lqj07/Add6/yorkdlTSFZYMPYqxQZpwfYVTdKJjPg2/6xfjw9++ofDONa
 qjgUAPlhQFyYGHzaE9fmOojCnWXiATsuU7Ppvp5KNLH1loqSlFvzB6KkVjVr8zbv2Upq
 oIfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dJeEKckc8XozRLSFvJQNZuIEHzNmeUHgfWOIaZszYtA=;
 b=WK2OYc9+5oBAPUQZBp/5+dqAKJVbNV2e8lsruxksztJoVHJXoNAtqk4WAo9ZAuDAzM
 cWK9JgJrfCFqPWT9Wh+eIQtpoptl6OBqIFnR8nlx53UpClEu17xvnl59ANJjIJjsK8XR
 xMfhm2ywKvexdJTuFRCEiUFN5yQMAgsWKI30Zt1k9v53GNXFmt9ORgzXv6yelLuB8lj8
 f3L/cSmg7zoOmG6dMQlVLvEu8jUjFeDB77fzLX5hzqAgZPu983wGoc9BlzQSgyMBrO3e
 ogdTv91vZdBYEo7VEiAntqlRHA8c4lbj13nTh9rDpCIBoeg4btPUJY60lN0HpZX7yHPd
 lPjg==
X-Gm-Message-State: APjAAAWLcsU70HoWtuW3eGeF4vyGTxeLpbXHCgXHWqi6iOvdQPfMAwB6
 dtobYsPFlj1RZEgnRkxS7zoi0o7BeggxUmTrXC4=
X-Google-Smtp-Source: APXvYqwTVORwEEGE7eSHGWZrthPsgVfPBw0yPd9WJn2AOEH62eCbfODDcTFuaIULYKXYvtqhyQ5lZapfseMXcqGyLZM=
X-Received: by 2002:a81:59c2:: with SMTP id n185mr53377206ywb.21.1558945216859; 
 Mon, 27 May 2019 01:20:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190526222536.10917-1-peron.clem@gmail.com>
 <20190526222536.10917-3-peron.clem@gmail.com>
 <20190527074700.rvhqua44ixudt52z@flea>
In-Reply-To: <20190527074700.rvhqua44ixudt52z@flea>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 27 May 2019 10:20:05 +0200
Message-ID: <CAJiuCcfknVV5V4sMrfizz_K92BeTQsRYekmQQpWFP_-jhPPaQA@mail.gmail.com>
Subject: Re: [PATCH v2 02/10] media: rc: sunxi: Add A31 compatible
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_012018_385868_96EBFDB9 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gTW9uLCAyNyBNYXkgMjAxOSBhdCAwOTo0NywgTWF4aW1lIFJpcGFyZCA8
bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IE9uIE1vbiwgTWF5
IDI3LCAyMDE5IGF0IDEyOjI1OjI4QU0gKzAyMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+
IEFsbHdpbmVyIEEzMSBoYXMgYSBkaWZmZXJlbnQgbWVtb3J5IG1hcHBpbmcgc28gYWRkIHRoZSBj
b21wYXRpYmxlCj4gPiB3ZSB3aWxsIG5lZWQgaXQgbGF0ZXIuCj4gPgo+ID4gU2lnbmVkLW9mZi1i
eTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGRy
aXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMgfCAxICsKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9yYy9zdW54aS1j
aXIuYyBiL2RyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMKPiA+IGluZGV4IDMwN2U0NDcxNGVh
MC4uMjlhYzMzYjY4NTk2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tZWRpYS9yYy9zdW54aS1j
aXIuYwo+ID4gKysrIGIvZHJpdmVycy9tZWRpYS9yYy9zdW54aS1jaXIuYwo+ID4gQEAgLTMxOSw2
ICszMTksNyBAQCBzdGF0aWMgaW50IHN1bnhpX2lyX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQo+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHN1bnhpX2ly
X21hdGNoW10gPSB7Cj4gPiAgICAgICB7IC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW40aS1h
MTAtaXIiLCB9LAo+ID4gICAgICAgeyAuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNWktYTEz
LWlyIiwgfSwKPiA+ICsgICAgIHsgLmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjZpLWEzMS1p
ciIsIH0sCj4KPiBXZSBzaG91bGQgYWxzbyBtb3ZlIGZyb20gcmVzZXRfZ2V0X29wdGlvbmFsIHRv
IHRoZSBub24gb3B0aW9uYWwKPiB2YXJpYW50IGZvciB0aGUgQTMxLCBhbmQgaWdub3JlIGl0IG90
aGVyd2lzZS4KClNob3VsZCB0aGlzIGJlIGRvbmUgaW4gdGhpcyBzZXJpZXMgPwpUaGFua3MsCkNs
w6ltZW50Cgo+Cj4gTWF4aW1lCj4KPiAtLQo+IE1heGltZSBSaXBhcmQsIEJvb3RsaW4KPiBFbWJl
ZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCj4gaHR0cHM6Ly9ib290bGluLmNvbQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
