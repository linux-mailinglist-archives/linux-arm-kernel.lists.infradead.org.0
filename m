Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D94C1BCD90
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 22:40:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HEp0sqwe+/qUz2uEgL+BZ/HQoXXTJKt18YWNqQfsGPU=; b=Ax7SeX9zOwEBsZ
	qE3Ncc6g68+qCxdqYQdCi57gxWrU/qbPYri7thi3GxpsfZlVWDZA06ahPTGxAu+c61NSqiaqkWxvj
	oZNW70BMKXk4Xh2krSVf5SaRsmHmmC54JZo4+UnIf+2uLe0XsZ8nfeOY3fVcUTGAXVqCdE/XxMrj+
	ZLyfO9qYlgGaIAksYXdIndQ2HavZP3ryp3QPTcgDkm433p+RmY9xXeWaT6CWBXwiPVOMVB2DxotUA
	qwOsuL9Z4tix0KaQPODEw7Q9K0qmDz6frk+poYmnEcRSi9SqFUqXwdAGmYQjt5w86HtMuX6FNKBZ8
	CA+1h5CSr/ucHUFNnfOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTX1M-0004H0-Q7; Tue, 28 Apr 2020 20:40:00 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTX1C-0004GA-9m
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 20:39:52 +0000
Received: by mail-lj1-x244.google.com with SMTP id a21so137832ljb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 13:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V3OlUrk1ZjE1ta2A4BFHChh1Q15DDJC2bVKnSZqjkIw=;
 b=Ig9oGDt/jncXxEexaKBGPNWFHql3a4RonXLv+oSsQq40ap0vqIGMNbYniuDe/2sIyM
 weZEz1xbFa+4xdkrUwn6uAlQhHiYgYAen9aSTPRiipuzS1gP/6ISmR8UIUWgvSvtS3KJ
 SgwHyYQjJiXQiiGsxurH7pi4Re+fyiWcZUZXiTx1MFQ22gSnrshUKsayirwoDX2/FIFy
 f02nZIl1ahnj62FItb1r8+gArYLUD/cXv4v3zxux1AnthwnXD0mH+uBkbyoqKCtf4uQU
 jLlozDRdVHZlrv+72QZolw/h3LDfYkZA7zWQfwqB1+uMFzCkqE+JFTqakXEBJkyLJSn4
 MZVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V3OlUrk1ZjE1ta2A4BFHChh1Q15DDJC2bVKnSZqjkIw=;
 b=HNZ7kbdv548ODY2xKf2exm9nUTw3tz8LmnswuQdafAZ4gvN21FZhhcK2Y8oNxqUalN
 lfz81hEx3KIMNyqdmzKyIX9nG/sVoUvMEh8AMgK1MGcRaSl0YQXoMEZVpFOM3ZC49HgR
 hcWkBdSdZR3vktK9C/PkKyANCbEyeGz31hH/89zLVVvXQg7kuexhKTFEAJmyRoYOeOpo
 hmQij+l3t7VB+EkUH0XZmpQGBlpo5EhbF3LlLj3l69+8BZsayv/wxUUso9+N14jUCKsg
 Dc4wsp3OkVcwkuHj8CgMZT2Mpf55u1IFEHxkn5otQtbQxqYsxIfERBSKI8ZsuqLgPArl
 uafg==
X-Gm-Message-State: AGi0PuYW7Tt8kdvlNPbdRg2F+g2UjhyVrcGJJPx2o2XGjWH1TQNnjAKg
 W1CrbfuvRUAvyjRmqofAOZsNF+inuo10XJPiEQmMgw==
X-Google-Smtp-Source: APiQypIH9BsRfXXG0y8j3kGmDLc7ZK9EIQjOI8GIl+BT62qRMzbZcjmCkZJ5VobjAhrDkABqdmdFC+/IuCmXpXyJ10A=
X-Received: by 2002:a2e:8805:: with SMTP id x5mr19535284ljh.223.1588106388089; 
 Tue, 28 Apr 2020 13:39:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200427212514.11219-1-robh@kernel.org>
In-Reply-To: <20200427212514.11219-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Apr 2020 22:39:36 +0200
Message-ID: <CACRpkdZSPb8FxTSt8F3F1VcsTM4qG=6gxz1pBPjTZ0Dk2iVfSQ@mail.gmail.com>
Subject: Re: [PATCH] amba: Retry adding deferred devices at late_initcall
To: Rob Herring <robh@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_133950_507817_81CA3608 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Saravana Kannan <saravanak@google.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Russell King <linux@armlinux.org.uk>, John Stultz <john.stultz@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 11:25 PM Rob Herring <robh@kernel.org> wrote:

> If amba bus devices defer when adding, the amba bus code simply retries
> adding the devices every 5 seconds. This doesn't work well as it
> completely unsynchronized with starting the init process which can
> happen in less than 5 secs. Add a retry during late_initcall. If the
> amba devices are added, then deferred probe takes over. If the
> dependencies have not probed at this point, then there's no improvement
> over previous behavior. To completely solve this, we'd need to retry
> after every successful probe as deferred probe does.
>
> The list_empty() check now happens outside the mutex, but the mutex
> wasn't necessary in the first place.
>
> This needed to use deferred probe instead of fragile initcall ordering
> on 32-bit VExpress systems where the apb_pclk has a number of probe
> dependencies (vexpress-sysregs, vexpress-config).
>
> Cc: John Stultz <john.stultz@linaro.org>
> Cc: Saravana Kannan <saravanak@google.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Russell King <linux@armlinux.org.uk>
> Signed-off-by: Rob Herring <robh@kernel.org>

Makes sense to me, and the same approach is found
in the generic code in drivers/base/dd.c so
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

The timer-based re-probe was added by Marek Szyprowski
in commit a41980f2a3eb33ed7a2636e83498b47e95ceb05b
do deal with power domains. I guess it mimics dd.c
deferred probe at this point?

There are a bit of other differences that have piled up,
should we take a quick look at dd.c so there is not something
else we're missing? I see some PM code for example.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
