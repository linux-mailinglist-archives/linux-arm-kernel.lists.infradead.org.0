Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 121A4833EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 16:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ftXJ6EaSpxSZQArplyp0cOZY+3SKQLk1xmv/Zqf2uM=; b=RYEhJ49GIxWQbo
	a7/cwJqJiRNPpUUR1814tpF7b3l6aWMr1NoiTyINnC4LebdROVLv3rDIqXslspQZVD6TwR33X61ZB
	538T0X/wlVzn9zuknSyvXlychrVgJpZu0xVySUcacS+qnW5A1RLQHLZxbsaLR+lQ3/T7dX0/KU2NN
	RHLs/3w9lvi8vrsBYz9iC1Dh3Uh7y8zrM0D2LmKtzL6Z18ffHCGgekKh7xB8WI2giSo+iLLbWqV3W
	y8MQNSZImuAKdlUomZnp2RpdfzQ0kSuygBT3gWAJQ4zpTepoCkZ68hA9F2YLpD3+JLdt+yN6lXkX0
	f/IHVjCfCo+w+JB+yf6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0Pf-0003OD-8I; Tue, 06 Aug 2019 14:26:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0PV-0003Nk-Li
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 14:25:58 +0000
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4541E2064A
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  6 Aug 2019 14:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565101556;
 bh=hxvRGDEpNBm3mZPFFZ9scjz7nw9+tfcB69glm76Zj6k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LAR1NOD9DK3tAJ2JkBf7vEicPIWD0xoAsrAY+BabPQk//OwFZlnFZkvh+TTlIzRPg
 sVdl6HCU5R05RZzEZkshV9i0qJEpuvmd08ej8da/jvRo9VAnwsc7rae8PedWVNvVQ8
 PA3itgfOxe8MmtT80ZJR5MRIVKAk5q7wWB93BvqU=
Received: by mail-lj1-f180.google.com with SMTP id t28so82412911lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 07:25:56 -0700 (PDT)
X-Gm-Message-State: APjAAAUw0RTHfsncxv9Y7Ui71D6ruDtzriLQ0Pw05MYAGRLOB6kPnotC
 4ub5rq9LF0ejp+R+X2uARs9iQSrVDJlvdbF69jc=
X-Google-Smtp-Source: APXvYqyR8xEsJE+MjEuvjOfu2HXgOcDbLzDQyXavm7a5+iFv4M54shHtw9bwzRKTalHYnjKzVT1tmRDtUKw9aVqqweQ=
X-Received: by 2002:a2e:3008:: with SMTP id w8mr1964469ljw.13.1565101554494;
 Tue, 06 Aug 2019 07:25:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190805162710.7789-1-krzk@kernel.org>
 <CACRpkda8P522pkxctZbf2Ut13V6Rzx=mSYsRuHv0BvPyF6q1gA@mail.gmail.com>
In-Reply-To: <CACRpkda8P522pkxctZbf2Ut13V6Rzx=mSYsRuHv0BvPyF6q1gA@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 6 Aug 2019 16:25:43 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfuu1bgLL9oOf=7hrz-QvXBcJjJVMwqN2oRUv7hnB5Jyg@mail.gmail.com>
Message-ID: <CAJKOXPfuu1bgLL9oOf=7hrz-QvXBcJjJVMwqN2oRUv7hnB5Jyg@mail.gmail.com>
Subject: Re: [PATCH 1/4] pinctrl: samsung: Fix device node refcount leaks in
 Exynos wakeup controller init
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_072557_736776_6A0C8405 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Tomasz Figa <tomasz.figa@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 notify@kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 6 Aug 2019 at 16:15, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Mon, Aug 5, 2019 at 6:27 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> > In exynos_eint_wkup_init() the for_each_child_of_node() loop is used
> > with a break to find a matching child node.  Although each iteration of
> > for_each_child_of_node puts the previous node, but early exit from loop
> > misses it.  This leads to leak of device node.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> I assume you're collecting these for a pull request to me
> at some later point, all look good to me.

Yes, I'll take these and one more patch from lists and send them to you.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
