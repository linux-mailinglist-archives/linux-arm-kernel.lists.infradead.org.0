Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B8F50308
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 09:21:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmnerkLMLsPI6lWraPIRi1ynBlAX7uC6FGULR888IBM=; b=H+k37z0mDJUhCh
	08v49ocvglchuty1zbB9RCc7eurFXCWd3r1kklZ/4g9FSUYq8jF54QpAeMdWOYUlmwWY9H5ubucfK
	0pc0M6HfdmrV2cO9LesDtNU1DX6PguH3LjSBFA2VAlwhvVNaVkN0TMO7yEaDv6qS0WYOwObxx3Bb6
	GYeTipcqUjyYK70Q8tt44kvGuaUkITnv7VnceZg0/qkRR4+Xm5GRl0UbC9lNdVjA5/oliYNsiDM0j
	DDMnDztDn6SQp4UliCwTCwiTDisCmCuD45DJUslnkg9bf+FeClHWK9fLCYOFemXpoljTy9xaVJ+04
	eqZnNGxx+P+3Nberf+Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJIS-0005r5-9G; Mon, 24 Jun 2019 07:21:48 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJI1-0005nH-OF
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 07:21:23 +0000
Received: by mail-io1-xd41.google.com with SMTP id r185so1703852iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 00:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=rRYD08uEOW6jHrjgv0dXHWz0dSOkoJBUbYYXM6hia+M=;
 b=0ZOIPzJOIW81mQOo9Abzgc1wEIKgyK9mpk44HMHlNquRvqK1UJk9Z0J5QB0h9Wl6Xm
 +RBZUo5G7lxjMfHHUsZi5afzbNtd+v65zeYjsEU5/mcyoZDR6uA90b8ozuYvCmxlSOEU
 sNnlRlfK9QUuU6vVIU8GMkY8p7Wrx9ExfMtI/NCucCQDvVmlp2i0fPKdI03PsFLci1dV
 kN5f1dsqr9PbBpoV2jmE//4nKtMFKtx+qSVHKIhjA3tKTJzL7jhg97g5pQM/kJQAvO6J
 EnQfA71tnvEgEY7wWkQPg5FvRYWsVlbvKCb4LSi1LQCpsne7O0xrZOdhBllf2KK6NUsa
 95NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rRYD08uEOW6jHrjgv0dXHWz0dSOkoJBUbYYXM6hia+M=;
 b=tItkfJfGfqXEW3GDoR8ClY86MYwXoXW/m/7GzpMTZZ9wBxfSmpiH5vkY1Euh129VYV
 pzBmd01Hge8IsW/NsJt5Jagqi1JzsLJlIazoOLoGKWVX0X1MGgnjz1L7gZWLAz2/zLrs
 ACgRifaZ5NhHffj86tmR9VPKjokULBBTeS1GtwvP8cFvFIECWz7haVxlX3pK3CNgJTU0
 xlcLKDdnK7aqyygBlVJTNrRCvs4SgpVyNOXxrWK9nriuG2wJyR8FfkIJIVwdQx+jeGL6
 IQ5Hb+Lv1L+920/+5diiScPSurT4V+P76JMkrMKQ1mImS8cXMnxMaam8M7rbE28cbi4R
 Zceg==
X-Gm-Message-State: APjAAAWxUqwDmBExiC8iXfBCXe2xUAFMxTxI4Y3a2nHXY+dU5v6Tyty0
 axFU4tkLiojRJjBFMO3qngBkE/I9sSXvJK/LLSVFTg==
X-Google-Smtp-Source: APXvYqwmfI+mGWxHOSQwh+smr+2AsnMoFa+nhOVINzC/PYNsF18ld5h/oPC845ZsqFBHEgBqdnp2ZEyQ1xFhL93MxyQ=
X-Received: by 2002:a02:5b05:: with SMTP id g5mr120533961jab.114.1561360879228; 
 Mon, 24 Jun 2019 00:21:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190605083334.22383-1-brgl@bgdev.pl>
 <1ac8cfcf-1d77-9b6b-4aab-4171f6cf80fc@ti.com>
 <1a66e067-631c-c7a4-288b-3934737bee8c@linaro.org>
In-Reply-To: <1a66e067-631c-c7a4-288b-3934737bee8c@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 24 Jun 2019 09:21:08 +0200
Message-ID: <CAMRc=MecrpzwC0-8x=1dAipf+j7h+C54pHCfbZidFGXtAyv7Pg@mail.gmail.com>
Subject: Re: [RFC v3 0/2] clocksource: davinci-timer: new driver
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_002121_930118_7F7E1BEC 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cG9uLiwgMjQgY3plIDIwMTkgbyAwNzo0MCBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9A
bGluYXJvLm9yZz4gbmFwaXNhxYIoYSk6Cj4KPgo+IFNla2hhciwgQmFydG9zeiwKPgo+IGlmIHRo
ZSBzcGFyc2Ugd2FybmluZyBpcyBub3QgZml4ZWQsIHRoZSBkcml2ZXIgd29uJ3QgaGl0IHRoaXMg
a2VybmVsCj4gdmVyc2lvbi4gUGxlYXNlIGZpeCBpdCBiZWZvcmUgdGhlIHR3byBuZXh0IGRheXMg
b3RoZXJ3aXNlIGl0IHdvbid0IG1ha2UKPiBpdCBmb3IgdjUuNC4KPgo+IFRoYW5rcwo+CgpIaSBE
YW5pZWwsCgp3aWxsIGRvLCBJIGp1c3QgY2FtZSBiYWNrIHRvIHRoZSBvZmZpY2UuCgpTZWtoYXIs
IGhvdyBkbyB3ZSB3YW50IHRvIGhhbmRsZSB0aGUgcmVzdCBvZiB0aGUgcGxhdGZvcm0gY29kZSB3
aXRoCnRoaXMgZHJpdmVyPyBEbyB5b3UgdGhpbmsgaXQgY2FuIG1ha2UgaXQgZm9yIHRoZSBuZXh0
IHJlbGVhc2U/CgpCYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
