Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B3D28FB8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 05:50:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HYxD2EYFdJ/a3TqpOLClJc96UKqu8qJBN5FEdzMJEZ0=; b=CUqh7WahaJ17sZ
	/Oo/8e9xPiCOqANhvSzpOBryT7vzZ8grydDSSHlsNOyM0yznijl5zIYEGL1bC/kv/nd5AanJyIRmX
	mYi8NhqTxTVY+dObO5pNguMw5aqLCRKBpzhawhTRntjS61bM+mI3jQ1P6lhhu5PxUl+wmcqGSicZN
	vuQr3cci5xUMTcbU1UBXj7DIsJzD+Ra4iCgdZ9hXbcCSAm41uhBXL+EEFApSuKm+AgmD4h2uJkf+C
	HZu3TU9jDPZN5zjoRssKcfaweK9pXF0+HZSIHIZZSkcKdrcnemNE0Fd5sP20BYfLMVCZ3dkD99af1
	AuWQimee25HJ7ZxUWtlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU1Dy-0004Sf-Hs; Fri, 24 May 2019 03:50:30 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU1Dr-0004Rv-GZ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 03:50:24 +0000
Received: by mail-pf1-x441.google.com with SMTP id a23so4462463pff.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 20:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Meys5AbfHefJr2MxUEnx8+OGhp7ATRQ7K3gNKd4wdrU=;
 b=I13Gm5o+tN+033OCvQGYRdseWRYb9y90+wOF9EOUaj5QRKDbsWYikvdOqa1LdVYQEF
 2ZhjMALlX6tUrs4zDwq1lDEx7N9iOWHW8f55MRV5cptdY9kFlQIxNj/MkE6ngkkcj94E
 alV39V4sXHGmtUolQpKWYkEkBxkp8DzTJ4SGfD4WzrUJNVCoixeDMhYE2dhMyilMw2ag
 TV4Kvy3VTjC6YN5gvxd017GB+M3IZxKYs2+45rwxyjsVyd59inqpXo0xdPcb6v22bT/I
 Iz9pS2laGebLE5B2y8xaoswYxzXi0rdnnGrcsA/IhWJ1i6IxND6Hh/AQ4WdgnGhUunqw
 FuYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Meys5AbfHefJr2MxUEnx8+OGhp7ATRQ7K3gNKd4wdrU=;
 b=hvXcXDmUHmYz4T7DS4FXOvhMnlYYupOVl0gGuXtllvUgKm8lUyaaNSpmX67RGdM6Kr
 Lk1LSNY/J+rZcZ5FbFz4zSDH1Qy6uPtKWysmBAHh9ksTkZf8ziVMdnPLhRntEWRif0d+
 /79bEy0CfC/AOjp88KGFGkC/rXfkm79hK6UrydufDT81CjSJdR88PUBlsOTfvv5WpIDA
 rpjJhFB6ThV5k3wTefG2Z3JYFv0ScN9gf58KgB006DSOBCve5H60wKgXYDOZSYG+VKtB
 QNF6cFw2gMUsPoknS/rH32qBhzDGTD5uf86IkVJoG7f/1Vqrrat0HGNCEwN+LmLlotDi
 olcg==
X-Gm-Message-State: APjAAAXuKsSDX0KVOLJiHFrsod0pMG4ci2y/vCo2jk6/RfnwHMmT0x+g
 5gA1d2IbmVaLYw1lJwK9s4I=
X-Google-Smtp-Source: APXvYqwM0tDEcOnafEzffzv+1HVI6tauA6VBDlswnPyYwQPKUIu5No+afsn7pJoH7g4zS0Uyp/cWMA==
X-Received: by 2002:a63:2a06:: with SMTP id q6mr16134258pgq.290.1558669821822; 
 Thu, 23 May 2019 20:50:21 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id h11sm903497pfn.170.2019.05.23.20.50.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 20:50:21 -0700 (PDT)
Date: Thu, 23 May 2019 20:49:04 -0700
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: dann frazier <dann.frazier@canonical.com>
Subject: Re: [PATCH v2 1/2] dma-contiguous: Abstract dma_{alloc,
 free}_contiguous()
Message-ID: <20190524034904.GA30034@Asurada-Nvidia.nvidia.com>
References: <20190506223334.1834-1-nicoleotsuka@gmail.com>
 <20190506223334.1834-2-nicoleotsuka@gmail.com>
 <CALdTtnurdNe4+oJjSJfWw1ONf8-xvJ8KhonQkJNj+4LDZT7jAQ@mail.gmail.com>
 <CALdTtnuwRKkna_y5_5BdEYWNRbOQnLvtfz1PY-d4r78tj5hgVw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALdTtnuwRKkna_y5_5BdEYWNRbOQnLvtfz1PY-d4r78tj5hgVw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_205023_553720_46398F65 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: chris@zankel.net, keescook@chromium.org, linux-xtensa@linux-xtensa.org,
 tony@atomide.com, Catalin Marinas <catalin.marinas@arm.com>, joro@8bytes.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, jcmvbkbc@gmail.com,
 iommu@lists.linux-foundation.org, dwmw2@infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 wsa+renesas@sang-engineering.com, sfr@canb.auug.org.au,
 akpm@linux-foundation.org, treding@nvidia.com,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 iamjoonsoo.kim@lge.com, Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 08:59:30PM -0600, dann frazier wrote:
> > > diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
> > > index b2a87905846d..21f39a6cb04f 100644
> > > --- a/kernel/dma/contiguous.c
> > > +++ b/kernel/dma/contiguous.c
> > > @@ -214,6 +214,54 @@ bool dma_release_from_contiguous(struct device *dev, struct page *pages,
> > >         return cma_release(dev_get_cma_area(dev), pages, count);
> > >  }
> >
> > This breaks the build for me if CONFIG_DMA_CMA=n:
> >
> >   LD [M]  fs/9p/9p.o
> > ld: fs/9p/vfs_inode.o: in function `dma_alloc_contiguous':
> > vfs_inode.c:(.text+0xa60): multiple definition of
> > `dma_alloc_contiguous'; fs/9p/vfs_super.o:vfs_super.c:(.text+0x500):
> > first defined here
> >
> > Do the following insertions need to be under an #ifdef CONFIG_DMA_CMA ?
> 
> Ah, no - the problem is actually a missing "static inline" in the
> !CONFIG_DMA_CMA version of dma_alloc_contiguous().

Yea, I saw it. Thanks for the testing and pointing it out.

Sending v3.....

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
