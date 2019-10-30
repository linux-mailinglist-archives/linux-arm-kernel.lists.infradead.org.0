Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9D7E9AAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 12:22:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BKmZ30D4ilN1NJf2aSgBev6lo5+0FZjQ0zoM72LjHAE=; b=RnVNijYsskU3WU
	1dj60jC43YTvsnOY8PyMQkjO5dhY3u9oaoT6JL7t065GX5XfPqedqNJAveu/jhjAwXdOSKDuIgHWl
	oCUB1R94074cf8de2o4pRfV7O8TKoA9uuE/wRNV+9yg23O8UysSze/DuFiSh1MLNh+n6BgJiKljQF
	eC1I5cvbhWAStWQw7pdT38tsIKvs+ST0sFxLeWzNxFFZXgY9qNDVhtTp9YQ6fycuO34Pwp51Apnx1
	3BknU66GkBJr9qo1n/aA2G6PXfr8kYivu19R83DUmTYtcIsVSSyA7vxC72lI6h1av3i0kB7C+Ohfd
	zjN+3xw8aZA4C9pzxnvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPm3E-00079N-IO; Wed, 30 Oct 2019 11:22:08 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPm32-00077i-L8
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 11:21:58 +0000
Received: by mail-lj1-x243.google.com with SMTP id t5so2250247ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 04:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v+5tgIc7NKlP13RxDmMGjXSk9aMJhynDI2P7YlJkgyI=;
 b=ZXEXkY5Ndof4MYocfA3heTD+yLCHvo6iFCvacATfbb7eg1Xl/gb2Ro79f5dWdFcwdh
 65ewjNgF/7eHsTYh2tPSP/Pym1ZrM1o1rTRCVgr5pju5dr/i04YK8L/ELHBW3T/2ekJe
 lic5Qv3eInHuscY8Aqsss33lm/yUpge67W1lPVOcJnzE5wIyOGvT6SchCL9xiSrTPj3y
 RZEL0yuSlqAGpabX9wckGx0HkEp9tchgT1FkptWaGESXz3dJ+M7rfa9IjAfOHaox6zxn
 CNC88dDtFcFL2SvcgjxM3kQ4PKANYLUhjFxo2WnzsOaVpBB16xdPMkL4N81PLiNrKdSs
 jclg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v+5tgIc7NKlP13RxDmMGjXSk9aMJhynDI2P7YlJkgyI=;
 b=YnqIFAp1Tb9PDR0nS5EdfKOrCxeVdSV2Sq9VAozfDu2Sik3+7f5/KHiEjs/hNA9iIP
 3dtfhCPsSg4jn8q02dL36kMPxUeR8LnK4aJWyQqUhnBR5mQzJkjiXcYLirp5RUMxUIzF
 dPEwS68oSEwsTrHWRUwtnxkmDdAd3GFMMeOHoMPB+ksrds0nDqXefu+Tg/gEzrib2msy
 Fg3nC5+rKLCXFYGPQYrl9VoYPHonf3xU3NRJFjrTil9J6yx25CNrq9uY/dFKZ8uGLFzb
 HY35rW2QwHmq4qlAJZ1fLbzMC4EurM7vcRx6E9RmHr69wmK0N+Th2iAdM/PK+TDBkTkX
 HDOg==
X-Gm-Message-State: APjAAAX3PwicNAdq45NciJv6M6KxSIav2QcC9/Fzc/wl06yocFFQj+0P
 mg8THAd2XB0emEExUR2DVhp9i3pOT6zbw/6PLxiheA==
X-Google-Smtp-Source: APXvYqzLsjUmiyMk7mQIqEBkWx+7s2G2Uv4V174MWYGp6z7L0D2DpWf/lUoJ75gf1nkkcauibk3th80Nh4wXgy74MtM=
X-Received: by 2002:a2e:9249:: with SMTP id v9mr2047103ljg.184.1572434514459; 
 Wed, 30 Oct 2019 04:21:54 -0700 (PDT)
MIME-Version: 1.0
References: <20191029180731.2153b90c@canb.auug.org.au>
 <CADYN=9+aqqHVP8tKFFCTKi_zzSt=PW5JVyU2sdaThgrHpYSjzQ@mail.gmail.com>
 <20191030105553.GH25745@shell.armlinux.org.uk>
In-Reply-To: <20191030105553.GH25745@shell.armlinux.org.uk>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Wed, 30 Oct 2019 12:21:43 +0100
Message-ID: <CADYN=9L4i7BWcdhOdG-AFQjuZBU=gv7UjcV6CaO2f0q_KJKhVg@mail.gmail.com>
Subject: Re: linux-next: Tree for Oct 29
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_042156_723662_263B8802 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 linux-trace-devel@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 30 Oct 2019 at 11:56, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> Please trim your replies; there's no need to force everyone to page
> through 500 lines of Stephen's email to get to the content of your
> message.

Right, I'll keep that in mind next time.

>
> On Wed, Oct 30, 2019 at 11:25:19AM +0100, Anders Roxell wrote:
> > When I'm building an arm kernel with this .config [1], I can see this
> > build error on next tag next-20191029 and next-20191030. Tag
> > next-20191028 built fine.
> >
> >
> > $ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -skj$(getconf
> > _NPROCESSORS_ONLN) O=obj-arm-20191029 zImage
> > arm-linux-gnueabi-ld: kernel/trace/trace_preemptirq.o: in function
> > `trace_hardirqs_on':
> > trace_preemptirq.c:(.text+0x2a0): undefined reference to `return_address'
> > arm-linux-gnueabi-ld: trace_preemptirq.c:(.text+0x2dc): undefined
> > reference to `return_address'
> > arm-linux-gnueabi-ld: kernel/trace/trace_preemptirq.o: in function
> > `trace_hardirqs_off':
> > trace_preemptirq.c:(.text+0x468): undefined reference to `return_address'
> > arm-linux-gnueabi-ld: trace_preemptirq.c:(.text+0x494): undefined
> > reference to `return_address'
> > arm-linux-gnueabi-ld: kernel/trace/trace_irqsoff.o: in function
> > `start_critical_timings':
> > trace_irqsoff.c:(.text+0x798): undefined reference to `return_address'
> > arm-linux-gnueabi-ld:
> > kernel/trace/trace_irqsoff.o:trace_irqsoff.c:(.text+0xed4): more
> > undefined references to `return_address' follow
> > make[1]: *** [/srv/src/kernel/next-testing/Makefile:1074: vmlinux] Error 1
> > make[1]: Target 'zImage' not remade because of errors.
> > make: *** [Makefile:179: sub-make] Error 2
> > make: Target 'zImage' not remade because of errors.
>
> Known problem with one of Ben Dooks patches, which was dropped very
> quickly when Olof's builder spotted the issue...

aha, I missed that.

> though it looks like
> I didn't push it out.

OK.

Cheers,
Anders

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
