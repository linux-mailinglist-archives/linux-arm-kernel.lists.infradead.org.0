Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D520518BB09
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:25:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7pSAO6xItRA1ZpoYHaIT2ffHIcojEO/uwcXGCQVlD5Q=; b=pB0mDEmY+EUise
	TrQO8DMLvMO19pXzA0jRaxxnUA9/VY/N7o1/LVhKsccm7qkBgHEhUVLg9qTJtM74Ygy6FyxzChcW1
	aZ+mGMHRjkU5SDHmaf+feQLajyxyPcVfHeRPRKkq6/4jwDjS3sRCEdHalJxYMep5j6V9bKLTOwpBg
	DTygEHAitXACCFvwl6CHGxhur27/GpQJWuttwQNE7eFvJjq7h4osaZOvPMKsE6fx73DF+qDJaDSti
	P5FXoLYbeu0U+5vRhpuE2J4kEd/Au4N+Yxx4Q/T4incXiA/er+dg3rDa8dLFKFAcxFr84m2uLQ0nA
	TqpB8NM1xElSH1+O4FXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEx2t-0002M0-TU; Thu, 19 Mar 2020 15:25:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEx2c-000181-6S
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 15:25:08 +0000
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com
 [209.85.219.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C970212CC
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 15:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584631501;
 bh=Xe4RFKD4eyCqTEXb3Z+do6asys5ScQi6UXuiuAOgDbQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xSWwcU1AMk7ym1mW+VY0swBRzWGykIEwrZhaFWQj7TnDZf57zcrjMrORElE+tPq65
 3E/VlLLQYO2HSwLz4GCtDNq4gFBijpiSwVpfbAfgc/5kP7O2a3S5W0lhI+8U0Wu+Wm
 67tKixILlz4DBLB0tJZjpH8Di4WrzZBbiHn3T7+Y=
Received: by mail-yb1-f181.google.com with SMTP id s17so471714ybk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 08:25:01 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3ZBHn9a/2Us1brJny3JUiyz+ZphcIcrGYcUElc9H13hFH6i/ZC
 2g4NAyvSub8X77eGDk70h1XQwu8YTDtsbHzMiA==
X-Google-Smtp-Source: ADFU+vt6KNn3hMjhQ+yFcZFxiLcwKK2nQbVMZf+iW6Y4/QRvUWdyjDQmDvq9gH8i3wNmX645jChl/2rD0UuU1RoVe0Q=
X-Received: by 2002:a25:3612:: with SMTP id d18mr6134924yba.472.1584631500676; 
 Thu, 19 Mar 2020 08:25:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200224223129.1068-1-robh@kernel.org>
 <20200318221926.GA10097@willie-the-truck>
In-Reply-To: <20200318221926.GA10097@willie-the-truck>
From: Rob Herring <robh@kernel.org>
Date: Thu, 19 Mar 2020 09:24:48 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLJukKY0h1GVd_fZLC=JUw4bwi_GyxF1GHYPiA_Q1pRFA@mail.gmail.com>
Message-ID: <CAL_JsqLJukKY0h1GVd_fZLC=JUw4bwi_GyxF1GHYPiA_Q1pRFA@mail.gmail.com>
Subject: Re: [PATCH v3] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation
 support
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_082502_331184_65487F1E 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Joerg Roedel <joro@8bytes.org>, Eric Auger <eric.auger@redhat.com>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 4:19 PM Will Deacon <will@kernel.org> wrote:
>
> Hi Rob,
>
> On Mon, Feb 24, 2020 at 04:31:29PM -0600, Rob Herring wrote:
> > Arm SMMUv3.2 adds support for TLB range invalidate operations.
> > Support for range invalidate is determined by the RIL bit in the IDR3
> > register.
> >
> > The range invalidate is in units of the leaf page size and operates on
> > 1-32 chunks of a power of 2 multiple pages. First, we determine from the
> > size what power of 2 multiple we can use. Then we calculate how many
> > chunks (1-31) of the power of 2 size for the range on the iteration. On
> > each iteration, we move up in size by at least 5 bits.
> >
> > Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Robin Murphy <robin.murphy@arm.com>
> > Cc: Joerg Roedel <joro@8bytes.org>
> > Reviewed-by: Eric Auger <eric.auger@redhat.com>
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> > v3:
> > - Use inv_range local instead of modifying granule
> > - Simplify the TG calculation
> > - Use shift instead of divide by power of 2.
> > ---
> >  drivers/iommu/arm-smmu-v3.c | 69 +++++++++++++++++++++++++++++++++++--
> >  1 file changed, 67 insertions(+), 2 deletions(-)
>
> I've queued this one, but I had to resolve some conflicts with the command
> queue batching changes, so please can you take a quick look at my
> resolution?
>
> https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/commit/?h=for-joerg/arm-smmu/updates

Thanks, LGTM.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
