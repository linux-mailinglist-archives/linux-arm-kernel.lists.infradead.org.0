Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09828128B65
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 21:09:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W0uGQtoM/f9CM/a1aiAMchO1qiHGEzj2hvtJXghEuvs=; b=topslXIlSK0VPz
	39WB52DzVJf5R6CoxoKxw8UT6Ga8BBIhtkIun1y9Z4Xlbjwr0KbfcSBUKCufmmrE5MuEfmjs9gKAY
	t8qAzqIg7eMb4fVFS6I+XHNmFhSutZ2OwOwBepmtOiYkWaGYgrhScMLP+fe0HwKuceQWbVP7HAqT1
	b+/0IyrGtj04aen5wNjl+m22JKgvzMyzAa3kL4+tm27UPuiInc4Vvc7erurCvWdxqchNNNQPfu150
	0G3Co6ArNrE2TFkdbsCPyyVh0vj2bJxik5BzKHArjtYDGPy3Dw0Z2ViryAn+tNPGHp3VSLfERJ0xm
	6qXOAe4MJSUPV6vXL7fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iil4K-0003Pw-3b; Sat, 21 Dec 2019 20:09:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iil48-0003Ou-Pi
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 20:09:34 +0000
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0FA1A206D8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Dec 2019 20:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576958972;
 bh=JJfFCLhlkopmo4wVR32TZkulzHo1NE33kZtKC+jRwX8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qIoWyU9Fr2+SEGmnrTBoC8KenLJzObYZSJcO0wijT6vlmTRBYEiO5dzZQRjl+VHd5
 VRpM6L82ePrlJkeAMd4p4LCyf3cD/yK+x0aK4lJBStBzSZmb8AIdOCgykLIAMNGoqD
 fEsyPDsdBqn//ywd0oa6eArN22WlwhgAMi0cv+xU=
Received: by mail-lj1-f179.google.com with SMTP id e28so13597838ljo.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Dec 2019 12:09:31 -0800 (PST)
X-Gm-Message-State: APjAAAXN1jZPjEDqxZO063eHpdssjCsQcZWbu3ig6KQRDRp70iImh5kl
 HTgM8cl+BlTDrmEWWlLlo0GVfh9grm5uYzf30XE=
X-Google-Smtp-Source: APXvYqz+9TaYpA9qazzKenl6SyuSjXpHqSa8zOU8/cwyY5DW/ALCHnPENo9DzSPsoKOg/6lqqFIb2RMTFQtQMDJRhJ0=
X-Received: by 2002:a2e:a361:: with SMTP id i1mr13043160ljn.29.1576958970281; 
 Sat, 21 Dec 2019 12:09:30 -0800 (PST)
MIME-Version: 1.0
References: <CGME20191220120146eucas1p25dada01c315215d18bb8a15e3173b52c@eucas1p2.samsung.com>
 <20191220115653.6487-1-a.swigon@samsung.com>
 <20191220115653.6487-7-a.swigon@samsung.com>
In-Reply-To: <20191220115653.6487-7-a.swigon@samsung.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Sun, 22 Dec 2019 05:08:53 +0900
X-Gmail-Original-Message-ID: <CAGTfZH0QC5ZgVcSvXAy5tkyprZxfnwtWRa5NkRVfNP6HLMimew@mail.gmail.com>
Message-ID: <CAGTfZH0QC5ZgVcSvXAy5tkyprZxfnwtWRa5NkRVfNP6HLMimew@mail.gmail.com>
Subject: Re: [RFC PATCH v3 6/7] arm: dts: exynos: Add interconnects to
 Exynos4412 mixer
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_120932_858087_830AB9C6 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBGcmksIERlYyAyMCwgMjAxOSBhdCA5OjAyIFBNIEFydHVyIMWad2lnb8WEIDxhLnN3
aWdvbkBzYW1zdW5nLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHBhdGNoIGFkZHMgYW4gJ2ludGVyY29u
bmVjdHMnIHByb3BlcnR5IHRvIEV4eW5vczQ0MTIgRFRTIGluIG9yZGVyIHRvCj4gZGVjbGFyZSB0
aGUgaW50ZXJjb25uZWN0IHBhdGggdXNlZCBieSB0aGUgbWl4ZXIuIFBsZWFzZSBub3RlIHRoYXQg
dGhlCj4gJ2ludGVyY29ubmVjdC1uYW1lcycgcHJvcGVydHkgaXMgbm90IG5lZWRlZCB3aGVuIHRo
ZXJlIGlzIG9ubHkgb25lIHBhdGggaW4KPiAnaW50ZXJjb25uZWN0cycsIGluIHdoaWNoIGNhc2Ug
Y2FsbGluZyBvZl9pY2NfZ2V0KCkgd2l0aCBhIE5VTEwgbmFtZSBzaW1wbHkKPiByZXR1cm5zIHRo
ZSByaWdodCBwYXRoLgo+Cj4gU2lnbmVkLW9mZi1ieTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29u
QHNhbXN1bmcuY29tPgo+IC0tLQo+ICBhcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLmR0c2kg
fCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5
bm9zNDQxMi5kdHNpCj4gaW5kZXggNDg4Njg5NDczNzNlLi4xM2E2NzlhOWExMDcgMTAwNjQ0Cj4g
LS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpCj4gKysrIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpCj4gQEAgLTc3MSw2ICs3NzEsNyBAQAo+ICAgICAgICAg
Y2xvY2stbmFtZXMgPSAibWl4ZXIiLCAiaGRtaSIsICJzY2xrX2hkbWkiLCAidnAiOwo+ICAgICAg
ICAgY2xvY2tzID0gPCZjbG9jayBDTEtfTUlYRVI+LCA8JmNsb2NrIENMS19IRE1JPiwKPiAgICAg
ICAgICAgICAgICAgIDwmY2xvY2sgQ0xLX1NDTEtfSERNST4sIDwmY2xvY2sgQ0xLX1ZQPjsKPiAr
ICAgICAgIGludGVyY29ubmVjdHMgPSA8JmJ1c19kaXNwbGF5ICZidXNfZG1jPjsKPiAgfTsKPgo+
ICAmcG11IHsKPiAtLQo+IDIuMTcuMQo+CgpSZXZpZXdlZC1ieTogQ2hhbndvbyBDaG9pIDxjdzAw
LmNob2lAc2Ftc3VuZy5jb20+CgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
