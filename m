Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDED12D9E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 16:37:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MvrDhD+wwrCbgF2pNdKzx34D58O75GhGdfN9kPowHu8=; b=KaZqTWQcQiMjUP
	rP5tH+NKTjcI8kxjZdcUkCfiw3lr8LZG5JWpPWUYGbvISUIOMGQZP/qBZtWX15LfprmKeXr0KWbpo
	Iv5BhFv5oa9wqTBPTZmeRLELe3713v3+61Q9vSGWuzBHp7tq/EmnT5HfDzRoS/PZ72q3qQH+bA2v5
	qDU6kRCusKRlwH8ofP7+WkgMjpEEu8KEknjdfRMlDrsq9Tha+xXeaCeuA6QYlsJf90g4eO/4gO17F
	7fbpGoQd9oFoDx0uAhp/2XcG1oTpOYY8sTG0voDPPnitemt5LFWDikmHPnFOIGs+DOjlU7EEpXylI
	9tJV+QwmVZMxW7OwtdCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imJaM-00005e-8F; Tue, 31 Dec 2019 15:37:30 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imJZy-0008B3-EI
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 15:37:08 +0000
Received: by mail-pg1-x543.google.com with SMTP id b9so19650830pgk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 07:37:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0zI0gfX4kyMk5ybZJW1MIBaMfCVRpcieMViMTdRuHHU=;
 b=aelIqqsQqz8e1Oh73A+P3E1dzERA7atsAp3gmXpIRWY6atThTgc5is5iVbjffudSYf
 kVT4yFnhWcrmbBk/cU2I43bz6/+55DE5sF5opHklS8kiiysK74GdYqGLGlaMzxTQ4FeR
 B/4W4GSEUYCkTGoUMeIQPppHYhe8d/sxCstIaGLziFCfVWxk8deLawp7dnlIuDCUdUCD
 zeq23U8KJxHRGMyFHYd+b5fDnFDbknzrVJwoCB1UabrZBGNmu/VtJzAeUT0qCpdHhAVY
 plKoTi4xbjMfxHnZ5IGYedegyGvlOcQCUm/gUbABffTy36v6j0Z8x7taXgcqM98bN2iS
 mEbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0zI0gfX4kyMk5ybZJW1MIBaMfCVRpcieMViMTdRuHHU=;
 b=mgHjzCP9h3hxi517h5xNR9tK43xD/BLlpMsJJbm5OHi6SjQmBJmFnEmNXEn3+pay7j
 qDXg8gLDls7zOhxd94LTwY5JiGIAJB+zb87c63cZkXlV4n8X37Oh3sJt55egVs0HMfpI
 rsw+mzRQNZ0+EgTtuKZsPZQAv+B393aVPajjwQYdlqvostV2dPY0qWgKrRJrRIc0jiMv
 EwazEB8CxTiL8iQcWw17EvH97GiTYcoWxEqhoGGZfMF7FaL4zY8AwLLJHAm+eV8Lz8FT
 fQO1wJV0xrZ/La/L1RMJPAKoZqiihgZR4mO24iXkZPkyX2VvRSPs5CGh+B0Kto23uWUu
 jiPQ==
X-Gm-Message-State: APjAAAUA/NoIUDjJUMmyiytEXhmTFQrLyrr9hu9nD3hgNbpf2MxSOFfp
 BDa+UaXfZzOZt2M7vOcxL30BoXP9
X-Google-Smtp-Source: APXvYqz1nAJruoselefeTuSLlMA9yBQydP7F654u4Ya6LKTk2yaP1NtBBWaGzoj4dwB9dWVthE3aBA==
X-Received: by 2002:a63:483:: with SMTP id 125mr77701373pge.217.1577806625492; 
 Tue, 31 Dec 2019 07:37:05 -0800 (PST)
Received: from localhost ([49.207.54.121])
 by smtp.gmail.com with ESMTPSA id m101sm4068910pje.13.2019.12.31.07.37.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 31 Dec 2019 07:37:04 -0800 (PST)
Date: Tue, 31 Dec 2019 21:07:03 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Russell King <linux@armlinux.org.uk>
Subject: Re: [RFC PATCH 2/2] ARM: !MMU: v7-M: preemption support
Message-ID: <20191231153703.GA15302@afzalpc>
References: <cover.1577705829.git.afzal.mohd.ma@gmail.com>
 <c24f8d1c8e813eef62d642b5e620e0062c52c9a8.1577705829.git.afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c24f8d1c8e813eef62d642b5e620e0062c52c9a8.1577705829.git.afzal.mohd.ma@gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_073706_552448_19E59BC9 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (afzal.mohd.ma[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Greg Ungerer <gerg@linux-m68k.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Dec 30, 2019 at 05:25:27PM +0530, afzal mohammed wrote:

> A. Before this change,
> 
> A.1
> ~ # cat /dev/mymisc
> [   28.099225] mymisc_open
> [   28.101625] mymisc_read: enter
> 
> command prompt is not usable (expected), interrupts do happen during
> this time.

> B. After this change,
> 
> B.1
> ~ # cat /dev/mymisc
> [   27.374821] mymisc_open
> [   27.377349] mymisc_read: enter
> 
> though user will not get control back (as expected as it is fg process),
> entering on prompt causes new line, doesn't know what to make out of
> this behaviour, this doesn't happen in the A.1 case. Interrupts happen
> here as well.

Behaviour B.1 (which is how most of the system behaves) seems due to
serial driver's threaded interrupt handler being able to preempt 'cat'
process, this can't happen in the case of A.1 as preemption doesn't
work.

Also it seems that preemption does happen by tracking __schedule() at
runtime, but issue mentioned in B.2 (below) remains.

So it seems preemption is happening, but is very fragile.

Regards
afzal

> B.2
> ~ # cat /dev/mymisc &
> [1] 41 cat /dev/mymisc
> ~ # [   44.836417] mymisc_open
> [   44.838814] mymisc_read: enter
> 
> though prompt is available under the control of user, upon typing
> anything on the prompt (typed character doesn't get echoed), it crashes
> as follows,
> 
> [   44.838814] mymisc_read: enter
> [   51.710314]
> [   51.710314] Unhandled exception: IPSR = 00000006 LR = fffffffd
> [   51.717576] CPU: 0 PID: 37 Comm: sh Not tainted 5.5.0-rc4-00004-g2328d01dbd85 #105
> [   51.725078] Hardware name: STM32 (Device Tree Support)
> [   51.730206] PC is at 0x90195958
> [   51.733329] LR is at 0x901c4df3
> [   51.736471] pc : [<90195958>]    lr : [<901c4df3>]    psr: 21000000
> [   51.742713] sp : 901e5a58  ip : 00000000  fp : 901d89fc
> [   51.747911] r10: 00000000  r9 : 00000000  r8 : 00000001
> [   51.753143] r7 : 000000a8  r6 : 901e5a58  r5 : 901e5b08  r4 : ffffffff
> [   51.759643] r3 : 000000a8  r2 : ffffffff  r1 : 00000001  r0 : 00000001
> [   51.766122] xPSR: 21000000
> [   51.768866] CPU: 0 PID: 37 Comm: sh Not tainted 5.5.0-rc4-00004-g2328d01dbd85 #105
> [   51.776369] Hardware name: STM32 (Device Tree Support)
> [   51.781594] [<0800c0c9>] (unwind_backtrace) from [<0800b25b>] (show_stack+0xb/0xc)
> [   51.789166] [<0800b25b>] (show_stack) from [<0800b9eb>] (__invalid_entry+0x4b/0x4c)
> 
> It is a Usage Fault happening while in thread(user) mode. PC & LR in the
> dump is strange in the sense that they do not point to text section.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
