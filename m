Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AB31C17B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 16:27:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9dcW/92s65WA+U154G1DyUZQqiw7miE8JCGWWVdfz6g=; b=K577SP7HQR1viM
	gho2oJSlcMzTgBMNAldvQinGI0viQsU8nSlNPMOVlq16LDFXe5K39aPEokMEgNs193xHCiWn23Ry2
	8lWFv0lvJSu8uGrQqa/JfcFK0RSL3bAmez29nIWtBEFsldIY3aPxX4GNDrlBbu53t9BY06KmAtsVc
	44E+AWx698tTjWj8EWVyr5dB7Uv9AvmC1Uuk7PPyxgQRWInN7K2cI0NcpYKlv59lFcczCdZ2kHxxL
	OpYKA7xQgg7GYVFJ6IudmnyHs7sA0VDWV4pKBpK6QUtmBZHTRofYtfOovFWPl6TGlp//LUwhK+H4o
	X8/TkdCBhKJ93J8vf3ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUWdK-0006lI-Hb; Fri, 01 May 2020 14:27:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUWcy-0006Z1-76
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 14:26:57 +0000
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
 [209.85.166.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DAB4F208DB
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  1 May 2020 14:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588343215;
 bh=OmKWP+sK3a4LoOcz4d8gaKA6ekm6DHMbj7rI68ujuN4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=GrPQWXr2r7ptKhYcxXmQ/3nGIh/AfniXlA836LRi17H9CHWdMNj7Mbx6h3+uozTEG
 nHXVZL1EGlPQCdbwodpBpGHK3znR7QHED1WFYM5a3Lovdx1j2SsRRALIUa3xu4uSN9
 sDN2SZjpdtiDd9+WukXi69U7v9zix+iYSpRqvtho=
Received: by mail-io1-f45.google.com with SMTP id k6so5026791iob.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 07:26:55 -0700 (PDT)
X-Gm-Message-State: AGi0PuZmhqzZ4Ys405CVjZPHwDzSAwAclxQMm9JHGJP+F7lH1h411rdE
 BSGodHf1ErnyMDQXujtT7EBC/J6UY+5S/WjFt9o=
X-Google-Smtp-Source: APiQypJhLCcKE0gOzEzh0gJtSDPSlkNqvNMcQ5vDW5uFQjtLtqbAT1Y7m3jfRaD/dzrg0Egc7IUMPBcs6m1DVD44hvU=
X-Received: by 2002:a02:8247:: with SMTP id q7mr3241441jag.68.1588343215313;
 Fri, 01 May 2020 07:26:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200501095843.25401-1-ardb@kernel.org>
 <20200501095843.25401-3-ardb@kernel.org>
 <e3c7bdab-a2b0-d7c9-5c7b-eee680509338@arm.com>
 <CAMj1kXH0mcK3N94=uOuiL2_iy=eWhsnoXhvfiXv_kQ_j=F2a_Q@mail.gmail.com>
 <18e01ac7-974e-8308-c18c-67aa3fd7ad4e@arm.com>
 <CAMj1kXHsXEmaLuVBo7cgdzHju22WKksu7s3B3-hBE4mYhnuJ=Q@mail.gmail.com>
 <e4ae3f3d-4cd7-646b-ebc4-52d52f247380@arm.com>
In-Reply-To: <e4ae3f3d-4cd7-646b-ebc4-52d52f247380@arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 1 May 2020 16:26:44 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGd=xhOkgCa2FRYrRpHJXmnf2uL7Mk6hvX1o=sQcNTXbg@mail.gmail.com>
Message-ID: <CAMj1kXGd=xhOkgCa2FRYrRpHJXmnf2uL7Mk6hvX1o=sQcNTXbg@mail.gmail.com>
Subject: Re: [PATCH RFC 2/2] ACPI/IORT: work around num_ids ambiguity
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_072656_295427_782AC244 
X-CRM114-Status: GOOD (  32.66  )
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

On Fri, 1 May 2020 at 16:13, Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2020-05-01 2:10 pm, Ard Biesheuvel wrote:
> > On Fri, 1 May 2020 at 14:31, Robin Murphy <robin.murphy@arm.com> wrote:
> >>
> >> On 2020-05-01 12:41 pm, Ard Biesheuvel wrote:
> >>> On Fri, 1 May 2020 at 12:55, Robin Murphy <robin.murphy@arm.com> wrote:
> >>>>
> >>>> On 2020-05-01 10:58 am, Ard Biesheuvel wrote:
> >>>>> The ID mapping table structure of the IORT table describes the size of
> >>>>> a range using a num_ids field carrying the number of IDs in the region
> >>>>> minus one. This has been misinterpreted in the past in the parsing code,
> >>>>> and firmware is known to have shipped where this results in an ambiguity,
> >>>>> where regions that should be adjacent have an overlap of one value.
> >>>>>
> >>>>> So let's work around this by detecting this case specifically: when
> >>>>> resolving an ID translation, allow one that matches right at the end of
> >>>>> a multi-ID region to be superseded by a subsequent one.
> >>>>>
> >>>>> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> >>>>> ---
> >>>>>     drivers/acpi/arm64/iort.c | 23 +++++++++++++++-----
> >>>>>     1 file changed, 18 insertions(+), 5 deletions(-)
> >>>>>
> >>>>> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> >>>>> index 98be18266a73..d826dd9dc4c5 100644
> >>>>> --- a/drivers/acpi/arm64/iort.c
> >>>>> +++ b/drivers/acpi/arm64/iort.c
> >>>>> @@ -316,10 +316,19 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
> >>>>>         }
> >>>>>
> >>>>>         if (rid_in < map->input_base ||
> >>>>> -         (rid_in >= map->input_base + map->id_count))
> >>>>> +         (rid_in > map->input_base + map->id_count))
> >>>>>                 return -ENXIO;
> >>>>>
> >>>>>         *rid_out = map->output_base + (rid_in - map->input_base);
> >>>>> +
> >>>>> +     /*
> >>>>> +      * Due to confusion regarding the meaning of the id_count field (which
> >>>>> +      * carries the number of IDs *minus 1*), we may have to disregard this
> >>>>> +      * match if it is at the end of the range, and overlaps with the start
> >>>>> +      * of another one.
> >>>>> +      */
> >>>>> +     if (map->id_count > 0 && rid_in == map->input_base + map->id_count)
> >>>>> +             return -EAGAIN;
> >>>>>         return 0;
> >>>>>     }
> >>>>>
> >>>>> @@ -404,7 +413,8 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
> >>>>>         /* Parse the ID mapping tree to find specified node type */
> >>>>>         while (node) {
> >>>>>                 struct acpi_iort_id_mapping *map;
> >>>>> -             int i, index;
> >>>>> +             int i, index, rc = 0;
> >>>>> +             u32 out_ref = 0, map_id = id;
> >>>>>
> >>>>>                 if (IORT_TYPE_MASK(node->type) & type_mask) {
> >>>>>                         if (id_out)
> >>>>> @@ -438,15 +448,18 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
> >>>>>                         if (i == index)
> >>>>>                                 continue;
> >>>>>
> >>>>> -                     if (!iort_id_map(map, node->type, id, &id))
> >>>>> +                     rc = iort_id_map(map, node->type, map_id, &id);
> >>>>> +                     if (!rc)
> >>>>>                                 break;
> >>>>
> >>>> This needs a big FW_BUG splat in the case where it did find an overlap.
> >>>
> >>> Sure, although we did help create the problem in the first place.
> >>>
> >>>> Ideally we'd also enforce that the other half of must be the first entry
> >>>> of another range, but perhaps we're into diminishing returns by that point.
> >>>>
> >>>
> >>> That would mean the regions overlap regardless of whether you
> >>> interpret num_ids correctly or not, which means we'll be doing
> >>> validation of general well-formedness of the table rather than
> >>> providing a workaround for this particular issue.
> >>
> >> The point was to limit any change in behaviour to the specific case that
> >> we need to work around. Otherwise a table that was entirely malformed
> >> rather than just off-by-one on the sizes might go from happening-to-work
> >> to not working, or vice versa; the diminishing return is in how much we
> >> care about that.
> >>
> >
> > I see. I think it is quite unlikely that a working system with
> > overlapping ID ranges would work, and suddenly fail horribly when the
> > exact point of overlap is shifted by 1. But yeah, I see your point.
>
> Say that due to a copy-paste error or some other development artefact,
> the same correctly-sized input range is described twice, but the second
> copy has the wrong output base. Unless the IORT implementation is wacky
> enough to process mappings in reverse order it will have worked out OK,
> until suddenly the highest input ID starts falling through to the
> spurious broken mapping instead.
>

OK, so there are other quite unlikely scenarios where this might break :-)

> The match quirk implicitly encodes the exact nature of the ambiguity
> known to be present in the given table, so can be confident in fixing it
> up quietly. The heuristic doesn't have that luxury, so is wise to keep
> its scope as narrow as possible, and warn the user when it does choose
> to second-guess something on the off-chance that doing so actually makes
> the situation worse.
>

Fair enough. I'll have a go at incorporating the FW_BUG and the double check.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
