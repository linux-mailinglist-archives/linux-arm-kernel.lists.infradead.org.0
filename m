Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 086D3DC12A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 11:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O50phqk2mor4+eYbD2Wd01iobIQIAh79gOW0B4OeEdI=; b=N5Rezxfce53ryX
	CZIUeiqXYnswOO4DttBSm/+Q+ubuTJD8osCsd3F4F+YoELJd0J9L81Pb9hLglFthLBVhBY02wlyFc
	HD2Twh6CD7Utk7NRg6lMR/FuMp6yF2eJkSIVVnK7gB5UrJskvY0Y+KdJ4O3uhtmZ1IZ01x9P7+Ydd
	v3HwqBIF5s1z/I6OBkvmONhgLlTMn+kcjwFUtMQniaA0jLsVU1qgKH8aznDYgbkIUa6M543GiJroe
	ROKoKm77kZJAcJyyz0dmKF1ZCd1u/ORx4DcW/b3snLUBr8R7hHIUV6mfrGQu0ZsSlUrvqAoLXCUVJ
	e3QZDxtfx8ALe/bcDIbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLOfE-0001n7-Ai; Fri, 18 Oct 2019 09:35:16 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLOf1-0001Lf-Sn
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 09:35:05 +0000
Received: by mail-pl1-x642.google.com with SMTP id j11so2586456plk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 02:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zr8X80FCYGX3NS6q9lz/ERKNDbQdTzcOLi07a/VkvfQ=;
 b=RAcZMOWD82a0s6I1gcxzhmBdLU4sVZdK3yGz6Jjs25y3EznSN5eVKpll2358Hrj84u
 APlxx26N4fwfgRJiFJ3sc5LoxBXcNQRTt/vElvG+W7kkosg66YwJWoZkFCz0xTfMvR6f
 Cbjd+SgRLI8/CUJ1oQ20/w7/U3I+PL006t8sQWvLz38Yc2tf9QieGrjd592HdCGX69Cg
 74loV0t60w65irSxdkjPdEWFSMhshoRMFOVGmFBnebKIMvqsp5MvdTjjjRGoCG0iFtiU
 h1wO5yRg6ve6/4y64whxVgtn/1JdbbSxx2ZSNWTw0Q0U4by3x1tJ6j6655oXad9I+dDE
 rJ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zr8X80FCYGX3NS6q9lz/ERKNDbQdTzcOLi07a/VkvfQ=;
 b=BcJq+i769byJu8v7xlDvoub01vrzy8kW9q1arX1KHBJcyjA/tn8EtjJ7N5JJQzTk67
 xlu0kCZyujQNflSQi22WfSYHAIJgr5bJbYHTybpnjekrEFfB/UPqlYrV3tldv/y9uvdn
 CuRgmTr/hBbQH5PPrQIIN0Ozhvo+TJNojHqltK7x3eZl2Ekt2EEjfMfGFuJTwpSVT19h
 XXcGTbiPlrNxki3Zd2SpfS5450bDIkmhNgOStrLkFIBr4mvkIg/Rre62IAfYaNCkl9td
 62e4md99A4/KHI/o4oprOu6nikZchuqaZ+fiqaJL2/H8Gi1k1CDpBIfHN2i/eV8Oo0HS
 Mxzw==
X-Gm-Message-State: APjAAAWgODXEd250flkKtfHZEsfMePRs6c5mLIKLLVFTN/U57xtetEab
 3slT/XgY2b9r3tr2NL3g2y3JmSnsXJaFn5jEHGOX233Zq94=
X-Google-Smtp-Source: APXvYqw4nAZfs4DJx1QtvaqZHEiRDgYXllfSaC8wgJ0IuaKqJS3EAvQxq6VuFyH8PluuguPVcRUER8YMtjWt98dTnbE=
X-Received: by 2002:a17:902:b110:: with SMTP id
 q16mr8804423plr.262.1571391302793; 
 Fri, 18 Oct 2019 02:35:02 -0700 (PDT)
MIME-Version: 1.0
References: <20191017025058.31528-1-hslester96@gmail.com>
In-Reply-To: <20191017025058.31528-1-hslester96@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 18 Oct 2019 12:34:52 +0300
Message-ID: <CAHp75Vd2SMERjtvNumxAF1HSp8GSThmcyx96zkFzUXKwnD5d2Q@mail.gmail.com>
Subject: Re: [PATCH] spi: pxa2xx: Add missed security checks
To: Chuhong Yuan <hslester96@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_023503_958817_7520B65C 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-spi <linux-spi@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 8:59 AM Chuhong Yuan <hslester96@gmail.com> wrote:
>
> pxa2xx_spi_init_pdata misses checks for devm_clk_get and
> platform_get_irq.
> Add checks for them to fix the bugs.
>
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
>  drivers/spi/spi-pxa2xx.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
> index bb6a14d1ab0f..2e73d75a6ac5 100644
> --- a/drivers/spi/spi-pxa2xx.c
> +++ b/drivers/spi/spi-pxa2xx.c
> @@ -1565,7 +1565,13 @@ pxa2xx_spi_init_pdata(struct platform_device *pdev)
>  #endif
>
>         ssp->clk = devm_clk_get(&pdev->dev, NULL);
> +       if (IS_ERR(ssp->clk))
> +               return NULL;
> +
>         ssp->irq = platform_get_irq(pdev, 0);
> +       if (ssp->irq < 0)
> +               return NULL;

I'm not sure they are mandatory for all platforms.
To be on the safe side, you simple need to add _optional() to the both
call along with above change.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
