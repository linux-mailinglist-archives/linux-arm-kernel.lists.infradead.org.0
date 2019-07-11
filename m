Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DDA65EC7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 19:39:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1hztdDgb4hXFtga4kJ7rLW7bcl0t6007042n3LRyWg=; b=m9NNvvp1jORzUB
	iH3+vXm8bFr9d7bQdhQ7MuKiOkQM5v6KvImRJXNoS3AaI56I8ksN4hQ8IK3ZHSDz7dBqq9VDpH0sL
	i6Ya6/fFFxlQGZyESX/QIbiesdZL+5Tk0IwKNG99mRJqE29Xo2Xo3PiM+ToFlvk0yIFn6n9EkHBTU
	MC1onvXCaY6KQmDAFogSaYom+yy5Am13c/8y2Ye1fLZRSp72A5/9FFzeSO3dNDDPpiMc+o1CcusDt
	8Fh50Dd+MJy0Iyf/UaZXT0r9zs8U6elCOrSTM9w19CmpfgsO/G+E8h5weNVF4lPDnL9gC+pNSNUfI
	9SMEZsKvwJCJK0UtqNlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hld2t-0001a3-Je; Thu, 11 Jul 2019 17:39:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hld2f-0001ZE-0E
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 17:39:38 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3926F21019
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 17:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562866776;
 bh=hugYgSrexBh5gjgXuDomklK72XYyZ8cT4nX0Qebg6ko=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=wwR+A8NwWuDqr0JLLmsZL69uAwnfAQoNHYU4skeudiiubVvVaXt61l0BABrE0BkyF
 IHLHlJE1xdlF3ksKrp6jKvf3xezGxxoRLC5HsVKsujIL735fBzpihcLQj2knMAy2Tz
 QbxGn73Unfa4hIzIhENhFalum4Oss4FnkNoSJ58w=
Received: by mail-qt1-f170.google.com with SMTP id x22so270599qtp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 10:39:36 -0700 (PDT)
X-Gm-Message-State: APjAAAWOKkTpIItkmFLjow9emqaK6CcMJaKM2XmoiE1pXYpqmtMYqQrR
 SWzMhQh9FXrRypIaM2yO3tMrk/cnxwhYHLbIHw==
X-Google-Smtp-Source: APXvYqyT2ZIwbJfQnc73mMGcKaDkblCm8BU7qO69rHW7ICOYosjRSUIAZS+oSsH0oZmtAhPdnjtyfqtcO0OJGH5XABE=
X-Received: by 2002:ac8:36b9:: with SMTP id a54mr2812702qtc.300.1562866775522; 
 Thu, 11 Jul 2019 10:39:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190710223119.8151-1-robh@kernel.org>
 <20190711102303.pnvy4zlitusjjku7@willie-the-truck>
In-Reply-To: <20190711102303.pnvy4zlitusjjku7@willie-the-truck>
From: Rob Herring <robh@kernel.org>
Date: Thu, 11 Jul 2019 11:39:24 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ6W-fFqNr9m1zQOdERjZ5v9EpVLTVyChevHKYFU4j4Jg@mail.gmail.com>
Message-ID: <CAL_JsqJ6W-fFqNr9m1zQOdERjZ5v9EpVLTVyChevHKYFU4j4Jg@mail.gmail.com>
Subject: Re: [RFC PATCH] iommu: io-pgtable: Drop WARN for empty PTEs on unmap
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_103937_070406_943A76AF 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Joerg Roedel <joro@8bytes.org>, Robin Murphy <robin.murphy@arm.com>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 4:23 AM Will Deacon <will@kernel.org> wrote:
>
> On Wed, Jul 10, 2019 at 04:31:19PM -0600, Rob Herring wrote:
> > If a region has been mapped sparsely (such as on page faults), the user
> > has to keep track of what was mapped or not in order to avoid warnings
> > when unmapping the entire region. Remove the WARN on empty PTEs to allow
> > unmapping sparsely mapped regions.
> >
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Robin Murphy <robin.murphy@arm.com>
> > Cc: Joerg Roedel <joro@8bytes.org>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: iommu@lists.linux-foundation.org
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> > This is needed for large (up to 1GB AIUI) scratch buffers on panfrost
> > which are mapped on demand on GPU page faults and can be unmapped on
> > memory pressure. Alternatively, I'd need to have a bitmap of mapped
> > pages to track what is mapped or not. Dropping the WARN seems like a
> > much simpler solution.
>
> I suppose an alternative would be to do an iova_to_phys() before you do the
> unmap(). Would that be acceptable?

Yeah, that should work. Not that efficient, but I don't think
releasing the memory is hot path.

Thanks,
Rob

> The WARN_ON() indicates invalid usage by
> the IOMMU API, so it would be a shame to lose it entirely and I'm hesitant
> to continue adding quirks at the rate we're currently doing so!
>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
