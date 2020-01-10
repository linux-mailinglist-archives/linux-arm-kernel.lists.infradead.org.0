Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7C3137453
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:05:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cS2SNG7yGfa+ckMZqF+NHzGvew1x9jaq4lblprwia8w=; b=qlh35z/Gpw2gqE
	7WXqnQ2oE4o9ROwOzT9ct4h86RDXbihzTHLzajkltwgeDflxcnvtSTFSf+KwWY2b7toaVGQZEDYM7
	oOb0rfAd0VEwexcmlDmk5j+qLcP6qRlvVrmDBecE3T+0hNLgdHsYclXLozeBlxm880xPrHdYIspfa
	AZlbXtcUJgZT5uQNi0oWH2W8GwQKaM+QiT0v6ju9RNZJG/CxX5WppEpYiLDspzerNYSKVpOUY3ZqK
	r8L+bevvQZ6ntQl1FG6Zbx1SJ3kCfo0UPn+8up5qvcBPtfNUFxbf63fuMWS3Vth0helUnujEKBttw
	ovaG8SxWaGgWqP2lWj1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxjG-0000Do-1d; Fri, 10 Jan 2020 17:05:46 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxix-0008Sx-7D
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:05:29 +0000
Received: by mail-qv1-xf41.google.com with SMTP id x1so1041678qvr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 09:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=DFLvkIvsfRzEeYeMWimySYLVF+WpVlUlb5e+/01GHvo=;
 b=zzm4Pu4tY+i6CjZzXLpu3q8tUORkx30aLLzUewljvt9lD0bcIPQnhmZxTeUIFY5oAP
 xuDP1FF6Ftr/zy0U6/JwPOD2vs0tUhl4wOAT6X7KcUBnenHFJ1yTS8N+V+/WVkUExkXO
 EW3ILIox/xZvxQPYJGFZ+6PD/4Tw8+N32RhPLaXho7FgNDSDudmheN31ju0Gd1v0ZB23
 t9Fw09laMgMRGJFtvJ2JkCpYZfu3leqcfzMdoVsTph6NRLhUczMDHrnS5CSiYtFYjLzq
 u2A1uzCm4hUfImX+tega47fMul0DqHXviCkksWFGQC8RPQsaR6kyzedNn8ZG4GWyKRj9
 O7Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=DFLvkIvsfRzEeYeMWimySYLVF+WpVlUlb5e+/01GHvo=;
 b=m7GaE38kH2aKrOJQirE5jNSQRUluoX9wUQLdyTXeT9x2dRF5P5BalvX6pK/kplvlra
 mykJp0oEHxGcQ0wu8Or71KKvu3AV8Fg921y/ObbdqQDvRaaTGowpg48KwnQ4nNffePzT
 z7Xz2BW+dgwU+sT9LgVTgNJ6GRxk+CMKYyNkiCZuShr0KfoD/uKqtI/pHdenEYARXxWs
 YknKKRzahWbXl2WXtSceaqVwsvtKQKIOGrkkLdJ3fORkVkQp2yt8Ye6Mwlhkq6KFbxLN
 H3xlEW7mHDnmgmuwAkdJyCSRsVnBhIDOXTxPcuCzoD+kybDnT2iOrCM/qIILnyQgWGpz
 ufUA==
X-Gm-Message-State: APjAAAX6maisFfWVaQroLwclnjzIUOYeXFb3FgtauhddrpVLu9of7Gxc
 W2F+yoR8FWfadMzzavgkkDSLPWDaKvtaMKLGiPjDRQ==
X-Google-Smtp-Source: APXvYqz0la7Efw22ferpTBoxBVrqBOeHq6hHZrpdbVSdb3RbLMFutQxcZ6MulKHyCuMEVUjVgvyT8CCoi58kSRbAQ/E=
X-Received: by 2002:a0c:d60e:: with SMTP id c14mr3677889qvj.76.1578675925325; 
 Fri, 10 Jan 2020 09:05:25 -0800 (PST)
MIME-Version: 1.0
References: <20191224100328.13608-1-brgl@bgdev.pl>
 <20191224100328.13608-2-brgl@bgdev.pl>
 <c6b69cb6-b784-0d6c-efaf-87926c20db16@linaro.org>
In-Reply-To: <c6b69cb6-b784-0d6c-efaf-87926c20db16@linaro.org>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Fri, 10 Jan 2020 18:05:14 +0100
Message-ID: <CAMpxmJWscNUgot8OuxbheSJa=GZA4q-b0JAhATBy9uqYR6EGug@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] clocksource: davinci: only enable tim34 in
 periodic mode once it's initialized
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_090527_286652_4814731B 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Sekhar Nori <nsekhar@ti.com>,
 LKML <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cHQuLCAxMCBzdHkgMjAyMCBvIDAwOjEyIERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0Bs
aW5hcm8ub3JnPiBuYXBpc2HFgihhKToKPgo+IE9uIDI0LzEyLzIwMTkgMTE6MDMsIEJhcnRvc3og
R29sYXN6ZXdza2kgd3JvdGU6Cj4gPiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6
ZXdza2lAYmF5bGlicmUuY29tPgo+ID4KPiA+IFRoZSBETTM2NSBwbGF0Zm9ybSBoYXMgYSBzdHJh
bmdlIHF1aXJrIChvbmx5IHByZXNlbnQgd2hlbiB1c2luZyBhbmNpZW50Cj4gPiB1LWJvb3QgLSBt
YWlubGluZSB1LWJvb3QgdjIwMTMuMDEgYW5kIGxhdGVyIHdvcmtzIGZpbmUpIHdoZXJlIGlmIHdl
Cj4gPiBlbmFibGUgdGhlIHNlY29uZCBoYWxmIG9mIHRoZSB0aW1lciBpbiBwZXJpb2RpYyBtb2Rl
IGJlZm9yZSB3ZSBkbyBpdHMKPiA+IGluaXRpYWxpemF0aW9uIC0gdGhlIHRpbWUgd29uJ3Qgc3Rh
cnQgZmxvd2luZyBhbmQgd2UgY2FuJ3QgYm9vdC4KPiA+Cj4gPiBXaGVuIHVzaW5nIG1vcmUgcmVj
ZW50IHUtYm9vdCwgd2UgY2FuIGVuYWJsZSB0aGUgdGltZXIsIHRoZW4gcmVpbml0aWFsaXplCj4g
PiBpdCBhbmQgYWxsIHdvcmtzIGZpbmUuCj4gPgo+ID4gSSd2ZSBiZWVuIHVuYWJsZSB0byBmaWd1
cmUgb3V0IHdoeSB0aGF0IGlzLCBidXQgYSB3b3JrYXJvdW5kIGZvciB0aGlzCj4gPiBpcyBzdHJh
aWdodGZvcndhcmQgLSBkb24ndCBlbmFibGUgdGhlIHRpbTM0IHRpbWVyIGluIHBlcmlvZGljIG1v
ZGUgdW50aWwKPiA+IGl0J3MgcHJvcGVybHkgaW5pdGlhbGl6ZWQuCj4gPgo+ID4gU2lnbmVkLW9m
Zi1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmdvbGFzemV3c2tpQGJheWxpYnJlLmNvbT4KPgo+
IFdoeSBub3QgbW92ZSBjbG9ja2V2ZW50c19jb25maWdfYW5kX3JlZ2lzdGVyKCkgYWZ0ZXIKPiBk
YXZpbmNpX2Nsb2Nrc291cmNlX2luaXRfdGltMzQoKSBpcyBjYWxsZWQgPwoKSGEhIFllcywgdGhh
dCB3b3JrcyB0b28uIEknbGwgc2VuZCBhIHYzIHNob3J0bHkuCgpCYXJ0CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
