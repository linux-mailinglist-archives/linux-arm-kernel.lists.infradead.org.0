Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 229328EBB2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 14:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zb5FNRr9pRfRLc0BjK0Qz7CvcwJFWyjH2vvrmU1ml5A=; b=OYlXVmm591XHMa
	1foaV1es8GDvOd4pchOF3J8HUaOc9haz1+AlzcwJc6G7HrqIWqg81bLzQIsydSD9PnLoFAQwRoUR+
	sY0ryHrRRPQatNVjNLpL2tnKX33tm7HdYfEyuTVNvk4gTwmNG9lz3waiWAZipodRbXWmH0T6Kl8R0
	MyuJudUKGsJs0w5dlxf4kR2XxEJ+6hJ6IxmmNZ9id8hOgbTtJcwopvEKgb7GpRsDcLy691sMBOQJe
	NHZSlzFjZSg3HYhA+fnuWxR0oV5lfyspVjCIMAbjsp464R8tG1Eo3rah0a6LCiCvPrzEHuXgUWFpP
	ppiNRkhvB3F/cmKd7CnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyF3c-0007cB-Ex; Thu, 15 Aug 2019 12:40:44 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyF37-0007Uw-5B
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 12:40:16 +0000
Received: by mail-qt1-f193.google.com with SMTP id l9so2133466qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 05:40:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8N/eZnpVtVGXNfEPij+EtmJf4Wqq8E7G+Ac9dKa5ORg=;
 b=CuNUI+HSMy+QsROZP/BzpSQRt+gOu3Lnd9dbrVO7104+cJ2sHy/E2nNEwxDug4i1Io
 I8qYQzItnRDqawuPz+7b396z+0GqYht6M/P+GFr3+nLwILe+Oww02jMJt/Z4al+/iwZs
 tq5n9keRbYx/awdbtt+vaGlzh/swNff5fp8OQ/w+qhY+R7ClBzBVHI/rcUBDbWjvXwrF
 toc+K3yh2uZfxChJ2KVvEeSJFOnIrxJQAOHeAsenfu75yBtqSijWdEq817VVgnFqA7NR
 r0v98bexy3/gV1I01qIobfaE5Ok/t8ysktXkoNfeoCoHmBZLwDjAR7keeX9UxobGcW2i
 iU6g==
X-Gm-Message-State: APjAAAVY13q8NHI8oxXrzt1KkhEnnoJXdKn+IlPUpbKizY8Jb+HEpkTz
 Z/lk598nxrUCnumvleobSvHcDUlVVDJ6xAd0pQ0=
X-Google-Smtp-Source: APXvYqwb4zQ8FF0KzdVSpE5ZInOoO4R9nOdgsHtEhyR9Jym3zQ3ggtHiQguCw7If8eUlxix/ZQJVW96l8ka0oYGrtsE=
X-Received: by 2002:ac8:239d:: with SMTP id q29mr3688037qtq.304.1565872812114; 
 Thu, 15 Aug 2019 05:40:12 -0700 (PDT)
MIME-Version: 1.0
References: <pull-1565844391-332885@atomide.com>
In-Reply-To: <pull-1565844391-332885@atomide.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 15 Aug 2019 14:39:56 +0200
Message-ID: <CAK8P3a0Ynmu1X+Y6Ba6UP9gfyJddhFj3ZfF5vA45nZgOdfn8fQ@mail.gmail.com>
Subject: Re: [GIT PULL] fixes for omap variants for v5.3-rc cycle
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_054014_021983_EDEC6352 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-omap <linux-omap@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 6:49 AM Tony Lindgren <tony@atomide.com> wrote:
>
> From: "Tony Lindgren" <tony@atomide.com>
>
> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
>
>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.3/fixes-rc4
>
> for you to fetch changes up to 4a65bbb9109ed7edd4b6ed7168ced48abb8561a2:
>
>   soc: ti: pm33xx: Make two symbols static (2019-08-13 05:05:38 -0700)
>
> ----------------------------------------------------------------
> Fixes for omap variants for v5.3-rc cycle
>
> We have another fix to disable voltage switching for am57xx SDIO as
> the bootrom cannot handle all the voltages after a reset that thought
> I had already sent a pull request for earlier but forgot. And we also
> update dra74x iodelay configuration for mmc3 to use the recommended
> values.
>
> Then I noticed we had introduced few new boot warnings with the various
> recent ti-sysc changes and wanted to fix those. I also noticed we still
> have too many warnings to be able to spot the real ones easily and fixed
> up few of those. Sure some of the warnings have been around for a long
> time and few of the fixes could have waited for the merge window, but
> having more usable dmesg log level output is a valuable.
>
> Other fixes are IO size correction for am335x UARTs that cause issues
> for at least FreeBSD using the same device tree file that checks that
> the child IO range is not larger than the parent has.
>
> For omap1 ams-delta keyboard we need to fix a irq ack that broke with
> all the recent gpio changes.
>
> And there are also few static checker warning fixes for recent am335x
> PM changes and ti-sysc driver and one switch fall-though update.

Pulled into fixes, thanks!

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
