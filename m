Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B0D32024
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 19:29:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ajoJ4dHBx1+1bRaPP70Rx1O/waHq/0Woj983Pp2Vdkw=; b=jLFb6CDHBNl6by
	XqlKpl3iobFmMSHoZgOYFvyEh3ciU3vZbQzIIG6Meenh+sQ+ypRh9ZJYfCSC5+SEOt3t4HYqd4DFc
	HGs+Rn4DqkyXkoFYOORinxyHrOpjQS9I25xbHJdLnkwmTpjc+z0mxYK4WUR0+rmgM3F+DBTnwk3a9
	Bm95Qcj/fE2somZdAT78DIPE56OeWZsPJOYPGqzOzObyY3tMoKA/LRtWiJwNXUFnRviHlu4bQ4MJ8
	e+e+gdxEdkAfLxwTrD+DzowOSLaDQEcnCoYcsC6/WExIGbUYYdX1dE/YSnS0vAVwFgasK8NeKIGOW
	V/JKvzTYZSZZcB0WMcFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX7p8-0000nB-Od; Sat, 01 Jun 2019 17:29:42 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX7p2-0000m8-4p
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 17:29:37 +0000
Received: by mail-lf1-x141.google.com with SMTP id q26so10450533lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 01 Jun 2019 10:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t+lhiKAmeE59NvMLuLYA9mDmwdIPM7xWvOTprCB4K5Q=;
 b=P2Lovz6jt85k2SacSk9IXWWXKQbCYK/Jbf6S3FB7iwQ1VdaIYPiypMsD+ZS+fOxTmZ
 K/undTkLFsTc1p6uC9p3qblgqXRrB7fUYwB8UlZhsQK176ExeW6nb+n5zucpjMV1UXgu
 59bAV8+5M8kBrteqtcgtbmAzO0EA5NapZL/LJ4n39WSqdIAX5IdoR8dqbEwL4P+h489X
 QIen7LBC2YxbHmt2JZLn5Goctriz8VCJ1bXFfgyrund3AP/J8W09cj8ZtrIum9pVeqpd
 oPwqrN/tjjqneyoWuCZgTfI2l1IVBOd/j891nb7VGEaGddwNR6RuyZgsgzYffIFg+kLk
 jNBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t+lhiKAmeE59NvMLuLYA9mDmwdIPM7xWvOTprCB4K5Q=;
 b=XUF5/FkNdzkcJCDyQZ8953ZeR5Zy7x7DNfy8MtV1ST69UH7IiWG3XnXVxFnz2IYBhR
 yZlhoIbVhyRBI5wF3x2WR0HjCuT25MybwbCWvLKO6Ox0QOdkwRh8twI+6Nr/ic2nS+vS
 0P7x2mOvBEYsw2GDWe4pFHW/dX7TRNZzrWQbwLUwSM7OioZoflYH9WxkR1rF6Uvho3MN
 fdH573siW9eWbTaweNk7eheJHIBEKeW0FzJvutvFZNSnChcaq07LePY1ZLaP7QelVLFT
 PtCAEKD9nNoJCsOKD6O3ZnjPJ/OlrrExX+VY8A68fstBiqlDPbtZRC7sEdmKcBskU5Uf
 q9pg==
X-Gm-Message-State: APjAAAURiXSfo1kqtY1F0RxlYYD9pz/+TtAS4RUdYlYWfhrAhuRrO5UT
 A3QOaM+aD0lbr873VJ0OFL27TW4MyzCuKCVoVHKtQg==
X-Google-Smtp-Source: APXvYqyYQEUgAqogtrjonQ6oVdW+wtCspm5WWcklotqCUeF+9hIXl1Bf9pxpMm51V3Qrx1MdrbwxXg+ndHh52nZ+0jE=
X-Received: by 2002:ac2:429a:: with SMTP id m26mr8158279lfh.152.1559410173090; 
 Sat, 01 Jun 2019 10:29:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190520144108.3787-1-narmstrong@baylibre.com>
 <20190520144108.3787-2-narmstrong@baylibre.com>
In-Reply-To: <20190520144108.3787-2-narmstrong@baylibre.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 1 Jun 2019 19:29:21 +0200
Message-ID: <CACRpkda8VpT8+aXTx2yzvRwO4xiCOntxB9hFBkq30SMDtPJUpw@mail.gmail.com>
Subject: Re: [PATCH 1/5] pinctrl: meson: update with SPDX Licence identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_102936_193238_5D0A980E 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 4:41 PM Neil Armstrong <narmstrong@baylibre.com> wrote:

> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Patch applied with Martin's review tag.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
