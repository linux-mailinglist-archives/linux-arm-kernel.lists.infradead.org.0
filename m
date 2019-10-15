Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 488FED80A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 22:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uia8P/Vyr+a9t+J83y1zNpXOKyl5N2pkxEE5WuCj9hY=; b=Z4dpJV7ito3gWY
	Uz2skoWpZFW5w762rN3OQnDxBU07RcQy+TWZgB9ph1J9xv5PWpn8j1JcJkh7tsPszAmGtrPM64MWi
	w4YmtVOw2s17Hj9M82Ck6vvOBuPh390WCBiEYEm8bniOBtefLK+TkwC8HzxI0Gmn01cfhHQ0gLxF1
	mCPYtK4dt5vYS0JrxVDjGSCWrujh1CRMPL+iMM11fPZf62qjkiLkHq/4p1IgDr9cU2G99zsN0zhq9
	ww19sGAIzFeY67uU2AX7ygEfvGjCxGHNkIX3XewEdBdyIEg3TjvRPzE7EsSCCXdK6Oot38lJIYTTQ
	ITfT57nCnhegvYVgvxqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKT72-0005E7-Iy; Tue, 15 Oct 2019 20:08:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKT6v-0005Da-Mg
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 20:08:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1A10F2083B;
 Tue, 15 Oct 2019 20:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571170081;
 bh=uc2GHtvslcSS/T/XLupbQ1Q94+ILqCSst1CSsKISRlE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mnqJpeIhIh78vXOjgm2TBqTqBGBA4pdda0fJslVV6xmMOppJmdQ88FqFYmn/BGCrz
 gi62rThwZuwuweL/DT4Xq48ByuV7Ojc8GyWmV5Ke2wysC3GbTc+oZxhrzSzIGiHpAA
 S1C18iP3nJ9CJWkaATgvnQcGzOrNi8LTf9X4kfck=
Date: Tue, 15 Oct 2019 21:07:55 +0100
From: Will Deacon <will@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v2] arm64: entry.S: Do not preempt from IRQ before all
 cpufeatures are enabled
Message-ID: <20191015200755.aavtyhq56lewazah@willie-the-truck>
References: <20191015172544.186627-1-james.morse@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015172544.186627-1-james.morse@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_130801_772088_2BF5F146 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Juri Lelli <juri.lelli@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Julien Thierry <julien.thierry.kdev@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

Patch looks good apart from one thing...

On Tue, Oct 15, 2019 at 06:25:44PM +0100, James Morse wrote:
> diff --git a/include/linux/sched.h b/include/linux/sched.h
> index 2c2e56bd8913..67a1d86981a9 100644
> --- a/include/linux/sched.h
> +++ b/include/linux/sched.h
> @@ -223,6 +223,7 @@ extern long schedule_timeout_uninterruptible(long timeout);
>  extern long schedule_timeout_idle(long timeout);
>  asmlinkage void schedule(void);
>  extern void schedule_preempt_disabled(void);
> +asmlinkage void preempt_schedule_irq(void);

I don't understand the need for this hunk, since we're only calling the
function from C now. Please could you explain?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
