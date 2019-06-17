Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B92F48371
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A7onl80k3hpo/BsoWHL21ByXYSFA8rcgLGNUzqsXh4o=; b=VwRWVPJAVIdpjX
	5wpzR0RcvsbcWaJUw+PVHu+suCLpi1LNeKcvI1kpmBABffAyiXvPo6rcSym2BSePd6kKQoO7N29Zq
	ijrPvKUeQt7QRJ/B52UXS/Oo4AodvWUyRs/Eb0iC5/jKqQE8jPSP5+chDMgdtg4GRSvrKMRmoajQ6
	veBEvw+aIEeUnJj52k0HLl0+qQBsT0Ooq/MqTbbkJw+MZVF2GIKGVEsjuYx2Igstz6WneRhVEfFSC
	WlQdFKT+F+AjGCwGlgYR+IxGAebtTo3RoRSV1tY2ocgDtueYjRNn9G3lqG+xEtKxTCD0lJKHlRKu9
	eIdZ2KBS4NJGr5mJGhrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrKH-0004fE-9V; Mon, 17 Jun 2019 13:05:33 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrK4-0004eF-2s
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:05:21 +0000
Received: by mail-lj1-x229.google.com with SMTP id p17so9245998ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 06:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/yi7AybHocuKqAlDvtLanN2ywWDMu0SbETffE4A6ijE=;
 b=N3Mgv3ahGOB8kjLpUFknLNEdZmBZZJIAV9VEkIu3cOVOB3zf49q2BbUW9LnWCR+kef
 MO7avtgYhBRGLnAmDKiixypP68nQoWkQ+w3r0eqwPZ7pjtR1d57Rnovrf2M2rghCI0xs
 5Pe2TjHE8A2QxtWcMpJ1SY79OQtWYAamD+M5BYglJQfYiBGhLi1EEDbluBmw71jS30C+
 qwmRoKB3Ap2BWwhrIKC5gkWN43/U0RpUN4N+bsJ70AFhvver7buA4PmQfLCMzhkw+zV1
 +GUgwxgO2YNcBc1pXoji1qHY5eadX+XoAiglcMYH7QHJvnKX6FvruoXSomAht+C7TUEj
 SlPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/yi7AybHocuKqAlDvtLanN2ywWDMu0SbETffE4A6ijE=;
 b=WpnH2mYNvgJyOr9ngOQ3tObFB2rRBUG2t24SLLqT7Se8KRY58HDjG14WAbCNAS63Bo
 HRYqxf9ZcZlPgq8CsUz3H52ziWf/42bNOxjkq1tFX3CItEXkEGFvQXg5PcQsCZt3mmqC
 WESZ4bv/5DZZjLfZ7UQt2FbfQFbHU2aXVbdSa7RHUeL/YQz8fHTBMIsQQM0RL6YXEL53
 V3ryEjmi4g4kDnAZ9bP/hrPzqFO2PIQmWlc3ziRDz9QNvsTSGTxATGhU4DbeI0C4gCxt
 aMV9ahkCPy/GUsK6dwSFjyTLV51GKcpByfpfLrlgeTik6Jwb9KcRBvjIotnqrHHtsJqD
 9DeA==
X-Gm-Message-State: APjAAAWjchL9iKGtVZomHXCwxsn6YZPy79m7hVj5rIt4Jom5oMmLYQxc
 2ROu8ZWnyEHyOLI/eJPSjBpEXw==
X-Google-Smtp-Source: APXvYqz3GvPsYUc0a25rf6JzEB8MnBJglCi1KfVGsM+YEcm0rz/i17JClY/sYOrl2ZL2ZwtV8xH3xQ==
X-Received: by 2002:a2e:3a05:: with SMTP id h5mr48910510lja.114.1560776718395; 
 Mon, 17 Jun 2019 06:05:18 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id a17sm1951146lfk.0.2019.06.17.06.05.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 06:05:17 -0700 (PDT)
Date: Mon, 17 Jun 2019 05:12:10 -0700
From: Olof Johansson <olof@lixom.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [GIT PULL] Versatile platform updates for v5.3
Message-ID: <20190617121210.bwnsrgahbcn2hq2k@localhost>
References: <CACRpkdbFS_Kp1KrV5iO1Qt4idBjmKUWOxBDxvS6cCwSf2Aso1w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdbFS_Kp1KrV5iO1Qt4idBjmKUWOxBDxvS6cCwSf2Aso1w@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_060520_271948_28EAA2A0 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:229 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Wed, May 29, 2019 at 11:00:59AM +0200, Linus Walleij wrote:
> Hi ARM SoC folks,
> 
> here are some nice Versatile platform updates for the v5.3
> kernel cycle.
> 
> Please pull it into ARM SoC!
> 
> Yours,
> Linus Walleij
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator.git
> tags/versatile-v5.3-armsoc
> 
> for you to fetch changes up to 153969fd952d81ab8f57574f9be1a90b0a0fa791:
> 
>   ARM: versatile: Drop CLCD platform data (2019-05-28 13:23:46 +0200)
> 
> ----------------------------------------------------------------
> Versatile platform updates for the v5.3 kernel cycle:
> - Drop a slew of unused CLCD platform data
> - Fix OF reference counts

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
