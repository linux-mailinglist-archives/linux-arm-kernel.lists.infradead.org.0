Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC1B1725E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 19:04:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3RTK0hHWtyHq6afEQ/xpk7Kg+VF3o3RlMMji8FQEdOM=; b=umOOeinBk84Pcg
	z7WCjtp1v0BXI+56qVx6DmhOfgu4XeSno/wgYYhGbPLFJJcIAK+xPJyhD2NK3tpkCW9n/oWI5Zk7i
	1RtA3ButF/iUTutDZlkCu+20Jf7BXD3/hf7nHxkcUhsn1enht8W0zTDKYTpSON78jQTWUMT+h8Yi4
	S0cdSIQuKmUzi2Uy2+NQdlhYdjYhfMksAKU73gXcpBRt1IrlUxtbbIH2iKzCRy/xQCrgcFSZ70pyq
	woJk6CxC3MVk8xzKD1MzaLaFUCl9lTFHF6mxPpP26yEr9sqVZwXUvWFTxcQSyLxMEO/WyXf5QbIsj
	u8ieCwP9vO8iynrF+7rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7NVy-0003VU-3A; Thu, 27 Feb 2020 18:04:02 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7NVk-0003Ui-Cb
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 18:03:50 +0000
Received: by mail-qk1-x743.google.com with SMTP id z12so195932qkg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 10:03:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YVEntATD8Di4X+bfE0q+dQjUPZodyWiwMumJsgAjImQ=;
 b=RAltTZstLeabLiJ0d66x7j4b8d0dFG+sPOHfpbO/cFKDi0l5MP5SaBmzQZcj23Dj9O
 F/bYYNBZZSSfyS9/dujI6RC7S6GQGiGhjfoRC4Je5Ph5T17ppPj/nNg6eK7g8v4ebWzu
 Qxmk3XbPh4QJMBWSZz4NrK//VIcI+eMAy0MaVJAPx5AhdQtsNg6OJfWlFI3uTppHsXSP
 NLDKJ/17oMjJmVhx6/pQNGEX+CmviRc1utdWSmUNrTHklbQUwh86mk+awHvAFbaKoddd
 0oAlTI+2vm+ko8Vd1wYitYFGuU7IYpDc+5ksP1iJZ4Sf+eRw2yMQhLqeo1YoqRFOoTVh
 Z2sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YVEntATD8Di4X+bfE0q+dQjUPZodyWiwMumJsgAjImQ=;
 b=LHzaxfQ6P87mTmf5GsdXU0WbrPscQHdupdQblDfY5i1sMyKitUk1zMcwhM/GRPa+UF
 IYz2AmHaNT1u/Ba0FW7AwHHWZXLlZkfvNyZsf2pIECyxXc7rH1OUjk0vpOam5nD2UVmA
 WgLdIGUPzeJDB6KeA8Cbr6/D5cq8rGc6Z/IRkyXfqWVQwRP3xbulXEWtQsiZpoNsAgtS
 7NRKKlVK8fc9jSVgZhrPz3Fkg9wCnYXwy8TTmcn/DlNOBSElh872hbj3MhgSf5MUejQr
 zrgIZdU1VG9fgK9mZCt8V8rCp1+eypLTwnJs37zTgigQYbDeHIEf6cRAWYNq1qlqYUNm
 BCSQ==
X-Gm-Message-State: APjAAAWZ3wj67IdpYbhzNTVupNVcm/diypPXphNsqJjd2ruztqu9yhV4
 HcYAezmdYimT7EkM4DtSD63mEQ==
X-Google-Smtp-Source: APXvYqy6UDThfoJk2c6gSaNxuGupf3hgdusGohKCaZ7APtBt0Z8E4pxTDMcVw55YbgzfmGfI1mrhOg==
X-Received: by 2002:a37:4e53:: with SMTP id c80mr533140qkb.58.1582826627303;
 Thu, 27 Feb 2020 10:03:47 -0800 (PST)
Received: from ziepe.ca
 (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.57.212])
 by smtp.gmail.com with ESMTPSA id e64sm3551886qtd.45.2020.02.27.10.03.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Feb 2020 10:03:46 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1j7NVi-0008Pb-Fb; Thu, 27 Feb 2020 14:03:46 -0400
Date: Thu, 27 Feb 2020 14:03:46 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH v3 0/7] Allow setting caching mode in arch_add_memory()
 for P2PDMA
Message-ID: <20200227180346.GM31668@ziepe.ca>
References: <20200221182503.28317-1-logang@deltatee.com>
 <20200227171704.GK31668@ziepe.ca>
 <e8781f85-3fc7-b9ce-c751-606803cbdc77@deltatee.com>
 <20200227174311.GL31668@ziepe.ca>
 <CAPcyv4iek=EmNk9JgXq=-HcZjd9Kz4m2+qXMhnDWMshFKFZPXQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPcyv4iek=EmNk9JgXq=-HcZjd9Kz4m2+qXMhnDWMshFKFZPXQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_100348_854114_E8B75E45 
X-CRM114-Status: GOOD (  22.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-ia64@vger.kernel.org, Linux-sh <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, platform-driver-x86@vger.kernel.org,
 Linux MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-s390 <linux-s390@vger.kernel.org>,
 David Hildenbrand <david@redhat.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Michal Hocko <mhocko@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Eric Badger <ebadger@gigaio.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 09:55:04AM -0800, Dan Williams wrote:
> On Thu, Feb 27, 2020 at 9:43 AM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> >
> > On Thu, Feb 27, 2020 at 10:21:50AM -0700, Logan Gunthorpe wrote:
> > >
> > >
> > > On 2020-02-27 10:17 a.m., Jason Gunthorpe wrote:
> > > >> Instead of this, this series proposes a change to arch_add_memory()
> > > >> to take the pgprot required by the mapping which allows us to
> > > >> explicitly set pagetable entries for P2PDMA memory to WC.
> > > >
> > > > Is there a particular reason why WC was selected here? I thought for
> > > > the p2pdma cases there was no kernel user that touched the memory?
> > >
> > > Yes, that's correct. I choose WC here because the existing users are
> > > registering memory blocks without side effects which fit the WC
> > > semantics well.
> >
> > Hm, AFAIK WC memory is not compatible with the spinlocks/mutexs/etc in
> > Linux, so while it is true the memory has no side effects, there would
> > be surprising concurrency risks if anything in the kernel tried to
> > write to it.
> >
> > Not compatible means the locks don't contain stores to WC memory the
> > way you would expect. AFAIK on many CPUs extra barriers are required
> > to keep WC stores ordered, the same way ARM already has extra barriers
> > to keep UC stores ordered with locking..
> >
> > The spinlocks are defined to contain UC stores though.
> 
> How are spinlocks and mutexes getting into p2pdma ranges in the first
> instance? Even with UC, the system has bigger problems if it's trying
> to send bus locks targeting PCI, see the flurry of activity of trying
> to trigger faults on split locks [1].

This is not what I was trying to explain.

Consider

 static spinlock lock; // CPU DRAM
 static idx = 0;
 u64 *wc_memory = [..];

 spin_lock(&lock);
 wc_memory[0] = idx++;
 spin_unlock(&lock);

You'd expect that the PCI device will observe stores where idx is
strictly increasing, but this is not guarenteed. idx may decrease, idx
may skip. It just won't duplicate.

Or perhaps

 wc_memory[0] = foo;
 writel(doorbell)

foo is not guarenteed observable by the device before doorbell reaches
the device.

All of these are things that do not happen with UC or NC memory, and
are surprising violations of our programming model.

Generic kernel code should never touch WC memory unless the code is
specifically designed to handle it.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
