Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0466428813
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 21:34:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkQ1pVIcdXX1ZjtJN7zIg4U7XIil2B1L0zVvfrwmU0M=; b=r9+VY+MXJLHfGY
	Og+lOf4xq2Wj62FhQFa+eWG7hgAWJQhWHweGccAY8wWfng2UOLKeJ+qrC/+CV2spehKDE+5DNk5IB
	j5w0Q8j3lJJRotOD2mNhBMyhwOKP8ySnISzUiMeMLbGB3jjWX8aiX9DxMX0r62QbfncsfDKv7Bbym
	/gH2zmgHAdQI+xvuoIiHDXHS+5qCXK+f8s8ithdztvR/ATCS6x/IbYmCiLuSTCZjWVbnVPsZBqHno
	CKEU54kxpW+kU1secuf4xKRQIZpS5uwrfxZuyAwMuwByePQOikqHwpBiSAJ7l+fkZPxGe5/A3+wZx
	VwjKf2A9PE+Aak4Yoh+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTtU2-0000WD-Nl; Thu, 23 May 2019 19:34:34 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTtTv-0000Ue-9S
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 19:34:28 +0000
Received: by mail-lj1-x241.google.com with SMTP id a10so6571748ljf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 12:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zEdXi9YQ9/PVR4ABDgc5oGstALKw+UDObwes1f/BG98=;
 b=VeUasp/nnilSR6G52vcxOnkUGJ5BU1C3y+jVW5I+Sk31loGDYD+0/OPsfjHw47uxRD
 XrahVXJxoor8ACcJ27z0OySYERZUEw7TzTBWEDU2mGo2DdFb3uIrbTMYcnz/QTQHfwYG
 +F3f+cK3YX5vYB1mNMAk16hmd5y44YYJuFU7n/VvSwBttfzg15gvV9UYhLSSI25lgXH9
 8Dcv1E/j3LZhKUEUXkPCM4sokOXChPvpUfAYb9nIiQ4ODUlM/aekq1QzOTUR+3mYLxCL
 w3qEh67Z4vDW4/T2Y9ZqmE3+M/TAHoeYBryiLSUXViQg9LWV3ApsJHDm3vuo3ValJI4S
 vlXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zEdXi9YQ9/PVR4ABDgc5oGstALKw+UDObwes1f/BG98=;
 b=FczqCS2fAe9kpr1neGvuo5OFG12fHCgJTZP8FCdkhHjb03dB2l+iyLIIvhIn3+r4Kq
 y+H2vMbsrP1FFd9bmyQVWrKJEFzSj6TLqNP6esJ4CrxYLEvmpdumuXN+onFjv3kIOxyu
 hgIAb9aswEMZ/dkjdAZIqen9W9SenKN/vwTRksv5Zx0k1t+U79JYt/x8/hoXUlfnczXw
 h8cBtaFctQZdpsIwjfDD14lOhtn5gv96xKDYCTTGNpfyyiJTNnoXGvpwMYPvEk4UvITp
 R6g0O5elIcDH/BP4SwI5K5KYasc0Y1SuPQ99w4DFf8VZiNkQo7d+eJY9ie53V8JVM06+
 9FeQ==
X-Gm-Message-State: APjAAAUAcs124m1/B91sPhlFG9YUAhwCMOZblwDnNx6Le34Mp3dMuN9R
 9azg9/urbPRcFM+CgOJ+e0t7gm25qLFupxlQicc3/iIW
X-Google-Smtp-Source: APXvYqxS49q1gB/9+MX0Pw4nbYPSIUWDf6r45GnAk81uVyDOoTg2BLY0kTVzeVnskN1RmSdLk4myFHA4dwsnUm3QOI0=
X-Received: by 2002:a2e:874b:: with SMTP id q11mr21679456ljj.48.1558640061895; 
 Thu, 23 May 2019 12:34:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190523181602.3284-1-linus.walleij@linaro.org>
 <3496e81f-ea63-794d-0d8a-8eba9f2f6853@linaro.org>
In-Reply-To: <3496e81f-ea63-794d-0d8a-8eba9f2f6853@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 23 May 2019 21:34:09 +0200
Message-ID: <CACRpkdZ5LCeqkvJrN-TAcSy7knNOQhGV7M_wfZZ4Rz5ah87KnA@mail.gmail.com>
Subject: Re: [PATCH] clocksource/drivers/ixp4xx: Implement delay timer
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_123427_336504_F8BCA4E3 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Thomas Gleixner <tglx@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 9:21 PM Daniel Lezcano
<daniel.lezcano@linaro.org> wrote:
> On 23/05/2019 20:16, Linus Walleij wrote:

> > This adds delay timer functionality to the IXP4xx
> > timer driver.
> >
> > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
>
> The patch does not apply on tip/timers/core

This seems to be because tip/timers/core is not yet containing
the commits from v5.2-rc1.

Maybe I just send my patches too early after the merge window :)

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
