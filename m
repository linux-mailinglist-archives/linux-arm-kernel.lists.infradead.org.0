Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E0E15B177
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 21:00:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=40YZEtqlVzJWglQhiVQTe1tOQkFNQWiI11x4UcNG6vA=; b=ikm+n0FnK4cCW0
	gT7iUxN6aLzQk6oTuX3MzfKorWNEAZjBSJWFQryJn7RQb/q1DgE9ed4JMNLv8EgxqPOFT5vGStrqx
	MU+hEmE3PDuw0oJzx8whIddnWBmi+KrzvpTML9cjQVkFm+tiBPq9zyn4o/wPP8n73sl4jSbXhEWf/
	7amn9U9omSNTVhHN6tbirxyjXfv8ypRTIW6SJO3TBzvTvdDDzJpeZGJgZwC8uEgs55pXv/G7pWQI0
	0zys+pXZA81mLuRrF1n+SizFEbhqybYZB2bAqPDAnaFugANoUITfyoEbtvSWQJqVHtuXDiY1IiIX2
	MP65AI23jZa/pHmvN1Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1yBE-0005nC-Sz; Wed, 12 Feb 2020 20:00:16 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1yAy-0005go-M7
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 20:00:02 +0000
Received: by mail-ot1-f68.google.com with SMTP id 77so3203247oty.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 12:00:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VQdM7QBHmlDS0OUFVBlwMq3kXCUqy/frsiXVn9/S5OI=;
 b=YREdDR/oHxjvi/AZkK/hf+akJ8KBSb0eFdNVpqtmUcc9YP8XiRqAwN9t4WDu+RVunk
 yvvPO2+Q9T+l5EXWgBt59V0mqUiEuvMuQlGA1iJwoNtglsoqrru7SiBghUtnCizvp0Nv
 IHG2Bkf/F75SJ9M7B5lxCdbMdIBFhlk6hiKrYBSgfuZtRJXs88dv1lovcZpaiYvhWZQ0
 /uB/redt5oHFRAxNTUG01pmmaIa6X7QoxAbqxbivpN4FzOI7Pd+bJAnK9zRHHE9dfsgn
 qh3IQqRBaDVqN1qqWhl40AG1Ix50fhcihf+G7POw7kvK2mh4d/npR0eiFFKP6GIf2Y/5
 GAEQ==
X-Gm-Message-State: APjAAAXtMv5NsUYxh0NuefXRuKda8p3b02lu+masiHYp+2E6jJaKvB1Q
 gK5LhvC6UgNcPBsyr0TM7wSnxd+t
X-Google-Smtp-Source: APXvYqxqHSQ66P07aj0vM5E+6Wmv748PbuAukAv2E8gDk084ilbOVhJaIHLBSNp2QTfYGgZ9y6suRg==
X-Received: by 2002:a05:6830:1094:: with SMTP id
 y20mr10432190oto.12.1581537598849; 
 Wed, 12 Feb 2020 11:59:58 -0800 (PST)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com.
 [209.85.167.169])
 by smtp.gmail.com with ESMTPSA id j24sm5929otk.7.2020.02.12.11.59.58
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Feb 2020 11:59:58 -0800 (PST)
Received: by mail-oi1-f169.google.com with SMTP id c16so3294866oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 11:59:58 -0800 (PST)
X-Received: by 2002:aca:6749:: with SMTP id b9mr500523oiy.13.1581537597909;
 Wed, 12 Feb 2020 11:59:57 -0800 (PST)
MIME-Version: 1.0
References: <1581467841-25397-1-git-send-email-leoyang.li@nxp.com>
 <20200212104902.GA3664@willie-the-truck>
In-Reply-To: <20200212104902.GA3664@willie-the-truck>
From: Li Yang <leoyang.li@nxp.com>
Date: Wed, 12 Feb 2020 13:59:46 -0600
X-Gmail-Original-Message-ID: <CADRPPNQ-FcA-xdjp02ybsYeU9UFxCZU5dpf0wHThTmLHcjovCQ@mail.gmail.com>
Message-ID: <CADRPPNQ-FcA-xdjp02ybsYeU9UFxCZU5dpf0wHThTmLHcjovCQ@mail.gmail.com>
Subject: Re: [PATCH] iommu/arm-smmu: fix the module name to be consistent with
 older kernel
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_120000_723066_87DF684E 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 lkml <linux-kernel@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 4:50 AM Will Deacon <will@kernel.org> wrote:
>
> On Tue, Feb 11, 2020 at 06:37:20PM -0600, Li Yang wrote:
> > Commit cd221bd24ff5 ("iommu/arm-smmu: Allow building as a module")
> > introduced a side effect that changed the module name from arm-smmu to
> > arm-smmu-mod.  This breaks the users of kernel parameters for the driver
> > (e.g. arm-smmu.disable_bypass).  This patch changes the module name back
> > to be consistent.
> >
> > Signed-off-by: Li Yang <leoyang.li@nxp.com>
> > ---
> >  drivers/iommu/Makefile                          | 4 ++--
> >  drivers/iommu/{arm-smmu.c => arm-smmu-common.c} | 0
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >  rename drivers/iommu/{arm-smmu.c => arm-smmu-common.c} (100%)
>
> Can't we just override MODULE_PARAM_PREFIX instead of renaming the file?

I can do that.  But on the other hand, the "mod" in the module name
arm-smmu-mod.ko seems to be redundant and looks a little bit weird.
Wouldn't it be cleaner to make it just arm-smmu.ko?

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
