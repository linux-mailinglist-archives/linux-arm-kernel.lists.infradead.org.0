Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5479D13664
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 01:53:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mdmct7RU2xzWZ1mfM+AdFpDjbggoW1BdMqDVvQSOWs4=; b=pHYMfNmnrVykVX
	S7jh0vDZ8etuEh2TwsyNfSESXh4zTi6DkrhYX+B/B/IierM4c72j+4kYCknnCE1LtUSSrgyzmiOya
	TeOLd/UHG8meQ4NhyxZLCpKDIzSF/T38hZikpyXVOKQ5PoPfhxitzYrbwUHByJrutF4/Dtz+wAWkm
	IxhVaUAJU6bv3pzTISj94DQ6NwO7B9C8kI8Yjo4NHQr4T5t0Zqn6UV36zQ7x+OyuJT6OlQcM16j/R
	jwRNyD8EHrg79XhisfhbVQ4CMII6XYmfs1DNvUOxdD1aD6VYisDhbKQhUJfCP8PYmovhf3r3lvS3q
	yiOuHvxg1mXuZlN98u8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMhzH-0007nN-B1; Fri, 03 May 2019 23:53:07 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMhz9-0007mN-RD
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 23:53:01 +0000
Received: by mail-qt1-x842.google.com with SMTP id c35so8731507qtk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 16:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Y9uds37g7f4813/ZqlKEDnGn948IiuDvboVC7bPadlI=;
 b=N9BE3PqMA0nL0NvpOU63kepSs17NWxuaQGMx7Tupv6wpFQNuRqB6tenh0G/BWpJ1PP
 HEd7ZRYuplIPMrp/i3Cbd8pyLv65lE/Kcn6MATxFD0LAM764ONzAI9CGs51aZh5QkF2i
 IUvMmfzMxlcfJSqngQx2TZEML8ZbCAHWTFmHtqfhFJeQ8JVqaTAgfiqfKRaZhlNd6jZX
 Xiy8j3oAf41/Kg4WEp6FuwvI9DlafHuBxOiRzLclafXL2AMIXhBmFJmJrK5KHtm2pgmi
 Pkc8sfsyJqh6zaTpfCu0T9ewb4rk6AtpL8uJLJA4xZTB0LSOR9blqcrj5s/eIqJuMPaw
 q8oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Y9uds37g7f4813/ZqlKEDnGn948IiuDvboVC7bPadlI=;
 b=MJYGGZ1ek9TY6PJHPsyxq3Y+5GytF/D3XqdkzwaHA6kWiZTJYLE4A9WcwX42UWxh8u
 xUp+39Mu8BwgmB+fpmhMCvRI7gs6zl7NXs7lwxcBXRxu1WEZPnxMghi+q7IeOZ3kzA24
 RdEBbi/1rQzhj46Tx9lFAPIVUneE/ANAG/mbySfkOX9hHBvORQ+27nQLaxPR3MBKxab4
 w77u0uyJDz/IXwo+ceJBrP3uIxhY8LQwcDSiR4tLCpEZcc4aXs+q5EvwWztVVtSNTbyn
 aqkkKTzt2Gvmee5tPZSP4BUhr20OqvRAF4TbyR9BvsjgI+pH6PoVpVRZ1v+C4c1S6tg4
 jzGQ==
X-Gm-Message-State: APjAAAUe00EDlAQR/kxe+HtHW19dzjAqKfi8Cm3iQjQNHBeyyk5B6otv
 vduLKLZTLEdYPFcKFJMCndmpHQ==
X-Google-Smtp-Source: APXvYqziKdH2wZvx3iC97K6c8A4weeprYaQkrXpo4FxMM1oMFrPSRq/nQcOHMobAnKPDvieS6kD22g==
X-Received: by 2002:ac8:8ad:: with SMTP id v42mr10692638qth.337.1556927577786; 
 Fri, 03 May 2019 16:52:57 -0700 (PDT)
Received: from ziepe.ca ([65.119.211.164])
 by smtp.gmail.com with ESMTPSA id r1sm1636491qtp.77.2019.05.03.16.52.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 16:52:56 -0700 (PDT)
Received: from jgg by jggl.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hMhz6-0001lg-BL; Fri, 03 May 2019 20:52:56 -0300
Date: Fri, 3 May 2019 20:52:56 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v13 16/20] IB/mlx4, arm64: untag user pointers in
 mlx4_get_umem_mr
Message-ID: <20190503235256.GB6660@ziepe.ca>
References: <cover.1553093420.git.andreyknvl@google.com>
 <1e2824fd77e8eeb351c6c6246f384d0d89fd2d58.1553093421.git.andreyknvl@google.com>
 <20190429180915.GZ6705@mtr-leonro.mtl.com>
 <20190430111625.GD29799@arrakis.emea.arm.com>
 <20190502184442.GA31165@ziepe.ca>
 <20190503162846.GI55449@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503162846.GI55449@arrakis.emea.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_165259_888732_B0A1371A 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Eric Dumazet <edumazet@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Dmitry Vyukov <dvyukov@google.com>,
 linux-mm@kvack.org, netdev@vger.kernel.org,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 "David S. Miller" <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 05:28:46PM +0100, Catalin Marinas wrote:
> Thanks Jason and Leon for the information.
> 
> On Thu, May 02, 2019 at 03:44:42PM -0300, Jason Gunthorpe wrote:
> > On Tue, Apr 30, 2019 at 12:16:25PM +0100, Catalin Marinas wrote:
> > > > Interesting, the followup question is why mlx4 is only one driver in IB which
> > > > needs such code in umem_mr. I'll take a look on it.
> > > 
> > > I don't know. Just using the light heuristics of find_vma() shows some
> > > other places. For example, ib_umem_odp_get() gets the umem->address via
> > > ib_umem_start(). This was previously set in ib_umem_get() as called from
> > > mlx4_get_umem_mr(). Should the above patch have just untagged "start" on
> > > entry?
> > 
> > I have a feeling that there needs to be something for this in the odp
> > code..
> > 
> > Presumably mmu notifiers and what not also use untagged pointers? Most
> > likely then the umem should also be storing untagged pointers.
> 
> Yes.
> 
> > This probably becomes problematic because we do want the tag in cases
> > talking about the base VA of the MR..
> 
> It depends on whether the tag is relevant to the kernel or not. The only
> useful case so far is for the kernel performing copy_form_user() etc.
> accesses so they'd get checked in the presence of hardware memory
> tagging (MTE; but it's not mandatory, a 0 tag would do as well).
> 
> If we talk about a memory range where the content is relatively opaque
> (or irrelevant) to the kernel code, we don't really need the tag. I'm
> not familiar to RDMA but I presume it would be a device accessing such
> MR but not through the user VA directly. 

RDMA exposes the user VA directly (the IOVA) as part of the wire
protocol, we must preserve the tag in these cases as that is what the
userspace is using for the pointer.

So the ODP stuff will definately need some adjusting when it interacts
with the mmu notifiers and get user pages.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
