Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C66A1714F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 11:29:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPjzmY1efNYBWl8ba723tjAhzE8ymq4yLclbKfy8Tos=; b=RkZ+bcwjoIddnJ
	uaxzUXbyhjGB0Ls8IRjviR+9HiXp5zNlJ2JFj2xFc6J4B2bKOpzBsciHYdOoiT1QP2K4rQwhkD57C
	GMYFDJ2LNWl5kgH+6a3fnea757KM7hKgK2d8YL/+V64qYlEDX4n5Il8vhMBUsBHqyZLJwW1Zza4BN
	vXdpoMntBJaS8vF1tfLI346h2UABck1yNIxb4deTzrId0bt8h1RxXolZWZHzTtxhiCMAJRXfX5W0Q
	KXM80+sBVpcDwW3lcPdXA+OLPL0/1otOaH4hPUxDZYg/9teePdjHdEwbhePljUYUHIoKc5KoYsWYY
	ggympjZNG1dYI/vaiN0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7GPQ-0004Vh-QA; Thu, 27 Feb 2020 10:28:48 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7GPA-0004UM-Ib; Thu, 27 Feb 2020 10:28:35 +0000
X-UUID: 2e029f293bd74d5f9b408351b56bf309-20200227
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=LEaZatPGQmSTfFljV7UsLw7F1kUhEvQfFkNEr7oUNNE=; 
 b=hd69dLLIulXRKM4L8dzuOAO0bc1n/LqO4Bhzsq3RRc2lahOAQhpDH9w3rmsK11b6U8vR8PeQ4wr0qnSGQ/IKcO4CalqELPXGuEcAtu+YW1+8LXEs5WpjAm+mseCw5vP84MA+PGvooxwUv6wwQdiFalQUrJa3E2qi5KTTfwa+EYI=;
X-UUID: 2e029f293bd74d5f9b408351b56bf309-20200227
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1969439318; Thu, 27 Feb 2020 02:28:29 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 27 Feb 2020 02:28:26 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 27 Feb 2020 18:28:25 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 27 Feb 2020 18:28:13 +0800
Message-ID: <1582799305.12083.12.camel@mtkswgap22>
Subject: Re: [PATCH v4] usb: gadget: f_fs: try to fix AIO issue under ARM 64
 bit TAGGED mode
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Date: Thu, 27 Feb 2020 18:28:25 +0800
In-Reply-To: <20200227095521.GA3281767@arrakis.emea.arm.com>
References: <1582627315-21123-1-git-send-email-macpaul.lin@mediatek.com>
 <1582718512-28923-1-git-send-email-macpaul.lin@mediatek.com>
 <20200227095521.GA3281767@arrakis.emea.arm.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_022832_625422_A9A97484 
X-CRM114-Status: GOOD (  27.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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

On Thu, 2020-02-27 at 09:55 +0000, Catalin Marinas wrote:
> On Wed, Feb 26, 2020 at 08:01:52PM +0800, Macpaul Lin wrote:
> > This issue was found when adbd trying to open functionfs with AIO mode.
> > Usually, we need to set "setprop sys.usb.ffs.aio_compat 0" to enable
> > adbd with AIO mode on Android.
> > 
> > When adbd is opening functionfs, it will try to read 24 bytes at the
> > first read I/O control. If this reading has been failed, adbd will
> > try to send FUNCTIONFS_CLEAR_HALT to functionfs. When adbd is in AIO
> > mode, functionfs will be acted with asyncronized I/O path. After the
> > successful read transfer has been completed by gadget hardware, the
> > following series of functions will be called.
> >   ffs_epfile_async_io_complete() -> ffs_user_copy_worker() ->
> >     copy_to_iter() -> _copy_to_iter() -> copyout() ->
> >     iterate_and_advance() -> iterate_iovec()
> > 
> > Adding debug trace to these functions, it has been found that in
> > copyout(), access_ok() will check if the user space address is valid
> > to write. However if CONFIG_ARM64_TAGGED_ADDR_ABI is enabled, adbd
> > always passes user space address start with "0x3C" to gadget's AIO
> > blocks. This tagged address will cause access_ok() check always fail.
> > Which causes later calculation in iterate_iovec() turn zero.
> > Copyout() won't copy data to user space since the length to be copied
> > "v.iov_len" will be zero. Finally leads ffs_copy_to_iter() always return
> > -EFAULT, causes adbd cannot open functionfs and send
> > FUNCTIONFS_CLEAR_HALT.
> > 
> > Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> > Cc: Peter Chen <peter.chen@nxp.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Miles Chen <miles.chen@mediatek.com>
> > ---
> > Changes for v4:
> >   - Abandon solution v3 by adding "TIF_TAGGED_ADDR" flag to gadget driver.
> >     According to Catalin's suggestion, change the solution by untagging 
> >     user space address passed by AIO in gadget driver.
> 
> Well, this was suggested in case you have a strong reason not to do the
> untagging in adbd. As I said, tagged pointers in user space were
> supported long before we introduced CONFIG_ARM64_TAGGED_ADDR_ABI. How
> did adb cope with such tagged pointers before? It was not supposed to
> pass them to the kernel.

Thank for your explanation. Since adbd was developed by Google and we
can only suggest (like, file an issue) to them. Here provides a
temporary solution for other developer to solve there needs in a short
period. Yes, I understood not supposed to pass those tagged pointers to
kernel and will also explain this to Google adbd owners.

> > diff --git a/drivers/usb/gadget/function/f_fs.c b/drivers/usb/gadget/function/f_fs.c
> > index ce1d023..192935f 100644
> > --- a/drivers/usb/gadget/function/f_fs.c
> > +++ b/drivers/usb/gadget/function/f_fs.c
> > @@ -715,7 +715,20 @@ static void ffs_epfile_io_complete(struct usb_ep *_ep, struct usb_request *req)
> >  
> >  static ssize_t ffs_copy_to_iter(void *data, int data_len, struct iov_iter *iter)
> >  {
> > -	ssize_t ret = copy_to_iter(data, data_len, iter);
> > +	ssize_t ret;
> > +
> > +#if defined(CONFIG_ARM64)
> > +	/*
> > +	 * Replace tagged address passed by user space application before
> > +	 * copying.
> > +	 */
> > +	if (IS_ENABLED(CONFIG_ARM64_TAGGED_ADDR_ABI) &&
> > +		(iter->type == ITER_IOVEC)) {
> > +		*(unsigned long *)&iter->iov->iov_base =
> > +			(unsigned long)untagged_addr(iter->iov->iov_base);
> > +	}
> > +#endif
> > +	ret = copy_to_iter(data, data_len, iter);
> 
> Here you should probably drop all the #ifdefs and IS_ENABLED checks
> since untagged_addr() is defined globally as a no-op (and overridden by
> arm64 and sparc).
> 
> Please don't send another patch until we understand (a) whether this is
> a user-space problem to fix or (b) if we fix it in the kernel, is this
> the only/right place? If we settle for the in-kernel untagging, do we
> explicitly untag the addresses in such kernel threads or we default to
> TIF_TAGGED_ADDR for all kernel threads, in case they ever call use_mm()
> (or we could even hook something in use_mm() to set this TIF flag
> temporarily).
> 
> Looking for feedback from the Android folk and a better analysis of the
> possible solution.
> 

If we have any further update about this user space issue, I'll update
the solution to this thread for other developers who need to solve this
issue.

Thanks!
Macpaul Lin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
