Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DAB1AD163
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 22:43:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DC+20bC9wqXKNyOR+VdJjLgXxxqlWcm3iFd2eNrcJDE=; b=AVTf16JeFTSMit
	DGNnb9Pih+7qZt1zacOARUjFlMhY2xY91UDTPI2ZHkm4YdfRkgArATpcVa/XOj/MuJ+8F+QlCCDWU
	knJtnTJZ3vTuBGRxm0mbUGAgrh4oToipHzdyGercys/zVPnXf/eY5LChHA5XlBxZLIVM7W3KBCwBi
	cVhZG5lSGooHwVThDvzU3/bATpdt36V6eaODdvrdlogXoocUEY6MYQSJhJPkGIm57v4ZzCJ8li9sa
	3myAdcoEiZ3fOZx4i7tvG2NIDzE3rtRU3LWDkLEeHOu05PdKIanuY41QzFgA6wtq+ss/o2q5hbsRy
	Oc8hePr0bu1mOWnNJ2mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPBM8-00068G-4C; Thu, 16 Apr 2020 20:43:28 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPBLz-00067t-FW
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 20:43:20 +0000
Received: by mail-pf1-x441.google.com with SMTP id c138so2227854pfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 13:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=uRgyzvRokr7ai+Xbzs2rruJuXsUX0gI+b1jlIGwtZfU=;
 b=Oyt/oE4Ouu2LsqJ33+344yy9kTnzp8/CWBPr7eZxkvWVB8IZf0+J46FH47n3dNy47b
 kice3lT1TD1ImxQCmYZXk7jvpWZg6z2mlPpY+Ys0QsgGXJZASv5HCmVZZlmcrHIT3Ph1
 RKXMfEG5U32cSw2YdADUYO/EfTtD9hhgBLJykOZsHZxahfZ5hvKGj73ZVuWHyjvAGPoR
 RHWgpNuleLC3zAE0hLLzQ7w33YGWM89r44CUTwO3o99AukFCQ236ORK+lQr8hmH9KMgP
 UlVILhg/WfSY98sw4aGVs5qRfCrdXOIUD0WC5/KQPrk9NkEuUE7EvhH2UBMwt4f/4YfC
 w6PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=uRgyzvRokr7ai+Xbzs2rruJuXsUX0gI+b1jlIGwtZfU=;
 b=Kavyh0c5CslIGas25imri4PxPbfbbBRkr2gVcj9NbQDYnfW4Z0Ylz7rWYjHWqMWq6C
 JAZ6moZbe5rKkrJXH8xQxHPuQu1w1Av+yrsekRoDj4HvqCOtbBdlMZe6yD2Gjp4QsZzG
 gmg74yh382av/iEhDlXp+B1xpbAt5g//xh2lCE7VJVomUheCOaYf3G49UoMNvW6DlUFR
 WhhnRFnNdIvokSIl1+Te0PYWsGSt/iBwdt2nnrl4NzSguy8O9UURZcETlGDFbWULgVgQ
 ZkBOAcgc0CaHAiWAYiH//zhpNM88NiGMOXUtPqAfekJ3a4VHJPhty5aHPvXhnoZRyaGy
 1tLQ==
X-Gm-Message-State: AGi0PuZURV5w7+N4eV39g42KOw8+17qc9/AkQChwRufcuo0V6xmIROQ4
 cFB2OHoRQRGnZdUMXqBavNw=
X-Google-Smtp-Source: APiQypIXiJO4KCjTGpKvDHmXGV5HxR6F5ChtTIbUrCsBU11gVwLi7psgN6LJANKPucmqiSohUc35Kg==
X-Received: by 2002:a65:611a:: with SMTP id z26mr3767121pgu.341.1587069797727; 
 Thu, 16 Apr 2020 13:43:17 -0700 (PDT)
Received: from google.com ([2601:647:4001:3000::50e3])
 by smtp.gmail.com with ESMTPSA id d8sm12215742pfd.159.2020.04.16.13.43.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 13:43:16 -0700 (PDT)
Date: Thu, 16 Apr 2020 13:43:14 -0700
From: Minchan Kim <minchan@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 11/29] mm: only allow page table mappings for built-in
 zsmalloc
Message-ID: <20200416204314.GA59451@google.com>
References: <20200414131348.444715-1-hch@lst.de>
 <20200414131348.444715-12-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414131348.444715-12-hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_134319_545023_A7BB24F6 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [minchan.kim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-hyperv@vger.kernel.org, sergey.senozhatsky.work@gmail.com,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, "K. Y. Srinivasan" <kys@microsoft.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, x86@kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Laura Abbott <labbott@redhat.com>,
 Nitin Gupta <ngupta@vflare.org>, Daniel Vetter <daniel@ffwll.ch>,
 Haiyang Zhang <haiyangz@microsoft.com>, linaro-mm-sig@lists.linaro.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 03:13:30PM +0200, Christoph Hellwig wrote:
> This allows to unexport map_vm_area and unmap_kernel_range, which are
> rather deep internal and should not be available to modules, as they for
> example allow fine grained control of mapping permissions, and also
> allow splitting the setup of a vmalloc area and the actual mapping and
> thus expose vmalloc internals.
> 
> zsmalloc is typically built-in and continues to work (just like the
> percpu-vm code using a similar patter), while modular zsmalloc also
> continues to work, but must use copies.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Acked-by: Minchan Kim <minchan@kernel.org>

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
