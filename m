Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0807743069
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 21:47:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dgE5mNV5eiRHSpNPjyt8SViM6ufeNwTYZ0pP/kBkJvY=; b=bLWNRWYkK0MqzU
	7+hLxsKn/RSlqCXinSEJq1ZDJ8gpl2sRr1PSwACG11xTMCBOn4+LSZFZyHbxa4JJostgfel0bL8yV
	q8B0IR1WiaJjYejbcvdCmlYQuz0hhDW7LaT00U69HNxCgzZZW6pze1IzirpR1m7hQtx0Byf+g3oyl
	HDGobnPLmaIB+RIO41ZLHiFWNPIB84vyHvKbrwIGv+qLEr5/MZuSpB2ka2vzPM7eTu5q78+7sLUEJ
	nGa/iqWO+cAQM+nr3haOqLhVRyPEKM8Yhjpy/6uTjp0wGRiTTqicNjyFTH+O2rqWUGpqtJJJBQzZ8
	djfEqWE+kIKrMNWMzJMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb9Da-00020N-UA; Wed, 12 Jun 2019 19:47:34 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb9DM-0001ya-Bf; Wed, 12 Jun 2019 19:47:21 +0000
Received: by mail-oi1-x244.google.com with SMTP id e189so12591517oib.11;
 Wed, 12 Jun 2019 12:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EwdJu4okQ0L+2u52FXeBDXEGzF/ps8ei03aC+UR7txM=;
 b=jCItuHIqjcFP/izwsSFnf5iZ4EN8OEZMF4/+XoTAcFGTIvjn8FEFSDtrZZEXarIJht
 XFvZdFpsTYx2UKP8PreoZMEQCIurJCAtxHYRQnD1cDiUz4rMk9IZ5jwLjsMkH6YwbfV8
 JK7juYY/NCn4SQ+bolXDhhhULZdOmNaiTFX6lctDPTgbJ6gXu4x0ppbCc25UIyEGVQtp
 oUF9u4OeEsxLsGYmWkYR/KK1cMA1rXxJ0a5UKjCDFAyN28VcUBpUKp09Cc2KrkGEUmwm
 uhHb8XCubFuUi3Xf0TqPGnVSzGzpC6kjENt0cAfNwGqVy32ibiYbhHmkyb1DMkDKOBAr
 C6pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EwdJu4okQ0L+2u52FXeBDXEGzF/ps8ei03aC+UR7txM=;
 b=taJvDTFfvKRbtzEFunRDesywXcVcmmlcyPkNbc1FIt5BWl2CyfBbaP92I8ANf44Ofn
 RG6OduFnu3ZnlMTmX3rYAbWTuDW595lP6SU6D8jjalgwf14nyIB+l3wWraZLlKGW5b9z
 vwwePG/dGwQj4ZqTvfenhC0jU+XqEsvwzjLFv18crQnHn9hiVLeJVY55QGD7jJ3fVNzl
 5N1bjuanZ4fpvaxDuRJAslzvd7Q58QaBDNiJXv+K19rdM+dBwpde2QpOOrjOnmsRC2Bv
 TBkV7BqW4wkrhqYhQDSMbQM+1cFppZijtBeSPJ4qIt71x9WR5cyvWW3czZWQXfg/7V5P
 SzKw==
X-Gm-Message-State: APjAAAVGTrvqzQZmDiOE4qY/TtjIXOzlIBpFgU6Xem8sNe+02tCbcM+p
 ZMfEK1MM86av+SkQwYCFfG0GI7QkmJrwOxkoyyz1o6Rb
X-Google-Smtp-Source: APXvYqxI6uMKFy/wojvtvvvIYK/SGmxdGD9fTWk5+T6YyUI+oS3PdPTdR1rtH6s0f//6So6WdhsACfIUlxQ2vDXFdDk=
X-Received: by 2002:aca:f144:: with SMTP id p65mr598979oih.47.1560368838921;
 Wed, 12 Jun 2019 12:47:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190608180626.30589-1-martin.blumenstingl@googlemail.com>
 <20190608180626.30589-5-martin.blumenstingl@googlemail.com>
 <20190611163318.tfb5c4jbekjybj76@pengutronix.de>
In-Reply-To: <20190611163318.tfb5c4jbekjybj76@pengutronix.de>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 12 Jun 2019 21:47:07 +0200
Message-ID: <CAFBinCA1SVXVPJdLQr4S99qEoowqXsNqP5tr64xn46xjaKLqeA@mail.gmail.com>
Subject: Re: [PATCH v2 04/14] pwm: meson: change MISC_CLK_SEL_WIDTH to
 MISC_CLK_SEL_MASK
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_124720_420889_65223860 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, thierry.reding@gmail.com,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKT24gVHVlLCBKdW4gMTEsIDIwMTkgYXQgNjozMyBQTSBVd2UgS2xlaW5lLUvDtm5p
Zwo8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKWy4uLl0KPiA+IEBAIC00
NjMsNyArNDYzLDcgQEAgc3RhdGljIGludCBtZXNvbl9wd21faW5pdF9jaGFubmVscyhzdHJ1Y3Qg
bWVzb25fcHdtICptZXNvbiwKPiA+Cj4gPiAgICAgICAgICAgICAgIGNoYW5uZWwtPm11eC5yZWcg
PSBtZXNvbi0+YmFzZSArIFJFR19NSVNDX0FCOwo+ID4gICAgICAgICAgICAgICBjaGFubmVsLT5t
dXguc2hpZnQgPSBtdXhfcmVnX3NoaWZ0c1tpXTsKPiA+IC0gICAgICAgICAgICAgY2hhbm5lbC0+
bXV4Lm1hc2sgPSBCSVQoTUlTQ19DTEtfU0VMX1dJRFRIKSAtIDE7Cj4gPiArICAgICAgICAgICAg
IGNoYW5uZWwtPm11eC5tYXNrID0gTUlTQ19DTEtfU0VMX01BU0s7Cj4gPiAgICAgICAgICAgICAg
IGNoYW5uZWwtPm11eC5mbGFncyA9IDA7Cj4gPiAgICAgICAgICAgICAgIGNoYW5uZWwtPm11eC5s
b2NrID0gJm1lc29uLT5sb2NrOwo+ID4gICAgICAgICAgICAgICBjaGFubmVsLT5tdXgudGFibGUg
PSBOVUxMOwo+Cj4gSU1ITyBjbGtfbXV4IGlzIHVnbHkgaGVyZS4gSXQgY291bGQgZWFzaWx5IGp1
c3QgdGFrZQo+Cj4gICAgICAgICAubWFzayA9IDMgPDwgbXV4X3JlZ19zaGlmdHNbaV0sCmluIG1v
c3QgY2FzZXMgdGhhdCB3b3VsZCBiZSBldmVuIG5pY2VyIHRvIHJlYWQgYmVjYXVzZSBpdCBjb3Vs
ZCBiZSBleHByZXNzZWQgYXM6CiAgLm1hc2sgPSBHRU5NQVNLKDUsIDQpCgpzbyBJIGxpa2UgeW91
ciBpZGVhIGluIGdlbmVyYWwKdGhvdWdoIEkgdGhpbmsgaXQgc2hvdWxkIG5vdCBibG9jayB0aGlz
IHBhdGNoCgpbLi4uXQo+IEFwYXJ0IGZyb20gdGhhdCwgSSB3b25kZXIgaWYgdGhlIHB3bS1tZXNv
biBkcml2ZXIgc2hvdWxkIGJldHRlciB1c2UKPiBjbGtfcmVnaXN0ZXJfbXV4IGluc3RlYWQgb2Yg
b3BlbiBjb2RpbmcgaXQuIChUaG91Z2ggdGhlcmUgZG9lc24ndCBzZWVtCj4gdG8gZXhpc3RzIGEg
ZGV2bV8gdmFyaWFudCBvZiBpdC4pCkkgdHJpZWQgdG8gdXNlIGNsa19yZWdpc3Rlcl9tdXggaW4g
dGhlIHBhc3QuIGl0IHdvcmtzIGJ1dCBpdCdzIG5vdCBhcwpuaWNlIHRvIHJlYWQgYXMgdGhlIG9w
ZW4tY29kZWQgdmFyaWFudCBiZWNhdXNlIGl0IHRha2VzIDEwIHBhcmFtZXRlcnMuCkkgZmluZCBp
dCBlYXNpZXIgdG8gcmVhZCAxMyBzZXBhcmF0ZSBsaW5lcyBjb21wYXJlZCB0byByZWFkaW5nIGEK
ZnVuY3Rpb24gY2FsbCB3aXRoIDEwIHBhcmFtZXRlcnMKCgpNYXJ0aW4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
