Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A83C631D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:23:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GrlG8gkaPz8OqZLx54TyDhTk4gbpIybIwr7Q0SXp2wI=; b=QRHe6fBlIcElql
	U83tYN5VIb8Zyxee+Gd9vcdFd4KkR5cyvKHBT2P4lzEy+ehZqPih3XHS4VmK4qrBA9eOSHQg8VkTo
	TD4sk1y2BJrWe/b17RMat497wTFRSGf9xNdEo/T6Yi1EJzWKkRJbH7CiHrQfq/zf4dxqFXqAXcp3j
	YqCWDjKy4gOyIwjPNW8zCS7ldWAToo3alFu5qqNcAGBmvpaUUrNK+LVh4j7MV1eD4gHd/qNxleCgO
	hVg2t8LcTUBYv4GVhg1Ox4JX2VRre+31k3bK8ULpX0qujn7fSzdksrASV9+ejo2MKi5kteHIe+f1N
	foRbjj6dfTnWnJcDh1lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkTG-0003QF-E9; Tue, 09 Jul 2019 07:23:26 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkQ8-0000ZS-Iz
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:20:14 +0000
Received: by mail-ot1-f67.google.com with SMTP id z23so18875783ote.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 00:20:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jN2HTBbGVnb2PEAaaQgYC49W0HWjdbr8AlkujX6bfm4=;
 b=DWhY0HwaKCRxTKG1P59IVsCxIUGlR0h38Mjn1JIfHim0z0gFMvxjexyCaewtbL+0VJ
 5d/IKoZKFwOlkJCXwsRpbHl0NM6MyjNgQSOMosv3zx/wZAauWZ7PcHzNTPAXKpcyarsb
 vc5wQv9Di6ICNw1fkm0tBC1/CFe4pa62hIFSY7DlNT9QYr5OPXD/zVc5PtoGqQ4hN547
 0DLEn7fjZWAnGPXKxioNTvbA1+sEbIQJ5tjB98D/+oFiqz+u7FqqbyTLGdVDTB907OG+
 RkDrV0hJKNUBjIg/5liFD9xIEqLyX7/vkYAQHF2gD4qabou9RBM5eok1OPB+3nYbTLA4
 NeQw==
X-Gm-Message-State: APjAAAXIL9LZvpImeJ3NV16HO4h0vo8ESB66whv286ydvUCRvudIqPw8
 jI4ygm80tatVVhlQ7YLESsYsT4K7H3BiUQu4PkE=
X-Google-Smtp-Source: APXvYqxE7Rzx/ReyPW+HyS+6YOcssLdrIsl9ixHsPj57iPeLp8P8putvByylsYNjEpte51ZzGGHNNy/7tsynQP7KbCQ=
X-Received: by 2002:a05:6830:8a:: with SMTP id
 a10mr17152013oto.167.1562656810767; 
 Tue, 09 Jul 2019 00:20:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190628181457.6609-1-jeremy.linton@arm.com>
 <20190628181457.6609-2-jeremy.linton@arm.com>
 <CAJZ5v0jh0+WU5fpd9enq0UHrHzh+0Sgv-xoRiJM3jgu9dQFvdw@mail.gmail.com>
 <1745d9ee-a4e0-9a6f-138c-c0d5b42b5281@arm.com>
 <CAJZ5v0jM5VEuYuY7RdeXYs0S04uRYq5_01fKSBKOouS5DgBhww@mail.gmail.com>
 <3882f986-54b6-ce7c-5e52-9ad6159b7e6f@arm.com>
In-Reply-To: <3882f986-54b6-ce7c-5e52-9ad6159b7e6f@arm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 9 Jul 2019 09:19:59 +0200
Message-ID: <CAJZ5v0gvFApZ1+CsKtGbqZgt+nA64Wywq6PBXELbPXSDsD2WZg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
To: Jeremy Linton <jeremy.linton@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_002012_682213_F425A584 
X-CRM114-Status: GOOD (  22.04  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

On Thu, Jul 4, 2019 at 4:41 AM Jeremy Linton <jeremy.linton@arm.com> wrote:
>
> Hi,
>
> On 7/3/19 4:57 PM, Rafael J. Wysocki wrote:
> > On Wed, Jul 3, 2019 at 5:11 PM Jeremy Linton <jeremy.linton@arm.com> wrote:
> >>
> >> Hi,
> >>
> >> Thanks for taking a look at this.
> >>
> >> On 7/3/19 4:24 AM, Rafael J. Wysocki wrote:
> >>> On Fri, Jun 28, 2019 at 8:15 PM Jeremy Linton <jeremy.linton@arm.com> wrote:
> >>>>
> >>>> ACPI 6.3 adds a flag to the CPU node to indicate whether
> >>>> the given PE is a thread. Add a function to return that
> >>>> information for a given linux logical CPU.
> >>>>
> >>>> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> >>>> ---
> >>>>    drivers/acpi/pptt.c  | 62 +++++++++++++++++++++++++++++++++++++++++++-
> >>>>    include/linux/acpi.h |  5 ++++
> >>>>    2 files changed, 66 insertions(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
> >>>> index b72e6afaa8fb..bb6196422fad 100644
> >>>> --- a/drivers/acpi/pptt.c
> >>>> +++ b/drivers/acpi/pptt.c
> >>>> @@ -517,6 +517,52 @@ static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
> >>>>           return retval;
> >>>>    }
> >>>>
> >>>> +/**
> >>>> + * check_acpi_cpu_flag() - Determine if CPU node has a flag set
> >>>> + * @cpu: Kernel logical CPU number
> >>>> + * @rev: The PPTT revision defining the flag
> >>>> + * @flag: The flag itself
> >>>> + *
> >>>> + * Check the node representing a CPU for a given flag.
> >>>> + *
> >>>> + * Return: -ENOENT if the PPTT doesn't exist, the CPU cannot be found or
> >>>> + *        the table revision isn't new enough.
> >>>> + *        1, any passed flag set
> >>>> + *        0, flag unset
> >>>> + */
> >>>> +static int check_acpi_cpu_flag(unsigned int cpu, int rev, u32 flag)
> >>>
> >>> Why not bool?
> >>
> >> At least for the thread flag we need the three states so that we can
> >> fall back to the CPU's description of itself on machines without ACPI
> >> 6.3 tables.
> >>
> >> The ThunderX2 is threaded and without a firmware update a change like
> >> this will break it.
> >
> > Fair enough.
> >
> >>>
> >>>> +{
> >>>> +       struct acpi_table_header *table;
> >>>> +       acpi_status status;
> >>>> +       u32 acpi_cpu_id = get_acpi_id_for_cpu(cpu);
> >>>> +       struct acpi_pptt_processor *cpu_node = NULL;
> >>>> +       int ret = -ENOENT;
> >>>> +       static int saved_pptt_rev = -1;
> >>>> +
> >>>> +       /* Cache the PPTT revision to avoid repeat table get/put on failure */
> >>>
> >>> This is a rather questionable optimization.
> >>>
> >>> Does the extra table get/put really matter?
> >>
> >> AFAIK, Probably not.
> >
> > Then why to optimize it?
>
> There was some discussion in the v2 review thread about all the get/put
> operations which only existed to return failure for each core in the
> machine.
>
> https://www.spinics.net/lists/arm-kernel/msg735948.html
>
> I guess I should drop it, until we have some proof that there is a problem.

Yes, please.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
