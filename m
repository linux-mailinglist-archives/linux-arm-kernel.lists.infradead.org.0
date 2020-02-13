Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AD015C56A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 16:57:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7cle9lgpU2aB/ZppDAkutsGcM/8AYPyajlrLHqNeXg=; b=SWXn7vPAHeR27A
	rDMKhz+K2QcY/MPvnF8yYihotgVZbv2aH+oNp5TwPvIYMci4bGUWm2XBYSS7Q6GUT+2iZOgbe3wYg
	e63JUkM7IWd6IQFLk5+Np4LfIvPSLDDZPS+gEfI+eMg0N7m+U7JaLEP2GSARG1TYKjiSMmVPfF01s
	cxWiOvvU+WbIZSWLNKUGZng12V8U0lP6wrm53il+SvbrxGdYBRboBw0zV5zRmoKITZ/TtgAVAFZ8E
	xk9hjpPU05rZWEuRNKghHMPfPMuWcL5AF06WpIxuncykHCoBRylkzToS7HcQ2PY22sgxUs049ecoV
	KTiJIWn9bkczX6YOfmsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Grp-0003IK-AO; Thu, 13 Feb 2020 15:57:29 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Grh-0003HD-Vg
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 15:57:23 +0000
Received: by mail-ot1-x342.google.com with SMTP id 66so6012187otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 07:57:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iHd9eEOMss4ignfVOBjMhQvhmaQpxOZedD/hOOnSljE=;
 b=aW4NpPK/CUlNtpEKVSyOptCzOOAEb2UBHdaa2/6OuNkGeDyA/3Ju9hy4bWbsVCTZG2
 HcS2gB+D/ewN3JPKxLD9z/UO/hKQLyHqtZSVOrVNmQFS7sd31qPbQHktwPrdzlHoBTaQ
 ZFHGf/SCImB3lwFh0KIdsJ8b3l2+vU9TRI/9wlxTO9+8s+tdN+BH6p8vuyXjNeSwA7w0
 f1BIjIQA9oUVq2/se0P5dfZmzcBbxr+v1zB7PxiKJAEw1l57/9npFLS22goXHfHH3l2j
 w+WBxEKnHNvvco1oGaxKSTDThGtAQkulVUfNkOtkAgDMGUOeYGWyxz6XOfe5u0o2+AyY
 o4GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=iHd9eEOMss4ignfVOBjMhQvhmaQpxOZedD/hOOnSljE=;
 b=Lr+IFyeXniUF46678zdR0sLjVtsizPuIluBNX8bB8DmQnOiOJ0f1WD4hv1Cs658/Lz
 OuQUBHhX6i3AMa13tTGnsYFEOc9E9GiyMmPqin2VdwMjGqYTw9Q3JVvlylY/d35XE1ur
 2yBssy+GtX1FjNiIbMg7RKSzBZ8cxDfC34AOaNMKxZh/+KAJeZH1NlYfR+poV0FXS2wr
 PbIVMl9TIWTgsJNZGE0Z7FYTQ/4S0GvQV6+zURkdYs6A5kv8HUFdSl9UzBxKm2m1WK5d
 yHm5Jj/7iOm6SNtXy7TMKaudvERRaT9rLgCKlowoBbRfbDNoZyR9tkYKMIcMOMaGekD8
 wqkw==
X-Gm-Message-State: APjAAAU1krlprEme5pBEDcI9wkZFS6OvuB38XKawkoCOAnfrSF6yquAX
 54l59Eo851HrE8/Ta/qmIwGiVL8=
X-Google-Smtp-Source: APXvYqwW5dr9VVGCv7dnexVl4FihX0lzD1j3rmacCX9mxpMnvRdb7Q/x+CX/eDQeZcBknsVcjEBzxQ==
X-Received: by 2002:a9d:7e99:: with SMTP id m25mr13475107otp.212.1581609439644; 
 Thu, 13 Feb 2020 07:57:19 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id m15sm914229otl.20.2020.02.13.07.57.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 07:57:19 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:d0c7:64ad:d8cf:b1d2])
 by serve.minyard.net (Postfix) with ESMTPSA id 97B2A180053;
 Thu, 13 Feb 2020 15:57:18 +0000 (UTC)
Date: Thu, 13 Feb 2020 09:57:17 -0600
From: Corey Minyard <minyard@acm.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [RFC PATCH 0/2] arm64 kgdb fixes for single stepping
Message-ID: <20200213155717.GR7842@minyard.net>
References: <20200213031131.13255-1-minyard@acm.org>
 <20200213101057.GB1405@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213101057.GB1405@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_075722_045651_CF5E014B 
X-CRM114-Status: GOOD (  24.04  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Reply-To: minyard@acm.org
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 10:10:58AM +0000, Will Deacon wrote:
> On Wed, Feb 12, 2020 at 09:11:29PM -0600, minyard@acm.org wrote:
> > I got a bug report about using kgdb on arm64, and it turns out it was
> > fairly broken.  Patch 2 has a description of what was going on.  I am
> > using a Marvell 8100 board.
> > 
> > The following patches fix the problem, but probably not in the
> > best way.  They are what I hacked out to show the problems.
> > 
> > I am not quite sure how this will interact with kprobes and hardware
> > breakpoints which use the same code, but they would have been broken,
> > too, so this is not making them any worse.
> 
> This should all be handled by kgdb itself, not by changing the low-level
> debug exception handling. For example, the '&kgdb_step_hook' can take
> care of re-arming the step state machine and kgdb can also simply disable
> interrupts during the step if it doesn't want to step into the handler.

How can kgdb disable the SS bit in MDSRC, or re-enable it on the right
CPU, without doing this in the exception handling?

I'm actually thinking that this may be a hardware bug.  Looking at the
ARMv8 manual, it looks like PSTATE.SS should be set to 0 if the
processor takes an exception.  That's definitely not happening; if I do
an instruction step from, say, sys_sync(), it gets the single-step trap
on the instruction after the PSTATE.D bit is disabled in el1_irq.

Even so, I think the migration issue is still a problem.  If you do an
eret set up for single-step, and interrupts are on, and you get a timer
interrupt, it could migrate the task to a different CPU if
PREEMPT_ENABLE is set, right?  If so, the MDSRC.SS bit will be set on
the wrong CPU and the single step trap won't happen.  That will break
kprobes, too.

You mention turning off interrupts in kgdb when single-stepping, which
you could do and it would solve this problem.  But it wouldn't solve the
problem of taking a paging exception, which you want to take in this
case.  And you could still migrate on a paging exception.  So I don't
think disabling interrupts is a good solution.

I don't see a solution besides clearing MDSCR.SS on an el1 exception
entry and conditionally setting it on an el1 exception return.  It might
be better to have a thread flag to do this instead of depending on the
setting of that bit; I'm not sure how expensive accessing the MDSRC
register is.

Setting SPSR.SS on subsequent single steps is definitely an issue, but I
can split that out into a separate patch.

-corey

> 
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
