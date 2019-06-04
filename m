Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF56341BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:24:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dR7niWG/CmJrhp7tsqmaFdHBjhtv8LZwNOgyI1UeNcY=; b=LVHjnrQN7EQnGd
	Aa5aYQCms62k3AQJHFYH3+nw0fAYVWVS/kYr99rxdBXuIVng5kSrsgMv6WtIhMzVPpgoDQVRLMwur
	IxeX+fnK22YZ7YaHR0ihTb3xOS0gkhFCMS+UK8i7BORCrnljBaDIskX9HKqA2dN5UenC1aJMReQUa
	cUYnEWg4D0MvA3vZ6rGK2aHoZ+LmTnEcsIjUEr0HbqNHbEYSLygXgtrNA+hY0OhX6J01KCQb7zJv2
	Iy4dc+Bj91nrUdITxBlxMplRDR1xYCxwtJjT2Z9YqsXWDTAlmCvWYKo0VbkRrHCwiOXUT+waqFYz2
	v0gSXsC4LE3pBGt8Swiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4jy-0006Dc-At; Tue, 04 Jun 2019 08:24:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4jq-0006DG-9B; Tue, 04 Jun 2019 08:24:11 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C76423CCA;
 Tue,  4 Jun 2019 08:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559636649;
 bh=6slerfuNDoj7Is3gV1c++tUMoScJL8Np9rrWGf3bwEA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pw0FhfzT3SowGqAs0l+j0iJWvItPv9FKYOSML2mpYzvbDof5UrR+5denSGgQQVuki
 fFuryBzfBU4uCZOyvIOnnbCd5c6MKY9rHsQvHf9KfeS8aq2Sn6NX0RYuYn/x3dQDcF
 yDZh82G+aEB+uVzt6qhfr5ir0z309DLzk/ERXiMU=
Date: Tue, 4 Jun 2019 10:24:07 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Felipe Balbi <felipe.balbi@linux.intel.com>
Subject: Re: [PATCH v4] usb: create usb_debug_root for gadget only
Message-ID: <20190604082407.GA3783@kroah.com>
References: <1559633647-29040-1-git-send-email-chunfeng.yun@mediatek.com>
 <20190604073706.GA25045@kroah.com> <87k1e123mc.fsf@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87k1e123mc.fsf@linux.intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_012410_529379_9EC043D7 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 10:47:55AM +0300, Felipe Balbi wrote:
> 
> Hi,
> 
> Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:
> >> +struct dentry *usb_debugfs_init(void)
> >> +{
> >> +	if (!usb_debug_root)
> >> +		usb_debug_root = debugfs_create_dir("usb", NULL);
> >> +
> >> +	atomic_inc(&usb_debug_root_refcnt);
> >> +
> >> +	return usb_debug_root;
> >> +}
> >> +EXPORT_SYMBOL_GPL(usb_debugfs_init);
> >> +
> >> +void usb_debugfs_cleanup(void)
> >> +{
> >> +	if (atomic_dec_and_test(&usb_debug_root_refcnt)) {
> >> +		debugfs_remove_recursive(usb_debug_root);
> >> +		usb_debug_root = NULL;
> >> +	}
> >> +}
> >> +EXPORT_SYMBOL_GPL(usb_debugfs_cleanup);
> >
> > Only remove the debugfs subdir if the usbcore module is removed.  Create
> > the debugfs subdir when the usbcore module is loaded.  No need for any
> > reference counting of any sort at all.  No need to overthink this :)
> 
> There is a slight need to overthink. He wants to use the same directory
> for gadget-only builds too :-)

Again, that's fine, this file will be loaded for those builds as well,
right?  Otherwise, how would this code even be present?  :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
