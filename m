Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A72981C7105
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 14:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6iPOfzBnwgHTw/am+nUFAcnhQuqyxKyZSwRZi7Otx10=; b=LzDhHXR5Z+VoMY
	d+xpq5XChFMxVnlnYKNhol+xkr2ERJaQPqOF+SYwOjgHHtCdFS4+wg7Sf/xkIcNahgQc5X0RqAKqb
	cWp+Vm3oZK4bzCe69gEExePEL+TxLi46VTrFv9/WG0RT6urjjK4ka104izuOg3As1EEPqg9vTfFrH
	8eRu/JPipSylh69Mf7lP8omSNI8OCH/Nr28rb+19GvYxJLjUU5Ki6CA4U80TQhy81vkHyQuPILdLW
	xBJ+pk7L4VKsz5iJ2Kam2PqzcLbXeQdIEgqmBBQR3NuE57mP1BI89ApFZWC8GT/+3Yaw0K7gly9Ec
	WfX1r82Lf1GK9zubSt7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJaN-0002G1-5l; Wed, 06 May 2020 12:55:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJa9-0002DS-8d
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 12:55:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2400E20769;
 Wed,  6 May 2020 12:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588769724;
 bh=hOEa8M2o2GKkO0H6+efDl9rCOdcYeheD//h24pzNdQU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KIRtzLVP863khnT7pZ+po91AuV7aLKyKLxF7+vpN69Uu0uYB06h5G/hVOf6cNA6tN
 O8ysp4ZIhy8zPojiBWvZYUzCDAJN2mX4oo1ZR1ZP2c7fwA9FjPHFpppi8FjXMKCl0J
 SF9HUCCh0ARwmuc6oMT6ZH2tMKvrY2xru4A+IZlY=
Date: Wed, 6 May 2020 13:55:19 +0100
From: Will Deacon <will@kernel.org>
To: Hanjun Guo <guohanjun@huawei.com>
Subject: Re: [PATCH v2 2/2] ACPI/IORT: work around num_ids ambiguity
Message-ID: <20200506125519.GI8043@willie-the-truck>
References: <20200501161014.5935-1-ardb@kernel.org>
 <20200501161014.5935-3-ardb@kernel.org>
 <bbd56b89-643a-2f86-79af-f65ef46822ef@huawei.com>
 <CAMj1kXEuV_Lmhu-2zZhD-YgL-zu+o0v+vooQTK30cemJW5dfNg@mail.gmail.com>
 <86c60895-365e-9166-8f70-7a353bbc4e86@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86c60895-365e-9166-8f70-7a353bbc4e86@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_055525_340941_3584727A 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Linuxarm <linuxarm@huawei.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 08:44:55PM +0800, Hanjun Guo wrote:
> On 2020/5/4 15:36, Ard Biesheuvel wrote:
> > On Mon, 4 May 2020 at 06:32, Hanjun Guo <guohanjun@huawei.com> wrote:
> > > On 2020/5/2 0:10, Ard Biesheuvel wrote:
> > > > diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> > > > index 98be18266a73..9f139a94a1d3 100644
> > > > --- a/drivers/acpi/arm64/iort.c
> > > > +++ b/drivers/acpi/arm64/iort.c
> > > > @@ -300,7 +300,7 @@ static acpi_status iort_match_node_callback(struct acpi_iort_node *node,
> > > >    }
> > > > 
> > > >    static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
> > > > -                    u32 *rid_out)
> > > > +                    u32 *rid_out, bool check_overlap)
> > > >    {
> > > >        /* Single mapping does not care for input id */
> > > >        if (map->flags & ACPI_IORT_ID_SINGLE_MAPPING) {
> > > > @@ -316,10 +316,34 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
> > > >        }
> > > > 
> > > >        if (rid_in < map->input_base ||
> > > > -         (rid_in >= map->input_base + map->id_count))
> > > > +         (rid_in > map->input_base + map->id_count))
> > > >                return -ENXIO;
> > > > 
> > > > +     if (check_overlap) {
> > > > +             /*
> > > > +              * We already found a mapping for this input ID at the end of
> > > > +              * another region. If it coincides with the start of this
> > > > +              * region, we assume the prior match was due to the off-by-1
> > > > +              * issue mentioned below, and allow it to be superseded.
> > > > +              * Otherwise, things are *really* broken, and we just disregard
> > > > +              * duplicate matches entirely to retain compatibility.
> > > > +              */
> > > > +             pr_err(FW_BUG "[map %p] conflicting mapping for input ID 0x%x\n",
> > > > +                    map, rid_in);
> > > 
> > > As we already applied a workaround here, can we add "applying
> > > workaround" in the error message? This will make the customers
> > > less uneasy to see such message in the boot log. Once the product
> > > was deliveried to customers, it's not that easy to update all the
> > > firmwares entirely.
> > > 
> > 
> > Sure.
> 
> Since Will already merged this patchset, I would like to send a patch
> on top of it, what do you think?

Yes, please! I figured I'd queue it, as I could always revert it if your
testing came back negative but extra stuff on top is always fine.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
