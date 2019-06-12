Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA35142CAD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 18:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7auDdHW5jHIqkwJiDapqQG6/Yz/98pOa9UAVULyTGks=; b=fNH0w2qmWgi/UD
	/CydblGJnL2GvqIMhJ0MPf3X0sc/B7HgZkJQUEnSCWxPx4ZkmXJW2UkRZwEZlxKAyz5s3HKDR9Svb
	0aOQePK3apwgDl7axnkomIRM0fqFkVtzK1bV7/Az14hzR9Xo2DR0YD/lI50C6udtqB6WSgzRuxrg9
	LhmEo5wZYVkumtlib/ZVJHgs3OQVNQ04QyYLZraXOqiZZMDytX3GwLRXoZPQRVHXA20bfuXqjc0sS
	6sue3gvRe+5e7R1db6aTvkIFmZT6PCKcWbsdxrYQngDcFBjqXD/LuUpWQjf/WSo0BpN+gBtIssfLp
	dcwWPDf0IzBdC8tBSW8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb6S3-0005wd-Jz; Wed, 12 Jun 2019 16:50:19 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb6Rn-0005Mz-BE
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 16:50:04 +0000
Received: by mail-it1-x141.google.com with SMTP id m187so11918184ite.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 09:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JO7k/ClhjVdqToWeoJoYGo3bEt8L7eZPdlH/fBFJuKE=;
 b=TAKqqn0G/vV3fPY4tZ83gwm2Hw9HhcFNuTbZWx8ZEVBV+cWYI7notKlmymqifBVg2K
 UxJ+8RwVo6Rfh1vtL1PeTyo1G2+CGMZtjWqMD3+uc4ptB6DaLirqv4mHTZ4+lTG8ZTJR
 I5kiYgNFvY/BM5i0ScMOqJZcTYeHW0V8yED/t+ZjGMSx9UNTZv6ctv7hNJYwUQg3bNQk
 xFy57BhPJk5djKA90xszJx6puysAkve14K0hmshn6HRpzXFiqydO4+tAAY8l3haT0TDc
 +xNDCUiviVVzv02/Pry2QOdhYSk7jzMs/+76pAzdzeK7Lj8k47qc9C7EYRdlVPRjmzOx
 jK7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JO7k/ClhjVdqToWeoJoYGo3bEt8L7eZPdlH/fBFJuKE=;
 b=GRVeAVS0rVF4CH8/N0b3Sc2gN4rAOtiTIYAgYGKSJz0pT/Bbq/UsGFbr5KL0LO8u4f
 WX/x6RwFZq15ziGfj2e5WW3EmJxpR3+LwnRN7S2+eGLa7cvdysmpshYUbuYCj4J0IHqM
 qytbKqtTFZyAQagrspoz8MXUHLggmaeT5Tm+/HcPO8y4eyAPpJ85/ra1yf6crkwjUFjs
 p6RnJXq6Dewk8mDGnz5XrPqQlFVkV/UIEPTVI1ntceJlxk4+z1LLLYjigHwExZTlqkMS
 6eVPXffZ9lPIzzR7RG4wWOYybZxNISaKwCUiykHbbl5UqhrM/3ZuQkegM09xJMdY5E0i
 ohQQ==
X-Gm-Message-State: APjAAAVy3OebzSqCnbKdK9vxXN+RkVd2/lJvbLmtpOGX+YXR7zfFWeUH
 +eVrlLvSiVABGFmHKgqxC9B3q8O4zpT3jSEtOBw=
X-Google-Smtp-Source: APXvYqzmcfhx2XovBMaT4tzSeJzeAp9gWzVe5Ka/LFGHFQ3luDfFcddrL85N1pCbOWHmvK/gBAL8MuEcLAeoFSfQ9EQ=
X-Received: by 2002:a05:660c:8c5:: with SMTP id g5mr64709itl.40.1560358202002; 
 Wed, 12 Jun 2019 09:50:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190525181329.18657-1-tiny.windzz@gmail.com>
 <20190525181329.18657-2-tiny.windzz@gmail.com>
 <CA+E=qVdh1E8Y7dZO0JSS4DJE2bo=98MuSKRt7nmeFg-td7Ua9Q@mail.gmail.com>
 <CAEExFWtjNridLsMXOnBe2mJOPhUOYJ6G3wGF3gx=0oQoQROOGg@mail.gmail.com>
 <CA+E=qVeOSw=_z4OiQ4++z8g-KN29UYVXGicNd3PtHobg4xaG+w@mail.gmail.com>
In-Reply-To: <CA+E=qVeOSw=_z4OiQ4++z8g-KN29UYVXGicNd3PtHobg4xaG+w@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Thu, 13 Jun 2019 00:49:50 +0800
Message-ID: <CAEExFWs58UNcVcQNnwK3dk5cpmfQRnjdRWAmYs5M1t_ONr1Bpw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] thermal: sun8i: add thermal driver for h6
To: Vasily Khoruzhick <anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_095003_406613_B422BBD0 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, rui.zhang@intel.com,
 paulmck@linux.ibm.com, "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> If you have a git tree I'll be happy to contribute A64 support. IIRC
> it was quite similar to H3.

I built a ths branch and I will do some work later.

https://github.com/TinyWindzz/linux/tree/ths

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
