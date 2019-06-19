Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 409C44B167
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 07:29:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Myb5W2VHfPNqaj3O4HYukanU6A2hVu4qMnFtllTmwNE=; b=aLmSUVyAOC1NpU
	118ttK/ZQdnfrTH4T7bdkeU1Xr0mwUy8G+m4f1SsUIicUJc85jDrGQ9ES4qd/DSM2HVtjnQb+uQzT
	eADF0xdkrtwMLEgUrRpPpRy9lcFyAtKAMo9JSw14xAIs8iJN8BGLMATNA1G/YK2gyZpqOG2v54Xcs
	Qu4s3lT2LB12F+AEpIkLZHr9lLVX+l8K+XdSIe0UGQlOvy1HKdbycOjgk1wEHYhTauta8bbWuw7PI
	sgix/opYjuTmXSXNsEvK9A7K9K27GCa8UyctpMkGjYs/G0z9U2poWs56/XH8ziIqz+00dtL7lzjY8
	DAStrF90CBhRJY5sGf9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdT9o-0003A7-PC; Wed, 19 Jun 2019 05:29:16 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdT9c-00039b-4c
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 05:29:05 +0000
Received: by mail-lj1-x244.google.com with SMTP id x25so1951270ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 22:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mobiveil.co.in; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uCUAPV+QexPTMtFpELNiq1RlIWLicRq4oH7TLWUppok=;
 b=06W/Y3cSZGK9qGdIkrRKae6GS83CtZgvcpLyiEYX/CH8oiz2QMNEnRHq9tkOe8Vhlv
 AaYmyZRoz+2JGbAkSTfAL+lYDZe+EKPXLD87Ug+rDiga9JVBb1lAfYm/OHzqIe7QQ4sg
 GNFRhx6EP/7BdHkzpUDQfWkORZMvcOicpDZ60=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uCUAPV+QexPTMtFpELNiq1RlIWLicRq4oH7TLWUppok=;
 b=G/KwUScDwAnFA1h7dN9A5PXlx69Uf3e6xfchXgQZGLGc8ab9GH0SOo4IBk+sQxG2kz
 Ag/ljcGb8Q0HrMUeBzenVK9sHETolhqt3fdaep87pHq6bqdfV0ByYtPKurwHWtuHfohm
 KARqsa5K8ghln9bxmC5DTC5PcZfq8esDrLKYacQETLk8URt7yANZkc8vrf4LpMYJlVMj
 9FV677j+iNaW/uW8fJpxyKx+xfUCBaN6tNrbq1eYMpdv1Ka22Wso3pIsTNuohl/ykJPQ
 I9eSjcD6MbU93xWPM2yxiqsYrlOjIs+1gyrLL6AJbm31w9qgE6J9grlpuWq3l//7NxmL
 OrRw==
X-Gm-Message-State: APjAAAXnnRMHFUxKYTGss9PvVjGkTrl5OM9sgXbFt+BFtmKNQdov8EgL
 7LaP4a2kS5jD5qBYnapkMIVobTMNGU3zWZmZ47yAcCJMOsRZ7so+Cricul7jC+AncfnsbSU6a+x
 M8VsOHUuslEOZa+jrfvmlOUrpr88KOPmI8kxYUWuTKCwc
X-Google-Smtp-Source: APXvYqzKCWyYVYljVoUu5JGomTGSMvq1652NRLfxnluH9rE+ab0jIubi+Ogd2Mw26Jaq0Y4Uxj/yFkRHTtCXrWX8zDQ=
X-Received: by 2002:a2e:9bc6:: with SMTP id w6mr22630705ljj.156.1560922141583; 
 Tue, 18 Jun 2019 22:29:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-11-Zhiqiang.Hou@nxp.com>
 <20190612150819.GD15747@redmoon>
 <CAKnKUHFMH6=ox=qdaUR1kNEhETDCVyu3jQZEj+taEbbMRBRuYA@mail.gmail.com>
 <20190614104351.GA29955@e121166-lin.cambridge.arm.com>
In-Reply-To: <20190614104351.GA29955@e121166-lin.cambridge.arm.com>
From: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
Date: Wed, 19 Jun 2019 10:58:49 +0530
Message-ID: <CAKnKUHHTAsjMoMkqaWq5z6r30JUGCpxSaYwyp8AuE3H5R0vBig@mail.gmail.com>
Subject: Re: [PATCHv5 10/20] PCI: mobiveil: Fix the INTx process errors
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_222904_251330_7F4E6931 
X-CRM114-Status: GOOD (  26.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Fri, Jun 14, 2019 at 4:14 PM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Fri, Jun 14, 2019 at 12:38:51PM +0530, Karthikeyan Mitran wrote:
> > Hi Lorenzo and Hou Zhiqiang
> >  PAB_INTP_AMBA_MISC_STAT does have other status in the higher bits, it
> > should have been masked before checking for the status
>
> You are the maintainer for this driver, so if there is something to be
> changed you must post a patch to that extent, I do not understand what
> the above means, write the code to fix it, I won't do it.
>
> I am getting a bit annoyed with this Mobiveil driver so either you guys
> sort this out or I will have to remove it from the kernel.
>
> > Acked-by: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
>
> Ok I assume this means you tested it but according to what you
> say above, are there still issues with this code path ? Should
> we update the patch ?
Tested-by: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
This patch fixes the INTx status extraction and handling,
I don't see any need to update this patch.
>
> Moreover:
>
> https://kernelnewbies.org/PatchCulture
>
> Please read it and never top-post.
Thank you very much, for the information.

>
> Thanks,
> Lorenzo
>
> > On Wed, Jun 12, 2019 at 8:38 PM Lorenzo Pieralisi
> > <lorenzo.pieralisi@arm.com> wrote:
> > >
> > > On Fri, Apr 12, 2019 at 08:36:12AM +0000, Z.q. Hou wrote:
> > > > From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> > > >
> > > > In the loop block, there is not code to update the loop key,
> > > > this patch updates the loop key by re-read the INTx status
> > > > register.
> > > >
> > > > This patch also add the clearing of the handled INTx status.
> > > >
> > > > Note: Need MV to test this fix.
> > >
> > > This means INTX were never tested and current code handling them is,
> > > AFAICS, an infinite loop which is very very bad.
> > >
> > > This is a gross bug and must be fixed as soon as possible.
> > >
> > > I want Karthikeyan ACK and Tested-by on this patch.
> > >
> > > Lorenzo
> > >
> > > > Fixes: 9af6bcb11e12 ("PCI: mobiveil: Add Mobiveil PCIe Host Bridge IP driver")
> > > > Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> > > > Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
> > > > Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
> > > > ---
> > > > V5:
> > > >  - Corrected and retouched the subject and changelog.
> > > >
> > > >  drivers/pci/controller/pcie-mobiveil.c | 13 +++++++++----
> > > >  1 file changed, 9 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> > > > index 4ba458474e42..78e575e71f4d 100644
> > > > --- a/drivers/pci/controller/pcie-mobiveil.c
> > > > +++ b/drivers/pci/controller/pcie-mobiveil.c
> > > > @@ -361,6 +361,7 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
> > > >       /* Handle INTx */
> > > >       if (intr_status & PAB_INTP_INTX_MASK) {
> > > >               shifted_status = csr_readl(pcie, PAB_INTP_AMBA_MISC_STAT);
> > > > +             shifted_status &= PAB_INTP_INTX_MASK;
> > > >               shifted_status >>= PAB_INTX_START;
> > > >               do {
> > > >                       for_each_set_bit(bit, &shifted_status, PCI_NUM_INTX) {
> > > > @@ -372,12 +373,16 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
> > > >                                       dev_err_ratelimited(dev, "unexpected IRQ, INT%d\n",
> > > >                                                           bit);
> > > >
> > > > -                             /* clear interrupt */
> > > > -                             csr_writel(pcie,
> > > > -                                        shifted_status << PAB_INTX_START,
> > > > +                             /* clear interrupt handled */
> > > > +                             csr_writel(pcie, 1 << (PAB_INTX_START + bit),
> > > >                                          PAB_INTP_AMBA_MISC_STAT);
> > > >                       }
> > > > -             } while ((shifted_status >> PAB_INTX_START) != 0);
> > > > +
> > > > +                     shifted_status = csr_readl(pcie,
> > > > +                                                PAB_INTP_AMBA_MISC_STAT);
> > > > +                     shifted_status &= PAB_INTP_INTX_MASK;
> > > > +                     shifted_status >>= PAB_INTX_START;
> > > > +             } while (shifted_status != 0);
> > > >       }
> > > >
> > > >       /* read extra MSI status register */
> > > > --
> > > > 2.17.1
> > > >
> >
> >
> >
> >

-- 
Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any 
attachments, is for the sole use of the intended recipient(s) and may 
contain proprietary confidential or privileged information or otherwise be 
protected by law. Any unauthorized review, use, disclosure or distribution 
is prohibited. If you are not the intended recipient, please notify the 
sender and destroy all copies and the original message.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
