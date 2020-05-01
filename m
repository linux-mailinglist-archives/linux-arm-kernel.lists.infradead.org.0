Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD711C12A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 15:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lw/8uwF1QHtr9Qi3a6+paaQnCDxsGqgg9UlTGeMrhPo=; b=tKBNwPrtNSv8zy
	dcW2Z27WfSrqvdc0HKxlb/XubPIOM/PF+RNMtNxRELMj2gEdsEMKZU+URTdxqPJDp3oQX1h3ksUUl
	vKyis3FnRpkCLVbYTFA71OtG9Ov4rjUgH2G/k1OZ8AGME7UDmImaflRNvrwBWs6/pO6ABqisZkLA2
	x9FowH1LzAdVssvEjGdR4N4+Dvi1LdYpQgzRr0YnFKmVP6y3sqLfWEWo4wBU2frGZwk7UL/9zifyn
	RCZYybvMhsRU4w1PHZK6CMxCEfHxtHZnQUpFvCe3dK/jf5K0o06hs83R1IB81L6KL751wJDG5JYb7
	eRF8gXASeOpy7gXXikwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUVRn-0001YZ-9u; Fri, 01 May 2020 13:11:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUVRg-0001Y8-5A
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 13:11:13 +0000
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
 [209.85.166.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7426E2166E
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  1 May 2020 13:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588338671;
 bh=b3tQcd8Yq0ftAgc0rDhPFa6ynGleLes13N9ftbLQhXk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=eK1Tsyduvv4rT6xH5SBsC9+8FxfNMW609PhiAfclV3D5LZ/o1vGmHPFaZzGxvv+RL
 WFM2vlKRmOC2ePxf0SsWdi2lu4okDSJyc6ZWXEuwQuHm9zslfSlVgzkSjK9/IumFZ/
 SErJ17ST8xH0ogHpFqRk3l3hyLmAoyJftYeAERVc=
Received: by mail-io1-f45.google.com with SMTP id y26so4831027ioj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 06:11:11 -0700 (PDT)
X-Gm-Message-State: AGi0PuamOu1fYXKosu/T4sJin/+oGOgmOBsDfhzfzEZm1Mv0SgzQkBU9
 RLOgXIi2xwHc9OuHE0N7NPn2n9GsLtdrTCXqa48=
X-Google-Smtp-Source: APiQypK3rxCjfL8TPcuz/WQvZAqAlEAiikwycwu/C6Qi6KOo8ImoF6d4IfACWGj2JJoNDG02sfGVORvKlhwA1Y7LDvc=
X-Received: by 2002:a5d:9b8a:: with SMTP id r10mr3665941iom.171.1588338670673; 
 Fri, 01 May 2020 06:11:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200501095843.25401-1-ardb@kernel.org>
 <20200501095843.25401-3-ardb@kernel.org>
 <e3c7bdab-a2b0-d7c9-5c7b-eee680509338@arm.com>
 <CAMj1kXH0mcK3N94=uOuiL2_iy=eWhsnoXhvfiXv_kQ_j=F2a_Q@mail.gmail.com>
 <18e01ac7-974e-8308-c18c-67aa3fd7ad4e@arm.com>
In-Reply-To: <18e01ac7-974e-8308-c18c-67aa3fd7ad4e@arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 1 May 2020 15:10:59 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHsXEmaLuVBo7cgdzHju22WKksu7s3B3-hBE4mYhnuJ=Q@mail.gmail.com>
Message-ID: <CAMj1kXHsXEmaLuVBo7cgdzHju22WKksu7s3B3-hBE4mYhnuJ=Q@mail.gmail.com>
Subject: Re: [PATCH RFC 2/2] ACPI/IORT: work around num_ids ambiguity
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_061112_237866_CCC16A0D 
X-CRM114-Status: GOOD (  38.26  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Pankaj Bansal <pankaj.bansal@nxp.com>, Sudeep Holla <sudeep.holla@arm.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Hanjun Guo <guohanjun@huawei.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 1 May 2020 at 14:31, Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2020-05-01 12:41 pm, Ard Biesheuvel wrote:
> > On Fri, 1 May 2020 at 12:55, Robin Murphy <robin.murphy@arm.com> wrote:
> >>
> >> On 2020-05-01 10:58 am, Ard Biesheuvel wrote:
> >>> The ID mapping table structure of the IORT table describes the size of
> >>> a range using a num_ids field carrying the number of IDs in the region
> >>> minus one. This has been misinterpreted in the past in the parsing code,
> >>> and firmware is known to have shipped where this results in an ambiguity,
> >>> where regions that should be adjacent have an overlap of one value.
> >>>
> >>> So let's work around this by detecting this case specifically: when
> >>> resolving an ID translation, allow one that matches right at the end of
> >>> a multi-ID region to be superseded by a subsequent one.
> >>>
> >>> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> >>> ---
> >>>    drivers/acpi/arm64/iort.c | 23 +++++++++++++++-----
> >>>    1 file changed, 18 insertions(+), 5 deletions(-)
> >>>
> >>> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> >>> index 98be18266a73..d826dd9dc4c5 100644
> >>> --- a/drivers/acpi/arm64/iort.c
> >>> +++ b/drivers/acpi/arm64/iort.c
> >>> @@ -316,10 +316,19 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
> >>>        }
> >>>
> >>>        if (rid_in < map->input_base ||
> >>> -         (rid_in >= map->input_base + map->id_count))
> >>> +         (rid_in > map->input_base + map->id_count))
> >>>                return -ENXIO;
> >>>
> >>>        *rid_out = map->output_base + (rid_in - map->input_base);
> >>> +
> >>> +     /*
> >>> +      * Due to confusion regarding the meaning of the id_count field (which
> >>> +      * carries the number of IDs *minus 1*), we may have to disregard this
> >>> +      * match if it is at the end of the range, and overlaps with the start
> >>> +      * of another one.
> >>> +      */
> >>> +     if (map->id_count > 0 && rid_in == map->input_base + map->id_count)
> >>> +             return -EAGAIN;
> >>>        return 0;
> >>>    }
> >>>
> >>> @@ -404,7 +413,8 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
> >>>        /* Parse the ID mapping tree to find specified node type */
> >>>        while (node) {
> >>>                struct acpi_iort_id_mapping *map;
> >>> -             int i, index;
> >>> +             int i, index, rc = 0;
> >>> +             u32 out_ref = 0, map_id = id;
> >>>
> >>>                if (IORT_TYPE_MASK(node->type) & type_mask) {
> >>>                        if (id_out)
> >>> @@ -438,15 +448,18 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
> >>>                        if (i == index)
> >>>                                continue;
> >>>
> >>> -                     if (!iort_id_map(map, node->type, id, &id))
> >>> +                     rc = iort_id_map(map, node->type, map_id, &id);
> >>> +                     if (!rc)
> >>>                                break;
> >>
> >> This needs a big FW_BUG splat in the case where it did find an overlap.
> >
> > Sure, although we did help create the problem in the first place.
> >
> >> Ideally we'd also enforce that the other half of must be the first entry
> >> of another range, but perhaps we're into diminishing returns by that point.
> >>
> >
> > That would mean the regions overlap regardless of whether you
> > interpret num_ids correctly or not, which means we'll be doing
> > validation of general well-formedness of the table rather than
> > providing a workaround for this particular issue.
>
> The point was to limit any change in behaviour to the specific case that
> we need to work around. Otherwise a table that was entirely malformed
> rather than just off-by-one on the sizes might go from happening-to-work
> to not working, or vice versa; the diminishing return is in how much we
> care about that.
>

I see. I think it is quite unlikely that a working system with
overlapping ID ranges would work, and suddenly fail horribly when the
exact point of overlap is shifted by 1. But yeah, I see your point.

> > I think the fact that we got it wrong initially justifies treating the
> > off-by-one case specially, but beyond that, we should make it robust
> > without being pedantic imo.
>
> As the #1 search engine hit for "Linux is not a firmware validation
> suite", I can reassure you that we're on the same page in that regard ;)
>

Good :-)

> >> If we silently fix things up, then people will continue to write broken
> >> tables without even realising, new OSes will have to implement the same
> >> mechanism because vendors will have little interest in changing things
> >> that have worked "correctly" with Linux for years, and we've effectively
> >> achieved a de-facto redefinition of the spec. Making our end of the
> >> interface robust is obviously desirable, but there still needs to be
> >> *some* incentive for the folks on the other end to get it right.
> >>
> >
> > Agreed. But at least we'll be able to detect it and flag it in the
> > general case, rather than having a special case for D05/06 only
> > (although I suppose splitting the output ranges like those platforms
> > do is rather unusual)
>
> Yup, in principle the fixed quirk list gives a nice reassuring sense of
> "we'll work around these early platforms and everyone from now on will
> get it right", but whether reality plays out that way is another matter
> entirely...

The reason I am looking into this is that I think the fix should go to
stable, given that the current situation makes it impossible to write
firmware that works with older and newer kernels.

Lorenzo said he wouldn't mind taking the current version with ACPI OEM
ID matching back to -stable, but it's another quirk list to manage,
which I would prefer to avoid.

But I don't care deeply either way, to be honest, as long as we can
get something backported so compliant firmware is not being penalized
anymore.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
