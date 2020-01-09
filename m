Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B27CD135C71
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 16:18:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlCfXTaCh00hm9qW9LfHMrWXXXy47MxNb5qVteWFKw0=; b=B2UM4ocWd4HdXU
	aVvngwePlRdrImCXuUucRUu++LL36NuKRyXeFhiX8AOla5Nc3CVaYSR0OBweHh7ml4YGjbSF+ZrcY
	JtghxMi5F53+VxxdcHyJYv0dOY1odW13NEc7+1kp42AkRL6acqVcP2nNX7+WlF7Jvbq+oLmgbk1tr
	sKYcPD4lF94XYKsGOP/aOAjUPBHUjvTWc8P/d0kSc0cNpguFHOxCDzNYSWWmc9WB2l4E2tsWltCUF
	22nbxxZIa1QdzkVykzL+TvncdngzF5Wk1hEg7DjpSX8/rzmoU5qkxW6aS+4TcXZDuhb+bpi1v+EDI
	liYnSQLIOJI1aim+sCBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZZZ-0000M8-Sa; Thu, 09 Jan 2020 15:18:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipZZS-0000LM-Tu
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 15:18:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 418E4206ED;
 Thu,  9 Jan 2020 15:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578583082;
 bh=wwTkulcWNrf8/WnDIcLNGlEiuiK3aNjEJ0Ao6P3jLx8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V6tQ2nfhWozNQ3WNBxLm/6dfX9TD28B9GdBZdjeTZQ6hOapDoVOaApZajf9G8DOWE
 +eISC137+7dtioAZSNt3iRl/UVkOQKuB/W8iThl/6EcKMphY/hp2e6LQc+anmIdiEh
 Ijd6kQgGCuGIeuG2Y5cPSqWBV0qUYoPUkn7Y/UTs=
Date: Thu, 9 Jan 2020 15:17:57 +0000
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64: Set SSBS for user threads while creation
Message-ID: <20200109151756.GG12236@willie-the-truck>
References: <1577106146-8999-1-git-send-email-sramana@codeaurora.org>
 <20200102180145.GE27940@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102180145.GE27940@arrakis.emea.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_071802_988430_6F699F6E 
X-CRM114-Status: GOOD (  14.73  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: maz@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Srinivas Ramana <sramana@codeaurora.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 02, 2020 at 06:01:45PM +0000, Catalin Marinas wrote:
> On Mon, Dec 23, 2019 at 06:32:26PM +0530, Srinivas Ramana wrote:
> > Current SSBS implementation takes care of setting the
> > SSBS bit in start_thread() for user threads. While this works
> > for tasks launched with fork/clone followed by execve, for cases
> > where userspace would just call fork (eg, Java applications) this
> > leaves the SSBS bit unset. This results in performance
> > regression for such tasks.
> > 
> > It is understood that commit cbdf8a189a66 ("arm64: Force SSBS
> > on context switch") masks this issue, but that was done for a
> > different reason where heterogeneous CPUs(both SSBS supported
> > and unsupported) are present. It is appropriate to take care
> > of the SSBS bit for all threads while creation itself.
> > 
> > Fixes: 8f04e8e6e29c ("arm64: ssbd: Add support for PSTATE.SSBS rather than trapping to EL3")
> > Signed-off-by: Srinivas Ramana <sramana@codeaurora.org>
> 
> I suppose the parent process cleared SSBS explicitly. Isn't the child
> after fork() supposed to be nearly identical to the parent? If we did as
> you suggest, someone else might complain that SSBS has been set in the
> child after fork().

Right, I'd expect the parent SSBS to be inherited when we copy the pstate
field along with the other regs, and I think this is the correct behaviour.

Is that broken somehow?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
