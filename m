Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF16A1D628D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 18:17:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YW1YKvzDP9mb0CEY8Y2eW7QXpPzZZF0Ddsvc3CcvyC8=; b=HJbJTiPT0lfRNQ
	urmDMqyuINlbY199VzOVujbyoBlkr7mQAJ3bxDX1nhIPYlIpuDOKTqSQIGWhv6r8SN0iB6hG8ZHYU
	8RUOebaIYb2L7fOVLjsuGjBsUtMizXnzgi5Lh9XiIIhVyON26KGaowVUb8n+B7VZ51ytW0Xla7uLD
	x3YEbbJTZMmZkRAJzE+X6W//j70QQnPTiAoV+9efZ97aY6h7HNNYRjitQ0k7QMNbGCKN0+3Oi+V2J
	Z+uxOO1aLiloeUwPPnEKoh7Pk4u4FjW4V8Kii2AxLMa+EqP3CU3YqQhgXxl6XY13NKn37WC1UD880
	+rlv+YJo/spmCyaQJNAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZzVW-0008QP-3N; Sat, 16 May 2020 16:17:50 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZzVO-0008PO-9l
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 16:17:43 +0000
Received: by mail-vs1-xe42.google.com with SMTP id a5so3086807vsm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 16 May 2020 09:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WhzEA2rdzJ/qx3T7SpNtVuwJgDYbiJVdLBcQA3bNs8A=;
 b=YgBqetjJuGu+U2CSr3IXT7S0VcLJZklSs5FOWo9s5CkvscHIUC64gcW7V485YOzOC1
 NNuphD5MyAq798pOdV2gcfVByhcfriBSf/54YWMa9faV1YKswN8X3eFgyNz3+hAG8l5L
 NtDorD3CsQFCeDSaWHDs6bojlLvtos36aOUvQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WhzEA2rdzJ/qx3T7SpNtVuwJgDYbiJVdLBcQA3bNs8A=;
 b=o7uDo+71BTfb9idt1eerDOnprkQAqjSCFzacUtHTnjT9HISJcYTu1+aXI3oFfZ0oef
 XHOC6CuegbY5tiAQkl3wTJT4iwpJlD3jekNC0IlXwFr3CakVKwvJH1j0Y4cLHNaQd3tu
 CXZnmB48JZaqa+WZ0nIImXdUzTSbFgVOSJ3WxDpYzHwbhVbpTAlUpI9LhekQ45hYOWBZ
 l/yzny8/uVi5FsRPCoCgUM7bQLbNDg5vbSTQba2l/uOigdOCChXW1q4u0UmuBnKI697R
 pRyhwy84eyattr+cZlmaGbhOiiSWAbnjSKHRX6ZS5DtVjxzDhd9UcTwjVrwvNsK3ECNh
 jd5Q==
X-Gm-Message-State: AOAM531yeUfhzs+2+qna5bBlnDP9FDlg10Bi99jDojgFrCQri18V99SR
 ycU5YK54tYn6yyD1lDyJkBR5K7z9xCY=
X-Google-Smtp-Source: ABdhPJw3LdsFUz8KaDL9wt+kltbpdFc6qAJjCnfkm0SCwzyyHM1JyI3l6X2jAcfGIo+jy5e24FL9Lw==
X-Received: by 2002:a67:e9d2:: with SMTP id q18mr6217965vso.234.1589645857811; 
 Sat, 16 May 2020 09:17:37 -0700 (PDT)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com.
 [209.85.221.181])
 by smtp.gmail.com with ESMTPSA id i4sm1479576uap.11.2020.05.16.09.17.36
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 May 2020 09:17:36 -0700 (PDT)
Received: by mail-vk1-f181.google.com with SMTP id w188so1378821vkf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 16 May 2020 09:17:36 -0700 (PDT)
X-Received: by 2002:a1f:4e46:: with SMTP id c67mr5887506vkb.92.1589645855867; 
 Sat, 16 May 2020 09:17:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200509214159.19680-1-liwei391@huawei.com>
 <20200509214159.19680-3-liwei391@huawei.com>
 <CAD=FV=VVz4QnQ6AWAsCMxw6Zne6es0omvJ--Gnag=PXkMPt42g@mail.gmail.com>
 <d5bb9ccf-6047-13d9-45b3-18421629e83f@huawei.com>
In-Reply-To: <d5bb9ccf-6047-13d9-45b3-18421629e83f@huawei.com>
From: Doug Anderson <dianders@chromium.org>
Date: Sat, 16 May 2020 09:17:21 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XMSsMFpPzBckkWhP6iDR4WM+qdV7J=aQCBbbBit_rDwg@mail.gmail.com>
Message-ID: <CAD=FV=XMSsMFpPzBckkWhP6iDR4WM+qdV7J=aQCBbbBit_rDwg@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: Extract kprobes_save_local_irqflag() and
 kprobes_restore_local_irqflag()
To: "liwei (GF)" <liwei391@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_091742_356760_D316ACC0 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Daniel Thompson <daniel.thompson@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, liwei1412@163.com,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Jason Wessel <jason.wessel@windriver.com>, Will Deacon <will@kernel.org>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sat, May 16, 2020 at 1:47 AM liwei (GF) <liwei391@huawei.com> wrote:
>
> >> -               kprobes_save_local_irqflag(kcb, regs);
> >> +               kernel_prepare_single_step(&kcb->saved_irqflag, regs);
> >
> > Is there some reason to have two functions?  It seems like every time
> > you call kernel_enable_single_step() you'd want to call
> > kernel_prepare_single_step().  ...and every time you call
> > kernel_disable_single_step() you'd want to call
> > kernel_cleanup_single_step().
> >
> > Maybe you can just add the flags parameter to
> > kernel_enable_single_step() / kernel_disable_single_step() and put the
> > code in there?
> >
>
> As kernel_enable_single_step() / kernel_disable_single_step() are also called in
> breakpoint_handler() and watchpoint_handler(), i am not sure it's a right thing
> to put the daif flag prepare/cleanup into them, especially we don't have a context
> to save the flags.

I think you misunderstood what I was suggesting.  Maybe better with
examples?  I was suggesting doing this:

kcb->saved_irqflag = kernel_enable_single_step(regs);
...
kernel_disable_single_step(kcb->saved_irqflag, regs);

To me that seems better than what you have now:

kcb->saved_irqflag = kernel_prepare_single_step(regs);
kernel_enable_single_step(regs);
...
kernel_cleanup_single_step(kcb->saved_irqflag, regs);
kernel_disable_single_step();

...or am I confused?

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
