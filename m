Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4204173D77
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 17:49:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=diidhEYBiFPKEJteBO9mXOY9Np155j8MwNC6vvgXSVQ=; b=CWVDmxl5bIi+2L
	5Sj3WHdXchviEMAH31R1Q5DJQ7Bz5jo3tCvotrubZtj1L73Qu6XEpB1YAOrmAomyx+j5U27Qw+G3J
	sgkbJi+RTVZd8uQmdoxTqY59Rpn5GdPoeV9rR/k1v+P3t85f5JCQTkX4lp6XGFc2nswpghvJm8JbD
	ZlHZNsfl/bWpUFjmUBhmizZPUqDfjSkURtKB8qLu2rt6ZfikSBTXB0cmz4gn4fyzFyykB3VUYWsk2
	9cNV6EyJGSTzcSJxIAE16yazymQN4/xISOy/F0BNUw/seLBC2lUH+CK2+XPmvsb3eIcOQ9pjUSCiR
	TKjMTIP9c2dHIgbafFsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ip1-0000Zy-NZ; Fri, 28 Feb 2020 16:49:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7ion-0000ZY-Uy; Fri, 28 Feb 2020 16:48:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6113031B;
 Fri, 28 Feb 2020 08:48:53 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D5E293F73B; Fri, 28 Feb 2020 08:48:50 -0800 (PST)
Date: Fri, 28 Feb 2020 16:48:48 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Subject: Re: [PATCH v4] usb: gadget: f_fs: try to fix AIO issue under ARM 64
 bit TAGGED mode
Message-ID: <20200228164848.GH4019108@arrakis.emea.arm.com>
References: <1582627315-21123-1-git-send-email-macpaul.lin@mediatek.com>
 <1582718512-28923-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582718512-28923-1-git-send-email-macpaul.lin@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_084854_290909_38FBA502 
X-CRM114-Status: GOOD (  12.63  )
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
 Miles Chen <miles.chen@mediatek.com>, eugenis@google.com,
 John Stultz <john.stultz@linaro.org>, Al Viro <viro@zeniv.linux.org.uk>,
 Vincent Pelletier <plr.vincent@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 08:01:52PM +0800, Macpaul Lin wrote:
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
>  	if (likely(ret == data_len))
>  		return ret;

I had forgotten that we discussed a similar case already a few months
ago (thanks to Evgenii for pointing out). Do you have this commit
applied to your tree: df325e05a682 ("arm64: Validate tagged addresses in
access_ok() called from kernel threads")?

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
