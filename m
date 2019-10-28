Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C52DE7BD2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 22:55:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DhBTM0HRKNPibBGQiq2HSOzsLMulA4sIYXVBtTYksAI=; b=UFKMq800PaDZYP
	SQHri3F0fQDcuWqmqE3ZhRGhYXW+/+VkEU/QQVeWIonaDxBcCwcJj1bJTfKeAFNkrwF9HXv7NCnWr
	L0zcNchW90VyhnvriMnIulJXRo3x/apPOU3XaFoqaMSYqimAU5Q8AGMAfyXYd0il2MWOuh8yEUjrZ
	B8BmL1J13t5J5GSW/M9JXYVZjeTE7gEBwCuHMC9f3ezMXUKFwQTsdgiFoKqlnTW+JM9oOWLR6JBoF
	bFf3GszI30DsgP5g7XW6+a/aRx86lxWNpjo8KE5CNFYebjW+POZUCuZSplB4T2eOkdDYd9nmnEpyo
	3AAGf/weWQSaZbEanrdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPCz2-0003bL-Aa; Mon, 28 Oct 2019 21:55:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCyr-0003au-Of
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 21:55:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E44B821479;
 Mon, 28 Oct 2019 21:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572299716;
 bh=Rc95UNWyxGNZm3HxfC9xIsJjTnLTSIuz9wUtAFykboU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QHFCPZDBqR5Z8FzqCKu6QIEzbXI8bIcVg41IW5SWRRLue8d6vpsqlJlicuWXCK0Xc
 CDMoSbAfrAx1Sd5Ib6KsblBiqBCCYnBk/jdOEUDvJxU+Of44Cu8POhYgKslXOFpS5T
 rdta4Ep8cCxOgSYm8C0CBTcdYnVAmlGjr0uiArMY=
Date: Mon, 28 Oct 2019 21:55:11 +0000
From: Will Deacon <will@kernel.org>
To: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
Subject: Re: [PATCH v6 0/2] Add CCPI2 PMU support
Message-ID: <20191028215510.GA8532@willie-the-truck>
References: <1571218608-15933-1-git-send-email-gkulkarni@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571218608-15933-1-git-send-email-gkulkarni@marvell.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_145517_821887_EE33A472 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "corbet@lwn.net" <corbet@lwn.net>, Jan Glauber <jglauber@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>,
 "gklkml16@gmail.com" <gklkml16@gmail.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 09:36:57AM +0000, Ganapatrao Prabhakerrao Kulkarni wrote:
> Add Cavium Coherent Processor Interconnect (CCPI2) PMU
> support in ThunderX2 Uncore driver.
> 
> v6:
> 	Rebased to 5.4-rc1

Thanks, this looks good to me so I'll queue it up for 5.5.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
