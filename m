Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A877A122FF6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 16:17:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=guyFbPUTuTofvTnwh3OSVSqJH/uW+ts1S9R8TFpLn+8=; b=kfNclWAE1RUC1n
	bWQJGCY3ejuEgC/8cgdGkncgmjJ70VfCUyEam3DgNi4VZ1VrZDeLkpw36A/UQfCaCO7dWCRKtC8sG
	UUsosxuHx2AI/PudEdod2w7w8OrYVaN0rlmwPBf+Uls0LSU+mI7I0/zy6/MygqvBnmroKYcBUOgcF
	cE4VFKmsu2AvDODoUj0Tagspf32uf/F3GapGApJBfyY9f0wIg3s9xCCARozraN13d8ggdApe0OKMW
	7t7JxE8bszKma9vVkTtLyvpXta9L9JbWwPD3w6MTEfP7Ml6yiWu8+eVkiPnC4k3nInDDoYDFsvOzl
	VMMsYvE7UYBtzHwRazyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihEbA-00028z-15; Tue, 17 Dec 2019 15:17:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihEb0-00028Z-1e
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 15:17:11 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6809E2146E;
 Tue, 17 Dec 2019 15:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576595828;
 bh=il1CvCc9YvCKbEZZGWzWIzWhs7dSJR3F9V+6YYPouT0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hrqWdS5vHLlXxM/XFKetJ7/abKxVz1BiJLGP3Lp/LrbG8dvDVbo6G4lp/c2EsGhjw
 1+5jAyMfIwd0oPbC3UJYEa9sR4HEzzk4Ss88c0ZzN+ixABvoDIWSTU6F+2p0A1gECT
 FznJoURH/gUoIQE+dYmC8ChHNoYTeTd9bWZNZfH8=
Date: Tue, 17 Dec 2019 16:17:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jeff Chang <richtek.jeff.chang@gmail.com>
Subject: Re: [PATCH] ASoC: Add MediaTek MT6660 Speaker Amp Driver
Message-ID: <20191217151706.GA3654493@kroah.com>
References: <1576148934-27701-1-git-send-email-richtek.jeff.chang@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576148934-27701-1-git-send-email-richtek.jeff.chang@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_071710_107248_4420A6BE 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, tiwai@suse.com,
 lgirdwood@gmail.com, jeff_chang@richtek.com, broonie@kernel.org,
 matthias.bgg@gmail.com, perex@perex.cz, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 07:08:54PM +0800, Jeff Chang wrote:
ookup("ext_dev_io", NULL);
> +	if (!d->rt_root) {
> +		d->rt_root = debugfs_create_dir("ext_dev_io", NULL);
> +		if (!d->rt_root)
> +			return -ENODEV;

No need to ever check the result of this function

> +		d->rt_dir_create = true;
> +	}
> +	d->ic_root = debugfs_create_dir(di->dirname, d->rt_root);
> +	if (!d->ic_root)
> +		goto err_cleanup_rt;

Same here.

> +	if (!debugfs_create_u16("reg", 0644, d->ic_root, &d->reg))
> +		goto err_cleanup_ic;

No need to ever check any result of any debugfs_create_* function.  In
fact, this function doesn't even return a value anymore, so if you tried
to build this against Linus's latest tree, it wouldn't work :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
