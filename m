Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC561BCBDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 21:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=nV7r4sMfrLClusl7z51d0ZFmiqD/3W6OC6uv0LJlkjY=; b=JCvodpNewPAQUP
	Ullt6qMsVCg89vfV4Doj0hB5JHjzWm9XEI+NgYu8ytAG1IOVHsuY7LR6Q4detKg2jTO/XqkTDTX/z
	LLChMYu+nUp+f4XxGLB8eRwnKBQtXvwLPMST5R2XojThAb+AGzQsaZ+NmXwBiRjAm3byoFQ/6UDb7
	jeaJloOy57QZtJz3O/gfOROaFk7KhlpVQB7FTbYhYemGCQMBcj7LQ7bZ+k69swgXIdtX5JknTmAP9
	kFLIA/ogGUMmKgC8VF46c28zQTzQciqiyXS80rS7cwQxtXRxNZGuZ8AXfEewHR6JmS+2pcDg1/Lbj
	2AA93mDHSe4JtvWjyj5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTVTT-0004EU-BX; Tue, 28 Apr 2020 19:00:55 +0000
Received: from netrider.rowland.org ([192.131.102.5])
 by bombadil.infradead.org with smtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTVTI-0004CS-5O
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 19:00:46 +0000
Received: (qmail 3486 invoked by uid 500); 28 Apr 2020 15:00:39 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
 by localhost with SMTP; 28 Apr 2020 15:00:39 -0400
Date: Tue, 28 Apr 2020 15:00:39 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@netrider.rowland.org
To: Qais Yousef <qais.yousef@arm.com>
Subject: Re: [PATCH 1/3] usb/ohci-platform: Fix a warning when hibernating
In-Reply-To: <20200424134800.4629-1-qais.yousef@arm.com>
Message-ID: <Pine.LNX.4.44L0.2004281459240.1555-100000@netrider.rowland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_120044_349852_756478AD 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.131.102.5 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Fri, 24 Apr 2020, Qais Yousef wrote:

> The following warning was observed when attempting to suspend to disk
> using a USB flash as a swap device.
> 
> [  111.779649] ------------[ cut here ]------------
> [  111.788382] URB (____ptrval____) submitted while active
> [  111.796646] WARNING: CPU: 3 PID: 365 at drivers/usb/core/urb.c:363 usb_submit_urb+0x3d8/0x590
> [  111.805417] Modules linked in:
> [  111.808584] CPU: 3 PID: 365 Comm: kworker/3:2 Not tainted 5.6.0-rc6-00002-gdfd1731f9a3e-dirty #545
> [  111.817796] Hardware name: ARM Juno development board (r2) (DT)
> [  111.823896] Workqueue: usb_hub_wq hub_event
> [  111.828217] pstate: 60000005 (nZCv daif -PAN -UAO)
> [  111.833156] pc : usb_submit_urb+0x3d8/0x590
> [  111.837471] lr : usb_submit_urb+0x3d8/0x590
> [  111.841783] sp : ffff800018de38b0
> [  111.845205] x29: ffff800018de38b0 x28: 0000000000000003
> [  111.850682] x27: ffff000970530b20 x26: ffff8000133fd000
> [  111.856159] x25: ffff8000133fd000 x24: ffff800018de3b38
> [  111.861635] x23: 0000000000000004 x22: 0000000000000c00
> [  111.867112] x21: 0000000000000000 x20: 00000000fffffff0
> [  111.872589] x19: ffff0009704e7a00 x18: ffffffffffffffff
> [  111.878065] x17: 00000000a7c8f4bc x16: 000000002af33de8
> [  111.883542] x15: ffff8000133fda88 x14: 0720072007200720
> [  111.889019] x13: 0720072007200720 x12: 0720072007200720
> [  111.894496] x11: 0000000000000000 x10: 00000000a5286134
> [  111.899973] x9 : 0000000000000002 x8 : ffff000970c837a0
> [  111.905449] x7 : 0000000000000000 x6 : ffff800018de3570
> [  111.910926] x5 : 0000000000000001 x4 : 0000000000000003
> [  111.916401] x3 : 0000000000000000 x2 : ffff800013427118
> [  111.921879] x1 : 9d4e965b4b7d7c00 x0 : 0000000000000000
> [  111.927356] Call trace:
> [  111.929892]  usb_submit_urb+0x3d8/0x590
> [  111.933852]  hub_activate+0x108/0x7f0
> [  111.937633]  hub_resume+0xac/0x148
> [  111.941149]  usb_resume_interface.isra.10+0x60/0x138
> [  111.946265]  usb_resume_both+0xe4/0x140
> [  111.950225]  usb_runtime_resume+0x24/0x30
> [  111.954365]  __rpm_callback+0xdc/0x138
> [  111.958236]  rpm_callback+0x34/0x98
> [  111.961841]  rpm_resume+0x4a8/0x720
> [  111.965445]  rpm_resume+0x50c/0x720
> [  111.969049]  __pm_runtime_resume+0x4c/0xb8
> [  111.973276]  usb_autopm_get_interface+0x28/0x60
> [  111.977948]  hub_event+0x80/0x16d8
> [  111.981466]  process_one_work+0x2a4/0x748
> [  111.985604]  worker_thread+0x48/0x498
> [  111.989387]  kthread+0x13c/0x140
> [  111.992725]  ret_from_fork+0x10/0x18
> [  111.996415] irq event stamp: 354
> [  111.999756] hardirqs last  enabled at (353): [<ffff80001019ea1c>] console_unlock+0x504/0x5b8
> [  112.008441] hardirqs last disabled at (354): [<ffff8000100a95d0>] do_debug_exception+0x1a8/0x258
> [  112.017479] softirqs last  enabled at (350): [<ffff8000100818a4>] __do_softirq+0x4bc/0x568
> [  112.025984] softirqs last disabled at (343): [<ffff8000101145a4>] irq_exit+0x144/0x150
> [  112.034129] ---[ end trace dc96030b9cf6c8a3 ]---
> 
> The problem was tracked down to a missing call to
> pm_runtime_set_active() on resume in ohci-platform.
> 
> Link: https://lore.kernel.org/lkml/20200323143857.db5zphxhq4hz3hmd@e107158-lin.cambridge.arm.com/
> Signed-off-by: Qais Yousef <qais.yousef@arm.com>
> CC: Tony Prisk <linux@prisktech.co.nz>
> CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> CC: Mathias Nyman <mathias.nyman@intel.com>
> CC: Oliver Neukum <oneukum@suse.de>
> CC: linux-arm-kernel@lists.infradead.org
> CC: linux-usb@vger.kernel.org
> CC: linux-kernel@vger.kernel.org
> ---
>  drivers/usb/host/ohci-platform.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/usb/host/ohci-platform.c b/drivers/usb/host/ohci-platform.c
> index 7addfc2cbadc..4a8456f12a73 100644
> --- a/drivers/usb/host/ohci-platform.c
> +++ b/drivers/usb/host/ohci-platform.c
> @@ -299,6 +299,11 @@ static int ohci_platform_resume(struct device *dev)
>  	}
>  
>  	ohci_resume(hcd, false);
> +
> +	pm_runtime_disable(dev);
> +	pm_runtime_set_active(dev);
> +	pm_runtime_enable(dev);
> +
>  	return 0;
>  }
>  #endif /* CONFIG_PM_SLEEP */

For both this patch and the 3/3 patch (ehci-platform):

Acked-by: Alan Stern <stern@rowland.harvard.edu>

Alan Stern


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
