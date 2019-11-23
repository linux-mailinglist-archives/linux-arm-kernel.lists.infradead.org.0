Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B93CB107F86
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 17:51:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Z3N2vf9W5xc8LsCnWwgjdy3DBuRbiIFWUiGBCqJGzk=; b=nAoHppdRF/RPvG
	yokgltME9yFbD0FgqX5SfsixulxCsrlkJJ8CVXTx014bZk6IXH5jli8m2UGoeU9qGXwbCacC9osyI
	g3OVlfWdSXPC8t/48SAkUQbmdLBVmb/CY/VNyQmvalLNkkNnLpRcYjQafpJA64IrCj5ajHWLBIGpK
	yGEJtFelfnxHfETAETeHS9SMfXptV9LtZtaMxnB+z5eDdad9RcNj4vuBlk9Y3BGPnoaVK8pXxEU74
	VnOoDLX9R5lzzYQIJ9Er1FyEUOq0afKjYrOp8s1rkYQ2iNorcfGQOuCj70mMcj5LEOk7QJ7y/uFjJ
	Ndmd6u5CpSs8RSReon3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYYcz-00018p-NU; Sat, 23 Nov 2019 16:51:21 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYYcq-00018O-Hq
 for linux-arm-kernel@lists.infradead.org; Sat, 23 Nov 2019 16:51:13 +0000
Received: by mail-ot1-x343.google.com with SMTP id w11so9001874ote.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 Nov 2019 08:51:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Upjd5FUUY2gldqhTrP6G3VfXwkiVp2ftazHWWknqWA4=;
 b=f4EoZznNRknE5+5KvGz4gn6nVLdgpGkAnfbkGyUIqGaP+UAxcV/BrOLd2UxApPRrEY
 GK5bvfrDftwMSeSG2J5qWQsQbZKNzEWE1UscURDcyZ/Mf2IozhUK2hD7H7Wk6P+fr+Lj
 vYt3DfrNbNBDK2yymxFGV/wFQn08Y+ugjt/BabLIUwHrZDgdzC99OIHCsK3JPAOKI3Fl
 E0wzoBe1QNhnGqHxm235gEr3NX3lPvqWuX5gUSiK5gp+50CKyLWdeQC3cHqdNJ1vHc0O
 Pu1CfHPZkXkBFCovetMk4xuIxH7tOZ0Zyl87WOiEm3Q62Gxg8qmKNTjf1qf5qKp1IeyI
 ugIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Upjd5FUUY2gldqhTrP6G3VfXwkiVp2ftazHWWknqWA4=;
 b=nk2prXS7cSNxvbfXfLLuzaALMo22svYQ9coOL5tavUtenKJMurQCHUGx6HX2iG3s41
 6CLeCF640nzRngzCZ/EwaWP91ux3aSdiSnmbs4K5lvVKsLDB+t3f5x9nCvC35M/yQMof
 DYZA7Bz5ur1rFyTarfu7trAD4y3I9T7/J/LZwfhNdAzI2w0Jt1n6YcYlkkUqfaSroeH9
 ppjEUvDVK+08UQg0BhGDzafhAw48UX3p1aV9FEm+ISY+O63x4TRYhlijUs6rt78QFFLF
 vkSFAyi1cUzHcj92XLhDJ9qvFv5AskApCSfAlBX3iYx3ZCFN/Ke/TIkzCKnv5+v89jTP
 HQyA==
X-Gm-Message-State: APjAAAWBs3+1rrmYEYMOoCuQn23noTg900fXAUbwbtWgiAFhu2r0hIes
 4+/pgy/JY+KNcvaVqqFtOcA=
X-Google-Smtp-Source: APXvYqy/FuuHH8tC1YjzsbuxoICI/PjIU8E8OEmgejzSAAA40pPWUGyBa/f/fjeP66p0eSxGD/kxCw==
X-Received: by 2002:a9d:7399:: with SMTP id j25mr5600107otk.155.1574527870570; 
 Sat, 23 Nov 2019 08:51:10 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::7])
 by smtp.gmail.com with ESMTPSA id n5sm609133oie.16.2019.11.23.08.51.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 23 Nov 2019 08:51:09 -0800 (PST)
Date: Sat, 23 Nov 2019 09:51:08 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2] dma-mapping: treat dev->bus_dma_mask as a DMA limit
Message-ID: <20191123165108.GA15306@ubuntu-x2-xlarge-x86>
References: <20191121092646.8449-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121092646.8449-1-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_085112_595081_66FAE864 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-mips@vger.kernel.org,
 linux-ide@vger.kernel.org, Paul Mackerras <paulus@samba.org>,
 Hanjun Guo <guohanjun@huawei.com>, Frank Rowand <frowand.list@gmail.com>,
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Paul Burton <paulburton@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Joerg Roedel <joro@8bytes.org>,
 x86@kernel.org, linux-acpi@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 linux-pci@vger.kernel.org, James Hogan <jhogan@kernel.org>,
 Len Brown <lenb@kernel.org>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Jens Axboe <axboe@kernel.dk>, linuxppc-dev@lists.ozlabs.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, iommu@lists.linux-foundation.org,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 10:26:44AM +0100, Nicolas Saenz Julienne wrote:
> Using a mask to represent bus DMA constraints has a set of limitations.
> The biggest one being it can only hold a power of two (minus one). The
> DMA mapping code is already aware of this and treats dev->bus_dma_mask
> as a limit. This quirk is already used by some architectures although
> still rare.
> 
> With the introduction of the Raspberry Pi 4 we've found a new contender
> for the use of bus DMA limits, as its PCIe bus can only address the
> lower 3GB of memory (of a total of 4GB). This is impossible to represent
> with a mask. To make things worse the device-tree code rounds non power
> of two bus DMA limits to the next power of two, which is unacceptable in
> this case.
> 
> In the light of this, rename dev->bus_dma_mask to dev->bus_dma_limit all
> over the tree and treat it as such. Note that dev->bus_dma_limit should
> contain the higher accesible DMA address.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
<snip>
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index 041066f3ec99..0cc702a70a96 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -421,8 +421,7 @@ static dma_addr_t iommu_dma_alloc_iova(struct iommu_domain *domain,
>  	if (iova_len < (1 << (IOVA_RANGE_CACHE_MAX_SIZE - 1)))
>  		iova_len = roundup_pow_of_two(iova_len);
>  
> -	if (dev->bus_dma_mask)
> -		dma_limit &= dev->bus_dma_mask;
> +	dma_limit = min_not_zero(dma_limit, dev->bus_dma_limit);
>  
>  	if (domain->geometry.force_aperture)
>  		dma_limit = min(dma_limit, domain->geometry.aperture_end);

Just as an FYI, this introduces a warning on arm32 allyesconfig for me:

In file included from ../include/linux/list.h:9,
                 from ../include/linux/kobject.h:19,
                 from ../include/linux/of.h:17,
                 from ../include/linux/irqdomain.h:35,
                 from ../include/linux/acpi.h:13,
                 from ../include/linux/acpi_iort.h:10,
                 from ../drivers/iommu/dma-iommu.c:11:
../drivers/iommu/dma-iommu.c: In function 'iommu_dma_alloc_iova':
../include/linux/kernel.h:851:29: warning: comparison of distinct pointer types lacks a cast
  851 |   (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
      |                             ^~
../include/linux/kernel.h:865:4: note: in expansion of macro '__typecheck'
  865 |   (__typecheck(x, y) && __no_side_effects(x, y))
      |    ^~~~~~~~~~~
../include/linux/kernel.h:875:24: note: in expansion of macro '__safe_cmp'
  875 |  __builtin_choose_expr(__safe_cmp(x, y), \
      |                        ^~~~~~~~~~
../include/linux/kernel.h:884:19: note: in expansion of macro '__careful_cmp'
  884 | #define min(x, y) __careful_cmp(x, y, <)
      |                   ^~~~~~~~~~~~~
../include/linux/kernel.h:917:39: note: in expansion of macro 'min'
  917 |  __x == 0 ? __y : ((__y == 0) ? __x : min(__x, __y)); })
      |                                       ^~~
../drivers/iommu/dma-iommu.c:424:14: note: in expansion of macro 'min_not_zero'
  424 |  dma_limit = min_not_zero(dma_limit, dev->bus_dma_limit);
      |              ^~~~~~~~~~~~

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
