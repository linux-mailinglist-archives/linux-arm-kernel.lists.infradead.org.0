Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7994C3593
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 15:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/BCKapDlksFCh3D99QRUX6dI7yi1HW/VJoH0dS1HmdM=; b=jm+zuu327FekpH
	8hN7J111mYNIui28Q4n+pn/Wv9e6f4sJJiLZZvX6PzA5ORNQk1LjGi33+hQLowZ2txmsKdd1gTLGR
	nRiqgnxbJXLoVF0h+eSZei14sAKMSu2nZOXBaDmvpcimWeI2yKcbI2JZT50URSiKjZV6WBkCBuKic
	nac9wRS8yH2cl3MANEmC0uhCipaLCUNUKLSLBHGZyawAM4PqWqipYVaC1mrP2U7maPCCsTaj7YXFx
	dCvpzTK2EoTyC/cci7xYQJe5gS0GgPp6xzqfTv3Un05aBqusNbH0L1i5DT/JIijO7vnEifmfJUovU
	c/PUM73YWgW6+bgeRQ9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFIBS-0006HF-Sp; Tue, 01 Oct 2019 13:27:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFIBK-0006GJ-P4
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 13:27:11 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B89520842;
 Tue,  1 Oct 2019 13:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569936430;
 bh=sfei3fNmNvi6lTi6MMR5a3wHggKkRsIZ/qgKoTItACc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JwpnvP758agt5PqeUSvUvJuo7UAvnivP7LNCqdbn0vx6FUf0HvSz0QmWxM480PmDV
 7UwXRrNNCcVXTqrIQpvLYCvx9cYOtvop5xs2JLS6pgSGiYCI14sb+lPYkOpptXC9HL
 e7DZ23oDhuuOix0WQi8LBGnMLuTJFbbq+ZTvjmAI=
Date: Tue, 1 Oct 2019 14:27:06 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v3 0/5]arm64: vdso32: Address various issues
Message-ID: <20191001132705.fvwi5jbte4la7t7u@willie-the-truck>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926214342.34608-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926214342.34608-1-vincenzo.frascino@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_062710_835558_1B1BF62F 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 10:43:37PM +0100, Vincenzo Frascino wrote:
> this patch series is meant to address the various compilation issues you
> reported about arm64 vdso32.

Thanks, I've commented on the patches. Also, when you respin, please can
you drop the "As reported by Will Deacon ..." lines from the commit messages
and just add a Reported-by tag instead?

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
