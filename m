Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 411AA18CE72
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 14:07:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dga8FrC9Rbn2sElw9C4IZYvfZTSTAbvglMumCs+5i2c=; b=GP4cTL3LUl0dhU
	RAOzOos2Qca7J9aP5403Zx5uedGAaSexfUNT0YWOub1r9nlp0zlog9/zABMC+r+MpLfBKgO6hl7rb
	kdRa0DeTHs2aiWXSdxgNl+5tGh304M8EVhHWnfYOrCDeLFKZj9kM3BAxVLTeLgOI85WffHG3BN0Wb
	o5PTF2f62VNbGx/Yamr+ekZCx6sf8R1MJz9lvaEtenca6wPIpw+og9REtn50dD/K3XXI3pn4jZqHL
	LfZEjkKXqnN8mD5Coe5ciR2ODub/VURryWPCuVPnoJFHkNDWMc9Siz/JMj9I8EbJmaqEphW43QSVw
	7v3Ly9xbT8eDCEK4ln2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFHN2-0004Do-3u; Fri, 20 Mar 2020 13:07:28 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFHMu-0004Bc-6v
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 13:07:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UruEh+QPWdIyoj6UKAjvgmG3F1nB4TGGozNiE2Ak4pc=; b=C10XJss4RLdfq+4z3wT/a+fgR
 tObaHD6QoI3lh7aLZROqwKhC1Sqv97jd+JrGbdu3hcTcd+VgxgM2Iw+yCyyKnY+GSUy8G4UrkQhLE
 TV8fYLln/wpBktD5R+BWmmH7epdgvg4qrOeKps6QyAhmflVmx/9s5iNflLUnNgUiIdgRC3vMcediF
 QfLm0zI7iVFx0DXiV6pdfmkrJUtb7CYJkf8Q+/XJ3ADVQI9O6ffdbKQ0MqSGUrot7qyQJDB1qeyiR
 ijaOXbXNBH2f67DwMeVtqSP26LdG+lii9zV5J7b/ncmKurxaVcnUOAKHfb62xCrIpYHTwK3XhJgda
 9yCQuLFHw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:34882)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jFHMc-0008Pq-U1; Fri, 20 Mar 2020 13:07:03 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jFHMb-0005ni-1d; Fri, 20 Mar 2020 13:07:01 +0000
Date: Fri, 20 Mar 2020 13:07:01 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Qais Yousef <qais.yousef@arm.com>
Subject: Re: [PATCH v3 04/15] arm: Don't use disable_nonboot_cpus()
Message-ID: <20200320130700.GR25745@shell.armlinux.org.uk>
References: <20200223192942.18420-1-qais.yousef@arm.com>
 <20200223192942.18420-5-qais.yousef@arm.com>
 <20200320110430.jozfyrqqx272266u@e107158-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320110430.jozfyrqqx272266u@e107158-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_060720_255241_D2701413 
X-CRM114-Status: GOOD (  22.73  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 "Paul E . McKenney" <paulmck@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 11:04:31AM +0000, Qais Yousef wrote:
> On 02/23/20 19:29, Qais Yousef wrote:
> > disable_nonboot_cpus() is not safe to use when doing machine_down(),
> > because it relies on freeze_secondary_cpus() which in turn is
> > a suspend/resume related freeze and could abort if the logic detects any
> > pending activities that can prevent finishing the offlining process.
> > 
> > Beside disable_nonboot_cpus() is dependent on CONFIG_PM_SLEEP_SMP which
> > is an othogonal config to rely on to ensure this function works
> > correctly.
> > 
> > Use `reboot_cpu` variable instead of hardcoding 0 as the reboot cpu.

I think that should be a separate change - you have two separate
changes in this patch:

1. to switch to using the new helper.
2. to change the CPU that we potentially use for the final steps of
   shutdown

These should be two seperate changes, so if (2) causes a regression
it can be reverted independently of (1).

> > 
> > Signed-off-by: Qais Yousef <qais.yousef@arm.com>
> > CC: Russell King <linux@armlinux.org.uk>
> > CC: linux-arm-kernel@lists.infradead.org
> > CC: linux-kernel@vger.kernel.org
> > ---
> 
> Hi Russel
> 
> Does the updated version look good to you now?
> 
> Thanks
> 
> --
> Qais Yousef
> 
> >  arch/arm/kernel/reboot.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/kernel/reboot.c b/arch/arm/kernel/reboot.c
> > index bb18ed0539f4..0ce388f15422 100644
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
> > +	smp_shutdown_nonboot_cpus(reboot_cpu);
> >  }
> >  
> >  /*
> > -- 
> > 2.17.1
> > 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
