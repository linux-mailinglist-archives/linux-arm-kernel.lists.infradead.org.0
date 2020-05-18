Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D8E1D7C0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 16:59:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6XNtftB0j9Z++0KSS5ejMAWBvRolGdbDoEtdWOstnnc=; b=KVUJN/oaVJ8Se2
	1rUQyuEM2adxL/rh6UgFbPCNceY9RkGoDyL/eaSuFRE2MdBBHupYI+fntnJXjP0K/iajoSJ0BLI7X
	zMUoXmqP7Z63fcl6hPfB1iv8Y2JHKPqwC/0zyvn5gWcX9S1tmEw/YPVkOicKRDIS70BNQIEW8ywx/
	eAciL8l4JsYQE48SDJ6iiFxBKsgPNkUlG2k4uXuY9DSWSPdwZ4yfMoQy1E2/AbO0Ki+EF7Wl8C7NE
	AWcABft3jhOfL/TsRjsWUQwrMCc/6p9VduDsGJKpBDz/Ty2XHqPHOA6ISV04iH1EGy+Yx7mmu3Hoo
	dtHvjly4TwlAs6NmmArg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahEL-0000hL-Q6; Mon, 18 May 2020 14:59:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahDH-0008Ge-FV
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 14:58:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B9D2C101E;
 Mon, 18 May 2020 07:57:52 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 84B383F52E;
 Mon, 18 May 2020 07:57:51 -0700 (PDT)
Date: Mon, 18 May 2020 15:57:49 +0100
From: Qais Yousef <qais.yousef@arm.com>
To: Alan Stern <stern@rowland.harvard.edu>
Subject: Re: [PATCH 1/3] usb/ohci-platform: Fix a warning when hibernating
Message-ID: <20200518145748.puvxkcmyrxc7eqt7@e107158-lin.cambridge.arm.com>
References: <20200424134800.4629-1-qais.yousef@arm.com>
 <Pine.LNX.4.44L0.2004281459240.1555-100000@netrider.rowland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.44L0.2004281459240.1555-100000@netrider.rowland.org>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_075755_631594_87F5BB58 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Oliver Neukum <oneukum@suse.de>, Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Tony Prisk <linux@prisktech.co.nz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/28/20 15:00, Alan Stern wrote:
> On Fri, 24 Apr 2020, Qais Yousef wrote:
> 
> > The following warning was observed when attempting to suspend to disk
> > using a USB flash as a swap device.
> > 
> > [  111.779649] ------------[ cut here ]------------
> > [  111.788382] URB (____ptrval____) submitted while active
> > [  111.796646] WARNING: CPU: 3 PID: 365 at drivers/usb/core/urb.c:363 usb_submit_urb+0x3d8/0x590
> > [  111.805417] Modules linked in:
> > [  111.808584] CPU: 3 PID: 365 Comm: kworker/3:2 Not tainted 5.6.0-rc6-00002-gdfd1731f9a3e-dirty #545
> > [  111.817796] Hardware name: ARM Juno development board (r2) (DT)
> > [  111.823896] Workqueue: usb_hub_wq hub_event
> > [  111.828217] pstate: 60000005 (nZCv daif -PAN -UAO)
> > [  111.833156] pc : usb_submit_urb+0x3d8/0x590
> > [  111.837471] lr : usb_submit_urb+0x3d8/0x590
> > [  111.841783] sp : ffff800018de38b0
> > [  111.845205] x29: ffff800018de38b0 x28: 0000000000000003
> > [  111.850682] x27: ffff000970530b20 x26: ffff8000133fd000
> > [  111.856159] x25: ffff8000133fd000 x24: ffff800018de3b38
> > [  111.861635] x23: 0000000000000004 x22: 0000000000000c00
> > [  111.867112] x21: 0000000000000000 x20: 00000000fffffff0
> > [  111.872589] x19: ffff0009704e7a00 x18: ffffffffffffffff
> > [  111.878065] x17: 00000000a7c8f4bc x16: 000000002af33de8
> > [  111.883542] x15: ffff8000133fda88 x14: 0720072007200720
> > [  111.889019] x13: 0720072007200720 x12: 0720072007200720
> > [  111.894496] x11: 0000000000000000 x10: 00000000a5286134
> > [  111.899973] x9 : 0000000000000002 x8 : ffff000970c837a0
> > [  111.905449] x7 : 0000000000000000 x6 : ffff800018de3570
> > [  111.910926] x5 : 0000000000000001 x4 : 0000000000000003
> > [  111.916401] x3 : 0000000000000000 x2 : ffff800013427118
> > [  111.921879] x1 : 9d4e965b4b7d7c00 x0 : 0000000000000000
> > [  111.927356] Call trace:
> > [  111.929892]  usb_submit_urb+0x3d8/0x590
> > [  111.933852]  hub_activate+0x108/0x7f0
> > [  111.937633]  hub_resume+0xac/0x148
> > [  111.941149]  usb_resume_interface.isra.10+0x60/0x138
> > [  111.946265]  usb_resume_both+0xe4/0x140
> > [  111.950225]  usb_runtime_resume+0x24/0x30
> > [  111.954365]  __rpm_callback+0xdc/0x138
> > [  111.958236]  rpm_callback+0x34/0x98
> > [  111.961841]  rpm_resume+0x4a8/0x720
> > [  111.965445]  rpm_resume+0x50c/0x720
> > [  111.969049]  __pm_runtime_resume+0x4c/0xb8
> > [  111.973276]  usb_autopm_get_interface+0x28/0x60
> > [  111.977948]  hub_event+0x80/0x16d8
> > [  111.981466]  process_one_work+0x2a4/0x748
> > [  111.985604]  worker_thread+0x48/0x498
> > [  111.989387]  kthread+0x13c/0x140
> > [  111.992725]  ret_from_fork+0x10/0x18
> > [  111.996415] irq event stamp: 354
> > [  111.999756] hardirqs last  enabled at (353): [<ffff80001019ea1c>] console_unlock+0x504/0x5b8
> > [  112.008441] hardirqs last disabled at (354): [<ffff8000100a95d0>] do_debug_exception+0x1a8/0x258
> > [  112.017479] softirqs last  enabled at (350): [<ffff8000100818a4>] __do_softirq+0x4bc/0x568
> > [  112.025984] softirqs last disabled at (343): [<ffff8000101145a4>] irq_exit+0x144/0x150
> > [  112.034129] ---[ end trace dc96030b9cf6c8a3 ]---
> > 
> > The problem was tracked down to a missing call to
> > pm_runtime_set_active() on resume in ohci-platform.
> > 
> > Link: https://lore.kernel.org/lkml/20200323143857.db5zphxhq4hz3hmd@e107158-lin.cambridge.arm.com/
> > Signed-off-by: Qais Yousef <qais.yousef@arm.com>
> > CC: Tony Prisk <linux@prisktech.co.nz>
> > CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > CC: Mathias Nyman <mathias.nyman@intel.com>
> > CC: Oliver Neukum <oneukum@suse.de>
> > CC: linux-arm-kernel@lists.infradead.org
> > CC: linux-usb@vger.kernel.org
> > CC: linux-kernel@vger.kernel.org
> > ---
> >  drivers/usb/host/ohci-platform.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/drivers/usb/host/ohci-platform.c b/drivers/usb/host/ohci-platform.c
> > index 7addfc2cbadc..4a8456f12a73 100644
> > --- a/drivers/usb/host/ohci-platform.c
> > +++ b/drivers/usb/host/ohci-platform.c
> > @@ -299,6 +299,11 @@ static int ohci_platform_resume(struct device *dev)
> >  	}
> >  
> >  	ohci_resume(hcd, false);
> > +
> > +	pm_runtime_disable(dev);
> > +	pm_runtime_set_active(dev);
> > +	pm_runtime_enable(dev);
> > +
> >  	return 0;
> >  }
> >  #endif /* CONFIG_PM_SLEEP */
> 
> For both this patch and the 3/3 patch (ehci-platform):
> 
> Acked-by: Alan Stern <stern@rowland.harvard.edu>

Thanks Alan. Did this make it through to any tree? I don't see it on next, nor
on Linus. But it could be queued somewhere else.

I have sent v2 to patch 2 (xhci) as a reply, so hopefully it wasn't missed.
I can resend the whole series if necessary.

Thanks

--
Qais Yousef

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
