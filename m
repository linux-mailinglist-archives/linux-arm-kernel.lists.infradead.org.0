Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3AC173AAA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:05:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wym+ZV9Yx1nNEO8HkJkXcIvgJDKdnMn+7BPeepVQxcE=; b=DFAoVmhpaeh4Cm
	APiI4HOhhZEZNF/B+4DN7/SIQMcQLFF9kuw1QqBkmp2H+iTfvugqoSlNKzHd5zybpXHpxQD6O+2wM
	KdGEUaLUKI2MrS+A1XQg24SUGRQt38yEXU8OVeUsnS4egcm4Uho+MRKG1G9qJoTw0Blaxt9u0ghy+
	vxxCZvufFGLEqLuqR9qvjVvS7gTz/ds4nUYDy9nZe3Vj918XslvTbJHDiDaB1t81i+FOotWdZwndJ
	Z97AOatjSOduHduORdxo2pC6kPQgOOD2PfT4HNTaK0iQI/Gu+ZTmA9uiaR1eMxPZZxAP+iyWAFpaM
	0gz9ExmG950IVB2t3zdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hCk-0005QJ-AE; Fri, 28 Feb 2020 15:05:30 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hBs-0003cn-Vd
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 15:04:40 +0000
Received: by mail-wr1-x444.google.com with SMTP id r17so3295298wrj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 07:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2wX7TVsRPWlph7pT/yUYa9EScRJx6Bt/ZtuI3MJeqc0=;
 b=QmD58Jr5s6XBLi75aKomne6pIfi3eAwBW2uYAgqcgi9rYL6G2b64JBuAhhJ1f4te+t
 YMUkbgfFABgR0aUFU4JS096/XwdfBA48niRJ6aEs7tCqepHjgsV+l2E6wcg2Pjfx8yDo
 nf2skHBkoT9WNffr5CVK3OP/PqPaYbv3aLmg1bq6Ck4RCaCb9gSeMd1pwHi25t4XMDZ2
 wTbnbrTrIL7bSS1pZZd4ftBNuWdi6gB3+KHzkO3i4r62kLW9iRm0F/3xPVeufpfeXlyV
 F/ABlN3x4IYUOzxYknE1CmZaru7JzdyANO9LsTAgaHuR2Jzumx6YW0C7y8C7WKLy44Wn
 wxpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2wX7TVsRPWlph7pT/yUYa9EScRJx6Bt/ZtuI3MJeqc0=;
 b=BPz7Q+tqPrQIXlYmv1J9a+gtmHWlKAcMlcbvIqkPd3iQClNDDo2GxU1s2at3RFJ/wU
 o5+9M67lEKJHKHS6Y5c5lDN79Y8NwzYNRgP+Y++4fVN6alU7phfvtVatFjumrX38381m
 0m8mtMHNq86KPiBySgul5Bt3xristH7mvjPUv4WOlH0RU4QDVXPFKKlIpAQttlplgazL
 qPSlHFMHU6b/eJ2q3ojEHE1s5dysLo+YKuU0UvvuI9DJrGsWEThpn7RpKbwCNiKszHce
 pZ39RM7wHeTWAdKlLlz4bxhMtjLe6jBuC9T5hJ2/uqXyyoCOIogLIpjLScdDOC4kL1Od
 W8qQ==
X-Gm-Message-State: APjAAAUf7+M/0MMjInUejrpPWoigQCbH4uQOlPYiFXxZoD7MEXU/ZkO2
 Ne+zdOC3HeJxN91DvgOQW4Xb2A==
X-Google-Smtp-Source: APXvYqy8YEE7PhfU6kfB6vVMG12QSn14jY2m/pgfxhc5df3Dfge/vtzS0lAN1v8FM3HtzCFu1cbkug==
X-Received: by 2002:adf:b19d:: with SMTP id q29mr5140671wra.211.1582902275442; 
 Fri, 28 Feb 2020 07:04:35 -0800 (PST)
Received: from myrica ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id w19sm2377341wmc.22.2020.02.28.07.04.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 07:04:34 -0800 (PST)
Date: Fri, 28 Feb 2020 16:04:27 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200228150427.GF2156@myrica>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-2-jean-philippe@linaro.org>
 <20200224190056.GT31668@ziepe.ca> <20200225092439.GB375953@myrica>
 <20200225140814.GW31668@ziepe.ca> <20200228143935.GA2156@myrica>
 <20200228144844.GQ31668@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228144844.GQ31668@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_070437_078675_5DCD9367 
X-CRM114-Status: GOOD (  20.10  )
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

On Fri, Feb 28, 2020 at 10:48:44AM -0400, Jason Gunthorpe wrote:
> On Fri, Feb 28, 2020 at 03:39:35PM +0100, Jean-Philippe Brucker wrote:
> > > > +	list_for_each_entry_rcu(bond, &io_mm->devices, mm_head) {
> > > > +		/*
> > > > +		 * To ensure that we observe the initialization of io_mm fields
> > > > +		 * by io_mm_finalize() before the registration of this bond to
> > > > +		 * the list by io_mm_attach(), introduce an address dependency
> > > > +		 * between bond and io_mm. It pairs with the smp_store_release()
> > > > +		 * from list_add_rcu().
> > > > +		 */
> > > > +		io_mm = rcu_dereference(bond->io_mm);
> > > 
> > > A rcu_dereference isn't need here, just a normal derference is fine.
> > 
> > bond->io_mm is annotated with __rcu (for iommu_sva_get_pasid_generic(),
> > which does bond->io_mm under rcu_read_lock())
> 
> I'm surprised the bond->io_mm can change over the lifetime of the
> bond memory..

The normal lifetime of the bond is between device driver calls to bind()
and unbind(). If the mm exits early, though, we clear bond->io_mm. The
bond is then stale but can only be freed when the device driver releases
it with unbind().

> 
> > > > If io_mm->ctx and io_mm->ops are already valid before the
> > > > mmu notifier is published, then we don't need that stuff.
> > > 
> > > So, this trickyness with RCU is not a bad reason to introduce the priv
> > > scheme, maybe explain it in the commit message?
> > 
> > Ok, I've added this to the commit message:
> > 
> >     The IOMMU SVA module, which attaches an mm to multiple devices,
> >     exemplifies this situation. In essence it does:
> > 
> >             mmu_notifier_get()
> >               alloc_notifier()
> >                  A = kzalloc()
> >               /* MMU notifier is published */
> >             A->ctx = ctx;                           // (1)
> >             device->A = A;
> >             list_add_rcu(device, A->devices);       // (2)
> > 
> >     The invalidate notifier, which may start running before A is fully
> >     initialized at (1), does the following:
> > 
> >             io_mm_invalidate(A)
> >               list_for_each_entry_rcu(device, A->devices)
> >                 A = device->A;                      // (3)
> 
> I would drop the work around from the decription, it is enough to say
> that the line below needs to observe (1) after (2) and this is
> trivially achieved by moving (1) to before publishing the notifier so
> the core MM locking can be used.

Ok, will do

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
