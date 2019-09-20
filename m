Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A6CB8B6F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 09:18:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5+KxnIWCoHXzYkO63lGcQkwFOLYNe8CHEiIK68s0Wo8=; b=XAER/opLWJMNLS
	4qrQpBl851zKTRIazmVIzbcjTlkh/8JRxs/ilt7+pztVe53Z31JRyxA5H6Q/XsmgXAPeVpTl/Qai1
	15ATld/491fcgei9WA+bWbuTyCyxxkNYAnxpM4bwuBXJw8H3n/eGK3q8TM4TMsAHz33pkdc8G2olv
	wRGXsRo+5jy/nJoF5fZJpTgyDTVVStMLU9BAJO5x//NcHiFTXmlz4sgQtIDEGout6ux12tCpvZZV/
	ZiTHzCy0sBGv2N+79uRHhmsG62xqpPcZ3S7UWID242n57HxT2sYFBf7Jlg0+LGxmIfRgPQZxUvwCv
	Bjj4ucQcJB4Zgd32hyRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBDBj-0001vr-Sf; Fri, 20 Sep 2019 07:18:44 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBDBS-0001v9-Bl
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 07:18:27 +0000
Received: by mail-ed1-x544.google.com with SMTP id h33so5368008edh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 00:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BUHblpDIooIrZQuKvaVSkR4gzneP4UJ1DcsQqZl+esY=;
 b=PxlvuUd0/XaEgntK4rFzZoabSaLZYdKu65/CtEXGWfgiVeEBvKri54p1YtHbV54Vso
 sabWrBBBMhYzdp7d9KnVvJ/FiP9nwjBPydyvYFnlc7zKZcYqw5CKdFoVfJbkKzEkyW8J
 CbOHOI8iEMOPf8+cqLKWOimzXm8Ft2DbTDipqB28PvufFkFwN/HwQpvHtkb5hPqIHcos
 at6f3Y25OcKlt53k4/1F7Xocn9shMsVcmKDZVF/Qf1zQR0/4p7zv4zjgJkoeiz/cOxq8
 Bsk9EtGiHn+FXXRvu8plA2+/ymlFBMGxhfBebvI67y9BIVOMgwSqDpoC7Orus1cUkvNB
 UyHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BUHblpDIooIrZQuKvaVSkR4gzneP4UJ1DcsQqZl+esY=;
 b=frSHkFDEiElv2TlT4iqRg6AxhsmTVfuDB2bLbMLDVFnOVgziLdpuN80FKXoRAsNfMT
 nh4IAgj07i20JednKt8CbViH4rzrUpQQwLtls68v+NhUkeiFqb8KdIEP6p3jZDi1CQFk
 m93ltgTnahVcS50oJ5xWQ6g3XbVHqZy3ZQPXzq2bNut7tXfUnaCydGkq+dpY49jRZIoN
 UesAJc01BcugA0kjzT15B3jLd6Z0YSv0uZh3xzWn14x2NQjqSKviAtd5O45K5frExv5X
 GhLGCrEXIZa6XA1Qj+SfD7uLyqs23gOKlV2/Wu2Lz+s82FvEEKD3TUUu4WC9fZjOxXaE
 LNaw==
X-Gm-Message-State: APjAAAX1vjC6R4FR4vfI2NSW7zI5xinsxWFtrWvf/12jV771XKjEUFDQ
 LmV1lvDgpAX87LEpUoyfNtqrlg==
X-Google-Smtp-Source: APXvYqzlWVFt2wqR2XV+/SkmRXHJ3VguPiEFC4D4xWO75dtqYKoxP+71EoOFdi2jld8XfBiJJ9aMHA==
X-Received: by 2002:a05:6402:17eb:: with SMTP id
 t11mr19808894edy.97.1568963904689; 
 Fri, 20 Sep 2019 00:18:24 -0700 (PDT)
Received: from lophozonia ([85.195.192.192])
 by smtp.gmail.com with ESMTPSA id e13sm55819eje.52.2019.09.20.00.18.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Sep 2019 00:18:24 -0700 (PDT)
Date: Fri, 20 Sep 2019 09:18:21 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Guo Ren <guoren@kernel.org>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
Message-ID: <20190920071821.GA1229556@lophozonia>
References: <CAJF2gTSiiiewTLwVAXvPLO7rTSUw1rg8VtFLzANdP2S2EEbTjg@mail.gmail.com>
 <20190624104006.lvm32nahemaqklxc@willie-the-truck>
 <CAJF2gTSC1sGgmiTCgzKUTdPyUZ3LG4H7N8YbMyWr-E+eifGuYg@mail.gmail.com>
 <20190912140256.fwbutgmadpjbjnab@willie-the-truck>
 <CAJF2gTT2c45HRfATF+=zs-HNToFAKgq1inKRmJMV3uPYBo4iVg@mail.gmail.com>
 <CAJF2gTTsHCsSpf1ncVb=ZJS2d=r+AdDi2=5z-REVS=uUg9138A@mail.gmail.com>
 <057a0af3-93f7-271c-170e-4b31e6894c3c@linaro.org>
 <CAJF2gTRbyfrUqAULPqJTXdxx8YOscPqAEuMsoJ+dTNobNrUV1g@mail.gmail.com>
 <20190919151844.GG1013538@lophozonia>
 <CAJF2gTQtk7VhBgUan6WOZgc3UaQzHL8SxMi=yiHG-8eC207BbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJF2gTQtk7VhBgUan6WOZgc3UaQzHL8SxMi=yiHG-8eC207BbQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_001826_437640_C465426E 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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

On Fri, Sep 20, 2019 at 08:07:38AM +0800, Guo Ren wrote:
> On Thu, Sep 19, 2019 at 11:18 PM Jean-Philippe Brucker
> <jean-philippe@linaro.org> wrote:
> 
> >
> > The SMMU does support PCI Virtual Function - an hypervisor can assign a
> > VF to a guest, and let that guest partition the VF into smaller contexts
> > by using PASID.  What it can't support is assigning partitions of a PCI
> > function (VF or PF) to multiple Virtual Machines, since there is a
> > single S2 PGD per function (in the Stream Table Entry), rather than one
> > S2 PGD per PASID context.
> >
> In my concept, the two sentences "The SMMU does support PCI Virtual
> Functio" v.s. "What it can't support is assigning partitions of a PCI
> function (VF or PF) to multiple Virtual Machines" are conflict and I
> don't want to play naming game :)

That's fine. But to prevent the spread of misinformation: Arm SMMU
supports PCI Virtual Functions.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
