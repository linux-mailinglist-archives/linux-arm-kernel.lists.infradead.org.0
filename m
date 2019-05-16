Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B86C01FFC5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 08:44:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HeSZUcvn2o3vK8NmuaM4QfKHrH7Lryzy3rhKL6vQZl8=; b=o7TKz072fLaCTj
	dC72ME7H65jHXoNHEKkwAYLspg+X62upjyQ/ZCpW+Voa3IQMb4Cfrk1uMynX/BNhDjb5B9xUW5+on
	KOHXTMh8No6U4RopXk9z6UQRNVzJhYpH152GMi+pUG71IK3qsMYQjMMasBiX1cvOwOc5GneDM14+a
	Yac97zHMLGquH3pgB87JYgPNv9iI6m8PcU9H2yd95K1bvhqHBTR29Z5DiHidB8OeXEpTtrONNJC1A
	f6wTLoKGnTXk0f3gvrPfEeatCTb7n5bkD/QgnXedlQK4C4XWsh8TikXyMNIaS8nYQvoh4jWZ3L8bY
	hNuUB2SwNPn7iniiy++A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRA82-0005XX-Ad; Thu, 16 May 2019 06:44:34 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRA7J-0004a5-72
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 06:43:57 +0000
Received: by mail-lj1-x244.google.com with SMTP id h11so642938ljb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 23:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7ZPEG1uvP25G+6MDDHO+VGZtVp3uMsVxvWwA8u+RfgE=;
 b=IUV2we947+7Rf+xyAPdjc+ea0PJ+zSREoBrpwPTBsGS0f9f9s9FBs7mvp4/5hW9yWx
 B+2XrRIJc+SFfEuYqskB2b3jncnWZPfEI4sIy+1eskZD6Mo6W1yHKwy6edTG1fg9OGe8
 17qCV4+pc96btPqSmufUdk0OBgfBtlFSqunTPnYsB2MsgxFxg5reUjhtT+1+tP1rjUBX
 asSYM8RVv19+hVsTYPO5PMBvb69Tpk0wJY+Q9VrRFYrWByHgQnPiJMhN4jdSw/S2aE1O
 g12Q25iVfvnGVoVdVa4GONvck+76VNTJi/cEWtRrxWKFvy/1wmjzm6aGyoO6tSeoeVEN
 67tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7ZPEG1uvP25G+6MDDHO+VGZtVp3uMsVxvWwA8u+RfgE=;
 b=oYTIbGQCv2iezsV4eWDXCc4marJ3XdAJLj1mAkjMRqCorTeYEXAZN//1ckXltp6lNi
 sXGotUaxkOKda97jE86c4wlTVitsALzqKmAoI+X4VYqVuktYlExH3qIVlDxm8Y+iEsIz
 tAG6n1aJRzlTH0IfyVnwlIhoQ1BZZkBX/+JiycokBKuAgSjj+fBfQNe54bkmC066bbux
 JKzIm2oIJbu687CUqFhg1Fn+31pYwQLTDR2x2K9BL2kkZBgz0y2XGaazBZrsvKg7q+RQ
 JqGQXZAE29G7mcqHvlKN08cldfzVQHlDlQLrxC6s5/lMcVYKepRy2kJKbmIRkDSzSOIA
 /AJA==
X-Gm-Message-State: APjAAAVvdKKlFktK+kKplhJE5DRJ3/vqpZrCeQqA8sVo0Tzc71qMWK2H
 KIJEWeuAuuerTartEdhAK8yw6+JDZJI=
X-Google-Smtp-Source: APXvYqwESsvwuDVqQ3OkGcVzW8qQHIcgaE90y4XaKz+yyF8b4ILVw+Aez9GJ9AbfVpWheziz1r3Ywg==
X-Received: by 2002:a2e:9d4c:: with SMTP id y12mr22803998ljj.132.1557989027114; 
 Wed, 15 May 2019 23:43:47 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id z6sm714565ljh.61.2019.05.15.23.43.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 23:43:45 -0700 (PDT)
Date: Wed, 15 May 2019 23:21:46 -0700
From: Olof Johansson <olof@lixom.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/3] clocksource/drivers/ixp4xx: Drop ifdef
Message-ID: <20190516062146.dnncxu3bopedhmbz@localhost>
References: <20190506063109.3072-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506063109.3072-1-linus.walleij@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_234349_640332_65E54019 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Thomas Gleixner <tglx@linutronix.de>, arm@kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 08:31:07AM +0200, Linus Walleij wrote:
> As the sched_clock registration was put inside an ifdef
> in the driver, but this is not appropriate, the ifdef
> is only appropriate for delay_timer, which is not yet
> implemented.
> 
> Fixes: 13e0b4059b98 ("clocksource/drivers/ixp4xx: Add driver")
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ARM SoC folks: please apply this directly on the IXP4xx
> branch where the IXP4xx rework is pending for v5.2.

Applied to arm/late, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
