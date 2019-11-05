Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B58C9EF889
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 10:22:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OuuGLxZWU2ZnaOUT0PBbWFFh1z4nusk/tVcUHrYkHMw=; b=X6oNAjxy81xCaY
	bT08w4Imp8ewQBZlnpjuU+kjs9mZr6Mt2piew/7JKSgARqSe/hu0QNAIe+zkBJZXieJUMEDMNfUI/
	tlP+x0LHj52oYBkA0MheCFmK3aKDdLVBuzoln+o7Vzzb3h68MsatM51W8hsfjhAZFiZVsjDxHPasP
	DnNMcdaTR/KHaHhvUBf45AUU2D14V1WGpu37N3B6NKJOswCiyfZ3ypoZnKZX+1LwnyVNIpo+qnSZc
	PMc5FVi+R24WyFRfS+5Mdfq4l6oCQZYhKZUcDHnDcIa1gEVA3yoOxNydF2m8wheij5Tt6MdqsXO1S
	XcB/r4EoksvnjhuBKqgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRv26-0007ef-Qe; Tue, 05 Nov 2019 09:21:50 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRv1z-0007df-5B
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 09:21:44 +0000
Received: by mail-lj1-x243.google.com with SMTP id n5so9928468ljc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 01:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U/CqzVlG8zZAxxKu0vX1NdhVqqh2p9Uh91d/oE5bEMc=;
 b=cB/L6dgy3oPjI3dV+qGMCvc4MOdB5pQERdwKy0ik6L9roaBW6UIyW2VEtSjvxT9yC5
 sn48tazf1Tx/XEX0UzchEkwheBAraWYqFdbbBVS/CQQWWsmqt0Zi0mECdk9PRbeLD3gw
 3PIs8WRvvJqRv4HAbYDqEkLcsHOfv7rJfVS5txO6KwIqN+rbja0ui/iLe3v3a0BH1IQY
 qnBmhU7rltn+IcsBboFu3T3puSPhwhyu/knnR7iAEvpqoGXcc4EPkZe54WJ+GTNGvypy
 NxYDE4Ox6omwzjNIQbrC7ZIGduIYLK2eG6n4vsDSUabJpjE9MLcFvS+U5K88rcs0DD2i
 yDSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U/CqzVlG8zZAxxKu0vX1NdhVqqh2p9Uh91d/oE5bEMc=;
 b=BU/fK6F7eWwh2F/9Rzob7xX431NuBCY2ETBBn5BxpF1KoaDzqQNbUvGjeo4K1VWrTh
 P9ELTxrHCxDCAySYDQdX9h8enwKRb19JUCrblvydp3WGj4qqubk4KIUgTf+WuR2Z8ohF
 pd36w+b+0LrvCdQJWhljMYi0SRmHHAnqFWD4oxq+FU2EWs/SMGvxd7pzP0y69kdptWdE
 eknhpNepeMFMOsfNjOTZ41EvMTOZanKToMxi54fdn+fJEbpMighS+BLEud6p/Hoe+35V
 2GtDE3uHPx3HzM1Eh9a+JBdPV2ywVyCw9rUa8iI8umvWWvbZrfB4uJWr2fBZ6vM++6XO
 2BqQ==
X-Gm-Message-State: APjAAAWM6HzYEJ2JZN9CrMQwDGI8I/PPHvK/aAucNg73X+Zyn6tdIi4D
 Pou5CZaCCytm6A4Po6/F2wSAFyIBt4yKkISyQXgwGA==
X-Google-Smtp-Source: APXvYqwmMv3t6J3okAPckGlL9lzAur03q2Mfx8rqE3VQcM3317qB2lKyitRE461c8i9EOJ6uFvuH5xh8sDJfPyofi9c=
X-Received: by 2002:a2e:5c46:: with SMTP id q67mr21359472ljb.42.1572945700516; 
 Tue, 05 Nov 2019 01:21:40 -0800 (PST)
MIME-Version: 1.0
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-22-arnd@arndb.de>
In-Reply-To: <20191018154201.1276638-22-arnd@arndb.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 5 Nov 2019 10:21:29 +0100
Message-ID: <CACRpkdZT_3fV+u6aLk_w453XdgLF7KbQMzPB5ZJ4xd8V-LvoqA@mail.gmail.com>
Subject: Re: [PATCH 22/46] ARM: pxa: eseries: use gpio lookup for audio
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_012143_202504_45D32632 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Mark Brown <broonie@kernel.org>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 5:42 PM Arnd Bergmann <arnd@arndb.de> wrote:

> The three eseries machines have very similar drivers for audio, all
> using the mach/eseries-gpio.h header for finding the gpio numbers.
>
> Change these to use gpio descriptors to avoid the header file
> dependency.
>
> I convert the _OFF gpio numbers into GPIO_ACTIVE_LOW ones for
> consistency here.
>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: alsa-devel@alsa-project.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

This is consistent with the way I imagine it should be done so:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
