Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E46173B1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:14:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bkdj0vsswpTpuD8cauuihjDmRGTS48hgX8pFVyZxoQM=; b=HijvN6f74yJGs8
	WVVmeIWzddR/MNNBsHftvagqCFs5FGYzKKPfrZR1lnFv0qm8ai01G9dtsQFFbN+8gWfpy6IJhg8Rr
	K6wEaDVKHalNvUDoxd2yihCe79LaifJn4SbGYn87ZcJiP44pCYyADwYutWCq7pc01Wz5sqPknRDoo
	hgWfmqh2NWJWBYhjyRzXjQdgSGU3Gy/UcSmfAOulGfebfiG4lVCk733WSgVq3N7EQvdfiKTUqEgAK
	WVqM4JZZhKQtju7MCDALeq4VU0DDDfsfuqMBZs0Ab6NdyyVZcwF9Kc7SuZR1RB6krxVIqDcc04QnT
	7qltGJc1yATWGe62/SGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hKr-0000QY-Eu; Fri, 28 Feb 2020 15:13:53 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hKg-0000Pk-06
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 15:13:43 +0000
Received: by mail-qv1-xf43.google.com with SMTP id ci20so1484083qvb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 07:13:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Wq8nlNbsnwZz9fji3Cl/zgmv4zDoBKk4NoZF3W2wkDQ=;
 b=Ljgpp5xGPFtER1NGPwiitpNKYovODnCioFFOFLTyn2Ck/JR8HVTOx6j2p+g2nfn+c7
 ZZ4POl/CTaYoux0tyCmDMX6rtKyDdXnlMSGlJzLw9GbBTTzDfneWvjGmL5R0O0CGmHup
 2kp9E5S8Nxk8bHWYOZucZY6zoQaHVHi1zuuqGFV82FSHWkJZ4RoRvoylWAS0Wx4bc8K9
 VTIK4BTuE9ZYLVtjSIRYLN6ZaAkL0DcdWHFg4QbbWrjltc2/+KxfoeQyempXAsF7sI0A
 w3wliYOLVxCpNm799lBmqygk+nsWvEVxFVFJ7Lj2RQ/PkFIeGuOpHh4CgFZttaO2QJlZ
 F0/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Wq8nlNbsnwZz9fji3Cl/zgmv4zDoBKk4NoZF3W2wkDQ=;
 b=IRGbSKAnetWZBYSjklfFjvyHqut/zQnU40OXsH+z73E0SLN4OLtdqod+vy3e0Mhp12
 z5ixadYFv9AjRLhB66048NFemKJ/foAGZQ1esbwEstR3tE2pMh4RWhJWbOLqinvt5BWK
 xysIh0TRxI9RE22K5QJgAW52XcMM0kFFtHZH+Q7RfkBw/DVpev1CPFV/JMn+qeVlWLQ8
 BZEmQB77+6qq4AOPv/AewV0rhkARnyPk7FHnJZye4kYd0keEtWOFgUL/mHsrLjWR2FLa
 0k3Un05lqR7bP6N6EHDF0gWhpVWGiJz2k84KyGih65XkBEAGZbNpUu3vBfKF8iDf7vSc
 AZ9w==
X-Gm-Message-State: APjAAAV2Q9NKmWPTcFKVd2oFdxelAkJZKW39JjFWSlfgzBc9XmulKMZ8
 USP9YmzYWfOw11RzNZL3dZJmVQ==
X-Google-Smtp-Source: APXvYqzNk6wZcWW+lmBBUW/lZq2ZIkoXwN/aWaAwf7XC2b5DqYukekLVZ6CR2bhdZGkTfI1iTFM0Cw==
X-Received: by 2002:a05:6214:a62:: with SMTP id
 ef2mr3484481qvb.109.1582902820845; 
 Fri, 28 Feb 2020 07:13:40 -0800 (PST)
Received: from ziepe.ca
 (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.57.212])
 by smtp.gmail.com with ESMTPSA id a128sm5296832qkc.44.2020.02.28.07.13.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 Feb 2020 07:13:40 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1j7hKe-0005qo-0Q; Fri, 28 Feb 2020 11:13:40 -0400
Date: Fri, 28 Feb 2020 11:13:40 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200228151339.GS31668@ziepe.ca>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-2-jean-philippe@linaro.org>
 <20200224190056.GT31668@ziepe.ca> <20200225092439.GB375953@myrica>
 <20200225140814.GW31668@ziepe.ca> <20200228143935.GA2156@myrica>
 <20200228144844.GQ31668@ziepe.ca> <20200228150427.GF2156@myrica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228150427.GF2156@myrica>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_071342_037944_AB0C0240 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Fri, Feb 28, 2020 at 04:04:27PM +0100, Jean-Philippe Brucker wrote:
> On Fri, Feb 28, 2020 at 10:48:44AM -0400, Jason Gunthorpe wrote:
> > On Fri, Feb 28, 2020 at 03:39:35PM +0100, Jean-Philippe Brucker wrote:
> > > > > +	list_for_each_entry_rcu(bond, &io_mm->devices, mm_head) {
> > > > > +		/*
> > > > > +		 * To ensure that we observe the initialization of io_mm fields
> > > > > +		 * by io_mm_finalize() before the registration of this bond to
> > > > > +		 * the list by io_mm_attach(), introduce an address dependency
> > > > > +		 * between bond and io_mm. It pairs with the smp_store_release()
> > > > > +		 * from list_add_rcu().
> > > > > +		 */
> > > > > +		io_mm = rcu_dereference(bond->io_mm);
> > > > 
> > > > A rcu_dereference isn't need here, just a normal derference is fine.
> > > 
> > > bond->io_mm is annotated with __rcu (for iommu_sva_get_pasid_generic(),
> > > which does bond->io_mm under rcu_read_lock())
> > 
> > I'm surprised the bond->io_mm can change over the lifetime of the
> > bond memory..
> 
> The normal lifetime of the bond is between device driver calls to bind()
> and unbind(). If the mm exits early, though, we clear bond->io_mm. The
> bond is then stale but can only be freed when the device driver releases
> it with unbind().

I usually advocate for simple use of these APIs. The mm_notifier_get()
should happen in bind() and the matching put should happen in the
call_rcu callbcak that does the kfree. Then you can never get a stale
pointer. Don't worry about exit_mmap().

release() is an unusual callback and I see alot of places using it
wrong. The purpose of release is to invalidate_all, that is it.

Also, confusingly release may be called multiple times in some
situations, so it shouldn't disturb anything that might impact a 2nd
call.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
