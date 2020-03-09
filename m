Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6B317DC63
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 10:27:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKweojz64eanDdFdF3IvKjKVgFtLYU9QwxP2DDW2Kz8=; b=Q1kNHwILNWBnO1
	AXXT/Q/Aa3HkTONqhHsY0y6YZruT8+clHcibKPr9rAbtAHwwNblphJvyJExM04vv/kQXaCOi+wECV
	0jdusAwCMg2D1n5jBWciUH5IKuEQZ4obEN/GMKjiOO1+8ct8eflk7/fCxJfefsQxZavBkGgcMzq1S
	gOpWXt3wt2PQeIxG//2Dp0/pN2HA5O/PQLbYjPcf5gyxXhFSRL6ZY0Ycvk754IX2IkyLtFN1dcJxl
	UFw8x5qPBiQWRNCyR+9t+8TtYDa18xx2jGeZHlmi/8yW5V+u2QRU76OvExQH2HooRTqLpTzul6wyr
	IXuEMVJLiCqN2X8+zCGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBEgt-0008Fq-QO; Mon, 09 Mar 2020 09:27:15 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBEgj-0008F8-Td
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 09:27:07 +0000
Received: by mail-lf1-x143.google.com with SMTP id x22so7052892lff.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 02:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A7hpoWHApTHmqExHIYzq5O430jcgRqsiEYj9yFZNI6Y=;
 b=S1Hf96q/jJI6OJXfsNbutrIjMbckiMiq1f7Sq26bp4QiWaocZHyYfKFs854No9aXk+
 RqNOMNQHz2Iwh2Ci1ViY609WbKxjDFojaPMMKOfx2mLxK/m63ieeuNOQ4LLBN76smUnu
 G9KDZktjtqLjbje9fDnypDwyVdr1Pys6eURXyoXdl8yKAbxYu8PmPyLSCjxHgnfR5P+w
 PUcv9paYoG2jaPQ2/gGeSTXpYG/2SzsDTieQQyZ7VWRJ4jqXLHW2papjn3CUUkTwPb1U
 EIRfLvzY2nSqvEpYxTfadHxYsm+hpo3w/G+5DYta47quYp4G6WNG5kdJcoL0chjURFnj
 /9UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A7hpoWHApTHmqExHIYzq5O430jcgRqsiEYj9yFZNI6Y=;
 b=ImbE0i3N+BSLQ7JOJabqoTH9Kox+nrOfiqoSfetObsVIoJBLXG/sVR6DYH1l0Ql/W/
 y5n8851Z9i7v+52xb4rhaarz8KWo9l+EYvMta/J8JWVHnRp5KRsA35uj7J4hB5NsdO7K
 AtxrHDF584yfCQSqjluZqMRMzDUdsGX95i4BYr+i5cYDN0cnbO0IBwEmJ4QdCExpMi+3
 TWBd1aOYi1FZXW3OOCz/pJQU4DaQcveMQ+Coi9XsUZO30d74dsDn6f0jrvY27SAYI6tO
 oqD9I8Fw8ws2Zwjaj3AT/QKWfbUHoRAAl86kaxs/Doqjw7I61CnzQsTNmp0X5R/62SHn
 yRSQ==
X-Gm-Message-State: ANhLgQ292qB7nzyhJGqiDYd1DyKi5UcZl0B4qSsfEMfDuKdcizmmZUWr
 V2rIfz5TL5GniRn+mkoIh8NnYhZxJZrrd2nPG6KeVg==
X-Google-Smtp-Source: ADFU+vu2ArJMW5D9CnzwG4xq4wa06pcfnLZNUFzSCPQ35LVPrel7wpiZ22Ayswzj/Ovduv9p6f5tdPhOI0bceskI8RQ=
X-Received: by 2002:ac2:5f50:: with SMTP id 16mr8883801lfz.194.1583746018865; 
 Mon, 09 Mar 2020 02:26:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200304225433.37336-1-tony@atomide.com>
In-Reply-To: <20200304225433.37336-1-tony@atomide.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 9 Mar 2020 10:26:47 +0100
Message-ID: <CACRpkdYL5mZ7i6bEF0b_CUXaG-jHKz4KnSXsBNfs_9M054U3vQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] Block idle in gpio-omap with cpu_pm
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_022705_988758_5EE271AA 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tero Kristo <t-kristo@ti.com>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Ladislav Michl <ladis@linux-mips.org>, Linux-OMAP <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 4, 2020 at 11:54 PM Tony Lindgren <tony@atomide.com> wrote:

> As discussed earlier, here's a series to use cpu_pm to block deeper SoC
> idle states if a gpio interrupt is pending.

As you requested I queued these on an immutable branch
based on v5.6-rc1:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git/log/?h=ib-omap-block-idle

And merged into gpio-devel for v5.7.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
