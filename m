Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 615271BD49F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 08:29:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pi+l6ZbWdnZe14+1vDddwmzurSQcaNQVfjh8F0IApTs=; b=PfG+YCjJueS/Lh
	Xil9mCebGNdd6f5pS4lsffYFgJUriRSq2eNP1YvC1UwnQ+Hu99Cb7fBUcSnAn3ZdaveJ64FTGuQe+
	nRIU/pQDReEhCAb8l3zSrMQk1nbvlloUNGVtgk4TlbJw121IZmlbMsOjRRH8gAthmnuXRVGW7oxnn
	uydATMMarI2VyiBWq+UlhkHfTHQpzO5DTOn6TSW8E3MKmuYS2ZrdUzBw7R4NzfeBNvmAm7yoP5hH/
	1g31SCSKLL8Wgj98uY24Z1oG9zMJmeYzbMzsXPIxLEOEEEp2FNUkE7MlzepYMu5NuAXftqYSMgHXS
	8YxlTqtnWQ1jGHYq4q2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTgDI-0001HM-2x; Wed, 29 Apr 2020 06:28:56 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTgD8-0001GX-II
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 06:28:48 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3CAC268BEB; Wed, 29 Apr 2020 08:28:42 +0200 (CEST)
Date: Wed, 29 Apr 2020 08:28:42 +0200
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: oabi-compat: fix epoll_ctl build failure
Message-ID: <20200429062842.GA31478@lst.de>
References: <20200428213747.3663311-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428213747.3663311-1-arnd@arndb.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_232846_752482_4C2C9B4F 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, Russell King <rmk+kernel@armlinux.org.uk>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 11:37:30PM +0200, Arnd Bergmann wrote:
> Two functions are not declared or defined when CONFIG_EPOLL is
> disabled:

Can we just compile out the whole syscall handler and use
COND_SYSCALL_COMPAT or so?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
