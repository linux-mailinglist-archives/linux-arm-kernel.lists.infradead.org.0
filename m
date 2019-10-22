Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44974E03F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 14:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAopJhS9INeIm9Y6KxBzXWv9vMUAC8uNcjjjqal5MyQ=; b=HtVZe9TGejtKA/
	rBrryIg7K6Y/ee/ytPZicolR+gSh382Y/ZQCdB+Ktl1V6swvp+1HQec8rXHf07mItf8VxetDPVAD5
	er6OAFFxv8VUa25TMBGcMIo521c5kBRkbMeIO2hu+7xa56Ot+eAs4xqITo/yTkzvw22ifr1+6UZMn
	nTzgiazjp8YtVIYnT017VKLxmCeZy97v6ix6iMX+LHQUdWiSHPSRCbelRce8NT/f4XItwqRujzDDm
	ByLuGpm7cC4NRT57YQXZExV/NohxmL6Wn4N2PGCK209LBXzbKTcpsVmTHRNIMBj/iGOYGDf9Lgknj
	iuLlg232ipdGTBXnGtiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMtQW-0006HL-QA; Tue, 22 Oct 2019 12:38:16 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMtQM-0006Fy-Al
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 12:38:07 +0000
Received: by mail-yb1-xb41.google.com with SMTP id z2so5083512ybn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 05:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vqe+JDf7lxru1jxAApix4PrWiqgoGBD8c1cyEEgcqrE=;
 b=JL/FNY8AIG2cFwuPUArErStvGoncUr7Ku9MMD8uZ69Q1G21BYkrRLbsIlUKYSn7H06
 2dDG5woly8l7mPCHbZAmoh5ZSGfTpAo0dhPJxNveH0f0PYcgM084O9WM8pfugoP2zztG
 qYSybo2fclyUs1/KIcUQ9Ub3nff1hY8cZwtJkJESpRTMdxW7R+f/zkSMjYPfN1Lw8PZ5
 gk0CGIY3m08Ip/9jiD5QVAhpFMktXVP6j5WdQyAX4l+wmSB/ffucACjcfHd62GXi9vsl
 vmea+/YMSkID9Xy95yMwTcYYxb4f7LkXC72SbfEsdCdc5dpGagYwfnhssRD0bnU5uQPj
 hnLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vqe+JDf7lxru1jxAApix4PrWiqgoGBD8c1cyEEgcqrE=;
 b=Vh7a63FSgibFp0oxHqlpg7AXaWU/J6lLa7dj0bI6+Uv21HewZ5tPmL1F0+TcGUDAH/
 HGHz58NGIpofDFCWholsl/zAKKh+sqmxaxLsB5zbyQAAJcrOggDseindYXezcS3PRFfN
 YNu/cYi+8yPJDNgwBlYydtive5XH8RSvLVDxRaQ68969hUV+sMcgn7GTsE8EduHsUNu0
 DKtehOlT8QlahRXzGECvgXpXZz+TdR+AultWCWxvvnUKEWiYmpwucm8rjGGbc0V4VcXn
 glWK7pDpDXz6pHO2aI2ub1w9zPGLRBDEvINzicXbHgXt9N3rPX/2DYbBHgMKuiyfk9lz
 P0Tw==
X-Gm-Message-State: APjAAAUQk/gyxggZxj6DVt3hyBg/qncl8AwpaD5HvHG33KJ5Xduh/MNs
 ldDno2vFlYxZ1m6OhARbmk2Rhw4wg1cXxfwZDYE=
X-Google-Smtp-Source: APXvYqwM6+kvBzSdwrfHuERc1tibLhtRgB8VQ5xXy9dY5J59vNeFeO9D4XNBXJoXCz0aNpLTsJet6lWlQ9b83kq06Xw=
X-Received: by 2002:a25:5386:: with SMTP id h128mr2145519ybb.362.1571747883623; 
 Tue, 22 Oct 2019 05:38:03 -0700 (PDT)
MIME-Version: 1.0
References: <1569483508-18768-1-git-send-email-candlesea@gmail.com>
 <20191022122550.GA17232@willie-the-truck>
In-Reply-To: <20191022122550.GA17232@willie-the-truck>
From: Candle Sun <candlesea@gmail.com>
Date: Tue, 22 Oct 2019 20:37:51 +0800
Message-ID: <CAPnx3XP5nEMJwsT0tKD-Lm1MRf0cfR5KLfz0to+ZZ3pin6tEnA@mail.gmail.com>
Subject: Re: [RESEND PATCH] ARM/hw_breakpoint: add ARMv8.1/ARMv8.2 debug
 architecutre versions support in enable_monitor_mode()
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_053806_371982_FB9026AE 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (candlesea[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, linux@armlinux.org.uk,
 Candle Sun <candle.sun@unisoc.com>, lkml <linux-kernel@vger.kernel.org>,
 Nianfu Bai <nianfu.bai@unisoc.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 8:25 PM Will Deacon <will@kernel.org> wrote:
>
> On Thu, Sep 26, 2019 at 03:38:28PM +0800, Candle Sun wrote:
> > From: Candle Sun <candle.sun@unisoc.com>
> >
> > When ARMv8.1/ARMv8.2 cores are used in AArch32 mode,
> > arch_hw_breakpoint_init() in arch/arm/kernel/hw_breakpoint.c will be used.
> >
> > From ARMv8 specification, different debug architecture versions defined:
> > * 0110 ARMv8, v8 Debug architecture.
> > * 0111 ARMv8.1, v8 Debug architecture, with Virtualization Host Extensions.
> > * 1000 ARMv8.2, v8.2 Debug architecture.
> >
> > So missing ARMv8.1/ARMv8.2 cases will cause enable_monitor_mode() function
> > returns -ENODEV, and arch_hw_breakpoint_init() will fail.
> >
> > Signed-off-by: Candle Sun <candle.sun@unisoc.com>
> > Signed-off-by: Nianfu Bai <nianfu.bai@unisoc.com>
> > ---
> >  arch/arm/include/asm/hw_breakpoint.h | 2 ++
> >  arch/arm/kernel/hw_breakpoint.c      | 2 ++
> >  2 files changed, 4 insertions(+)
>
> [...]
>
> > diff --git a/arch/arm/include/asm/hw_breakpoint.h b/arch/arm/include/asm/hw_breakpoint.h
> > index ac54c06..9137ef6 100644
> > --- a/arch/arm/include/asm/hw_breakpoint.h
> > +++ b/arch/arm/include/asm/hw_breakpoint.h
> > @@ -53,6 +53,8 @@ static inline void decode_ctrl_reg(u32 reg,
> >  #define ARM_DEBUG_ARCH_V7_MM 4
> >  #define ARM_DEBUG_ARCH_V7_1  5
> >  #define ARM_DEBUG_ARCH_V8    6
> > +#define ARM_DEBUG_ARCH_V8_1  7
> > +#define ARM_DEBUG_ARCH_V8_2  8
>
> Looks like you can also add:
>
> #define ARM_DEBUG_ARCH_V8_4     9
>
> and treat that the same way. With that, and a fix to $SUBJECT:
>
> Acked-by: Will Deacon <will@kernel.org>
>
> Please put this into the patch system [1].
>
> Will
>
> [1] https://www.arm.linux.org.uk/developer/patches/

Thanks, Will.
I will do it ASAP.

Best regards,
Candle

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
