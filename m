Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D58EF883BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 22:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K9HxsK9gYkHDwcb0tcQeA+1lpTCZDAQrzArAK1ZWsFc=; b=AiPSYxa22itzca
	d3asC5GP/VaIfxdPPPLWiSqqmYq9/zxydPhEbr2uvzs/8IJjuZEF7Z0ii9E8auHShMTo5xhalZjDK
	8dDW30W2SnNlvf6vuNVMY3a57PeYdqrX/M9UH55VX3nwO9vSLEedJ5pVpmncfuYz9jzNJxjO/Wjx1
	tT2emqGR9OVnascGjnVOAb3OJQCTXOrOXGFWjIAFwYP0KKAWxMOjVUA2oZZEOfwCt1OPGIGJZvU5i
	0+MIc/HvD+n4AwllbmnU2F+ULs8fTzdJaoiqQHBHB3a0GITtA/ww4YncUjW6xxiLZIQm8brLwMD7m
	Uu6dMJs+lY10Q+WV9gUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwBJw-0005jY-Sd; Fri, 09 Aug 2019 20:17:04 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwBJp-0005is-Sp
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 20:16:59 +0000
Received: by mail-pg1-x549.google.com with SMTP id w5so60367603pgs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 13:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=ps+kwDWgQoJY3CUqmmTxPvXo4adLKJif88scg6lrYf8=;
 b=fv2YO58sdU4AQ4I/RtKsVvbmSmj2rwepYD+glEMaxde9cOm6Ya1Ge8Yqqh3kUojLFR
 JR9B6TmnOS9/7Cby5qjnT7Jwt+MSb5MBzoEadrZflPdmFu4/4wUorIzus/YVb/0vW54b
 7BM8Ma7BcDggHUci6UxcpH6E3/K/FaVHCspRanUX+/U6xeYXGoAU/Y5yL4mA76W2t+Vt
 U+pv5sBr0JvQPF2XU5wobvmIToBPSRKm0/7tbvw9m/SLl9CB9qlnKfcBs6XBzNLns0+E
 xhzTcCdRsNKolC/cIfwsLdeQyrCtbWSTPecL+kc83QZ+Tc040PLhv9PgsNjp5E6kMhgw
 xYRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=ps+kwDWgQoJY3CUqmmTxPvXo4adLKJif88scg6lrYf8=;
 b=CW2Zvb/K+QqlULaA5gymQk0k6hkOF5lm0wmKUF5Bta1dWFOd6z+onhZHapMOYn/F9S
 OvPBbSaJv41w0P0e4uIDJQ9jwqF8P5U+LUoAz0vOh5ZJWgUL1nlJpob0P/BbObXvR5Jx
 OrKYIu8Lf1eNi/aJKN1sqkvoSEZufATZopC5eIzDahXHQjoeNfPESTLowAzi9Qo/q6u/
 +Yoy4VSSONIEhSvMkddHcY5hWIhO9sNo8s94YJfb1BSwGfiuR5mIY0dWIQvXrF8Wjn0w
 9stLRFxpBIorA8TH5WAKtp8Oqr13dD4k/Azub55BbSh0ibq1HsZjhfyi/dVFcXjEPp5V
 P3ig==
X-Gm-Message-State: APjAAAWFFh5hdVN4LpNjP/w9n1S9YmMZm1dFvl8cxsKYwUtmOxEGGuJC
 zAX18m3ZUf2C6OJvqilcNmqdiG3zsA==
X-Google-Smtp-Source: APXvYqx4tBQFTVP3rt8jWo6e+xDOIHSc4BJlYb3KbGQ87YLO7T3+MR/DvWzL1C/XLAPt3HRHlZUVWLQzMIM=
X-Received: by 2002:a63:29c4:: with SMTP id
 p187mr19362879pgp.330.1565381815497; 
 Fri, 09 Aug 2019 13:16:55 -0700 (PDT)
Date: Fri,  9 Aug 2019 13:16:31 -0700
In-Reply-To: <84df6071-ef7e-c3d6-6ffa-fcfcbab0c8e6@arm.com>
Message-Id: <20190809201631.208455-1-yabinc@google.com>
Mime-Version: 1.0
References: <84df6071-ef7e-c3d6-6ffa-fcfcbab0c8e6@arm.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: Re: [PATCH] coresight: tmc-etr: Remove perf_data check.
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_131657_960509_9C07B435 
X-CRM114-Status: UNSURE (   5.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Yabin Cui <yabinc@google.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I totally agree that checking etr_buf is a better way.
It solves my problem.
I will upload a new patch soon.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
