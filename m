Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31644C42F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 23:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/1fU/zkSQM10Xn0HMtSij7Wr8aR1j+vafnCownTYRs=; b=D05vIBfoVBtKur
	Npe+Wc5fe5Vs1ailvNQS7ebv3oW0fOcHhF1NHMglDtK1kNn0RnOWG92LKp0me1QYNzK9QU0IXFMqL
	/iZcsSAU2x0xyMHskSdqwBsnR9UDWlILaRWDC8FKsclGy90vmt5/8DYKDdILMiVnYo88JF+y6b8hv
	gFO5AB6mSwdkf6SgxPbORQqGIVqFyXy4BNCQ8aV6Kqo07caWTePAjYNP8yflr0xlDadM4Zp9e/Ops
	KuHz2wgb1dytILYEVNiVkYKODy/kY/VlLe2ahZQt1zn4nobIc1DKVnch71lkmidIHjqVtLAwyhg3R
	5Y4NZPYxeQ1kAUvoMFzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFQ32-0002nO-Py; Tue, 01 Oct 2019 21:51:08 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFQ2t-0002BC-64
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 21:51:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jIjsg0TW67zqsAw0Oa22lYtg1aF0/fv+VgAHd2QxUcc=; b=MzdwI+mJT11ZS8s1wHPkZTXzy
 oPyWJHG5eLHE2BYQrc0++VKEHuRkwKJt/G9HCJABzNhdxb8Yk+x3j/1K6ehjE40ZTJ5FSMgRpi8vc
 6WYqdfAwi7kp3tFyidWRg7JP+mMuXO5VbY6sklVdGRmEzmFsZCVjHRlv2y6IuXOJXGCA2hggxECts
 vTgwV5GfcQKYfqeu8EEeIA9VM79Joh+jgXF+U7lS4MxAf+M8B4/jnSxNIKFe4exvHEL64qAkWS2mE
 66lQ45R3wM8ChMnct98x2UludqAbBV6fQXerFvhI46Lu2+sNUbQqLJzAf89+WzxTjaGv+qePlSa03
 ZzsVIk97Q==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:46430)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iFQ2f-0004vu-GU; Tue, 01 Oct 2019 22:50:45 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iFQ2c-00005z-J8; Tue, 01 Oct 2019 22:50:42 +0100
Date: Tue, 1 Oct 2019 22:50:42 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Dinh Nguyen <dinguyen@kernel.org>
Subject: Re: [PATCH] ARM: drivers/amba: release the resource to allow for
 deferred probe
Message-ID: <20191001215042.GO25745@shell.armlinux.org.uk>
References: <20191001214026.21718-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001214026.21718-1-dinguyen@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_145059_303994_56A04958 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
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
Cc: p.zabel@pengutronix.de, linus.walleij@linaro.org,
 thor.thayer@linux.intel.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 04:40:26PM -0500, Dinh Nguyen wrote:
> With commit "79bdcb202a35 ARM: 8906/1: drivers/amba: add reset control to
> amba bus probe", the amba bus driver needs to be deferred probe because the
> reset driver is probed later than the amba bus. However with a deferred
> probe, the call to request_resource() in the driver returns -EBUSY. The
> reason is the driver has not released the resource from the previous probe
> attempt.
> 
> This patch releases the resource when amba_device_try_add() returns
> -EPROBE_DEFER. This allows the deferred probe to continue.
> 
> Fixes: 79bdcb202a35 ("ARM: 8906/1: drivers/amba: add reset control to
> amba bus probe")
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
>  drivers/amba/bus.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
> index f39f075abff9..f246b847c991 100644
> --- a/drivers/amba/bus.c
> +++ b/drivers/amba/bus.c
> @@ -535,6 +535,7 @@ int amba_device_add(struct amba_device *dev, struct resource *parent)
>  
>  	if (ret == -EPROBE_DEFER) {
>  		struct deferred_device *ddev;
> +		release_resource(&dev->res);

This is in the wrong place, and misses more serious leaks.

>  		ddev = kmalloc(sizeof(*ddev), GFP_KERNEL);
>  		if (!ddev)

What we have is bad error cleanup code in amba_device_try_add().
Consider what would happen if dev_pm_domain_attach() inside that
function were to return with -EPROBE_DEFER with your patch in
place - we would call release_resource() twice on the same
resource.  Clearly, that's incorrect.

The problem is that an error from
of_reset_control_array_get_optional_shared() just returns, leaving
everything that amba_device_try_add() already did still in place.
So, for example, a subsequent call to amba_device_try_add() will
remap the resource, leaking the previous mapping.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
