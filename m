Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAF65EEDB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 23:57:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hIYOZjhHWMNrWhYvfb0aO8CmDVx9j2szKe3SkONcRt8=; b=X7jCwRuqaqx0IS
	FXhks27z9sA2UIOouBELkk2YZ1zRTC6x5vX+O5BQs8Nedd/Za+URUlnROuTAcqArUr/poVqdtGzU4
	kLUN58oSTdGD4wYpKcknngfw8cgMTa4Z05tx4c2xFCvVWZwNH8bwI1L1ReTWHFlBFi7O4/bUaZZA4
	libLrm1+E+vZa00V2G/mCHHkvUe9T37SDkkPDQrfDX59OboM0joxPHGaO2ekIyt8wrPTNlrh+XLH2
	pRikctFb75nngqOsCRtAdb/r1k/uI+m0G48518V7RPIBg3szHJL0rgOqmq3C24xAjJDtUZpVSlUvV
	xym2fccEwWcrtFLqbasw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hinFv-0002VZ-6b; Wed, 03 Jul 2019 21:57:35 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hinFm-0002VD-QP
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 21:57:28 +0000
Received: by mail-oi1-f195.google.com with SMTP id u15so3374491oiv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 14:57:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=facAcgFC+XTI+qNs39LIa4BXwWP87/6c178m8FLgQfQ=;
 b=Q47MCQD7arHrsWbK82J4nMbCFEt9dpLco34fATyj7g8bT9C0digi6FnS4mzRphERrv
 /xjnA/USmSfAKHAhwMpW1j4+DCXHc1hh5hk0UPuemWtWUMbQYyks2zcWu7O+m6SgpS6M
 E0rJLwXfJO4wcggSZeaAnhy69AopVGCFinSlNL3gfT6fygCj/neNzn4RdyZZaW1QqxbD
 8g9+SkRlf4ELbyi1Kq94mxuML+ZT5XVePgaRnH9mYXDs7HaspaGWt1hriwSuTMn9eiEe
 xW+FtcdEedlyzfDUVZFjdzzYtQaprsdLlfk4v+7xjG5++j8acCtUIkK/p5PwgZk7C2dg
 AJbA==
X-Gm-Message-State: APjAAAUCK2oHJYtAC5LLToR/h7Ns3TVpdbIixFXwtzQwUIqKhh5ZTY1P
 MP1WeGv36e/7CxO5iRb/yRFJhCrAENBQJfOLEPE=
X-Google-Smtp-Source: APXvYqzbb/QOqIuPIhxbKWonTtHMaRerzldSRDFJhW+ynUsKgKiTuWJwzd94OrgPXubso2zMBpaspTzhRLIkfY2kyCo=
X-Received: by 2002:aca:5a41:: with SMTP id o62mr446353oib.110.1562191044904; 
 Wed, 03 Jul 2019 14:57:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190628181457.6609-1-jeremy.linton@arm.com>
 <20190628181457.6609-2-jeremy.linton@arm.com>
 <CAJZ5v0jh0+WU5fpd9enq0UHrHzh+0Sgv-xoRiJM3jgu9dQFvdw@mail.gmail.com>
 <1745d9ee-a4e0-9a6f-138c-c0d5b42b5281@arm.com>
In-Reply-To: <1745d9ee-a4e0-9a6f-138c-c0d5b42b5281@arm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 3 Jul 2019 23:57:12 +0200
Message-ID: <CAJZ5v0jM5VEuYuY7RdeXYs0S04uRYq5_01fKSBKOouS5DgBhww@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
To: Jeremy Linton <jeremy.linton@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_145726_864991_BF9D0868 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 3, 2019 at 5:11 PM Jeremy Linton <jeremy.linton@arm.com> wrote:
>
> Hi,
>
> Thanks for taking a look at this.
>
> On 7/3/19 4:24 AM, Rafael J. Wysocki wrote:
> > On Fri, Jun 28, 2019 at 8:15 PM Jeremy Linton <jeremy.linton@arm.com> wrote:
> >>
> >> ACPI 6.3 adds a flag to the CPU node to indicate whether
> >> the given PE is a thread. Add a function to return that
> >> information for a given linux logical CPU.
> >>
> >> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> >> ---
> >>   drivers/acpi/pptt.c  | 62 +++++++++++++++++++++++++++++++++++++++++++-
> >>   include/linux/acpi.h |  5 ++++
> >>   2 files changed, 66 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
> >> index b72e6afaa8fb..bb6196422fad 100644
> >> --- a/drivers/acpi/pptt.c
> >> +++ b/drivers/acpi/pptt.c
> >> @@ -517,6 +517,52 @@ static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
> >>          return retval;
> >>   }
> >>
> >> +/**
> >> + * check_acpi_cpu_flag() - Determine if CPU node has a flag set
> >> + * @cpu: Kernel logical CPU number
> >> + * @rev: The PPTT revision defining the flag
> >> + * @flag: The flag itself
> >> + *
> >> + * Check the node representing a CPU for a given flag.
> >> + *
> >> + * Return: -ENOENT if the PPTT doesn't exist, the CPU cannot be found or
> >> + *        the table revision isn't new enough.
> >> + *        1, any passed flag set
> >> + *        0, flag unset
> >> + */
> >> +static int check_acpi_cpu_flag(unsigned int cpu, int rev, u32 flag)
> >
> > Why not bool?
>
> At least for the thread flag we need the three states so that we can
> fall back to the CPU's description of itself on machines without ACPI
> 6.3 tables.
>
> The ThunderX2 is threaded and without a firmware update a change like
> this will break it.

Fair enough.

> >
> >> +{
> >> +       struct acpi_table_header *table;
> >> +       acpi_status status;
> >> +       u32 acpi_cpu_id = get_acpi_id_for_cpu(cpu);
> >> +       struct acpi_pptt_processor *cpu_node = NULL;
> >> +       int ret = -ENOENT;
> >> +       static int saved_pptt_rev = -1;
> >> +
> >> +       /* Cache the PPTT revision to avoid repeat table get/put on failure */
> >
> > This is a rather questionable optimization.
> >
> > Does the extra table get/put really matter?
>
> AFAIK, Probably not.

Then why to optimize it?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
