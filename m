Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD7EB7DF5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 17:19:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+jhr3DKNeEDve46IaI65MQcBNtpFmOubDhEg7QC0fQw=; b=OdH+fjoY/3LN4g
	7/Fm5v+7qTNIbtZq61YISKFJFBVTOTYyemN+kuNobQ3THZ5RLCJGATi6RqFrjMC5uSHWda4EH+RhM
	4kW9rptpb1MNAbvINSCBb4mPYjWt4TuyUh95u7UkQsq+nQldS2/BWTmAezfsmVXWBW1sC6jkxraKE
	8386SJ9YrTdyvSJd/C6NkKwCJJZyPHleS4YEf8L5Ai6Z9JA9j7HCMq+Sg2WXtn2m1r63UNJs9wkPz
	e9GQFwummOr/qZmW4BNyXdulH5PT9UYgdG8bwtVEelkibXgqIi36euIDANjDQ3J6i49GH9mE7+gvJ
	gr1H372tuY2KKi7ngnJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAyDO-0001Mb-U8; Thu, 19 Sep 2019 15:19:27 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAyCn-0001J3-4D
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 15:18:51 +0000
Received: by mail-ed1-x542.google.com with SMTP id r4so3574120edy.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 08:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eJ0UWMRY33TSZcE2wFwrgcT5zmWwOXQ+xlDh/x5Rbok=;
 b=Yqn2hP5/7LoUE96rW6LgXvDeRFDoEgSIYLWO331yu/t8KvfcDLYs0svMMqhPl0nEKU
 3028G05kj86vZEYdH0BT8B4Snvw/8TzsFj/6z3cDmgcLrYqAf9CTKaxFxWz6TetvRVWD
 JaOhJxFoN6Lysw3uc3I7TCd+bGbTAYEQdtrh530GBo5Aqg2kjpsReLMDlMYPva23+thK
 3paKUHNXhfjBIBDEcc9d7OpRoL4M9YEswI1G3XEqU9hMkBTILBRZAfv3lk1GyAApc7kF
 uBVf89FvXfuH3jiXShL1/vpa79fW+aGEKUGlC597SIRD1tjHojMUhcUCeA7TA1Um/ffs
 UzGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eJ0UWMRY33TSZcE2wFwrgcT5zmWwOXQ+xlDh/x5Rbok=;
 b=mORxDM2TZ57DDQr84CJl/bHet82SNdyh+KBKRw4duVqWMYmkdfzoMs3zGHq557LJIG
 V07QxhHP3SjsQvWfAIp9WbreShAO2kJ7jmdoiVgfKkSlCL8Woe2PlfBRHzyOq7BZKdmK
 2waQYZ7rVAKtuI89zPd+8uQHk7SCGXob+0XkpiOtR9vIv8FYrMI4jGg/DTrEGmsu8Evp
 DsjSLWzfxmzhM5eea1dME+HGAc8hZXhxlD9sk1EJLY0d4azNeK3QSqWAabfN0ex3bUAv
 Sdp8rytCRzJPQR+RzhiSFx81v4Bi78jlshlDoS2zBNT6yzpKzXz063wjmLmVUceVs3gs
 B9xQ==
X-Gm-Message-State: APjAAAUv8zxtwcWN/No+MYVTGn/jzL547VbzwwbaOvO905qmdPU16tjG
 ytecnps56FHCyhK36yzF0L4a9Q==
X-Google-Smtp-Source: APXvYqyjE5Z/ExpKjAFeUwQaYOlsDCBhURZQ6GgY1ZAERUi1xVf6/dGQvcGXJsfycKEfjO1ON7WJpA==
X-Received: by 2002:a17:906:6a92:: with SMTP id
 p18mr14982887ejr.253.1568906327557; 
 Thu, 19 Sep 2019 08:18:47 -0700 (PDT)
Received: from lophozonia ([85.195.192.192])
 by smtp.gmail.com with ESMTPSA id x4sm763681eds.87.2019.09.19.08.18.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 08:18:46 -0700 (PDT)
Date: Thu, 19 Sep 2019 17:18:44 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Guo Ren <guoren@kernel.org>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
Message-ID: <20190919151844.GG1013538@lophozonia>
References: <CAJF2gTTmFq3yYa9UrdZRAFwJgC=KmKTe2_NFy_UZBUQovqQJPg@mail.gmail.com>
 <20190619123939.GF7767@fuggles.cambridge.arm.com>
 <CAJF2gTSiiiewTLwVAXvPLO7rTSUw1rg8VtFLzANdP2S2EEbTjg@mail.gmail.com>
 <20190624104006.lvm32nahemaqklxc@willie-the-truck>
 <CAJF2gTSC1sGgmiTCgzKUTdPyUZ3LG4H7N8YbMyWr-E+eifGuYg@mail.gmail.com>
 <20190912140256.fwbutgmadpjbjnab@willie-the-truck>
 <CAJF2gTT2c45HRfATF+=zs-HNToFAKgq1inKRmJMV3uPYBo4iVg@mail.gmail.com>
 <CAJF2gTTsHCsSpf1ncVb=ZJS2d=r+AdDi2=5z-REVS=uUg9138A@mail.gmail.com>
 <057a0af3-93f7-271c-170e-4b31e6894c3c@linaro.org>
 <CAJF2gTRbyfrUqAULPqJTXdxx8YOscPqAEuMsoJ+dTNobNrUV1g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJF2gTRbyfrUqAULPqJTXdxx8YOscPqAEuMsoJ+dTNobNrUV1g@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_081849_191541_5AC7D8CD 
X-CRM114-Status: GOOD (  22.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aou@eecs.berkeley.edu,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, suzuki.poulose@arm.com,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, christoffer.dall@arm.com,
 iommu@lists.linux-foundation.org, Mike Rapoport <rppt@linux.ibm.com>,
 Anup Patel <anup.Patel@wdc.com>, Atish Patra <Atish.Patra@wdc.com>,
 Julien Grall <julien.grall@arm.com>, james.morse@arm.com, gary@garyguo.net,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 19, 2019 at 09:07:15PM +0800, Guo Ren wrote:
> > The solution I had to this problem is pinning the ASID [1] used by the
> > IOMMU, to prevent the CPU from recycling the ASID on rollover. This way
> > the CPU doesn't have to wait for IOMMU invalidations to complete, when
> > scheduling a task that might not even have anything to do with the IOMMU.
> >
> 
> > In the Arm SMMU, ASID and IOASID (PASID) are separate identifiers. IOASID
> > indexes an entry in the context descriptor table, which contains the ASID.
> > So with unpinned shared ASID you don't need to invalidate the ATC on
> > rollover, since the IOASID doesn't change, but you do need to modify the
> > context descriptor and invalidate cached versions of it.
> The terminology confused me a lot. I perfer use PASID for IOMMU and
> ASID is for CPU.
> Arm's entry of the context descriptor table contains a "IOASID"

The terminology I've been using so far is different:
* IOASID is PASID
* The entry in the context descriptor table contains an ASID, which
  is either "shared" with CPUs or "private" to the SMMU (the SMMU spec
  says "shared" or "non-shared").
* So the CPU and SMMU TLBs use ASIDs, and the PCI ATC uses IOASID

> IOASID != ASID for CPU_TLB and IOMMU_TLB.
> 
> When you say "since the IOASID doesn't change",Is it PASID or my IOASID ? -_*!

I was talking about PASID. Maybe we can drop "IOASID" and talk only
about ASID and PASID :)

> PASID in PCI-sig was used to determine transfer address space.
> For intel, the entry which is indexed by PASID also contain S1/S2.PGD
> and DID(VMID).
> For arm, the entry which is indexed by PASID only contain S1.PGD and
> IOASID. Compare to Intel Vt-d Scalable mode, arm's design can't
> support PCI Virtual Function.

The SMMU does support PCI Virtual Function - an hypervisor can assign a
VF to a guest, and let that guest partition the VF into smaller contexts
by using PASID.  What it can't support is assigning partitions of a PCI
function (VF or PF) to multiple Virtual Machines, since there is a
single S2 PGD per function (in the Stream Table Entry), rather than one
S2 PGD per PASID context.

Thanks,
Jean

> > Once you have pinned ASIDs, you could also declare that IOASID = ASID. I
> > don't remember finding an argument to strictly forbid it, even though ASID
> > and IOASID have different sizes on Arm (respectively 8/16 and 20 bits).
> ASID and IOASID are hard to keep the same between CPU system and IOMMU
> system. So I introduce S1/S2.PGD.PPN as a bridge between CPUs and
> IOMMUs.
> See my proposal [1]
> 
> 1: https://lore.kernel.org/linux-csky/1568896556-28769-1-git-send-email-guoren@kernel.org/T/#u
> -- 
> Best Regards
>  Guo Ren
> 
> ML: https://lore.kernel.org/linux-csky/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
