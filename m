Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB890112FB4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 17:11:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j9+3CZ4tA3+qISTssmEMJchKF6yqx3gBHmDo1Ycm6LQ=; b=Iv370OqFSSmyV/
	qCg8FHQvZq/4FviKooE3FxFKsQmWWfCPKDrSnpC5HMxRL+jENKorW5uazb3eT/inSurxDaufOiLsq
	7l4QTEDXUjEgOCOR6o2VR4Ycf2eetJlBMAhH9WHFa/ZAvsYuZGAVdlVXg13t/3mZ8tVc4RZEa69vI
	UHkC55eeTr8IW1Ryup9CyBN/2iGgP3JWfqWlyzUHlAQVEMHHB9mt+E/xshGQ7FgByEfOQL7rbITdR
	OI1/2oiT6zxzWvowgoSBCHU9fxCSbdCGtPFhY32GcCvHtMW1q3J3bws2x2yT9T1auy4TE89jzeTg0
	W6xlEa9JYF30hG2cKouA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icXFj-0003b0-3n; Wed, 04 Dec 2019 16:11:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icXBf-0008CM-Ui
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 16:07:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D0A7831B;
 Wed,  4 Dec 2019 08:07:32 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3FA3A3F52E;
 Wed,  4 Dec 2019 08:07:32 -0800 (PST)
Date: Wed, 4 Dec 2019 16:07:30 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v3 2/6] PCI: iproc: Add INTx support with better modeling
Message-ID: <20191204160729.GJ18399@e119886-lin.cambridge.arm.com>
References: <1575349026-8743-1-git-send-email-srinath.mannam@broadcom.com>
 <1575349026-8743-3-git-send-email-srinath.mannam@broadcom.com>
 <20191203155514.GE18399@e119886-lin.cambridge.arm.com>
 <CAHp75Vf7d=Gw24MTq2q3BKspkLEDDM24GVK4Zh_4zfZEzVuZjw@mail.gmail.com>
 <40fffa66-4b06-a851-84c2-4de36d5c6777@broadcom.com>
 <CAHp75VfyKAg4OhzUa4swGXOGTvJ5fVO8mhGSG=5HAUP__M-URQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75VfyKAg4OhzUa4swGXOGTvJ5fVO8mhGSG=5HAUP__M-URQ@mail.gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_080736_098888_A71A1FAE 
X-CRM114-Status: GOOD (  22.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Ray Jui <rjui@broadcom.com>, linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Ray Jui <ray.jui@broadcom.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 10:29:51AM +0200, Andy Shevchenko wrote:
> On Wed, Dec 4, 2019 at 12:09 AM Ray Jui <ray.jui@broadcom.com> wrote:
> > On 12/3/19 11:27 AM, Andy Shevchenko wrote:
> > > On Tue, Dec 3, 2019 at 5:55 PM Andrew Murray <andrew.murray@arm.com> wrote:
> > >> On Tue, Dec 03, 2019 at 10:27:02AM +0530, Srinath Mannam wrote:
> > >
> > >>> +     /* go through INTx A, B, C, D until all interrupts are handled */
> > >>> +     do {
> > >>> +             status = iproc_pcie_read_reg(pcie, IPROC_PCIE_INTX_CSR);
> > >>
> > >> By performing this read once and outside of the do/while loop you may improve
> > >> performance. I wonder how probable it is to get another INTx whilst handling
> > >> one?
> > >
> > > May I ask how it can be improved?
> > > One read will be needed any way, and so does this code.
> > >
> >
> > I guess the current code will cause the IPROC_PCIE_INTX_CSR register to
> > be read TWICE, if it's ever set to start with.
> >
> > But then if we do it outside of the while loop, if we ever receive an
> > interrupt while servicing one, the interrupt will still need to be
> > serviced, and in this case, it will cause additional context switch
> > overhead by going out and back in the interrupt context.

Yes it's a trade off - if you dropped the do/while loop and thus had a single
read you'd reduce the overhead on interrupt handling in every case except
where another INTx is received whilst in this function. But as you point out
each time that does happen you'll pay the penalty of a context switch.

I don't have any knowledge of this platform so I have no idea if such a change
would be good/bad or material. However I thought I'd point it out. Looking at
the other controller drivers, some handle in a loop and some don't.


> >
> > My take is that it's probably more ideal to leave this portion of code
> > as it is.
> 
> Can't we simple drop a do-while completely and leave only
> for_each_set_bit() loop?
> 

I'm happy either way.

Thanks,

Andrew Murray

> >
> > >>> +             for_each_set_bit(bit, &status, PCI_NUM_INTX) {
> > >>> +                     virq = irq_find_mapping(pcie->irq_domain, bit);
> > >>> +                     if (virq)
> > >>> +                             generic_handle_irq(virq);
> > >>> +                     else
> > >>> +                             dev_err(dev, "unexpected INTx%u\n", bit);
> > >>> +             }
> > >>> +     } while ((status & SYS_RC_INTX_MASK) != 0);
> > >
> 
> 
> 
> -- 
> With Best Regards,
> Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
