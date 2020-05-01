Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4EE1C17DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 16:35:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cc31CHerjay+53tPSFp5BZFqqtruMpNHK5lLtZ37Afo=; b=kP1JZfSBqdsmKK
	gt8UJ/5t2CmatvLQJJjfmtTz+igd98OtmmWD+TOSjWgxPP7y0tuo9Dl2e6CKQRmAXG+WQOvWakbxz
	aPKRA+CiiDtZhtQc7EQ0X/d95b/Udwfm9mhg+uQ3wXwhbYaCaIy4dgFffCOl63FgjwIPViIuCGpwg
	ny2HATg54W6fsQl1OxlqFPbT7hEuk7WIyiERBJA/08jpAA0xUEqKdJBV/X6YLd+5wDg04ZuyQVREu
	ZPDj7h6LH4jFd4hl9Q+LcBK0PGeZQ17H90jsjsF4Odk5X/64xAa6akDqASpEUoA6/Q3ADvC8cRIjR
	X5Idq+BAJz+s+CjOKrFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUWlZ-0006vV-7X; Fri, 01 May 2020 14:35:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUWlR-0006th-Pq
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 14:35:43 +0000
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
 [209.85.166.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C3262137B
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  1 May 2020 14:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588343741;
 bh=6NUvGuaTDSMVj4qz+KBxnE+JAksZFk4f6Iv9jSnlUZs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=TlDdEKxxlD8jm4XUhfjKoUh2mceH5p2OcQJzY49/D0HtRUhSsGZMV85QBDPYhWvjE
 qqJVf0PQk7IV+wf7PIBWcydPBOBdFyoV1l1VLfizlP7rjRxuSwu23tsSvBo5Lu1R8M
 5w2I4O1lJlvVksPQJvIYC9FXeyazaZZchCmd4DK0=
Received: by mail-io1-f43.google.com with SMTP id f3so5058261ioj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 07:35:41 -0700 (PDT)
X-Gm-Message-State: AGi0PubdT2Isao2bo0fy0+dsL7J8f5sjJE6ESvHPAIZfaCd4lJJtRJ5x
 JWGUCudWUGnSEjjWr4H1W06xaywfFwnFCCNkJBE=
X-Google-Smtp-Source: APiQypLwhBDEmnaMcXebnspgXs7BXbv7TduzzmXypCOd0BLkDs+9E9QeSlW3gfYhkiPvIZWsbTJNJ+l+urnlvWQtt10=
X-Received: by 2002:a5d:8045:: with SMTP id b5mr4065467ior.16.1588343740813;
 Fri, 01 May 2020 07:35:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200501095843.25401-1-ardb@kernel.org>
 <20200501095843.25401-3-ardb@kernel.org>
 <e3c7bdab-a2b0-d7c9-5c7b-eee680509338@arm.com>
 <CAMj1kXH0mcK3N94=uOuiL2_iy=eWhsnoXhvfiXv_kQ_j=F2a_Q@mail.gmail.com>
 <18e01ac7-974e-8308-c18c-67aa3fd7ad4e@arm.com>
 <CAMj1kXHsXEmaLuVBo7cgdzHju22WKksu7s3B3-hBE4mYhnuJ=Q@mail.gmail.com>
 <20200501134956.GA7240@e121166-lin.cambridge.arm.com>
In-Reply-To: <20200501134956.GA7240@e121166-lin.cambridge.arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 1 May 2020 16:35:29 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGL-P_jNprTZSpLyEMMmHCcPq5-LcZeaRj5NtCeUKaJUA@mail.gmail.com>
Message-ID: <CAMj1kXGL-P_jNprTZSpLyEMMmHCcPq5-LcZeaRj5NtCeUKaJUA@mail.gmail.com>
Subject: Re: [PATCH RFC 2/2] ACPI/IORT: work around num_ids ambiguity
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_073541_878569_BAC5C004 
X-CRM114-Status: GOOD (  29.86  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, Pankaj Bansal <pankaj.bansal@nxp.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Hanjun Guo <guohanjun@huawei.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 1 May 2020 at 15:50, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Fri, May 01, 2020 at 03:10:59PM +0200, Ard Biesheuvel wrote:
>
> [...]
>
> > > >> If we silently fix things up, then people will continue to write broken
> > > >> tables without even realising, new OSes will have to implement the same
> > > >> mechanism because vendors will have little interest in changing things
> > > >> that have worked "correctly" with Linux for years, and we've effectively
> > > >> achieved a de-facto redefinition of the spec. Making our end of the
> > > >> interface robust is obviously desirable, but there still needs to be
> > > >> *some* incentive for the folks on the other end to get it right.
> > > >>
> > > >
> > > > Agreed. But at least we'll be able to detect it and flag it in the
> > > > general case, rather than having a special case for D05/06 only
> > > > (although I suppose splitting the output ranges like those platforms
> > > > do is rather unusual)
> > >
> > > Yup, in principle the fixed quirk list gives a nice reassuring sense of
> > > "we'll work around these early platforms and everyone from now on will
> > > get it right", but whether reality plays out that way is another matter
> > > entirely...
> >
> > The reason I am looking into this is that I think the fix should go to
> > stable, given that the current situation makes it impossible to write
> > firmware that works with older and newer kernels.
>
> Yes. If we do remove the quirk the sooner we do it the better to
> reduce the stable patches.
>
> > Lorenzo said he wouldn't mind taking the current version with ACPI OEM
> > ID matching back to -stable, but it's another quirk list to manage,
> > which I would prefer to avoid.
> >
> > But I don't care deeply either way, to be honest, as long as we can
> > get something backported so compliant firmware is not being penalized
> > anymore.
>
> Question: if we remove the iort_workaround_oem_info stuff but we *do*
> keep the existing apply_id_count_workaround flag and we set it by going
> through all the mappings at boot time and detect if any of these
> off-by-one conditions apply - would the resulting code be any simpler ?
>
> The global flag would apply (as it does now) to _all_ mappings but it is
> very likely that if the off-by-one firmware bug is present it applies to
> the IORT table as a whole rather than a single mapping entry.
>

This particular issue is based on a misinterpretation, so I agree that
it makes sense to have a global flag, as long as we only set it if the
mappings are fully consistent in every other respect, or we'll run the
risk of hitting issues like the one Robin describes, where things
happen to work, but will fail once we apply the heuristic. Such an
issue could exist on one end of the table, while we could spot the
off-by-one issue somewhere else.

Which brings us back to a point I made earlier: do we really want to
validate the table and ensure that it is fully internally consistent?
Or do we want to be robust in the face of a single known issue that we
helped create?

So in my opinion, just fixing it up when we run into it is fine. I can
add the extra sanity check to reduce the potential fallout for other
broken systems, but beyond that, I think we shouldn't do too much.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
