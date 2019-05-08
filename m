Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6B418286
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 01:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jc8yf3ybuitvtm/qp7VxJG83MsefFog0hIHVkD+PCKk=; b=gG8aUUHHv9i/q8
	PyoUzx1ec4ch2mYDZeS01SbWVVkn8o+kRfFEjf5Fpi4tKNdlew5iDqyeB6um043DsMTVC+NFQA9h+
	njKs6ppo29vR5I75iwSaC+QOuQ7voxfpv+0EWY7ZE36Z5ODfwfKIgmCA9iqGLAxqday1pRItCibNP
	0SCvkcafH2mb2FcBY93oXAPYvtiBkPdfqmRqvfsQrtF7vmtnkWFDZiiWmJTINqAaVuarxNZDKmanq
	KazvyWnIDaeYY07U5QbWymF5lgnqttYDHf783G6q2v4Yjjz2sR021EfZiN014iTyddFGr3UCZlkIu
	ABDE6S/KMuG3nHS1jpcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOVdc-0001RY-GS; Wed, 08 May 2019 23:06:12 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOVdS-0001Oz-9c
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 23:06:03 +0000
Received: by mail-pf1-x442.google.com with SMTP id c6so210173pfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 16:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=t70/GD4+TaRx0FldKygqFoHbNhYk6zrpT7AiFIAmSv8=;
 b=Fri/TeXVgYyjnZIznu8q6N0IGTnkTrWQ18au3lSfnWfTG2ZkiTI61O2C5RTAOwTbzh
 OdpGEjCviMHWxMXYyIZlCsQjhEELlWLfMl8Sc/p56Dx+j9VsCBaaYQBnnH66PliOTrmZ
 mDi3GShJzoUAch6DLpF6CSaLmHpU47T9SDG4vywGULaiGbndDQeseshOQq2oaIK1xnIa
 7DfVK8J85+hcEOgz4faGuxCOPYX+0C6wIcwG2YjqvxUs09Xy5YmVO5dsYRTlE1euOtH5
 H4sANH12QAmjf4yiYG76OG+ixN+EPk9jSUGf+8UiGYbxBgvkGyjKJTbWx+44piU+4cmf
 Xqyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=t70/GD4+TaRx0FldKygqFoHbNhYk6zrpT7AiFIAmSv8=;
 b=LGTXkIPqIPG6NbYaDK1HiVKrGD1m8oFS/qN78SOp9c49SpMO7VRfBRQ/9vK1M73v6F
 30zFI9M/75J5DSqwy+mu33avoPxGZLxCpSzo4F7mnImB3Uo0yflhzJSUQfBG5PYsnZMA
 mBV3WW5YiemAtytMYABzH1z+/YEkqnS7zFQ9Q4IgPzpPgu1GOBMPZ2uWRx3jJWKSlKBf
 HrItW9mwyTOB6EI55h+dkrOhHGhQ/QksNcpwXFCR7v4ipgkjRqTDRck0A5qwDWeFwHzH
 hvhTyqpl0uR1TUyNQRVTcSElWB03tPGC+S6VCrYOLEGltKOxoqCkHgyVC3l2aSO7vlek
 K1HA==
X-Gm-Message-State: APjAAAXd92sjSzByYhCk2OMKt8+zVB6H7kw3W4+w93BaRe5urwk3lYkf
 kFUSfefRggmaeO7HqV2pi0mAsw==
X-Google-Smtp-Source: APXvYqzyTGl8pYlwhBLIqpAgx01vbZZrXGfIdb6DXQWdcD9rkNEl4DqkLmLEqp06fO3s5T37XBQMnQ==
X-Received: by 2002:a65:6490:: with SMTP id e16mr938694pgv.13.1557356761644;
 Wed, 08 May 2019 16:06:01 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:a864:57af:5348:a6ea])
 by smtp.googlemail.com with ESMTPSA id 63sm385693pfu.95.2019.05.08.16.06.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 16:06:00 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 0/3] arm64: meson-g12a: Add Infrared Decoder support
In-Reply-To: <20190412100518.24470-1-narmstrong@baylibre.com>
References: <20190412100518.24470-1-narmstrong@baylibre.com>
Date: Wed, 08 May 2019 16:05:59 -0700
Message-ID: <7hy33gh7hk.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_160602_338224_F8177222 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: baylibre-upstreaming@groups.io, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Add Infrared Decoder support for the Amlogic G12A and enable it on the
> X96 Max and U200 Reference Design boards.

Queued for v5.3 (branch: v5.3/dt64)

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
