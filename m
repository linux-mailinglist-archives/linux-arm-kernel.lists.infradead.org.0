Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 740D1B0B67
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 11:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7cWXpyZ4Gqigbd9sCAojnoD5nknnF58AiSzHgdzq4M=; b=TFeMFw+5FctdeH
	t8AZCR35MwPtlwEDDVY6MGi8NMTtrHrIODGrjbIVTJVX+NyNLBwVAf4AX+gxYlr2J3lwiZHKh1+1O
	6NrJi0NTEb3ERVxCHUy+0ujfc9mPbXOtqgKMMY816rBI2P9UX7p/NoejN7DtBwl/M8tt54HoRAKUP
	9E5kUvODLRvJSVuIsq6JpKc+Z1kI8qKjJwRmqcB04rvbm0Xh3NIC7V1kHLiU3gGs+JsQHQRzxjg4m
	no105u+VOzOiHiCLnJHKkd+/QT83Ebvvi/hwjdoK0sCjNq5o7UtxI5W9f4js4s72q53pY/O19EIz2
	vyoI6T7KI9++kiSdZthw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8LPt-0005vb-Su; Thu, 12 Sep 2019 09:29:29 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8LPi-0005u7-30
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 09:29:19 +0000
Received: by mail-qk1-f193.google.com with SMTP id u186so34431qkc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 02:29:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wtGU4iMWfZeQ/FsklpEfRM6iPwzDv+XphhtaUmBwgSA=;
 b=cXZa6uEiXFgIFhXRLy4oJ4cDlVfR30nO8gqBnbmtsSeqHDS0EX+wQGhIab/tK8++7u
 GpNRWF+X8J7XuQ8ontf8LFAhbII74PXXTfHYMnAWyt6KU7yTgSZjlpumDoKqJFbnoOHp
 B31me+OxnnY54a7m0ZJ0yu11cOOyA7EoPj4/0vM12f2haq9VzB3COlbACd/lmux4ZVBp
 Mq36WW6kXm1704YP4O/xeiYZcTtcvQ4WyB+dtvhdQzLj6DcCKld8UqqLHW5UaYPZUugH
 4z2WqZO+wM+kEIIt1sV2lyjI8vD0uFcYivXK/NWOvSz8cQn6KODPS8obhm7Yig0RpCIq
 5D5A==
X-Gm-Message-State: APjAAAX/7bGu4jQ5wh+Irx2h9TRHBnvVH3mSxRqRf2CqdPHBgZ04G01e
 MHRUsii4o9DzBYGeCkAuYOWjEFFTjjAyH89HmcI=
X-Google-Smtp-Source: APXvYqycQWX7fEy2jA5D+LxaO4u4opsppoZ4/cfOD3zMYVxe++YCYyGMd3QpWn3hGnNZZJlZplYFA331lIror8ITmVA=
X-Received: by 2002:a05:620a:145a:: with SMTP id
 i26mr40226931qkl.352.1568280556796; 
 Thu, 12 Sep 2019 02:29:16 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1568239378.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1568239378.git.amit.kucheria@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 12 Sep 2019 11:29:00 +0200
Message-ID: <CAK8P3a2zGJx7SCA4LUHPGTybN8GU16Ah3H0FbaOEwR3H7uGCnA@mail.gmail.com>
Subject: Re: [PATCH 0/4] Cleanup arm64 driver dependencies
To: Amit Kucheria <amit.kucheria@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_022918_130194_417EAF92 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-pci <linux-pci@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, arm-soc <arm@kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Sebastian Reichel <sre@kernel.org>, Will Deacon <will@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 12:18 AM Amit Kucheria <amit.kucheria@linaro.org> wrote:
>
> I was using initcall_debugging on a QCOM platform and ran across a bunch of
> driver initcalls that are enabled even if their SoC support is disabled.
>
> Here are some fixups for a subset of them.

The idea seems reasonable, disabling a platform may just turn off
all the drivers that are not useful elsewhere, but there are mistakes
in a lot of your changes, so I'm certainly not applying these for 5.4.

Generally speaking, the way that works best is

config SUBSYS_DRIVER_FOO
       tristate "SUBSYS support for FOO platform"
       depends on ARCH_FOO || COMPILE_TEST
       depends on SUBSYS
       default "m" if ARCH_FOO

This means it's enabled as a loadable module by default (use
default "y" instead where necessary) as long as the platform
is enabled, but an x86 allmodconfig build also includes it
because of COMPILE_TEST, while any configuration without
ARCH_FOO that is not compile-testing cannot enable it.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
