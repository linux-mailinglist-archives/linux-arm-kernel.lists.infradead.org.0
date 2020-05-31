Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B97B1E949F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 02:08:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eH3cM0uXkAxFrBWETxlCzFtMXxiIGeiDCLG+NJo+R/8=; b=qYer1yiO2sH/2I
	Y/RXSaAFc/ySr7egisPCyZDSnvc2GQ1mxPkNoQw6r1wpBcvHPRKg5K0VmEoe1TN3AtYwXZY1M6o8+
	KjesscQdEGLrLZnnYKqb00QuxLua7PK6eaqTNUvS7kjwIAKmn4OusmMMyxIRVm5q/7kYQC8teWU2P
	/fdkWco+MrxEOTisXbzQ42Nwm9Cb/XvttbifzQPPbC/IsEC2BkHA2u2gcoG6Crb7Ot7PIQIXP+jtw
	npI2oXxQvTojrdDQh+veAnU75xvwuvoPx9+r2OiJrP7+//DEzIaRUALtn43aUSJGIOtz7cAjrC20m
	/YSpZIj3iOhpR0GiNdAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfBWu-0008Em-Ep; Sun, 31 May 2020 00:08:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfBWk-0008EP-H7
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 00:08:35 +0000
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C29FD207BB
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 31 May 2020 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590883714;
 bh=vPVMwMifj/bpMWbGPxUi+uNL+vBHSk9Nn5YsO2IKxxU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ye8Fo2mczopyLo1ob1diXWW16znwynBE+2PS8SYTdutOvrF6fUiiyZsJixjjlMzXJ
 XuuRfBeBELwzCQi63Xm7fLhI+BQgJUfT7Dvo/yFWzBKi+Tvc7eao+I2X8IPANwF/QQ
 ItZVnMjy7oOjV3O+C2cQB8U06NNjgT5XUonvKu2A=
Received: by mail-lf1-f49.google.com with SMTP id z22so1876182lfd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 May 2020 17:08:33 -0700 (PDT)
X-Gm-Message-State: AOAM530ijVQbnseKy7ssk/JaWFWBHmSGX7ffSPkE0npXU0kqVSyYr6cE
 Ffg6LIrAGZPu7vaxLtRVSDWNES6ZMsOha/d2eLc=
X-Google-Smtp-Source: ABdhPJx30aOLCYD8rhRQWuNuFBNi6DG6GHiGFBCH1V8mZXSiFUlhvrP9bf+Ajogwaw5NyNDhtFnAPjOErTVI/7WeuYc=
X-Received: by 2002:a05:6512:691:: with SMTP id
 t17mr7982786lfe.85.1590883712070; 
 Sat, 30 May 2020 17:08:32 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200529163228eucas1p1d05340fef9ffc724f5d3d9f5709a600f@eucas1p1.samsung.com>
 <20200529163200.18031-1-s.nawrocki@samsung.com>
 <20200529163200.18031-6-s.nawrocki@samsung.com>
In-Reply-To: <20200529163200.18031-6-s.nawrocki@samsung.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Sun, 31 May 2020 09:07:55 +0900
X-Gmail-Original-Message-ID: <CAGTfZH1Cin346tRz=+AH1x9QT=z0UGOvCC=NaAM9xLjGM2dHjg@mail.gmail.com>
Message-ID: <CAGTfZH1Cin346tRz=+AH1x9QT=z0UGOvCC=NaAM9xLjGM2dHjg@mail.gmail.com>
Subject: Re: [RFC PATCH v5 5/6] ARM: dts: exynos: Add interconnects to
 Exynos4412 mixer
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_170834_609001_2616D73F 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3lsd2VzdGVyLAoKT24gU2F0LCBNYXkgMzAsIDIwMjAgYXQgMTozMyBBTSBTeWx3ZXN0ZXIg
TmF3cm9ja2kKPHMubmF3cm9ja2lAc2Ftc3VuZy5jb20+IHdyb3RlOgo+Cj4gRnJvbTogQXJ0dXIg
xZp3aWdvxYQgPGEuc3dpZ29uQHNhbXN1bmcuY29tPgo+Cj4gVGhpcyBwYXRjaCBhZGRzIGFuICdp
bnRlcmNvbm5lY3RzJyBwcm9wZXJ0eSB0byBFeHlub3M0NDEyIERUUyBpbiBvcmRlciB0bwo+IGRl
Y2xhcmUgdGhlIGludGVyY29ubmVjdCBwYXRoIHVzZWQgYnkgdGhlIG1peGVyLiBQbGVhc2Ugbm90
ZSB0aGF0IHRoZQo+ICdpbnRlcmNvbm5lY3QtbmFtZXMnIHByb3BlcnR5IGlzIG5vdCBuZWVkZWQg
d2hlbiB0aGVyZSBpcyBvbmx5IG9uZSBwYXRoIGluCj4gJ2ludGVyY29ubmVjdHMnLCBpbiB3aGlj
aCBjYXNlIGNhbGxpbmcgb2ZfaWNjX2dldCgpIHdpdGggYSBOVUxMIG5hbWUgc2ltcGx5Cj4gcmV0
dXJucyB0aGUgcmlnaHQgcGF0aC4KPgo+IFNpZ25lZC1vZmYtYnk6IEFydHVyIMWad2lnb8WEIDxh
LnN3aWdvbkBzYW1zdW5nLmNvbT4KPiBSZXZpZXdlZC1ieTogQ2hhbndvbyBDaG9pIDxjdzAwLmNo
b2lAc2Ftc3VuZy5jb20+Cj4gLS0tCj4gQ2hhbmdlcyBmb3IgdjU6Cj4gIC0gbm9uZS4KPiAtLS0K
PiAgYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpIHwgMSArCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4
eW5vczQ0MTIuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaQo+IGluZGV4
IGE3NDk2ZDMuLmVlZTg2ZDIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9z
NDQxMi5kdHNpCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpCj4gQEAg
LTc3Niw2ICs3NzYsNyBAQAo+ICAgICAgICAgY2xvY2stbmFtZXMgPSAibWl4ZXIiLCAiaGRtaSIs
ICJzY2xrX2hkbWkiLCAidnAiOwo+ICAgICAgICAgY2xvY2tzID0gPCZjbG9jayBDTEtfTUlYRVI+
LCA8JmNsb2NrIENMS19IRE1JPiwKPiAgICAgICAgICAgICAgICAgIDwmY2xvY2sgQ0xLX1NDTEtf
SERNST4sIDwmY2xvY2sgQ0xLX1ZQPjsKPiArICAgICAgIGludGVyY29ubmVjdHMgPSA8JmJ1c19k
aXNwbGF5ICZidXNfZG1jPjsKCkkgdGhpbmsgaXQgaXMgcmVhbGx5IGdvb2QgYW5kIG5lY2Vzc2Fy
eSBpbiBvcmRlciB0byBzdXBwb3J0IHRoZQptaW5pbXVtIGJhbmR3aWR0aC4KVW50aWwgbm93LCBJ
IGhhZCB0byBhZGQgdGhlIGFkZGl0aW9uYWwgY29kZSB0byBzdXBwb3J0IGZvciB0aGlzIHNhbWUg
cHVycG9zZQppbnRvIHByb2R1Y3QgY29kZS4KClJldmlld2VkLWJ5OiBDaGFud29vIENob2kgPGN3
MDAuY2hvaUBzYW1zdW5nLmNvbT4KCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1z
dW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
