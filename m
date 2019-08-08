Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E53888678C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:58:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Torj0ALIwV5Owcf+dojPnKwHURD6P7+CtZhEng1BA2I=; b=RxRIET1gohAYrb
	WOvDEXvhtN6+zDbulIuWJ47h9ZcDzEd3VC0nLf6TRNFGX/rTiTCG8BG4K2AsbrQlczGZzJPP6iiZv
	LgEwAVrHZV9XMBU4rGFFOWqLbQ6UWMQTzkXbWDkAIUUMtW4SVy3BYAn8DgK3qpKPc1A2p8AjHKh66
	eHlbCpJFbQDusDRAwJc2hYyeJTJJa5tRuXdQ1h3K08HvrXjv0m4Hb/OwNmqeJkY1IlUzBkhtPGLZL
	MrO2Wl0yPeUIwekoXo4ze8gBcxxkC7AZyMzCuxV7yFOdL6miFwXCbNaEF3JFbFxlv23sF4roeT/L2
	NytDF9lFyFsuMh3WfN2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvljm-00075k-Gz; Thu, 08 Aug 2019 16:58:02 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvljb-00075F-At
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 16:57:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ED7e8Ih4bHyHDCY/4eqes98RiULX2Mf6sQjwvNk6YLI=; b=HEtOaayAs5z8Q5QJuNZExgI6F
 +T+yjUP8Hqtm24tikmCLflGGfe9VSn1Z082YkaVMXOWfxFGi8lnoUbE2YaL0km1Z0eWOk4LsVu0Va
 z9eWLGV4vP5t3FZZi30rn0MFUBtloE91Wfre/vO1Xb3ltF3o1EyMonQVtNC15qYhKpt0pEs2yymm3
 Fo7kmZSPxiopdMS2S6w4ZQ6wWC4t2hDKHizKG0Tj2RAC4Gyajo+SqJmr5evxLb46Qscw3pujg9UfB
 2f6i04O7odGaoWvSU9jdx65LeNs3ycRg+XFkismkKLvfwxTobZA9soPtRmZTOdpeQn9B5JakiuRYz
 /1lprmjUQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:54188)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hvljO-00059I-Tx; Thu, 08 Aug 2019 17:57:39 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hvljK-0002pQ-7m; Thu, 08 Aug 2019 17:57:34 +0100
Date: Thu, 8 Aug 2019 17:57:34 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: usb zero copy dma handling
Message-ID: <20190808165734.GG5193@shell.armlinux.org.uk>
References: <20190808084636.GB15080@priv-mua.localdomain>
 <20190808161015.GA8470@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808161015.GA8470@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_095751_379473_FDA9F8C9 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: yvahkhfo.1df7f8c2@hashmail.org, linux-usb@vger.kernel.org,
 security@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 09:10:15AM -0700, Christoph Hellwig wrote:
> On Thu, Aug 08, 2019 at 10:46:36AM +0200, yvahkhfo.1df7f8c2@hashmail.org wrote:
> > --- a/drivers/usb/core/devio.c
> > +++ b/drivers/usb/core/devio.c
> > @@ -238,9 +238,14 @@ static int usbdev_mmap(struct file *file, struct vm_area_struct *vma)
> >  	usbm->vma_use_count = 1;
> >  	INIT_LIST_HEAD(&usbm->memlist);
> >  
> > +#ifdef CONFIG_X86
> >  	if (remap_pfn_range(vma, vma->vm_start,
> >  			virt_to_phys(usbm->mem) >> PAGE_SHIFT,
> >  			size, vma->vm_page_prot) < 0) {
> > +#else /* !CONFIG_X86 */
> > +	if (dma_mmap_coherent(ps->dev->bus->sysdev, 
> > +			vma, mem, dma_handle, size) < 0) {
> > +#endif /* !CONFIG_X86 */
> 
> Doing the dma_mmap_coherent unconditionally is the right thing here.

So what if usbm->mem is from kmalloc because the host doesn't support DMA?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
