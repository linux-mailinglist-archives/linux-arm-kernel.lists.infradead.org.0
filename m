Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C21A171473
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 10:55:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQrqV2cN86zLNoi7DgQrGGAKiFE4Y8feBu512n+htvY=; b=MwtBqEBCmZuf7K
	I1804N7YH7s4ox56ShqK9ai7o68/mPdeb8MLfvy9O+vgkG3lchcmaNE3Tx+3aS6YFixJAiVJq2JOC
	OeXnGWuw+r2xA2uBKicppyVEdNQ9YkeiIiy1wSYx86DV5yX7Vn5z6b3wBNCP1J6cG/nXXb1tSNWQq
	XpyOlAUPu5mzflvwlhKGtyBeBIY8BMGPEygw8l+FnUaz36HD+4kLaEmHq2nd9Jn2QFyet9g/6Z5j+
	i+/fpxZmMDeBcxcBA33rEBmjAGqh1uV7NQeUAvS/abEHkjBEn5SZZGPU2271131wWq6dH0I9Pypdp
	7dTYcQ2FpcUr2i/m7LRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7FtI-0000yx-0w; Thu, 27 Feb 2020 09:55:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Ft8-0000yI-9V; Thu, 27 Feb 2020 09:55:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B70461FB;
 Thu, 27 Feb 2020 01:55:25 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 4E7FB3F881; Thu, 27 Feb 2020 01:55:23 -0800 (PST)
Date: Thu, 27 Feb 2020 09:55:21 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Subject: Re: [PATCH v4] usb: gadget: f_fs: try to fix AIO issue under ARM 64
 bit TAGGED mode
Message-ID: <20200227095521.GA3281767@arrakis.emea.arm.com>
References: <1582627315-21123-1-git-send-email-macpaul.lin@mediatek.com>
 <1582718512-28923-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582718512-28923-1-git-send-email-macpaul.lin@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_015526_421408_D9B6A74F 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sasha Levin <sashal@kernel.org>, Shen Jing <jingx.shen@intel.com>,
 CC Hwang <cc.hwang@mediatek.com>, Peter Chen <peter.chen@nxp.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Jerry Zhang <zhangjerry@google.com>, andreyknvl@google.com,
 linux-usb@vger.kernel.org, Loda Chou <loda.chou@mediatek.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Miles Chen <miles.chen@mediatek.com>, John Stultz <john.stultz@linaro.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Vincent Pelletier <plr.vincent@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 08:01:52PM +0800, Macpaul Lin wrote:
> This issue was found when adbd trying to open functionfs with AIO mode.
> Usually, we need to set "setprop sys.usb.ffs.aio_compat 0" to enable
> adbd with AIO mode on Android.
> 
> When adbd is opening functionfs, it will try to read 24 bytes at the
> first read I/O control. If this reading has been failed, adbd will
> try to send FUNCTIONFS_CLEAR_HALT to functionfs. When adbd is in AIO
> mode, functionfs will be acted with asyncronized I/O path. After the
> successful read transfer has been completed by gadget hardware, the
> following series of functions will be called.
>   ffs_epfile_async_io_complete() -> ffs_user_copy_worker() ->
>     copy_to_iter() -> _copy_to_iter() -> copyout() ->
>     iterate_and_advance() -> iterate_iovec()
> 
> Adding debug trace to these functions, it has been found that in
> copyout(), access_ok() will check if the user space address is valid
> to write. However if CONFIG_ARM64_TAGGED_ADDR_ABI is enabled, adbd
> always passes user space address start with "0x3C" to gadget's AIO
> blocks. This tagged address will cause access_ok() check always fail.
> Which causes later calculation in iterate_iovec() turn zero.
> Copyout() won't copy data to user space since the length to be copied
> "v.iov_len" will be zero. Finally leads ffs_copy_to_iter() always return
> -EFAULT, causes adbd cannot open functionfs and send
> FUNCTIONFS_CLEAR_HALT.
> 
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> Cc: Peter Chen <peter.chen@nxp.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Miles Chen <miles.chen@mediatek.com>
> ---
> Changes for v4:
>   - Abandon solution v3 by adding "TIF_TAGGED_ADDR" flag to gadget driver.
>     According to Catalin's suggestion, change the solution by untagging 
>     user space address passed by AIO in gadget driver.

Well, this was suggested in case you have a strong reason not to do the
untagging in adbd. As I said, tagged pointers in user space were
supported long before we introduced CONFIG_ARM64_TAGGED_ADDR_ABI. How
did adb cope with such tagged pointers before? It was not supposed to
pass them to the kernel.

> diff --git a/drivers/usb/gadget/function/f_fs.c b/drivers/usb/gadget/function/f_fs.c
> index ce1d023..192935f 100644
> --- a/drivers/usb/gadget/function/f_fs.c
> +++ b/drivers/usb/gadget/function/f_fs.c
> @@ -715,7 +715,20 @@ static void ffs_epfile_io_complete(struct usb_ep *_ep, struct usb_request *req)
>  
>  static ssize_t ffs_copy_to_iter(void *data, int data_len, struct iov_iter *iter)
>  {
> -	ssize_t ret = copy_to_iter(data, data_len, iter);
> +	ssize_t ret;
> +
> +#if defined(CONFIG_ARM64)
> +	/*
> +	 * Replace tagged address passed by user space application before
> +	 * copying.
> +	 */
> +	if (IS_ENABLED(CONFIG_ARM64_TAGGED_ADDR_ABI) &&
> +		(iter->type == ITER_IOVEC)) {
> +		*(unsigned long *)&iter->iov->iov_base =
> +			(unsigned long)untagged_addr(iter->iov->iov_base);
> +	}
> +#endif
> +	ret = copy_to_iter(data, data_len, iter);

Here you should probably drop all the #ifdefs and IS_ENABLED checks
since untagged_addr() is defined globally as a no-op (and overridden by
arm64 and sparc).

Please don't send another patch until we understand (a) whether this is
a user-space problem to fix or (b) if we fix it in the kernel, is this
the only/right place? If we settle for the in-kernel untagging, do we
explicitly untag the addresses in such kernel threads or we default to
TIF_TAGGED_ADDR for all kernel threads, in case they ever call use_mm()
(or we could even hook something in use_mm() to set this TIF flag
temporarily).

Looking for feedback from the Android folk and a better analysis of the
possible solution.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
