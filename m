Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3B3184F2F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:13:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ncOGFTindBLDYEJksjiX8fJrnCDAboEo8Klcc17UR4=; b=teJfrOPPr187R1
	swpPUlihFSyU+t8zBEO10YNDGpqQMeYInHQq26ggP/9aAP+3Q2TyTCo/qg7HkD/8vrdXanlk8asXY
	GdznF/9QSxWQVwBSbcAZZMWAGrugvNckIWIpYxZp4WIKQIc0LmeDey31B0Mz0Bu3heGr2LbzWvJ6v
	QJI2zT1N6pc7VobVYzKCk2EpaKYHdxNE4cgg3gxETrMzbKSikTkvlJl4iDZy8rqe2JotMrE+C9A0V
	8hVQMn/4F2DKS/pL09ffd+jh2ct1wK5alzL/iPD4yyAGB0mwiAmpjLALof0uHNU2APsJ69+ocYQJH
	52l3AI1yHjO9F+mjQWgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCpkY-0005ws-IV; Fri, 13 Mar 2020 19:13:38 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCpkP-0005vj-8E
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 19:13:30 +0000
Received: by mail-qv1-xf42.google.com with SMTP id ca9so5210919qvb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 12:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PPCktG6nEvhXmf9moRkI6GaBpVzb4qfjuLIfr4oX24U=;
 b=oMwn2l4h8Tx8PfqTSSs7jcFo6p6SGfbk2paFxxCwDo4UjReV48Ea0WeynOCfP0UESg
 D5Wx42yUB6XE+ECNQi7oshT1K/ITK0SF6QPuBytfQjClq48PdGDZYZkEX2mV44jsJSIZ
 JmfVZzlPCGi2MhuzvTGwSFBdDoRlPsRM31IIJc35bnTCaDgjPvUbOxtPlMnxXel6a7FY
 S2aBIZ8kX+EntSYh+k5ozLPfkAcPFTOlfbRQwTdgkhhTV0n44gq50oUncZS8eLjHICPI
 cRSxnBCKNdjtgvnQfhAC9bltqGz7vdFDc4E/CspLPEX7CV9xxZf3RANkXlRVD60eUYDj
 pyIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PPCktG6nEvhXmf9moRkI6GaBpVzb4qfjuLIfr4oX24U=;
 b=EUUiBWxQrDHjV54RAaTbwhr2YOhiS1F5G6wuAy9aTF0eGdsb4hnXD2MIHjkHGYFrRJ
 GaiCuZm11tOXqpTiz1obC0wb6f7xHx4X7FihVhAPQ3EFiFXoMJHXmNF90hfndVkEuaqV
 xw8D1qBJFfMeUEQFVRq0rZecudwiEetY4nB9KWESh7/789Wn5C9IxEMUwDziNAn8fhkH
 ixef1fXuHBml8cS1IcKKVgAOf2eoFJgVko7GIwBGhOfxU+hkVVns9pnxlU7EF+qdrQ1q
 Gqd127Glp3tiMeQmXhLvA2z902GKbeEgVczV9gYebuTgb4ywHzLTnWGuwnFxnOh2hFCg
 IXeA==
X-Gm-Message-State: ANhLgQ0z6EvjqZfpm5uKb6jo+W0nyvlMIGnfPeTOtvun/7hGl82B446s
 aMmrbvCr3lJoUClffsu+TYMwGQ==
X-Google-Smtp-Source: ADFU+vutgg3YrWNjonghOGBQTDVm29PBDy/u3g+sX5DbKZ/TP9j/X7cNOJItzK6P4dCcACQHzOv8kg==
X-Received: by 2002:ad4:458d:: with SMTP id x13mr13168915qvu.155.1584126806856; 
 Fri, 13 Mar 2020 12:13:26 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.57.212])
 by smtp.gmail.com with ESMTPSA id b10sm9121866qto.60.2020.03.13.12.13.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 13 Mar 2020 12:13:26 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1jCpkK-000463-VD; Fri, 13 Mar 2020 16:13:24 -0300
Date: Fri, 13 Mar 2020 16:13:24 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200313191324.GG31668@ziepe.ca>
References: <20200228144844.GQ31668@ziepe.ca> <20200228150427.GF2156@myrica>
 <20200228151339.GS31668@ziepe.ca> <20200306095614.GA50020@myrica>
 <20200306130919.GJ31668@ziepe.ca> <20200306143556.GA99609@myrica>
 <20200306145245.GK31668@ziepe.ca> <20200306161519.GB99609@myrica>
 <20200306174239.GM31668@ziepe.ca> <20200313184929.GC2574@myrica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313184929.GC2574@myrica>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_121329_320254_06E14AAB 
X-CRM114-Status: GOOD (  30.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
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

On Fri, Mar 13, 2020 at 07:49:29PM +0100, Jean-Philippe Brucker wrote:
> On Fri, Mar 06, 2020 at 01:42:39PM -0400, Jason Gunthorpe wrote:
> > On Fri, Mar 06, 2020 at 05:15:19PM +0100, Jean-Philippe Brucker wrote:
> > > On Fri, Mar 06, 2020 at 10:52:45AM -0400, Jason Gunthorpe wrote:
> > > > On Fri, Mar 06, 2020 at 03:35:56PM +0100, Jean-Philippe Brucker wrote:
> > > > > On Fri, Mar 06, 2020 at 09:09:19AM -0400, Jason Gunthorpe wrote:
> > > > > > On Fri, Mar 06, 2020 at 10:56:14AM +0100, Jean-Philippe Brucker wrote:
> > > > > > > I tried to keep it simple like that: normally mmu_notifier_get() is called
> > > > > > > in bind(), and mmu_notifier_put() is called in unbind(). 
> > > > > > > 
> > > > > > > Multiple device drivers may call bind() with the same mm. Each bind()
> > > > > > > calls mmu_notifier_get(), obtains the same io_mm, and returns a new bond
> > > > > > > (a device<->mm link). Each bond is freed by calling unbind(), which calls
> > > > > > > mmu_notifier_put().
> > > > > > > 
> > > > > > > That's the most common case. Now if the process is killed and the mm
> > > > > > > disappears, we do need to avoid use-after-free caused by DMA of the
> > > > > > > mappings and the page tables. 
> > > > > > 
> > > > > > This is why release must do invalidate all - but it doesn't need to do
> > > > > > any more - as no SPTE can be established without a mmget() - and
> > > > > > mmget() is no longer possible past release.
> > > > > 
> > > > > In our case we don't have SPTEs, the whole pgd is shared between MMU and
> > > > > IOMMU (isolated using PASID tables).
> > > > 
> > > > Okay, but this just means that 'invalidate all' also requires
> > > > switching the PASID to use some pgd that is permanently 'all fail'.
> > > > 
> > > > > At this point no one told the device to stop working on this queue,
> > > > > it may still be doing DMA on this address space.
> > > > 
> > > > Sure, but there are lots of cases where a defective user space can
> > > > cause pages under active DMA to disappear, like munmap for
> > > > instance. Process exit is really no different, the PASID should take
> > > > errors and the device & driver should do whatever error flow it has.
> > > 
> > > We do have the possibility to shut things down in order, so to me this
> > > feels like a band-aid. 
> > 
> > ->release() is called by exit_mmap which is called by mmput. There are
> > over a 100 callsites to mmput() and I'm not totally sure what the
> > rules are for release(). We've run into problems before with things
> > like this.
> 
> A concrete example of something that could go badly if mmput() takes too
> long would greatly help. Otherwise I'll have a hard time justifying the
> added complexity.

It is not just takes too long, but also accidently causing locking
problems by doing very complex code in the release callback. Unless
you audit all the mmput call sites to define the calling conditions I
can't even say what the risk is here. 

Particularly, calling something with impossible to audit locking like
the dma_fence stuff from release is probably impossible to prove
safety and then keep safe.

It is easy enough to see where takes too long can have a bad impact,
mmput is called all over the place. Just in the RDMA code slowing it
down would block ODP page faulting completely for all processes.
This is not acceptable.

For this reason release callbacks must be simple/fast and must have
trivial locking.

> > Errors should not be printed to the kernel log for PASID cases
> > anyhow. PASID will be used by unpriv user, and unpriv user should not
> > be able to trigger kernel prints at will, eg by doing dma to nmap VA
> > or whatever. 
> 
> I agree. There is a difference, though, between invalid mappings and the
> absence of a pgd. The former comes from userspace issuing DMA on unmapped
> buffers, while the latter is typically a device/driver error which
> normally needs to be reported.

Why not make the pgd present as I suggested? Point it at a static
dummy pgd that always fails to page fault during release? Make the pgd
not present only once the PASID is fully destroyed.

That really is the only thing release is supposed to mean -> unmap all
VAs.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
