Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D041C70319
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 17:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cNtFYxnDQiTdV907MXjpI0H6oPXyXgMxPDIKtauV2pM=; b=qa/shGgyCFLVWK
	yUWQis3x+svuYQYU+v+iDN8MUJpl65uo/dcw5UjydN5SQ8ywzVdU5UUiLr6prG7ztRMHq1CLG9m/p
	VIZpHKoZXxVb7cOrJNUo0Jxhz474XaRl+VV2es/7XjyI12FYEr2JLvxMvLcIolCi9uAaT+vAI3OVM
	Q/3Hnd8idwze5JmMGZKyB9iHUqUaNp3y64vsWAumLlZ7hS+pBb/GydICqPil9Iny28sRBGsCDqkZp
	/T8KWE1rSU14Lnwkc8doz6SiIMkeBsEW6Il/2Zxfbq9eqR0Zwnu8zJZnhuqK6kGxosvcD5ZxdimJM
	pgSH9442iMQmhmLkWaUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZta-0000hO-3s; Mon, 22 Jul 2019 15:06:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZtF-0000fh-B4
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 15:06:14 +0000
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A220A21951
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 15:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563807972;
 bh=DslRK1L9TpwyVf4cAbzBfJh4gOSkPvgl9sgTHHuWCY0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YsNPT2ub03cAe+/t4Hkw/FwffWy3FObHJyVkPNaRYSXCpzM+lLsJKaiUP6uqqbX9x
 z2d4+LmE4kqVOObCQZ4m5wtwx++3a8gTP/voOYwb7zHSFUYgtLYfQq3upY8aMQXq25
 fReaMSiPeWRZzmCAXZAZedttI+wQUnsGKwONPQXw=
Received: by mail-qk1-f177.google.com with SMTP id 201so28823355qkm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 08:06:12 -0700 (PDT)
X-Gm-Message-State: APjAAAXPklXNEex8WuX1jt+mvBUdrahtTKBAriM5StuvwbvYuMnxtu/Z
 aDFHf5h1T/MK0jNHHp0d+Zm71pLD1m3xClRKIg==
X-Google-Smtp-Source: APXvYqymxs9AMSxKQ96kOmELJ2aKFezuLIxE38h9p+u2+IOUx4rgMIGin70TUmK0CUxwNQLOMx02aaXq7pAWqZx7voE=
X-Received: by 2002:a37:a48e:: with SMTP id
 n136mr48165993qke.223.1563807971861; 
 Mon, 22 Jul 2019 08:06:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190722081229.22422-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190722081229.22422-1-maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 22 Jul 2019 09:05:59 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJyDS0eaQeUWRx3OGJfQ7+QDRwEC=fTM1MzZOOEO0h3SQ@mail.gmail.com>
Message-ID: <CAL_JsqJyDS0eaQeUWRx3OGJfQ7+QDRwEC=fTM1MzZOOEO0h3SQ@mail.gmail.com>
Subject: Re: [PATCH 01/11] dt-bindings: timer: Convert Allwinner A10 Timer to
 a schema
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_080613_410817_ABA632C5 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Chen-Yu Tsai <wens@csie.org>,
 Thomas Gleixner <tglx@linutronix.de>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 2:12 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The older Allwinner SoCs have a Timer supported in Linux, with a matching
> Device Tree binding.
>
> While the original binding only mentions one interrupt, the timer actually
> has 6 of them.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../timer/allwinner,sun4i-a10-timer.yaml      | 76 +++++++++++++++++++
>  .../bindings/timer/allwinner,sun4i-timer.txt  | 19 -----
>  2 files changed, 76 insertions(+), 19 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml
>  delete mode 100644 Documentation/devicetree/bindings/timer/allwinner,sun4i-timer.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
