Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A25C144290
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 17:55:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1m+wes5WCkFR0qGLKOmz0Pl4KhvmJMkctNQ0tIfhZ40=; b=g+JiWHk5rfEm/0
	MKevBqP5oDGS/DzPNfoCqWtTOvFgV/1ngTzHCbLFV4Yj7Qq3bWFYbyi3DlM9MaVqmVeGeU0ljqeJJ
	St0OxyPSlicvMgKtZ7BQCprQWrsj/rnvjeDsxReKK3RWL+VFkCTNrLO3Kw0y8GuVK7Bhg95bKnyM/
	2sSgbb5Ec/4pPss9hj2B8RlaskYR+fcYGEIcuVa22N4im6x0zq6RCSX3T1/cEd4sg/FAtLGhIRVAu
	QvYC/99x9QFjzXAFKsfFF/lnTsq/toGKYeYiKreEfPua3SRbrB8uSV9/7LpDpLQP6t0CCAF1nqHhd
	4XR4EY75hZi3MvYU+XJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itwod-00084v-Tf; Tue, 21 Jan 2020 16:55:47 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itwoR-0006hF-V4
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 16:55:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n3rbXd3EXmHx24tk+JhwjQAO26KwOs96OGEPn8Jzqa4=; b=ACwFHEaFEVDZNK6Opob5Vb9EW
 +iVvIIc2yxNoP3Rt5yTv6cuxRex+zJO36N1LGVHXhOLyU5wKOV9zTGXAPEo1jLulLFLjmAYuBnnkt
 c36zLea+khHwypaKCC9+8PDFntsBpmoU/Yu5cIZGOEl2+w4Ket/Mw4p4432Rx1IM05wQ2ZoLZFblW
 3BqfXv62pHan8Lzm9TizjHtPzSXBMXMkkv3iAdcjYrEbTih6igpxNIddAhfX/bB5g62vI/wXBNDCb
 6UayHwKyWwzco5XUgggeJcKC5Utf06Mvo9XRy2/nzU9OwHx9/4IPyaxvXl+bEQNOufL/lePiTRZZj
 vOTF71/XQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:41388)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1itwmJ-0005xc-Bw; Tue, 21 Jan 2020 16:53:23 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1itwmH-0003zA-94; Tue, 21 Jan 2020 16:53:21 +0000
Date: Tue, 21 Jan 2020 16:53:21 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Qais Yousef <qais.yousef@arm.com>
Subject: Re: [PATCH v2 03/14] arm: arm64: Don't use disable_nonboot_cpus()
Message-ID: <20200121165321.GH25745@shell.armlinux.org.uk>
References: <20191125112754.25223-1-qais.yousef@arm.com>
 <20191125112754.25223-4-qais.yousef@arm.com>
 <20200121165030.xksivf6mrhsaynq2@e107158-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121165030.xksivf6mrhsaynq2@e107158-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_085536_006791_18B1D003 
X-CRM114-Status: GOOD (  22.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 04:50:31PM +0000, Qais Yousef wrote:
> On 11/25/19 11:27, Qais Yousef wrote:
> > disable_nonboot_cpus() is not safe to use when doing machine_down(),
> > because it relies on freeze_secondary_cpus() which in return is
> > a suspend/resume related freeze and could abort if the logic detects any
> > pending activities that can prevent finishing the offlining process.
> > 
> > Beside disable_nonboot_cpus() is dependent on CONFIG_PM_SLEEP_SMP which
> > is an othogonal config to rely on to ensure this function works
> > correctly.
> > 
> > Signed-off-by: Qais Yousef <qais.yousef@arm.com>
> > CC: Russell King <linux@armlinux.org.uk>
> > CC: Catalin Marinas <catalin.marinas@arm.com>
> > CC: Will Deacon <will@kernel.org>
> > CC: linux-arm-kernel@lists.infradead.org
> > CC: linux-kernel@vger.kernel.org
> > ---
> 
> Ping :)
> 
> I'm missing ACKs on this patch and patch 4 for arm64. Hopefully none should be
> controversial.

ARM and ARM64 are maintained separately, so you can't submit a single
patch covering both.  Sorry.

> 
> Thanks!
> 
> --
> Qais Yousef
> 
> >  arch/arm/kernel/reboot.c    | 4 ++--
> >  arch/arm64/kernel/process.c | 4 ++--
> >  2 files changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/arm/kernel/reboot.c b/arch/arm/kernel/reboot.c
> > index bb18ed0539f4..58ad1a70f770 100644
> > --- a/arch/arm/kernel/reboot.c
> > +++ b/arch/arm/kernel/reboot.c
> > @@ -88,11 +88,11 @@ void soft_restart(unsigned long addr)
> >   * to execute e.g. a RAM-based pin loop is not sufficient. This allows the
> >   * kexec'd kernel to use any and all RAM as it sees fit, without having to
> >   * avoid any code or data used by any SW CPU pin loop. The CPU hotplug
> > - * functionality embodied in disable_nonboot_cpus() to achieve this.
> > + * functionality embodied in smp_shutdown_nonboot_cpus() to achieve this.
> >   */
> >  void machine_shutdown(void)
> >  {
> > -	disable_nonboot_cpus();
> > +	smp_shutdown_nonboot_cpus(0);
> >  }
> >  
> >  /*
> > diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> > index 71f788cd2b18..3bcc9bfc581e 100644
> > --- a/arch/arm64/kernel/process.c
> > +++ b/arch/arm64/kernel/process.c
> > @@ -141,11 +141,11 @@ void arch_cpu_idle_dead(void)
> >   * to execute e.g. a RAM-based pin loop is not sufficient. This allows the
> >   * kexec'd kernel to use any and all RAM as it sees fit, without having to
> >   * avoid any code or data used by any SW CPU pin loop. The CPU hotplug
> > - * functionality embodied in disable_nonboot_cpus() to achieve this.
> > + * functionality embodied in smpt_shutdown_nonboot_cpus() to achieve this.
> >   */
> >  void machine_shutdown(void)
> >  {
> > -	disable_nonboot_cpus();
> > +	smp_shutdown_nonboot_cpus(0);
> >  }
> >  
> >  /*
> > -- 
> > 2.17.1
> > 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
