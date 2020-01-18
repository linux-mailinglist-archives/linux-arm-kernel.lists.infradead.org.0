Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 149501417DB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 15:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NY50DL3YQ8d9Y8XgLwogDoTIB8aKDDqgbiJQXKj430A=; b=Ch16DtXRxFmHep
	Kq92FCNcBegdpDbEof0inGwx39NqREw5ChhDfCwmQgG5Q2edklxs4Ab/+Q07/Gr0tGu5ml2yDT9K6
	qavUUAJZqSU7FG7BSH7BhK75OzwjtpaS57AQTbhgvDy67n2o/fknEQbZSz5auIsT19MkOC0xJn0Lc
	8XRmpOzrEdY/hB4mlTsd4izH3EOJVDzkKiUfGBOR5xkaF7xgUK8xW8UdqMySnxc9BfxaFIgvOnyi+
	VYDX78Q+BM4PYv6KGDAAhMYNyalCtluQyjdWyaca6wlGO5d9MaTHvOOO4K+GP75EXKBev39u4aD48
	LpFJMEKScfIUdmGKUk4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isoki-00073C-8T; Sat, 18 Jan 2020 14:07:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isokR-00072p-E1
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Jan 2020 14:06:48 +0000
Received: from localhost (170.143.71.37.rev.sfr.net [37.71.143.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C375824699;
 Sat, 18 Jan 2020 14:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579356406;
 bh=VrGnymp6n3Xiztc2LQMXHxuOmTaM8xjGDPxYp0IWfuc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ro5w3msV1RRAuGYQvyI2e+1zqHAAHgK+X6EP5zVVsS//2UoVOXgavEufTIrKMOvIb
 28J+GWSmWLjG/YUe/ySV5UV7w0r6/uomGxst6wnBJm4Cz0mzR37w3PDjiEaFttcKEw
 0aHhSvlbA1v2M+iFmc/JKH76phXxptiwrZj6ueK8=
Date: Sat, 18 Jan 2020 15:06:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 0/1] coresight: next v5.5-rc6
Message-ID: <20200118140644.GA76711@kroah.com>
References: <20200117185607.24244-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117185607.24244-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_060647_496042_04D78C6F 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
> 
> Thanks,
> Mathieu
> 
> Arnd Bergmann (1):
>   coresight: etm4x: Fix unused function warning
> 
>  drivers/hwtracing/coresight/coresight-etm4x.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)

I figured it out, this is already in my tree and scheduled to go to
Linus later today...

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
