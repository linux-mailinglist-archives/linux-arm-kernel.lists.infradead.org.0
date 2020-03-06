Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 243DD17C4AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 18:43:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ihMla5DagSnnSk92AgsOt5UWwxAsTWfihpzL6JT0FMc=; b=VHtkGoCZm9BbrN
	orfMcwbjigDCtkUUg9zm9Prfmn4VS8E8FVJ7tAjqhvQKFU0RAVO5cf/47epMgpmCgOaH3MqT0A0jW
	ry54uTVifx+0dlHjRDJxriFvfaMHcttq0EYEcnK3kouX0GVuRC87uAf03nx0FWWJsXwagSc05yrkK
	OXuQbYgStM11uKJy38raK8+sQPvUkc7lL1S+8IVDwYd7vk28jJqMsDGpzcLw3WaAhhh/9ZeGzTJYu
	aXKXU2Y32Q5WGg8wNtDipdAJboNrzS95JDbDLfuHemfgtzhAWzFshPMOJSGxEXUkveS1I3fHpisHi
	AexL+zPQT/oxQn76zwYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAGzv-0007Yi-Vu; Fri, 06 Mar 2020 17:42:56 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAGzn-0007Xq-50
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 17:42:48 +0000
Received: by mail-qk1-x744.google.com with SMTP id e16so3078956qkl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 09:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PxT02ryeWyx7p1SBqN6kTMwWdglwMPqc7wMiUtKckm8=;
 b=fceAxzqKtPxKpBdyBHvIYC/k/jeNtyEFzrsgn7TJvkxLs22sR9WiBM6453QdPTwvJ2
 93UYmt1Orc9z4jHue6YWkq4c44RthUiPb/T9rH7qfZN2eZY2Xq3DFtWCpEtWlaAber1f
 HTsaHpVQnQu0i950k23k9hzTJEjKD+BN7/Y/tDId6MCXM2Jq/oAfQ5infM5paw03g9Vz
 fDBMIkB8bceHTgGX1/Vpyp9g9uOcrHu05i9iMph/9UxfrLbjUIDtwqwEFe+QO0y6kUt5
 zKGrPWs4/zh+Z5lFrLMK9wdgK1uWKJWRJ5Z5s7FtAiUywEXkXWhLK89r07oF90jjf8ZV
 UsTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PxT02ryeWyx7p1SBqN6kTMwWdglwMPqc7wMiUtKckm8=;
 b=XAdBfxB2fg6vpZf5wRudocLDra2wKnU7QVFC/HY/HOeEVdzCv9pb6XOeo6zTr/xaK8
 WKWRImH8M2BTrHudGLb350jrE8JHRLWX852A16bhUDiE2pqA/hEk9ua4Mb9toDIIwppv
 Ob7omWtM9ttd6ZDR3OI+tb64UBJOcbdJjZr68kbCXQESDg/5rVh7OWnHJ9N34Fg8Dpdf
 SrsfqFV6Sh+ZQ51j7YLStOL7yroWtewuFwjw0/6PgIAJ6X1zTUSTuaxcqXcXrCI56HPI
 cohyZ8Ch+KBCJJm5SrGGfjvRIKwlAl1Y0VDm6n4KpFD8MHzE5j3r+o+muu3A+PU4ItAW
 MKbw==
X-Gm-Message-State: ANhLgQ3ZP8U2CLpxLpiLLlLfivV90lrqvsY6SEMdroC0t94JkMXU6tLg
 E5Yt50+87b5Ru1piyD0WWyuxGg==
X-Google-Smtp-Source: ADFU+vsWbhZAJApLkHJjK1rpJphwwDR2QESHx2duAJgFhBpEHJLxHbOgXJEEbadil5uHQfcoM+kVpg==
X-Received: by 2002:a37:a44a:: with SMTP id n71mr2362594qke.210.1583516560952; 
 Fri, 06 Mar 2020 09:42:40 -0800 (PST)
Received: from ziepe.ca
 (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.57.212])
 by smtp.gmail.com with ESMTPSA id g15sm14342523qtq.71.2020.03.06.09.42.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 06 Mar 2020 09:42:40 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1jAGzf-00060f-N3; Fri, 06 Mar 2020 13:42:39 -0400
Date: Fri, 6 Mar 2020 13:42:39 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200306174239.GM31668@ziepe.ca>
References: <20200225140814.GW31668@ziepe.ca> <20200228143935.GA2156@myrica>
 <20200228144844.GQ31668@ziepe.ca> <20200228150427.GF2156@myrica>
 <20200228151339.GS31668@ziepe.ca> <20200306095614.GA50020@myrica>
 <20200306130919.GJ31668@ziepe.ca> <20200306143556.GA99609@myrica>
 <20200306145245.GK31668@ziepe.ca> <20200306161519.GB99609@myrica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306161519.GB99609@myrica>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_094247_194798_E8B74762 
X-CRM114-Status: GOOD (  25.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, Mar 06, 2020 at 05:15:19PM +0100, Jean-Philippe Brucker wrote:
> On Fri, Mar 06, 2020 at 10:52:45AM -0400, Jason Gunthorpe wrote:
> > On Fri, Mar 06, 2020 at 03:35:56PM +0100, Jean-Philippe Brucker wrote:
> > > On Fri, Mar 06, 2020 at 09:09:19AM -0400, Jason Gunthorpe wrote:
> > > > On Fri, Mar 06, 2020 at 10:56:14AM +0100, Jean-Philippe Brucker wrote:
> > > > > I tried to keep it simple like that: normally mmu_notifier_get() is called
> > > > > in bind(), and mmu_notifier_put() is called in unbind(). 
> > > > > 
> > > > > Multiple device drivers may call bind() with the same mm. Each bind()
> > > > > calls mmu_notifier_get(), obtains the same io_mm, and returns a new bond
> > > > > (a device<->mm link). Each bond is freed by calling unbind(), which calls
> > > > > mmu_notifier_put().
> > > > > 
> > > > > That's the most common case. Now if the process is killed and the mm
> > > > > disappears, we do need to avoid use-after-free caused by DMA of the
> > > > > mappings and the page tables. 
> > > > 
> > > > This is why release must do invalidate all - but it doesn't need to do
> > > > any more - as no SPTE can be established without a mmget() - and
> > > > mmget() is no longer possible past release.
> > > 
> > > In our case we don't have SPTEs, the whole pgd is shared between MMU and
> > > IOMMU (isolated using PASID tables).
> > 
> > Okay, but this just means that 'invalidate all' also requires
> > switching the PASID to use some pgd that is permanently 'all fail'.
> > 
> > > At this point no one told the device to stop working on this queue,
> > > it may still be doing DMA on this address space.
> > 
> > Sure, but there are lots of cases where a defective user space can
> > cause pages under active DMA to disappear, like munmap for
> > instance. Process exit is really no different, the PASID should take
> > errors and the device & driver should do whatever error flow it has.
> 
> We do have the possibility to shut things down in order, so to me this
> feels like a band-aid. 

->release() is called by exit_mmap which is called by mmput. There are
over a 100 callsites to mmput() and I'm not totally sure what the
rules are for release(). We've run into problems before with things
like this.

IMHO, due to this, it is best for release to be simple and have
conservative requirements on context like all the other notifier
callbacks. It is is not a good place to put complex HW fencing driver
code.

In particular that link you referenced is suggesting the driver tear
down could take minutes - IMHO it is not OK to block mmput() for
minutes.

> The idea has come up before though [1], and I'm not strongly opposed
> to this model, but I'm still not convinced it's necessary. It does
> add more complexity to IOMMU drivers, to avoid printing out the
> errors that we wouldn't otherwise see, whereas device drivers need
> in any case to implement the logic that forces stop DMA.

Errors should not be printed to the kernel log for PASID cases
anyhow. PASID will be used by unpriv user, and unpriv user should not
be able to trigger kernel prints at will, eg by doing dma to nmap VA
or whatever. 

Process exit is just another case of this, and should not be treated
specially.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
