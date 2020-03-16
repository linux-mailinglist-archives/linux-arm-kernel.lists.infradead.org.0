Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAB3186637
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 09:20:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lxzkzk1Bfh5HjNV7/+XyLNw0oPZmh0Q4IdxRQeUv+QA=; b=nTllDGfZqCfB/N
	wY76L8gXHShDiP7t7aFsgcSScMsrh6KvgRL75Llo0X3hECTEk7BqNINkhpgfiURvgq2cIwIrHBPJ1
	JwIVCUjmfBSsRq097RgroU4rGfFzMAu7Rzftqk26I+PgKE7Nbvgb35AYfLYiKmwLfexShGL5t7x2D
	kBYwOW9GdpWJzHa2VK5Y922Vt4rYir7xhDx5j1Azq3AzQ+sbE86iF7i/BE+lAU0Dm16RLdvfqCUD7
	p4B7plqjIBpOASBywAJf9jaIphaVxBFsu2Jkk403a0R9V+fW2e44cbsxsZqQzXxr9t4+4Jtam7mIy
	Nfdvpwpc5VL/uC1MWSow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDkzC-0002Hf-GB; Mon, 16 Mar 2020 08:20:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDkz4-0002Gq-FU
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 08:20:27 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48ADA20674;
 Mon, 16 Mar 2020 08:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584346823;
 bh=Gb7YWQB1S6bVtJpIVGMzCmbQhj/wRcSCtzuilMMDbCs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yLKNJWnQsuUzhoIulmw596ppKheY/C9kRaK3uty69LL/pvdP8XznumVOw/kpYA2sE
 VgMipgEllEd/ttPMAIMdb0LA8MNGKH5687eUj3ElsdR0CVIJw190Q1NOT1fLqao2Wh
 KB+9LOpGlSijWdeGwP3dQKu3p+MW5rQJJNFmIhUc=
Date: Mon, 16 Mar 2020 09:20:21 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Zheng Wei <wei.zheng@vivo.com>
Subject: Re: [PATCH v2,RESEND] btrfs: fix the duplicated definition of
 'inode_item_err'
Message-ID: <20200316082021.GA3146292@kroah.com>
References: <20200316034600.125962-1-wei.zheng@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316034600.125962-1-wei.zheng@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_012026_541653_D6854A1C 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-arm-kernel@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 kernel@vivo.com, Catalin Marinas <catalin.marinas@arm.com>,
 Josef Bacik <josef@toxicpanda.com>, linux-kernel@vger.kernel.org,
 Chris Mason <clm@fb.com>, Yunfeng Ye <yeyunfeng@huawei.com>,
 Hanjun Guo <guohanjun@huawei.com>, David Sterba <dsterba@suse.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-btrfs@vger.kernel.org,
 Will Deacon <will@kernel.org>, wenhu.wang@vivo.com,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 11:45:57AM +0800, Zheng Wei wrote:
> remove the duplicated definition of 'inode_item_err'
> in the file tree-checker.c
> 
> Signed-off-by: Zheng Wei <wei.zheng@vivo.com>
> ---
> 
> changelog
> v1 -> v2
>  - resend for the failure of delivery to some recipients.
> 
>  fs/btrfs/tree-checker.c | 4 ----
>  1 file changed, 4 deletions(-)

Your choice of people to send this patch to is very odd:

$ ./scripts/get_maintainer.pl --file fs/btrfs/tree-checker.c
Chris Mason <clm@fb.com> (maintainer:BTRFS FILE SYSTEM)
Josef Bacik <josef@toxicpanda.com> (maintainer:BTRFS FILE SYSTEM)
David Sterba <dsterba@suse.com> (maintainer:BTRFS FILE SYSTEM)
linux-btrfs@vger.kernel.org (open list:BTRFS FILE SYSTEM)
linux-kernel@vger.kernel.org (open list)


Please be more mindful.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
