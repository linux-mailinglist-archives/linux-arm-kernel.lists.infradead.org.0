Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEC81D3261
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:14:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z++dGacxlOmlmvS2WlQDyhErXrSRoxiRQNoHmHQslD8=; b=bzBBXm58yddluR
	6K3evTVEHvaDfv1kb1n5w/INixtSt2pw+PylegakiAImPK02lDoHpmrSFncK+AEEj9is46faTcv/k
	h91HnS6VckmM71B+0Jpn96Zg5N/ZiC3sewgeCCg8bCI4PwyApxGF56MeUJL6e9s3PTuMWwN/xJ/DC
	WpNPjl/ej0zA6h0+An+pPF3os9a5ZuzDpLpwrbTPj71xY/9V74DYED07KmcD/4Dufp4O0tTAPeYR3
	nV7OkkUKNJCheZz0mMft7I+hinc1D7rq+rk5QECxl8Smoy9uoZcNAUPoFgZJVx3VeGQ1KdGhn5WaL
	8gHfnuRJQjVQUHZPRo7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZEcU-0000Ao-Kc; Thu, 14 May 2020 14:13:54 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEcK-00009G-3j
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:13:45 +0000
Received: by mail-lj1-x241.google.com with SMTP id f18so3646567lja.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 07:13:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C0Wi8twIw0MFBVQJRdNNoKiMpIEqlbg0Igl4046DD60=;
 b=eQM53835g/+aH1FD27H7UHMCM4TUJyzyC0bZCLkHQYtLJaQVSKtBjpA1oVpdYz6L0v
 /wwa+Yh6dw8DdzGTLW699QvS33AjsxPHGcZDqhCyZ4s8czvOA9gG/Kq0mWrzs5geyUGb
 BamGD/PmW4oZ4jBtM3acws0g3K2n5ejyjexy/PMPZmCg4KX54rXVlGg5ynnxmtlv6nSC
 uBg4GstX69RvTEOIEEHhM5sJTI8FAurQw+eJ0pyHNDe4/cpRie8e0vp7tnRMU4fdyxu/
 +KcGPifQL4AXHY3E71J/oZG6SZs658kc6M9P9fTC/BH/3OyosPdu2yUoNGV1H8fU96+N
 V7MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C0Wi8twIw0MFBVQJRdNNoKiMpIEqlbg0Igl4046DD60=;
 b=dWM/1+2noZE3B23Dhi0OU0tSxPwuE8GFRfzsvVdibIHV2Tm1+ZqhPNy4HceH5LNUIu
 71pt2EhZF8dxvfKp0Y6IASOklkCHW02IKl1tNfXG9ROeWRJA7xFJ+PjK1AjlcxwLZAvT
 VLRz7Ac8tRZWM6DiV/hS6GWCi8+/BD4LjjgxZ0RV3hxZx3zP8h5RyYJcUxXfRy1vec/F
 txYp+wOqmb/yMBmsnf0B/yeIhhi8ZjwK2Wq5KchyR8nGMdvOT91iaWmrtifOGyEh7wxv
 A8teJv4nhewFwy+OPXgVCiQ9nWy3LX8yAiGCBzDvGxEKx/sEmxj4h41qVc4CWKazK9UY
 40Dg==
X-Gm-Message-State: AOAM532kcZqF10j+q3Ob2/bDsRFwFMjFCm5CJVXDfbR+11p7STc2dmgb
 4zLuGDFhUBv/8AmvbKEe9aSpDC9gWjZoHfJhL99IbA==
X-Google-Smtp-Source: ABdhPJxmLycxUu8+JlmfFGrpcVb8FlgdYp8EMhKNP9DZ1ACk0ZsrZ59tMAj6FpYYwICqvMWpRsDyKBq18wUMHJitScw=
X-Received: by 2002:a2e:81d5:: with SMTP id s21mr2833009ljg.258.1589465621293; 
 Thu, 14 May 2020 07:13:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200507093349.25313-1-ardb@kernel.org>
In-Reply-To: <20200507093349.25313-1-ardb@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 14 May 2020 16:13:29 +0200
Message-ID: <CACRpkdaxARhkNDEaV4adKXBggWaFgQ4KKud0SF6n1A7_24bmqw@mail.gmail.com>
Subject: Re: [PATCH] ARM: drop Thumb-2 workaround for ancient binutils
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_071344_154061_72E079BB 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Dave Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 7, 2020 at 11:33 AM Ard Biesheuvel <ardb@kernel.org> wrote:

> The CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11 workaround addresses an issue
> which was fixed before the oldest supported binutils (2.23 at this time)
> were released. So we can remove it now.
>
> Cc: Dave Martin <Dave.Martin@arm.com>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Makes sense.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
