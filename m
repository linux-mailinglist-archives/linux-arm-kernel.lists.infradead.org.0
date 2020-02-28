Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8893173DEA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 18:05:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TuaSTiEX55pr/MuxqKK3m6ttmKPj4vQfmCerUq6aOt0=; b=BBt7S7j8YJmdRy
	tEy4bKTXupMcMcp/aguHaHouyKvsQYk2J6R+BRyVLTwHMaF3r5nvsFSGnYPMJBscLbB/qosmLY8Vf
	EU9WuRDZh1LjNiOyl/Olhe2dSQACcOtdVfNwDFZ2h/dHDrkwkBde6LfrN9yGeO7bdMzl+muSLj2H1
	JwzUkZ6cDLqJfzkHSm1B7W2PErBjCCHPOrwxrBnHJuAVc/+6BaIkLTEpuYACX6QflWmFSdBc6K/kL
	+nF43dtvp/dnXpWJqx63qlF3UfuWU0DNWDfme6DXKVbFpBA75EfyMirkodvmfJZhcjozmnZ1ZMvSv
	6gH96byEuWPMXN5gArjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7j5D-0000b3-7v; Fri, 28 Feb 2020 17:05:51 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7j51-0000ah-80
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 17:05:40 +0000
Received: by mail-lj1-x241.google.com with SMTP id 143so4103862ljj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 09:05:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UBP7QsMdsRzii497sQdvXMivqxHUi8KnMTi6DqPb4vI=;
 b=ac7tlk8Cze2jl3gZVHvkWEQ+IDeanfETwQry/6b+4HJyNtzQI4p6CcR3GQlgXi4t6x
 Rg9mhL4QPsYU2oVXZNwbLx51ZQjNza8AK3S/wS3bOTdoOjoXhdA+ou5H5ld+BAaa/g5h
 pK39NtvbrvXOQ9faTLoFO6V73vTxG7t4cRK1LuBmRNeOvROWzeg3piJtXOyRLqpsIjP5
 CSXHYLC82a3qe81vsAFGjbPYLLtXr18QliXwVCVW8dqOtXn7sRfek8UXC3zt/1vHN8dw
 XslVappftofRLHztKIhpGGLIUU6spBf00Hcv/oyZMBykifmTfd3rkCd9izBGI5TpwJFX
 0qlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UBP7QsMdsRzii497sQdvXMivqxHUi8KnMTi6DqPb4vI=;
 b=en05xZdPuyJGeY64BHjPJY6cnGavPU/woqQC635Q2WRtKyLnZkLzb21ai16LUji1S1
 8Od4FnSAaQvYC55Ub/keCEXFSacwfcdS/kq4ADMILuvAtRNMsz8TRd/VyFr4J5anpeUZ
 9vhBa85f1qItLJX0/aUej4N4fS1UfZas6w+EjFT46bfqdmV0jXQ7DU9kpddPmyjmDGld
 W2iIOiwF17R/BfYfCqyyP45iXoS46XBY7QwqViz2RQqEaoLCHJ+Q8jWwPo1y+x4dOAsQ
 FgWW7uWde74Y1LHOOLqIoTE6qxB/zTEjjwWkr5ZVpqkl1C1zofM4npyLfPHCytMjPRYD
 SoMA==
X-Gm-Message-State: ANhLgQ0vlQCJoskk/MCRmK7OV1PIt2wkxXItxHWsLqdrCl39s5lSjIZw
 SYNon9wA/33c8Q6vOWSpD9dx711qr5zI2fB+qxPnWg==
X-Google-Smtp-Source: ADFU+vtSr6VQwF7m2+8Lo3WnbSGTzU2AUlIfQZYijuxBt0BqYCrk6rzyB34udEirfvaR+UlGIovaqzwfjvJEyyD0Mtg=
X-Received: by 2002:a2e:8754:: with SMTP id q20mr3417402ljj.258.1582909537024; 
 Fri, 28 Feb 2020 09:05:37 -0800 (PST)
MIME-Version: 1.0
References: <20200228063338.4099-1-lukas.bulwahn@gmail.com>
In-Reply-To: <20200228063338.4099-1-lukas.bulwahn@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Feb 2020 18:05:25 +0100
Message-ID: <CACRpkdabUZYhr7S8fcOX-dOgUEfDTnhUZjqsadyghpuTDCoqpw@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: adjust to renaming physmap_of_versatile.c
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_090539_290387_9862BB68 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel-janitors@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@bootlin.com>, Joe Perches <joe@perches.com>,
 Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>,
 Sebastian Duda <sebastian.duda@fau.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 7:33 AM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:

> Commit 6ca15cfa0788 ("mtd: maps: Rename physmap_of_{versatile, gemini}
> into physmap-{versatile, gemini}") renamed physmap_of_versatile.c to
> physmap-versatile.c, but did not adjust the MAINTAINERS entry.
>
> Since then, ./scripts/get_maintainer.pl --self-test complains:
>
>   warning: no file matches F: drivers/mtd/maps/physmap_of_versatile.c
>
> Rectify the ARM INTEGRATOR, VERSATILE AND REALVIEW SUPPORT entry and now
> also cover drivers/mtd/maps/physmap-versatile.h while at it.
>
> Co-developed-by: Sebastian Duda <sebastian.duda@fau.de>
> Signed-off-by: Sebastian Duda <sebastian.duda@fau.de>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
