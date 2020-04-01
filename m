Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E2819B508
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 20:02:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSg5w4eV0Fqw+KJy35DZGTA4a8KQh/rI5Y5jVN00dAU=; b=YLTY6M9WZCnMe8
	+4gY8VYz+tR/1uHmWEekecuOvzAcUgV8Yenqy9XIiVPxH4lSjSeBHBrOgg2cEqJakAHaxSV4jNhwK
	HTjVs52+wTvuGVvt/RrquCqBLDVKr059IhXmigIjptomiThvtYvuflAyUj7BhyUSuxUbDy0nra3sY
	kG0CAp/7ZktyVG71LyMwwtKdD2bXVLe7a5sxpIm7bClKsAi2UCUvuakDBF7WGJOJ4B97xpvHQEx28
	H4o8TWMCzsYkS4JECQoFI/XwcDENyyUYO9khztIAgwBKziO/OpFqSW9JSso1jjN9PEwu17SeLC0TI
	ROWw9fGeZyofSZpFZ8hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJhh3-0004vh-OB; Wed, 01 Apr 2020 18:02:25 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJhgx-0004uw-PZ
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 18:02:21 +0000
Received: by mail-pf1-x444.google.com with SMTP id c21so359389pfo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Apr 2020 11:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nN3zsE+FK4cNT3gjBDZd4jgl2nFuBzMDukGWMo8ib/8=;
 b=GsmNqDfWVuI94Oouw5oRi/M8iAEHPfTyZl24/WcIsq+OX4gRmtf3p5E8jXOLhCQ4TV
 oQHOknDYzNgrtOTvOLkhmI5KQYwXGOlXugZ7Az/dfPT0w94IQpJSB1g7aPLA4fQ0ki7a
 vWyLIBQOiPMk+cGIFgLjcxu08/VVqH5PPTyHs8Y1RqOwg7XPnMFRVRBorTILaaFBk5Dg
 oYAFQoOsNWZYGRfdDUqC8VcyROFgelXyRnCDQH4Yw3Q/zw81xHzn2XO8T+NjwsrLUzjt
 +Q3etXSA1TCXn0XRKh6TMMW5DMaJNavmVgjbMVbMNioNZEbMInlu9jOGoJmNRRPfc16h
 mgtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nN3zsE+FK4cNT3gjBDZd4jgl2nFuBzMDukGWMo8ib/8=;
 b=cuQmWg3ETXW7eOlrG6Bs5zjuKhMA/DR0zDMgVwzEi3hlc6oq1j7Fo4QQOP1rlfiR6e
 nDSAI0LJdyz83MsJ+Vl47BcFWlV6cEmnREX/vChOwfaq9wyDXgQekbJWLQNYn8aPUnaf
 G0rajYwunHQf0uk1yLc5h8G56fWoDfzBRRz/kGeMy0ps+SQj8a59S48LPPuOaWDGSKy0
 3H1pZoxEkmtsyWmFG/1z6Ew4E6bwRum7NQoYTTU0Ws9hMQ55JviLvFc6tbH0WbqYXs3H
 TI/J4aLQexZu0ycM7PCv0yfzs1Ps5jYE0lyGBU9m4N98JpQjvlMTwmSk2scchbZuRrtY
 oRew==
X-Gm-Message-State: ANhLgQ1/m4rhNdPIRbaHRzMb5NBrKqPCCuZjYwvfZg72ObWQr6cfcnDs
 LmCieh3MyTrpETSQ8i9LQXITyTnoU360lyWGvOF3rw==
X-Google-Smtp-Source: ADFU+vu46Uqfs6o6Px6mzmc9zh4c7v6h2s+5k/Y7IBrPgJB3jMFrWnCsH4/l3yf3W7Jxb0rN86SwRgc3KzwC01F6MbE=
X-Received: by 2002:a05:6a00:42:: with SMTP id
 i2mr24113583pfk.108.1585764134729; 
 Wed, 01 Apr 2020 11:02:14 -0700 (PDT)
MIME-Version: 1.0
References: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
In-Reply-To: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 1 Apr 2020 11:02:03 -0700
Message-ID: <CAKwvOdkyOW6RXTOCt1xMp2H+uH28ofByQOjyx776t8RDxTED2w@mail.gmail.com>
Subject: Re: [PATCH] ARM: OMAP2+: drop unnecessary adrl
To: Stefan Agner <stefan@agner.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_110219_855802_7731A16F 
X-CRM114-Status: GOOD (  22.42  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: tony@atomide.com, Russell King <linux@armlinux.org.uk>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-omap@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 29, 2020 at 1:33 PM Stefan Agner <stefan@agner.ch> wrote:
>
> The adrl instruction has been introduced with commit dd31394779aa ("ARM:
> omap3: Thumb-2 compatibility for sleep34xx.S"), back when this assembly
> file was considerably longer. Today adr seems to have enough reach, even
> when inserting about 60 instructions between the use site and the label.
> Replace adrl with conventional adr instruction.
>
> This allows to build this file using Clang's integrated assembler (which
> does not support the adrl pseudo instruction).

Context: https://github.com/ClangBuiltLinux/linux/issues/430#issuecomment-476124724
If Peter says it's difficult to implement, I trust him.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Link: https://github.com/ClangBuiltLinux/linux/issues/430
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> ---
>  arch/arm/mach-omap2/sleep34xx.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/mach-omap2/sleep34xx.S b/arch/arm/mach-omap2/sleep34xx.S
> index ac1324c6453b..c4e97d35c310 100644
> --- a/arch/arm/mach-omap2/sleep34xx.S
> +++ b/arch/arm/mach-omap2/sleep34xx.S
> @@ -72,7 +72,7 @@ ENTRY(enable_omap3630_toggle_l2_on_restore)
>         stmfd   sp!, {lr}       @ save registers on stack
>         /* Setup so that we will disable and enable l2 */
>         mov     r1, #0x1
> -       adrl    r3, l2dis_3630_offset   @ may be too distant for plain adr
> +       adr     r3, l2dis_3630_offset
>         ldr     r2, [r3]                @ value for offset
>         str     r1, [r2, r3]            @ write to l2dis_3630
>         ldmfd   sp!, {pc}       @ restore regs and return
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan%40agner.ch.



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
