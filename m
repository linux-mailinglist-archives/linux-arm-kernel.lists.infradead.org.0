Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CC3D6057
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 12:37:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0sDySjHvGtL4tfqAqeRjuWPiCLgMM4jOuhEQlNohDyU=; b=GXNp4/bNE5qNZH
	55V88zjInUd3t26dXZIg5s43Gh48fqK2jS8cRwfIXwrXSQTHVrrgrucmR5UukyEIrRU9AJ8ZT/15z
	KwyTYoSBZv0b78vplRpTbbJqNFpggmuf0RT6lsPL0inGtnW7T2g6vwJlOeWrzTsBVHOnqthhXfgPE
	QtVxyOgwVOmFrj6WAf5W7X3a53aqmw7/PP8o48A1gO9BG8snNcE8bPuVlUeN0N+4miUq+COevGKCd
	hLkAxe4Jm80f93nX5aOIolXwGK57le/MVfYCqAyii1krReB1WDR3O+fgDKWCgcrd5ghx0kGr16MuN
	+h+q3Xf0dNnKAtjvgZRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJxj6-0008W5-E6; Mon, 14 Oct 2019 10:37:20 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxio-0008OH-T8
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 10:37:05 +0000
Received: by mail-qt1-x841.google.com with SMTP id u40so24679024qth.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 03:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=26plC+LB/ET6lKUK8GUr/NZh4YTG4I5vCBM0xWKfjSY=;
 b=vhfeBhIbqctA+sxvOa8rDMgMZA0l1qMP0sDE3KgO56Y6lc3OpphV7fkCxySXu6yuf0
 zQI3csG/xFqaWpTB1334kqSZvke3KFNRZYH+iOzLeYF3LT0sw39+f3oVcoWI/Kv5yeV/
 nNxqTAO+Kkfu0gzhK+V47J7dgvcAuP4c770wVb5w76FXzfs6pyIY8mljaRNp6JX/TsgU
 uSpYNOzzWshBvP5PbZKMF4IAnIEEvTr8NIlBi/AY3fRAdB+qU1REmKvrl1AY0eM9iCWI
 gm54+mmfq7mVRBq78QlBBUDV44/ghCCEpEvb32E2HuFldPnFvz+sBUrhiU9wVri71POt
 YM6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=26plC+LB/ET6lKUK8GUr/NZh4YTG4I5vCBM0xWKfjSY=;
 b=GsbKTbwhb/tAj7iMqtQ5ev2S0aBsEkLi+jcKxVGrfmF2U6O+J0d/EHPs5W5Z06R69z
 5lW+1ih7IczBWvBtS1UmxZhF+dVZRrIy4VI+j3BBlOFBTamp2gzoXWsG0z+FIXB5GigJ
 LnC6tlraX+eVYq/yjtq1zlZ2kuvbUZIA9a9mAl99QttoWpyyruWjys2Q283qk8I6TCx/
 OyP9oqFfAoa3+s/W1Hu0TfBg7yMCWlaWlAj3hwVUgJJSswb80tuxEFWb0C99CF+Zq32b
 1d3+Gu7ee4bIQKiPpPmWxBKlDiBJNCbB0MUXcSHooVoO4g0imM85343cap1qhhEQBt1z
 Z0AQ==
X-Gm-Message-State: APjAAAVMBhBSZoQ33s3v8Yl611/0yV6Xh8tA3ZHBxfLhKi20fUVHQvN+
 4Z5hmtu5or4fH0kEIR0bKDBZsSRB/iZ6t52na9Wluw==
X-Google-Smtp-Source: APXvYqwTjnC0ebjhJ3BkDHAXlucgRKIkCIRgkmsqM/V/dciQe1QoV4OVLkh9U5GxaZS3jwgbGp4caX/J7J0IoKwv77k=
X-Received: by 2002:ac8:37e8:: with SMTP id e37mr30909144qtc.57.1571049418182; 
 Mon, 14 Oct 2019 03:36:58 -0700 (PDT)
MIME-Version: 1.0
References: <20191014103148.17816-1-walter-zh.wu@mediatek.com>
In-Reply-To: <20191014103148.17816-1-walter-zh.wu@mediatek.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 14 Oct 2019 12:36:45 +0200
Message-ID: <CACT4Y+aSybD6Z0YHuhbaTKK+fd4c3t4z8WneYdRRqA4N-G0fkA@mail.gmail.com>
Subject: Re: [PATCH 0/2] fix the missing underflow in memory operation function
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_033703_048765_D2D06E53 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 12:32 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> The patchsets help to produce KASAN report when size is negative numbers
> in memory operation function. It is helpful for programmer to solve the
> undefined behavior issue. Patch 1 based on Dmitry's review and
> suggestion, patch 2 is a test in order to verify the patch 1.

Hi Walter,

I only received this cover letter, but not the actual patches. I also
don't see them in the group:
https://groups.google.com/forum/#!forum/kasan-dev
nor on internet. Have you mailed them? Where are they?

> [1]https://bugzilla.kernel.org/show_bug.cgi?id=199341
> [2]https://lore.kernel.org/linux-arm-kernel/20190927034338.15813-1-walter-zh.wu@mediatek.com/
>
> Walter Wu (2):
> kasan: detect negative size in memory operation function
> kasan: add test for invalid size in memmove
>
> ---
>  lib/test_kasan.c          | 18 ++++++++++++++++++
>  mm/kasan/common.c         | 13 ++++++++-----
>  mm/kasan/generic.c        |  5 +++++
>  mm/kasan/generic_report.c | 18 ++++++++++++++++++
>  mm/kasan/tags.c           |  5 +++++
>  mm/kasan/tags_report.c    | 17 +++++++++++++++++
>  6 files changed, 71 insertions(+), 5 deletions(-)
>
> --
> 2.18.0
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20191014103148.17816-1-walter-zh.wu%40mediatek.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
