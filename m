Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 503354BC90
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0Py+2XxPWFuqIOLgr7q0bh4sBTKfMkZElYVY5G9tbQ=; b=p0c0QYdkA5pOQQ
	hj1eFSjigH8/53Xo1Kc0iVhsnh+IV15wPyyXwOfdijMRq/tjcA6xUvVfnNjmkyaBFpyShvr9M00kX
	luXzV5XFcoqY7f4LyEQ9nIsk8aLwJuj9AnCnu5coqztCFuWONjCbNWVi3ZOR+B692HWLRfg9ePMCT
	FIZZLmrsXUAJtWcvdmfNC+3IbO96qI7W54GdOtGI1oZay5wCs90AY0PHfRvRh7zG9QFzcqvsU/2Q6
	8dgEyyhknzUqYbsr709IhSYa+xk9peFMkhIE+Iwpz8CDzy51lHnZnZ1cXd10RJH/NInxjdtW1TlKL
	S1P7TVNXESpBo4dK4sDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcE5-0005H7-5F; Wed, 19 Jun 2019 15:10:17 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdcAI-0002Rp-Cu
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:06:23 +0000
Received: by mail-lj1-x243.google.com with SMTP id s21so3607055lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 08:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EAeZNzS17dr/rA3/oJqJQXKpa7Okza0OEV3xtnGLDco=;
 b=fa6pbwNO3SzUGlunJi31BkfVW2J2sA0Lfn17Rm4e3jXqQxIbeQXGCaquOcC5PAHxwG
 Ng/Hz9akcPoifk0NzLK+EozHszQXdvei/qAMhEPZVz3V1KrhnD7IxTHnTCEfb+86Acmr
 N457ZPDNkFE5dCllXv+CB6O7yXSraHiQqwbigXgeOiVHgfKNxtTg53RUUdnNoa/vYa1S
 i60QBgcbguEG0uxSBYRGcs2f7t068C4gWdpYZTD+1a1LSUNLW4ckZoRJ4dp+CDyQUn+T
 J0mp4TcSf9QOk3DzbSIWxc7V5Hk2gwJgDrLmPGfnaV0Ok+EIg6cOkaPMZmrHhIYYHJ+V
 cy4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EAeZNzS17dr/rA3/oJqJQXKpa7Okza0OEV3xtnGLDco=;
 b=K5vs5COvq81fQ85ZZTHTced4WFpEZOaQ1vYsI5yZca7gmBL4povDbnHoht3xHmVYL5
 5pPe8+p5JKg78JbJc3zeJO6pJh0V/b8BNzCTpaFS4IFxFYZRSTfVKI8vMyN/pD/GYdtW
 LhFHEs/CgW9sNrvs6utncSkdVDB5rg1PS+zElQjJxxV5K+YaU8PY9Ju2AjTYOjlW1RPZ
 c1e4m1zlBtX4zZa/sBldRKRhaKqDxrSg0oLc6PzslMQW95qY8HahakVoaKcBye1tfadL
 FmXx5sAMFd20QKInL4nFLqm92AqPc0AZAxy2XgNKuIiCm7tBnJTjjRdndvOUyFlRB/FU
 Oshw==
X-Gm-Message-State: APjAAAWKODz4ZD+IgpEfSqVbJSq4lnHH4qfQ1V8akHqLSzy3Y06EAloI
 BK9YgN1cjwCkNclCBPIWTXFRcw==
X-Google-Smtp-Source: APXvYqyAhKoV1L7COKGKXLbmTc/ERanQpoojN3f8shofXbBsOIIn/E0KNlVGojYocHKagF6IhC7CMQ==
X-Received: by 2002:a2e:301a:: with SMTP id w26mr56525929ljw.76.1560956781077; 
 Wed, 19 Jun 2019 08:06:21 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id f1sm2647258ljf.53.2019.06.19.08.06.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 08:06:20 -0700 (PDT)
Date: Wed, 19 Jun 2019 07:26:40 -0700
From: Olof Johansson <olof@lixom.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [GIT PULL] Gemini fixes for v5.2
Message-ID: <20190619142640.6jwt5il5ecj7twnm@localhost>
References: <CACRpkdbTdVeDaCra3iiaRhf3vby3zMx+WaL+AQ5XhS6VSyGZ7Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdbTdVeDaCra3iiaRhf3vby3zMx+WaL+AQ5XhS6VSyGZ7Q@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_080622_490216_080953BE 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 01:31:12PM +0200, Linus Walleij wrote:
> Hi ARM SoC folks,
> 
> here are two DTS fixes for the Gemini for v5.2. Please
> pull them in to ARM SoC.
> 
> Yours,
> Linus Walleij
> 
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-nomadik.git
> tags/gemini-dts-v5.2
> 
> for you to fetch changes up to 36558020128b1a48b7bddd5792ee70e3f64b04b0:
> 
>   ARM: dts: gemini Fix up DNS-313 compatible string (2019-06-19 13:24:03 +0200)
> 
> ----------------------------------------------------------------
> This fixes up two issues with the Gemini DTS files:
> - Blank console after a while on the DIR-685 so as
>   not to waste power
> - Fix up the erroneous compatible string on the DNS-313

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
