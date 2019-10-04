Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7053BCBAD6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:52:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKK7GUPXQSPDGW9otjziT/UpSzURSpd15LzH03+OsDQ=; b=PpdDrqU5o49rhL
	TCuEMWLnbPzXO6VgNjOGzrJzdrvOzXQvdSfF8378Utqi/gWl4R39x6d39Jqzb9L46gt4+UYDBpNWL
	eVSGxEfEAI4xHqSiDg6JKGyviBKkGyCcYC/8ByUYUkMdEbZRxJzJmAF6tL9S90dwRT3Tz17drBQGk
	MlRXAtIOhLfb+Wlgz9gbpxf+1Gok+CKr7JAJVNhBFIpbXvIB1wIcrCwxdTgF/zjWzHlM1IiXe1+Og
	ZSyVc8fnhstlD6nh6fhaSTncDa1bI/giKt7+szTwzgpfSY6l6J9Cyo4Z6T8oI+kaBQBqKB1SfPvdL
	vZ0dQqf7dmTFC47iqt2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGN49-0003nk-S4; Fri, 04 Oct 2019 12:52:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGN42-0003nF-SX
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:52:08 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 662DC2070B;
 Fri,  4 Oct 2019 12:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570193525;
 bh=WqlDNg8S8OuSkb9b25DHAZ1G6+OOGdlt/5Jwh2jA7fo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2HO6pFR+mwiaYeowV/EK8iLj1OCuQhfmaLxL5twOFHecZ9MPzzUo7Szwj5ERMCkbf
 lbRoi/5i4NQ2eThQ9uf47iLzQxgffEhozvqfP6Zr2HgeuTiB/HPph+XzdqqHPsqWrx
 xeJEUHcNDCw+8Dpyz9QR6D5l9xlW807icdSlneDs=
Date: Fri, 4 Oct 2019 14:52:03 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH] serial: uartps: Fix uartps_major handling
Message-ID: <20191004125203.GA583048@kroah.com>
References: <00a269bc15c4f8c0a73c14958c5d7a5d37ff70ce.1568359707.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00a269bc15c4f8c0a73c14958c5d7a5d37ff70ce.1568359707.git.michal.simek@xilinx.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_055206_941015_1F45D2EA 
X-CRM114-Status: GOOD (  10.31  )
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
Cc: monstr@monstr.eu, Paul Thomas <pthomas8589@gmail.com>,
 linux-kernel@vger.kernel.org, git@xilinx.com, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 09:28:29AM +0200, Michal Simek wrote:
> There are two parts which should be fixed. The first one is to assigned
> uartps_major at the end of probe() to avoid complicated logic when
> something fails.
> The second part is initialized uartps_major number to 0 when last device is
> removed. This will ensure that on next probe driver will ask for new
> dynamic major number.
> 
> Fixes: c9712e333809 ("serial: uartps: Use the same dynamic major number for all ports")

This is not a valid sha1 in Linus's tree :(

Please fix up and resend.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
