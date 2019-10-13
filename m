Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45383D56FD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 19:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMFlmry3wB9Tqcony0ifShfEGKMr1Y/xxI1iBmimKKQ=; b=ptGn+S2s7QHAq7
	akeSsaw2UZWUyWXPVx4pgcPbqldMqoQIiuzJjY+W5hWfvdPwTID59Djp0A8e8IHxvC5CLk6EGYdkp
	Z3DnUxjTBxqu3YotMgiKpesOwMO5nUEwXWCwWq5GgwR1CbNa4SLXQSn8eeQD4Hg1iNBQbWNPJ9UJ0
	t8JP1zuCZAEn0TUkTAk14WEes64/NWwEtMgy6ppaMUbZwU3qE7tlvRwZPqLJmKeTZHdfF2a+GU3uw
	8zb2SIeVaatZ1B+aHmCP9I1uyFL8g7BhqvdgCjBiX3Y8UAsWgUubx4TlILekaeNsvucRivYbaEAHC
	7YmNXxscezrHEiPFNkAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJhSz-0004Ru-Gb; Sun, 13 Oct 2019 17:15:37 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJhSq-0004R2-Nr
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 17:15:30 +0000
Received: by mail-yb1-xb43.google.com with SMTP id i6so321800ybe.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 13 Oct 2019 10:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gflEvZAdlyCc3lXLfYTtPLGbYV/+oYzt0UfZcGg1SRc=;
 b=DFsPt8BzI4LOt34+GKO4D1RtpzCwr4ftOt/zQlrzs8hfl4A+eFtHEudqIZHR8G+/n7
 oqWP/LWM0CjJoCgNoVK0X+Rqw6kKfntZ9D67fGM54XkdTt9SgvjPc/5z2tGi+i9udlMc
 rqgygl73MTquALDXMS5H634MdCg2Pua6T5L7EHRVCpqcV7HMlHD4dt1atCpAlUkunX67
 HcQIwwzjqEealsCKIYDr90Gt2wt1fSQvNJvXRY0qXFKf+MeWkPmO+hnRR55hdcePJlLq
 rNQeBFFU7HkJiUEaLDYFja4yrU9a4nMJPNzMpLzbkC5Y5igN9G2ko54KjBQVF5XEEiV6
 Ee0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gflEvZAdlyCc3lXLfYTtPLGbYV/+oYzt0UfZcGg1SRc=;
 b=T1Oyayl4/u1JN8UrvOCkXcV0r8JjM3lrWyOv1ILXG1hlXbCHCoJyQoC+bzlQt7usD+
 cDKO96N9j1mnHsx9EkhS5CbN34fwgFXTz32NcVWIw2qJD4Pujfx4K9svYJC4c9zPQtAV
 k006tr+76Y4UJAAhi0pzlJK/CWtLiPChY2dumBCFniecJC7e3NIucI4MeuilNvdfir84
 ewoBOIdm3juV+XLAHy+AhshmqdSwOOCGtVWSYV/MZ/j0U87Vk94OyhbOpXJJw+VTb4Ed
 3GS25qrG2eWXJlb9XudLudB7XnG8Zf67IIBBxki9P6bDm/z/S5ml9nNwT/gOJi27RUL7
 AI6g==
X-Gm-Message-State: APjAAAVLh66YVXPUOCC5GDmox5DaXyw5q15orZBZCT87OTEWJOzDRMry
 sxJG0CbEC1Y5CPk8XdMPDlIOeBocAw8oiMp9T8DM4A==
X-Google-Smtp-Source: APXvYqyoqY6djIDs11lNlZUqHE2uaqTuE1ISh1U5NTd/2aKUiibYIuXB+JkUurqHKYtLENb3M6EjLhTYEPoyTC736lc=
X-Received: by 2002:a25:7909:: with SMTP id u9mr18735821ybc.33.1570986926762; 
 Sun, 13 Oct 2019 10:15:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190830125436.16959-1-ganapat@localhost.localdomain>
In-Reply-To: <20190830125436.16959-1-ganapat@localhost.localdomain>
From: Ganapatrao Kulkarni <gklkml16@gmail.com>
Date: Sun, 13 Oct 2019 22:45:15 +0530
Message-ID: <CAKTKpr43RyG0fTp3nOQP--F80JYD1aCHEU5TJNZCK8LPCLfswQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/2] Add CCPI2 PMU support
To: linux-doc@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
 linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_101528_800550_E19BC1B0 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gklkml16[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gklkml16[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>, Jonathan Corbet <corbet@lwn.net>,
 Jan Glauber <jglauber@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Robert Richter <rrichter@marvell.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will, Mark,

On Fri, Aug 30, 2019 at 6:24 PM ganapat <gklkml16@gmail.com> wrote:
>
> From: Ganapatrao Kulkarni <gkulkarni@marvell.com>
>
> Add Cavium Coherent Processor Interconnect (CCPI2) PMU
> support in ThunderX2 Uncore driver.
>
> v5:
>         Fixed minor bug of v4 (timer callback fuction
>         was getting initialized to NULL for all PMUs).
>
> v4:
>         Update with review comments [2].
>         Changed Counter read to 2 word read since single dword read is misbhehaving(hw issue).
>
> [2] https://lkml.org/lkml/2019/7/23/231
>
> v3: Rebased to 5.3-rc1
>
> v2: Updated with review comments [1]
>
> [1] https://lkml.org/lkml/2019/6/14/965
>
> v1: initial patch
>
>
> Ganapatrao Kulkarni (2):
>   Documentation: perf: Update documentation for ThunderX2 PMU uncore
>     driver
>   drivers/perf: Add CCPI2 PMU support in ThunderX2 UNCORE driver.
>
>  .../admin-guide/perf/thunderx2-pmu.rst        |  20 +-
>  drivers/perf/thunderx2_pmu.c                  | 267 +++++++++++++++---
>  2 files changed, 245 insertions(+), 42 deletions(-)
>
> --
> 2.17.1
>

Any comments on this patchset?

Thanks,
Ganapat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
