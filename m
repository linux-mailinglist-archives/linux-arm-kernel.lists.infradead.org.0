Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF683889D2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 10:13:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T8A08+i/TOs21UzGUbWIeeQM7qS0bnEx2uHrbjuQ2c4=; b=NXo/9dAWMb4w+s
	lHt611sXVNYaGx2UOyS6pY9b14m9g+dDd5VK6SYBD+0FP0nWiAXC9TS1VxW0jRsqhVOtckocEqHnY
	FfsqVCjBWMHJ1xS59zGXy0GuIsGNhReBo6PinmAAU6CPDZJjQomDmVzJVR0hjAF/RlxHid9h6Vd1c
	J0aXZb7efd95dyCLbATW2oiN24NsExsgnfbkw0A4lliG7f7aE8ER0nkzmKBnPmT8o/zvsmzw8b7PZ
	QuMcf6CHqQ1UA/URKRN7DmMCngj4q0qbugcnvlnsDCdykWSSKPvDiAIrXiLuRJz8ZJYmrtzDiRNkP
	/dx0XUbXPL3D8BAkSbeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwMVH-0006JP-TZ; Sat, 10 Aug 2019 08:13:32 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwMUy-0006J5-Cb
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 08:13:13 +0000
Received: by mail-lj1-x244.google.com with SMTP id p17so94160523ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 10 Aug 2019 01:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oqsU2heLXHHBs96Q5jI1j5tMoKsUDIBVmfyGumKZ6LM=;
 b=VnJxbftIzPrqH4FoIz+w63T9HvLAwPyuIAzFqmtEtWAsLj/01rK86PGFGuGpSqWYv+
 EOc3pJBX5N72NrROGYfkzRIEBM/NZHAtlunaj25jmAa22WMIK6W8WaeA6NQrcRQ890ve
 gTKEzqoNeorIPkcAkbULvIA82MectHdfWgQVc2tti+zAedXKseEDZCsXl4IK+jsWOZyk
 R7BDcza0vJn1D+S49B4cTvaTLZpzO5Zji8UHdpqukz0sSpuhB6HNFG8n8zxgS0EkyZrb
 5PC++TGzLIxcQd3/xU9h8T2WbaloLuBlyrUH/bwdms17HdBtBey1e6TEAlNNF3mOqFH5
 GZ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oqsU2heLXHHBs96Q5jI1j5tMoKsUDIBVmfyGumKZ6LM=;
 b=cGQtORmejoyWTObwlbrWEeH7VN2fle0ucq0OahxVaMIvcsnvtNCilVB45bYQHUXMUd
 76ky667ErzgTaoq4lEB+Qa4jYLTo3lOoCOmbGz8iIm3tJ860DhnQfSHOklyVZ6S/EVwu
 PNOCtMWd5mMMcZk2/LmlyKPf2V+D7mQ3mJ0VorvrNo1TlJUHASL/pJmTzahMNa88Llq3
 q82nbhObF/1WHeAxYIQfRUjSLXf4j7Lrw9eEuiP5ywsNkXCRvW/crqmLOZVM/RfUGJkB
 XMkmOpJF0n39YDkBySx6v2/TQvlDmKKTp7tTyXYv1Q3TW2u7IL/fzQV6SN5VvOHBvdfs
 Nf4Q==
X-Gm-Message-State: APjAAAXgpI8mDfGzbovQabe7vWlDOfy7iyfKxuf6ALUTCTEwfoTcEwUE
 wqvt32lguWGNx3w8k93+uThvl34mAYyndTNUzauA4Q==
X-Google-Smtp-Source: APXvYqw5IJDtu+KvWNV5b+0f7BnCDMIkmE9siMLHoOIDt6M7/m7Z1qUizRn9O0DLYl+XLv2UlhKWmwCr8OjDx7Cm5k0=
X-Received: by 2002:a2e:8756:: with SMTP id q22mr13818205ljj.108.1565424790000; 
 Sat, 10 Aug 2019 01:13:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190807003037.48457-1-natechancellor@gmail.com>
In-Reply-To: <20190807003037.48457-1-natechancellor@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 10 Aug 2019 10:12:57 +0200
Message-ID: <CACRpkdbDgOQXfxgM4dEyzBRhtske3=V+858B7J8jGExnJE5fJQ@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: aspeed: g6: Remove const specifier from
 aspeed_g6_sig_expr_set's ctx parameter
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_011312_459514_C057BEFC 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 clang-built-linux@googlegroups.com, Andrew Jeffery <andrew@aj.id.au>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 7, 2019 at 2:32 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:

> clang errors:
>
> drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c:2325:9: error: incompatible
> pointer types initializing 'int (*)(struct aspeed_pinmux_data *, const
> struct aspeed_sig_expr *, bool)' with an expression of type 'int (const
> struct aspeed_pinmux_data *, const struct aspeed_sig_expr *, bool)'
> [-Werror,-Wincompatible-pointer-types]
>         .set = aspeed_g6_sig_expr_set,
>                ^~~~~~~~~~~~~~~~~~~~~~
> 1 error generated.
>
> Commit 674fa8daa8c9 ("pinctrl: aspeed-g5: Delay acquisition of regmaps")
> changed the set function pointer declaration and the g6 one wasn't
> updated (I assume because it wasn't merged yet).
>
> Fixes: 2eda1cdec49f ("pinctrl: aspeed: Add AST2600 pinmux support")
> Link: https://github.com/ClangBuiltLinux/linux/issues/632
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Patch applied with Andrew's ACK.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
