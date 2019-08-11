Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7615389010
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 09:04:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vPUX05kXOvy/Y6DSsN1TtFazbJ8f1pnW6q+lzZVr2y4=; b=r5f9F0pd1yylsM
	Avx6GQSJPMCQuVKaBard+SCdvnOSUmy9Z7/5iPn3zrWUZDP/Iq2OnR3UXxssdtm/Vnuj6YzpDMGn9
	lvIuF5lnjGDjm7WDWHTwp8n0+oOPjFnRVx0WVe1HDIPtVirV/pD8g5WqWWpfarGLSmcteT1ob6WTu
	YUq6Dr4BS1hiPEsQXebj8WSrCeVx7hFUL2q/6lyA6SgOH0WezRucKYPszrl2hhux/0DZ1i480wBUG
	mmWlGd3LuSznu73cmghCWwj1GJgw0EaLgcIPIKY6zR92YpNENsLSiaTvqq7cFBh7hYUECOtSQBTE+
	hpWCHdTszJDPL6J56IfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwhu0-0000tp-A3; Sun, 11 Aug 2019 07:04:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwhta-0000tB-GB
 for linux-arm-kernel@lists.infradead.org; Sun, 11 Aug 2019 07:04:04 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F6B52085B;
 Sun, 11 Aug 2019 07:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565507038;
 bh=jWMpenqWIxBR2gTyohlRI7kZJbZCU4SFLASh3LRKW2g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U6UKvdfOuYH1cx0uYTMIjlXc8f7wfD/ydISlh4LZK1neoCXseF7iZZ68TegLBhVEE
 z0Rb9VkmEZ2pr5QFPy2VPH7QlIGzKuBgvxmQTIXF24gqQqszsFCK7oWFsXYqpXj9R0
 /+/RvYlCiQ5xXSP8TNieVuvKFrxQiohrXcOFdzGM=
Date: Sun, 11 Aug 2019 09:03:50 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Robert Jarzmik <robert.jarzmik@free.fr>
Subject: Re: [PATCH 4/6] dma: pxa_dma: no need to check return value of
 debugfs_create functions
Message-ID: <20190811070350.GA28202@kroah.com>
References: <20190612122557.24158-1-gregkh@linuxfoundation.org>
 <20190612122557.24158-4-gregkh@linuxfoundation.org>
 <87tvaorfc1.fsf@belgarion.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87tvaorfc1.fsf@belgarion.home>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_000402_591535_A950BF75 
X-CRM114-Status: GOOD (  22.78  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 vkoul@kernel.org, linux-arm-kernel@lists.infradead.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 10, 2019 at 09:27:26PM +0200, Robert Jarzmik wrote:
> Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:
> 
> Hi Greg,
> 
> > When calling debugfs functions, there is no need to ever check the
> > return value.  The function can work or not, but the code logic should
> > never do something different based on this.
> >
> > Also, because there is no need to save the file dentry, remove the
> > variable that was saving it as it was never even being used once set.
> >
> > Cc: Daniel Mack <daniel@zonque.org>
> > Cc: Haojian Zhuang <haojian.zhuang@gmail.com>
> > Cc: Robert Jarzmik <robert.jarzmik@free.fr>
> > Cc: Vinod Koul <vkoul@kernel.org>
> > Cc: Dan Williams <dan.j.williams@intel.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: dmaengine@vger.kernel.org
> > Cc: linux-kernel@vger.kernel.org
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > ---
> >  drivers/dma/pxa_dma.c | 56 +++++++++----------------------------------
> >  1 file changed, 11 insertions(+), 45 deletions(-)
> >
> > diff --git a/drivers/dma/pxa_dma.c b/drivers/dma/pxa_dma.c
> > index b429642f3e7a..0f698f49ee26 100644
> > --- a/drivers/dma/pxa_dma.c
> > +++ b/drivers/dma/pxa_dma.c
> > @@ -132,7 +132,6 @@ struct pxad_device {
> >  	spinlock_t			phy_lock;	/* Phy association */
> >  #ifdef CONFIG_DEBUG_FS
> >  	struct dentry			*dbgfs_root;
> > -	struct dentry			*dbgfs_state;
> >  	struct dentry			**dbgfs_chan;
> >  #endif
> >  };
> > @@ -326,31 +325,18 @@ static struct dentry *pxad_dbg_alloc_chan(struct pxad_device *pdev,
> >  					     int ch, struct dentry *chandir)
> >  {
> >  	char chan_name[11];
> > -	struct dentry *chan, *chan_state = NULL, *chan_descr = NULL;
> > -	struct dentry *chan_reqs = NULL;
> > +	struct dentry *chan;
> >  	void *dt;
> >  
> >  	scnprintf(chan_name, sizeof(chan_name), "%d", ch);
> >  	chan = debugfs_create_dir(chan_name, chandir);
> >  	dt = (void *)&pdev->phys[ch];
> >  
> > -	if (chan)
> > -		chan_state = debugfs_create_file("state", 0400, chan, dt,
> > -						 &chan_state_fops);
> > -	if (chan_state)
> > -		chan_descr = debugfs_create_file("descriptors", 0400, chan, dt,
> > -						 &descriptors_fops);
> > -	if (chan_descr)
> > -		chan_reqs = debugfs_create_file("requesters", 0400, chan, dt,
> > -						&requester_chan_fops);
> > -	if (!chan_reqs)
> > -		goto err_state;
> > +	debugfs_create_file("state", 0400, chan, dt, &chan_state_fops);
> > +	debugfs_create_file("descriptors", 0400, chan, dt, &descriptors_fops);
> > +	debugfs_create_file("requesters", 0400, chan, dt, &requester_chan_fops);
> 
> This is not strictly equivalent.
> Imagine that the debugfs_create_dir() fails and returns NULL :

How can that happen?

>  - in the former case, neither "state", "descriptors" nor "requesters" would be
>    created
>  - in the new code, "state", "descriptors" nor "requesters" will be created in
>    the debugfs root directory

I agree, but debugfs_create_dir() does not return a NULL on an error
since many kernel releases.  Neither can debugfs_create_file() so really
this test is not working at all as-is :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
