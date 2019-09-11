Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B48AF9DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 12:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xpRc+hM/eh7L2goz+5Gdz4MHCzRfvv5wY7wsq+qssc=; b=n5oHXnW1HxO6tj
	rY/qPoNEX81vyypw6vwQxzOkFChjXWJsdkiaVQorSPR4eMef+JRF3VeAsJNfRvRIojVwBNLoUqLnT
	GXIjJ/cymnKZiSJ++oPXs/WqG/zA3pGdKAKcFtgpsYFt0FYMACwysuKRpHV7mq6ofoQBP11bCg2Lq
	3RLKXBG8TCDRFdP1evlWtkbraB3wyR4f7Jmmxu/rNMHOC4w7QNpEtY3HpfcTIYeM6KjdOu3dkxNle
	ZO4Jl9qQuWI4jSICH6SgpFlcsfb+gpv3acsaOEdhk7mOg1bn7oE7k/JHY3D2BnENYMfJU4zmYKu/8
	DoUMRdA9YhNAouI8AAQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zUz-0003pe-Ut; Wed, 11 Sep 2019 10:05:17 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7zUi-0003Xo-Kf
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 10:05:01 +0000
Received: by mail-lf1-x142.google.com with SMTP id r134so15936976lff.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 03:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aEBAvzyvKwKy4+z0icRgfRVKXYXcNb1iM7EN7yrDUow=;
 b=b5WLEtD03nLPtyVSE+wLZn9h7qijVtAN+cYaeN6IYy+aFGDtEbDuL/gYsMMM/a/5ed
 Bm/8bSgVFY582J67Cdazp0Jc7/0Ip0JtCwnp1Jwa0sBRHurYKd3AFT/MOoX9EgKmv7Wt
 THm606K5uucv2RO6R7HvnwPXo9zNI5/SCpU50YcpK5nYOIZ/jeKlZyT4JwA91pyBCRGY
 76K3WnTq/FQ1cFtQhenLCpIb3UROTl/67IWPqHB+hXeomfMlanRc/zaQHe3r5hBODnQq
 lVYiLeCNz+Ewk8X+yoLY0VvEITQNeFzHI7YN8tMAZaUuIjZtJqEzFplZ9DoSsXHDz63B
 er6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aEBAvzyvKwKy4+z0icRgfRVKXYXcNb1iM7EN7yrDUow=;
 b=P5NH/sy/39F030jAYyEkseyt+UwTup7xvR2nrCy3VghJTcf7h3dcetXuqjpo/5tVYb
 lCJ2M9JB+Fq5nY6/7TtzoHuvDRYJhuTEWmexcFR1Yzlfzac1C3mKSByTrHlQ1joKrASD
 C44SwcwR/Zun+pARueHCbLTfDWzXHXubsykzyBD5R8QsvT4qQGkxNBnzueYkrg9+cBn1
 7FZ3DzOflVMP4uO/PGazJebKK8DgmbB18WRjlMhnolat3/Iaz+wLpzdD/sflGwGpKPmq
 feQJ/AKByQf45GF0LCKlsIUTaX7J+RwvzgOLSROpaxsQWcaE4SS6QtfzTXcOAjtRU2J+
 g1SA==
X-Gm-Message-State: APjAAAWYhMUeCfNBmkA3KLxJed3U06BybJKKSE6DnyiwSrkQGQx7EHcf
 OzkoFTwmn3S8WQrLTBxYD873WTjVK6HEgrxhBB1e1w==
X-Google-Smtp-Source: APXvYqyC+pv5N0Vcj+RE52xkcBxAzDFKvxknvjpMo7X5lxTEnajzZlDFTx5W6vtzY7meOzprM4Zolus/zI1aT2yhpaQ=
X-Received: by 2002:a19:117:: with SMTP id 23mr23845320lfb.115.1568196299188; 
 Wed, 11 Sep 2019 03:04:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190906062623.13354-1-rashmica.g@gmail.com>
In-Reply-To: <20190906062623.13354-1-rashmica.g@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Sep 2019 11:04:47 +0100
Message-ID: <CACRpkdZvBHk65Vs93YbrTR92-8o0SgtUUWMBXeABQH0PZwpRxQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] gpio/aspeed: Fix incorrect number of banks
To: Rashmica Gupta <rashmica.g@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_030500_676058_3CDCBD2A 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-aspeed@lists.ozlabs.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, open list <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 7:26 AM Rashmica Gupta <rashmica.g@gmail.com> wrote:

> The current calculation for the number of GPIO banks is only correct if
> the number of GPIOs is a multiple of 32 (if there were 31 GPIOs we would
> currently say there are 0 banks, which is incorrect).
>
> Fixes: 361b79119a4b7 ('gpio: Add Aspeed driver')
>
> Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
