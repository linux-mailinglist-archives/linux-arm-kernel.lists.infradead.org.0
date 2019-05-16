Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A640620D85
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:57:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xcy29FfBiKXmDHqr55FjYfaQH7BDwGbek62yS0kxebQ=; b=DZ3JsdukCNsQ+7
	5K88dConDsUM5wCawYobvkqXJwgRCn1q9d2hZfObXhkF1vNUUXDytPZghaeo70+1tmN2X5tNwV1Mz
	Q8N2TiIydKF0XqA9hvPQ/6i7LjlC9RxkFEberPX7iEEEDeC24l0p3heRWVvRoyknJtc1XKxaml0uG
	G5uh8oxT5ua5biadbew5UAF1eKnOiGXDu7xpApaeR4kYbzXe4haFsfjraWPxQrzP7tSRgNfPcSuoS
	CfIPorRDZEXkpk9vU+F2bXcWXeW4su7zsoh9z6fE3oYut9jXQNn4mpQy+9D54yZGD9CgsFNQKd+gl
	UGMHQfJvQhr8HiqTWv4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJhL-0007c5-09; Thu, 16 May 2019 16:57:39 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJhC-0007HN-RP
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:57:32 +0000
Received: by mail-vk1-xa43.google.com with SMTP id o187so1221765vkg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XhVy4fV27jq2t1U3j4yj5LOX3kolPCtSSv2ORXGfHzE=;
 b=nmkNcSzFh5OLOVDoIP1Pa1b3QlFQ9XUYxSji0qAe4uJ8qe8/ySQ0B315ClUKfCMxCI
 QreA9gJduIu2vRUzTpTojdUotl5e6fJq+SceMidLHwj0AeQMK7NwYdEyur30qezJkGB1
 6P6pUygJV9C+M4itjNtSHxbE6pyY55gvxIt8M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XhVy4fV27jq2t1U3j4yj5LOX3kolPCtSSv2ORXGfHzE=;
 b=ulvKWM0qhPcgdTFDdj7n1jzCChvZM3oNUmKQIpdDYBFECS9j9e3E0suabtUjhC9Ics
 Ci28TxU8EEi0FT21H5G/F+t5ul2ulQn2J/lxs7i0XtAweqg9rUDemay6PQUKlhesu+TR
 kyWlOO7j+BWqJG4iRbVAIPlT9VnGlflYATExNNE2aKPPLaHeY0th5YfyBw4hK/N7ij5q
 fTGw1LsK8YUUu3eZn+6GNzzt5XIwfZh5Qva5kCOcMSwZSwxMWixj90Rb2YcScE4nX6sC
 LZm1sy51yHIMVcRDNtSmyC/N0vI0qGP1jcLbFdvMQiN7kyBCuQUOxvPHWmtIAgcSVlgf
 NRRw==
X-Gm-Message-State: APjAAAWBs9fqKKL6lbyhnvXYCKHakFwjDqfhSwj+zylwHiHzsQvnkogZ
 7ndvfpFL7U9/JtShakoCL2TkvYj/6is=
X-Google-Smtp-Source: APXvYqyLGU4KF74ZXap/fidhTm8wpfjKLQqfc2OvHwSo6ec8PChXr4+KFWFfGW1xvzidL9bNdSGBZA==
X-Received: by 2002:ac5:c219:: with SMTP id m25mr22610952vkk.53.1558025848381; 
 Thu, 16 May 2019 09:57:28 -0700 (PDT)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com.
 [209.85.222.44])
 by smtp.gmail.com with ESMTPSA id y5sm2102386vsc.19.2019.05.16.09.57.26
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:57:26 -0700 (PDT)
Received: by mail-ua1-f44.google.com with SMTP id 7so1572117uah.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:57:26 -0700 (PDT)
X-Received: by 2002:a9f:24a3:: with SMTP id 32mr1792277uar.109.1558025846288; 
 Thu, 16 May 2019 09:57:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190516162942.154823-1-mka@chromium.org>
In-Reply-To: <20190516162942.154823-1-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 May 2019 09:57:11 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XtAMJcNCkV=wm1iNcMo3UenmrCDKJkmS6wtxvtpvLrag@mail.gmail.com>
Message-ID: <CAD=FV=XtAMJcNCkV=wm1iNcMo3UenmrCDKJkmS6wtxvtpvLrag@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] ARM: dts: rockchip: raise CPU trip point
 temperature for veyron to 100 degC
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_095730_900531_7D4F0F30 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBUaHUsIE1heSAxNiwgMjAxOSBhdCA5OjI5IEFNIE1hdHRoaWFzIEthZWhsY2tlIDxt
a2FAY2hyb21pdW0ub3JnPiB3cm90ZToKCj4gVGhpcyB2YWx1ZSBtYXRjaGVzIHdoYXQgaXMgdXNl
ZCBieSB0aGUgZG93bnN0cmVhbSBDaHJvbWUgT1MgMy4xNAo+IGtlcm5lbCwgdGhlICdvZmZpY2lh
bCcga2VybmVsIGZvciB2ZXlyb24gZGV2aWNlcy4gS2VlcCB0aGUgdGVtcGVyYXR1cmUKPiBmb3Ig
J3NwZWVkeScgYXQgOTDCsEMsIGFzIGluIHRoZSBkb3duc3RyZWFtIGtlcm5lbC4KPgo+IEluY3Jl
YXNlIHRoZSB0ZW1wZXJhdHVyZSBmb3IgYSBoYXJkd2FyZSBzaHV0ZG93biB0byAxMjXCsEMsIHdo
aWNoCj4gbWF0Y2hlcyB0aGUgZG93bnN0cmVhbSBjb25maWd1cmF0aW9uIGFuZCBnaXZlcyB0aGUg
c3lzdGVtIGEgY2hhbmNlCj4gdG8gc2h1dCBkb3duIG9yZGVybHkgYXQgdGhlIGNyaXRpY2lhbCB0
cmlwIHBvaW50Lgo+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhpYXMgS2FlaGxja2UgPG1rYUBjaHJv
bWl1bS5vcmc+Cj4gLS0tCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIHBhdGNoIGFkZGVkIHRvIHRoZSBz
ZXJpZXMKPiAtLS0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRz
IHwgNCArKysrCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24uZHRzaSAgICAgICB8
IDUgKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKClJldmlld2VkLWJ5
OiBEb3VnbGFzIEFuZGVyc29uIDxkaWFuZGVyc0BjaHJvbWl1bS5vcmc+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
