Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EBD816C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:18:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A+wK+fTF7MV8a69T4JMEhcW+n7fPMwXFUbszVDgS0/o=; b=LcOmgYqPD/Nxzm
	P14yOioAF9O4A3VMMEsdyXAoNDThwI2768q/RkHFm0Z6hud/CNGHrGPYRWcY5Qnw9tDGbbTZnyX9d
	ASc0jJg27OC0WHwfgXWKjiWiP1ExPWwFo2yu9s8sy5ZsBbTdZ92CaP4Xd4pu8Ul2rqf85vdicTFSm
	6qs96W0Nud5aYd/jQ1V4N72x498DXuIwvLGhltUCaSdYxFz7YeTaq/V/LM9IfBBDhCuukhGBmFs/7
	oKmDn040YaGR0jx4rorz2PTiMhkkD9ncAkXmkM6AblPXZFTz6yq9YkekJuxdG+IOLjdd6eYAtU1vD
	6BG8HH2ZdjrHDR58n2BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hua3t-0004yN-Uq; Mon, 05 Aug 2019 10:17:53 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hua2f-0003y2-Ef
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:16:39 +0000
Received: by mail-lf1-x143.google.com with SMTP id j17so3457405lfp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SrbJD1vEfE60HVKjYoBmFtGgNGgrOIdfFoPt4X6Q+2M=;
 b=CEpf7s4k5oxGDjJNaYqs3rNyMc08fXeAZr7+86sI4zxQ09hLwEgCj/ZTWv270igZUA
 MBnuxP52z+gVvbpCqKNyoY/rVW2zFwZ1dBho3naVESdTps3/PYebbyvptTrbEy0FoD7u
 F4b61y3FBnom8OagnIdGxalPnqdxXn5wtX6dhu+iFbx9p5RuFlAOt1/5Dn1HlQ5JbGZX
 wzDRVmOCjoF2gyOlZKWNfNvoPKyFRyB6X0Y9s5eEwSfcCLRLwT7DijoYst5XrAvrcFIR
 yXzqQ28Y9KXDIGGjcy93VHBgEtefP/zmwNeshyNooHMfGTh4M2r2ormcG94/UfhxaQsF
 pHow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SrbJD1vEfE60HVKjYoBmFtGgNGgrOIdfFoPt4X6Q+2M=;
 b=rpyT6qqtcXihMzhIJVBa0dV3DtB5pXkXl9geXI8fsp9o06DZyz3lQEZNmhJn9ruuUt
 XwwiheidzA9izQ9Ub3odd+nlR0gjfbmh0JZYw2MAD/EpNgQDGqXYqAWU+OiPJF0hSuFH
 8+mxXjyIhc8xzetsEm8mreah/0eSYUFgE3eh3FPKi4zKCRA24yi3kx3p5hVhQEbWA5F8
 6Z3LsKEn5qT4hMQiqNvQJePJ/8laOubtKS5VKw+5HSDYwZvc5WH0PHv4SAn7I+uVVAmK
 LGEZ2vkvvkMAUc1WBzsu/S/A0+INXejeI7U6vLld9ZyfM4sPPzR2InELK8DeIEDBs1qH
 Ndbg==
X-Gm-Message-State: APjAAAUWOUSrfWCLV7Fu72JDWJK3bbDw5jnstFYLbK48ShpBb1uhMzIM
 fyK+Z/kc1S2broDB7x23Um+sdxI82RGinGIAkyuIYA==
X-Google-Smtp-Source: APXvYqyOosV8sv/TZHhVjwj5Q16nJaAbVg2+Q5BdPmAvWKsycRacpctNaCXuf4VkQIw648gtA3ql91UGmSXtMQwMmXU=
X-Received: by 2002:ac2:5382:: with SMTP id g2mr68773554lfh.92.1565000196094; 
 Mon, 05 Aug 2019 03:16:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190725142419.29892-1-yuehaibing@huawei.com>
In-Reply-To: <20190725142419.29892-1-yuehaibing@huawei.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 12:16:24 +0200
Message-ID: <CACRpkdZ+fBDKB3i8D=YKK-iVUeBN23b=2YdhnOY-dwR1tyQnYQ@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: oxnas: remove set but not used variable 'arg'
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_031637_727427_0D8CE8B8 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-oxnas@groups.io,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 4:24 PM YueHaibing <yuehaibing@huawei.com> wrote:

> Fixes gcc '-Wunused-but-set-variable' warning:
>
> drivers/pinctrl/pinctrl-oxnas.c: In function oxnas_ox810se_pinconf_set:
> drivers/pinctrl/pinctrl-oxnas.c:905:6: warning: variable arg set but not used [-Wunused-but-set-variable]
> drivers/pinctrl/pinctrl-oxnas.c: In function oxnas_ox820_pinconf_set:
> drivers/pinctrl/pinctrl-oxnas.c:944:6: warning: variable arg set but not used [-Wunused-but-set-variable]
>
> It is never used since commit 4b0c0c25fa79 ("pinctrl:
> oxnas: Add support for OX820"), so can be removed.
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
