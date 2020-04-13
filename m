Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 325931A61D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 05:48:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=szDcYbJrVlyr22b42u3BI4MAHB1edXXpqbKeIVrGblw=; b=OHQ1uXQonjoKlX
	FfaEjhm9BGkhQOC6s95HsXA5A5lZObp/EalMLb2LnNIDzhc8UNc+pFdITXtGQJjuFbpopM7PTkF1w
	DzEdDPrzgNlDYN9irHr85/ne7QbygDcFBLG8/P/hfCOd6PtowojOXfnfO0i6xu1tX8AvVMS+LE6+F
	ZYP+GzqBh7OkrjXoaKgtNnNy3FuBzX9JExlbN0z+G/lVQXMHL5UVzQaRgf8a7PuOM/BuyKaWbEcPB
	rQYGx5Xna6e+FUYefIklMJehAH01xJcrtWPIn2MB5pM39BPcSAi4o3gokdOV1dQZpXG6fj5uZGxQp
	HwTupjg1pMmfmKTPcRUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNq5D-0002hg-R9; Mon, 13 Apr 2020 03:48:27 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNq4z-0002Wg-Kt
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 03:48:14 +0000
Received: by mail-wm1-x344.google.com with SMTP id g12so914745wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Apr 2020 20:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hOqxL66FbwiBOL3LXXwgTnGg5mLB+6JiHF9fkHXdoqk=;
 b=eHdueZ7zFdz+7TXQqL4OoHrQ7V9wb5fcGX8I25YHfG809MzEvvbGSoSEdNSX6H8zFH
 AVWDCCjYr2GRJ9+p6jm1Jk21Rn/hhBauiTSnYYja62zzwXa70l5vRnwzdhmoW9lsKS9y
 lSRxHU3ZOlx+o/uyXS8yQIKfE82mXM1P93rEnr0hvLmMGgdzFU3tMIXuE0QAHHaEKxV2
 2J1EkElbvYGA+i4IQz8XdaTRhUJwZkAgokdfL/qFq2Uskqo9jrHOMEemtxLMI3Q9YJxS
 fUKT6k/BYYehjZ2hK61znbKtb5T9pFyX6LoVj/Ad2s8qFsDMWeqlIgbKKSX6krRUTXnY
 RtlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hOqxL66FbwiBOL3LXXwgTnGg5mLB+6JiHF9fkHXdoqk=;
 b=lSqM6FH17mcPaoS3JgHwLx7vUAj6r9PxXdFpgbssD/DP2wSNvs3e3195VzVOa+9Ujp
 iftLiNykrWo/63yD7gv9Kk82eqnXOz1SbZJSgH7KDyeugYj88koY5f3L3wHSTAb4ZW4q
 2QmErRehOZDpZRFcsBxBw7winvfGTq5XOrOVADtkSUfKBaw+JLrwM1cshpB70mV37bOv
 V3+MLeB7dpJA5/bpEMeBpwW+zg52w9BbKDZn9VTMRX5H33ySd52vaSdPpKISIq4QraYH
 vd6hF600ddk1YbDNAiMhaM5bAowA5rVbi4MqGzqIb6PlNQ9Lc3EeeqXKsDKeNHw91W6z
 Mthw==
X-Gm-Message-State: AGi0PuYugf993ve5H3rhUdGswSwGLBPyjd2YBwKKlR3sZeWPAAB3Dkvs
 cwkhx0nGRk+x3Cd0vRNBSVhCQVQGWIG0HPCFd+c42Q==
X-Google-Smtp-Source: APiQypLf0tfaasI2t0Fqp4px2QP+9aipCRR/arb5tC7+oxmH737yZT6d6JyD7KYMwXYwrK5n8jc+1giTedXJ2R7CYmE=
X-Received: by 2002:a1c:3b0a:: with SMTP id i10mr16241410wma.26.1586749691152; 
 Sun, 12 Apr 2020 20:48:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200408160044.2550437-1-arnd@arndb.de>
 <CABOV4+UocLs3jLi7-vTi8muiFqACVdxH7Td8=U1ABveLnmyCuw@mail.gmail.com>
 <CA+nhYX0H-czfJ6Kg+FK7X2=hHQK185UOLGoPdEP3nqWQWcA+bg@mail.gmail.com>
 <CAAfSe-s=dZe=6y7UH8CBcddL1BKoLOAvi24RekgdmVv0StxTTA@mail.gmail.com>
 <158657204622.199533.16589832598336244320@swboyd.mtv.corp.google.com>
In-Reply-To: <158657204622.199533.16589832598336244320@swboyd.mtv.corp.google.com>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Mon, 13 Apr 2020 11:47:35 +0800
Message-ID: <CAAfSe-tnKUios-kfN8tiqnen_bchOF5q6FqZgcMj2c_FitS6uA@mail.gmail.com>
Subject: Re: [PATCH] [RFC] clk: sprd: fix compile-testing
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_204813_714014_CF0163FB 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhang.lyra[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Android Kernel Team <kernel-team@android.com>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 LKML <linux-kernel@vger.kernel.org>, Chunyan Zhang <chunyan.zhang@unisoc.com>,
 linux-clk <linux-clk@vger.kernel.org>, Orson Zhai <orson.zhai@unisoc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Will Deacon <will@kernel.org>,
 Sandeep Patil <sspatil@android.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 11 Apr 2020 at 10:27, Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Chunyan Zhang (2020-04-09 20:45:16)
> > We see this broken because I shouldn't leave clk Makefile a tristate
> > compile [1] after changing ARCH_SPRD to be tristate.
> >
> > If we will make ARCH_SPRD tristate-able in the future and you all
> > aggree that, I would like to do it now, and pay more attention to
> > Makefiles and dependencies.
> >
> > I can also make a change like below:
> >
> > diff --git a/drivers/clk/sprd/Kconfig b/drivers/clk/sprd/Kconfig
> > index e18c80fbe804..9f7d9d8899a5 100644
> > --- a/drivers/clk/sprd/Kconfig
> > +++ b/drivers/clk/sprd/Kconfig
> > @@ -2,6 +2,7 @@
> >  config SPRD_COMMON_CLK
> >         tristate "Clock support for Spreadtrum SoCs"
> >         depends on ARCH_SPRD || COMPILE_TEST
> > +       depends on m || ARCH_SPRD != m
> >         default ARCH_SPRD
> >         select REGMAP_MMIO
> >
> > Arnd, Stephen, Sandeep, what do you think? Does that make sense?
>
> Sorry, doesn't make any sense to me. The ARCH_FOO configs for various
> platforms are intended to be used to limit the configuration space of
> various other Kconfig symbols for the code that only matters to those
> platforms. The usage of depends and default is correct here already. The
> ARCH_FOO configs should always be bool. Any code bloat problems seen by
> config symbols enabling because they're 'default ARCH_FOO' can be
> resolved by explicitly disabling those configs.

Ok - alright, please feel free to merge Arnd's patch then.

Thanks,
Chunyan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
