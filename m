Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE60141074
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 19:12:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XgFrFGcPnrQe/ZwcXWEr0aRJg8Id8fKLJokW4qLHJiU=; b=t1BCV/Itmi37p0
	8BqmLO56SJbqVrlG/vKcMakAbtDqwbe04tSM19BSiUkEqidHGctliXXaM5EIS4ItaoGtsUXZ7QX/u
	5iNJXejcSPIsUfLIaG485EfcELEiXIOX6kJmhxtLvZNqZ2mrxhcBYpbtIFIizKwlWMuqEQ3HZB9Ua
	oLF+DiLuc/LzW1dexVfFzAludF36h6pTs+ne+WVcipe8RbMQkv3XpSgh3ClTxZanTvpGmECY8gol1
	oDCMivpOlgSr0XkswPud7aBxut6OrrJ9ekEbw5Aenw2mwpZC7iTTlt9pKNVWUsSQ3yj+BG52S+QBk
	ntLINh+VwkYi7q2JNMew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isW6I-0002Ht-58; Fri, 17 Jan 2020 18:12:06 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isW6A-0002H4-Eq
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 18:11:59 +0000
Received: by mail-io1-xd41.google.com with SMTP id n21so26962433ioo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 10:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pihRMUVPHOuetXPQB62i/znalvf4yuPPPZW6nrkenRs=;
 b=YiYCYDVLfijh0VBDaOrzuQu0kkrp7uU5HKIcT7fScOno85GNhEF++toFH+s5pPItOG
 cGhvvowM9J8eBxYgIhqHvHiJHd7Wv8LEOH1QARwrueRijAKUrFdflJXJZjg7ilhX9wAO
 t3zQna4c8b+XzpB52VkLOYbvtAMuoTgm1qc1MJlf1KNnapF93hpg3dGhmEtD2mr+BRYO
 6S0Yp2siDHvU9/eVLYKTOQ2iZEhI9KKQxT5NJQciIAlx9XZoH0VEGtYtD/ZqcJfoVQOO
 6UG1srhq33t1FaLPpdv6GptGvuqV7PpqGrLiSYCrTC14q1h0Js/hAFje3j8TNEBhOK9v
 H3JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pihRMUVPHOuetXPQB62i/znalvf4yuPPPZW6nrkenRs=;
 b=dD7uk5S1uZBfXpGp/Pu6FNcgVFCZwkbrGh0xXACgMM4hWmbdoDLQtF8PzNEV5sHQQe
 kLwl8HTyYv3Wu72CgYxkIrDse2U+QfFWNmKTGtGBc8/Bp6n6o7nGS+5aVfdUm5w8CBwu
 Wj+uqGYL/Ez50uehH0dsJVds4t0QrnCBMag+O0EUxscvzcLl5mXsevfwH6/k6Roc+IyZ
 KofoJqLoXSemh+oUqrEBugRceQkdjD/OfMXldSRe3GdLBHWLZI5/39Q7ZjdC4Yw8g9w9
 pb0TBDMXk5c1nkVbGq85HtysXiZp1UcMWAnHeaRny1dax04VobYdC00XcjpdAFyHHM39
 UxjA==
X-Gm-Message-State: APjAAAVMQbGku9Vpu4RAPF9RUd47A5hhUZhKvDTiGis1QFMuY8Ky6QVw
 I5Yt3bdoZkFWm83wmHVcyiGfIt4xcrxhJscEPjuC3A==
X-Google-Smtp-Source: APXvYqyn+Z0s4+oQK4CAzP3vyOMtqUmmJDDi66iqhyQJpT6lPCntXFrjPUzzVDBaoiSvrrYPkZbNTmnmB0uE+DmUf7w=
X-Received: by 2002:a02:6957:: with SMTP id e84mr33315769jac.11.1579284714979; 
 Fri, 17 Jan 2020 10:11:54 -0800 (PST)
MIME-Version: 1.0
References: <1579205259-4845-1-git-send-email-santosh.shilimkar@oracle.com>
 <20200117000358.fe7ew4vvnz4yxbzj@localhost>
 <148b6ec3-6a8e-ced8-41b3-3dffd5528ed6@oracle.com>
In-Reply-To: <148b6ec3-6a8e-ced8-41b3-3dffd5528ed6@oracle.com>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 17 Jan 2020 10:11:43 -0800
Message-ID: <CAOesGMiWL93ypL_4xqfqgwfVSOKtu8UqerzxV=Zr-aUkLp+rBw@mail.gmail.com>
Subject: Re: [GIT_PULL] SOC: TI Keystone Ring Accelerator driver for v5.6
To: Santosh Shilimkar <santosh.shilimkar@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_101158_498502_075B39CB 
X-CRM114-Status: GOOD (  20.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vinod Koul <vkoul@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 9:05 PM <santosh.shilimkar@oracle.com> wrote:
>
> On 1/16/20 4:03 PM, Olof Johansson wrote:
> > Hi,
> >
> > On Thu, Jan 16, 2020 at 12:07:39PM -0800, Santosh Shilimkar wrote:
> >> Its bit late for pull request, but if possible, please pull it to
> >> soc drivers tree.
> >>
> >> The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
> >>
> >>    Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
> >>
> >> are available in the git repository at:
> >>
> >>    git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git tags/drivers_soc_for_5.6
> >>
> >> for you to fetch changes up to 3277e8aa2504d97e022ecb9777d784ac1a439d36:
> >>
> >>    soc: ti: k3: add navss ringacc driver (2020-01-15 10:07:27 -0800)
> >>
> >> ----------------------------------------------------------------
> >> SOC: TI Keystone Ring Accelerator driver
> >>
> >> The Ring Accelerator (RINGACC or RA) provides hardware acceleration to
> >> enable straightforward passing of work between a producer and a consumer.
> >> There is one RINGACC module per NAVSS on TI AM65x SoCs.
> >
> > This driver doesn't seem to have exported symbols, and no in-kernel
> > users. So how will it be used?
> >
> > Usually we ask to hold off until the consuming side/drivers are also ready.
> >
> The other patches getting merged via Vinod's tree. The combined series
> is split into couple of series. Vinod is going to pull this branch
> and apply rest of the patchset. And then couple of additional consumer
> drivers will get posted.

Ok -- might have been useful to get that in the tag description for
context. Something to consider next time.

> > Also, is there a reason this is under drivers/soc/ instead of somewhere more
> > suitable in the drivers subsystem? It's not "soc glue code" in the same way as
> > drivers/soc was intended originally.
> >
> These kind of SOC IP drivers, we put into drivers/soc/ because of lack
> of specific subsystem where they fit in. Navigator was also similar example.

Hmm. At some point we'll have to push the brakes on this, since
drivers/soc can't become a catch-all for random stuff like the old
mach directories were. But it's tricky to tell just when -- sometimes
you have to let the mess show up too.

I'll merge this when I do the next pass (today, likely).

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
