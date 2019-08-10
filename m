Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A883B88CE4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 21:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KcR+YoT9l3J9eh2VYmYTbV8cAWS4OYwIUj+hOSMWJkg=; b=oloNUEE2gd6ISH
	ofyIvEfv/p5nVCTmOgpJjHltbZyq7GZI6YZh5O/bC9dnhnrLgO4tvmKh3ES+17pHSE97VPnIw3GRk
	Z9SLVsoMZAPNaJ4i+KNKbuoOd+lQP6Hi+AbuaaW9C0reN5o4UIAVfHtleyXCtfKWUurErXld/4cSl
	1jit2O3H19nMVk6rI1dbXjqLvS4UBMXbwxqQ3bQ6lXrUT9/dIFUmBcIp7hNIoQEb3HUsmYruIQz3C
	dOFuFRuT8Znw7+/yJfAY3AhW0Vl3QKupUyE4v54UByNcPi7mHZR/FjUoLa2akFVHBu07wq7fE1EMr
	1DEvLCzm6O+CDK0hDw4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwX28-0000zw-Jw; Sat, 10 Aug 2019 19:28:08 +0000
Received: from smtp08.smtpout.orange.fr ([80.12.242.130]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwX1p-0000z6-F3
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 19:27:51 +0000
Received: from belgarion ([90.76.53.202]) by mwinf5d31 with ME
 id nXTS2000D4MlyVm03XTeb7; Sat, 10 Aug 2019 21:27:43 +0200
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Sat, 10 Aug 2019 21:27:43 +0200
X-ME-IP: 90.76.53.202
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 4/6] dma: pxa_dma: no need to check return value of
 debugfs_create functions
References: <20190612122557.24158-1-gregkh@linuxfoundation.org>
 <20190612122557.24158-4-gregkh@linuxfoundation.org>
X-URL: http://belgarath.falguerolles.org/
Date: Sat, 10 Aug 2019 21:27:26 +0200
In-Reply-To: <20190612122557.24158-4-gregkh@linuxfoundation.org> (Greg
 Kroah-Hartman's message of "Wed, 12 Jun 2019 14:25:55 +0200")
Message-ID: <87tvaorfc1.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_122749_786320_A798A31B 
X-CRM114-Status: GOOD (  22.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
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
Cc: linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 vkoul@kernel.org, linux-arm-kernel@lists.infradead.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:

Hi Greg,

> When calling debugfs functions, there is no need to ever check the
> return value.  The function can work or not, but the code logic should
> never do something different based on this.
>
> Also, because there is no need to save the file dentry, remove the
> variable that was saving it as it was never even being used once set.
>
> Cc: Daniel Mack <daniel@zonque.org>
> Cc: Haojian Zhuang <haojian.zhuang@gmail.com>
> Cc: Robert Jarzmik <robert.jarzmik@free.fr>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: dmaengine@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/dma/pxa_dma.c | 56 +++++++++----------------------------------
>  1 file changed, 11 insertions(+), 45 deletions(-)
>
> diff --git a/drivers/dma/pxa_dma.c b/drivers/dma/pxa_dma.c
> index b429642f3e7a..0f698f49ee26 100644
> --- a/drivers/dma/pxa_dma.c
> +++ b/drivers/dma/pxa_dma.c
> @@ -132,7 +132,6 @@ struct pxad_device {
>  	spinlock_t			phy_lock;	/* Phy association */
>  #ifdef CONFIG_DEBUG_FS
>  	struct dentry			*dbgfs_root;
> -	struct dentry			*dbgfs_state;
>  	struct dentry			**dbgfs_chan;
>  #endif
>  };
> @@ -326,31 +325,18 @@ static struct dentry *pxad_dbg_alloc_chan(struct pxad_device *pdev,
>  					     int ch, struct dentry *chandir)
>  {
>  	char chan_name[11];
> -	struct dentry *chan, *chan_state = NULL, *chan_descr = NULL;
> -	struct dentry *chan_reqs = NULL;
> +	struct dentry *chan;
>  	void *dt;
>  
>  	scnprintf(chan_name, sizeof(chan_name), "%d", ch);
>  	chan = debugfs_create_dir(chan_name, chandir);
>  	dt = (void *)&pdev->phys[ch];
>  
> -	if (chan)
> -		chan_state = debugfs_create_file("state", 0400, chan, dt,
> -						 &chan_state_fops);
> -	if (chan_state)
> -		chan_descr = debugfs_create_file("descriptors", 0400, chan, dt,
> -						 &descriptors_fops);
> -	if (chan_descr)
> -		chan_reqs = debugfs_create_file("requesters", 0400, chan, dt,
> -						&requester_chan_fops);
> -	if (!chan_reqs)
> -		goto err_state;
> +	debugfs_create_file("state", 0400, chan, dt, &chan_state_fops);
> +	debugfs_create_file("descriptors", 0400, chan, dt, &descriptors_fops);
> +	debugfs_create_file("requesters", 0400, chan, dt, &requester_chan_fops);

This is not strictly equivalent.
Imagine that the debugfs_create_dir() fails and returns NULL :
 - in the former case, neither "state", "descriptors" nor "requesters" would be
   created
 - in the new code, "state", "descriptors" nor "requesters" will be created in
   the debugfs root directory

Apart from that it looks fine.

Cheers.

-- 
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
