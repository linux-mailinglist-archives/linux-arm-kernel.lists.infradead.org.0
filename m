Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEEF1C70EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 14:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0E4NhW6tM2x8+ktKeIIOUbC6y/njkMs+qg6gW+ukmo=; b=hbDUYVPoma/loR
	tM/nJyVjPTRF21mWlGF2zjKj5baAI9OmguIN5kyFlGEV5bquqnvHu+07Gb1fi2yk8aOVnJ7rupw8e
	wNLo9DTVvfnaKUHCdOVstziBnDOla+i0CH6vsybJLWvjky/sufj0TwEh8RQmxl2UXsmG687r9iawN
	DlRC8MBz1GaY4z5m3Kq5+JKh0brcP3WsVYNlUjXIVigjXtChMr3ArdbFHigw+rILSdTLIltGj8vHk
	+8OWc35oyHfW4bNRPeKJGeiNIrJrCDALZCTAftcaB2esegWs7YxTftLZKaiXg20rDilaotyUTLMVa
	q2pVidzHayLaSlV3wsxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJa5-0001eX-Mi; Wed, 06 May 2020 12:55:21 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJZs-0000Fc-PC; Wed, 06 May 2020 12:55:10 +0000
Received: by mail-ed1-x544.google.com with SMTP id t12so1820117edw.3;
 Wed, 06 May 2020 05:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nNKGk6BbzRMTmQMq+gs/nkbr+iCdW2o+wuRBue20xaw=;
 b=rYGag4veryirO7Cs6u4A2qaboGhV9JjLBha+aFH3F8u0JTc08qS7cCo5GncJr98wnL
 TXINLADcXmNN9sXnAtoiKn4KnrRwcp6PnU2mwCmDwym0vVwtVbWQb4+s79MknUgE5S+r
 ZTa8Ff1pcXOMFzxSvo553WMcHGCvGflNA4f9UbU6DyFxfccOGhnV6ir6Cw3V1JqggmuH
 NjP/RP+j4hN5Ejm02mUk9DSDrQT7Pk5xmJGZqMBlmYaHZbR3Hqf8idE7NdWK6clKujT3
 jC2yfpFAU9MHLVebxsUxO9wOPs7h0bQLXsvPAjZ0DCbKtyH8edAv9prW0tcXamP/qzSc
 8xtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nNKGk6BbzRMTmQMq+gs/nkbr+iCdW2o+wuRBue20xaw=;
 b=WfDaLl/Jq1B8kR8JMl2w2+ldJnHcIYdQrNuDlWaHJpcbVStak0DLdz6wgjBgJdDZh5
 Xl6eIy9LDW5/thQR7tbVl7IDfQ/1XgHl8p17SC8ML0CbooXTUGiIo5fIs4BNFk0E4lR0
 maIYJ6Kyop5AHI8BEpRyYk7GZNMOX3XlY5fh0tnb2fxnq2bMYxMhMfTh8Xn8ZUl809PV
 Qi1YQR4gncw7p8XUIFectr8Aw5Gwk5NQ9tfUhpWl4h2+0xHdTXkCyQnUB/+rGm0HHSuG
 b9QDN36YC3Zry1ZDzL01sOLfYT1vDsU7zYXpZP9oncCLhadd/8ERwLqD5iYPJ+sLRpqK
 VwtA==
X-Gm-Message-State: AGi0PuYDxqfbny4JsZ971fNawUqF25pYkd/x8ifH9k16ZUiQMWw+e4FM
 uwYQL8CywthjuQ3SgTuGLYj/m612rTpaOeQ2ssQ=
X-Google-Smtp-Source: APiQypJ1z3WwUYAdLmTIQt8t0S0iG8l2nXCgCwNcpESzzQ9sKoevR0szr9hGTGxiBwUoNSJ4ZRTwhLPOH35mzPlNvyU=
X-Received: by 2002:aa7:c795:: with SMTP id n21mr6896218eds.6.1588769705047;
 Wed, 06 May 2020 05:55:05 -0700 (PDT)
MIME-Version: 1.0
References: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
 <1588761371-9078-3-git-send-email-amittomer25@gmail.com>
 <1c285ad4-a366-db08-e4e8-c2e1437cc505@arm.com>
In-Reply-To: <1c285ad4-a366-db08-e4e8-c2e1437cc505@arm.com>
From: Amit Tomer <amittomer25@gmail.com>
Date: Wed, 6 May 2020 18:24:28 +0530
Message-ID: <CABHD4K9mqpcO7jo4NQov__8jEGhAJr2o8JTiX1N+Z=zb9vG0OQ@mail.gmail.com>
Subject: Re: [PATCH RFC 2/8] dmaengine: Actions: Add support for S700 DMA
 engine
To: =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_055508_879659_A8BA9A6B 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-actions@lists.infradead.org, cristian.ciocaltea@gmail.com,
 vkoul@kernel.org, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Thanks for quick review

> You should mention (at least in the commit message) why this is needed.
> And please move this into a separate function, this indentation is
> becoming mad here

There is not much documented about it, and all I see is GIC crash
if I keep it open for S700. Would figure out more details about it and
update in next version.
.
>
> > +             for (i = 0; i < od->nr_pchans; i++) {
> > +                     pchan = &od->pchans[i];
> > +                     chan_irq_pending = pchan_readl(pchan,
> > +                                                    OWL_DMAX_INT_CTL) &
> > +                                        pchan_readl(pchan,
> > +                                                    OWL_DMAX_INT_STATUS)
> > +                                                     ;
> > +
> > +                     /* Dummy read to ensure OWL_DMA_IRQ_PD0 value is
> > +                      * updated
> > +                      */
> > +                     dma_readl(od, OWL_DMA_IRQ_PD0);
> >
> > -             global_irq_pending = dma_readl(od, OWL_DMA_IRQ_PD0);
> > +                     global_irq_pending = dma_readl(od,
> > +                                                    OWL_DMA_IRQ_PD0);
> >
> > -             if (chan_irq_pending && !(global_irq_pending & BIT(i))) {
> > -                     dev_dbg(od->dma.dev,
> > -                             "global and channel IRQ pending match err\n");
> > +                     if (chan_irq_pending && !(global_irq_pending &
> > +                                               BIT(i))) {
> > +                             dev_dbg(od->dma.dev,
> > +                     "global and channel IRQ pending match err\n");
> >
> > -                     /* Clear IRQ status for this pchan */
> > -                     pchan_update(pchan, OWL_DMAX_INT_STATUS,
> > -                                  0xff, false);
> > +                             /* Clear IRQ status for this pchan */
> > +                             pchan_update(pchan, OWL_DMAX_INT_STATUS,
> > +                                          0xff, false);
> >
> > -                     /* Update global IRQ pending */
> > -                     pending |= BIT(i);
> > +                             /* Update global IRQ pending */
> > +                             pending |= BIT(i);
> > +                     }
> >               }
> >       }
> >
> > @@ -720,6 +743,7 @@ static int owl_dma_resume(struct dma_chan *chan)
> >
> >  static u32 owl_dma_getbytes_chan(struct owl_dma_vchan *vchan)
> >  {
> > +     struct owl_dma *od = to_owl_dma(vchan->vc.chan.device);
> >       struct owl_dma_pchan *pchan;
> >       struct owl_dma_txd *txd;
> >       struct owl_dma_lli *lli;
> > @@ -741,9 +765,15 @@ static u32 owl_dma_getbytes_chan(struct owl_dma_vchan *vchan)
> >               list_for_each_entry(lli, &txd->lli_list, node) {
> >                       /* Start from the next active node */
> >                       if (lli->phys == next_lli_phy) {
> > -                             list_for_each_entry(lli, &txd->lli_list, node)
> > -                                     bytes += lli->hw[OWL_DMADESC_FLEN] &
> > -                                              GENMASK(19, 0);
> > +                             list_for_each_entry(lli, &txd->lli_list, node) {
> > +                                     if (od->devid == S700_DMA)
> > +                                             bytes +=
> > +                                             lli->hw[OWL_DMADESC_FLEN];
> > +                                     else
> > +                                             bytes +=
> > +                                             lli->hw[OWL_DMADESC_FLEN] &
> > +                                             GENMASK(19, 0);
>
> You should have an accessor for getting the frame len, that should avoid
> the insane wrapping here. Or factor this out into a helper function.
> Alternatively revert the if statement and continue, that saves you one
> level of indentation.
>
> I guess flen is limited to 20 bits anyway, so you might want to apply
> the 20-bit mask unconditionally.

Actually, on S700 flen uses 24 bits , so we should not use 20-bit mask.

For accessor function, shall this be okay ?

+static u32 llc_hw_flen(struct owl_dma *od,
+                       struct owl_dma_lli *lli)
+{
+       u32 bit_mask;
+
+       if (od->devid == S700_DMA)
+               bit_mask = 23;
+       else
+               bit_mask = 19;
+
+       return lli->hw[OWL_DMADESC_FLEN] & GENMASK(bit_mask, 0);
+
+}

Thanks
Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
