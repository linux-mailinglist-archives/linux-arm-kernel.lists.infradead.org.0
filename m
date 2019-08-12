Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9265F89CD9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 13:28:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HuliDHx8BaA3V3uj41n7ppP0nh48FvaQk49sYjyDFGg=; b=QZqcz5cLafKXM7
	tKoyPt+Q4wIF+R1oJTN8nrqcczDztRF3uTDBItis2QPWerSzTNxDUIqi+0v9Fs2yX4A/JWFZyqBeR
	CjSLriL5V6A+GHH4FanXK3CGPvwjKWsg4ICLlNgpfq1I1bK7OmaX2qVA9TyD53Iu1gjyICSGJhaVu
	q8DVF/p8ANpyLzKLyN4COoBdzxwZ1suVBy5QnSbH8y0Chc6c1qhoFcnTjjfFPEhdOL9WWPWCLicsa
	rk2HHbL/IgoTyD8Oy/kGFQNIjMn8+f+bOMW4jQCQ6KSy2xIA21XYFsfyEGcXWkFur3tvwqWcqqX9f
	g3342FqGCWi6SR2G/tkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx8VT-0001NV-Vj; Mon, 12 Aug 2019 11:28:55 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx8UH-0000XU-UO
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 11:27:43 +0000
Received: by mail-wm1-x344.google.com with SMTP id 10so11813345wmp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 04:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=onzhCYAhu69mMnXiA3vphG6i/bzFEmmStwTFQWrMk/M=;
 b=LO5JKiJdEnUY8rCcJ2Dk0Cx7bVBWYoQfej9KzgsHgDhAkyu5Y53OGvPMUIyUokibZk
 Zq3jSti6K5bU1CJ1cDsfIvltT3cpISE22lYn65JOgKwL0eAC4njzGhFQOH0fs648Ld1p
 qR8D+vvuePJgI5XIy2e6QmnkXtoZxFh1k1FIf3QoOj5cPvSzuFIraDR9m/Ej91wJ9lHG
 MzA0WxkE8gJ7UbJ970D1xLiwDnkOp5LkugO3JNEFjh8jNRwZeWjGmQwOpSRQ1GJwXJxh
 xkJIHvQ7nBoS5vusCij3D0275J2K8rV9GTxNsY8GZDHgGh68O6JeV3dAqlT+aK6w4z9s
 4xhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=onzhCYAhu69mMnXiA3vphG6i/bzFEmmStwTFQWrMk/M=;
 b=QxukGHiKW2spN5AC4xs3t4Ey2Yk2Mjm5o5tfXLtg0xK1lO4YEXTBcHzQq1WAfJtSBi
 czLRlxplRWXnT52WsE6JncmISfPP5hsHoJyKcg4Anzgv1FLU8NddBldF9vnpTNBhQxib
 66vKwuP8SED6b01CoDEgieGly1svKcjhW8fc4df0814jgtxK0Q/CuIwFnsPvYpLbSGiI
 CUTOPV/ArEv0gTNdVh8SRzFthKVk9ymg3FnYDlYplTCDwYOJ+j0/G5hrx4XYbBoMREET
 pAzyZZAxmND+02qX/PdNF6e4Ub2lwaOUN+4PU8VRCuLC6Qz64U70mwbFUXsHJhvMqZtZ
 7kHg==
X-Gm-Message-State: APjAAAVPzajwXGf6RegEpoP/n973VPVGGMn9/3g9HBU/RQled1rLxy7C
 gzRKTgVG/Js+dVdIqj/oyTTVrw==
X-Google-Smtp-Source: APXvYqxmaNB4W7rQ1NBaIa13dmH8j4PeVi2WkfZMssZuVRKBziRrA/ksz+FwV16y1femTzoXzfSu1Q==
X-Received: by 2002:a05:600c:54c:: with SMTP id
 k12mr8590960wmc.117.1565609260064; 
 Mon, 12 Aug 2019 04:27:40 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id e11sm13412913wrc.4.2019.08.12.04.27.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 04:27:39 -0700 (PDT)
Date: Mon, 12 Aug 2019 12:27:31 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: Re: [PATCH v3 06/10] mfd: mt6323: some improvements of mt6397-core
Message-ID: <20190812112731.GS26727@dell>
References: <20190729174154.4335-1-frank-w@public-files.de>
 <20190729174154.4335-7-frank-w@public-files.de>
 <20190812102209.GI26727@dell>
 <trinity-0fa641df-f7bb-4627-a9ab-aac3cabc90ba-1565609115974@3c-app-gmx-bs80>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-0fa641df-f7bb-4627-a9ab-aac3cabc90ba-1565609115974@3c-app-gmx-bs80>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_042742_055290_C2E26826 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
 Richard Fontana <rfontana@redhat.com>,
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAxMiBBdWcgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gPiBHZXNlbmRl
dDogTW9udGFnLCAxMi4gQXVndXN0IDIwMTkgdW0gMTI6MjIgVWhyCj4gPiBWb246ICJMZWUgSm9u
ZXMiIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiAKPiA+ID4gLSAqIENvcHlyaWdodCAoYykgMjAx
NCBNZWRpYVRlayBJbmMuCj4gPiA+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTQtMjAxOCBNZWRpYVRl
ayBJbmMuCj4gPgo+ID4gVGhpcyBpcyBvdXQgb2YgZGF0ZS4gIFBsZWFzZSB1cGRhdGUgaXQuCj4g
Cj4gbWF5YmUgaSBzaG91bGQgZHJvcCBjaGFuZ2Ugb2YgdGhpcyBsaW5lIGNvbXBsZXRlbHkgKGVs
c2UgaXQgbmVlZHMgdG8gYmUgYWRqdXN0ZWQgZXZlcnkgeWVhcikKCkl0IG9ubHkgbmVlZHMgY2hh
bmdpbmcgd2hlbiB0aGUgQ29weXJpZ2h0IGlzIGNoYW5nZWQuCgpJZiB5b3Ugd2FudCB0byB1cGRh
dGUgaXQgdG8gMjAxNC0yMDE5LCB0aGF0J3MgZmluZS4KCk9yIGxlYXZpbmcgaXQgdW50b3VjaGVk
LCBpcyBhbHNvIGZpbmUuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNl
cyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
