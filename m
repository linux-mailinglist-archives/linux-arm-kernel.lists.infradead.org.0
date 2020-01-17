Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A2A1414BD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 00:14:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DIYd+Sau0rVojZiGmn/PaTrdUudNar7A86FSVwUxkZ8=; b=dl+eJOUbcZoLVX
	4vHVe5gltlue/JP0TN6ZxIwk2jSKkW6RBmuCAlHMb5S16YaUuWUruocO3Ev2WoROWmyxKnEX2KsP0
	xSf03qHNYZckdFWJ3llDZzw2TZWTBe7X2ddq9a4lA9bZaX7ANN9zLiu4aBdra/Tbv0P4w40HCDGUo
	dHXOhghxRrC+/LRJ4PTc/Zz+6MPFfxJfkoz6APhATcukd0T+gn7koa2SQUasfX6gOM92vYxA9bu9U
	yuwjfacuw64j80wmRnNOUlHfrN0fiwhRGnU44LD+0NFHOFcSLSqv58u8P8RPZQOdHGAprVcdd61jY
	Ns34vGjeOFGA3dn/9MmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isaoh-0001Rc-Qh; Fri, 17 Jan 2020 23:14:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isaob-0001R1-6z
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 23:14:10 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91E3E21835;
 Fri, 17 Jan 2020 23:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579302846;
 bh=v0YVk8S4SZUlGrRcCxvJLlZjm9za0AdDfoBmPLz+R7A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=alpuonwavCzr6Oo8IytbhRkRRrlWERwxrRXu/NYoOtnBJEQTJPQ5Zs9BuWzA9Gnsz
 phdqcCC+cote6rdizsJ/EOlRXaZe6HzCfQZUd8+WQ40seD1d0mMOTBYSaXUoBLbFyP
 oQjEiV2YAJu0Iw04JREdE/d3X0tbRBnAKvqeOaMw=
Date: Sat, 18 Jan 2020 00:14:03 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 0/1] coresight: next v5.5-rc6
Message-ID: <20200117231403.GA2132864@kroah.com>
References: <20200117185607.24244-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117185607.24244-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_151409_273360_EDB071BD 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 11:56:06AM -0700, Mathieu Poirier wrote:
> Hi Greg,
> 
> Just a single patch to add for the next cycle.

Next cycle?

This doesn't apply to my char-misc-linus branch at all.  But it does
apply to my -next branch which is for 5.6-rc1.

So which does this go to?

confused,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
