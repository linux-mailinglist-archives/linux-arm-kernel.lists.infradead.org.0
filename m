Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B675ABA66
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 16:11:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7/A4QVhDJXax1mdg6TSXLH9P6nE8m0cTOOL/MUveHM=; b=ot3rJGw3045ruA
	L2rATcmXMWgCCVMqb2B9HQMHjN5AqBTVvATHlzxVDo6pGQN6is0AQA7G36/9BxpLKRMXYA5aF03Jy
	5icPBkPCvvyCjxFEGD8CcQ1XwSxEifgy7IYjv1QU+LhsmOniRFqiqG3Ljjw/BVkwfChkM9JSUlb4R
	JYYEUkFz92v7Jc61J74tdEvG6s+JloGacFjVnfVaLtLaQgnagnan2infFsj5r9F/tXjSmBeD4RSGT
	vTm4hdmp4HPB1voVtALlVRfTDScpNJEOvLStUYp5nWvydW6+mROb5M5kgDGerX4Od2HFeJrbILCcV
	4dgNAEotwuukTNKrjvbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Exu-0007Kv-Jz; Fri, 06 Sep 2019 14:11:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Exd-0007KU-AK
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 14:11:38 +0000
Received: by mail-wm1-x342.google.com with SMTP id n10so7297405wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 07:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uxSs6u5eFL2Fmxz4qSSdK4W0hbBeAeuUV7TP8iEVHbA=;
 b=Xx71kc9ZA2dizC2CobXhZKpxSwoNdELsJ3zjdxUffb/FAZIA2ONnikzPGal5kY1V21
 83QeMQaYfPQ7tJEjiKTCJkk7MxEThgQU5T8CgfbzrtRcMYS/pHWBbkEP7OH6+KXnMn3T
 STjK0qX1Fi1jEhBUkFtcPs8kOPx2cTo4LJ4x4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uxSs6u5eFL2Fmxz4qSSdK4W0hbBeAeuUV7TP8iEVHbA=;
 b=rYTvMNUOy3bjR0n57CKVfgWMGr96yf7lboB6JH/bi48boE+gXdk5XN0QtWgvOlQFqp
 PLx+BXA8AG+BAJG33kVjfsFfLdVFdVyQTlfin6DxBKw79o7gDPi0rUivq8U5v6hiZYX6
 KiwofIXt8B6Hb70jtMcX1n4XnglgiAvJbFCAwrQb7hTOFBSmV3rsCQud+ukApmIc3Ym0
 DYYmK6Ai5CtIcZV5pHpHsbC66yoUoDT1ljIO8yilm7+pIBpTP84Gi5QrKeISXXcSN9O3
 9ePK70FxhwPMv/swyfFb4ExI6qEyTNbLcnImVjJ4E3D5qD7lENsSnm98nPQQ+Vja/y3A
 6KTg==
X-Gm-Message-State: APjAAAX5GVo9ggI1Ar+F1DqCpGmsxL4xXYHxuy9T/NrWh3yQ3KxDWHEB
 esdHLxQrji4Ir9F5Zb5Az4TyunuzOwNFwZFQEGkVHQ==
X-Google-Smtp-Source: APXvYqyFWtG3K4VffBanZjWgEE0gjBI9JN1KgXZTx05j8BUCf2JwO4vNBjVITkdWqykFiJqHpd4ZeLH18rn0mXMuaKY=
X-Received: by 2002:a05:600c:2486:: with SMTP id
 6mr7217627wms.82.1567779095791; 
 Fri, 06 Sep 2019 07:11:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190906035813.24046-1-abhishek.shah@broadcom.com>
 <20190906083816.GD9720@e119886-lin.cambridge.arm.com>
 <CAKUFe6ZuRGJSmLdXqTWJzX-nE_Vh4yEQF_-rf+BWFrD_r4BRaQ@mail.gmail.com>
 <20190906100114.GE9720@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190906100114.GE9720@e119886-lin.cambridge.arm.com>
From: Abhishek Shah <abhishek.shah@broadcom.com>
Date: Fri, 6 Sep 2019 19:41:23 +0530
Message-ID: <CAKUFe6aHGM0qHXcwopVfv_6+ALA=zmtBzSwNUO6qg8OEG-h_Ww@mail.gmail.com>
Subject: Re: [PATCH 1/1] PCI: iproc: Invalidate PAXB address mapping before
 programming it
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_071137_359239_F9F4ACEB 
X-CRM114-Status: GOOD (  28.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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


On Fri, Sep 6, 2019 at 3:31 PM Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Fri, Sep 06, 2019 at 02:55:19PM +0530, Abhishek Shah wrote:
> > Hi Andrew,
> >
> > Thanks for the review. Please see my response inline:
> >
> > On Fri, Sep 6, 2019 at 2:08 PM Andrew Murray <andrew.murray@arm.com> wrote:
> > >
> > > On Fri, Sep 06, 2019 at 09:28:13AM +0530, Abhishek Shah wrote:
> > > > Invalidate PAXB inbound/outbound address mapping each time before
> > > > programming it. This is helpful for the cases where we need to
> > > > reprogram inbound/outbound address mapping without resetting PAXB.
> > > > kexec kernel is one such example.
> > >
> > > Why is this approach better than resetting the PAXB (I assume that's
> > > the PCI controller IP)? Wouldn't resetting the PAXB address this issue,
> > > and ensure that no other configuration is left behind?
> > >
> > We normally reset PAXB in the firmware(ATF). But for cases like kexec
> > kernel boot,
> > we do not execute any firmware code and directly boot into kernel.
> >
> > We could have done PAXB reset in the driver itself as you have suggested here.
> > But note that this detail could vary for each SoC, because these
> > registers are not part
> > of PAXB register space itself, rather exists in a register space responsible for
> > controlling power to various wrappers in PCIe IP. Normally, this kind
> > of SoC specific
> > details are handled in firmware itself, we don't bring them to driver level.
>
> OK understood.
>
> >
> > > Or is this related to earlier boot stages loading firmware for the emulated
> > > downstream endpoints (ep_is_internal)?
> > >
> > > Finally, in the case where ep_is_internal do you need to disable anything
> > > prior to invalidating the mappings?
> > >
> > No, ep_is_internal  is indicator for PAXC IP. It does not have
> > mappings as in PAXB.
>
> I think I meant !ep_is_internal. I.e. is there possibility of inbound traffic
> prior to invalidating the mappings. I'd assume not, but that's an assumption.
>
No, EP devices are not even enumerated yet.

> Either way:
>
> Reviewed-by: Andrew Murray <andrew.murray@arm.com>
>
> >
> >
> > Regards,
> > Abhishek
> > > >
> > > > Signed-off-by: Abhishek Shah <abhishek.shah@broadcom.com>
> > > > Reviewed-by: Ray Jui <ray.jui@broadcom.com>
> > > > Reviewed-by: Vikram Mysore Prakash <vikram.prakash@broadcom.com>
> > > > ---
> > > >  drivers/pci/controller/pcie-iproc.c | 28 ++++++++++++++++++++++++++++
> > > >  1 file changed, 28 insertions(+)
> > > >
> > > > diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
> > > > index e3ca46497470..99a9521ba7ab 100644
> > > > --- a/drivers/pci/controller/pcie-iproc.c
> > > > +++ b/drivers/pci/controller/pcie-iproc.c
> > > > @@ -1245,6 +1245,32 @@ static int iproc_pcie_map_dma_ranges(struct iproc_pcie *pcie)
> > > >       return ret;
> > > >  }
> > > >
> > > > +static void iproc_pcie_invalidate_mapping(struct iproc_pcie *pcie)
> > > > +{
> > > > +     struct iproc_pcie_ib *ib = &pcie->ib;
> > > > +     struct iproc_pcie_ob *ob = &pcie->ob;
> > > > +     int idx;
> > > > +
> > > > +     if (pcie->ep_is_internal)
> > > > +             return;
> > > > +
> > > > +     if (pcie->need_ob_cfg) {
> > > > +             /* iterate through all OARR mapping regions */
> > > > +             for (idx = ob->nr_windows - 1; idx >= 0; idx--) {
> > > > +                     iproc_pcie_write_reg(pcie,
> > > > +                                          MAP_REG(IPROC_PCIE_OARR0, idx), 0);
> > > > +             }
> > > > +     }
> > > > +
> > > > +     if (pcie->need_ib_cfg) {
> > > > +             /* iterate through all IARR mapping regions */
> > > > +             for (idx = 0; idx < ib->nr_regions; idx++) {
> > > > +                     iproc_pcie_write_reg(pcie,
> > > > +                                          MAP_REG(IPROC_PCIE_IARR0, idx), 0);
> > > > +             }
> > > > +     }
> > > > +}
> > > > +
> > > >  static int iproce_pcie_get_msi(struct iproc_pcie *pcie,
> > > >                              struct device_node *msi_node,
> > > >                              u64 *msi_addr)
> > > > @@ -1517,6 +1543,8 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
> > > >       iproc_pcie_perst_ctrl(pcie, true);
> > > >       iproc_pcie_perst_ctrl(pcie, false);
> > > >
> > > > +     iproc_pcie_invalidate_mapping(pcie);
> > > > +
> > > >       if (pcie->need_ob_cfg) {
> > > >               ret = iproc_pcie_map_ranges(pcie, res);
> > > >               if (ret) {
> > >
> > > The code changes look good to me.
> > >
> > > Thanks,
> > >
> > > Andrew Murray
> > >
> > > > --
> > > > 2.17.1
> > > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
