Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7C04FDD4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 21:17:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eySy8+R3Z6SrDrrPudMvzSDtThAekWKQVOk18vMj9Xo=; b=ev98WJL5TnHcmI
	V+IhW3edw+c6A47COhwGHFuUGRE8gn+mfXWaax+TAivCObkP/ZOErcqjqiT6+WprVB508ZfhCtjEV
	rXwqqT/cxxoWkontxww3FFqxAsvmGlws7CGeBoPAChYNfGkjEawmhtCa/lRwOtuwFTOKXyjxAHYMp
	CPLY5kzyKM6/O3uiPJJyJcpczgnZf47dTEWpUkgdXnJB4BpaPf991x3z7RKRC5ncZvRJXTZdqJq0G
	0AUkB5BUz4WpTqO3mnjtTeja5S94NJLYlh/9fIY4XRBgkagWmHAfte9/t8igyXapXf+LnUWCAbVI9
	qgW8Ha9JnqakqoDx70sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf7zA-0005r5-Ni; Sun, 23 Jun 2019 19:17:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf7yw-0005qh-Cc
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 19:16:55 +0000
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7872214C6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 19:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561317414;
 bh=6JDucSZw1YglZ+Kvn1XvG/d7XRm8rtQU0pYzpt6juPQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=fMxYBvIsGShQvj4IRwFKmATaR58ZBtoFK/3QzbeoCdPlTIgVhOxnOQIcU8rMeawOF
 KEUUjFHSckx4/VKUV2PR3zgU/uwJeR4zqJeTej1Y4bRWp7wd7lnglbaBipxfpAhrng
 Awx7/hMEMT3kex+qw9ivJHzBoty9f1PF+frzSpbY=
Received: by mail-lf1-f48.google.com with SMTP id p24so8430567lfo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 12:16:53 -0700 (PDT)
X-Gm-Message-State: APjAAAV1WKKkot6I7CUgvEfTHElWZiOhruTpWO1wdrlqG4cyop7NLR/e
 qMmHbFc9T/d5EPE7ll9B6NpixOIREEXKt0YFdQU=
X-Google-Smtp-Source: APXvYqxXWDrgM4m579DLxJ1WTUgWjKF7XpNZeubHja/pXAlMQf3hxn+h9Y9vADetzdK8SIjDbU+EfRUwHC82D+/8Bxw=
X-Received: by 2002:ac2:5601:: with SMTP id v1mr7937600lfd.106.1561317411913; 
 Sun, 23 Jun 2019 12:16:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190621180208.25361-7-krzk@kernel.org>
 <20190622191838.29850-1-krzk@kernel.org>
 <CAGTfZH2g6E2pCEtqjfCd+PjEzjwc2AB75LXJfCeO+PcYLiLTUw@mail.gmail.com>
In-Reply-To: <CAGTfZH2g6E2pCEtqjfCd+PjEzjwc2AB75LXJfCeO+PcYLiLTUw@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Sun, 23 Jun 2019 21:16:40 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcFFY08R1H-DrrzX2BC3L8x4NPJTP7nDn9yixAvmaiF9Q@mail.gmail.com>
Message-ID: <CAJKOXPcFFY08R1H-DrrzX2BC3L8x4NPJTP7nDn9yixAvmaiF9Q@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: defconfig: Enable Panfrost and Lima drivers
To: cwchoi00@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_121654_476309_16A722BC 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Simon Horman <horms+renesas@verge.net.au>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAyMyBKdW4gMjAxOSBhdCAwNjozMSwgQ2hhbndvbyBDaG9pIDxjd2Nob2kwMEBnbWFp
bC5jb20+IHdyb3RlOgo+Cj4gSGkgS3J6eXN6dG9mLAo+Cj4gMjAxOeuFhCA27JuUIDIz7J28ICjs
nbwpIOyYpOyghCA0OjIwLCBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+64uY
7J20IOyekeyEsToKPiA+Cj4gPiBFbmFibGUgc3VwcG9ydCBmb3IgTWFsaSBHUFUgd2l0aCBQYW5m
cm9zdCBhbmQgTGltYSBkcml2ZXJzIGZvcjoKPiA+IDEuIFNhbXN1bmcgRXh5bm9zNTQzMyBhbmQg
RXh5bm9zNyAoaGF2aW5nIE1hbGkgVDc2MCksCj4gPiAyLiBBbGx3aW5lciBBNjQgYW5kIEg1IChN
YWxpIDQwMC80NTApLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kg
PGtyemtAa2VybmVsLm9yZz4KPiA+Cj4gPiAtLS0KPiA+Cj4gPiBDaGFuZ2VzIHNpbmNlIHYxOgo+
ID4gMS4gRW5hYmxlIExpbWEgZHJpdmVyCj4gPiAtLS0KPiA+ICBhcmNoL2FybTY0L2NvbmZpZ3Mv
ZGVmY29uZmlnIHwgMyArKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvY29uZmlncy9kZWZj
b25maWcgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCj4gPiBpbmRleCBmYmJjMDY1NDE1
ZDQuLjNkMzE2MTEzNjhhZiAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvY29uZmlncy9kZWZj
b25maWcKPiA+ICsrKyBiL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcKPiA+IEBAIC01MTgs
NiArNTE4LDggQEAgQ09ORklHX0RSTV9ISVNJX0hJQk1DPW0KPiA+ICBDT05GSUdfRFJNX0hJU0lf
S0lSSU49bQo+ID4gIENPTkZJR19EUk1fTUVTT049bQo+ID4gIENPTkZJR19EUk1fUEwxMTE9bQo+
ID4gK0NPTkZJR19EUk1fTElNQT1tCj4gPiArQ09ORklHX0RSTV9QQU5GUk9TVD1tCj4gPiAgQ09O
RklHX0ZCPXkKPiA+ICBDT05GSUdfRkJfTU9ERV9IRUxQRVJTPXkKPiA+ICBDT05GSUdfQkFDS0xJ
R0hUX0dFTkVSSUM9bQo+ID4gQEAgLTcxOCw3ICs3MjAsNiBAQCBDT05GSUdfQVJDSF9URUdSQV8x
OTRfU09DPXkKPiA+ICBDT05GSUdfQVJDSF9LM19BTTZfU09DPXkKPiA+ICBDT05GSUdfU09DX1RJ
PXkKPiA+ICBDT05GSUdfVElfU0NJX1BNX0RPTUFJTlM9eQo+ID4gLUNPTkZJR19ERVZGUkVRX0dP
Vl9TSU1QTEVfT05ERU1BTkQ9eQo+Cj4gRXh5bm9zNTQzMy10bTIgYm9hcmQgc3VwcG9ydCB0aGUg
ZXh5bm9zLWJ1cyBkZXZpY2Ugd2hpY2gKPiB1c2VkIHRoZSBzaW1wbGVfb25kbWVuYWQgZ292ZXJu
b3Igb2YgZGV2ZnJlcS4KPiBXaHkgZG8geW91IHJlbW92ZSB0aGlzIGNvbmZpZ3VyYXRpb24gZnJv
bSB0aGUgZGVmY29uZmlnPwoKSXQgaXMgc2VsZWN0ZWQgYnkgZGVmYXVsdCBieSBEUk1fUEFORlJP
U1QuIFRoZSBkaWZmZXJlbmNlIGlzIHRoYXQKUEFORlJPU1Qgc2VsZWN0cyBpdCBhcyBtb2R1bGUu
IFRoZSAneScgaXMgY2hvc2VuIGJlY2F1c2Ugb2Y6CiAgU0NTSV9VRlNIQ0QgWz15XSAmJiBTQ1NJ
X0xPV0xFVkVMIFs9eV0gJiYgU0NTSSBbPXldICYmIFNDU0lfRE1BIFs9eV0KCkJlc3QgcmVnYXJk
cywKS3J6eXN6dG9mCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
