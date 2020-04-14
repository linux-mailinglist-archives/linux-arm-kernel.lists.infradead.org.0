Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE881A867B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:01:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZ5wUVbzhh1hZMkUgbeSj7LdcqJaNbBVgHqO0TZEXWI=; b=pUH+Hk2qTm/ZCL
	K5Sv98HrBCSFZKNuE9ZAIufWzUI/nwXwRmz+YYnXBW6YrzFxWYQz/NFXxm7tOb1IRM7KB29QHSwMY
	69fZymGQ6x62mFw8DooQlBw9EpQw2y7HxgJKA73NxLv4Z+Ua7amlqY9lC3mjJ5kKwqZM2z3mp5myO
	Q1OLw8cuCqSGGNuhMkwCRCONoC4gsgdDi8DuVZn03lnZFvKFD4ba+N196mx40gfzUPooZV1vlJuww
	lU8mumSVgTGuaeErxGfKSIdE8QIectkgnnNtn04m87s7DDQOwdl2YNQWmtV7WyUAI+dKljpDCuyel
	STeeUyh/DEo1TAIRrmKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOvf-00016f-Vg; Tue, 14 Apr 2020 17:00:55 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOvU-00014i-95
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:00:50 +0000
Received: by mail-qk1-x743.google.com with SMTP id b62so14034678qkf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=GIN7IF6qYtKF4gSfr/AeRIvPX7/eCFsh4TApVUETWoE=;
 b=WJK29o3K5MXm6p3VWzbGrHsk0KBRUyWWpDHcGXG/HUX36uIXx5JyvHKhiu1s3JtLtU
 V7gkFI/q1KmdLMhMMUxBqFlgpBaa0ZkNYnWmTKON4gWBw5jxIE0XBUAq91eeIGYap3zZ
 OYhvWUkFkEL5+ErE8/pYC7Unq7WRkY9b6ox3OTtr13DORJy7fe4UWueM3dLYCpcH+haM
 7s83titQwzbdrha9nbAnzXASShQuNXplRRlunOROJBdfg3Qf8CHG61pH9bI8Yw4wFfA2
 c4dSOcHuk/T/b5dEH1oSwrARzE52d5vcmU9CxIdgyuhRNmOaqHvCyIjmpsCkx6zA/Qs+
 xdOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GIN7IF6qYtKF4gSfr/AeRIvPX7/eCFsh4TApVUETWoE=;
 b=RmffVCFZyY1Nvb7a5EOt5F5hGdrFNmEVYLYDT2d7CmKQyr4LJ6dOB18t63rqOHiQl5
 Xx9DIFCX7XQAqm+3O3l8DGAM+5KDbwM8HRcjHYmQnKeI/rhZQYYiyI1WqX43o88lFxH1
 /dtDqRhQ7e4S8kuvBsV0J/6PixtDiwAbcjinZx3U+5F9mWfxQx5HYwAeBKwJUl3pXkrL
 0Zs5XR1tXaisyu4qM1xn71q02hIt1Dwj7oS4FNRQlactJxYzSeQjT6PJvFonWqYVgLog
 NwpqlHU6QztoAc0e/RBM7aq2D2h2uRXsms8Pp4PyvAYJotly7XoooMWRHjUAS7ofW0uL
 ycpg==
X-Gm-Message-State: AGi0PuZLlAGhaJhAUQG7d/Qr5PUsg+PHW7ceWKAyx7CsU+86JNb10rVG
 d/h2LtUehdHXMyvCuxE1Lh0f99sNoLO8hcI9hbPicQ==
X-Google-Smtp-Source: APiQypJAVUbx87PMTgMxPYPAUoh9xIaPNebw3vKNOCwEq+Xku6Borru68lB1wY/XGBsCVLhWsPFHE8/a8s5sITgt6DA=
X-Received: by 2002:a05:620a:5f1:: with SMTP id
 z17mr18160792qkg.21.1586883642039; 
 Tue, 14 Apr 2020 10:00:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200402203656.27047-1-michael@walle.cc>
 <20200402203656.27047-11-michael@walle.cc>
 <CAMpxmJVE3PgVCxkQ-ryc5=KSrKcpdmk1cnJUxJBz9QFCx-e_+A@mail.gmail.com>
 <80bd8661ec8a1f5eda3f09a267846eaa@walle.cc>
 <CAMpxmJVC7e9JnHzBo-h8M1+KmcA32=Rvxo7+znH=-kAbcCr_LQ@mail.gmail.com>
 <e0388a2137e23d76b2415a7549c01dd1@walle.cc>
In-Reply-To: <e0388a2137e23d76b2415a7549c01dd1@walle.cc>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Tue, 14 Apr 2020 19:00:30 +0200
Message-ID: <CAMpxmJW1x4Orh1BZ4TUoCsYeaAAZ4NBUNvoMG9JgP0iLvXTOtg@mail.gmail.com>
Subject: Re: [PATCH v2 10/16] gpio: add a reusable generic gpio_chip using
 regmap
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_100044_386776_722F2EA6 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

d3QuLCAxNCBrd2kgMjAyMCBvIDEyOjA3IE1pY2hhZWwgV2FsbGUgPG1pY2hhZWxAd2FsbGUuY2M+
IG5hcGlzYcWCKGEpOgo+ID4+Cj4gPj4gU28gdGhlIGJlc3QgZnJvbSBhIHVzZXIgcGVyc3BlY3Rp
dmUgSSd2ZSBjb3VsZCBjb21lIHVwIHdpdGggd2FzOgo+ID4+Cj4gPj4gICAgLT5iYXNlX3JlZyA9
IEdQSU9fUkVHTUFQX0FERFIoYWRkcik7Cj4gPj4KPiA+PiBJJ20gb3BlbiBmb3Igc3VnZ2VzdGlv
bnMuCj4gPj4KPiA+Cj4gPiBNYXliZSBzZXR0aW5nIHRoZSBwb2ludGVyIHRvIEVSUl9QVFIoLUVO
T0VOVCkgd2hpY2ggd2lsbCByZXN1bHQgaW4KPiA+IElTX0VSUigpIHJldHVybmluZyB0cnVlPwo+
Cj4gVW5mb3J0dW5hdGx5LCBpdHMgbm90IGEgcG9pbnRlciwgYnV0IG9ubHkgYSByZWd1bGFyIHVu
c2lnbmVkIGludCAoaWUKPiB0aGUgdHlwZSB0aGUgcmVnbWFwIEFQSSBoYXMgZm9yIGl0cyAicmVn
IiBwcm9wZXJ0eSkuIEl0IGNvdWxkIGJlIGEKPiBwb2ludGVyIG9mIGNvdXJzZSBidXQgdGhlbiB0
aGUgdXNlciB3b3VsZCBoYXZlIHRvIGFsbG9jYXRlIGFkZGl0aW9uYWwKPiBtZW1vcnkuCj4KPiAt
bWljaGFlbAo+CgpFZWssIG9mIGNvdXJzZSBpdCdzIG5vdCBhIHBvaW50ZXIuIElmIHBvc3NpYmxl
IEknZCBsaWtlIHRvIGF2b2lkIHRoaXMKR1BJT19SRUdNQVBfQUREUigpIG1hY3JvLCBzbyBob3cg
YWJvdXQgaGF2aW5nIHNvbWUgc2VwYXJhdGUgZmllbGQgZm9yCmludmFsaWQgb2Zmc2V0cyBtYWtp
bmcgZXZlcnkgb2Zmc2V0ICd2YWxpZCcgYnkgZGVmYXVsdD8KCkxpbnVzOiBkbyB5b3UgaGF2ZSBh
IGJldHRlciBpZGVhPwoKQmFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
