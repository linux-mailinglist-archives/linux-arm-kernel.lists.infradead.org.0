Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B3C45AD4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 12:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bc0K20UtE+VwEbI2VGTK5wirTIYRePmOYNH2FkevefU=; b=h12GoKgMBjB4tn
	JHHy9JhItOsGlhjh+ewPLC4mCO7X1RJfSqkoWsGqxCSUQkuwMyd3g+buyeMSnwQtiU6n5KrDBS3RW
	NFy+HQq8kLWeg/Rl+d8V0zvx/rI+hqIPM7k0vPezmjNdk5OhGExOd6IhXHNJ1qULfHNpkY5GRNQu6
	mPbQy94i+viCz/b2JWXPYKvrdxCWXbPeRXddttSgXdOLoEHGEqj7Kvy9KJtbSOtKtqPt3IMIt1+Mz
	qeWBTvy2csBEDS3QHRY98s3xaqMvOxg9b6TsOipX42/EXIlUCiR7illr9RNRfnKeuP8p3m4FghBFp
	sgXnL7Lvzm0KTJOLmitQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjhF-0001qP-7H; Fri, 14 Jun 2019 10:44:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbjgt-0001db-57
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 10:44:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A7262B;
 Fri, 14 Jun 2019 03:44:14 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D936F3F246;
 Fri, 14 Jun 2019 03:45:55 -0700 (PDT)
Date: Fri, 14 Jun 2019 11:43:59 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
Subject: Re: [PATCHv5 10/20] PCI: mobiveil: Fix the INTx process errors
Message-ID: <20190614104351.GA29955@e121166-lin.cambridge.arm.com>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-11-Zhiqiang.Hou@nxp.com>
 <20190612150819.GD15747@redmoon>
 <CAKnKUHFMH6=ox=qdaUR1kNEhETDCVyu3jQZEj+taEbbMRBRuYA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKnKUHFMH6=ox=qdaUR1kNEhETDCVyu3jQZEj+taEbbMRBRuYA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_034415_341015_8FC82428 
X-CRM114-Status: GOOD (  24.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 12:38:51PM +0530, Karthikeyan Mitran wrote:
> Hi Lorenzo and Hou Zhiqiang
>  PAB_INTP_AMBA_MISC_STAT does have other status in the higher bits, it
> should have been masked before checking for the status

You are the maintainer for this driver, so if there is something to be
changed you must post a patch to that extent, I do not understand what
the above means, write the code to fix it, I won't do it.

I am getting a bit annoyed with this Mobiveil driver so either you guys
sort this out or I will have to remove it from the kernel.

> Acked-by: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>

Ok I assume this means you tested it but according to what you
say above, are there still issues with this code path ? Should
we update the patch ?

Moreover:

https://kernelnewbies.org/PatchCulture

Please read it and never top-post.

Thanks,
Lorenzo

> On Wed, Jun 12, 2019 at 8:38 PM Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > On Fri, Apr 12, 2019 at 08:36:12AM +0000, Z.q. Hou wrote:
> > > From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> > >
> > > In the loop block, there is not code to update the loop key,
> > > this patch updates the loop key by re-read the INTx status
> > > register.
> > >
> > > This patch also add the clearing of the handled INTx status.
> > >
> > > Note: Need MV to test this fix.
> >
> > This means INTX were never tested and current code handling them is,
> > AFAICS, an infinite loop which is very very bad.
> >
> > This is a gross bug and must be fixed as soon as possible.
> >
> > I want Karthikeyan ACK and Tested-by on this patch.
> >
> > Lorenzo
> >
> > > Fixes: 9af6bcb11e12 ("PCI: mobiveil: Add Mobiveil PCIe Host Bridge IP driver")
> > > Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> > > Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
> > > Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
> > > ---
> > > V5:
> > >  - Corrected and retouched the subject and changelog.
> > >
> > >  drivers/pci/controller/pcie-mobiveil.c | 13 +++++++++----
> > >  1 file changed, 9 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> > > index 4ba458474e42..78e575e71f4d 100644
> > > --- a/drivers/pci/controller/pcie-mobiveil.c
> > > +++ b/drivers/pci/controller/pcie-mobiveil.c
> > > @@ -361,6 +361,7 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
> > >       /* Handle INTx */
> > >       if (intr_status & PAB_INTP_INTX_MASK) {
> > >               shifted_status = csr_readl(pcie, PAB_INTP_AMBA_MISC_STAT);
> > > +             shifted_status &= PAB_INTP_INTX_MASK;
> > >               shifted_status >>= PAB_INTX_START;
> > >               do {
> > >                       for_each_set_bit(bit, &shifted_status, PCI_NUM_INTX) {
> > > @@ -372,12 +373,16 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
> > >                                       dev_err_ratelimited(dev, "unexpected IRQ, INT%d\n",
> > >                                                           bit);
> > >
> > > -                             /* clear interrupt */
> > > -                             csr_writel(pcie,
> > > -                                        shifted_status << PAB_INTX_START,
> > > +                             /* clear interrupt handled */
> > > +                             csr_writel(pcie, 1 << (PAB_INTX_START + bit),
> > >                                          PAB_INTP_AMBA_MISC_STAT);
> > >                       }
> > > -             } while ((shifted_status >> PAB_INTX_START) != 0);
> > > +
> > > +                     shifted_status = csr_readl(pcie,
> > > +                                                PAB_INTP_AMBA_MISC_STAT);
> > > +                     shifted_status &= PAB_INTP_INTX_MASK;
> > > +                     shifted_status >>= PAB_INTX_START;
> > > +             } while (shifted_status != 0);
> > >       }
> > >
> > >       /* read extra MSI status register */
> > > --
> > > 2.17.1
> > >
> 
> 
> 
> -- 
> Thanks,
> Regards,
> Karthikeyan Mitran
> 
> -- 
> Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any 
> attachments, is for the sole use of the intended recipient(s) and may 
> contain proprietary confidential or privileged information or otherwise be 
> protected by law. Any unauthorized review, use, disclosure or distribution 
> is prohibited. If you are not the intended recipient, please notify the 
> sender and destroy all copies and the original message.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
