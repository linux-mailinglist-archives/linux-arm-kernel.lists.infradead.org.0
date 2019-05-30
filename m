Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAFE2F7E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 09:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cNCpZVkScUOQH2t2pwyjzQSbJBRw07JgjzKAMxm7DoY=; b=s009zYDAFG1Ltl
	1bJCQxjDQxvg3xhLjT9n/AHjsgBXn3xrZ835fi28F1qNLXxfj8+ViHWcT7TAv6TwQPapvUXP7IiWG
	SaXBGiPY9dHWN46YVoRbm2g+kjch8XdZg1IJlEOsqRBt/hbFNoWILmNgplavtFertKzQa4EqNsKlo
	52pWcLPZI2JFsJkuACyeqi351w8dzmascJHv0FcBowMyS6Y4T3LXBWqOXRi43Mh230GaaymmYoHbF
	njAI50P2vxXAI0+K3t9gHAN8e1PGQtRg3iKfRs2y0WrbH26LW5dggTyrO9GxX7U0H65o2kf1r/F/r
	F3IpAWUR887NE6tX+/ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWFRH-0006yV-IQ; Thu, 30 May 2019 07:25:27 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWFRA-0006y4-RW
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 07:25:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E2E54A78;
 Thu, 30 May 2019 00:25:19 -0700 (PDT)
Received: from brain-police (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 02DCB3F690;
 Thu, 30 May 2019 00:25:16 -0700 (PDT)
Date: Thu, 30 May 2019 08:25:07 +0100
From: Will Deacon <will.deacon@arm.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [RFC v2 0/7] arm64: return address signing
Message-ID: <20190530072507.GA9955@brain-police>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <201905292004.3809FBAA66@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201905292004.3809FBAA66@keescook>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_002520_896193_EB5FD77A 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "Diogo N. Sampaio" <diogo.sampaio@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Luke Cheeseman <luke.cheeseman@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 08:09:23PM -0700, Kees Cook wrote:
> On Wed, May 29, 2019 at 08:03:25PM +0100, Kristina Martsenko wrote:
> > This series improves function return address protection for the arm64 kernel, by
> > compiling the kernel with ARMv8.3 Pointer Authentication instructions. This
> > should help protect the kernel against attacks using return-oriented
> > programming.
> 
> Can you speak to whether this feature should be enalbed in addition to
> or instead of the standard stack canary option?

Hmm. That's a really interesting question. Given that PAC is optional in the
hardware and behaves as NOPs on older CPUs, I've have thought that we'd need
to continue enabling stack canaries regardless. However, that then raises
the obvious question as to whether we could patch out the canary code if we
detect PAC at runtime, which probably needs compiler help...

Then again, perhaps there's benefit in having both features enabled.

So I think I agree with your question :)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
