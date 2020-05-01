Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B971C1199
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 13:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/6/qR4HnF5KaTM0vI1k/R4zJa2x0uOgvC/kc6FnhvI=; b=AraQIxUFrQNPeZ
	s03j83oakuKTSSeVJcQDtYQHoqEPju8MO+lxVu/dfQz/UyCiHf/6ddA2UgtQr359FI03iFUYchqCS
	ZrCKesX2JTvnXQc/l58rE9OcFfuVuBiZBVMWrgQtnFfCIImesAmQkzn+eK0vDSx67Df+wpHb2ZnvX
	Y43mFIy61nUiZpHbR15jDHeDYpazd9JO3LMW0zfga4QnB24chbYM9ec3lQUK3xWEIAHrKjG0I106D
	gdbeuLzma1abA1ly96iM0kc2geqFD+iAeAgzXP9fTL0M6/3mFseS0PO6aoQIot2IvgEydR6PBkAPC
	IIdoZG03W7FVPGdhrwsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUU3P-00073s-RZ; Fri, 01 May 2020 11:42:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUU3H-00073W-1w
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 11:41:56 +0000
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com
 [209.85.166.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D0BE208CA
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  1 May 2020 11:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588333314;
 bh=iyLwoYzqmoKLuEytZE1afP8dkuOh3XFkCBz6I0dOsMI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FB7eqTmnke6VgcfaR9T4TBEDImOEy9LnaWkX3YVc2FLoO8Hi4JNfQ/J/Sx84NbXNP
 2P641zPNDRuRHB7YdkZK7sEPk15mlENrcv9MWtKfJiq8uwVSo7E2mtgKP1ns8j80/3
 Z1of9BFke7EJg4yJU27LMrDfKLvzF5PSGzVaZny8=
Received: by mail-il1-f171.google.com with SMTP id t12so4198919ile.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 04:41:54 -0700 (PDT)
X-Gm-Message-State: AGi0PubYMEELu9CjHuO2NlMkuU+al3yQ5c7M/2iRuOt4bMsHyh7leJMe
 HhGhBB9efnjhK3lGoZRylSuhI0rSHqJs8vOrpyY=
X-Google-Smtp-Source: APiQypKG0QW/F6jnGvP1ldxrRV/5E4ksJZa7kuC9HAnyfRg7KpQCPAmg3NPoYThwdogYXMGTbc6Yl9Ur0mrJ23KNfqU=
X-Received: by 2002:a92:39dd:: with SMTP id h90mr3184152ilf.80.1588333313911; 
 Fri, 01 May 2020 04:41:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200501095843.25401-1-ardb@kernel.org>
 <20200501095843.25401-3-ardb@kernel.org>
 <e3c7bdab-a2b0-d7c9-5c7b-eee680509338@arm.com>
In-Reply-To: <e3c7bdab-a2b0-d7c9-5c7b-eee680509338@arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 1 May 2020 13:41:42 +0200
X-Gmail-Original-Message-ID: <CAMj1kXH0mcK3N94=uOuiL2_iy=eWhsnoXhvfiXv_kQ_j=F2a_Q@mail.gmail.com>
Message-ID: <CAMj1kXH0mcK3N94=uOuiL2_iy=eWhsnoXhvfiXv_kQ_j=F2a_Q@mail.gmail.com>
Subject: Re: [PATCH RFC 2/2] ACPI/IORT: work around num_ids ambiguity
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_044155_153485_1151D800 
X-CRM114-Status: GOOD (  29.74  )
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

On Fri, 1 May 2020 at 12:55, Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2020-05-01 10:58 am, Ard Biesheuvel wrote:
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
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >   drivers/acpi/arm64/iort.c | 23 +++++++++++++++-----
> >   1 file changed, 18 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> > index 98be18266a73..d826dd9dc4c5 100644
> > --- a/drivers/acpi/arm64/iort.c
> > +++ b/drivers/acpi/arm64/iort.c
> > @@ -316,10 +316,19 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
> >       }
> >
> >       if (rid_in < map->input_base ||
> > -         (rid_in >= map->input_base + map->id_count))
> > +         (rid_in > map->input_base + map->id_count))
> >               return -ENXIO;
> >
> >       *rid_out = map->output_base + (rid_in - map->input_base);
> > +
> > +     /*
> > +      * Due to confusion regarding the meaning of the id_count field (which
> > +      * carries the number of IDs *minus 1*), we may have to disregard this
> > +      * match if it is at the end of the range, and overlaps with the start
> > +      * of another one.
> > +      */
> > +     if (map->id_count > 0 && rid_in == map->input_base + map->id_count)
> > +             return -EAGAIN;
> >       return 0;
> >   }
> >
> > @@ -404,7 +413,8 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
> >       /* Parse the ID mapping tree to find specified node type */
> >       while (node) {
> >               struct acpi_iort_id_mapping *map;
> > -             int i, index;
> > +             int i, index, rc = 0;
> > +             u32 out_ref = 0, map_id = id;
> >
> >               if (IORT_TYPE_MASK(node->type) & type_mask) {
> >                       if (id_out)
> > @@ -438,15 +448,18 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
> >                       if (i == index)
> >                               continue;
> >
> > -                     if (!iort_id_map(map, node->type, id, &id))
> > +                     rc = iort_id_map(map, node->type, map_id, &id);
> > +                     if (!rc)
> >                               break;
>
> This needs a big FW_BUG splat in the case where it did find an overlap.

Sure, although we did help create the problem in the first place.

> Ideally we'd also enforce that the other half of must be the first entry
> of another range, but perhaps we're into diminishing returns by that point.
>

That would mean the regions overlap regardless of whether you
interpret num_ids correctly or not, which means we'll be doing
validation of general well-formedness of the table rather than
providing a workaround for this particular issue.

I think the fact that we got it wrong initially justifies treating the
off-by-one case specially, but beyond that, we should make it robust
without being pedantic imo.

> If we silently fix things up, then people will continue to write broken
> tables without even realising, new OSes will have to implement the same
> mechanism because vendors will have little interest in changing things
> that have worked "correctly" with Linux for years, and we've effectively
> achieved a de-facto redefinition of the spec. Making our end of the
> interface robust is obviously desirable, but there still needs to be
> *some* incentive for the folks on the other end to get it right.
>

Agreed. But at least we'll be able to detect it and flag it in the
general case, rather than having a special case for D05/06 only
(although I suppose splitting the output ranges like those platforms
do is rather unusual)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
