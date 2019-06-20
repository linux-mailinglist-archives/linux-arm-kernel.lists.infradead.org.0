Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F6E4C6D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 07:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GqzFWoS215gaSpfSVE0XB4WT+LBddk51rG0Brsn5DK0=; b=usvp4y7AsMwsjd
	Rr7U7UTF1vZsrIe0fQqkRyJY/XgyN5HbuQMJ9zNgXeu9eSL0kqJDFbp1upFTmcuMTE1K/6ffbKEgB
	onc5dSoks/fo25wpMEaEZFsL9vpbbSgIeFLSlE7xkzfgUk9RQJc0MGonnCAoKGJgfp57FEptfQLH6
	pTpqEDZuN1bcis76XT4SP58SBMglkZNeJ+jWlnDxwBtroAG+UZ3+mE5EaRbPzqJ4tVGPfsBqVAlPB
	n2Zsy3vMvzZDF63boEeRLEHm97jJJ0bXVJk4xVtt0AoUJNvbrd/XDPtapUlRZARpyYKcdKjVlP+PL
	D7EQwAiufMpUnLCXhM7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdpjr-0000jj-I5; Thu, 20 Jun 2019 05:35:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdpjf-0000jL-98
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 05:35:48 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 286A62147A;
 Thu, 20 Jun 2019 05:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561008946;
 bh=XjsKtpGuEeEkIweJfbBWoI8xxrNxKJFbdJfHPBTz3zI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nMLGSe+POBhOpIMqf1dZiME0rWel6F+XdFUTqt2RLJGCsUwg4ZNFvuQg+3H668jom
 hBwMMBfZu1RuOPn+r7WVgUS0csKZvS5Awx++5ucsRfanYB6ssIsGw6e4gtr8IMqk1l
 vZI7TlbpTCFHXG6qTncljvL5+YUD4KYGdzmBNQXY=
Date: Thu, 20 Jun 2019 07:35:44 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 19/45] coresight: platform: Make memory allocation helper
 generic
Message-ID: <20190620053544.GB4154@kroah.com>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
 <20190619172949.4522-20-mathieu.poirier@linaro.org>
 <20190619183128.GA6735@kroah.com>
 <CANLsYky+qPPtuhdCNxrPBPO9gjGEc3CZevef9FQNbKhJMYwh2w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYky+qPPtuhdCNxrPBPO9gjGEc3CZevef9FQNbKhJMYwh2w@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_223547_339925_68038485 
X-CRM114-Status: GOOD (  16.54  )
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 01:09:36PM -0600, Mathieu Poirier wrote:
> On Wed, 19 Jun 2019 at 12:31, Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Wed, Jun 19, 2019 at 11:29:23AM -0600, Mathieu Poirier wrote:
> > > From: Suzuki K Poulose <suzuki.poulose@arm.com>
> > >
> > > Rename the of_coresight_alloc_memory() => coresight_alloc_conns()
> > > as it is independent of the underlying firmware type. This is in
> > > preparation for the ACPI support.
> > >
> > > Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > ---
> > >  .../hwtracing/coresight/coresight-platform.c  | 34 +++++++++++--------
> > >  1 file changed, 19 insertions(+), 15 deletions(-)
> >
> > This file is not in my tree.
> >
> > Did you forget to send me the commit:
> >         coresight: Rename of_coresight to coresight-platform
> > ???
> 
> What ?!?
> 
> >
> > I applied all patches up to here, can you rebase and resend the
> > remaining ones?
> 
> Obviously something went wrong - let me look into it.
> 
> Sorry for the mess and thanks for the patience.

Now it showed up :(

Anyway, thanks for the patches, will go queue the rest up after my
morning coffee kicks in...

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
