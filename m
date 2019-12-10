Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE77C119F12
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 00:08:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qz6lffhVRruJeAHbTTKj8oNoU+gtNWchgeZHCfkBvw8=; b=kcnVTPZ7zvxHNA
	SjbDpksEDFWgARXxQlxP50V9PYYtzbrk0eYSrLrnPw7kuAi3DD0AAzxRXr3Pdg4eFASUqZJtrxFa0
	ReOvvFAmNBYja1gwwqj8jZanhWmZ7/mW25TuaJnboa3Yjrw2MskidTi9nEDiz8F3/ziwFBp8aPcGg
	2gjkjUF4Hu69HD8ed6Tg48vsgJ0D97IdVI5ND444TPgulvRNmq08clBdTBDfPHZJ5cBi/VXnHjaM8
	yD5zeGr7pjnT5QNb3QbPBy9bXCUilNIsi0HL9nBOEqSd4Ulqy6uCg6elxkrJsf3Dx97HIjE0j8AVJ
	bdRjL8YKK4l+QQId8Opg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieocU-0001zq-IK; Tue, 10 Dec 2019 23:08:42 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieocK-0001zF-NB
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 23:08:34 +0000
Received: by mail-lj1-x242.google.com with SMTP id e28so21764509ljo.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 15:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9xxiXMnGSKzhN/UK7KLFXAnWAJpUATrR6BCchEVjolE=;
 b=hsPeKNyDwzkRMzRhBS/0mfYOwLnkavOTy11sc+FrGVJANVlG1gaK9LQPePi8TaWH9g
 QlR4cMuOxIeaWs3+lw0IWo0XUq1bGcqZoaB9EjMRwPl4W7pLgNMXrgfJ0YdYD7qf5L3n
 wfUXJCNBjDxXrDUhzA0TZgDoZD8j+smuvs1dZQwhKGB1oPbl3SAa9sd0WcqfXs+MGHE8
 turhLoX1pDTL3fLTvNC7W/cYWU5+orhgFLyIY1H56O+fcDurWGn/M03Jmo3/2HdZUh+C
 hR7uMRDnuRVc1qSqgQPckqNyGNAQMtKGBosreQyXEhI0c1QHgcgKoLnkQWxLGsdxWj8P
 9Rlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9xxiXMnGSKzhN/UK7KLFXAnWAJpUATrR6BCchEVjolE=;
 b=RebP82G+jYpjDvZNTmJe7XMEL8jxVb5tOGaSPpYMG75/8IrIQIijc5Hik48JgbSmTD
 PFsrx/aqrudt2nLgnRIbql9/rQ3bwWJMw/v9y5rYc31R1LFLdc/17zlFHWRMQLrOEqM/
 jvrJcn2wrsdOxtINZnMw6rX8TEfD5ZwEYxQ+ZrMaaqqH6OGmoCEj6f68QfCo1Fh2YofB
 9eCSrE/omzqsthLlJIGgKK+4FrBJdichfkmo9UCnZsjd7HRUNTOt4W0qkBhGLbhcq2GG
 wBMvGYInRRkMATopwIUcjnSfx0gvcAywzsC8iPj/imTGk+GaeDXeP8uYENs2AMrFgyRc
 odCQ==
X-Gm-Message-State: APjAAAXmrG9suKVy/HkPqejESTrH5lZnYECmXIUl7Khi+2RWC+gaHfPZ
 tdSaNTJbeny+x7d0ZxYnf3fHSidfrURMsLutE2gMhg==
X-Google-Smtp-Source: APXvYqwwjmZFRFBQlqExGZOXRTd4QBIhPellGGznh/hQnKS9hrEIS23DbrQo+7FqO/hIWwyqxXsNTodSrqKquOPpX0Q=
X-Received: by 2002:a2e:8045:: with SMTP id p5mr22034613ljg.251.1576019306606; 
 Tue, 10 Dec 2019 15:08:26 -0800 (PST)
MIME-Version: 1.0
References: <20190107194523.2772-1-u.kleine-koenig@pengutronix.de>
 <CACRpkdbYizVLtQxh8_ZXWC-d6+E-k0T6Zq67qRJ7ascFGWTXig@mail.gmail.com>
 <20190111150441.rsmize5dudrmgu52@pengutronix.de>
 <CACRpkdbY=ZS0hb2wQfLQMr_=vNAGuMUGnAmwgwZi-hZ-fNdD=Q@mail.gmail.com>
 <20191210171524.dg4vkqp3dhupsgbm@pengutronix.de>
 <CACRpkdb3dZ0WKtReMcmt2boRy3ooh+yj-QKTG3vRR8=4G7w9nw@mail.gmail.com>
 <20191210212758.jppjwepnxpwez5r2@pengutronix.de>
In-Reply-To: <20191210212758.jppjwepnxpwez5r2@pengutronix.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Dec 2019 00:08:14 +0100
Message-ID: <CACRpkdb5L9S1McY41FUivZD7DUPOtbvTPVgVOvcVWr114GuzPw@mail.gmail.com>
Subject: Re: [PATCH] bus: ts-nbus: remove bus driver without user
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_150832_785379_AE188448 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Thierry Reding <thierry.reding@gmail.com>,
 kernel <kernel@savoirfairelinux.com>, Sascha Hauer <kernel@pengutronix.de>,
 Jerome Oufella <jerome.oufella@savoirfairelinux.com>,
 Sebastien Bourdelin <sebastien.bourdelin@savoirfairelinux.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBEZWMgMTAsIDIwMTkgYXQgMTA6MjggUE0gVXdlIEtsZWluZS1Lw7ZuaWcKPHUua2xl
aW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gT24gVHVlLCBEZWMgMTAsIDIwMTkg
YXQgMTA6MTk6NTVQTSArMDEwMCwgTGludXMgV2FsbGVpaiB3cm90ZToKCj4gPiBTbyBJIHdvdWxk
IHJhdGhlciBhc2s6IHdobyBpcyBodXJ0IGJ5IGl0IGJlaW5nIGFyb3VuZD8KPgo+IEl0J3Mgb25l
IG9mIHRoZSBsZWdhY3kgUFdNIEFQSSB1c2VycywgYW5kIHdoZW4gSSB3b3JrZWQgYXQgaW1wcm92
aW5nCj4gaXQgVGhpZXJyeSB3b25kZXJlZCBpZiBpdCdzIHdvcnRoIGtlZXBpbmcgdGhlIGRyaXZl
ciBnaXZlbiBpdCBoYXMgbm8KPiB1c2Vyc1sxXS4KPgo+IEkgZG9uJ3QgY2FyZSBtdWNoIGVpdGhl
ciB3YXksIGJ1dCBpZiB3ZSBrZWVwIHRoZSBkcml2ZXIgImxvb2tzIGRlYWQiCj4gc2hvdWxkbid0
IGJlIGFuIGV4Y3VzZSB0byBub3QgdGFrZSBjbGVhbnVwIHBhdGNoZXMuCgpIbSBhcmUgY2xlYW51
cCBwYXRjaGVzIG5vdCBnZXR0aW5nIGFwcGxpZWQ/Cklzbid0IHRoZSByZWFsIHByb2JsZW0gKG15
IGhhbGZndWVzcykgdGhhdCBkcml2ZXJzL2J1cy8qIGlzIGEgYml0Cm9ycGhhbmVkPwoKV2hlbmV2
ZXIgSSB3YW50IHRvIGNoYW5nZSBzb21ldGhpbmcgdGhlcmUgSSBqdXN0IHNlbmQgdGhlIHBhdGNo
ZXMKdG8gdGhlIFtBUk1dIFNvQyBtYWludGFpbmVycyBhbmQgYXNrIHRoZW0gdG8gYXBwbHkgaXQu
CmFybUBrZXJuZWwub3JnIHNvY0BrZXJuZWwub3JnCgpJZiBpdCBtZWFucyB0aGF0IHlvdSdkIGhh
dmUgdG8gZG8gdG9ucyBvZiBjbGVhbnVwcyBmb3Igbm9uZXhpc3RpbmcKb3IgdW5ncmF0ZWZ1bCB1
c2VycyBJJ2Qgc2F5IHNlbmQgYSBwYXRjaCB0byBkZWxldGUgaXQuCgpZb3VycywKTGludXMgV2Fs
bGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
