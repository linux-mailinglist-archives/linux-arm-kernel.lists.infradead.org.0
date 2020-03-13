Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4D5184EF3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 19:49:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HT1bBvGAsmpuHc6YqyUOdXm4+J+2esfAkHOy7eMq3Kc=; b=cP5RGhmYDLR1pW
	iawFK2VsYqOJUxBuC2csJJBpiwgc1joRnN6tq+Bj896dg733TOJKB25OKrZmA30ODpI2tssZBEs1f
	v54Pgx2C3wJXI/gVM7hFXDHE6O/ema+06m1pUr6xx5cgyUbFQ006mrDfmRLmbXy6kXO4D0bWTGdg+
	b6+NzU/s1cE8sjh9GtF3wa0RGeqXCmgOHSNLBj9DKsL+G+bgUsT8Dq/M5otVHhxnI8oxNdL0SZFDq
	dHpAoKtdqUp+KkMj2SKS4+hRsWceGhpNu1AcTNOCw1S/2+ycJ9c7rsddhZQQPV6vAM/XOO2VGWXww
	tXhs6a+1amPghQ8EaIiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCpNX-0005Js-Gu; Fri, 13 Mar 2020 18:49:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCpNL-0005JO-UK
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 18:49:41 +0000
Received: by mail-wr1-x444.google.com with SMTP id l18so13369160wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 11:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=n5mYtOCDtTMhVqWWtnAYZbOGWU/dWKTocyI6VDmvai0=;
 b=YSCViQJZaGg2DUvC/y9nWfadomBbGcG6Yc2H1OzXvnfHCKOuZVoCgMGn/pjslTo8ya
 0cl9MB7EDnEVotRPszN48POnmTkQGumr6H3obdLPoAWYA04nArvbSjghLml7sbLgiUxb
 7XpW9HHmFFMVxGNAaXedK13YK/1mI8EIC0NIjBdgdQoCL77sjAW/ySBJYrlGyuv7WGlB
 d6NJdvFcy9BFs6QhNYKyv7z3Thd1SgkVBg6YaK1lBR4L9Qcc2snz6UzGUpAY5cFgnbMT
 Vsh/RJI2Ynibx4KNap+8iDk9GkG/+0n1sP5+aXXNQGxZA0vXUbyrBsYzH1wJ2H9n+gnb
 YF9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=n5mYtOCDtTMhVqWWtnAYZbOGWU/dWKTocyI6VDmvai0=;
 b=lX/pAfcfiP862mVv2x64wAadlgFbwcEIsc31mdZicrUNhRiU8mPuhXyCjL4TbsUeqO
 7iSbTZs0l3kb/6lyC9ZAucW7JYRqbZ7rdgPCLU5sxt4n85Zdtu1IbZGEsP4Yf2JDUSXO
 BzjoUeEt0o2Opi3xHM+dvzAGqn03pjV2HjYR+MXMkirfCJI1Nm+vm/fvlXZLBLLKltuy
 mae5HpBzUVJuoaTdcignWDC+VxdpCzAsOpE0i5n6x0ezA4JCFNTF1AN4/gGFetWnVTR8
 uXFIOntto3bH02fhDy3VYR+kKKc7LkSyJUi28iO6MHaSH9m+hbTIVzQfEHKTgvpYZn1a
 m3GQ==
X-Gm-Message-State: ANhLgQ29diT4eiT+8EIeVOJBUdmrOtF6algNSbwUqnwelCOT92GdaquS
 8whbyv7uYJzlmN7ArrmnnLVYbA==
X-Google-Smtp-Source: ADFU+vvN3FXAj9zYtlcNhBdDVRPxlJ9d7a3bWAHNRudXD8VnpMI2LVPHlm82JRtMsY6Srjdmj0HUuA==
X-Received: by 2002:a5d:56c4:: with SMTP id m4mr5691817wrw.182.1584125376843; 
 Fri, 13 Mar 2020 11:49:36 -0700 (PDT)
Received: from myrica ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id b203sm18625270wmc.45.2020.03.13.11.49.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 11:49:36 -0700 (PDT)
Date: Fri, 13 Mar 2020 19:49:29 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200313184929.GC2574@myrica>
References: <20200228143935.GA2156@myrica> <20200228144844.GQ31668@ziepe.ca>
 <20200228150427.GF2156@myrica> <20200228151339.GS31668@ziepe.ca>
 <20200306095614.GA50020@myrica> <20200306130919.GJ31668@ziepe.ca>
 <20200306143556.GA99609@myrica> <20200306145245.GK31668@ziepe.ca>
 <20200306161519.GB99609@myrica> <20200306174239.GM31668@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306174239.GM31668@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_114940_011244_0750FC9C 
X-CRM114-Status: GOOD (  30.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kevin.tian@intel.com,
 Dimitri Sivanich <sivanich@sgi.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pci@vger.kernel.org,
 robin.murphy@arm.com, linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 robh+dt@kernel.org, catalin.marinas@arm.com, zhangfei.gao@linaro.org,
 Andrew Morton <akpm@linux-foundation.org>, will@kernel.org,
 christian.koenig@amd.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 01:42:39PM -0400, Jason Gunthorpe wrote:
> On Fri, Mar 06, 2020 at 05:15:19PM +0100, Jean-Philippe Brucker wrote:
> > On Fri, Mar 06, 2020 at 10:52:45AM -0400, Jason Gunthorpe wrote:
> > > On Fri, Mar 06, 2020 at 03:35:56PM +0100, Jean-Philippe Brucker wrote:
> > > > On Fri, Mar 06, 2020 at 09:09:19AM -0400, Jason Gunthorpe wrote:
> > > > > On Fri, Mar 06, 2020 at 10:56:14AM +0100, Jean-Philippe Brucker wrote:
> > > > > > I tried to keep it simple like that: normally mmu_notifier_get() is called
> > > > > > in bind(), and mmu_notifier_put() is called in unbind(). 
> > > > > > 
> > > > > > Multiple device drivers may call bind() with the same mm. Each bind()
> > > > > > calls mmu_notifier_get(), obtains the same io_mm, and returns a new bond
> > > > > > (a device<->mm link). Each bond is freed by calling unbind(), which calls
> > > > > > mmu_notifier_put().
> > > > > > 
> > > > > > That's the most common case. Now if the process is killed and the mm
> > > > > > disappears, we do need to avoid use-after-free caused by DMA of the
> > > > > > mappings and the page tables. 
> > > > > 
> > > > > This is why release must do invalidate all - but it doesn't need to do
> > > > > any more - as no SPTE can be established without a mmget() - and
> > > > > mmget() is no longer possible past release.
> > > > 
> > > > In our case we don't have SPTEs, the whole pgd is shared between MMU and
> > > > IOMMU (isolated using PASID tables).
> > > 
> > > Okay, but this just means that 'invalidate all' also requires
> > > switching the PASID to use some pgd that is permanently 'all fail'.
> > > 
> > > > At this point no one told the device to stop working on this queue,
> > > > it may still be doing DMA on this address space.
> > > 
> > > Sure, but there are lots of cases where a defective user space can
> > > cause pages under active DMA to disappear, like munmap for
> > > instance. Process exit is really no different, the PASID should take
> > > errors and the device & driver should do whatever error flow it has.
> > 
> > We do have the possibility to shut things down in order, so to me this
> > feels like a band-aid. 
> 
> ->release() is called by exit_mmap which is called by mmput. There are
> over a 100 callsites to mmput() and I'm not totally sure what the
> rules are for release(). We've run into problems before with things
> like this.

A concrete example of something that could go badly if mmput() takes too
long would greatly help. Otherwise I'll have a hard time justifying the
added complexity.

I wrote a prototype that removes the device driver callback from
release(). It works with SMMUv3, but complicates the PASID descriptor
code, which is already awful with my recent changes and this series.

> IMHO, due to this, it is best for release to be simple and have
> conservative requirements on context like all the other notifier
> callbacks. It is is not a good place to put complex HW fencing driver
> code.
> 
> In particular that link you referenced is suggesting the driver tear
> down could take minutes - IMHO it is not OK to block mmput() for
> minutes.
> 
> > The idea has come up before though [1], and I'm not strongly opposed
> > to this model, but I'm still not convinced it's necessary. It does
> > add more complexity to IOMMU drivers, to avoid printing out the
> > errors that we wouldn't otherwise see, whereas device drivers need
> > in any case to implement the logic that forces stop DMA.
> 
> Errors should not be printed to the kernel log for PASID cases
> anyhow. PASID will be used by unpriv user, and unpriv user should not
> be able to trigger kernel prints at will, eg by doing dma to nmap VA
> or whatever. 

I agree. There is a difference, though, between invalid mappings and the
absence of a pgd. The former comes from userspace issuing DMA on unmapped
buffers, while the latter is typically a device/driver error which
normally needs to be reported.

On Arm SMMUv3 they are handled differently by the hardware. But instead of
disabling the whole PASID context on mm exit, we can quietly abort
incoming transactions while waiting for unbind().

And I think the other IOMMUs treat invalid PASID descriptor the same as
invalid translation table descriptor. At least VT-d quietly returns a
no-translation response to ATS TR and rejects PRI PR. I haven't found the
equivalent in the AMD IOMMU spec yet.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
