Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEFCBC0BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 05:29:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HasjgH2PhZ9kL6CZ1NGjblWtYtglKw8ejLzZJ3bxk4w=; b=RrrZmS7bmAIFwD
	KXoE2JQUMVnDwT8FnONG7a1vUAUTo1qR/cIr/Y6CNPzmOYCfQzE+AP7Xm3Bw5/66kU//pALeDSzC0
	av780ZVQAd+7UvXfipJWUCK6Txpydl0FfgO6fk+7RG6uJX0wBnGNJOL95FWc3VVzqOjwiHXrpb31c
	teg1yTlqzHm8AhCWcbB2uFmGrS5t70x9ZQgCrUOvZVQ++vjsY3bJ0RID0nIwrxMHrfxf0Z1tsGBRe
	pNVPSpIklKRUajeqmWVP37X10p3USlonbrcEq2jsJmoE/+L3KQdlw1RpUhkv9P+rq2CyAJLGAiMcy
	+jApDe4aQlJFqDwtJbwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCbVc-0002Bg-Kp; Tue, 24 Sep 2019 03:29:00 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCbVU-0002BN-OO
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 03:28:54 +0000
Received: by mail-wr1-x441.google.com with SMTP id h7so178376wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 20:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BOntdqNAzJq09OHpR8y1tYGj1Bvw6Q9JNvhQORlIsxk=;
 b=TEbQNYRoY0DL6fKSICuqMJZuH9R7sIv7XrMy4vxuBCFoYXnZbGMgGvkTL57hdXsv0S
 Im4MJJCNVtZ2dFPcG24aCiO6P7LOhI4bzGu4LbXQMIlNKnPs+cJV1AdDA4wPdFhfiv8X
 38TDwVx4TisO3PeTlr3ij0yjhtd7F9llsr0bI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BOntdqNAzJq09OHpR8y1tYGj1Bvw6Q9JNvhQORlIsxk=;
 b=Gt/7B2rq5UtvvuGJinxt98ZaN8wYY7A5fYlFUuJ6W4IKngUyvGy3z4TzZJXn/jKR1I
 lCYWNSfmWSs1Or4vLF18w/K3XCCARoh7si61p5ifhgrCps1UuQwtrysKiJzxA23VUcMi
 zeks+h08rCMOpW21EOisUDTfqpWcOpBFMCz0U5Kswgi3Tu+oYVRr+qzSPWAv/igVfBk1
 SSoD/u+u/zr+4utTgf+GAe247HIks7q0eoJkna8AVqVVFdRMENToug/thMXGamQ9VNKv
 69RyOQtomz29rF/AkJ9bn6DFKD0bL+emfK8JrSPu07xkZ4vaeHRpXr88JbBEMXy9vgik
 z36g==
X-Gm-Message-State: APjAAAVMmPeMUxQ3+cbvaWYy/1LbMcc3GmhossLALlqUhQbMRXaYh920
 olQXYJl81LHT3Oos6hkqAq4x5xbvU3I4TM6aP8mTeg==
X-Google-Smtp-Source: APXvYqxzxn9kQfZkcW3T0wqOc99Kw0KeUVqqryo2jeSxJpN5gkQ+J1QilZA+ndh4MuioxkMybO2BNrUv6568LouoFOE=
X-Received: by 2002:adf:ce86:: with SMTP id r6mr425937wrn.57.1569295731092;
 Mon, 23 Sep 2019 20:28:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190906035813.24046-1-abhishek.shah@broadcom.com>
 <20190906083816.GD9720@e119886-lin.cambridge.arm.com>
 <CAKUFe6ZuRGJSmLdXqTWJzX-nE_Vh4yEQF_-rf+BWFrD_r4BRaQ@mail.gmail.com>
 <20190906100114.GE9720@e119886-lin.cambridge.arm.com>
 <CAKUFe6aHGM0qHXcwopVfv_6+ALA=zmtBzSwNUO6qg8OEG-h_Ww@mail.gmail.com>
In-Reply-To: <CAKUFe6aHGM0qHXcwopVfv_6+ALA=zmtBzSwNUO6qg8OEG-h_Ww@mail.gmail.com>
From: Abhishek Shah <abhishek.shah@broadcom.com>
Date: Tue, 24 Sep 2019 08:58:40 +0530
Message-ID: <CAKUFe6Zoo9r9tw-33VXjECX-iP=PNYJgxBb5LaOQrZ9-Tr+J6A@mail.gmail.com>
Subject: Re: [PATCH 1/1] PCI: iproc: Invalidate PAXB address mapping before
 programming it
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_202852_813974_3D563E49 
X-CRM114-Status: GOOD (  29.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Bjorn/Lorenzo,

Can you please help review this patch?


Regards,
Abhishek


On Fri, Sep 6, 2019 at 7:41 PM Abhishek Shah <abhishek.shah@broadcom.com> wrote:
>
> Hi Andrew,
>
>
> On Fri, Sep 6, 2019 at 3:31 PM Andrew Murray <andrew.murray@arm.com> wrote:
> >
> > On Fri, Sep 06, 2019 at 02:55:19PM +0530, Abhishek Shah wrote:
> > > Hi Andrew,
> > >
> > > Thanks for the review. Please see my response inline:
> > >
> > > On Fri, Sep 6, 2019 at 2:08 PM Andrew Murray <andrew.murray@arm.com> wrote:
> > > >
> > > > On Fri, Sep 06, 2019 at 09:28:13AM +0530, Abhishek Shah wrote:
> > > > > Invalidate PAXB inbound/outbound address mapping each time before
> > > > > programming it. This is helpful for the cases where we need to
> > > > > reprogram inbound/outbound address mapping without resetting PAXB.
> > > > > kexec kernel is one such example.
> > > >
> > > > Why is this approach better than resetting the PAXB (I assume that's
> > > > the PCI controller IP)? Wouldn't resetting the PAXB address this issue,
> > > > and ensure that no other configuration is left behind?
> > > >
> > > We normally reset PAXB in the firmware(ATF). But for cases like kexec
> > > kernel boot,
> > > we do not execute any firmware code and directly boot into kernel.
> > >
> > > We could have done PAXB reset in the driver itself as you have suggested here.
> > > But note that this detail could vary for each SoC, because these
> > > registers are not part
> > > of PAXB register space itself, rather exists in a register space responsible for
> > > controlling power to various wrappers in PCIe IP. Normally, this kind
> > > of SoC specific
> > > details are handled in firmware itself, we don't bring them to driver level.
> >
> > OK understood.
> >
> > >
> > > > Or is this related to earlier boot stages loading firmware for the emulated
> > > > downstream endpoints (ep_is_internal)?
> > > >
> > > > Finally, in the case where ep_is_internal do you need to disable anything
> > > > prior to invalidating the mappings?
> > > >
> > > No, ep_is_internal  is indicator for PAXC IP. It does not have
> > > mappings as in PAXB.
> >
> > I think I meant !ep_is_internal. I.e. is there possibility of inbound traffic
> > prior to invalidating the mappings. I'd assume not, but that's an assumption.
> >
> No, EP devices are not even enumerated yet.
>
> > Either way:
> >
> > Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> >
> > >
> > >
> > > Regards,
> > > Abhishek
> > > > >
> > > > > Signed-off-by: Abhishek Shah <abhishek.shah@broadcom.com>
> > > > > Reviewed-by: Ray Jui <ray.jui@broadcom.com>
> > > > > Reviewed-by: Vikram Mysore Prakash <vikram.prakash@broadcom.com>
> > > > > ---
> > > > >  drivers/pci/controller/pcie-iproc.c | 28 ++++++++++++++++++++++++++++
> > > > >  1 file changed, 28 insertions(+)
> > > > >
> > > > > diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
> > > > > index e3ca46497470..99a9521ba7ab 100644
> > > > > --- a/drivers/pci/controller/pcie-iproc.c
> > > > > +++ b/drivers/pci/controller/pcie-iproc.c
> > > > > @@ -1245,6 +1245,32 @@ static int iproc_pcie_map_dma_ranges(struct iproc_pcie *pcie)
> > > > >       return ret;
> > > > >  }
> > > > >
> > > > > +static void iproc_pcie_invalidate_mapping(struct iproc_pcie *pcie)
> > > > > +{
> > > > > +     struct iproc_pcie_ib *ib = &pcie->ib;
> > > > > +     struct iproc_pcie_ob *ob = &pcie->ob;
> > > > > +     int idx;
> > > > > +
> > > > > +     if (pcie->ep_is_internal)
> > > > > +             return;
> > > > > +
> > > > > +     if (pcie->need_ob_cfg) {
> > > > > +             /* iterate through all OARR mapping regions */
> > > > > +             for (idx = ob->nr_windows - 1; idx >= 0; idx--) {
> > > > > +                     iproc_pcie_write_reg(pcie,
> > > > > +                                          MAP_REG(IPROC_PCIE_OARR0, idx), 0);
> > > > > +             }
> > > > > +     }
> > > > > +
> > > > > +     if (pcie->need_ib_cfg) {
> > > > > +             /* iterate through all IARR mapping regions */
> > > > > +             for (idx = 0; idx < ib->nr_regions; idx++) {
> > > > > +                     iproc_pcie_write_reg(pcie,
> > > > > +                                          MAP_REG(IPROC_PCIE_IARR0, idx), 0);
> > > > > +             }
> > > > > +     }
> > > > > +}
> > > > > +
> > > > >  static int iproce_pcie_get_msi(struct iproc_pcie *pcie,
> > > > >                              struct device_node *msi_node,
> > > > >                              u64 *msi_addr)
> > > > > @@ -1517,6 +1543,8 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
> > > > >       iproc_pcie_perst_ctrl(pcie, true);
> > > > >       iproc_pcie_perst_ctrl(pcie, false);
> > > > >
> > > > > +     iproc_pcie_invalidate_mapping(pcie);
> > > > > +
> > > > >       if (pcie->need_ob_cfg) {
> > > > >               ret = iproc_pcie_map_ranges(pcie, res);
> > > > >               if (ret) {
> > > >
> > > > The code changes look good to me.
> > > >
> > > > Thanks,
> > > >
> > > > Andrew Murray
> > > >
> > > > > --
> > > > > 2.17.1
> > > > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
