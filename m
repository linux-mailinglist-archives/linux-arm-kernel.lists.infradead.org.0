Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCFB1C96B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 18:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wp1zyF5gvHrh3SonoX62wmDvQmUlw4JjOxxbdzy2shM=; b=GoL2IevkqUBrcE
	dMopOe3dyeFHolSZV08POz1XyMBBtj3VQQIPiwvcUqMqgwJfFQar2o9FX5Uv3nSd+h6heYVNYn828
	h7Ic7EweFOuAg0E4H/a0qF5I+ZrqdhJT08+at6BwnjU1/xIvfcBvxMs0+KXJe5zw8i6kFl3/+UGYK
	hQqBrHpyfCAd3/jrtkNkgaLsxVVXH3DDCzqeYB5B1eomwl2WIHr2E6lULjrkV5fe5xa9Fy699C/TU
	jVyNrQmri4AE510jteuXO0iJvF7YVXW2M/8HN/lj56UjJN41uWUsm5FDnBRqptZK0dFvjX4j6fda5
	epAneN4JHRfHpITLFSiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjZO-0006yU-Ns; Thu, 07 May 2020 16:40:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjZE-0006y2-Sg
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 16:40:14 +0000
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
 [209.85.166.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 789DD2084D
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  7 May 2020 16:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588869612;
 bh=GG1N4eYVC6gF2jkWtOf+2i+94GM+Npe39EG8Lf+ifms=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=lSoInqQWKZdOk6yqBVwyC9y2rILPgpGoOiG4JYyLlJZevyFW3ocZmunf0x59/PLf4
 1T4hZiud1waK7qcpciXTloxHdDkf5MZQoKey2v/MWjXY17a9u/1zyoP4ng0J2vsU87
 PukH15HR9jErgSVI6Dt6zRWS7jvyon150XLWC85M=
Received: by mail-io1-f45.google.com with SMTP id 19so1147200ioz.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 09:40:12 -0700 (PDT)
X-Gm-Message-State: AGi0PuZLHGNeurhB6PzJKsUfhMMN3zIioI/G48sB6+1XbMQOkKgF46pl
 /XIjm8sat0d+o6v3KEbbqgc9fOkBaxjhWmEx85c=
X-Google-Smtp-Source: APiQypJU8CxXD0K+wmjkUZLW0ktGnLc+EwVNbQw+UBmlCqtOEoPpKmbWJbvupmPg1sRh5Xk+l48nSrDsKKRjQXG30+w=
X-Received: by 2002:a02:3341:: with SMTP id k1mr13309473jak.74.1588869610945; 
 Thu, 07 May 2020 09:40:10 -0700 (PDT)
MIME-Version: 1.0
References: <1588858868-18039-1-git-send-email-guohanjun@huawei.com>
 <CAMj1kXHGfW=OKLO1S1Mf__9TzNXkrZ5BNvD8H_QYUTtF+awwpg@mail.gmail.com>
 <251b222a-7340-2d06-f07b-f81a9c19ac43@huawei.com>
 <628896e3-e43f-5814-a5ff-2bd5de223f20@huawei.com>
In-Reply-To: <628896e3-e43f-5814-a5ff-2bd5de223f20@huawei.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 7 May 2020 18:39:59 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHY1mwtWYe3JnO4Gw_oEqSgNLiRxVyFFR2rxp4nh6sF0g@mail.gmail.com>
Message-ID: <CAMj1kXHY1mwtWYe3JnO4Gw_oEqSgNLiRxVyFFR2rxp4nh6sF0g@mail.gmail.com>
Subject: Re: [PATCH] ACPI: IORT: Add extra message "applying workaround" for
 off-by-1 issue
To: Hanjun Guo <guohanjun@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_094012_969589_85BA0353 
X-CRM114-Status: GOOD (  21.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 May 2020 at 16:02, Hanjun Guo <guohanjun@huawei.com> wrote:
>
> On 2020/5/7 21:53, Hanjun Guo wrote:
> > Hi Ard,
> >
> > On 2020/5/7 21:49, Ard Biesheuvel wrote:
> >> On Thu, 7 May 2020 at 15:47, Hanjun Guo <guohanjun@huawei.com> wrote:
> >>>
> >>> As we already applied a workaround for the off-by-1 issue,
> >>> it's good to add extra message "applying workaround" to
> >>> make people less uneasy to see such message in the boot log.
> >>>
> >>> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> >>
> >> Hi Hanjun,
> >>
> >>> ---
> >>>
> >>> Based on top of for-next/acpi branch of ARM64 repo
> >>>
> >>>   drivers/acpi/arm64/iort.c | 2 +-
> >>>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> >>> index b011d25..f3d492a 100644
> >>> --- a/drivers/acpi/arm64/iort.c
> >>> +++ b/drivers/acpi/arm64/iort.c
> >>> @@ -328,7 +328,7 @@ static int iort_id_map(struct
> >>> acpi_iort_id_mapping *map, u8 type, u32 rid_in,
> >>>                   * Otherwise, things are *really* broken, and we
> >>> just disregard
> >>>                   * duplicate matches entirely to retain compatibility.
> >>>                   */
> >>> -               pr_err(FW_BUG "[map %p] conflicting mapping for input
> >>> ID 0x%x\n",
> >>> +               pr_err(FW_BUG "[map %p] conflicting mapping for input
> >>> ID 0x%x, applying workaround\n",
> >>
> >> This is not correct. The workaround is only applied if rid_in ==
> >> map->input_base, so better to print a second line after the 'return'
> >> below that is only reached in that particular case.
> >
> > Obvious I'm wrong, I will update this patch, thanks a lot!
>
> By the way, how about the print below? Should I add something more?
>
>                  if (rid_in != map->input_base)
>                          return -ENXIO;
> +
> +         pr_err(FW_BUG "applying workaround for the conflicting
> mapping\n");
>

Simply 'applying workaround' should do it imo.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
