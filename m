Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099161D8DD6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 04:55:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eDXoCW+vrzD//YcIfTLluKbls6sHKzOoD0MGe9KJn58=; b=gS9CU7LPMv1wi4
	4JBGnHsW/0EOhcdAHjnD1bAE49EobDzk2eapaCY8YhDqtfO4/EVc35iH7VJx5yanSsLbo4vdBoAXg
	pZNi/WYkaasH3Q5cAnFwSuv1fNel0AcBlEuomZFs/bc8Yae/w2kyorlBIvpBAMLIUuF5r+1Hxp2QQ
	qDEBmM2gprspVpjBLEnK2RSPeKI+YxqDsqORQGGis8gDs1vDdA6cuV8nC5SF+pu8Fg2dk7eXXQ0yX
	t4Bwi4jacIlC/imvLw6BcJm0MIyR4+21+mzVUjkO8iXl6RE9ffUQm5U38XN8a/Imw2qRDJFiw3TUp
	5w7iKQ6PaKXle9dYi8eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jasPX-00069V-Ip; Tue, 19 May 2020 02:55:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jasPD-00060a-SD; Tue, 19 May 2020 02:55:01 +0000
Received: by mail-wm1-x342.google.com with SMTP id n5so1700610wmd.0;
 Mon, 18 May 2020 19:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1lj55BfpTJjAfuTb4g/D5WGfSJIweJivFw92ZR65L9o=;
 b=hy7ZKx389ddhD3rN4QRSm1V9149iDHGX0kLP4MJ1xrIti9RLHUzZ0+kO4bSx5mheix
 CnZz1XOiLKOR8BSGOlLRdJmDOw998FtDrcI8ps4Y8c4WJjNPwNwPz4U+RI9WXSDZZ/+A
 w0woiRktQL5CWOmG1JKhD0MYoxvjcBBBgTH/fPYszJX0CWu4QaBPShyeaLMjRwQI0fN2
 ReTAV9X2lqq8VBGUe9IZglpnx8Keoe5wQcMoSAbnIQ+1LU/0GpfmvnllNg3KnCc1qn9f
 Y6y8UAobo1x4Wgid5+ijGPqIhapIYbPb55vOJN+QRxOq7jf9fgV2Np8u255TTxMNdkuV
 fGFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1lj55BfpTJjAfuTb4g/D5WGfSJIweJivFw92ZR65L9o=;
 b=XRauHbUtQTd8A1KZSx66ZtVDw0c1eYBqiIFcyeKovBFRW1XuKZRHoVj1+sBpAsABo+
 G3VGMYeAAWbASZAzoWmbYYCcBF0yuVYhXYwgc9bAoDWK0Z9lagUhhCguIhHXQeND0qGv
 TrjbbVDhu7udIY4uN/rqV+6naJj0RzjPIgqyCOmbHdjxyGLPB2hea24FA9ATSy+xbeoC
 RI4m6yJ6lofcWYP0vmlZ5dRq4kZyvgb/lR1UkrO0IBYCVTHqDkH3v9WvNfQQoPFi+NjO
 O1BqADxAbYmwx7IZuRkDnIkTetm2GCAEFjuCn29Vb8o2tpC7DS/1BHgYl0KZihbay8ZQ
 +sVA==
X-Gm-Message-State: AOAM531oJrPrgNaV31q26KYhLhMgKRswVIh/XzE2Nzv4RBzjlK4leIFQ
 i+ViIGaT3zJViUfWyx2xlUXGKNFT9HxGxVWSjx4=
X-Google-Smtp-Source: ABdhPJyoRD5CX/NqFOffBiyLl8cmECh5DgKueK4GdLlY6WBns7lCeG/ekAcV79EYdzaRf1hsNJLEkY0fIncU4Jrpy6k=
X-Received: by 2002:a7b:cc92:: with SMTP id p18mr2719332wma.174.1589856897659; 
 Mon, 18 May 2020 19:54:57 -0700 (PDT)
MIME-Version: 1.0
References: <1589251566-32126-1-git-send-email-pkushwaha@marvell.com>
 <20200518155545.GO32394@willie-the-truck>
In-Reply-To: <20200518155545.GO32394@willie-the-truck>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Tue, 19 May 2020 08:24:21 +0530
Message-ID: <CAJ2QiJLMKckbuAqJutAi_zUQqqaK5Mg_u5Q=gg-POSvmk8cT9g@mail.gmail.com>
Subject: Re: [PATCH][v2] iommu: arm-smmu-v3: Copy SMMU table for kdump kernel
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_195459_950242_404D9B18 
X-CRM114-Status: GOOD (  29.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.pkin[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Marc Zyngier <maz@kernel.org>, Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

Sorry, I replied 1:1. Now replying with mailing list

On Mon, May 18, 2020 at 9:25 PM Will Deacon <will@kernel.org> wrote:
>
> On Mon, May 11, 2020 at 07:46:06PM -0700, Prabhakar Kushwaha wrote:
> > An SMMU Stream table is created by the primary kernel. This table is
> > used by the SMMU to perform address translations for device-originated
> > transactions. Any crash (if happened) launches the kdump kernel which
> > re-creates the SMMU Stream table. New transactions will be translated
> > via this new table.
> >
> > There are scenarios, where devices are still having old pending
> > transactions (configured in the primary kernel). These transactions
> > come in-between Stream table creation and device-driver probe.
> > As new stream table does not have entry for older transactions,
> > it will be aborted by SMMU.
> >
> > Similar observations were found with PCIe-Intel 82576 Gigabit
> > Network card. It sends old Memory Read transaction in kdump kernel.
> > Transactions configured for older Stream table entries, that do not
> > exist any longer in the new table, will cause a PCIe Completion Abort.
> > Returned PCIe completion abort further leads to AER Errors from APEI
> > Generic Hardware Error Source (GHES) with completion timeout.
> > A network device hang is observed even after continuous
> > reset/recovery from driver, Hence device is no more usable.
> >
> > So, If we are in a kdump kernel try to copy SMMU Stream table from
> > primary/old kernel to preserve the mappings until the device driver
> > takes over.
> >
> > Signed-off-by: Prabhakar Kushwaha <pkushwaha@marvell.com>
> > ---
> > Changes for v2: Used memremap in-place of ioremap
> >
> > V2 patch has been sanity tested.
>
> Are you sure?
>

I tested v1 patch thoroughly.

After replacing ioremap with memremap, I tested 1-2 cycle per type.
I can test this patch thoroughly to check any kind of possible error.

> > V1 patch has been tested with
> > A) PCIe-Intel 82576 Gigabit Network card in following
> > configurations with "no AER error". Each iteration has
> > been tested on both Suse kdump rfs And default Centos distro rfs.
> >
> >  1)  with 2 level stream table
> >        ----------------------------------------------------
> >        SMMU               |  Normal Ping   | Flood Ping
> >        -----------------------------------------------------
> >        Default Operation  |  100 times     | 10 times
> >        -----------------------------------------------------
> >        IOMMU bypass       |  41 times      | 10 times
> >        -----------------------------------------------------
> >
> >  2)  with Linear stream table.
> >        -----------------------------------------------------
> >        SMMU               |  Normal Ping   | Flood Ping
> >        ------------------------------------------------------
> >        Default Operation  |  100 times     | 10 times
> >        ------------------------------------------------------
> >        IOMMU bypass       |  55 times      | 10 times
> >        -------------------------------------------------------
> >
> > B) This patch is also tested with Micron Technology Inc 9200 PRO NVMe
> > SSD card with 2 level stream table using "fio" in mixed read/write and
> > only read configurations. It is tested for both Default Operation and
> > IOMMU bypass mode for minimum 10 iterations across Centos kdump rfs and
> > default Centos ditstro rfs.
> >
> > This patch is not full proof solution. Issue can still come
> > from the point device is discovered and driver probe called.
> > This patch has reduced window of scenario from "SMMU Stream table
> > creation - device-driver" to "device discovery - device-driver".
> > Usually, device discovery to device-driver is very small time. So
> > the probability is very low.
> >
> > Note: device-discovery will overwrite existing stream table entries
> > with both SMMU stage as by-pass.
> >
> >
> >  drivers/iommu/arm-smmu-v3.c | 36 +++++++++++++++++++++++++++++++++++-
> >  1 file changed, 35 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> > index 82508730feb7..d492d92c2dd7 100644
> > --- a/drivers/iommu/arm-smmu-v3.c
> > +++ b/drivers/iommu/arm-smmu-v3.c
> > @@ -1847,7 +1847,13 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
> >                       break;
> >               case STRTAB_STE_0_CFG_S1_TRANS:
> >               case STRTAB_STE_0_CFG_S2_TRANS:
> > -                     ste_live = true;
> > +                     /*
> > +                      * As kdump kernel copy STE table from previous
> > +                      * kernel. It still may have valid stream table entries.
> > +                      * Forcing entry as false to allow overwrite.
> > +                      */
> > +                     if (!is_kdump_kernel())
> > +                             ste_live = true;
> >                       break;
> >               case STRTAB_STE_0_CFG_ABORT:
> >                       BUG_ON(!disable_bypass);
> > @@ -3264,6 +3270,9 @@ static int arm_smmu_init_l1_strtab(struct arm_smmu_device *smmu)
> >               return -ENOMEM;
> >       }
> >
> > +     if (is_kdump_kernel())
> > +             return 0;
> > +
> >       for (i = 0; i < cfg->num_l1_ents; ++i) {
> >               arm_smmu_write_strtab_l1_desc(strtab, &cfg->l1_desc[i]);
> >               strtab += STRTAB_L1_DESC_DWORDS << 3;
> > @@ -3272,6 +3281,23 @@ static int arm_smmu_init_l1_strtab(struct arm_smmu_device *smmu)
> >       return 0;
> >  }
> >
> > +static void arm_smmu_copy_table(struct arm_smmu_device *smmu,
> > +                            struct arm_smmu_strtab_cfg *cfg, u32 size)
> > +{
> > +     struct arm_smmu_strtab_cfg rdcfg;
> > +
> > +     rdcfg.strtab_dma = readq_relaxed(smmu->base + ARM_SMMU_STRTAB_BASE);
> > +     rdcfg.strtab_base_cfg = readq_relaxed(smmu->base
> > +                                           + ARM_SMMU_STRTAB_BASE_CFG);
> > +
> > +     rdcfg.strtab_dma &= STRTAB_BASE_ADDR_MASK;
> > +     rdcfg.strtab = memremap(rdcfg.strtab_dma, size, MEMREMAP_WB);
> > +
> > +     memcpy_fromio(cfg->strtab, rdcfg.strtab, size);
> > +

this need a fix. It should be memcpy.

> > +     cfg->strtab_base_cfg = rdcfg.strtab_base_cfg;
>
> Sorry, but this is unacceptable. These things were allocated by the DMA API
> so you can't just memcpy them around and hope for the best.
>

I was referring copy_context_table() in drivers/iommu/intel-iommu.c.
here i see usage of memremap and memcpy to copy older iommu table.
did I take wrong reference?

What kind of issue you are foreseeing in using memcpy(). May be we can
try to find a solution.

-pk

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
