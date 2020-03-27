Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0DE195540
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 11:29:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9P85q8z4iVS2d2+YnDw5JX6cEMgcYWPFQ1VnU4nF94=; b=fbQn5wWNyFfOpn
	5rz8E6InMmMR3UuBoaTCARu0bUGi4sBpvn9jDircskWV9KwmriHRgoVB0tDqnkDp7+bMWFDqemf8N
	IC4hW2KH4v8XT77DiTzlYeIY4qfyRHxIU6PsyokjjcvxJOHEFCI2HxPMQ22g/p9v7fPv58rMoNmtr
	0FJlsz0UvVa7LALVaKCJqW+4J4tyGSVK6P/y0K3OQhlWibkEU504Zl2XNUlm7k8Qzh+EsfHwntUoZ
	b/nQaJuA8bp4gw4L2ASEuHzFp0xmdY5ngtz7WIopUOvRW4O9KTMC+sRmA1zt2SYsFFA7k98jEeFwu
	+uvdTtDqjrWJNDYLV9Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHmEV-0003Dy-Gk; Fri, 27 Mar 2020 10:28:59 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHmEN-0003Cy-UN
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 10:28:53 +0000
Received: by mail-lf1-x141.google.com with SMTP id n20so7371860lfl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 03:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jxagbeVNh29/16YYCqUxcED/GWqaMY2FRZILhD+326E=;
 b=pT7ZlF8+QDzNnMTTTXVJzakDoz3QhyP01pvtfVf0GteWt8Tf11MzXads6cx+Bxozvu
 7IwWHj/EYxLdmAYqXnu3Dzq90WiKIW1empmHvyFt/AijbOBlBUPhW9nmE2JZVehlJgbN
 NTBGYVH9UGPZYUQvd1FVnU1m+KgpfMrj1zgXu57yRBx1DphOpbDs5CkZl7+u8sMvhhir
 L0RR25GHO7Mz1GtSu1HvgZbbECv5HQq9Emo2s9Ikp/ipzszJO1hknf2CNh7MSQPqMofd
 Wt5/puPA8rg9AyH248JalQ2H9s1xyFn7arWrt7jY9PjKFWBKQSS+Wfej7e4Z6HSZ+hVK
 McaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jxagbeVNh29/16YYCqUxcED/GWqaMY2FRZILhD+326E=;
 b=TSbevogIjs8boB5+xgiMAoNsXkB+ulsXCCLdzdyn8BGt3rcT/tVEurqhZ7qJZLzb9n
 GgxV7lojoOSa7hSDrcOYLhBbADlpnDubkLKwdp1ZljmjN4ppghWZCJKTw4+FwDCMCs8j
 GKh1728VHExvi0SY0prXCftcbHfvaVyjzyJ506EP/4GYLO5hNhsuc1P56tkPdSf+98IP
 X2bIkk2hVnq2b/ytrHbVj8LIhRu4BZ827iBNB36CI7RRY7PhsVWpWY9BHSKJg3D2zsPL
 avnxp7tqcFvbL5aTsPrD8QYNdUnqCZmh81L7WXS/lkPNtnf1A72ozVovPQdAE13aWdjY
 5rgw==
X-Gm-Message-State: ANhLgQ3KFYFaZRETxIuZUk1UJ1DmiixGflzm712LHGL69h5qlhcAfl9E
 VrYvZ1TfUQldD+rxckPiAKS+kCwJVDke/ZyFGF3MVR9vvHQ=
X-Google-Smtp-Source: ADFU+vvZNwYjJkyVgssSDHPr3mydsb+13EqKSqnHmnCoyAtcRPGriExF6G69ogu4A5lq5aiiVUR+AM2Z+n1m+zil0U0=
X-Received: by 2002:ac2:5b49:: with SMTP id i9mr8745710lfp.21.1585304929987;
 Fri, 27 Mar 2020 03:28:49 -0700 (PDT)
MIME-Version: 1.0
References: <002b72cab9896fa5ac76a52e0cb503ff@kernel.org>
 <20200319023448.1479701-1-mans0n@gorani.run>
In-Reply-To: <20200319023448.1479701-1-mans0n@gorani.run>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Mar 2020 11:28:38 +0100
Message-ID: <CACRpkdZZN9hfZ7ARRd+JbFKjfXDMa_M3wqYD1gPqUCiTpp=LNA@mail.gmail.com>
Subject: Re: [PATCH v2] irqchip/versatile-fpga: Handle chained IRQs properly
To: Sungbo Eo <mans0n@gorani.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_032851_991815_0ACE247A 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jason Cooper <jason@lakedaemon.net>,
 Neil Armstrong <narmstrong@baylibre.com>, Marc Zyngier <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-oxnas@groups.io,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 3:36 AM Sungbo Eo <mans0n@gorani.run> wrote:

> Enclose the chained handler with chained_irq_{enter,exit}(), so that the
> muxed interrupts get properly acked.
>
> This patch also fixes a reboot bug on OX820 SoC, where the jiffies timer
> interrupt is never acked. The kernel waits a clock tick forever in
> calibrate_delay_converge(), which leads to a boot hang.
>
> Fixes: c41b16f8c9d9 ("ARM: integrator/versatile: consolidate FPGA IRQ handling code")
> Signed-off-by: Sungbo Eo <mans0n@gorani.run>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> ---
> v2: moved readl below chained_irq_enter()
>     added Fixes tag

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I wonder how Integrator keeps working so well despite
this. I can't test it right now but I'm sure it is fine.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
