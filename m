Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5D51E3D0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5z+cnTMM5x+nNLnEdxHMu1fimeP5ZiFcxFAKnzuIMoM=; b=OqEX0WxYoA4B6m
	ra3DO0CZIOQttScVPcTYtj0Bj9Agf5BY5JFdLbaE2GvjeZd+spp1kcLnQ3uoX8r8YfwD3YpPww4q4
	7xmyBE8mCPhg9b/8kcBKrzP+WRyhsLgISLe07k8kGtQLgKoEt9VSxSa4K2koOOcEbeK2L0p2u/kVK
	DB0dzX9Bv75oTysscJ2vn3mnFSmmSTHL6JRzd7UDtyxvfzL9dWJPwRonKMQyQEaoyWz6sMEXtyaAn
	buPEgPeHdfgtIhRx6YIEFQKC//JzFb01mGWzoZTWFs4bpCMXocAwZCHZNowzIJXLSNbdIvcxxkD38
	iP/HyefFy6bI5wYusvQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdry7-0007Y6-07; Wed, 27 May 2020 09:03:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrxr-0007XR-OS
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 09:03:11 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2E29207E8;
 Wed, 27 May 2020 09:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590570187;
 bh=2jwMruUZ1tzptspb46ikyyfONdQnCtmXiD757qxlIk8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WMH1wIWSDA6y6hiwb3+IUXGYP1TqH9M6peJSQhUR0Pa7HWNTOLegc+VQ5pp8pF3Ic
 70RYsfvqzRAxK4YmE/zrCLInkmLvLt70sl3G/y1Q8WV3O4p4tKzpM+yQsC8ESVvsaY
 +apTvmiyoXaL2vWE8OUTY3Mh3NdsMQOBpTPpi4mI=
Date: Wed, 27 May 2020 11:03:05 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 0/8] soc: Use custom soc attribute group and DEVICE_ATTR_RO
Message-ID: <20200527090305.GD179718@kroah.com>
References: <20200523170859.50003-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200523170859.50003-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_020310_506622_7DD240B1 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 23, 2020 at 06:08:51PM +0100, Sudeep Holla wrote:
> Hi,
> 
> While trying to add SMCCC based SOC_ID support, I found the custom soc
> attribute group which had no users in the tree and check if it can be
> used or can be removed. I realised that it could clean up the custom
> attributes that are added using device_create_file today.

Whole series looks good, nice job.

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
