Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEC33B818
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 17:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=znX+ZRiJoj/KktYuxl99ilAAG7o4K9HAXz1VEGhjZtY=; b=pNrq4KvtPHXPRI
	3y24cB3qyikJBW/pUZNMmBYMEG3efd6KlkWGm0ldIo7PyICTLJ3DWjx1flxEypnhRM6XBJYllBYju
	rwhbAsRb7EAvoe4h4cL2lMR5ajZB3ZZoWPNKOuqp0+llZ8J5y7jGYYrdtnhN5b0abjKhGDCF2XmBD
	GvWv4aHsxCIPSlskZ1qAmAPo2EcTp5w6nsyIfhu+N6QjQ5o859cehDqwor5OAcY7jFIlSc87SDliu
	towqy236bem+Wt/SCV3nb0mc4JrYdqJuXrChlfnOHQGR7bM+G6atrUwcGynpNKQqkCOBexHyjQmIn
	TIZo+pMBcSLLqAQzblFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haLyD-0003Ms-FA; Mon, 10 Jun 2019 15:12:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haLy4-0003MH-Mo
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 15:12:17 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D408207E0;
 Mon, 10 Jun 2019 15:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560179536;
 bh=h7mmrFketdGrH+jhcRTn+JLEZxAETRUZZjfI6AMHvCA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hf0QAKqPWs3ENU591+37VscvqlxLG+/JbxsSF6qbnzU1/X5YVItVSaPjV2rM4rQ09
 B2uL15jg0n+qvd/+BGm0HDMCWtU1ZX9y71BYyMplT4kmo4siqp9sMlIAHDG9P9BcSE
 gwGJufDeL6oNOgTo8oiicRdA7nzeTfFWE1hgQOPk=
Date: Mon, 10 Jun 2019 17:12:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH 1/2] serial: xilinx_uartps: Fix warnings in the driver
Message-ID: <20190610151213.GA7305@kroah.com>
References: <c6753260caf8b20cc002b15fcbf22b759c91d760.1560156294.git.michal.simek@xilinx.com>
 <20190610144425.GC31086@kroah.com>
 <888c7d0a-28dc-978c-662a-e96ee3863c41@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <888c7d0a-28dc-978c-662a-e96ee3863c41@xilinx.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_081216_762067_913E3951 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: monstr@monstr.eu, Nava kishore Manne <nava.manne@xilinx.com>,
 linux-kernel@vger.kernel.org, johan@kernel.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 05:06:57PM +0200, Michal Simek wrote:
> On 10. 06. 19 16:44, Greg KH wrote:
> > On Mon, Jun 10, 2019 at 10:44:55AM +0200, Michal Simek wrote:
> >> From: Nava kishore Manne <nava.manne@xilinx.com>
> >>
> >> This patch fixes the below warning
> >>
> >>         -->Symbolic permissions 'S_IRUGO' are not preferred.
> >>            Consider using octal permissions '0444'.
> >>         -->macros should not use a trailing semicolon.
> >>         -->line over 80 characters.
> >>         -->void function return statements are not generally useful.
> >>         -->Prefer 'unsigned int' to bare use of 'unsigned'.
> >>
> >> Signed-off-by: Nava kishore Manne <nava.manne@xilinx.com>
> >> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> >> ---
> >>
> >> Happy to split it if needed.
> > 
> > Please split.  Do not do more than one "logical thing" per patch.
> > 
> > And the subject is not correct, there are no general "warnings", these
> > are all checkpatch warnings, not a build issue.
> 
> ok. Will do. Any issue with second patch?

It will change your user/kernel api but hey, it's your call, it looks
like a nice fix to me :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
