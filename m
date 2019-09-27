Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BFAC015F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 10:41:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRDioZt0peQMvDJqK/2UwpebSAFBXCKMdVedU+iAZGE=; b=mbIq2ALlMaHtnu
	bHo3HuBlOnX7tNaU7sUj8MAZew4ZvaamHzGjFMBjWoQEBVSGhtowxBGR0HZX2LSy1Q9YqpZSb67lQ
	0LA1FjvH+IBYNtMo/Iu0OQyiMxZ3tWICL4N2p4GufIqYpUovEeaxEZmzTVefVlNfJVCUci1FM+vqf
	nZQNTt37AYmPFTs31tmMFjv60sBixZ0BWJfPLDkkEbex7JDgzP6t/Xl65UyS47n28mKWZKZcs+7ia
	wW7ZxENq36j0EbZ+Ywo79kyEMkl8/nBa19rKrkDSQCx9Net1ltIIVc86HFmwi1BVoskWCgwhUZBHn
	i+lYEsQLJEaI/1LcxH3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDlp1-0005mD-Dy; Fri, 27 Sep 2019 08:41:51 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDlos-0005l9-RN
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 08:41:44 +0000
X-Originating-IP: 65.39.69.237
Received: from localhost (unknown [65.39.69.237])
 (Authenticated sender: repk@triplefau.lt)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id B7CF2FF80F;
 Fri, 27 Sep 2019 08:41:34 +0000 (UTC)
Date: Fri, 27 Sep 2019 10:50:00 +0200
From: Remi Pommarel <repk@triplefau.lt>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2] PCI: aardvark: Don't rely on jiffies while holding
 spinlock
Message-ID: <20190927084959.GC1208@voidbox.localdomain>
References: <20190927083142.8571-1-repk@triplefau.lt>
 <20190927103420.48bb9335@windsurf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927103420.48bb9335@windsurf>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_014143_033367_EB444091 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

On Fri, Sep 27, 2019 at 10:34:20AM +0200, Thomas Petazzoni wrote:
> Hello Remi,
> 
> Thanks for the new iteration!
> 
> On Fri, 27 Sep 2019 10:31:42 +0200
> Remi Pommarel <repk@triplefau.lt> wrote:
> 
> > diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
> > index fc0fe4d4de49..ee05ccb2b686 100644
> > --- a/drivers/pci/controller/pci-aardvark.c
> > +++ b/drivers/pci/controller/pci-aardvark.c
> > @@ -175,7 +175,8 @@
> >  	(PCIE_CONF_BUS(bus) | PCIE_CONF_DEV(PCI_SLOT(devfn))	| \
> >  	 PCIE_CONF_FUNC(PCI_FUNC(devfn)) | PCIE_CONF_REG(where))
> >  
> > -#define PIO_TIMEOUT_MS			1
> > +#define PIO_RETRY_CNT			10
> > +#define PIO_RETRY_DELAY			2 /* 2 us*/
> 
> So this changes the timeout from 1ms to just 20us, a division by 50
> from the previous timeout value. From my measurements, it could
> sometime take up to 6us from a single PIO read operation to complete,
> which is getting close to the 20us timeout.
> 
> Shouldn't PIO_RETRY_CNT be kept at 500, so that we keep using a 1ms
> timeout ?

Damn. You right of course, sorry about that.

Thanks

-- 
Remi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
