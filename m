Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 293FB89CB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 13:25:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NW8QrUb46/zOxA6U3a9acEvDhBSayWrlYsyWmm/Z1YQ=; b=DgZXK6NDHppANS
	qXH+Y6afDq0IWpPHrV1k4gbQqRmQ9NRlUOBFpSPei5dVB8blK/ZxHVwTXJ2tmg86gaSP6z9Khy9WA
	kOC1txMKM+kDrD9xS/y2xi5bfm/HCg997XD5vuIk3Jm5os1mxOXh2WFqH74UVeuVihMgc+BqT6f7w
	dtvs0eGpF3oeQqzxe9r110EtjL9k3eCoQ23WNumBmkAu+9uA6QPAyy4uHaHJ9LB6EvT0qr6Yhbe1x
	PhZ7gHp8kjmdlpwQk2BaRdKTcCQeSx4f6o32qRNZIS8tZo1fakcgtcN6e8GxU1t0mVh9bHbWpef/O
	M1mWg1OpDH6mcwD+Tp8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx8SS-0007lz-Lv; Mon, 12 Aug 2019 11:25:48 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx8S9-0007l0-Cf
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 11:25:30 +0000
Received: by mail-wr1-x443.google.com with SMTP id j16so1968600wrr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 04:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=49CBW8Jmx90YcYNx8wReWcg2SN7UmhhfHSj1OE9VGKY=;
 b=nJ4FxnH+8fGcZOZSrqQVAYBMKxnGE4IOx3TnqukSR1QQoo0UyYYxDXtMV35wZjt1T1
 kOiRqFryRBep6h9A+GS0gUtCjdc29Cw9Zn0te2tYLhcDO6+yWJLE0Q8M2UfOZnm6N1+k
 9A/Jm1GA87/N6JAYm+u0a8MTphDzyByR51rMQzKJJF1EEfcESoB6h02+UME8QDWsSxL/
 nZCt75lbnJWXN6gdUUyEnE8RuOjewzGhcv9xMe0lDG6r4ylRrRLNF5fNITAf2pQDYeYZ
 eAK4CwWpXLSMAW7mmqFTRgeCIng78potcp33k04z6fQ825NXNrbb7L8Jb+y4V0KG7UA9
 hBfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=49CBW8Jmx90YcYNx8wReWcg2SN7UmhhfHSj1OE9VGKY=;
 b=qB7Z6BoGRBbAv4hQZNdf1Au0vQdH9Uibjidk0CZ+DOc7h2fHg830VcKwKVo80j2+x2
 jgL7j4VvQf5BQ84aqMLW7F+bumVEDYSiyJMcWRfMS9no5+dUg4CJmgEmPzwR9NanyNTS
 Dnv09krspMGonbS2Bi6cAKnF5RNYg5W7Wjs2Yoda7rlYK27YjHrzRlmbgc7MuuvaiN4e
 iIslC9SXXH8DYlp4hCp5Ii4XU7ce8Wu2uKIxv14QXnODqUB8Gx52ug+jxSTZMtGlEGIc
 bhjSApWcBPNmqW8vzIZirZN9mIsKpFjoATUroDwddB9bnf44dihPuSGvSSg9wkN9cNUK
 9KPA==
X-Gm-Message-State: APjAAAXJiVEOMu+tgAIdxTc4kzPU7TAhWuGyWDpl3ZphiJZ5PfDsuIzl
 9ubFjSn1KdRSdAUka8bEcLZbtQ==
X-Google-Smtp-Source: APXvYqy6WbRf37/8vVpsj8slsd6qhrcT26PVhm1zZSyanYDyMDDJ2/CALUfqVjfjKV/6kEIUhtVDLA==
X-Received: by 2002:adf:ed4a:: with SMTP id u10mr42749044wro.284.1565609127998; 
 Mon, 12 Aug 2019 04:25:27 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id o17sm13057600wrx.60.2019.08.12.04.25.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 04:25:27 -0700 (PDT)
Date: Mon, 12 Aug 2019 12:25:07 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: Re: [PATCH v3 01/10] dt-bindings: add powercontroller
Message-ID: <20190812112507.GR26727@dell>
References: <20190729174154.4335-1-frank-w@public-files.de>
 <20190729174154.4335-2-frank-w@public-files.de>
 <20190812102035.GH26727@dell>
 <trinity-a6c06411-16d3-40ab-a4fb-3494131c8ed6-1565608221532@3c-app-gmx-bs80>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-a6c06411-16d3-40ab-a4fb-3494131c8ed6-1565608221532@3c-app-gmx-bs80>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_042529_455257_7A30A358 
X-CRM114-Status: GOOD (  12.34  )
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-rtc@vger.kernel.org,
 Allison Randal <allison@lohutok.net>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 "Tianping . Fang" <tianping.fang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAxMiBBdWcgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gPiBHZXNlbmRl
dDogTW9udGFnLCAxMi4gQXVndXN0IDIwMTkgdW0gMTI6MjAgVWhyCj4gPiBWb246ICJMZWUgSm9u
ZXMiIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiAKPiA+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9tdDYzOTcudHh0Cj4gLi4uCj4gPiA+ICsJRm9yIGRldGFp
bHMsIHNlZSBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcnRjL3J0Yy1tdDYzOTcu
dHh0Cj4gPgo+ID4gUGxlYXNlIHVzZSByZWxhdGl2ZSBwYXRocy4KPiA+Cj4gPiBFLmc6IC4uL2Jp
bmRpbmdzL3J0Yy9ydGMtbXQ2Mzk3LnR4dAo+IAo+IEhpLAo+IAo+IGFzIHdlIGFyZSBpbiBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkLyBpdCBzaG91bGQgYmUKPiAuLi8uLi9i
aW5kaW5ncy8uLi4sIHJpZ2h0PyBvciAuLi9ydGMvcnRjLW10NjM5Ny50eHQgPwoKSXQgd2FzIGFu
IGV4YW1wbGUgKGhlbmNlIHRoZSAiRS5nLiIpLgoKWW91IHdpbGwgbmVlZCB0byBhZGFwdCBpdCBk
ZXBlbmRpbmcgb24gd2hlcmUgdGhlIGZpbGUgZW5kcyB1cC4KCi0tIApMZWUgSm9uZXMgW+adjueQ
vOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4g
c291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3
aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
