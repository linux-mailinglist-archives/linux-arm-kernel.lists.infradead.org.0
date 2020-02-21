Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAFB16806C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 15:37:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mKjGzrG4R9DpCrMq0EkFeBg0dRMd3aeaI7mcVjP/Td0=; b=WoMXxY+vWj/Wrv
	WEMGMNiG5QEiTZp0/Lz6yLYA6BAk8x7hln9oicmb5AQW2CWg/xCQrc7KOQllpviz3B3JhphPw4VD2
	yOKW3ZuQbE6mqs2hA9eznl8MAIse/kYmc/dGrogXeIkaH9ExQPC3AeFUZ18cW5VIgPyZEHz+1SWQz
	h7rVo7dLZoOT/AD+ZZl0g9WpIBDDMEU6wxR3u3EEJTCHuh9i8fMFhkFum8jcvqlUxOO1BTKZU4T72
	6MROfMReGKHeGibRiND3iWGi++nIqmItP0E8eT4Llqv3Nl/UmZCjpASoF+MMW6Pw9fOdKOmqjU7ou
	BizA3HKxlYMiu2F3v/Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j59Qq-0003cU-80; Fri, 21 Feb 2020 14:37:32 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j59Qe-0003bd-RP
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 14:37:22 +0000
Received: by mail-lf1-x143.google.com with SMTP id 83so1643853lfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 06:37:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I7mTmKB1Y25U0g4q3RoTli21LYId0oXzN7cSDlfaxGU=;
 b=J4LtiqICrcN1d1FVgUAW+f6vnzA520FQfsoVgKLyplCBIVY6LTQd0ghkLG9rNIifNR
 Y4Yl8HIYrnw5JV5SphEUVgGMWU15R3N6kivbt95EfiN+JdzaGVX6zzpNX3qX9CZXcf4E
 LYEjgEWi509SQIo8PlmMGsKVCtbweF5z92tDm08Ve+SXthMI17jFi55+CysFV+3yZjI2
 7Gs1cGYR4yz7uKBhsfeGTLtR1Qb4qG6i5iUJ/RotNNXzByhhQe9y80JDZfMOOPN5GDyh
 /eVeBYbLLYtgVj8NCBseh4C6efBuUTSQ72KFG2IHQYjM0KMawg6SxUSf3koWkFnGVCuU
 r6GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I7mTmKB1Y25U0g4q3RoTli21LYId0oXzN7cSDlfaxGU=;
 b=JU9/OzPRmVKJqLpUmp1nSRdIudzg6N+xvW2Rhb9NnjEXqk5P4LmUqV6oH3FJDPcfPz
 rxdWwqk0FF+I4umqfhLiJWd0VvFDj1uIBzGzo7IPpXkETosGN474Ek7dDoFhbDScGD0/
 kF6pg81HVXYZ86opMEKcN63BuXZMBurNLObTvQ6qVEy2iPqvcZ2FxPt8XNqGza5JYj3f
 gkQK/wmkTrduFYSDO1pDT/V9AqKmG8xsXPCFo8dyDVz+up8luv1O6btR8Q6Btz58TT4a
 6OC/FzRGpQgwbUII3aYTIuftUrbe034nNrxXq6Ddq61JVi2aDIErAOR7mllNqU2vgGd8
 /AnA==
X-Gm-Message-State: APjAAAWZfRZobjAxKaFWCqZzRMag7oMD7/6GPzRoloarqgEhblcGU8ZK
 73qubMDiGaNZNnU9BR+NtssPWeQksFGDaDt9akEpIA==
X-Google-Smtp-Source: APXvYqyAWnLDYIxOg7JWzArkYp1QAJB8O//RA7y+f9fkdXf46018OkIiEEmlg593NgXDxY3ewyKPZHYklLUJa00pt3k=
X-Received: by 2002:a19:5e1d:: with SMTP id s29mr20173445lfb.21.1582295838433; 
 Fri, 21 Feb 2020 06:37:18 -0800 (PST)
MIME-Version: 1.0
References: <20200217185437.GA20901@embeddedor>
In-Reply-To: <20200217185437.GA20901@embeddedor>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 21 Feb 2020 15:37:07 +0100
Message-ID: <CACRpkdaJHQoZZCK0tJVb5Ntxsg+gr1FcHwtdxjQEHo=ZiKkxAQ@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: uniphier: Replace zero-length array with
 flexible-array member
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_063720_895933_1120BEEB 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 7:51 PM Gustavo A. R. Silva
<gustavo@embeddedor.com> wrote:

> The current codebase makes use of the zero-length array language
> extension to the C90 standard, but the preferred mechanism to declare
> variable-length types such as these ones is a flexible array member[1][2],
> introduced in C99:
>
> struct foo {
>         int stuff;
>         struct boo array[];
> };
>
> By making use of the mechanism above, we will get a compiler warning
> in case the flexible array does not occur last in the structure, which
> will help us prevent some kind of undefined behavior bugs from being
> inadvertently introduced[3] to the codebase from now on.
>
> Also, notice that, dynamic memory allocations won't be affected by
> this change:
>
> "Flexible array members have incomplete type, and so the sizeof operator
> may not be applied. As a quirk of the original implementation of
> zero-length arrays, sizeof evaluates to zero."[1]
>
> This issue was found with the help of Coccinelle.
>
> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
> [2] https://github.com/KSPP/linux/issues/21
> [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>

Patch applied with Masahiro's ACK.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
