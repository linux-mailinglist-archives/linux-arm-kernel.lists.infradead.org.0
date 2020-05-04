Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC601C33BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 09:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=picUB28g3Oi9neJEt40nf4pnHB1i9vVcfDbgxS9I2XA=; b=VsRrOEvnBvXF6v
	Vao06SKJpb5lbsfdS2MipTL9W/qbiKXnBvcR2Y9p0fYeE7Bv968DHCMmHf6K4UHNranOx8i6IUMFj
	h12+VwGJCnTpwgZSD720pPmyxCzFfhgBTOEJBaC4uA5tjdfByfFD1UPgAc0aCp+wYxCZQT2tdJsDg
	JSPYxtLPpjPAL6gokU5Vm/b7Yx4B6GeE+sTbxYJzaUSKVj77fwu8fMLuX7yxc9fr8iLTyO8DNwsX5
	Eow1MlQr2GHtZMyWJ+duyZbtHcwWtWqi7W2kIWhdqOdGOxdsMayhEUboTStRo57+9plR+HFM/Gosn
	D0eMykA/SI5stG1A+pMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVVf7-0002w3-7a; Mon, 04 May 2020 07:37:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVVf1-0002vM-AA
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 07:37:08 +0000
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com
 [209.85.166.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D93B521582
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 May 2020 07:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588577826;
 bh=t8IlpBfd5v4b7aMW8w5EYYQ13kNx8+iPpKqLXfYgEX0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=j1fsmYsyS8FUh6fcX3i0ckiBHNiKkiejJKb8CyPmiOxio1UtyE8lXeNqeBua1NgTM
 mywBBEW1UuAcZzm/G1IuPs8Skfd7zi0wzjaiAoI61niSH+4CPWPhyANyDdQTHWjNJi
 ALzdm2sMfMxGG/6LwMy56ifmdEz+2NtOUPVI9TOQ=
Received: by mail-il1-f180.google.com with SMTP id s10so10309305iln.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 00:37:06 -0700 (PDT)
X-Gm-Message-State: AGi0PuZZvfgRhRPJbqhNsqtxNRGIdoTIakWNfPWcLLgvw6vcjzsR3pvT
 +oZSLJ+QrRoZDILhu8DoFlAWgydOfIiaB1om5yU=
X-Google-Smtp-Source: APiQypKNPYX7ad+kctS/AbY8KuKLDocsFDox+qQJT05gRIgyhoBoUx71Nx7bevStf4WtJv25L/UBUkyl2JKmOvnuE44=
X-Received: by 2002:a92:3c55:: with SMTP id j82mr15500599ila.258.1588577826285; 
 Mon, 04 May 2020 00:37:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200501161014.5935-1-ardb@kernel.org>
 <20200501161014.5935-3-ardb@kernel.org>
 <bbd56b89-643a-2f86-79af-f65ef46822ef@huawei.com>
In-Reply-To: <bbd56b89-643a-2f86-79af-f65ef46822ef@huawei.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 4 May 2020 09:36:55 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEuV_Lmhu-2zZhD-YgL-zu+o0v+vooQTK30cemJW5dfNg@mail.gmail.com>
Message-ID: <CAMj1kXEuV_Lmhu-2zZhD-YgL-zu+o0v+vooQTK30cemJW5dfNg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ACPI/IORT: work around num_ids ambiguity
To: Hanjun Guo <guohanjun@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_003707_391897_B0F2E073 
X-CRM114-Status: GOOD (  24.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Robin Murphy <robin.murphy@arm.com>,
 Linuxarm <linuxarm@huawei.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 4 May 2020 at 06:32, Hanjun Guo <guohanjun@huawei.com> wrote:
>
> On 2020/5/2 0:10, Ard Biesheuvel wrote:
> > The ID mapping table structure of the IORT table describes the size of
> > a range using a num_ids field carrying the number of IDs in the region
> > minus one. This has been misinterpreted in the past in the parsing code,
> > and firmware is known to have shipped where this results in an ambiguity,
> > where regions that should be adjacent have an overlap of one value.
> >
> > So let's work around this by detecting this case specifically: when
> > resolving an ID translation, allow one that matches right at the end of
> > a multi-ID region to be superseded by a subsequent one.
> >
> > To prevent potential regressions on broken firmware that happened to
> > work before, only take the subsequent match into account if it occurs
> > at the start of a mapping region.
> >
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >   drivers/acpi/arm64/iort.c | 40 +++++++++++++++++---
> >   1 file changed, 34 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> > index 98be18266a73..9f139a94a1d3 100644
> > --- a/drivers/acpi/arm64/iort.c
> > +++ b/drivers/acpi/arm64/iort.c
> > @@ -300,7 +300,7 @@ static acpi_status iort_match_node_callback(struct acpi_iort_node *node,
> >   }
> >
> >   static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
> > -                    u32 *rid_out)
> > +                    u32 *rid_out, bool check_overlap)
> >   {
> >       /* Single mapping does not care for input id */
> >       if (map->flags & ACPI_IORT_ID_SINGLE_MAPPING) {
> > @@ -316,10 +316,34 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
> >       }
> >
> >       if (rid_in < map->input_base ||
> > -         (rid_in >= map->input_base + map->id_count))
> > +         (rid_in > map->input_base + map->id_count))
> >               return -ENXIO;
> >
> > +     if (check_overlap) {
> > +             /*
> > +              * We already found a mapping for this input ID at the end of
> > +              * another region. If it coincides with the start of this
> > +              * region, we assume the prior match was due to the off-by-1
> > +              * issue mentioned below, and allow it to be superseded.
> > +              * Otherwise, things are *really* broken, and we just disregard
> > +              * duplicate matches entirely to retain compatibility.
> > +              */
> > +             pr_err(FW_BUG "[map %p] conflicting mapping for input ID 0x%x\n",
> > +                    map, rid_in);
>
> As we already applied a workaround here, can we add "applying
> workaround" in the error message? This will make the customers
> less uneasy to see such message in the boot log. Once the product
> was deliveried to customers, it's not that easy to update all the
> firmwares entirely.
>

Sure.

> I'm out of reach for D05/D06 hardware as it's holidays in China,
> please allow me to test this patch set in Wednesday this week.
>

Yes please

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
