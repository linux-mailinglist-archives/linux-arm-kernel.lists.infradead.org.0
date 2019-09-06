Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 529ADAB4DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 11:25:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4kOJu//k5QEfYZndz6LvrN7K8KyPce8zcv2UhfmGC8=; b=OREa86KyWWx0of
	XiXuAGzymTOAONkL3jnxm+GI+o5TXjlDgTybpiuCq0oPnJMOnyZNmSY4IOd4LCVMEuwPcriQC30NK
	8yJ7GJBcS6qTKQ+RJadNDb/jOHJKN0FtPHS86LkXbHVHBO1mzXyTuYwk/ADXeBBilF59PFNJp8k7D
	FF24h8A7Kd82stCz0+T2lSzByZLYkkuS03FBgPHaq8l6/IGwqUebcIGm+97T53NJ7dQNA+9dwYccL
	lyfZ5lGC1no7VGS8jWM0QDHMR0bNt/4cg3lLzxkFVakET0wNqmj9BKFA6Y7STjM1DZC2nCUE6X4p5
	7/pUXOca0Y+E9/80ztBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6AUy-0004xW-Q2; Fri, 06 Sep 2019 09:25:44 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6AUm-0004xB-8T
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 09:25:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id y19so5813432wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 02:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4/hTF78iK4Cpd1QxROMccGOHzNHaxmbPis/cOP5u7Xg=;
 b=eKLzvu2MGA64vk98hhxrKNuyKWibjjWUbKiy08K4iRsX1Co7AIxiUbclqeXzsnCFIu
 IWvBUrh2iX8dSC1MP4TPJdmTs5Hh1NJEcr3hwmC88o+E9iYYFLSjyxH0ZOTOLFrt3f9l
 16xmIXG1pm8YAmLbpt11SbjP/akgC3ruX5yVU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4/hTF78iK4Cpd1QxROMccGOHzNHaxmbPis/cOP5u7Xg=;
 b=EyL5jG3LElpwJ6OOLHrSI0GJL84+u9tJGzxTBm59z9/JMbzzfxYXigixJ08eW0jTAh
 Zf6OfQIV3bOTMI3FQGyARj5Pkuw5qYsdsKVZPyqquVY/yJTKIGyxaNy/QCS7xQ/s0yRy
 fpxp7pFT0Ls2/yO4K7NFfD3xRHC5BZ86YxFwLnfBomTqLP19o3AukhFqfwY4RB5YIt93
 Zv4gzZxPVRTSnaiscoGPIntBEGDG8dpRMv/RBpiLsYZF0mADZ/pQ7dLC9AZAn9Bxu6jS
 YTHL4tYini7rGcy9cX4AgjLaBkzoJzsKVRiEOU55XKKYNEARzDCJ0glJ6p4uIsDrrTtX
 Gvpg==
X-Gm-Message-State: APjAAAVc6nxLvszyb+cxNpK1sQe8ot8d8KyRX020nkbOgoNgKuEblKPl
 4PCMvcNvpCRPyW8ZCZltK+QI2QS/pNG1BYKBae+24A==
X-Google-Smtp-Source: APXvYqwbU+XGTguORWihC8VnYu09/9mUmdttn0D/6NQhpn7lEMS/E0pN0mR6XPsaf0hc7khzR2EiaXrcqpuqhy9wNdY=
X-Received: by 2002:adf:dd04:: with SMTP id a4mr6298846wrm.340.1567761930632; 
 Fri, 06 Sep 2019 02:25:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190906035813.24046-1-abhishek.shah@broadcom.com>
 <20190906083816.GD9720@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190906083816.GD9720@e119886-lin.cambridge.arm.com>
From: Abhishek Shah <abhishek.shah@broadcom.com>
Date: Fri, 6 Sep 2019 14:55:19 +0530
Message-ID: <CAKUFe6ZuRGJSmLdXqTWJzX-nE_Vh4yEQF_-rf+BWFrD_r4BRaQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] PCI: iproc: Invalidate PAXB address mapping before
 programming it
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_022532_314800_83B1B409 
X-CRM114-Status: GOOD (  22.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

Thanks for the review. Please see my response inline:

On Fri, Sep 6, 2019 at 2:08 PM Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Fri, Sep 06, 2019 at 09:28:13AM +0530, Abhishek Shah wrote:
> > Invalidate PAXB inbound/outbound address mapping each time before
> > programming it. This is helpful for the cases where we need to
> > reprogram inbound/outbound address mapping without resetting PAXB.
> > kexec kernel is one such example.
>
> Why is this approach better than resetting the PAXB (I assume that's
> the PCI controller IP)? Wouldn't resetting the PAXB address this issue,
> and ensure that no other configuration is left behind?
>
We normally reset PAXB in the firmware(ATF). But for cases like kexec
kernel boot,
we do not execute any firmware code and directly boot into kernel.

We could have done PAXB reset in the driver itself as you have suggested here.
But note that this detail could vary for each SoC, because these
registers are not part
of PAXB register space itself, rather exists in a register space responsible for
controlling power to various wrappers in PCIe IP. Normally, this kind
of SoC specific
details are handled in firmware itself, we don't bring them to driver level.

> Or is this related to earlier boot stages loading firmware for the emulated
> downstream endpoints (ep_is_internal)?
>
> Finally, in the case where ep_is_internal do you need to disable anything
> prior to invalidating the mappings?
>
No, ep_is_internal  is indicator for PAXC IP. It does not have
mappings as in PAXB.


Regards,
Abhishek
> >
> > Signed-off-by: Abhishek Shah <abhishek.shah@broadcom.com>
> > Reviewed-by: Ray Jui <ray.jui@broadcom.com>
> > Reviewed-by: Vikram Mysore Prakash <vikram.prakash@broadcom.com>
> > ---
> >  drivers/pci/controller/pcie-iproc.c | 28 ++++++++++++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> >
> > diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
> > index e3ca46497470..99a9521ba7ab 100644
> > --- a/drivers/pci/controller/pcie-iproc.c
> > +++ b/drivers/pci/controller/pcie-iproc.c
> > @@ -1245,6 +1245,32 @@ static int iproc_pcie_map_dma_ranges(struct iproc_pcie *pcie)
> >       return ret;
> >  }
> >
> > +static void iproc_pcie_invalidate_mapping(struct iproc_pcie *pcie)
> > +{
> > +     struct iproc_pcie_ib *ib = &pcie->ib;
> > +     struct iproc_pcie_ob *ob = &pcie->ob;
> > +     int idx;
> > +
> > +     if (pcie->ep_is_internal)
> > +             return;
> > +
> > +     if (pcie->need_ob_cfg) {
> > +             /* iterate through all OARR mapping regions */
> > +             for (idx = ob->nr_windows - 1; idx >= 0; idx--) {
> > +                     iproc_pcie_write_reg(pcie,
> > +                                          MAP_REG(IPROC_PCIE_OARR0, idx), 0);
> > +             }
> > +     }
> > +
> > +     if (pcie->need_ib_cfg) {
> > +             /* iterate through all IARR mapping regions */
> > +             for (idx = 0; idx < ib->nr_regions; idx++) {
> > +                     iproc_pcie_write_reg(pcie,
> > +                                          MAP_REG(IPROC_PCIE_IARR0, idx), 0);
> > +             }
> > +     }
> > +}
> > +
> >  static int iproce_pcie_get_msi(struct iproc_pcie *pcie,
> >                              struct device_node *msi_node,
> >                              u64 *msi_addr)
> > @@ -1517,6 +1543,8 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
> >       iproc_pcie_perst_ctrl(pcie, true);
> >       iproc_pcie_perst_ctrl(pcie, false);
> >
> > +     iproc_pcie_invalidate_mapping(pcie);
> > +
> >       if (pcie->need_ob_cfg) {
> >               ret = iproc_pcie_map_ranges(pcie, res);
> >               if (ret) {
>
> The code changes look good to me.
>
> Thanks,
>
> Andrew Murray
>
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
