Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 259F017EFA5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 05:27:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2U3PqGbdQdHSAIDjRIcg2MEh5cTMUOwu7oeeFujw7Y=; b=D/2uCJRBJcUI6n
	3wCPSSr72Tz6gQTbvemFT3vNETlLSrcS2mGpVq1SlBm/WpPx8YceCavgYivoXdGZx2LAt9zZYEXoO
	5vqjfCd+l1bz8Z7Uw4rErijsF9bARm3dt2OcKfFdOWUNxh3VqFS4W1bySfghnoLpUzBN5VWswhA6y
	7ahpyLvtQVMvyfCH9JDHQoIY3dlCxDIn3hkj3me/qniSa1LL8Iy3y+WGJF0SXtYPWvq52qUJamvbH
	IofXDu+p7pJ8mYMPY4FU/q+nVcEzD7ilyRv69IfoXjTLO9wD4fpWvJMoiU7Osvsisb02qh4BfYzd5
	GwH+9Hb7ZMpcJQScM0sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBWUi-0007WG-Fj; Tue, 10 Mar 2020 04:27:52 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBWUY-0007Vw-QB
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 04:27:44 +0000
Received: by mail-pf1-x444.google.com with SMTP id w65so5331517pfb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 21:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=C1l6HjZC0sgmgnUyratSp4inFmRTQZVJyoMKu8hDcSA=;
 b=vso8Su7fdlIlzNH9YFMFH5fNnH4gku7soDfmnTr+2lqkUbAFfY1TMtZmVzX9D181kw
 GJibMG2ILmZzmpxkK/RDqbX9FTnXnd9mmHJd/0j8Yqs+nJZI9xor1ajaye7cFF1+e9Xx
 1SHHAckPT1AIgCO49r956ndOEmYE3nHsgYzWCBlutZBR6uKkMRPCp/sEOdPLzsfJ/I71
 0nrYXRkQmeH3EwZUCO77iWPu75iubzgPdDBkrpMFCw17UR8Sr637eZn0o/Rf3k3r0KKN
 9eDGOm6KUtUnQkH/jVU/be08kRh5A03/b9+xUMbyDTzZLeBL3Ye/UP8L8ywC5Aagevqj
 Ic5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=C1l6HjZC0sgmgnUyratSp4inFmRTQZVJyoMKu8hDcSA=;
 b=QQUuaXzFJlAIKgSTDw5xB6PIHTrq/d4aBLXQLnQyuHoPgf1vGqsW87j8GJOHnqMZSK
 BHEN80hF6mw0jLl9smAjL7GI17oWu1YB1aJs0cGxuQjyhKQTAADn3FEZEHvPi4fHNkTX
 Xm+zdGLAUfmWbRdJuZBGVsSqeEin6x78fMq/633O8+il2Vaqj30VGhc/nE5aVl0Tppps
 A+Rfy7q7SWhQd4ZBo7dP+9Xupwlwq0W3CbZCkimrwM4VDkKPGiSarg5Tdx0xnuCNs0ke
 EV/cc6F7NdyxstFJqJ/9Yv2/ypb6oPqUmLW9cMiU0sgvV9zeXvPCWsPs80GatHU9MoFk
 AFfg==
X-Gm-Message-State: ANhLgQ1JvR1rkmaDiXPZ6mw2W2nMf5H7HNNb/DS5rW6LiHvPUeOygpri
 tSuxSMHge/8+xo/mh1iwUYH1UA==
X-Google-Smtp-Source: ADFU+vvXQ+QpS438H68hfpmZX/YRRGV9nQnNQNVwr3CqfTOUPOMN9I6CdQrKvqRjiZxRpG1cZ2Up8w==
X-Received: by 2002:aa7:97ba:: with SMTP id d26mr19515920pfq.65.1583814461641; 
 Mon, 09 Mar 2020 21:27:41 -0700 (PDT)
Received: from localhost ([2620:15c:211:0:fb21:5c58:d6bc:4bef])
 by smtp.gmail.com with ESMTPSA id ev22sm1009815pjb.4.2020.03.09.21.27.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 21:27:41 -0700 (PDT)
Date: Mon, 9 Mar 2020 21:27:39 -0700
From: Sandeep Patil <sspatil@android.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 1/2] arm64: change ARCH_SPRD Kconfig to tristate
Message-ID: <20200310042739.GB260998@google.com>
References: <20200305103228.9686-1-zhang.lyra@gmail.com>
 <CAMuHMdVyy3v24zBxJFe5hYdnzdj80dvE2Z9GO4=AC1N8fD64pw@mail.gmail.com>
 <CAAfSe-spu2oNmfEYt+WQvRQy1bCC0e1MFjbUyBAFzghd5XNBfw@mail.gmail.com>
 <CAMuHMdV1qQZF-kAwbcxhHQZZ9hs0dG-OTZ2NcB25Jtra6ii5iA@mail.gmail.com>
 <20200310041903.GA260998@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310041903.GA260998@google.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_212742_851507_CFFDAB43 
X-CRM114-Status: GOOD (  24.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Android Kernel Team <kernel-team@android.com>,
 Catalin Marinas <catalin.marinas@arm.com>, saravanak@google.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Baolin Wang <baolin.wang7@gmail.com>,
 Orson Zhai <orsonzhai@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 09:19:03PM -0700, Sandeep Patil wrote:
> Hi Geert,
> 
> On Mon, Mar 09, 2020 at 11:32:06AM +0100, Geert Uytterhoeven wrote:
> > Hi Chunyan,
> > 
> > On Mon, Mar 9, 2020 at 9:32 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > > On Mon, 9 Mar 2020 at 16:03, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > On Thu, Mar 5, 2020 at 11:33 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > > > > From: Chunyan Zhang <chunyan.zhang@unisoc.com>
> > > > >
> > > > > The default value of Kconfig for almost all sprd drivers are the same with
> > > > > ARCH_SPRD, making these drivers built as modules as default would be easier
> > > > > if we can set ARCH_SPRD as 'm', so this patch change ARCH_SPRD to tristate.
> > > > >
> > > > > Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
> > > >
> > > > Can you actually boot a kernel on a Spreadtrum platform when all platform
> > > > and driver support is modular?
> > >
> > > Yes, even if all drivers are modular.
> > 
> > Cool. No hard dependencies on e.g. regulators that are turned off when
> > unused?
> > 
> > > But I hope serial can be builtin, then I can have a console to see
> > > kernel output before loading modules.
> > 
> > No dependency on the clock driver?
> > Oh, I see you have a hack in the serial driver, to assume default
> > values when the serial port's parent clock is not found.  That may
> > limit use of the other serial ports, depending on the actual serial
> > hardware.
> > And on Sharkl64, the serial port's clock is a fixed-clock anyway, so
> > you don't even need the hack.
> > 
> > But in general you cannot rely on that, especially if your SoC has clock
> > and/or power domains.
> > 
> > BTW, what about the watchdog driver? That one does need a clock, and
> > loading it too late will reboot your system.
> > 
> > > Also, this's what Google GKI [1] asked :)
> > >
> > > Regards,
> > > Chunyan
> > >
> > > [1] https://arstechnica.com/gadgets/2019/11/google-outlines-plans-for-mainline-linux-kernel-support-in-android/
> > 
> > Let's see how having everything modular works out on an SoC where all
> > hardware is part of a clock and power domain.
> 
> I'm curious, are there any problems that we should be aware of? We know about
> the regulator sync state and consumer-supplier dependencies. [1]
> 
> (Adding Saravana inline)
> 

(oops, forgot to paste the link to presentation)
1. https://linuxplumbersconf.org/event/4/contributions/402/attachments/320/544/Solving_issues_associated_with_modules_and_supplier-consumer_dependencies.pdf

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
