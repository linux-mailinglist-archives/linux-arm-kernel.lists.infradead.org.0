Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7129A15840F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 21:06:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K2C4cldyrhQC2b8TdjdRNH+e0iqwX32A40ioKGGxsnE=; b=dkTVkbBBlq7qQG
	f3Qu6Bj+qXa5kZ/shyRkY5RajF6+tiee7tLkK/+EYJDB3e6x/QLTUaQXCV8hKSYaOlX1brJ52/TVN
	hRdYvrhIaNYogmpusBmGmr97q4PjMo4sKQLWBnc9oeFXuSo/YjbOeGhroN6vCb2tVnvsKihiFE74e
	arLiUR5pFwFr/giDo3WacPT0tFf+EZyoTtDrLzrS6h/6mwznhS7eFvHwemPo7fe9VUUVYHas16VmO
	d1cnhcGlPdNeURle6XcnNYU4VplwIwJeiq4Zyp6vZaPuLITH8ptrXfx2g7tS91N4pIhtcsifTy1eh
	Cvmb5bL9q/mFXEoUfjAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1FJd-00041i-3u; Mon, 10 Feb 2020 20:05:57 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1FJV-00041F-Kv
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 20:05:51 +0000
Received: by mail-pj1-x1043.google.com with SMTP id f2so195735pjq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 12:05:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=bfUX47JqfKDzRaHz60zuMCcgcknOETz9lwwAuHSKO/w=;
 b=to49f+OtThvnorGPpC/Cl2wQsWgbIJq9eO7AUaULn/tn/txSiicNTKtdXpe4j//606
 dgp6hPM9UpWt61NYMa16dbPqOQk0ipyH6ETPTPrW/IYch9/raqAdGLaXhvketHe7h4DC
 CIKLEG2CXnR7tc+PGpR0WeERbJ0NUXwz8yKGn4SRbsFrH6zQFQV/Z6rIKms1NjPHepsR
 PYVykHlT5fndel2wmzhYAdU/14YhmhV+abUyaiXC4bJHAR+RZkA8/YwWgKugyQfgIe9l
 kReAATRh369hzdk9aEtOgF26YpPQQ21d4KGEeewmcN3XHq9FHOBD+gQAY5PD3HFTVU/x
 SMLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bfUX47JqfKDzRaHz60zuMCcgcknOETz9lwwAuHSKO/w=;
 b=bdlyBKSKUjHl0tFHx3xM4D0XDLQokHC6mRfWu0O017GKlruycR+cm1usuSJLRjzhn6
 vDvnLOI5Ug9Xf7ls+TyDd4Cjq3Un4Wf6tQWpY0G9vANvObuDrLLdg5c8X0oB/IOmMkLG
 ++XOLr0Ns48pTguuSlo6ZNpF4mAumyRVtCO2d20/bveSXSxdp5c7rK2eUUUI4yoNEpf5
 1+ON+GKLyIsSF+05Xf3k/LpNPl9dAx7aKYpalSHhqGXLfJamM+HKYZjLRGNxckjTy9K2
 /bWJS6HUzevWbpfYy8sAM0KK6qsGmuRGZAsiQpZuP+J5hKfczLqUh53RE9+CmNH5hjzd
 eaaQ==
X-Gm-Message-State: APjAAAU3GG21qnXsAr9NZ4a3GGyET2CMYWcAN8LNtiy9Wu8V1gAVMeKB
 sKUP1QomsCk6UMSF3uvkVc8k2A==
X-Google-Smtp-Source: APXvYqxnYbJ7OinJSm4bTbVSSk5UE3G8smKj9Tcak5BKxA+izoC8f5KdQ+iylHlvQpkIdSqCWXv5gA==
X-Received: by 2002:a17:902:59cd:: with SMTP id
 d13mr14645978plj.146.1581365147786; 
 Mon, 10 Feb 2020 12:05:47 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id n2sm1301901pfq.50.2020.02.10.12.05.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 12:05:47 -0800 (PST)
Date: Mon, 10 Feb 2020 12:05:44 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Nikolay Borisov <nborisov@suse.com>
Subject: Re: [PATCH 1/3] hwspinlock: sunxi: Implement support for Allwinner's
 A64 SoC
Message-ID: <20200210200544.GA1443@yoga>
References: <20200210170143.20007-1-nborisov@suse.com>
 <20200210170143.20007-2-nborisov@suse.com>
 <20200210185730.GL955802@ripper>
 <45d491fa-716a-eb6a-f1a3-621363675a17@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45d491fa-716a-eb6a-f1a3-621363675a17@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_120549_693533_6E667374 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, mripard@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 10 Feb 11:06 PST 2020, Nikolay Borisov wrote:

> 
> 
> On 10.02.20 ??. 20:57 ??., Bjorn Andersson wrote:
> > On Mon 10 Feb 09:01 PST 2020, Nikolay Borisov wrote:
> > [..]
> >> diff --git a/drivers/hwspinlock/sunxi_hwspinlock.c b/drivers/hwspinlock/sunxi_hwspinlock.c
> >> new file mode 100644
> >> index 000000000000..8e5685357fbf
> >> --- /dev/null
> >> +++ b/drivers/hwspinlock/sunxi_hwspinlock.c
> >> @@ -0,0 +1,181 @@
> >> +// SPDX-License-Identifier: GPL-2.0
> >> +/* Author: Nikolay Borisov <nborisov@suse.com> */
> >> +
> >> +#include <linux/clk.h>
> >> +#include <linux/reset.h>
> >> +#include <linux/hwspinlock.h>
> >> +#include <linux/io.h>
> >> +#include <linux/kernel.h>
> >> +#include <linux/module.h>
> >> +#include <linux/of.h>
> >> +#include <linux/platform_device.h>
> > 
> > Please sort these.
> 
> alphabetically or reverse christmas tree?
> 

Alphabetically please.

> > 
> >> +
> 
> <snip>
> >> +	hw->clk = clk;
> >> +	hw->reset = reset;
> >> +
> >> +	io_base += LOCK_BASE_OFFSET;
> >> +	for (i = 0; i < num_locks; i++)
> >> +		hw->bank.lock[i].priv = io_base + i * sizeof(u32);
> >> +
> >> +	platform_set_drvdata(pdev, hw);
> >> +
> >> +	ret = hwspin_lock_register(&hw->bank, &pdev->dev, &sunxi_hwspinlock_ops,
> >> +				   0, num_locks);
> > 
> > People will likely send patches to replace this with
> > devm_hwspin_lock_register(), but that will create an invalid ordering
> > between the clock disable, reset assert and the hwspinlock
> > unregistration.
> > 
> > You could deal with this using devm_add_action() and
> > devm_add_action_or_reset() for the clock and reset above. That will save
> > us future churn, would clean up your error handling and you could drop
> > the remove function completely.
> 
> This is my first rodeo in device driver land so I'm learning. It looks
> like what you want here is similar to what there is in
> sprd_hwspinlock.c. Will rework it.
> 

Exactly like that, forgot that we had an example of this in the sprd
driver. That will ensure that we rely solely on devres to unroll the
resources in a suitable order.

Regards,
Bjorn

> > 
> >> +
> >> +	if (!ret)
> >> +		return ret;
> >> +out_reset:
> >> +	reset_control_assert(reset);
> >> +out_declock:
> >> +	clk_disable_unprepare(clk);
> >> +	return ret;
> >> +}
> >> +
> >> +static int sunxi_hwspinlock_remove(struct platform_device *pdev)
> >> +{
> >> +	struct sunxi_hwspinlock *hw = platform_get_drvdata(pdev);
> >> +	int ret;
> >> +
> >> +	ret = hwspin_lock_unregister(&hw->bank);
> >> +	if (ret)
> >> +		dev_err(&pdev->dev, "%s failed: %d\n", __func__, ret);
> >> +
> >> +	reset_control_assert(hw->reset);
> >> +	clk_disable_unprepare(hw->clk);
> >> +
> >> +	return 0;
> >> +}
> >> +
> > 
> > Regards,
> > Bjorn
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
