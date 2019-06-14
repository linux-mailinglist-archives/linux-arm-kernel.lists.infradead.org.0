Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 598994553E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 09:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJhQKwnBtVN3tWFNDeDBqWKSgL2Cp6kzlPGWy+KYe1A=; b=meSG0rYUqhARob
	FMEecCK3wAyMlyT9YJE2PyYBHcgQhoTj1wrEuYCjg0Yk/etJAI/1TB75Xky9avZefzFN57y2MO1xE
	SBd9O8k0fGquix4eE45Uyl1ZrhOTOkm5Eo1YkD2xuHI7Xc07vzJWWmfi/a1gzSVBBARtPa+mtRDIe
	aLqtB11mWJRNb/ym1ZoC/MdAntzATsw3K3eMfFrBG05aUNm6g2SAGfaUc34C58RV0g4spNhJE8BDu
	SzggSKuwZJhcf8QgfSYvY6RSB+X6zTNRfHrQEJ6KGSch2WfuDlSETeYGaftapkWJxUt/7AidSMkxu
	fQQMwtWr1WDzkR52k/Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbgL2-0007K9-PW; Fri, 14 Jun 2019 07:09:29 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbgKg-0007Jc-BP
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 07:09:07 +0000
Received: by mail-lj1-x243.google.com with SMTP id p17so1296519ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 00:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mobiveil.co.in; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yxfyM6IErwzUuZQc4rX6nb5MYVBMEiaUIJAOhGRqMq4=;
 b=BFQ7n7ZxnDJCfw3InVQV8Lykl7mTzTO/uKjfT68koQImu8DCSUAFvWIamSHmM+uW7E
 GZVxCsJcMdhXyWOdvsBS8286msfvR4ZWO78pNH0mqpSacM6BftYDWL1xMkdIh7w9MiX3
 3tb2/ogsbdl7Lw2YtiCBHiD3UaatAaBTKNvM0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yxfyM6IErwzUuZQc4rX6nb5MYVBMEiaUIJAOhGRqMq4=;
 b=NNm4dNJsO3eJmL/tNy2qv/NjhUPRBjK7OXfWJQSxY6ypRJEbIBxi3Lh8NF3M/xiLBF
 B6CM+bETw2OZTfaxi9zO1zR/Rds0v1T8iJFECM6jyp7hPX4i3uUDTDn0t/PhcV26Av9q
 KFRgV3E4QMgMXhCvELiw8rwuVvEVVOsxRX6LR5lFVy7CVp4ZBS+/uVphaqrOAFHBxujt
 Ta9dBHwpFU9TuNEP0OBZaA+KQpzmbAwHDzyQBD/tpS9fPhbEhc2mj20c+GN5tTlsPtpX
 0zblvUZ5Ss4t9dV0CwW6NNuQCLgCa4fhU/2DH59vRsZOke1cObRTIPciDP9cVs5DsGUV
 pvgA==
X-Gm-Message-State: APjAAAXgs0I1mHQOdD85KFu4eZxeW4z3nWLvQfCt/FN/BYvN5QhrgecR
 YDI0bZ5iJidxXMrbbAs4/xZLw+wUPJP//EqzjYyQHhJUVg46Oid6Ttklp1iA133wcP84Bpx91Xd
 6I1xaWv8+sjkLZbYHcS2HltI0BvgTd+sNl1O1qRPgy+VD
X-Google-Smtp-Source: APXvYqygzgKoulB56EW6IgCZUnp+so8s8umG4AYyfJaRVIp1tDhleNADbz8MqdlwR5Bohv/3k4ORVDx+UFQFAkoJJWU=
X-Received: by 2002:a2e:760f:: with SMTP id r15mr34139345ljc.18.1560496143737; 
 Fri, 14 Jun 2019 00:09:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-11-Zhiqiang.Hou@nxp.com>
 <20190612150819.GD15747@redmoon>
In-Reply-To: <20190612150819.GD15747@redmoon>
From: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
Date: Fri, 14 Jun 2019 12:38:51 +0530
Message-ID: <CAKnKUHFMH6=ox=qdaUR1kNEhETDCVyu3jQZEj+taEbbMRBRuYA@mail.gmail.com>
Subject: Re: [PATCHv5 10/20] PCI: mobiveil: Fix the INTx process errors
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_000906_461255_23DBEEF1 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Lorenzo and Hou Zhiqiang
 PAB_INTP_AMBA_MISC_STAT does have other status in the higher bits, it
should have been masked before checking for the status

Acked-by: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>

On Wed, Jun 12, 2019 at 8:38 PM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Fri, Apr 12, 2019 at 08:36:12AM +0000, Z.q. Hou wrote:
> > From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> >
> > In the loop block, there is not code to update the loop key,
> > this patch updates the loop key by re-read the INTx status
> > register.
> >
> > This patch also add the clearing of the handled INTx status.
> >
> > Note: Need MV to test this fix.
>
> This means INTX were never tested and current code handling them is,
> AFAICS, an infinite loop which is very very bad.
>
> This is a gross bug and must be fixed as soon as possible.
>
> I want Karthikeyan ACK and Tested-by on this patch.
>
> Lorenzo
>
> > Fixes: 9af6bcb11e12 ("PCI: mobiveil: Add Mobiveil PCIe Host Bridge IP driver")
> > Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> > Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
> > Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
> > ---
> > V5:
> >  - Corrected and retouched the subject and changelog.
> >
> >  drivers/pci/controller/pcie-mobiveil.c | 13 +++++++++----
> >  1 file changed, 9 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> > index 4ba458474e42..78e575e71f4d 100644
> > --- a/drivers/pci/controller/pcie-mobiveil.c
> > +++ b/drivers/pci/controller/pcie-mobiveil.c
> > @@ -361,6 +361,7 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
> >       /* Handle INTx */
> >       if (intr_status & PAB_INTP_INTX_MASK) {
> >               shifted_status = csr_readl(pcie, PAB_INTP_AMBA_MISC_STAT);
> > +             shifted_status &= PAB_INTP_INTX_MASK;
> >               shifted_status >>= PAB_INTX_START;
> >               do {
> >                       for_each_set_bit(bit, &shifted_status, PCI_NUM_INTX) {
> > @@ -372,12 +373,16 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
> >                                       dev_err_ratelimited(dev, "unexpected IRQ, INT%d\n",
> >                                                           bit);
> >
> > -                             /* clear interrupt */
> > -                             csr_writel(pcie,
> > -                                        shifted_status << PAB_INTX_START,
> > +                             /* clear interrupt handled */
> > +                             csr_writel(pcie, 1 << (PAB_INTX_START + bit),
> >                                          PAB_INTP_AMBA_MISC_STAT);
> >                       }
> > -             } while ((shifted_status >> PAB_INTX_START) != 0);
> > +
> > +                     shifted_status = csr_readl(pcie,
> > +                                                PAB_INTP_AMBA_MISC_STAT);
> > +                     shifted_status &= PAB_INTP_INTX_MASK;
> > +                     shifted_status >>= PAB_INTX_START;
> > +             } while (shifted_status != 0);
> >       }
> >
> >       /* read extra MSI status register */
> > --
> > 2.17.1
> >



-- 
Thanks,
Regards,
Karthikeyan Mitran

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
